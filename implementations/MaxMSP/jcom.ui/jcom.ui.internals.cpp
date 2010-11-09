/* 
 * jcom.ui
 * External for Jamoma: provide standard user interface component for modules
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "jcom.ui.h"

void ui_data_create_all(t_ui* obj)
{
	TTObjectPtr		anObject;
	TTNodePtr		viewNode, parentNode;
	TTString		viewStr, parentStr, dataStr;
	TTValue			v;
	
	jamoma_patcher_type_and_class((ObjectPtr)obj, &obj->patcherType, &obj->patcherClass);
	
	// DEBUG
	//object_post((ObjectPtr)obj, "patcherClass : %s", obj->patcherClass->getCString());
	
	// create a /view node with our pather as context
	jamoma_subscriber_create((ObjectPtr)obj, NULL, gensym("/view"), obj->patcherType, &obj->viewSubscriber);
	
	// get the /view node
	obj->viewSubscriber->getAttributeValue(TT("node"), v);
	v.get(0, (TTPtr*)&viewNode);
	
	// make the name of our jview. patcher
	parentNode = viewNode->getParent();
	if (parentNode) {
		parentStr = "/";
		parentStr += parentNode->getName()->getCString();
		if (parentNode->getInstance() != NO_INSTANCE) {
			parentStr += ".";
			parentStr += parentNode->getInstance()->getCString();
		}
		obj->patcherName = TT(parentStr.data());
	}
	else
		obj->patcherName = S_SEPARATOR;
	
	// DEBUG
	//object_post((ObjectPtr)obj, "patcherName : %s", obj->patcherName->getCString());
	
	// view/color/contentBackground
	ui_data_create(obj, &anObject, gensym("return_color_contentBackground"), kTTSym_parameter, TT("color/contentBackground"));
	anObject->setAttributeValue(kTTSym_type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_rampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_description, TT("The background color of the module in the format RGBA where values range [0.0, 1.0]."));
	
	// view/color/toolbarBackground
	ui_data_create(obj, &anObject, gensym("return_color_toolbarBackground"), kTTSym_parameter, TT("color/toolbarBackground"));
	anObject->setAttributeValue(kTTSym_type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_rampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_description, TT("The background color of the module's toolbar in the format RGBA where values range [0.0, 1.0]."));
	
	// view/color/toolbarText
	ui_data_create(obj, &anObject, gensym("return_color_toolbarText"), kTTSym_parameter, TT("color/toolbarText"));
	anObject->setAttributeValue(kTTSym_type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_rampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_description, TT("The color of the module's toolbar text in the format RGBA where values range [0.0, 1.0]."));
	
	// view/color/border
	ui_data_create(obj, &anObject, gensym("return_color_border"), kTTSym_parameter, TT("color/border"));
	anObject->setAttributeValue(kTTSym_type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_rampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_description, TT("The border color of the module in the format RGBA where values range [0.0, 1.0]."));
	
	// view/size
	ui_data_create(obj, &anObject, gensym("return_view_size"), kTTSym_parameter, TT("size"));
	anObject->setAttributeValue(kTTSym_type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_rampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_description, TT("The size of the module's UI."));
	
	v = TTValue(obj->box.b_patching_rect.width);
	v.append(obj->box.b_patching_rect.height);
	anObject->setAttributeValue(kTTSym_value, v);
	
	// view/freeze
	ui_data_create(obj, &anObject, gensym("return_view_freeze"), kTTSym_parameter, TT("freeze"));
	anObject->setAttributeValue(kTTSym_type, kTTSym_boolean);
	anObject->setAttributeValue(kTTSym_rampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_description, TT("Freeze each jcom.view in the patch"));
	
	// view/refresh
	ui_data_create(obj, &anObject, gensym("return_view_refresh"), kTTSym_message, TT("refresh"));
	anObject->setAttributeValue(kTTSym_type, kTTSym_none);
	anObject->setAttributeValue(kTTSym_rampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_description, TT("Refresh each jcom.view in the patch"));
	
	// view/address
	ui_data_create(obj, &anObject, gensym("return_view_address"), kTTSym_message, TT("address"));
	anObject->setAttributeValue(kTTSym_type, kTTSym_string);
	anObject->setAttributeValue(kTTSym_rampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_description, TT("Set the model address to bind"));
	
	// else observe the entire namespace
	obj->nmspcExplorer->setAttributeValue(kTTSym_lookfor, TT("Container"));
	obj->nmspcExplorer->setAttributeValue(kTTSym_address, S_SEPARATOR);
	obj->nmspcExplorer->sendMessage(TT("Explore"), kTTValNONE);
}

void ui_data_destroy_all(t_ui *obj)
{
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	
	// delete all datas
	if (obj->hash_datas) {
		
		if (!obj->hash_datas->isEmpty()) {
			
			obj->hash_datas->getKeys(hk);
			for (i=0; i<obj->hash_datas->getSize(); i++) {
				
				hk.get(i,(TTSymbolPtr*)&key);
				ui_data_destroy(obj, key);
			}
		}
		delete obj->hash_datas;
	}
}
								   
void ui_data_create(t_ui *obj, TTObjectPtr *returnedData, SymbolPtr aCallbackMethod, TTSymbolPtr service, TTSymbolPtr name)
{
	TTValue			args, v;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	TTSubscriberPtr	aSubscriber;
	TTSymbolPtr		dataAddress;
	
	// Prepare arguments to create a TTData object
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(obj));
	returnValueBaton->append(TTPtr(aCallbackMethod));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	args.append(service);
	
	*returnedData = NULL;
	TTObjectInstantiate(TT("Data"), TTObjectHandle(returnedData), args);
	
	// Register data
	joinOSCAddress(TT("/view"), name, &dataAddress);
	jamoma_subscriber_create((ObjectPtr)obj, *returnedData, gensym((char*)dataAddress->getCString()), obj->patcherType, &aSubscriber);
	
	// Store data
	args = TTValue(TTPtr(*returnedData));
	args.append(TTPtr(aSubscriber));
	obj->hash_datas->append(name, args);
	
	// DEBUG
	aSubscriber->getAttributeValue(TT("nodeAddress"), v);
	v.get(0, &dataAddress);
	object_post((ObjectPtr)obj, "Make internal /view/%s object at : %s", name->getCString(), dataAddress->getCString());
}								   

void ui_data_destroy(t_ui *obj, TTSymbolPtr name)
{
	TTValue			storedObject;
	TTObjectPtr		aData, aSubscriber;

	if (obj->hash_datas)
		if (!obj->hash_datas->lookup(name, storedObject)) {
			
			// Unregister data
			storedObject.get(1, (TTPtr*)&aSubscriber);
			if (aSubscriber)
				TTObjectRelease(&aSubscriber);
			
			// Delete data
			storedObject.get(0, (TTPtr*)&aData);
			if (aData)
				if (aData->valid)	// to -- should be better to understand why the data is not valid
					TTObjectRelease(&aData);
			
			// don't remove from the hash_table here !
		}
}

void ui_data_send(t_ui *obj, TTSymbolPtr name, TTValue v)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	
	obj->hash_datas->lookup(name, storedObject);
	storedObject.get(0, (TTPtr*)&anObject);
	
	anObject->setAttributeValue(kTTSym_value, v);
}

void ui_viewer_create(t_ui *obj, TTObjectPtr *returnedViewer, SymbolPtr aCallbackMethod, TTSymbolPtr name)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	args.append(JamomaApplication);
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(obj));
	returnValueBaton->append(TTPtr(aCallbackMethod));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedViewer = NULL;
	TTObjectInstantiate(TT("Viewer"), TTObjectHandle(returnedViewer), args);
	
	// Set sub and main address attributes
	(*returnedViewer)->setAttributeValue(TT("addressSub"), name);
	(*returnedViewer)->setAttributeValue(TT("addressMain"), obj->address);
	
	// Store the Viewer
	args = TTValue(TTPtr(*returnedViewer));
	obj->hash_viewers->append(name, args);
}

void ui_viewer_destroy(t_ui *obj, TTSymbolPtr name)
{
	TTValue			storedObject;
	TTObjectPtr		aViewer;

	if (obj->hash_viewers)
		if (!obj->hash_viewers->lookup(name, storedObject)) {
			
			storedObject.get(0, (TTPtr*)&aViewer);
			if (aViewer)
				if (aViewer->valid)	// to -- should be better to understand why the viewer is not valid
					TTObjectRelease(&aViewer);
			
			// don't remove from the hash_table here !
		}
}

void ui_viewer_destroy_all(t_ui *obj)
{
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	
	// delete all viewers
	if (obj->hash_viewers) {
		
		if (!obj->hash_viewers->isEmpty()) {
			
			obj->hash_viewers->getKeys(hk);
			
			for (i=0; i<obj->hash_viewers->getSize(); i++) {
				
				hk.get(i,(TTSymbolPtr*)&key);
				ui_viewer_destroy(obj, key);
			}
		}
		delete obj->hash_viewers;
	}
}

void ui_viewer_send(t_ui *obj, TTSymbolPtr name, TTValue v)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	TTErr			err;
	if (obj->hash_viewers) {
		err = obj->hash_viewers->lookup(name, storedObject);
		
		if (!err) {
			storedObject.get(0, (TTPtr*)&anObject);
			if (anObject)
				anObject->sendMessage(kTTSym_Send, v);
		}
	}
}

void ui_viewer_freeze(t_ui *obj, TTSymbolPtr name, TTBoolean f)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	TTErr			err;
	if (obj->hash_viewers) {
		err = obj->hash_viewers->lookup(name, storedObject);
		
		if (!err) {
			storedObject.get(0, (TTPtr*)&anObject);
			if (anObject)
				anObject->setAttributeValue(kTTSym_freeze, f);
		}
	}
}

void ui_viewer_refresh(t_ui *obj, TTSymbolPtr name)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	TTErr			err;
	if (obj->hash_viewers) {
		err = obj->hash_viewers->lookup(name, storedObject);
		
		if (!err) {
			storedObject.get(0, (TTPtr*)&anObject);
			if (anObject)
				anObject->sendMessage(kTTSym_refresh, kTTValNONE);
		}
	}
}

#if 0
#pragma mark -
#pragma mark message handlers
#endif

void ui_explorer_create(ObjectPtr x, TTObjectPtr *returnedExplorer, SymbolPtr method)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	args.append(JamomaApplication);
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueBaton->append(TTPtr(method));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedExplorer = NULL;
	TTObjectInstantiate(TT("Explorer"), TTObjectHandle(returnedExplorer), args);
}

void ui_nmspcExplorer_callback(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	TTNodePtr	patcherNode;
	TTObjectPtr anObject;
	TTSymbolPtr parent, name, instance, attribute, nameInstance;
	Atom		a;
	SymbolPtr	paramName;
	
	// entire namespace observation
	if (obj->address == kTTSymEmpty) {
		
		// look the namelist to know which data exist
		for (long i=0; i<argc; i++) {
			
			paramName = atom_getsym(argv+i);
			
			// try to bind on the patherName
			// (in case the jcom.ui is embedded in the jmod. patcher)
			if (obj->patcherType == TT("jmod"))
				if (!JamomaDirectory->getTTNodeForOSC(obj->patcherName, &patcherNode))
					if (anObject = patcherNode->getObject())
						if (anObject->getName() == TT("Container")) {
							
							// DEBUG
							object_post((ObjectPtr)obj, "address : %s", obj->patcherName->getCString());
							
							atom_setsym(&a, gensym((char*)obj->patcherName->getCString()));
							object_attr_setvalueof(obj, gensym("address"), 1, &a);
							
							return;
						}

			// else if a name is equal to the patcherClass 
			// and different of the patcherName
			splitOSCAddress(TT(paramName->s_name), &parent, &name, &instance, &attribute);
			mergeOSCAddress(&nameInstance, NO_PARENT, name, instance, NO_ATTRIBUTE);
			if (name == obj->patcherClass && nameInstance != obj->patcherName) {
				
				// DEBUG
				object_post((ObjectPtr)obj, "address : %s", paramName->s_name);
				
				atom_setsym(&a, paramName);
				object_attr_setvalueof(obj, gensym("address"), 1, &a);
				return;
			}
		}
	}
}

void ui_modelExplorer_callback(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	TTObjectPtr anObject;
	TTBoolean	gain = false;
	TTBoolean	mix = false;
	TTBoolean	bypass = false;
	TTBoolean	freeze = false;
	TTBoolean	preview = false;
	TTBoolean	mute = false;
	TTBoolean	panel = false;
	TTBoolean	internals = false;
	TTBoolean	meters = false;
	TTBoolean	preset = false;			// is there a /preset node in the model ?
	TTBoolean	help = false;			// is there a help patch for the model ?
	TTBoolean	ref = false;			// is there a ref page for the model ?
										// note : we don't look for some other datas because 
										// they exist for any model (/view/refresh, /autodoc, ...)
	TTBoolean	change = false;
	SymbolPtr	paramName;
	
	// model namespace observation
	if (obj->address != kTTSymEmpty) {
		
		// look the namelist to know which data exist
		for (long i=0; i<argc; i++) {
			
			paramName = atom_getsym(argv+i);
			
			if (paramName == gensym("/out/gain"))
				gain = true;
			else if (paramName == gensym("/out/mix"))
				mix = true;
			else if (paramName == gensym("/in/bypass"))
				bypass = true;
			else if (paramName == gensym("/out/freeze"))
				freeze = true;
			else if (paramName == gensym("/out/preview"))
				preview = true;
			else if (paramName == gensym("/out/mute"))
				mute = true;
			else if (paramName == gensym("/model/panel"))			// TODO : create sender (a viewer is useless)
				panel = true;
			else if (paramName == gensym("/model/internals"))		// TODO : create sender (a viewer is useless)
				internals = true;
			else if (paramName == gensym("/audio/meters/freeze"))
				meters = true;
			else if (paramName == gensym("/preset/store"))			// the internal TTExplorer looks for Datas (not for node like /preset)
				preset = true;
			else if (paramName == gensym("/model/help"))			// TODO : create sender (a viewer is useless)
				help = true;
			else if (paramName == gensym("/model/reference"))		// TODO : create sender (a viewer is useless)
				ref = true;
		}
		
		// if a data appears or disappears : create or remove the viewer
		
		// gain
		if (gain != obj->has_gain) {
			obj->has_gain = gain;
			if (gain) 
				ui_viewer_create(obj, &anObject, gensym("return_gain"), TT("out.*/gain"));
			else {
				ui_viewer_destroy(obj, TT("out.*/gain"));
				obj->hash_viewers->remove(TT("out.*/gain"));
			}
		}
		
		// mix
		if (mix != obj->has_mix) {
			obj->has_mix = mix;
			if (mix) 
				ui_viewer_create(obj, &anObject, gensym("return_mix"), TT("out.*/mix"));
			else {
				ui_viewer_destroy(obj, TT("out.*/mix"));
				obj->hash_viewers->remove(TT("out.*/mix"));
			}
			
			change = true;
		}
		
		// bypass
		if (bypass != obj->has_bypass) {
			obj->has_bypass = bypass;
			if (bypass) 
				ui_viewer_create(obj, &anObject, gensym("return_bypass"), TT("in.*/bypass"));
			else {
				ui_viewer_destroy(obj, TT("in.*/bypass"));
				obj->hash_viewers->remove(TT("in.*/bypass"));
			}
			
			change = true;
		}
		
		// freeze
		if (freeze != obj->has_freeze) {
			obj->has_freeze = freeze;
			if (freeze) 
				ui_viewer_create(obj, &anObject, gensym("return_freeze"), TT("out.*/freeze"));
			else {
				ui_viewer_destroy(obj, TT("out.*/freeze"));
				obj->hash_viewers->remove(TT("out.*/freeze"));
			}
			
			change = true;
		}
		
		// preview
		if (preview != obj->has_preview) {
			obj->has_preview = preview;
			if (preview) 
				ui_viewer_create(obj, &anObject, gensym("return_preview"), TT("out.*/preview"));
			else {
				ui_viewer_destroy(obj, TT("out.*/preview"));
				obj->hash_viewers->remove(TT("out.*/preview"));
			}
			
			change = true;
		}
		
		// mute
		if (mute != obj->has_mute) {
			obj->has_mute = mute;
			if (mute) 
				ui_viewer_create(obj, &anObject, gensym("return_mute"), TT("out.*/mute"));
			else {
				ui_viewer_destroy(obj, TT("out.*/mute"));
				obj->hash_viewers->remove(TT("out.*/mute"));
			}
			
			change = true;
		}
		
		// panel
		if (panel != obj->has_panel) {
			obj->has_panel = panel;
			if (panel) 
				ui_viewer_create(obj, &anObject, NULL, TT("model/panel"));
			else {
				ui_viewer_destroy(obj, TT("model/panel"));
				obj->hash_viewers->remove(TT("model/panel"));
			}
			
			change = true;
		}
		
		// internals
		if (internals != obj->has_internals) {
			obj->has_internals = internals;
			if (internals) 
				ui_viewer_create(obj, &anObject, NULL, TT("model/internals"));
			else {
				ui_viewer_destroy(obj, TT("model/internals"));
				obj->hash_viewers->remove(TT("model/internals"));
			}
			
			change = true;
		}
		
		// preset
		if (preset != obj->has_preset) {
			obj->has_preset = preset;
			if (preset) {
				ui_viewer_create(obj, &anObject, NULL, TT("preset/write"));
				ui_viewer_create(obj, &anObject, NULL, TT("preset/read"));
				ui_viewer_create(obj, &anObject, NULL, TT("preset/recall"));
				ui_viewer_create(obj, &anObject, NULL, TT("preset/store/current"));
				ui_viewer_create(obj, &anObject, NULL, TT("preset/store/next"));
				ui_viewer_create(obj, &anObject, gensym("return_preset_names"), TT("preset/names"));
			}
			else {
				ui_viewer_destroy(obj, TT("write"));
				obj->hash_viewers->remove(TT("write"));
				ui_viewer_destroy(obj, TT("read"));
				obj->hash_viewers->remove(TT("read"));
				ui_viewer_destroy(obj, TT("recall"));
				obj->hash_viewers->remove(TT("recall"));
				ui_viewer_destroy(obj, TT("store/current"));
				obj->hash_viewers->remove(TT("store/current"));
				ui_viewer_destroy(obj, TT("store/next"));
				obj->hash_viewers->remove(TT("store/next"));
				ui_viewer_destroy(obj, TT("names"));
				obj->hash_viewers->remove(TT("names"));
			}
			
			change = true;
		}
		
		// help
		if (help != obj->has_help) {
			obj->has_help = help;
			if (help) 
				ui_viewer_create(obj, &anObject, NULL, TT("model/help"));
			else {
				ui_viewer_destroy(obj, TT("model/help"));
				obj->hash_viewers->remove(TT("model/help"));
			}
			
			change = true;
		}
		
		// ref
		if (ref != obj->has_ref) {
			obj->has_ref = ref;
			if (ref) 
				ui_viewer_create(obj, &anObject, NULL, TT("model/reference"));
			else {
				ui_viewer_destroy(obj, TT("model/reference"));
				obj->hash_viewers->remove(TT("model/reference"));
			}
			
			change = true;
		}
		
		if (change)
			jbox_redraw(&obj->box);
		
	}
}
	
