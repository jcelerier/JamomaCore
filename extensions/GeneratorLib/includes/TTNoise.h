/*
 * TTBlue Noise Generator
 * Copyright © 2003, Timothy Place
 *
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#ifndef __TT_NOISE_H__
#define __TT_NOISE_H__

#include "TTDSP.h"


/**	Noise Generator */
class TTNoise : TTAudioObject {
	TTCLASS_SETUP(TTNoise)

	TTSymbol*		mMode;	///< Attribute: what color is the noise?
	TTFloat64		mGain;  // gain stage
	TTUInt32		accum;	///< accumulator for the noise generation
	TTSampleValue	b[7];	///< for the "pinking" filter

	/**	Audio Processing Method	*/
	TTErr processWhiteNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Audio Processing Method	*/
	TTErr processPinkNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Audio Processing Method	*/
	TTErr processBrownNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Audio Processing Method	*/
	TTErr processBlueNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Attribute Setter. */
	TTErr setMode(const TTValue& newMode);
    TTErr setGain(const TTValue& newValue); 
	TTErr getGain(TTValue& returnedValue);
};


#endif // __TT_NOISE_H__
