/* 
 * Jamoma N-Dimensional Matrix Data Class
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"
#include "TTUnitTest.h"
//#include "TTLimits.h"



void TTMatrixTestInstantiate(int& errorCount, int&testAssertionCount)
{
    // an attempt to re-write without using TTObjectBaseInstantiate
    TTTestLog("\n");
    TTTestLog("Testing new TTMatrix Instantiation...");
    
    TTObject* testingNewInstantiation = NULL;
    
    try {
        
        testingNewInstantiation = new TTMatrix();
        
        TTTestLog("matrix instantiates successfully");
        
        TTTestLog("Setting to a 1D, float64, matrix with a length of 16 for complex numbers (2 elements per value)");
        testingNewInstantiation->set("dimensions", 16);
        testingNewInstantiation->set("type", "float64");
        testingNewInstantiation->set("elementCount", 2);
        TTTestLog("If you see this message, it probably worked.");
        
    } catch (...) {
        TTTestLog("matrix did NOT instantiate");
        //return kTTErrInstantiateFailed;
    }
    
    TTMatrix testingOtherInstantiation;
    
    TTTestLog("matrix instantiates successfully again");
    
    TTTestLog("Setting to a 1D, float64, matrix with a length of 8 for complex numbers (1 elements per value)");
    testingOtherInstantiation.set("dimensions", 8);
    testingOtherInstantiation.set("type", "float64");
    testingOtherInstantiation.set("elementCount", 1);
    
    TTTestLog("If you see this message, it probably worked.");
    
    
}


    

void TTMatrixTestDataTypes(int& errorCount, int&testAssertionCount)
{


    TTTestLog("\n");
    TTTestLog("Testing TTMatrix DataTypes...");
    
    // instantiate a matrix for testing
    TTMatrix matrix;
    
    // a clear series of tests to ensure type switching via TTDataInfo::matchSymbolToDataType() method works
    TTTestAssertion("default datatype is uint8", 
                    matrix.getTypeAsDataType() == 4,
                    testAssertionCount,
                    errorCount);
    matrix.set("type", "float32");
    TTTestAssertion("changed datatype to float32", 
                    matrix.getTypeAsDataType() == 1,
                    testAssertionCount,
                    errorCount);
    matrix.set("type", "float64");
    TTTestAssertion("changed datatype to float64", 
                    matrix.getTypeAsDataType() == 2,
                    testAssertionCount,
                    errorCount);
    matrix.set("type", "int8");
    TTTestAssertion("changed datatype to int8", 
                    matrix.getTypeAsDataType() == 3,
                    testAssertionCount,
                    errorCount);
    matrix.set("type", "uint8");
    TTTestAssertion("changed datatype to uint8", 
                    matrix.getTypeAsDataType() == 4,
                    testAssertionCount,
                    errorCount);
    matrix.set("type", "int16");
    TTTestAssertion("changed datatype to int16", 
                    matrix.getTypeAsDataType() == 5,
                    testAssertionCount,
                    errorCount);
    matrix.set("type", "uint16");
    TTTestAssertion("changed datatype to uint16", 
                    matrix.getTypeAsDataType() == 6,
                    testAssertionCount,
                    errorCount);
    matrix.set("type", "int32");
    TTTestAssertion("changed datatype to int32", 
                    matrix.getTypeAsDataType() == 7,
                    testAssertionCount,
                    errorCount);
    matrix.set("type", "uint32");
    TTTestAssertion("changed datatype to uint32", 
                    matrix.getTypeAsDataType() == 8,
                    testAssertionCount,
                    errorCount);
    matrix.set("type", "int64");
    TTTestAssertion("changed datatype to int64", 
                    matrix.getTypeAsDataType() == 9,
                    testAssertionCount,
                    errorCount);
    matrix.set("type", "uint64");
    TTTestAssertion("changed datatype to uint64", 
                    matrix.getTypeAsDataType() == 10,
                    testAssertionCount,
                    errorCount);

}
    
    
void TTMatrixTestBasics(int& errorCount, int&testAssertionCount)
    {
    
    TTTestLog("Setting to a 1D, float64, matrix with a length of 16 for complex numbers (2 elements per value)");
    
    TTErr err = kTTErrNone;

    TTMatrix matrix;
        
    matrix.set("dimensions", 16);
    matrix.set("type", "float64");
    matrix.set("elementCount", 2);

    TTTestAssertion("correct amount of data storage calculated", 
                    matrix.getDataCount() == sizeof(TTFloat64) * 16 * 2,
                    testAssertionCount,
                    errorCount);
    TTTestAssertion("correct byte-stride between values calculated", 
                    matrix.getComponentStride() == sizeof(TTFloat64) * 2,
                    testAssertionCount,
                    errorCount);
    
    // Following tests happens in TTMatrixBase & likely do not need repeating
    // Test the fill message with 2-item sized TTValue
    // Test the clear message
    
    TTTestLog("");
    TTTestLog("Setting to a 2D image matrix (8-bit int, 4 elements per value for rgba color) with a size of 160 x 120");
    TTValue dims(160, 120);
    matrix->setAttributeValue("dimensions", dims);
    matrix->setAttributeValue("type", "uint8");
    matrix->setAttributeValue("elementCount", 4);
    
    TTTestAssertion("correct amount of data storage calculated", 
                    matrix->mDataSize == sizeof(TTUInt8) * 160 * 120 * 4, 
                    testAssertionCount,
                    errorCount);
    TTTestAssertion("correct byte-stride between values calculated", 
                    matrix.getComponentStride() == sizeof(TTUInt8) * 4,
                    testAssertionCount,
                    errorCount);
    
    // These tests are performed on TTMatrixBase. Do they need repeating?
    // test values with makeInBounds functions
    // reset and try clipping function
    // reset and try folding function
        
}	
	
	
	
	
void TTMatrixTestMath(int& errorCount, int&testAssertionCount)
{
    // These tests are performed on TTMatrixBase. Do they need repeating?
}

	
		

TTErr TTMatrix::test(TTValue& returnedTestInfo)
{
    int	errorCount = 0;
    int testAssertionCount = 0;

	TTMatrixTestInstantiate(errorCount,testAssertionCount);
	
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
