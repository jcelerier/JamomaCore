/* 
 * TTFunctionLib
 * Extension Class for TTBlue
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBlueAPI.h"
#include "CosineFunction.h"
#include "ExpFunction.h"
#include "LinearFunction.h"
#include "LowpassFunction.h"
#include "PowerFunction.h"
#include "TanhFunction.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTBlueInit();

	CosineFunction::registerClass();
	LinearFunction::registerClass();
	LowpassFunction::registerClass();
	PowerFunction::registerClass();
	TanhFunction::registerClass();
	
	return kTTErrNone;
}