void ui_modelParamExplorer_callback(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	t_symobject	*item = NULL;
	
	// model's message namespace observation
	if (obj->address != kTTSymEmpty) {
		
		item = (t_symobject *)symobject_new(gensym("-"));
		linklist_append(obj->refmenu_items, item);
		item = (t_symobject *)symobject_new(gensym("Parameters"));
		linklist_append(obj->refmenu_items, item);
		item->flags = 1;	// mark to disable this item (we use it as a label)
		
		// fill item list
		for (long i=0; i<argc; i++) {
			item = (t_symobject *)symobject_new(atom_getsym(argv+i));
			linklist_append(obj->refmenu_items, item);
		}
	}
}

void ui_modelMessExplorer_callback(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	t_symobject	*item = NULL;
	
	// model's message namespace observation
	if (obj->address != kTTSymEmpty) {
		
		item = (t_symobject *)symobject_new(gensym("-"));
		linklist_append(obj->refmenu_items, item);
		item = (t_symobject *)symobject_new(gensym("Messages"));
		linklist_append(obj->refmenu_items, item);
		item->flags = 1;	// mark to disable this item (we use it as a label)
		
		// fill item list
		for (long i=0; i<argc; i++) {
			item = (t_symobject *)symobject_new(atom_getsym(argv+i));
			linklist_append(obj->refmenu_items, item);
		}
	}
}

