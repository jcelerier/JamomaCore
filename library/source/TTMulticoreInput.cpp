/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMulticoreObject.h"
#include "TTMulticoreInlet.h"		// required for windows build
#include "TTMulticoreInput.h"
#include "TTAudioEngine.h"

#define thisTTClass			TTMulticoreInput
#define thisTTClassName		"multicore.input"
#define thisTTClassTags		"audio, multicore, input"

TT_AUDIO_CONSTRUCTOR
{
	mAudioEngine = TTAudioEngine::create();
	mBuffer = (TTAudioEnginePtr(mAudioEngine))->TTAudioEngineGetInputSignalReference();
	
	addAttributeWithGetterAndSetter(SampleRate, kTypeUInt32);
	addAttributeWithGetterAndSetter(VectorSize, kTypeUInt16);

	addMessage(start);
	addMessage(stop);
	addMessageWithArgument(getAvailableDeviceNames);
	
	setProcessMethod(processAudio);
	
	setAttributeValue(TT("SampleRate"), 44100);
	setAttributeValue(TT("VectorSize"), 512);
}


TTMulticoreInput::~TTMulticoreInput()
{
	TTAudioEngine::destroy();
	TTObjectRelease(&mBuffer);
}


TTErr TTMulticoreInput::getAvailableDeviceNames(TTValue& returnedDeviceNames)
{
	return mAudioEngine->sendMessage(TT("getAvailableInputDeviceNames"), returnedDeviceNames);
}


TTErr TTMulticoreInput::start()
{
	mAudioEngine->sendMessage(TT("start"));
	return kTTErrNone;
}


TTErr TTMulticoreInput::stop()
{
	mAudioEngine->sendMessage(TT("stop"));
	return kTTErrNone;
}

TTErr TTMulticoreInput::setSampleRate(const TTValue& newValue)
{
	return mAudioEngine->setAttributeValue(kTTSym_sr, const_cast<TTValue&>(newValue));
}

TTErr TTMulticoreInput::getSampleRate(TTValue& returnedValue)
{
	return mAudioEngine->getAttributeValue(kTTSym_sr, returnedValue);
}


TTErr TTMulticoreInput::setVectorSize(const TTValue& newValue)
{
	return mAudioEngine->setAttributeValue(kTTSym_vectorSize, const_cast<TTValue&>(newValue));
}

TTErr TTMulticoreInput::getVectorSize(TTValue& returnedValue)
{
	return mAudioEngine->getAttributeValue(kTTSym_vectorSize, returnedValue);
}


TTErr TTMulticoreInput::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (outputs->numAudioSignals){
		TTAudioSignal&	out = outputs->getSignal(0);

		out = *mBuffer;
		return kTTErrNone;
	}
	else
		return kTTErrBadChannelConfig;
}
