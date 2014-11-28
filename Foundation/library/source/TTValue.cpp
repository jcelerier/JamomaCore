/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Jamoma Foundation class for representing values
 *
 * @details
 *
 * @author Tim Place, Théo de la Hogue, Nathan Wolek, Julien Rabin, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTValue.h"
#include "TTSymbolTable.h"
#include "TTObject.h"
#include "TTMatrixBase.h"
#include "TTDictionary.h"


/****************************************************************************************************/
// clear
/****************************************************************************************************/

#ifdef REVIEW_THIS_BECAUSE_HOW_ARE_WE_DEALING_WITH_STRING_MEM_NOW
void TTValue::clear()
{
	if (stringsPresent) {
		for (TTUInt16 i=0; i<numValues; i++) {
			if (type[i] == kTypeString)
				delete data[i].stringPtr;
		}
		stringsPresent = false;
	}
	delete [] data;
	delete [] type;

	init();
	data->float64 = 0.0;
	*type = kTypeNone;
	numValues = 0;		// Important: We want TTValue to contain zero values so we can build an array dynamically with the append() method [TAP]
}
#endif


TTElement::~TTElement()
{
	chuck();
}


void TTElement::chuck()
{
	if (mType == kTypeSymbol)
		delete mValue.mSymbol;
	// TODO: JamomaCore #281 : review the use of TTAddress
	//else if (mType == kTypeAddress)
	//	delete mValue.mAddress;
	else if (mType == kTypeObject)
		delete mValue.mObject;
	else if (mType == kTypeDictionary)
		delete mValue.mDictionary;
	mValue.ptr = NULL;
	mType = kTypeNone;
}


TTElement::operator TTDictionary() const
{
	TT_ASSERT(ttvalue_cast_to_dictionary, (mType == kTypeDictionary));
	return *mValue.mDictionary;
}


TTElement& TTElement::operator = (const TTElement& anOtherValue)
{
	chuck();
	
	mType = anOtherValue.mType;
	
	if (anOtherValue.mType == kTypeSymbol)
		mValue.mSymbol = new TTSymbol(*anOtherValue.mValue.mSymbol);
	// TODO: JamomaCore #281 : review the use of TTAddress
	//else if (anOtherValue.mType == kTypeAddress)
	//	mValue.mAddress = new TTAddress(*anOtherValue.mValue.mAddress);
	else if (anOtherValue.mType == kTypeObject)
		mValue.mObject = new TTObject(*anOtherValue.mValue.mObject);
	else if (anOtherValue.mType == kTypeDictionary)
		mValue.mDictionary = new TTDictionary(*anOtherValue.mValue.mDictionary);
	else
		mValue = anOtherValue.mValue;
	
	return *this;
}


TTElement& TTElement::operator = (const TTDictionary value)
{
	chuck();
	mType = kTypeDictionary;
	mValue.mDictionary = new TTDictionary(value);
	return *this;
}


bool operator == (const TTElement& a1, const TTElement& a2)
{
	if (a1.mType != a2.mType)
		return false;
	else {
		switch (a1.mType) {
			case kTypeInt8:
				if ( a1.mValue.int8 != a2.mValue.int8 )
					return false;
				break;
			case kTypeUInt8:
				if ( a1.mValue.uint8 != a2.mValue.uint8 )
					return false;
				break;
			case kTypeInt16:
				if ( a1.mValue.int16 != a2.mValue.int16 )
					return false;
				break;
			case kTypeUInt16:
				if ( a1.mValue.uint16 != a2.mValue.uint16 )
					return false;
				break;
			case kTypeInt32:
				if ( a1.mValue.int32 != a2.mValue.int32 )
					return false;
				break;
			case kTypeUInt32:
				if ( a1.mValue.uint32 != a2.mValue.uint32 )
					return false;
				break;
			case kTypeInt64:
				if ( a1.mValue.int64 != a2.mValue.int64 )
					return false;
				break;
			case kTypeUInt64:
				if ( a1.mValue.uint64 != a2.mValue.uint64 )
					return false;
				break;
			case kTypeFloat32:
				if ( a1.mValue.float32 != a2.mValue.float32 )
					return false;
				break;
			case kTypeFloat64:
				if ( a1.mValue.float64 != a2.mValue.float64 )
					return false;
				break;
			case kTypeBoolean:
				if ( a1.mValue.boolean != a2.mValue.boolean )
					return false;
				break;
			case kTypeSymbol:
				if ( *a1.mValue.mSymbol != *a2.mValue.mSymbol )
					return false;
				break;
			case kTypeString:
				if ( *a1.mValue.stringPtr != *a2.mValue.stringPtr )
					return false;
				break;
			case kTypeObject:
				if ( *a1.mValue.mObject != *a2.mValue.mObject )
					return false;
				break;
			case kTypeDictionary:
				if ( *a1.mValue.mDictionary != *a2.mValue.mDictionary )
					return false;
				break;
			case kTypePointer:
				if ( a1.mValue.ptr != a2.mValue.ptr )
					return false;
				break;
			case kTypeError:
				if ( a1.mValue.error != a2.mValue.error )
					return false;
				break;
			default: // the type is not currently handled
				return false;
		}
	}
	return true;
}

