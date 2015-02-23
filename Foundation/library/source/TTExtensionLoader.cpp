#include "TTExtensionLoader.h"
#include "TTFoundation.h"
#include "TTEnvironment.h"
#include <vector>
#include <string>

using StringVector = std::vector<std::string>;

// Utility compile-time functions to work with string constants.
// Except on windows, where constexpr will only be in VS2015 (hopefully...)
#if !defined(TT_PLATFORM_WIN)
template <typename T, std::size_t n>
constexpr std::size_t array_length(const T (&)[n])
{ return n; }

template <typename T>
constexpr std::size_t string_length(T&& t)
{ return array_length(std::forward<T&&>(t)) - 1; }

template<typename T>
constexpr bool string_empty(T&& t)
{
	return string_length(std::forward<T&&>(t)) == 0;
}
#else
unsigned int array_length(const char* str)
{ return strlen(str) + 1; }
unsigned int string_length(const char* str)
{ return strlen(str); }
bool string_empty(const char* str)
{
	return strlen(str) == 0;
}


#endif

template<typename OS>
// Returns true if the filename (ex. : AudioEngine.ttdylib)
// is a correct extension filename for the platform we're in.
bool isExtensionFilename(const std::string& filename)
{
	using namespace std;

	auto res = mismatch(begin(OS::extensionPrefix), end(OS::extensionPrefix), begin(filename));

	if (string_empty(OS::extensionPrefix) || res.first == (end(OS::extensionPrefix)))
	{
		if(filename.length() >= string_length(OS::extensionSuffix))
		{
			return (0 == filename.compare(
						filename.length() - string_length(OS::extensionSuffix),
						string_length(OS::extensionSuffix),
						OS::extensionSuffix));
		}
	}

	return false;
}

class WindowsSpecificInformation;
template<>
bool isExtensionFilename<WindowsSpecificInformation>(const std::string& filename)
{
	std::string suffix{".ttdll"};
	if(filename.length() >= suffix.length())
	{
		return (0 == filename.compare(
						filename.length() - suffix.length(),
						suffix.length(),
						suffix));
	}
	return false;
}

template<typename OS>
// Gets the extension name from the file name.
// ex. : libWebSocket.so on Android -> WebSocket
std::string filenameToExtensionName(std::string name)
{
	using namespace std;

	// Remove the prefix
	if(!string_empty(OS::extensionPrefix))
		name.erase(begin(name),
				   begin(name) + string_length(OS::extensionPrefix));

	// Remove the suffix
	if(!string_empty(OS::extensionSuffix))
		name.erase(end(name) - string_length(OS::extensionSuffix),
				   end(name));

	return name;
}

template<>
std::string filenameToExtensionName<WindowsSpecificInformation>(std::string name)
{
	name.erase(end(name) - 6, end(name));
	return name;
}

/**
  Here is the platform-specific code.
  It is organized in the following fashion :

   * Each platform has an extension prefix (e.g. "lib") and suffix (e.g. ".ttdylib").
   * Platforms have these paths defined (they will be evaluated in this order) :
	  * A computed relative path (the path of the JamomaFoundation shared object)
	  * Built-in relative paths (e.g. in an app bundle on OS X)
	  * A compiled-in absolute path (to allow package maintainers to add their own paths)
	  * Built-in absolute paths (standard paths, e.g. "/usr/local/jamoma"...

   * Each platform has a specific way to load extensions (althought it's more a unix vs windows way).

   * Common code for unix platforms is abstracted in UnixSpecificInformation.
**/
#if defined(TT_PLATFORM_MAC) || defined(TT_PLATFORM_LINUX)
#include <dlfcn.h>
#include <dirent.h>

