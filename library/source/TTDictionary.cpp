/* 
 * Foundation Dictionary Class
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDictionary.h"
#include "TTSymbolTable.h"
//#include "TTMutex.h"

//static TTMutex* sListMutex=NULL;

/****************************************************************************************************/

TTDictionary::TTDictionary()
{
//	if(!sListMutex)
//		sListMutex = new TTMutex(false);
//	hashMap = new TTHashMap;
	mHashTable = new TTHash;
}


TTDictionary::~TTDictionary()
{
	clear();
	delete mHashTable;
}


TTErr TTDictionary::setSchema(const TTSymbolPtr schemaName)
{
	return append(TT("schema"), schemaName);
}


TTErr TTDictionary::append(const TTSymbolPtr key, const TTValue& value)
{
	return mHashTable->append(key, value);
}


TTErr TTDictionary::lookup(const TTSymbolPtr key, TTValue& value)
{
	return mHashTable->lookup(key, value);
}


TTErr TTDictionary::remove(const TTSymbolPtr key)
{
	return mHashTable->remove(key);
}


TTErr TTDictionary::clear()
{
	return mHashTable->clear();
}


TTErr TTDictionary::getKeys(TTValue& hashKeys)
{
	return mHashTable->getKeys(hashKeys);
}


TTUInt32 TTDictionary::getSize()
{
	return mHashTable->getSize();
}


TTBoolean TTDictionary::isEmpty()
{
	return mHashTable->isEmpty();
}

