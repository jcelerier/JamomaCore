/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Unit tests for the #TTSampleMatrix class
 *
 * @details
 *
 * @see TTSampleMatrix
 *
 * @authors Tim Place, Nathan Wolek
 *
 * @copyright Copyright © 2012 by Tim Place, Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTSampleMatrix.h"

/* */
#define TESTFILE "/Users/nathanwolek/Desktop/geese_clip.aif"
#define TESTNUMCHANNELS 2
#define TESTSAMPLERATE 44100
#define TESTDURATIONINSAMPLES 88202
#define TESTDURATIONINSECONDS 2.00004535
#define TESTTITLE ""
#define TESTARTIST ""
#define TESTDATE ""
#define TESTANNOTATION ""
/* */

/*
 #define TESTFILE "/Volumes/Storage/Audio/200604femf15/pitched/ding_b2.aiff"
 #define TESTNUMCHANNELS 1
 #define TESTSAMPLERATE 44100
 #define TESTDURATIONINSAMPLES 39493
 #define TESTDURATIONINSECONDS 0.89553288
 #define TESTTITLE ""
 #define TESTARTIST ""
 #define TESTDATE ""
 #define TESTANNOTATION ""
 */

TTErr TTSampleMatrix::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	
	// for tests
	TTInt16				numChannels = 2;
	TTUInt32			numSamples = 50000;  // TODO: xcode says this is ambiguous when signed?
	TTFloat32			duration = 1500;
	TTInt32				test9Index = 10;
	TTInt32				test10Index = 11;
	TTInt32				test1Return, test2Return, test7Return;
	TTFloat32			test3Return, test6Return;
	TTSampleValue		test9Return, test10Return, test11Return, test12return, test13return;
	
	TTTestLog("Test resizing of the SampleMatrix...");
	
	
	// TEST 1: can we set the number of channels?
	this->setAttributeValue("numChannels", numChannels);
	
	this->getAttributeValue("numChannels", test1Return);
	
	TTBoolean result = { numChannels == test1Return };
	
	TTTestAssertion("numChannels is set properly", 
					result,
					testAssertionCount, 
					errorCount);
	
	if(!result)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", numChannels, test1Return);	
	}
	
	
	// TEST 2: can we set the number of samples?
	//this->setAttributeValue("lengthInSamples", numSamples);  // TODO: xcode says this is ambiguous?
	this->setLengthInSamples(numSamples);
	
	this->getAttributeValue("lengthInSamples", test2Return);

	TTBoolean result2 = { numSamples == test2Return };

	TTTestAssertion("lengthInSamples is set properly", 
								result2,
								testAssertionCount, 
								errorCount);
	if(!result2)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", numSamples, test2Return);	
	}
	
	
	// TEST 3: is the length in sec computed properly after setting length in samples?
	TTFloat32 computedDuration3 = (numSamples / this->mSampleRate);	
	
	this->getAttributeValue("lengthInSeconds", test3Return);				
					
	TTBoolean result3 = TTTestFloatEquivalence(computedDuration3, test3Return);
				
	TTTestAssertion("after lengthInSamples is set, lengthInSeconds is correct",
								result3,
								testAssertionCount, 
								errorCount);
							
	if(!result3)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", computedDuration3, test3Return);	
	}	
	
	
	// TEST 4: is the matrix of samples the expected size? (lifted from TTMatrix.test.cpp)
	TTUInt32 computedDataSize4 = sizeof(TTFloat64) * numChannels * numSamples;
	
	TTBoolean result4 = { computedDataSize4 == this->mDataSize };
	
	TTTestAssertion("correct amount of data storage calculated", 
								result4, 
								testAssertionCount,
								errorCount);
								
	if(!result4)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", computedDataSize4, this->mDataSize);
	}
	
	
	// TEST 5: Is the component stride right? (lifted from TTMatrix.test.cpp)
	TTBoolean result5 = { sizeof(TTFloat64) == this->mComponentStride };
								
	TTTestAssertion("correct byte-stride between values calculated", 
								result5, 
								testAssertionCount,
								errorCount);
								
	if(!result5)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", sizeof(TTFloat64), this->mComponentStride);
	}
	
									
	// TEST 6: can we set the length in seconds?
	this->setAttributeValue("lengthInSeconds", duration);
	
	this->getAttributeValue("lengthInSeconds", test6Return);

	TTBoolean result6 = TTTestFloatEquivalence(duration, test6Return);

	TTTestAssertion("lengthInSeconds is set properly",
								result6,
								testAssertionCount, 
								errorCount);
	
	if(!result6)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", duration, test6Return);
	}

				
	// TEST 7: is the length in samples computed properly after setting length in ms?
	TTUInt32 computedSamples7 = TTUInt32(duration * this->mSampleRate);	
					
	this->getAttributeValue("lengthInSamples", test7Return);				
	
	TTBoolean result7 = { computedSamples7 == test7Return };
				
	TTTestAssertion("after lengthInSeconds is set, lengthInSamples is correct",
								result7,
								testAssertionCount, 
								errorCount);
							
	if(!result7)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", computedSamples7, test7Return);	
	}	
	
	
	// TEST 8 (REPEAT TEST 4 WITH NEW SIZE): is the matrix of samples the expected size?
	TTUInt32 computedDataSize8 = sizeof(TTFloat64) * numChannels * test7Return;
	
	TTBoolean result8 = { computedDataSize8 == this->mDataSize };
	
	TTTestAssertion("correct amount of data storage calculated with new length", 
								result8, 
								testAssertionCount,
								errorCount);													
	
	if(!result8)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", computedDataSize8, this->mDataSize);	
	}
	
	
	// TEST 9 & 10: set the value of two consecutive samples
	TTSampleValue pokeValue9 = TTRandom64();
	TTSampleValue pokeValue10 = TTRandom64();
	
	this->poke(test9Index, 0, pokeValue9);
	this->poke(test10Index, 0, pokeValue10);
	
	this->peek(test9Index, 0, test9Return);
	this->peek(test10Index, 0, test10Return);
	
	TTBoolean result9 = { pokeValue9 == test9Return };
	
	TTTestAssertion("set value one of two consecutive samples", 
								result9, 
								testAssertionCount,
								errorCount);													
	
	if(!result9)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", pokeValue9, test9Return);
	}
	
	TTBoolean result10 = { pokeValue10 == test10Return };
	
	TTTestAssertion("set value two of two consecutive samples", 
								result10, 
								testAssertionCount,
								errorCount);													
	
	if(!result10)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", pokeValue10, test10Return);
	}
	
	
	// TEST 11: test for interpolation between two consecutive samples
	TTFloat64 computedInterpFraction = TTRandom64();
	TTFloat64 computedInterpIndex = test9Index + computedInterpFraction;
	TTSampleValue computedInterpValue11 = (computedInterpFraction * pokeValue10) + ((1.0 - computedInterpFraction) * pokeValue9);
	
	this->peeki(computedInterpIndex, 0, test11Return);
	
	TTBoolean result11 = TTTestFloatEquivalence(computedInterpValue11, test11Return);
	
	TTTestAssertion("interpolate between two consecutive samples", 
								result11, 
								testAssertionCount,
								errorCount);													
	
	if(!result11)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", computedInterpValue11, test11Return);
	}
	

	// TODO: inbounds testing on hold until sorted out at TTMatrix parent class
	
	// TEST 12 & 13: test whether out of bounds indices produce errors at head
	
	TTInt32 computedIndex12 = -1; // 1 before the head
	TTInt32 computedIndex13 = 0; // the head
	TTErr test12Err = this->peek(computedIndex12, 0, test12return);
	TTErr test13Err = this->peek(computedIndex13, 0, test13return);
	
	TTBoolean result12 = { test12Err == kTTErrOutOfBounds };
	TTBoolean result13 = { test13Err == kTTErrNone };
	
	TTTestAssertion("peeking sample before index 0 produces an error", 
								result12, 
								testAssertionCount,
								errorCount);													
	
	if(!result12)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", kTTErrOutOfBounds, test12Err);
	}
	
	
	TTTestAssertion("peeking sample at index 0 produces no error", 
								result13, 
								testAssertionCount,
								errorCount);													
	
	if(!result13)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", kTTErrNone, test13Err);
	}
	
	// TEST 14 & 15: test whether out of bounds indices produce errors at tail
	
	TTInt32 computedIndex14 = test7Return; // should be latest size in samples
	TTInt32 computedIndex15 = test7Return - 1; // the tail is actually one less
	TTErr test14Err = this->poke(computedIndex14, 0, test12return);
	TTErr test15Err = this->poke(computedIndex15, 0, test13return);
	
	TTBoolean result14 = { test14Err == kTTErrOutOfBounds };
	TTBoolean result15 = { test15Err == kTTErrNone };
	
	TTTestAssertion("poking sample after index max produces an error", 
								result14, 
								testAssertionCount,
								errorCount);													
	
	if(!result14)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", kTTErrOutOfBounds, test14Err);
	}
	
	
	TTTestAssertion("poking sample at index max produces no error", 
								result15, 
								testAssertionCount,
								errorCount);													
	
	if(!result15)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", kTTErrNone, test15Err);
	}
	
	
	// TEST 16 & 17: incrementing & decrementing userCount
	
	TTUInt16 test16expect = 4;
	TTUInt16 test17expect = 2;
	
	this->incrementUserCount();
	this->incrementUserCount();
	this->incrementUserCount();
	this->incrementUserCount();
	TTUInt16 test16return = this->mUserCount;
	
	this->decrementUserCount();
	this->decrementUserCount();
	TTUInt16 test17return = this->mUserCount;
	
	TTBoolean result16 = { test16expect == test16return };
	TTBoolean result17 = { test17expect == test17return };
	
	TTTestAssertion("incrementing userCount produces expected results", 
								result16, 
								testAssertionCount,
								errorCount);													
	
	if(!result16)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", test16expect, test16return);
	}
	
	
	TTTestAssertion("decrementing userCount produces expected results", 
								result17, 
								testAssertionCount,
								errorCount);													
	
	if(!result17)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", test17expect, test17return);
	}
	
	// TEST 18 & 19: setting & testing bufferPoolStage
	
	TTBoolean test18expect = true;
	TTBoolean test19expect = false;
	
	this->setBufferPoolStage(kSM_Active);
	TTBoolean test18return = this->isBufferPoolStage(kSM_Active);
	TTBoolean test19return = this->isBufferPoolStage(kSM_BecomingIdle);
	
	TTBoolean result18 = { test18expect == test18return };
	TTBoolean result19 = { test19expect == test19return };
	
	TTTestAssertion("reports bufferPoolStage as active", 
								result18, 
								testAssertionCount,
								errorCount);													
	
	if(!result18)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", test18expect, test18return);
	}
	
	
	TTTestAssertion("reports bufferPoolStage as NOT becoming idle", 
								result19, 
								testAssertionCount,
								errorCount);													
	
	if(!result19)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", test19expect, test19return);
	}
	
    /********/
    
    // TEST 20: load values from a sound file
    
    TTInt16				numChannels20 = 2;
	TTUInt32			numSamples20 = 500;  // TODO: xcode says this is ambiguous when signed?
    
    this->setAttributeValue("numChannels", numChannels20);
    this->setAttributeValue("lengthInSamples", numSamples20);
    
    TTTestLog("\nThe samplematrix currently has %i samples and %i channels", numChannels20, numSamples20);
    
    // set up TTValues passed to the public method
    TTValue loadInput, loadOuput;
    loadInput.append(TT(TESTFILE));
    
    
    TTBoolean result20 = { load(loadInput, loadOuput) == kTTErrNone };
    
    TTTestAssertion("load operates successfully",
                    result20,
                    testAssertionCount,
                    errorCount);
    
    TTTestLog("Let's look at the first 10 values...");
    
    TTSampleValue return20b;
    TTErr error20b;
    
    for (int channel=0;channel<numChannels20;channel++)
    {
        TTTestLog("Channel %i", channel);
        for (int sample=0;sample<10;sample++)
        {
            error20b = this->peek(sample,channel,return20b);
            if (error20b == kTTErrNone)
            {
                TTTestLog("peek sample %i returned the value %f", sample, return20b);
            } else {
                TTTestLog("peek returned an error for sample %i", sample);
            }
        }
    }
    
    
	/*
	
	int					badSampleCount = 0;
	TTAudioObjectBasePtr	samplematrixObject = NULL;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	
	// TODO: test filling with sine wave
	// TODO: test scaling (applying gain)
	// TODO: test normalizing (with optional arg, and also without an optional arg)
	
	TTObjectBaseInstantiate("samplematrix", &samplematrixObject, kTTVal1);
	
	TTObjectBaseRelease(&input);
	TTObjectBaseRelease(&output);
	TTObjectBaseRelease(&samplematrixObject);
	
	*/
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

