/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief #TTMatrix wraps a TTMatrixBase for use.
 *
 * @details
 *
 * @authors Timothy Place, Nathan Wolek
 *
 * @copyright Copyright © 2014 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_MATRIX_H__
#define __TT_MATRIX_H__

#include "TTBase.h"
#include "TTObject.h"

class TTMatrixBase;


/** Wrap TTMatrixBase instances. */
class TTFOUNDATION_EXPORT TTMatrix : public TTObject {
public:
	
	/** Constructor */
	TTMatrix():
	TTObject("matrix")
	{}
	
	
	/** Get a pointer to the wrapped #TTMatrixBase instance. */
	TTMatrixBase* instance() const
	{
		return (TTMatrixBase*)mObjectInstance;
	}
	
	
	/** @copydoc TTMatrixBase::clear()
     */
	void clear();
	
	
	/** @copydoc TTMatrixBase::referenceExternalData()
    */
	void referenceExternalData(TTPtr aDataPointer);

	
	/** @copydoc TTMatrixBase::getLockedPointer()
     */
	TTByte* getLockedPointer();
	
	
	/** @copydoc TTMatrixBase::releaseLockedPointer()
     */
	void releaseLockedPointer();
	
    
	/** @copydoc TTMatrixBase::getRowCount()
     */
	TTRowID getRowCount() const;

	
	/** @copydoc TTMatrixBase::getColumnCount()
     */
	TTColumnID getColumnCount() const;
    
    
    /** @copydoc TTMatrixBase::getTypeAsDataType()
     */
    TTDataType	getTypeAsDataType();
    
    
    /** @copydoc TTMatrixBase::getTypeAsSymbol()
     */
    TTSymbol getTypeAsSymbol();
    
    
    /** @copydoc TTMatrixBase::getTypeAsDataInfo()
     */
    TTDataInfoPtr getTypeAsDataInfo();

    
    /** @copydoc TTMatrixBase::getDataCount()
     */
    TTUInt32 getDataCount();
	
    
	/** @copydoc TTMatrixBase::getComponentStride()
     */
	TTUInt32 getComponentStride() const;
    
    
	/** @copydoc TTMatrixBase::get2d()
     */
	template<typename T>
	TTErr get2d(TTRowID i, TTColumnID j, T& data) const;
	
	
	/** @copydoc TTMatrixBase::get2d()
     */
	template<typename T>
	TTErr get2d(TTRowID i, TTColumnID j, TTElementID e, T& data) const;
	
		
	/** @copydoc TTMatrixBase::set2d()
     */
	template<typename T>
	TTErr set2d(TTRowID i, TTColumnID j, T data);
	
	
	/** @copydoc TTMatrixBase::set2d()
     */
	template<typename T>
	TTErr set2d(TTRowID i, TTColumnID j, TTElementID e, T data);
    
    
    /** Unit test for matrix.
	 @param returnedTestInfo	The outcome from the performed unit test.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
	
};


#endif // __TT_MATRIX_H__
