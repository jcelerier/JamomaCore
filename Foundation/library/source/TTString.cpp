/* 
	Jamoma Class for representing strings
	Copyright © 2012, Timothy Place
	
	License: This code is licensed under the terms of the "New BSD License"
	http://creativecommons.org/licenses/BSD/
 */

#include "TTString.h"
#include "MersenneTwister.h"


#define VECTOR ((std::vector<char>*)mVector)

void TTString::random()
{
	MTRand			twister;
	unsigned int	i = twister.randInt();
	char			s[16];
		
	snprintf(s, 16, "j%u", i);
	s[15] = 0;
	(*this) = s;
}



/** Constructor */
TTString::TTString(const char *aCString) : 
mVector(NULL)
{
	assign(aCString);
	TTLogDebug("TTString NEW %p %s\n", this, aCString);
}


TTString::TTString(const std::string& aStdString) :
mVector(NULL)
{
	assign(aStdString);
	TTLogDebug("TTString NEW %p %s\n", this, aStdString.c_str());
}


TTString::TTString(std::vector<char>::iterator begin, std::vector<char>::iterator end) :
mVector(NULL)
{
	TTPtrSizedInt newsize = (end - begin);

	mVector = new std::vector<char>;

	reserve(newsize + 16);
	for (std::vector<char>::iterator c = begin; c != end; ++c) {
		push_back(*c);
	}

	// In some cases the range has NULL termination included, in other cases not.
	// In these cases we need to correct the size of the string to match the C-String.
	// If we don't then two strings with identical contents (e.g. "foo" and "foo") will hash to different values.
	// If then looked-up in the symbol table we corrupt the symbol table with two entries for the same string!
	TTBoolean resized = NO;

	for (TTPtrSizedInt i = newsize - 1; i>0; i--) {
		if (at(i) != 0) {
			resize(i + 1);
			resized = YES;
			break;
		}
	}
	if (!resized)
		resize(newsize); // ensure NULL termination
}

TTString::TTString(const TTString& other) :
mVector(NULL)
{
	assign(other.c_str());
}

/** Destructor */
TTString::~TTString()
{
	delete mVector;
}

char& TTString::at(size_t index) const
{
	return VECTOR->at(index);
}


void TTString::push_back(char c)
{
	VECTOR->push_back(c);
}

const char* TTString::data()
{
	return VECTOR->data();
}


/** Return a pointer to the internal C-string */
const char* TTString::c_str() const
{
	std::vector<char>& vec = *VECTOR;
	return &vec[0];
}


void TTString::clear()
{
	resize(0); // we call this instead of clear() on the vector because when we are empty we still have a string with 1 NULL termination char
}


bool TTString::empty()
{
	if (size() < 2) // empty means we have only 1 char (a NULL terminator)
		return true;
	else
		return false;
}


void TTString::reserve(size_t size)
{
	return VECTOR->reserve(size);
}

size_t TTString::capacity()
{
	return VECTOR->capacity();
}


/** Assign from a C-string. */
TTString& TTString::operator = (const char* aCString)
{
	assign(aCString);
	return *this;
}


/** Assign from a std::string. */
TTString& TTString::operator = (std::string& aStdString)
{
	assign(aStdString);
	return *this;
}


/** Assign from a simple char. */
TTString& TTString::operator = (const char aChar)
{
	resize(1);
	VECTOR->at(0) = aChar;
	return *this;
}


/** Overload to assign from a C-string. */
void TTString::assign(const char* aCString, size_t length)
{
	if (!mVector)
		mVector = new std::vector<char>;

	if (length == 0) { // no length defined, so check the c-string in the traditional way
		if (aCString)
			length = strlen(aCString);
	}

	if ((length + 1) >= capacity())
		reserve(length + 16);

	resize(length);
	if (length) {
		std::vector<char>& vec = *VECTOR;
		memcpy(&vec[0], aCString, length);
//		vec.assign(aCString, length);
//		vec.resize(vec.size() + 1);
		vec[vec.size() - 1] = 0;
	}
}


/** Assign from a std::string. */
void TTString::assign(const std::string& aStdString)
{
	assign(aStdString.c_str(), aStdString.length());
}


/** Find out the length of a string.  */
size_t TTString::size() const
{
	return VECTOR->size() - 1;
}


/** Find out the length of a string.  */
size_t TTString::length() const
{
	return size();
}


// because when size() == 0 there is still a char (null terminator) in the vector, we have to override this
bool TTString::empty() const
{
	return size() == 0;
}

