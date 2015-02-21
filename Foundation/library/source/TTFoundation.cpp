/*
 * Jamoma Foundation
 * Copyright © 2008, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFoundation.h"
#include "TTSymbolTable.h"
#include "TTEnvironment.h"
#include "TTSymbolCache.h"
#include "TTCallback.h"

// Nodelib currently requires Boost Regex, which we don't have on the iOS
#ifndef DISABLE_NODELIB
#include "TTNodeLib.h"
#include "TTPath.h"
#endif

// Unit Tests
#include "TTMatrixBase.h"
#include "TTMatrixArray.h"
#include "TTObjectTest.h"
#include "TTInterpolate.test.h"
#include "TTString.test.h"
#include "TTSymbol.test.h"
#include "TTValue.test.h"
#include "TTDictionary.test.h"
#include "TTList.test.h"
// Nodelib currently requires Boost Regex, which we don't have on the iOS
#ifndef DISABLE_NODELIB
#include "TTNodeLib.test.h"
#endif

#if defined(TT_PLATFORM_MAC) || defined(TT_PLATFORM_LINUX)
#if defined(TT_PLATFORM_MAC)
#include <sys/types.h>
#endif
#include <dlfcn.h>
#include <dirent.h>
#ifdef __ANDROID_API__
#include <unistd.h>
#include <string>
#include <fstream>
#include <iostream>
#endif
#elif defined(TT_PLATFORM_WIN)
#include <ShlObj.h>
#endif

#ifdef TT_PLATFORM_MAC
//#include <Carbon/Carbon.h>
#define __COREFOUNDATION_CFMESSAGEPORT__ 1
#include <CoreFoundation/CFBundle.h>
#endif

TTString        TTFoundationBinaryPath = "";

static bool		TTFoundationHasInitialized = false;

void            TTFoundationLoadExternalClasses(void);
TTErr           TTFoundationLoadExternalClassesFromFolder(const TTString& fullpath, bool isExtension);
TTObjectBasePtr	TTFoundationInstantiateInternalClass(TTSymbol className, TTValue& arguments);


/****************************************************************************************************/
void TTFoundationInit(const char* pathToBinaries)
{
	if (!TTFoundationHasInitialized) {
		TTFoundationHasInitialized = true;

		if (pathToBinaries)
			TTFoundationBinaryPath = pathToBinaries;

		for (int i=0; i<kNumTTDataTypes; i++)
			TTDataInfo::addDataInfoForType(TTDataType(i));

		// Regex requires Boost libraries, not available for iOS for the time-being
#ifndef DISABLE_NODELIB
		TTNodeLibInit();
#endif

		ttEnvironment = new TTEnvironment;

		// Regex requires Boost libraries, not available for iOS for the time-being
		//#ifndef DISABLE_NODELIB
		//		TTAddressCacheInit();
		//#endif

#ifdef TT_DEBUG
		TTLogMessage("JamomaFoundation (TT_DEBUG) -- Version %s", TTFOUNDATION_VERSION_STRING);
		ttEnvironment->mDebugBasic = true;
#else
		TTLogMessage("JamomaFoundation -- Version %s", TTFOUNDATION_VERSION_STRING);
#endif
		if (pathToBinaries)
			TTLogMessage("-- Path %s\n", pathToBinaries);
		else
			TTLogMessage("\n");

		// register classes -- both internal and external
		TTCallback::registerClass();
		TTMatrixBase::registerClass();
		TTMatrixArray::registerClass();
		TTObjectTest::registerClass();
		TTStringTest::registerClass();
		TTSymbolTest::registerClass();
		TTValueTest::registerClass();
		TTInterpolateTest::registerClass();
		TTDictionaryTest::registerClass();
		TTListTest::registerClass();
		// Regex requires Boost libraries, not available for iOS for the time-being
#ifndef DISABLE_NODELIB
		TTNodeLibTest::registerClass();
#endif

		TTFoundationLoadExternalClasses();
	}
}


void TTFoundationShutdown();
void TTFoundationShutdown()
{
	// FIXME: How do we call this (i.e. TTDSPShutdown()?) -- do we need to setup an observer of some sort on the environment class?
	// TODO: we need to free singletons like the environment here!
}


//// New method ////
using StringVector = std::vector<std::string>;
StringVector compiledAbsolutePaths()
{
    return {
#if defined(JAMOMA_EXTENSIONS_INSTALL_PREFIX)
			JAMOMA_EXTENSIONS_INSTALL_PREFIX,
#endif
			};
}