// This class contains informations that are applicable to
// UNIX-like systems (i.e. they respect the Filesystem Hierarchy Standard
// and load shared objects using dlopen / dlsym).
class UnixSpecificInformation
{
	public:
		static StringVector builtinAbsolutePaths()
		{
			return {
#if defined(JAMOMA_EXTENSIONS_INSTALL_PREFIX)
				JAMOMA_EXTENSIONS_INSTALL_PREFIX,
#endif
				"/usr/lib/jamoma",
				"/usr/local/lib/jamoma",
				"/usr/jamoma/lib",
				"/usr/jamoma/extensions",
				"/usr/local/jamoma/lib",
				"/usr/local/jamoma/extensions"
			};
		}

		template<typename OS>
		// Try to load extensions. Returns "true" only if at least one extension was loaded.
		static bool loadClassesFromFolder(const std::string& fullpath)
		{
			using namespace std;

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

				// Open the shared object
				void *handle = dlopen((fullpath + "/" + fileName).c_str(), RTLD_LAZY);
				if (!handle)
				{
					TTLogMessage("dlopen: ERROR: %s\n", dlerror());
					continue;
				}

				// Load the Jamoma extension
				string initFun = "TTLoadJamomaExtension_" + filenameToExtensionName<OS>(fileName);

				auto initializer = reinterpret_cast<TTExtensionInitializationMethod>(dlsym(handle, initFun.c_str()));
				if (initializer)
				{
					auto err = initializer();
					if(err != kTTErrNone)
					{
						TTLogMessage("Error when initializing extension %s\n", fileName.c_str());
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

		// Returns the path of the extensions
		// relative to the folder of the JamomaFoundation library
		// the application uses.
		static std::string computedRelativePath()
		{
			Dl_info		info;
			char		mainBundleStr[4096];

			// Use the path of JamomaFoundation
			if (dladdr((const void*)TTLoadExtensions, &info))
			{
				char *c = 0;

				TTLogMessage("computedRelativePath(): %s\n", info.dli_fname);

				strncpy(mainBundleStr, info.dli_fname, 4096);
				c = strrchr(mainBundleStr, '/');
				if (c)
					*c = 0; // chop the "/JamomaFoundation.dylib/so off of the path
			}

			return mainBundleStr;
		}
};
#endif



#if defined(TT_PLATFORM_MAC)
#include <sys/types.h>

class OSXSpecificInformation
{
	public:
		static constexpr const char extensionPrefix[]{""};
		static constexpr const char extensionSuffix[]{".ttdylib"};

		static std::string computedRelativePath()
		{
			return UnixSpecificInformation::computedRelativePath();
		}

		static StringVector builtinRelativePaths()
		{
			return {"../Frameworks/jamoma/extensions"};
		}

		static StringVector builtinAbsolutePaths()
		{
			return UnixSpecificInformation::builtinAbsolutePaths();
		}

		static bool loadClassesFromFolder(const std::string& folderName)
		{
			bool res = UnixSpecificInformation::loadClassesFromFolder<OSXSpecificInformation>(folderName);
			if(res)
				TTFoundationBinaryPath = folderName.c_str();
			return res;
		}
};
using OperatingSystem = OSXSpecificInformation;
#endif
// TODO iOS & Static loading.


#if defined(TT_PLATFORM_LINUX) && defined(__ANDROID_API__)
#include <unistd.h>
#include <fstream>
#include <iostream>

class AndroidSpecificInformation
{
	public:
		static constexpr const char extensionPrefix[]{"lib"};
		static constexpr const char extensionSuffix[]{".so"};

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
		static constexpr const char extensionPrefix[]{""};
		static constexpr const char extensionSuffix[]{".ttso"};

		static std::string computedRelativePath()
		{
			return UnixSpecificInformation::computedRelativePath();
		}

		static StringVector builtinRelativePaths()
		{
			return {"./extensions"};
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
#include <ShlObj.h>
class WindowsSpecificInformation
{
	public:
		static const char* extensionPrefix;
		static const char* extensionSuffix;

		static std::string computedRelativePath()
		{
			TTString	fullpath{};
			char		temppath[4096];
			LONG		lRes;

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

			return fullpath.c_str();
		}

		static StringVector builtinRelativePaths()
		{
			return {"./extensions"};
		}

		static StringVector builtinAbsolutePaths()
		{
			return {
#if defined(JAMOMA_EXTENSIONS_INSTALL_PREFIX)
				JAMOMA_EXTENSIONS_INSTALL_PREFIX,
#endif
				"c:\\Program Files (x86)\\Jamoma\\extensions"
			};
		}

		static bool loadClassesFromFolder(const std::string& fullpath)
		{
			using namespace std;
			auto windowsPathSpec = fullpath + "/*.ttdll";
			WIN32_FIND_DATA FindFileData;
			HANDLE hFind = FindFirstFile(windowsPathSpec.c_str(), &FindFileData);

			int count = 0; // Number of extensions loaded.
			if (hFind == INVALID_HANDLE_VALUE)
				return false;
			do {
				string fileName{FindFileData.cFileName};

				if(!isExtensionFilename<WindowsSpecificInformation>(fileName))
					continue;

				// TODO Refactor by abstracting only this part.
				void *handle = LoadLibrary(FindFileData.cFileName);
				if (!handle)
				{
					TTLogMessage("LoadLibrary: ERROR");
					continue;
				}

				// Load the Jamoma extension
				string initFun = "TTLoadJamomaExtension_" + filenameToExtensionName<WindowsSpecificInformation>(fileName);

				// TODO Refactor by abstracting only this part.
				auto initializer = reinterpret_cast<TTExtensionInitializationMethod>(
					GetProcAddress((HMODULE)handle, initFun.c_str()));
				if (initializer)
				{
					auto err = initializer();
					if(err != kTTErrNone)
					{
						TTLogMessage("Error when initializing extension %s\n", fileName.c_str());
					}
					else
					{
						++count;
					}
				}

			} while (FindNextFile(hFind, &FindFileData));
			FindClose(hFind);

			return count != 0;
		}
};
using OperatingSystem = WindowsSpecificInformation;
#endif

// Because these members are static they have to be allocated in this compilation unit.
#if defined(TT_PLATFORM_WIN)
const char* OperatingSystem::extensionPrefix = "";
const char* OperatingSystem::extensionSuffix = ".ttdll";
#else
constexpr const char OperatingSystem::extensionPrefix[array_length(OperatingSystem::extensionPrefix)];
constexpr const char OperatingSystem::extensionSuffix[array_length(OperatingSystem::extensionSuffix)];
#endif

template<typename OS>
bool loadClassesFromPaths(StringVector&& v)
{
	for(auto&& path : v)
	{
		if(OS::loadClassesFromFolder(path))
		{
			return true;
		}
	}

	return false;
}

template<typename OS>
bool loadClassesFromBuiltinPaths()
{
	if(loadClassesFromPaths<OS>(OS::builtinRelativePaths()))
		return true;

	if(loadClassesFromPaths<OS>(OS::builtinAbsolutePaths()))
		return true;

	return false;
}


template<typename OS>
bool loadClassesFromComputedPaths()
{
	auto computedPath = OperatingSystem::computedRelativePath();
	return (!computedPath.empty()
			&& OperatingSystem::loadClassesFromFolder(computedPath));
}


// If nothing is specified and loadFromOtherPaths == false, only try to load from the computed relative path.
// Else if loadFromOtherPaths == true, try to load from other paths

// Else if there is a path, and tryToLoad == false, only try to load from the given path
// Else try to load from the given path, and if it does not work, from the computed path,
// and if it still does not work, from the builtin paths.
void TTLoadExtensions(const char* pathToBinaries, bool loadFromOtherPaths)
{
	if(!pathToBinaries)
	{
		auto res = loadClassesFromComputedPaths<OperatingSystem>();
		if(loadFromOtherPaths && !res)
		{
			loadClassesFromBuiltinPaths<OperatingSystem>();
		}
	}
	else
	{
		auto res = OperatingSystem::loadClassesFromFolder(pathToBinaries);
		if(loadFromOtherPaths && !res)
		{
			if(!loadClassesFromComputedPaths<OperatingSystem>())
			{
				loadClassesFromBuiltinPaths<OperatingSystem>();
			}
		}
	}
}