/** Allocate  memory for the string. */
void TTString::resize(size_t newSize)
{
	VECTOR->resize(newSize+1);
	at(newSize) = 0; // NULL terminate for safety
}


/** Append / Concatenate */
void TTString::append(const char *str, size_t length)
{
	if (!str)
		return;

	if (length == 0)
		length = strlen(str);

	size_t oldSize = size();
	size_t newSize = oldSize + length;

	if (newSize >= capacity())
		reserve(newSize + 256);

	resize(newSize);
	memcpy(&this->at(oldSize), str, length);
}


void TTString::append(const char aChar)
{
	char s[2];

	snprintf(s, 2, "%c", aChar);
	append(s);
}


void TTString::append(int anInt)
{
	char s[16];

	snprintf(s, 16, "%i", anInt);
	append(s);
}


void TTString::append(unsigned int aUInt)
{
	char s[16];

	snprintf(s, 16, "%u", aUInt);
	append(s);
}


void TTString::append(float aFloat)
{
	char s[16];

	snprintf(s, 16, "%f", aFloat);
	append(s);
}


void TTString::append(double aDouble)
{
	char s[16];

	snprintf(s, 16, "%lf", aDouble);
	append(s);
}



TTString TTString::operator + (const char* arg)
{
	TTString result(*this);	// Make a copy of myself
	result += arg;			// Use += to add arg to the copy.
	return result;
}


bool TTString::operator == (const char *cString) const
{
	const TTString s(cString);
	return (*this) == s;
}

bool TTString::operator == (const TTString &other) const
{
	return *VECTOR == *((std::vector<char>*)(other.mVector));
}


bool TTString::operator != (const char *cString) const
{
	return !(*this == cString);
}

bool TTString::operator != (const TTString &other) const
{
	return !(*this == other);
}


/** Return the index of the first instance of a specified char in the string.
@param	aChar	The char for which to search
@param	from	A position in the string from which to begin the search.  By default it starts at the beginning (0)
*/
size_t TTString::find_first_of(const char aChar, size_t from)
{
	TTBoolean	found = NO;
	size_t		i;

	for (i = from; i<size(); i++) {
		if (at(i) == aChar) {
			found = YES;
			break;
		}
	}
	if (found)
		return i;
	else
		return -1;
}

/** Return the index of the last instance of a specified char in the string.
@param	aChar	The char for which to search
*/
size_t TTString::find_last_of(const char aChar)
{
	TTBoolean	found = NO;
	size_t		i, j;

	j = size() - 1;

	for (i = 0; i<size(); i++) {
		if (at(j) == aChar) {
			found = YES;
			break;
		}
		else {
			j--;
		}
	}
	if (found)
		return j;
	else
		return -1;
}


/** Returns a string object with its contents initialized to a substring of the current object.
@param pos	Position of a character in the current string object to be used as starting character for the substring.
@param n 	Length of the substring.
*/
TTString TTString::substr(size_t pos, size_t n) const
{
	TTString	substring;
	size_t		i;

	if (pos + n > size())		// If the size is too large and thus the range extends past the end of the string...
		n = size() - pos;	// we limit the range to end at the end of the string.

	substring.reserve(n + 16);
	substring.resize(n);
	for (i = 0; i<n; i++) {
		substring[i] = (*this)[pos + i];
		if (pos + i >= size())
			break;
	}
	return substring;
}


// This avoids a warning in GCC 4.7 about ambiguity between using an int vs. a size_t where
// the int could also be considered an index into a char array
char& TTString::operator[] (const int index)
{
	return this->at(index);
}


//	TTBoolean toTTInt32( const TTString & str, TTInt32 & convertedInt )
TTBoolean TTString::toTTInt32(TTInt32& convertedInt) const
{
	char * pEnd;

	convertedInt = strtol(c_str(), &pEnd, 10);
	return *pEnd == 0;
}

//	TTBoolean toTTUInt32( const TTString & str, TTInt32 & convertedUInt )
TTBoolean TTString::toTTUInt32(TTUInt32& convertedUInt) const
{
	char * pEnd;

	convertedUInt = strtoul(c_str(), &pEnd, 10);

	// is the last letter is a 'u' ?
	return *pEnd == 'u' && pEnd == (c_str() + length() - 1);
}

/*	note : isTTFloat32 works only because the TTInt32 case is matched before
see in TTValue::fromString method
*/
//	TTBoolean toTTFloat32( const TTString & str, TTFloat32 & convertedFloat )
TTBoolean TTString::toTTFloat32(TTFloat32& convertedFloat) const
{
	char * pEnd;

	convertedFloat = strtod(c_str(), &pEnd);
	return *pEnd == 0;
}