template<typename OS>
bool isExtensionFilename(std::string filename)
{
	using namespace std;
	auto prefix = OS::extensionPrefix();
	auto res = mismatch(begin(prefix), end(prefix), begin(filename));

    if (prefix.empty() || res.first == end(prefix))
    {
		auto suffix = OS::extensionSuffix();
		if(filename.length() >= suffix.length())
		{
            return (0 == filename
                            .compare (filename.length() - suffix.length(),
                                      suffix.length(),
                                      suffix));
		}
	}
	return false;
}

template<typename OS>
std::string filenameToExtensionName(std::string name)
{
	using namespace std;

	// Remove the prefix
	auto prefix = OS::extensionPrefix();
	if(!prefix.empty())
		name.erase(begin(name), begin(name) + prefix.length());

	// Remove the suffix
	auto suffix = OS::extensionSuffix();
	if(!suffix.empty())
		name.erase(end(name) - suffix.length(), end(name));

    return name;
}

#if defined(TT_PLATFORM_MAC) || defined(TT_PLATFORM_LINUX)
class UnixSpecificInformation
{
	public:
        static StringVector builtinAbsolutePaths()
		{
            return {
				"/usr/lib/jamoma",
				"/usr/local/lib/jamoma",
				"/usr/jamoma/lib",
				"/usr/local/jamoma/extensions",
				"/usr/local/jamoma/lib",
				"/usr/jamoma/extensions"
			};
		}

		template<typename OS>
        static bool loadClassesFromFolder(const std::string& fullpath)
        {
            using namespace std;
            TTExtensionInitializationMethod	initializer;
            TTErr							err;

			DIR* dirp = opendir(fullpath.c_str());
            if(!dirp)
                return false;

			dirent* dp{};
            int count = 0; // Number of extensions loaded.
			while ((dp = readdir(dirp)))
			{
                string fileName(dp->d_name);
				if(!isExtensionFilename<OS>(fileName))
					continue;

                string fileFullpath = fullpath + "/" + fileName;

				// Open the shared object
				void *handle = dlopen(fileFullpath.c_str(), RTLD_LAZY);
				if (!handle)
				{
					std::cout << "dlopen: ERROR: " << dlerror() << std::endl;
					continue;
				}

				// Load the Jamoma extension
                string initializerFunctionName = "TTLoadJamomaExtension_";
                initializerFunctionName += filenameToExtensionName<OS>(fileName.c_str());

				initializer = (TTExtensionInitializationMethod) dlsym(handle, initializerFunctionName.c_str());
				if (initializer)
				{
                    err = initializer();
					if(err != kTTErrNone)
					{
                        std::cerr << "Error " << err
                                  << " when initializing extension " << fileName
								  << std::endl;
					}
                    else
                    {
                        ++count;
                    }
                }
			}
			closedir(dirp);

            return count != 0;
		}

        static std::string computedRelativePath()
        {
            Dl_info		info;
            char		mainBundleStr[4096];

            // Use the path of JamomaFoundation.dylib.
            if (dladdr((const void*)TTFoundationLoadExternalClasses, &info))
            {
                char *c = 0;

                std::cout << "Loaded from path: " << info.dli_fname << std::endl;

                strncpy(mainBundleStr, info.dli_fname, 4096);
                c = strrchr(mainBundleStr, '/');
                if (c)
                    *c = 0; // chop the "/JamomaFoundation.dylib off of the path
            }

            return mainBundleStr;
        }
};
#endif



#if defined(TT_PLATFORM_MAC)
class OSXSpecificInformation
{
    public:
        static std::string extensionPrefix()
        { return ""; }

        static std::string extensionSuffix()
        { return ".ttdylib"; }

        static std::string computedRelativePath()
        {
            return UnixSpecificInformation::computedRelativePath();
        }

        static StringVector builtinRelativePaths()
        {
            return {"../Frameworks/jamoma/extensions"};
        }

        static StringVector compiledAbsolutePaths()
        {
            return ::compiledAbsolutePaths();
        }

        static StringVector builtinAbsolutePaths()
        {
            return UnixSpecificInformation::builtinAbsolutePaths();
        }

        static bool loadClassesFromFolder(const std::string& folderName)
        {
            return UnixSpecificInformation::loadClassesFromFolder<OSXSpecificInformation>(folderName);
        }
};
using OperatingSystem = OSXSpecificInformation;
#endif
// TODO iOS & Static loading.

#if defined(TT_PLATFORM_LINUX) && defined(__ANDROID_API__)
class AndroidSpecificInformation
{
    public:
        static std::string extensionPrefix()
        { return "lib"; }

        static std::string extensionSuffix()
        { return ".so"; }

