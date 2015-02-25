/** @file
 *
 * @ingroup scoreImplementation
 *
 * @brief a command line tool to load and play a .score file format
 *
 * @details ... @n@n
 *
 * @see TTScore, TTModular
 *
 * @author Théo de la Hogue
 *
 * @copyright Copyright © 2014, Théo de la Hogue @n
 * This code is licensed under the terms of the "CeCILL-C" @n
 * http://www.cecill.info
 */

#include "TTModular.h"
#include "TTScore.h"

#include <iostream>

int main(int argc, const char * argv[])
{
    // parsing arguments (ignoring the first)
    TTValue args;
    for (TTUInt8 i = 1; i < argc; i++)
    {
        TTSymbol arg(argv[i]);
        args.append(arg);
    }
    
    // check for file path
    if (args.size() == 1)
    {
        if (args[0].type() == kTypeSymbol)
        {
            TTSymbol filepath = args[0];    // .score file to load
            
            // initialisation of Modular environnement (passing the folder path where all the dylibs are)
            TTModularInit("/usr/local/jamoma", true);
            
            // create an application manager
            TTObject applicationManager("ApplicationManager");
            
            // create a local application named i-score
            TTObject applicationLocal = applicationManager.send("ApplicationInstantiateLocal", "i-score");
            
            // loads protocol unit
            // TODO : when parsing project file
            {
                // create Minuit protocol unit
                TTObject protocolMinuit = applicationManager.send("ProtocolInstantiate", "Minuit");
                
                // create OSC protocol unit
                TTObject protocolOSC = applicationManager.send("ProtocolInstantiate", "OSC");
            }
            
            // initialisation of Score environnement (passing the folder path where all the dylibs are)
            TTScoreInit("/usr/local/jamoma");
            
            // create a scenario
            TTObject scenario("Scenario");
            
            // load project file
            TTObject xmlHandler("XmlHandler");
            xmlHandler.set("object", TTValue(applicationManager, scenario));
            xmlHandler.send("Read", filepath);
            
            // run scenario
            scenario.send("Start");
            
            // wait for scenario
            TTBoolean running;
            do
            {
                sleep(1);
                scenario.get("running", running);
            }
            while (running);
            
            return EXIT_SUCCESS;
        }
    }
    
    return EXIT_FAILURE;
}

