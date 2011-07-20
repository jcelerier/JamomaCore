/* 
 *	Plugtastic 
 *	
 *	Copyright © 2010 by Timothy Place
 *	All Rights Reserved
 */

#include "PlugtasticInput.h"

#define thisTTClass			PlugtasticInput
#define thisTTClassName		"plugtastic.input"
#define thisTTClassTags		"audio, input, plugtastic"


TT_AUDIO_CONSTRUCTOR,
	mSidechain(NO)
{
	addAttribute(Sidechain, kTypeBoolean);
	setProcessMethod(processAudio);
}


PlugtasticInput::~PlugtasticInput()
{
	;
}


TTErr PlugtasticInput::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample, *outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		
		while (vs--)
			*outSample++ = (*inSample++);
	}
	return kTTErrNone;
}