        static std::string computedRelativePath()
        {
            using namespace std;
            string s{"/proc/"};
            s.append(getpid());
            s.append("/cmdline");
            ifstream input{s.c_str()};
            string line;
            getline(input, line);
            line = string{"/data/data/"} + line + string{"/lib"};
            return line;
        }

        static StringVector builtinRelativePaths()
        { return {}; }

        static StringVector compiledAbsolutePaths()
        { return {}; }

        static StringVector builtinAbsolutePaths()
        { return {}; }

        static bool loadClassesFromFolder(const std::string& folderName)
        {
            return UnixSpecificInformation::loadClassesFromFolder<AndroidSpecificInformation>(folderName);
        }
};
using OperatingSystem = AndroidSpecificInformation;
#endif

#if defined(TT_PLATFORM_LINUX)
class LinuxSpecificInformation
{
    public:
        static std::string extensionPrefix()
        { return ""; }

        static std::string extensionSuffix()
        { return ".ttso"; }


        // Not really relevant on Linux... The applications tend
        // to be in a different package than the shared objects...
        static std::string computedRelativePath()
        {
            return UnixSpecificInformation::computedRelativePath();
        }

        static StringVector builtinRelativePaths()
        {
            return {"./extensions"};
        }

        static StringVector compiledAbsolutePaths()
        {
            return ::compiledAbsolutePaths();
        }

        static StringVector builtinAbsolutePaths()
        {
            return UnixSpecificInformation::builtinAbsolutePaths();
        }


        static bool loadClassesFromFolder(const std::string& folderName)
        {
            return UnixSpecificInformation::loadClassesFromFolder<LinuxSpecificInformation>(folderName);
        }
};

using OperatingSystem = LinuxSpecificInformation;
#endif
#if defined(TT_PLATFORM_WIN)
class WindowsSpecificInformation
{
    public:
        static std::string extensionPrefix()
        { return ""; }

        static std::string extensionSuffix()
        { return ".ttdll"; }

        static std::string computedRelativePath()
        {
            TTString	fullpath{};
            char		temppath[4096];
            HKEY		hKey = 0;
            LONG		lRes;
            DWORD		dwSize = sizeof(temppath);
            HRESULT		hr;
            HINSTANCE	hInstance = GetModuleHandle(NULL);


            LPCSTR moduleName = "JamomaFoundation.dll";
            HMODULE	hmodule = GetModuleHandle(moduleName);
            // get the path
            GetModuleFileName(hmodule, (LPSTR)temppath, 4096);

            if (!FAILED(hmodule)) {
                if (temppath[0]) {
                    fullpath = temppath;
                    // get support folder path
                    fullpath = fullpath.substr(0, fullpath.length() - (strlen(moduleName) + 1));
                    TTFoundationBinaryPath = fullpath;
                    lRes = SHCreateDirectory(NULL, (LPCWSTR)fullpath.c_str());
                }
            }

            return fullpath;
        }

        static StringVector builtinRelativePaths()
        {
            return {"./extensions"};
        }

        static StringVector compiledAbsolutePaths()
        {
            return ::compiledAbsolutePaths();
        }

        static StringVector builtinAbsolutePaths()
        {
            return {"c:\\Program Files (x86)\\Jamoma\\extensions"};
        }

        static bool loadClassesFromFolder(const std::string& folderName)
        {

        }
};
using OperatingSystem = WindowsSpecificInformation;
#endif


// If TTFoundationInit's path (TTFoundationBinaryPath) is set by hand, we use it.
template<typename OS>
class ExternalClassesLoader
{
	public:
		void loadClasses()
		{
			if(!TTFoundationBinaryPath.empty())
			{
                OS::loadClassesFromFolder(std::string(TTFoundationBinaryPath.c_str()));
			}
			else
            {
                auto computedPath = OS::computedRelativePath();
                if(!computedPath.empty() && OS::loadClassesFromFolder(computedPath))
                {
                    TTFoundationBinaryPath = computedPath;
                    return;
                }

				if(tryLoadClassesFromVector(OS::builtinRelativePaths()))
                { return; }

				if(tryLoadClassesFromVector(OS::compiledAbsolutePaths()))
                { return; }

				if(tryLoadClassesFromVector(OS::builtinAbsolutePaths()))
                { return; }
			}
		}

        bool tryLoadClassesFromVector(StringVector&& v)
        {
            for(auto&& path : v)
			{
				if(OS::loadClassesFromFolder(path))
				{
                    TTFoundationBinaryPath = path;
					return true;
				}
			}
            return false;
		}
};

void TTFoundationLoadExternalClasses(void)
{
    static bool loaded = false;
    if(!loaded)
    {
        ExternalClassesLoader<OperatingSystem> os;
        os.loadClasses();
    }
    else
        std::cout << "Trying to reload";
}