void ui_modelRetExplorer_callback(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	t_symobject	*item = NULL;
	
	// model's message namespace observation
	if (obj->address != kTTSymEmpty) {
		
		item = (t_symobject *)symobject_new(gensym("-"));
		linklist_append(obj->refmenu_items, item);
		item = (t_symobject *)symobject_new(gensym("Returns"));
		linklist_append(obj->refmenu_items, item);
		item->flags = 1;	// mark to disable this item (we use it as a label)
		
		// fill item list
		for (long i=0; i<argc; i++) {
			item = (t_symobject *)symobject_new(atom_getsym(argv+i));
			linklist_append(obj->refmenu_items, item);
		}
	}
}

void ui_return_metersdefeated(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_metersdefeated = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_mute(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_muted = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_bypass(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_bypassed = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_mix(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->mix = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_gain(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->gain = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_freeze(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_frozen = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_preview(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_previewing = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_view_size(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	; // do nothing ?
}

void ui_return_view_refresh(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	long result = 0;
	
	// TODO : refresh all jcom.view of the jview. patch
	// 1. Get the TTContainer object of the jview patch
	// 2. use his send message : /*.*:refresh
	
	// refresh all widgets
	// gain
	if (obj->has_gain)
		ui_viewer_refresh(obj, TT("gain"));
	
	// mix
	if (obj->has_mix)
		ui_viewer_refresh(obj, TT("mix"));
	
	// bypass
	if (obj->has_bypass)
		ui_viewer_refresh(obj, TT("bypass"));
	
	// freeze
	if (obj->has_freeze)
		ui_viewer_refresh(obj, TT("freeze"));
	
	// preview
	if (obj->has_preview)
		ui_viewer_refresh(obj, TT("preview"));
	
	// mute
	if (obj->has_mute) 
		ui_viewer_refresh(obj, TT("mute"));
	
}

void ui_return_view_freeze(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	long result = 0;
	
	if (argc == 1)
		object_attr_setvalueof(obj, gensym("ui_is_frozen"), argc, argv);
	
	// TODO : Freeze all jcom.view of the jview. patch
	// 1. Get the TTContainer object of the jview patch
	// 2. use his send message : /*.*:freeze 0/1
	
	// freeze all widgets
	// gain
	if (obj->has_gain)
		ui_viewer_freeze(obj, TT("gain"), obj->ui_freeze);
	
	// mix
	if (obj->has_mix)
		ui_viewer_freeze(obj, TT("mix"), obj->ui_freeze);
	
	// bypass
	if (obj->has_bypass)
		ui_viewer_freeze(obj, TT("bypass"), obj->ui_freeze);
		
	// freeze
	if (obj->has_freeze)
		ui_viewer_freeze(obj, TT("freeze"), obj->ui_freeze);
	
	// preview
	if (obj->has_preview)
		ui_viewer_freeze(obj, TT("preview"), obj->ui_freeze);

	// mute
	if (obj->has_mute) 
		ui_viewer_freeze(obj, TT("mute"), obj->ui_freeze);
	
	// if freeze is disabled : refresh
	if (!obj->ui_freeze)
		ui_return_view_refresh(self, _sym_nothing, argc, argv);
}

void ui_return_color_contentBackground(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	// Colors default to "0". If default value is passed, we avoid setting the color, in order to stick to object defaults.
	if (argc>1)
		object_attr_setvalueof(obj, _sym_bgcolor, argc, argv);
}

void ui_return_color_toolbarBackground(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	if (argc>1)
		object_attr_setvalueof(obj, gensym("headercolor"), argc, argv);
}

void ui_return_color_toolbarText(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	if (argc>1)
		object_attr_setvalueof(obj, _sym_textcolor, argc, argv);
}

void ui_return_color_border(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	if (argc>1)
		object_attr_setvalueof(obj, gensym("bordercolor"), argc, argv);
}

void ui_return_view_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	if (argc)
		object_attr_setvalueof(obj, gensym("address"), argc, argv);
}
