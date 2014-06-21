/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Create Jamoma object instances.
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2014, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"
#include "TTMatrixBase.h"


void TTMatrix::clear()
{
	instance()->clear();
}


void TTMatrix::referenceExternalData(TTPtr aDataPointer)
{
	instance()->referenceExternalData(aDataPointer);
}


TTByte* TTMatrix::getLockedPointer()
{
	return instance()->getLockedPointer();
}


void TTMatrix::releaseLockedPointer()
{
	instance()->releaseLockedPointer();
}


TTRowID TTMatrix::getRowCount() const
{
	return instance()->getRowCount();
}


TTColumnID TTMatrix::getColumnCount() const
{
	return instance()->getColumnCount();
}


TTDataType	TTMatrix::getTypeAsDataType()
{
    return instance()->getTypeAsDataType();
}


TTSymbol TTMatrix::getTypeAsSymbol()
{
    return instance()->getTypeAsSymbol();
}


TTDataInfoPtr TTMatrix::getTypeAsDataInfo()
{
    return instance()->getTypeAsDataInfo();
}


TTUInt32 TTMatrix::getDataCount()
{
    return instance()->getDataCount();
}


TTUInt32 TTMatrix::getComponentStride() const
{
	return instance()->getComponentStride();
}

TTUInt32 TTMatrix::getDataSize()
{
    return instance()->getDataSize();
}

