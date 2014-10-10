/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief Unit tests for the Jamoma DSP #TTBounceEaseOutFunction of the #TTFunctionLib
 *
 * @details Derived from Sam Hocevar's public domain C/C++ implementation of Robert Penner easing functions
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2014 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTFunction.h"
#include "TTBounceEaseOutFunction.h"


/*
 * Coefficients calculated in Octave using script found 
 * in the OctaveScript subfolder of this extension.
 */

TTErr TTBounceEaseOutFunction::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	int					N = 128;
	TTValue				v;
	

	TTFloat64 inputSignal1[128] = {
		0.0000000000000000e+00,
		7.8740157480314960e-03,
		1.5748031496062992e-02,
		2.3622047244094488e-02,
		3.1496062992125984e-02,
		3.9370078740157480e-02,
		4.7244094488188976e-02,
		5.5118110236220472e-02,
		6.2992125984251968e-02,
		7.0866141732283464e-02,
		7.8740157480314960e-02,
		8.6614173228346455e-02,
		9.4488188976377951e-02,
		1.0236220472440945e-01,
		1.1023622047244094e-01,
		1.1811023622047244e-01,
		1.2598425196850394e-01,
		1.3385826771653542e-01,
		1.4173228346456693e-01,
		1.4960629921259844e-01,
		1.5748031496062992e-01,
		1.6535433070866140e-01,
		1.7322834645669291e-01,
		1.8110236220472442e-01,
		1.8897637795275590e-01,
		1.9685039370078738e-01,
		2.0472440944881889e-01,
		2.1259842519685040e-01,
		2.2047244094488189e-01,
		2.2834645669291337e-01,
		2.3622047244094488e-01,
		2.4409448818897639e-01,
		2.5196850393700787e-01,
		2.5984251968503935e-01,
		2.6771653543307083e-01,
		2.7559055118110237e-01,
		2.8346456692913385e-01,
		2.9133858267716534e-01,
		2.9921259842519687e-01,
		3.0708661417322836e-01,
		3.1496062992125984e-01,
		3.2283464566929132e-01,
		3.3070866141732280e-01,
		3.3858267716535434e-01,
		3.4645669291338582e-01,
		3.5433070866141730e-01,
		3.6220472440944884e-01,
		3.7007874015748032e-01,
		3.7795275590551181e-01,
		3.8582677165354329e-01,
		3.9370078740157477e-01,
		4.0157480314960631e-01,
		4.0944881889763779e-01,
		4.1732283464566927e-01,
		4.2519685039370081e-01,
		4.3307086614173229e-01,
		4.4094488188976377e-01,
		4.4881889763779526e-01,
		4.5669291338582674e-01,
		4.6456692913385828e-01,
		4.7244094488188976e-01,
		4.8031496062992124e-01,
		4.8818897637795278e-01,
		4.9606299212598426e-01,
		5.0393700787401574e-01,
		5.1181102362204722e-01,
		5.1968503937007871e-01,
		5.2755905511811019e-01,
		5.3543307086614167e-01,
		5.4330708661417326e-01,
		5.5118110236220474e-01,
		5.5905511811023623e-01,
		5.6692913385826771e-01,
		5.7480314960629919e-01,
		5.8267716535433067e-01,
		5.9055118110236215e-01,
		5.9842519685039375e-01,
		6.0629921259842523e-01,
		6.1417322834645671e-01,
		6.2204724409448819e-01,
		6.2992125984251968e-01,
		6.3779527559055116e-01,
		6.4566929133858264e-01,
		6.5354330708661412e-01,
		6.6141732283464560e-01,
		6.6929133858267720e-01,
		6.7716535433070868e-01,
		6.8503937007874016e-01,
		6.9291338582677164e-01,
		7.0078740157480313e-01,
		7.0866141732283461e-01,
		7.1653543307086609e-01,
		7.2440944881889768e-01,
		7.3228346456692917e-01,
		7.4015748031496065e-01,
		7.4803149606299213e-01,
		7.5590551181102361e-01,
		7.6377952755905509e-01,
		7.7165354330708658e-01,
		7.7952755905511806e-01,
		7.8740157480314954e-01,
		7.9527559055118113e-01,
		8.0314960629921262e-01,
		8.1102362204724410e-01,
		8.1889763779527558e-01,
		8.2677165354330706e-01,
		8.3464566929133854e-01,
		8.4251968503937003e-01,
		8.5039370078740162e-01,
		8.5826771653543310e-01,
		8.6614173228346458e-01,
		8.7401574803149606e-01,
		8.8188976377952755e-01,
		8.8976377952755903e-01,
		8.9763779527559051e-01,
		9.0551181102362199e-01,
		9.1338582677165348e-01,
		9.2125984251968507e-01,
		9.2913385826771655e-01,
		9.3700787401574803e-01,
		9.4488188976377951e-01,
		9.5275590551181100e-01,
		9.6062992125984248e-01,
		9.6850393700787396e-01,
		9.7637795275590555e-01,
		9.8425196850393704e-01,
		9.9212598425196852e-01,
		1.0000000000000000e+00
	};

		
	TTFloat64 expectedSignal1[128] = { 
		0.0000000000000000e+00,
		4.6887593775187550e-04,
		1.8755037510075020e-03,
		4.2198834397668790e-03,
		7.5020150040300080e-03,
		1.1721898443796886e-02,
		1.6879533759067516e-02,
		2.2974920949841899e-02,
		3.0008060016120032e-02,
		3.7978950957901922e-02,
		4.6887593775187544e-02,
		5.6733988467976927e-02,
		6.7518135036270063e-02,
		7.9240033480066960e-02,
		9.1899683799367596e-02,
		1.0549708599417199e-01,
		1.2003224006448013e-01,
		1.3550514601029198e-01,
		1.5191580383160769e-01,
		1.6926421352842708e-01,
		1.8755037510075018e-01,
		2.0677428854857705e-01,
		2.2693595387190771e-01,
		2.4803537107074217e-01,
		2.7007254014508025e-01,
		2.9304746109492213e-01,
		3.1696013392026784e-01,
		3.4181055862111731e-01,
		3.6759873519747038e-01,
		3.9432466364932728e-01,
		4.2198834397668794e-01,
		4.5058977617955243e-01,
		4.8012896025792051e-01,
		5.1060589621179242e-01,
		5.4202058404116793e-01,
		5.7437302374604748e-01,
		6.0766321532643075e-01,
		6.4189115878231751e-01,
		6.7705685411370831e-01,
		7.1316030132060271e-01,
		7.5020150040300071e-01,
		7.8818045136090265e-01,
		8.2709715419430818e-01,
		8.6695160890321787e-01,
		9.0774381548763083e-01,
		9.4947377394754784e-01,
		9.9214148428296867e-01,
		9.7911680823361591e-01,
		9.5461590923181783e-01,
		9.3124031248062478e-01,
		9.0899001798003587e-01,
		8.8786502573005111e-01,
		8.6786533573067137e-01,
		8.4899094798189578e-01,
		8.3124186248372522e-01,
		8.1461807923615792e-01,
		7.9911959823919654e-01,
		7.8474641949283841e-01,
		7.7149854299708576e-01,
		7.5937596875193725e-01,
		7.4837869675739332e-01,
		7.3850672701345355e-01,
		7.2976005952011880e-01,
		7.2213869427738864e-01,
		7.1564263128526173e-01,
		7.1027187054374075e-01,
		7.0602641205282302e-01,
		7.0290625581251076e-01,
		7.0091140182280354e-01,
		7.0004185008369957e-01,
		7.0029760059520108e-01,
		7.0167865335730584e-01,
		7.0418500837001607e-01,
		7.0781666563333046e-01,
		7.1257362514724987e-01,
		7.1845588691177342e-01,
		7.2546345092690112e-01,
		7.3359631719263430e-01,
		7.4285448570897072e-01,
		7.5323795647591263e-01,
		7.6474672949345823e-01,
		7.7738080476160887e-01,
		7.9114018228036453e-01,
		8.0602486204972346e-01,
		8.2203484406968785e-01,
		8.3917012834025639e-01,
		8.5743071486142997e-01,
		8.7681660363320679e-01,
		8.9732779465558865e-01,
		9.1896428792857554e-01,
		9.4172608345216569e-01,
		9.6561318122636175e-01,
		9.9062558125116196e-01,
		9.8985952764149321e-01,
		9.7514870154394018e-01,
		9.6193412220619479e-01,
		9.5021578962825526e-01,
		9.3999370381012337e-01,
		9.3126786475179735e-01,
		9.2403827245327719e-01,
		9.1830492691456289e-01,
		9.1406782813565624e-01,
		9.1132697611655544e-01,
		9.1008237085726229e-01,
		9.1033401235777411e-01,
		9.1208190061809447e-01,
		9.1532603563821979e-01,
		9.2006641741815365e-01,
		9.2630304595789248e-01,
		9.3403592125743984e-01,
		9.4326504331679040e-01,
		9.5399041213594948e-01,
		9.6621202771491355e-01,
		9.7992989005368614e-01,
		9.9514399915226726e-01,
		9.9437534875069744e-01,
		9.8747845495691067e-01,
		9.8192076384152749e-01,
		9.7770227540455146e-01,
		9.7482298964598080e-01,
		9.7328290656581551e-01,
		9.7308202616405559e-01,
		9.7422034844069927e-01,
		9.7669787339574832e-01,
		9.8051460102920629e-01,
		9.8567053134106253e-01,
		9.9216566433133124e-01,
		1.0000000000000018e+00
	};	
	
	// setup Function 
	this->setAttributeValue(TT("function"), TT("easeOutBounce"));

	
	// create 1 channel audio signal objects
	TTObjectBaseInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(N);
	output->allocWithVectorSize(N);
	
	// create a signal to be transformed and then process it)
	input->clear();	
	for (int i=0; i<N; i++)
		input->mSampleVectors[0][i] = inputSignal1[i]; 
	
	this->process(input, output);
	
	// now test the output
	for (int n=0; n<N; n++)
	{
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][n], expectedSignal1[n]);
		badSampleCount += result;
		if (result) 
			TTTestLog("BAD SAMPLE @ n=%i ( value=%.10f	expected=%.10f )", n, output->mSampleVectors[0][n], expectedSignal1[n]);
	}
	
	TTTestAssertion("Produces correct function values", 
					badSampleCount == 0,
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	
	TTObjectBaseRelease(&input);
	TTObjectBaseRelease(&output);
	
	// wrap up test results and pass back to whoever called test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
	
}