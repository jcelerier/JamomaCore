/* 
 * A Container object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_CONTAINER_H__
#define __TT_CONTAINER_H__

#include "TTModular.h"

/*
 
 */

class TTMODULAR_EXPORT TTContainer : public TTObject
{
	
public:
	
	TTCLASS_SETUP(TTContainer)
	
	TTSymbolPtr			mAddress;						///< ATTRIBUTE: the address of the container in the directory
	TTUInt8				mPriority;						///< ATTRIBUTE: does this container have a priority over other containers ?
	TTSymbolPtr			mDescription;					///< ATTRIBUTE: a text label to describe the role of this container
	TTBoolean			mInitialized;					///< ATTRIBUTE: is all TTParameters below have been initialized ?
	
private:
	
	TTNodeDirectoryPtr	mDirectory;						///< the directory
	TTCallbackPtr		mReturnAddressCallback;			///< a way to return back address to the owner of this container
	TTCallbackPtr		mReturnValueCallback;			///< a way to return back value to the owner of this container
	TTHashPtr			mObjectsObserversCache;			///< a hast table containing all <relativeAddress : Objects, ValueObserver, InitializedObserver> for quick access
	TTObjectPtr			mObserver;						///< a life cycle observer
	TTBoolean			mIsSending;						///< a flag to lock the object in case of infinite loop 
	
	friend TTErr TTMODULAR_EXPORT TTContainerDirectoryCallback(TTPtr baton, TTValue& data);
	
	friend TTErr TTMODULAR_EXPORT TTContainerValueAttributeCallback(TTPtr baton, TTValue& data);
	
	friend TTErr TTMODULAR_EXPORT TTContainerInitializedAttributeCallback(TTPtr baton, TTValue& data);
	
public:
	
		TTErr send(TTValue& AddressAndValue);
	
private:
	
		TTErr setAddress(const TTValue& value);
	
		TTErr bind();
		TTErr unbind();
	
		TTErr makeCacheElement(TTNodePtr aNode);
		TTErr deleteCacheElement(TTNodePtr aNode);
	
		TTErr isInitialized();
};

typedef TTContainer* TTContainerPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTContainerDirectoryCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTContainerValueAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTContainerInitializedAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTBoolean TTMODULAR_EXPORT TTContainerTestObjectAndContext(TTNodePtr n, TTPtr args);

#endif // __TT_CONTAINER_H__
