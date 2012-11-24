/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief A basic proof-of-concept spatial renderer where the audio of a source will snap to the nearest sink.
 *
 * @details
 *
 * @todo: Extend with a solution for interpolating to new matrix coefficients
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __SPATSNAP_H__
#define __SPATSNAP_H__

#include "TTDSP.h"
#include "TTSampleMatrix.h"
#include "TTSpatEntity.h"
#include "TTSpatSnapRenderer.h"


/**	This class is eventually intended to provide a generalised interface for spatial renderers.
 @todo The class might be further generalised so that it can be reused for other spatial renderers.
 */
class TTSpatSnap : TTAudioObject {
	TTCLASS_SETUP(TTSpatSnap)
	
	TTSpatSourceVector	mSources;		///< A vector describing the geometry of the sources
	TTSpatSinkVector	mSinks;			///< A vector describing the geometry of the sinks (e.g., speakers)
	TTSpatSnapRenderer	mRenderer;		///< The actual spatial renderer for this class

	
	/**	A standard audio processing method as used by TTBlue objects.
	 @param inputs						Incomming audio signals to process from sound sources.
	 @param outputs						Processed audio signals passed to the sinks.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests.
	 @param returnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
	
public:
	
	/** Get the number of sources.
	 @param value						Used to return the number of sources.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSourceCount(TTValue& value);
	
	
	/** Set the number of sources.
	 @param value						The desired number of sources.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSourceCount(const TTValue& value);
	
	
	/** Get the number of sinks.
	 @param value						Used to return the number of sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSinkCount(TTValue& value);
	
	
	/** Set the number of sinks.
	 @param value						The desired number of sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSinkCount(const TTValue& value);
	
	
	/** Get the position of one source.
	 @param sourceNumber				The source (counting from 1) that we want to query the position of.
	 @param x							Cartesian x-coordinate of the position.
	 @param y							Cartesian y-coordinate of the position.
	 @param z							Cartesian z-coordinate of the position.
	 */
	void getOneSourcePosition(TTInt32 sourceNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z);
	
	
	/** Get the position of one source.
	 @param requestedChannel			The channel (counting from 1) that we want to query the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSourcePosition(const TTValue& requestedChannel, TTValue& aPosition);
	
	
	/** Set the position of one source.
	 @param sourceNumber				The source (counting from 1) that we want to set the position of.
	 @param x							Cartesian x-coordinate of the position.
	 @param y							Cartesian y-coordinate of the position.
	 @param z							Cartesian z-coordinate of the position.
	 */
	void setOneSourcePosition(TTInt32 sourceNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z);

	
	/** Get the position of one source.
	 @param requestedChannel			The channel (counting from 1) that we want to set the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSourcePosition(const TTValue& aPosition, TTValue& unused);
	
	
	/** Get the position of one sink.
	 @param sourceNumber				The sink (counting from 1) that we want to query the position of.
	 @param x							Cartesian x-coordinate of the position.
	 @param y							Cartesian y-coordinate of the position.
	 @param z							Cartesian z-coordinate of the position.
	 */
	void getOneSinkPosition(TTInt32 sinkNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z);
	
	
	/** Get the position of one sink.
	 @param requestedChannel			The channel (counting from 1) that we want to query the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSinkPosition(const TTValue& requestedChannel, TTValue& aPosition);

	
	/** Set the position of one sink.
	 @param sourceNumber				The sink (counting from 1) that we want to set the position of.
	 @param x							Cartesian x-coordinate of the position.
	 @param y							Cartesian y-coordinate of the position.
	 @param z							Cartesian z-coordinate of the position.
	 */
	void setOneSinkPosition(TTInt32 sinkNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z);
	
	
	/** Set the position of one sink.
	 @param requestedChannel			The channel (counting from 1) that we want to set the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSinkPosition(const TTValue& aPosition, TTValue& unused);
	
private:
	
	/** Unit tests of the getters and setters for the attributes sourceCont and sinkCount.
	 @param testAssertionCount			The number of test assertions that have been performed so far.
	 @param errorCount					The numebr of assertions that have failed so far.
	 @param returnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testSourceAndSinkCountSetterAndGetter(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);

	
	/** Unit tests for messages to set and get source positions"
	 @param testAssertionCount			The number of test assertions that have been performed so far.
	 @param errorCount					The numebr of assertions that have failed so far.
	 @param returnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testSourcePositionSetterAndGetter(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);
	
	
	/** Unit tests for messages to set and get source positions"
	 @param testAssertionCount			The number of test assertions that have been performed so far.
	 @param errorCount					The numebr of assertions that have failed so far.
	 @param returnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testSinkPositionSetterAndGetter(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);
	
	
	/** Unit test for checking that we have correct matrix coefficient values.
	 @param testAssertionCount			The number of test assertions that have been performed so far.
	 @param errorCount					The numebr of assertions that have failed so far.
	 @param returnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testMatrixCoefficients(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);
	
	
	/** Unit test that pass multichannel audio to the object and test that we get correct audo for all sink channels.
	 @param testAssertionCount			The number of test assertions that have been performed so far.
	 @param errorCount					The numebr of assertions that have failed so far.
	 @param returnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testAudioProcessing(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);
	
};



#endif // __SPATSNAP_H__
