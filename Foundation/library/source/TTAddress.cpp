/*
 * Jamoma Class for accessing Addresses
 * Copyright © 2012, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTFoundationAPI.h"

#if BOOST_REGEX
#include <boost/regex.hpp>
using namespace boost;
#else
#include <regex>
using namespace std;
#endif

TTFOUNDATION_EXPORT TTRegex* ttRegexForInstanceZero = NULL;

TTErr TTAddress::parseInstanceZero(const char* cstr, TTString& parsed)
{
	std::string temp;

    // filter single "0" string
	std::string toParse(cstr);
    if (toParse.size() > 1) {
        
		temp = toParse;
        
		std::string::iterator begin = temp.begin();
		std::string::iterator end = temp.end();
        
        // parse and remove ".0"
        while (!ttRegexForInstanceZero->parse(begin, end)) {
			std::string::iterator z_begin = ttRegexForInstanceZero->begin() - 2;
			std::string::iterator z_end = ttRegexForInstanceZero->end();
            
			std::string a(begin, z_begin);
			std::string b(z_end, end);
            parsed = a+b;
            
			begin = temp.begin();
			end = temp.end();
        }
    }

	parsed = temp.c_str();
    return kTTErrNone;
}