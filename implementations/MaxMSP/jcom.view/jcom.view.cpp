/* 
 *	jcom.view
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

// those stuffes are needed for handling patchers without using the pcontrol object
#include "jpatcher_api.h"
typedef struct dll {
	t_object d_ob;
	struct dll *d_next;
	struct dll *d_prev;
	void *d_x1;
} t_dll;

typedef struct outlet {
	struct tinyobject o_ob;
	struct dll *o_dll;
} t_outlet;

// This is used to store extra data
typedef struct extra {
	TTPtr		ui_qelem;		///< to output "qlim'd" data for ui object
	TTNodeAddressPtr address;	// the first arg address
	ObjectPtr	connected;		// our ui object
	long		x;				// our ui object x presentation
	long		y;				// our ui object y presentation
	long		w;				// our ui object width presentation
	long		h;				// our ui object heigth presentation
	ObjectPtr	label;			// label to display selection state
	AtomPtr		color0;			// label color for selection state == 0
	AtomPtr		color1;			// label color for selection state == 1
} t_extra;
#define EXTRA ((t_extra*)x->extra)

#define set_out 0
#define data_out 1
#define select_out 2
#define	dump_out 3

// Definitions
void	WrapTTViewerClass(WrappedClassPtr c);
void	WrappedViewerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void	WrappedViewerClass_free(TTPtr self);
void	WrappedViewerClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	view_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void	view_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	view_return_model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	view_bang(TTPtr self);
void	view_int(TTPtr self, long value);
void	view_float(TTPtr self, double value);
void	view_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	view_attach(TTPtr self);
void 	view_mousemove(TTPtr self, t_object *patcherview, t_pt pt, long modifiers);
void	view_mouseleave(TTPtr self, t_object *patcherview, t_pt pt, long modifiers);
void	view_mousedown(TTPtr self, t_object *patcherview, t_pt pt, long modifiers);

void	view_subscribe(TTPtr self, SymbolPtr address);

void	view_ui_queuefn(TTPtr self);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTViewerClass;
	spec->_new = &WrappedViewerClass_new;
	spec->_free = &WrappedViewerClass_free;
	spec->_any = &WrappedViewerClass_anything;
	
	return wrapTTModularClassAsMaxClass(TT("Viewer"), "jcom.view", NULL, spec);
}

void WrapTTViewerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)view_assist,				"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)view_mousemove,			"mousemove",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)view_mouseleave,			"mouseleave",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)view_mousedown,			"mousedown",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)view_return_value,			"return_value",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)view_return_model_address,	"return_model_address",	A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)view_bang,					"bang",					0L);
	class_addmethod(c->maxClass, (method)view_int,					"int",					A_LONG, 0L);
	class_addmethod(c->maxClass, (method)view_float,				"float",				A_FLOAT, 0L);
	class_addmethod(c->maxClass, (method)view_list,					"list",					A_GIMME, 0L);
}

void WrappedViewerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// read first argument
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	// Prepare extra data
	x->extra = (t_extra*)malloc(sizeof(t_extra));
	EXTRA->connected = NULL;
	EXTRA->label = NULL;
	EXTRA->address = TTADRS(address->s_name);
	
	EXTRA->color0 = (AtomPtr)sysmem_newptr(sizeof(Atom) * 4);
	atom_setfloat(EXTRA->color0, 0);
	atom_setfloat(EXTRA->color0+1, 0.);
	atom_setfloat(EXTRA->color0+2, 0.);
	atom_setfloat(EXTRA->color0+3, 1.);
	
	EXTRA->color1 = (AtomPtr)sysmem_newptr(sizeof(Atom) * 4);
	atom_setfloat(EXTRA->color1, 0.62);
	atom_setfloat(EXTRA->color1+1, 0.);
	atom_setfloat(EXTRA->color1+2, 0.36);
	atom_setfloat(EXTRA->color1+3, 0.70);
	
	jamoma_viewer_create((ObjectPtr)x, &x->wrappedObject);
	
	// Prepare memory to store internal objects
	x->internals = new TTHash();
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)view_subscribe, address, 0, 0);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 3);
	x->outlets[select_out] = outlet_new(x, NULL);					// anything outlet to select ui
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	x->outlets[set_out] = outlet_new(x, NULL);						// anything outlet to output qlim data
	
	// Make qelem object
	EXTRA->ui_qelem = qelem_new(x, (method)view_ui_queuefn);
	
	// handle attribute args
	attr_args_process(x, argc, argv);
}

// Method for Assistance Messages
void view_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1) 						// Inlet
		strcpy(dst, "input");
	else {								// Outlets
		switch(arg) {
			case set_out:
				strcpy(dst, "set: connect to ui object");
				break;
			case data_out:
				strcpy(dst, "value");
				break;
			case select_out:
				strcpy(dst, "select: connect to ui object to manage selection state");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
}

void WrappedViewerClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	free(EXTRA->ui_qelem);
	free(EXTRA);
}

void view_subscribe(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v;
	TTNodeAddressPtr			contextAddress = kTTAdrsEmpty;
	TTObjectPtr					anObject;
	TTNodePtr					patcherNode;
	
	// for relative address
	if (TTADRS(address->s_name)->getType() == kAddressRelative) {
		
		// if the jcom.view is in a model or a view patcher
		jamoma_patcher_get_info((ObjectPtr)x, &x->patcherPtr, &x->patcherContext, &x->patcherClass, &x->patcherName);
		if (x->patcherPtr && x->patcherContext && x->patcherClass && x->patcherName) {
			
			if (x->patcherContext == kTTSym_view) {
				// try to subscribe
				if (!jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, jamoma_parse_dieze((ObjectPtr)x, address), &x->subscriberObject)) {
					// get the context address to make
					// a viewer on the contextAddress/model/address parameter
					x->subscriberObject->getAttributeValue(TT("contextAddress"), v);
					v.get(0, (TTSymbolPtr*)&contextAddress);
				}
			}
			else {
				jamoma_patcher_share_node(jamoma_patcher_get((ObjectPtr)x), &patcherNode);
				if (patcherNode)
					patcherNode->getAddress(&contextAddress);
				
				// While the context node is not registered : try to build (to --Is this not dangerous ?)
				else {
					// The following must be deferred because we have to interrogate our box,
					// and our box is not yet valid until we have finished instantiating the object.
					// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
					defer_low((ObjectPtr)x, (method)view_subscribe, address, 0, 0);
					return;
				}
			}
			
			// bind on the /model/address parameter (in view patch) or return (in model patch)
			if (contextAddress != kTTSymEmpty) {
				makeInternals_viewer(x, contextAddress, TT("/model/address"), gensym("return_model_address"), &anObject);
				anObject->sendMessage(kTTSym_Refresh);
			}
			
			// attach the jcom.view to connected ui object
			view_attach(self);
		}
		
		return;
	}
	
	// Else use the address to bind directly on a data
	// and don't register the view into the namespace
	
	// set address attribute of the wrapped Viewer object
	x->wrappedObject->setAttributeValue(kTTSym_address, TT(address->s_name));
}

void view_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTBoolean	copyMsg = false;
	TTUInt8		i;
	
	// avoid blank before data
	if (msg == _sym_nothing)
		outlet_atoms(x->outlets[data_out], argc, argv);
	else
		outlet_anything(x->outlets[data_out], msg, argc, argv);
	
	// Copy msg and atom in order to avoid losing data
	if (msg != _sym_nothing && msg != _sym_int && msg != _sym_float && msg != _sym_symbol && msg != _sym_list)
		copyMsg = true;
	
	x->msg = msg;
	x->argc = argc;
	if (copyMsg)
		x->argc++;
	
	x->argv = NULL;
	x->argv = (AtomPtr)sysmem_newptr(sizeof(t_atom) * x->argc);
	
	if (x->argc) {
		if (copyMsg) {
			atom_setsym(&x->argv[0], msg);
			for (i=1; i<x->argc; i++)
				x->argv[i] = argv[i-1];
		}
		else
			for (i=0; i<x->argc; i++)
				x->argv[i] = argv[i];
	}
	
	qelem_set(EXTRA->ui_qelem);
}

void view_ui_queuefn(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	outlet_anything(x->outlets[set_out], _sym_set, x->argc, x->argv);
}

void view_bang(TTPtr self)
{
	view_list(self, _sym_bang, 0, NULL);
}

void view_int(TTPtr self, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	view_list(self, _sym_int, 1, &a);
}

void view_float(TTPtr self, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	view_list(self, _sym_float, 1, &a);
}

void view_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	
	jamoma_ttvalue_from_Atom(v, msg, argc, argv);
	
	x->wrappedObject->sendMessage(kTTSym_Send, v);
}

void WrappedViewerClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	
	jamoma_ttvalue_from_Atom(v, msg, argc, argv);
	
	x->wrappedObject->sendMessage(kTTSym_Send, v);
}

void view_return_model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTNodeAddressPtr address;
	TTSymbolPtr service;
	TTList		returnedNodes;
	TTNodePtr	firstNode;
	TTObjectPtr anObject;
	TTValue		v;
	TTErr		err;
	
	if (argc && argv) {
		
		// set address attribute of the wrapped Viewer object
		address = TTADRS(atom_getsym(argv)->s_name)->appendAddress(EXTRA->address);
		x->wrappedObject->setAttributeValue(kTTSym_address, address);
		
		// for Data object, if service is parameter or return : refresh !
		// note : this would only work if the address already exists
		err = getDirectoryFrom(address)->Lookup(address, returnedNodes, &firstNode);
		
		if (!err) {
			if (anObject = firstNode->getObject()) {
				if (anObject->getName() == TT("Data")) {
					anObject->getAttributeValue(kTTSym_service, v);
					v.get(0, &service);
					
					if (service == kTTSym_parameter || service == kTTSym_return)
						x->wrappedObject->sendMessage(kTTSym_Refresh);
				}
				else
					x->wrappedObject->sendMessage(kTTSym_Refresh);
			}
		}
	}
}

void view_attach(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	t_outlet*	myoutlet = NULL;
	t_dll*		connecteds = NULL;
	ObjectPtr	o, box;
	AtomCount	ac;
	AtomPtr		av;
	
	// get the first object connected to the select_out
	object_obex_lookup(x, _sym_pound_B, &box);
	
	myoutlet = (t_outlet*)jbox_getoutlet((t_jbox*)box, select_out);
	if (myoutlet)
		connecteds = (t_dll*)myoutlet->o_dll;
	
	if (connecteds) {
		o = (t_object*)connecteds->d_x1;

		if (EXTRA->connected = o) {
			
			ac = 0;
			av = NULL;
			object_attr_getvalueof(EXTRA->connected, _sym_presentation_rect , &ac, &av);
			if (ac && av) {
				EXTRA->x = atom_getlong(av+0);
				EXTRA->y = atom_getlong(av+1);
				EXTRA->w = atom_getlong(av+2);
				EXTRA->h = atom_getlong(av+3);
			}
		}
	}
}

// When the mouse is moving on the jcom.ui (not our view !)
void view_mousemove(TTPtr self, t_object *patcherview, t_pt pt, long modifiers)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	TTBoolean	selected;
	ObjectPtr	patcher;
	AtomCount	ac;
	AtomPtr		av;
	Atom		a;
	
	if (EXTRA->connected) {
		
		// if the control key is pressed
		if (modifiers & eShiftKey) {
			
			// hide gui
			atom_setlong(&a, 1);
			object_attr_setvalueof(EXTRA->connected, _sym_hidden, 1, &a);
			
			// create a comment object
			if(!EXTRA->label) {
				patcher = NULL;
				ac = 0;
				av = NULL;
				object_obex_lookup(x, gensym("#P"), &patcher);
				EXTRA->label = newobject_sprintf(patcher, "@maxclass comment @presentation 1");
				object_attr_getvalueof(EXTRA->connected, _sym_presentation_rect , &ac, &av);
				if (ac && av && EXTRA->label) {
					object_method_long(EXTRA->label, _sym_fontsize, 10, &a);
					object_method_sym(EXTRA->label, _sym_set, gensym((char*)EXTRA->address->getCString()), &a);
					object_method_typed(EXTRA->label, _sym_presentation_rect, ac, av, &a);
				}
			}
			
			// display selected attribute by changing background color if selected
			x->wrappedObject->getAttributeValue(TT("selected"), v);
			v.get(0, selected);
			
			if (EXTRA->label)
				if (selected)
					object_attr_setvalueof(EXTRA->label, _sym_bgcolor, 4, (AtomPtr)EXTRA->color1);
				else
					object_attr_setvalueof(EXTRA->label, _sym_bgcolor, 4, (AtomPtr)EXTRA->color0);
		}
		// else set default color
		// TODO : do this only one time !!!
		else {
			
			// show gui
			atom_setlong(&a, 0);
			object_attr_setvalueof(EXTRA->connected, _sym_hidden, 1, &a);
			
			// delete label
			if (EXTRA->label) {
				object_free(EXTRA->label);
				EXTRA->label = NULL;
			}
		}
	}
}

// When the mouse is leaving on the jcom.ui (not our view !)
void view_mouseleave(TTPtr self, t_object *patcherview, t_pt pt, long modifiers)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	Atom		a;
	
	// if mouse leaves jcom.ui maybe it is on our object
	if (pt.x > EXTRA->x && pt.x < EXTRA->x+EXTRA->w && pt.y > EXTRA->y && pt.y < EXTRA->y+EXTRA->h)
		return;
	
	// else the mouse leaves outside the jcom.ui
	else {
		
		// show gui
		atom_setlong(&a, 0);
		object_attr_setvalueof(EXTRA->connected, _sym_hidden, 1, &a);
		
		// delete label
		if (EXTRA->label) {
			object_free(EXTRA->label);
			EXTRA->label = NULL;
		}
	}
}

void view_mousedown(TTPtr self, t_object *patcherview, t_pt pt, long modifiers)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	TTBoolean	selected;
	
	// if the control key is pressed
	if (modifiers & eShiftKey) {
		
		// if mouse leave jcom.ui maybe it is on our object
		if (pt.x > EXTRA->x && pt.x < EXTRA->x+EXTRA->w && pt.y > EXTRA->y && pt.y < EXTRA->y+EXTRA->h) {
			
			x->wrappedObject->getAttributeValue(TT("selected"), v);
			v.get(0, selected);
			
			// reverse selected attribute and change color
			if (EXTRA->label)
				if (selected) {
					x->wrappedObject->setAttributeValue(TT("selected"), NO);
					object_attr_setvalueof(EXTRA->label, _sym_bgcolor, 4, (AtomPtr)EXTRA->color0);
				}
				else {
					x->wrappedObject->setAttributeValue(TT("selected"), YES);
					object_attr_setvalueof(EXTRA->label, _sym_bgcolor, 4, (AtomPtr)EXTRA->color1);
				}
		}
	}
}