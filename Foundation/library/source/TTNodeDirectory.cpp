/*
 * TTNodeDirectory
 * Copyright © 2008, Théo de la Hogue & Tim Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef DISABLE_NODELIB

#include "TTNodeDirectory.h"
#include <algorithm>

TTNodeDirectory::TTNodeDirectory(TTSymbol aName) :
	root(NULL),
	mutex(NULL)
{
	// set the name of the tree
	name = aName;

	// protect lifeCycleObservers from multithreading access
	// why ? because observers could disappear when they know an address is destroyed
	observers.setThreadProtection(true);

	mutex = new TTMutex(true);

	init();
}

TTNodeDirectory::~TTNodeDirectory()
{
	delete root;
}

TTErr TTNodeDirectory::init()
{
	TTBoolean   nodeCreated = NO;
	TTObject    empty;

	// create a new directory
	directory.clear();

	// create a new aliases table
	aliases.clear();

	// don't clear observers !

	// create a root with no object
	return TTNodeCreate(kTTAdrsRoot, empty, this, &this->root, &nodeCreated);
}

TTErr TTNodeDirectory::setName(TTSymbol aName)
{
	name = aName;
	return kTTErrNone;
}

TTSymbol	TTNodeDirectory::getName()
{
	return name;
}

TTNodePtr	TTNodeDirectory::getRoot()
{
	return root;
}

TTHashPtr	TTNodeDirectory::getDirectory()
{
	return &directory;
}

TTErr TTNodeDirectory::getTTNode(const char* anAddress, TTNodePtr* returnedTTNode)
{
	return getTTNode(TTAddress(anAddress), returnedTTNode);
}

TTErr TTNodeDirectory::getTTNode(TTAddress anAddress, TTNodePtr* returnedTTNode)
{
	TTAddress	noAlias;
	TTErr		err;
	TTValue		found;

	// look into the hashtab to check if the address exist in the tree
	err = directory.lookup(anAddress.normalize(), found);

	// if the address exists : return the TTNode
	if (err != kTTErrValueNotFound) {
		*returnedTTNode = TTNodePtr((TTPtr)found[0]);
		return kTTErrNone;
	}

	noAlias = anAddress;
	if (!this->replaceAlias(noAlias))
		return getTTNode(noAlias, returnedTTNode);
	else
		return kTTErrGeneric;
}

TTErr TTNodeDirectory::getAlias(TTAddress anAddress, TTAddress& returnedAlias)
{
	TTValue     v, ak;
	TTAddress	alias;
	TTAddress	aliasAddress;
	TTAddressComparisonFlag	comp;
	TTInt8      d;

	// Retrieve the alias binding on this address
	aliases.getKeys(ak);
	for (int i=0; i < aliases.getKeys(ak); i++) {

		alias = ak[i];
		aliases.lookup(*alias, v);
		aliasAddress = v[1];
		comp = anAddress.compare(aliasAddress, d);

		if (comp == kAddressEqual) {
			returnedAlias = aliasAddress;
			break;
		}
	}

	return kTTErrNone;
}

TTErr TTNodeDirectory::replaceAlias(TTAddress& anAddress)
{
	TTInt8		d;
	TTUInt32    s, i, c;
	TTAddress	alias;
	TTAddress	aliasAddress;
	TTAddress	p1;
	TTAddress	p2;
	TTValue		ak, found;
	TTAddressComparisonFlag	comp;

	// if this address doesn't exist look into aliases
	this->aliases.getKeys(ak);
	s = ak.size();
	if (s == 0)
		return kTTErrGeneric;

	// compare the address to each aliases
	for (i = 0; i < s; i++) {

		alias = ak[i];
		comp = anAddress.compare(alias, d);

		// if the address is an alias : return the TTNode
		if (comp == kAddressEqual) {
			aliases.lookup(alias, found);
			aliasAddress = found[1];

			anAddress = aliasAddress;
			break;
		}

		// the address is under an alias :
		// get the address of the alias and join anAddress (without the alias part)
		if (comp == kAddressLower) {
			aliases.lookup(alias, found);
			aliasAddress = found[1];
			c = found[2];

			anAddress.splitAt(c, p1, p2);
			anAddress = aliasAddress.appendAddress(p2);
			break;
		}
	}

	if (found.empty())
		return kTTErrGeneric;
	else
		return kTTErrNone;
}

TTErr TTNodeDirectory::fillAddressItem(TTAddressItemPtr anAddressItem, TTAddress startAddress)
{
	TTAddressItemPtr    anItem;
	TTNodePtr           aNode;
	TTList              aNodeList;
	TTAddress           anAddress;

	// get the node where to start from
	if (!getTTNode(startAddress, &aNode)) {

		// get all children of the node
		aNode->getChildren(S_WILDCARD, S_WILDCARD, aNodeList);

		// sort the NodeList using object priority order
		aNodeList.sort(&compareNodePriorityThenNameThenInstance);

		// append each name.instance to the sub namespace
		for (aNodeList.begin(); aNodeList.end(); aNodeList.next()) {

			aNode = TTNodePtr((TTPtr)aNodeList.current()[0]);

			// get name.instance
			aNode->getAddress(anAddress, startAddress);

			// if the item doesn't exist yet
			if (anAddressItem->find(anAddress, &anItem) == kTTErrValueNotFound) {

				// append it to the namespace
				anAddressItem->append(anAddress, &anItem);

				// select the item
				anItem->setSelection(YES);
			}

			// fill this item
			fillAddressItem(anItem, startAddress.appendAddress(anAddress));
		}

		return kTTErrNone;
	}

	return kTTErrGeneric;
}

TTErr TTNodeDirectory::TTNodeCreate(TTAddress& anAddress, TTObject& newObject, void *aContext, TTNodePtr *returnedTTNode, TTBoolean *newInstanceCreated)
{
	TTAddress	normalizedAddress, effectiveAddress;
	TTSymbol	newInstance;
	TTBoolean	parent_created;
	TTValue		found;
	TTNodePtr	newTTNode = NULL;
	TTNodePtr	n_found = NULL;
	TTErr		err;
	TTValue		v, c;

	// remove any directory or attribute part
	normalizedAddress = anAddress.normalize();

	// is there a TTNode with this address in the tree ?
	err = directory.lookup(normalizedAddress, found);

	// if it's the first at this address
	if (err == kTTErrValueNotFound) {

		// keep the instance found in the address
		newInstance = normalizedAddress.getInstance();
		*newInstanceCreated = false;
	}
	else {

		// this address already exists
		// get the TTNode at this address
		n_found = TTNodePtr((TTPtr)found[0]);

		// Autogenerate a new instance
		n_found->getParent()->generateInstance(n_found->getName(), newInstance);
		*newInstanceCreated = true;
	}

	// CREATION OF A NEW TTNode
	///////////////////////////

	// 1. Create a new TTNode
	newTTNode = new TTNode(normalizedAddress.getName(), newInstance, newObject, aContext, this);

	// 2. Ensure that the path to the new TTNode exists
	if (normalizedAddress.getParent() != NO_PARENT) {

		// set his parent
		parent_created = false;
		newTTNode->setParent(normalizedAddress.getParent(), &parent_created);

		// add the new TTNode as a children of his parent
		newTTNode->getParent()->setChild(newTTNode);

		// if the new TTNode have a NULL context, set the parent context
		if (!aContext) newTTNode->setContext(newTTNode->getParent()->getContext());
	}
	else
		// the new TTNode is the root : no parent
		;

	// 3. Add the effective address (with the generated instance) to the global hashtab
	newTTNode->getAddress(effectiveAddress);
	directory.append(effectiveAddress, newTTNode);

	// 4. Notify observers that a node have been created AFTER the creation
	this->notifyObservers(effectiveAddress, newTTNode, kAddressCreated);

	// 5. returned the new TTNode
	*returnedTTNode = newTTNode;

	return kTTErrNone;
}

TTErr TTNodeDirectory::TTNodeRemove(TTAddress& anAddress)
{
	TTErr			err;
	TTNodePtr		oldNode, parentNode;
	TTList			childrenList;
	TTValue			v;
	TTObject		obj;
	TTAddress		parentAddress, normalizedAddress;

	// remove any directory or attribute part
	normalizedAddress = anAddress.normalize();

	// can't destroy the root (use the TTNodeDirectory destructor)
	if (normalizedAddress != kTTAdrsRoot) {

		// find the TTNode in the directory
		err = this->getTTNode(normalizedAddress, &oldNode);

		if (!err) {

			// Notify observers that a node will be destroyed BEFORE the destruction
			this->notifyObservers(normalizedAddress, oldNode, kAddressDestroyed);

			// Remove his address
			err = directory.remove(normalizedAddress);

			// Get parent node
			parentNode = oldNode->getParent();

			// Destroy the TTNode
			if (!err)
				delete oldNode;

			// If parent node have no more child and refers to a none valid object : destroy
			parentNode->getChildren(S_WILDCARD, S_WILDCARD, childrenList);
			obj = parentNode->getObject();

			if (childrenList.isEmpty() && !obj.valid()) {
				// find the TTNode in the directory
				parentNode->getAddress(parentAddress);
				TTNodeRemove(parentAddress);
			}
		}
	}
	else
		return kTTErrGeneric;

	return err;
}

TTErr TTNodeDirectory::AliasCreate(TTAddress alias, TTAddress anAddress)
{
	TTNodePtr	aNode;
	TTValue		v;
	TTErr		err;

	if (alias.getType() == kAddressRelative ||
		alias.getAttribute() != NO_ATTRIBUTE ||
		anAddress.getAttribute() != NO_ATTRIBUTE)
		return kTTErrGeneric;

	// find the address in the directory
	err = this->getTTNode(anAddress, &aNode);

	if (!err) {

		// add the alias and store the TTNode and info usefull for replaceAlias method
		v = TTValue(aNode);
		v.append(anAddress);
		v.append(alias.countSeparator());

		err = aliases.append(alias, v);

		if (!err)
			// notify observers that an address has been created
			this->notifyObservers(alias, aNode, kAddressCreated);
	}

	return err;
}

TTErr TTNodeDirectory::AliasRemove(TTAddress alias)
{
	TTNodePtr		aNode;
	TTAddress		anAddress;
	TTErr			err;

	// find the alias in the directory
	err = this->getTTNode(alias, &aNode);

	if (!err) {

		// check if the alias is an effective alias
		aNode->getAddress(anAddress);
		if (alias == anAddress)
			return kTTErrGeneric;

		// remove the alias from the directory
		err = aliases.remove(alias);

		if (!err)
			// notify observers that an address has been removed
			this->notifyObservers(alias, aNode, kAddressDestroyed);
	}

	return err;
}

TTErr TTNodeDirectory::Lookup(TTAddress anAddress, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode)
{
	TTList lk_selection, lk_children;
	TTNodePtr n_r;
	TTErr err;

	// Make sure we are dealing with an absolute address
	if (anAddress.getType() != kAddressAbsolute)
		return kTTErrGeneric;

	// lonely wilcard case : * equals *.*
	if (anAddress.getName() == S_WILDCARD && anAddress.getInstance() == kTTSymEmpty)
		return Lookup(anAddress.appendInstance(S_WILDCARD), returnedTTNodes, firstReturnedTTNode);

	// Is there a wild card anywhere else ?
	if (strrchr(anAddress.c_str(), C_WILDCARD)) {

		// Here is a recursive call to the TTNodeDirectory Lookup to get all TTNodes at upper levels
		err = Lookup(anAddress.getParent(), returnedTTNodes, firstReturnedTTNode);

		// for each returned TTNodes at upper levels
		// select all corresponding "name.instance" TTNodes
		// among the TTNode list.
		if (!returnedTTNodes.isEmpty()) {

			// select all children of all parent nodes
			for (returnedTTNodes.begin(); returnedTTNodes.end(); returnedTTNodes.next()) {

				n_r = TTNodePtr((TTPtr)returnedTTNodes.current()[0]);
				n_r->getChildren(anAddress.getName(), anAddress.getInstance(), lk_children);

				if (!lk_children.isEmpty())
					lk_selection.merge(lk_children);
			}

			// return the selection
			returnedTTNodes.clear();

			if (!lk_selection.isEmpty()) {
				returnedTTNodes.merge(lk_selection);
				*firstReturnedTTNode = TTNodePtr((TTPtr)returnedTTNodes.getHead()[0]);
			}
			else
				err = kTTErrGeneric;
		}

		return err;
	}
	// no wild card : do a lookup in the global hashtab
	else {

		// look into the hashtab
		err = getTTNode(anAddress, &n_r);

		// if the node exists
		if (err == kTTErrNone) {
			returnedTTNodes.append(n_r);
			*firstReturnedTTNode = n_r;
		}

		return err;
	}
}

TTErr	TTNodeDirectory::LookFor(TTListPtr whereToSearch, TTBoolean(*testFunction)(TTNodePtr node, TTPtr args), void *argument, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode, TTUInt8 depthLimit, TTBoolean(*comparisonFunction)(TTValue& v1, TTValue& v2))
{
	TTList lk_children;
	TTNodePtr n_r, n_child, n_first;
	TTBoolean limitReached = false;
	TTUInt8	newLimit = 0;
	TTErr err;

	*firstReturnedTTNode = NULL;

	// is the limit is reached ?
	if (depthLimit > 0) {
		newLimit = depthLimit - 1;
		limitReached = newLimit <= 0;
	}

	// if there are nodes from where to start
	if (!whereToSearch->isEmpty()) {

		// Launch a recursive research below each given nodes
		for (whereToSearch->begin(); whereToSearch->end(); whereToSearch->next()) {

			// get all children of the node
			n_r = TTNodePtr((TTPtr)whereToSearch->current()[0]);
			n_r->getChildren(S_WILDCARD, S_WILDCARD, lk_children);

			// sort children if needed
			if (comparisonFunction)
				lk_children.sort(comparisonFunction);

			// if there are children
			if (!lk_children.isEmpty()) {

				// test each of them and add those which are ok
				n_first = NULL;
				for (lk_children.begin(); lk_children.end(); lk_children.next()) {

					n_child = TTNodePtr((TTPtr)lk_children.current()[0]);

					// test the child and fill the returnedTTNodes
					if (testFunction(n_child, argument)) {
						returnedTTNodes.append(n_child);

						if (!n_first)
							n_first = n_child;
					}
				}

				if (!limitReached)
					err = LookFor(&lk_children, testFunction, argument, returnedTTNodes, firstReturnedTTNode, newLimit, comparisonFunction);
				else
					err = kTTErrNone;

				if(!returnedTTNodes.isEmpty() && !n_first)
					*firstReturnedTTNode = TTNodePtr((TTPtr)returnedTTNodes.getHead()[0]);
				else if (n_first)
					*firstReturnedTTNode = n_first;

				if (err != kTTErrNone)
					return err;
			}
		}
		return kTTErrNone;
	}
	return kTTErrGeneric;
}

TTErr	TTNodeDirectory::IsThere(TTListPtr whereToSearch, TTBoolean(*testFunction)(TTNodePtr node, void*args), void *argument, bool *isThere, TTNodePtr *firstTTNode)
{
	TTList lk_children;
	TTNodePtr n_r, n_child;
	TTErr err, err_look;

	// if there are nodes from where to start
	if (!whereToSearch->isEmpty()) {

		// Launch a recursive research below each given nodes
		for (whereToSearch->begin(); whereToSearch->end(); whereToSearch->next()) {

			// get all children of the node
			n_r = TTNodePtr((TTPtr)whereToSearch->current()[0]);
			err = n_r->getChildren(S_WILDCARD, S_WILDCARD, lk_children);

			// if there are children
			if (err == kTTErrNone) {

				// test each of them and add those which are ok
				for (lk_children.begin(); lk_children.end(); lk_children.next()) {

					n_child = TTNodePtr((TTPtr)lk_children.current()[0]);

					// test the child and fill the returnedTTNodes
					if (testFunction(n_child, argument)) {
						(*isThere) = true;
						(*firstTTNode) = n_child;
						return kTTErrNone;
					}
					else
						(*isThere) = false;
				}

				// continu the research from all children
				err_look = IsThere(&lk_children, testFunction, argument, isThere, firstTTNode);

				if (err_look != kTTErrNone)
					return err_look;

				// if a node is found below, stop the research
				if ((*isThere))
					return kTTErrNone;
			}
			else
				(*isThere) = false;
		}
		return kTTErrNone;
	}
	return kTTErrGeneric;
}

TTErr TTNodeDirectory::addObserverForNotifications(TTAddress anAddress, TTObject& anObserver, TTInt8 maxDepthDifference)
{
	TTErr			err;
	TTValue			lk;
	TTValue			o = anObserver;
	TTListPtr		lk_o;
	TTAddress		adrs;

	// enable observers protection
	mutex->lock();

	// don't look at attribute and directory
	adrs = anAddress.normalize();

	// append maxDepthDifference criteria if it is different from 0
	if (maxDepthDifference >= 0)
		o.append(maxDepthDifference);

	// is the key already exists ?
	err = this->observers.lookup(adrs, lk);

	// create a new observers list for this address
	if (err == kTTErrValueNotFound){
		lk_o = new TTList();
		lk_o->appendUnique(o);

		this->observers.append(adrs, lk_o);
	}
	// add it to the existing list
	else {
		lk_o = TTListPtr((TTPtr)lk[0]);
		lk_o->appendUnique(o);
	}

	// disable observers protection
	mutex->unlock();

	return kTTErrNone;
}

TTErr TTNodeDirectory::removeObserverForNotifications(TTAddress anAddress, TTObject& anObserver)
{
	TTErr			err;
	TTValue			lk, o, v;
	TTListPtr		lk_o;
	TTAddress		adrs;

	// enable observers protection
	mutex->lock();

	// don't look at attribute and directory
	adrs = anAddress.normalize();

	// is the key exists ?
	err = this->observers.lookup(adrs, lk);

	if (err != kTTErrValueNotFound){

		// get the observers list
		lk_o = TTListPtr((TTPtr)lk[0]);

		// is observer exists ?
		err = lk_o->find(&findObserver, anObserver.instance(), v);
		if (!err)
			lk_o->remove(v);

		// was it the last observer ?
		if (lk_o->isEmpty()) {

			// remove the key
			this->observers.remove(adrs);

			// delete the list
			delete lk_o;
		}
	}

	// disable observers protection
	mutex->unlock();

	return err;
}

TTErr TTNodeDirectory::notifyObservers(TTAddress anAddress, TTNodePtr aNode, TTAddressNotificationFlag flag)
{
	TTAddressComparisonFlag comp;
	TTValue				hk, lk, o, f, data;
	TTAddress			key, adrs, noAlias;
	TTListPtr			lk_o;
	TTObject            anObserver;
	TTInt8				depthDifference, maxDepthDifference;
	TTUInt32			i;
	TTBoolean			foundObsv = NO;

	// if there are observers
	if (!this->observers.isEmpty()) {

		// enable observers protection
		mutex->lock();

		this->observers.getKeys(hk);

		// don't look at attribute and address
		adrs = anAddress.normalize();

		// for each key of mObserver tab
		for (i = 0; i < hk.size(); i++) {

			key = hk[i];

			// compare the key
			comp = adrs.compare(key, depthDifference);

			// if the address is upper in the tree : the observer don't need to be notified
			if (comp == kAddressUpper)
				continue;

			// if the address is different : maybe the observer used an alias
			if (comp == kAddressDifferent) {

				// remove the alias part of the key if exists
				noAlias = key;
				if (!this->replaceAlias(noAlias))
					comp = adrs.compare(noAlias, depthDifference);
			}

			// if the address is equal or lower : the observer have to be notified
			if ((comp == kAddressEqual) || (comp == kAddressLower)) {

				// get the Observers list
				if (!this->observers.lookup(key, lk)) {

					lk_o = NULL;
					lk_o = TTListPtr((TTPtr)lk[0]);

					if (!lk_o->isEmpty()) {

						for (lk_o->begin(); lk_o->end(); lk_o->next()) {

							anObserver = lk_o->current()[0];

							// filter on the depth difference if specified
							if (lk_o->current().size() > 1) {
								maxDepthDifference = lk_o->current()[1];

								// we can cast the depth difference because it is always positive in the lower case
								if (depthDifference > maxDepthDifference)
									continue;
							}

							data.append(anAddress);
							data.append(aNode);
							data.append((TTInt8)flag);
							data.append(anObserver);
							anObserver.send("notify", data);
						}

						foundObsv = true;
					}
				}
			}
		}

		// disable observers protection
		mutex->unlock();

		if (foundObsv)
			return kTTErrNone;
		else
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
}

/***********************************************************************************
 *
 *		GLOBAL METHODS
 *
 ************************************************************************************/

TTBoolean testNodeObject(TTNodePtr n, TTPtr args)
{
	TTObject o;

	o = n->getObject();

	return o.instance() == TTObjectBasePtr(args);
}

TTBoolean testNodeObjectType(TTNodePtr n, TTPtr args)
{
	TTObject o;

	o = n->getObject();

	if (o.valid())
		return o.name().rawpointer() == args;
	else
		return NO;
}

TTBoolean testNodeContext(TTNodePtr n, TTPtr args)
{
	TTPtr		c;

	c = n->getContext();

	if (c)
		return c == args;
	else
		return NO;
}

TTBoolean testNodeUsingCallback(TTNodePtr n, TTPtr args)
{
	TTValue			v = TTValue((TTPtr)n);
	TTCallbackPtr	aCallback = (TTCallbackPtr)args;

	aCallback->notify(v,v);

	return v == 1;
}

TTBoolean testNodeUsingFilter(TTNodePtr n, TTPtr args)
{
	TTValuePtr		argsValue = (TTValuePtr)args;
	TTHashPtr		filterBank;
	TTListPtr		filterList;
	TTSymbol		aFilterName;
	TTSymbol		filterMode;
	TTDictionaryBasePtr aFilter;
	TTObject		anObject;
	TTAddress		anAddress;
	TTValue			v;
	TTBoolean		resultFilter, result;
	TTBoolean		firstFilter = YES;
	TTErr			err;

	filterBank = TTHashPtr((TTPtr)(*argsValue)[0]);
	filterList = TTListPtr((TTPtr)(*argsValue)[1]);

	if (!filterList->isEmpty()) {

		// get object
		anObject = n->getObject();

		// get address
		n->getAddress(anAddress, kTTAdrsRoot);

		// for each filter name
		for (filterList->begin(); filterList->end(); filterList->next()) {

			// if no filter all nodes are included in the result
			filterMode = kTTSym_include;

			// get the next filter name from the list
			// and get it from the bank
			aFilter = NULL;
			aFilterName = filterList->current()[0];
			err = filterBank->lookup(aFilterName, v);

			// TEST FILTER : the result is YES if the node have to be in the result
			if (!err) {

				// local declarations for the test
				TTBoolean resultObject = YES;
				TTBoolean resultAttribute = YES;
				TTBoolean resultValue = YES;
				TTBoolean resultPart = YES;
				TTBoolean resultParent = YES;
				TTBoolean resultName = YES;
				TTBoolean resultInstance = YES;

				TTRegex* aRegex;
				TTString s_toParse;
				TTStringIter begin, end;

				// get filter
				aFilter = TTDictionaryBasePtr((TTPtr)v[0]);

				// get filter mode :
				//		- in default exclusion mode, if one field of a filter matches a node, this node is excluded.
				//		- in inclusion mode, if all fields of a filter match a node, this node is included.
				if (!aFilter->lookup(kTTSym_mode, v))
					filterMode = v[0];

				// test object name
				if (!aFilter->lookup(kTTSym_object, v)) {

					TTSymbol objectFilter;
					objectFilter = v[0];

					// a node without object can be selected using the none symbol
					if (!anObject.valid())
						resultObject = objectFilter == kTTSym_none;
					else
						resultObject = objectFilter == anObject.name();
				}

				// test attribute name
				if (!aFilter->lookup(kTTSym_attribute, v)) {

					TTSymbol    attributeFilter;
					TTValue     valueFilter;
					attributeFilter = v[0];

					// a node without object have no attribute
					if (!anObject.valid()) {
						resultAttribute = NO;
						resultValue = NO;
					}
					else {

						err = anObject.get(attributeFilter, v);

						// the existence of the attribute is also a way to filter nodes
						resultAttribute = err == kTTErrNone;

						// if the attribute exists
						if (!err) {

							// test value
							if (!aFilter->lookup(kTTSym_value, valueFilter)) {

								// special case for tag attribute : just check if one element of the value to filter exist in the tag
								if (attributeFilter == kTTSym_tags) {

									for (TTUInt32 i = 0; i < valueFilter.size(); i++) {

										TTSymbol tagFilter = valueFilter[i];

										for (TTUInt32 j = 0; j < v.size(); j++) {

											TTSymbol aTag = v[j];

											resultValue = aTag == tagFilter;

											if (resultValue)
												break;
										}

										if (resultValue)
											break;
									}
								}

								// compare the whole value
								else
									resultValue = valueFilter == v;
							}
						}
					}
				}

				// test any part of address
				if (!aFilter->lookup(kTTSym_part, v)) {

					TTSymbol partFilter;
					partFilter = v[0];
					aRegex = new TTRegex(partFilter.c_str());

					s_toParse = anAddress.c_str();
					begin = s_toParse.begin();
					end = s_toParse.end();

					// test if the regex find something
					if (!aRegex->parse(begin, end))
						resultPart = begin != end;
					else
						resultPart = NO;

					delete aRegex;
				}

				// test address parent part
				if (!aFilter->lookup(kTTSym_parent, v)) {

					TTSymbol parentFilter;
					parentFilter = v[0];
					aRegex = new TTRegex(parentFilter.c_str());

					s_toParse = anAddress.getParent().c_str();
					begin = s_toParse.begin();
					end = s_toParse.end();

					// test if the regex find something
					if (!aRegex->parse(begin, end))
						resultParent = begin != end;
					else
						resultParent = NO;

					delete aRegex;
				}

				// test address name part
				if (!aFilter->lookup(kTTSym_name, v)) {

					TTSymbol nameFilter;
					nameFilter = v[0];
					aRegex = new TTRegex(nameFilter.c_str());

					s_toParse = anAddress.getName().c_str();
					begin = s_toParse.begin();
					end = s_toParse.end();

					// test if the regex find something
					if (!aRegex->parse(begin, end))
						resultName = begin != end;
					else
						resultName = NO;

					delete aRegex;
				}

				// test address instance part
				if (!aFilter->lookup(kTTSym_instance, v)) {

					TTSymbol instanceFilter;
					instanceFilter = v[0];
					aRegex = new TTRegex(instanceFilter.c_str());

					s_toParse = anAddress.getInstance().c_str();
					begin = s_toParse.begin();
					end = s_toParse.end();

					// test if the regex find something
					if (!aRegex->parse(begin, end))
						resultInstance = begin != end;
					else
						resultInstance = NO;

					delete aRegex;
				}

				// process the filter statement
				resultFilter = resultObject && resultAttribute && resultValue && resultPart && resultParent && resultName && resultInstance;
			}

			// the mode of the first filter precises if we start
			// from a full set (E : default result is YES) or
			// from an empty set (ø : default result is NO)
			if (firstFilter) {
				if (filterMode == kTTSym_include)
					result = NO;					// a node isn't into the result by default (and resultFilter have to be YES to keep it)
				else if (filterMode == kTTSym_restrict)
					result = YES;					// a node is into the result by default (and resultFilter have to be YES to keep it)
				else if (filterMode == kTTSym_exclude)
					result = YES;					// a node is into the result by default (and resultFilter have to be NO to keep it)
				else if (filterMode == TTSymbol("hamlet"))
					result = NO;					// a node isn't into the result by default (and resultFilter have to be NO to keep it)

				firstFilter = NO;					// the next filter will not be a first filter anymore...
			}

			// propagate the resultFilter to the
			// final result depending on the filter mode
			if (filterMode == kTTSym_include)
				result = result || resultFilter;	// keep the node if it matches this filter (what ever the first filters)
			else if (filterMode == kTTSym_restrict)
				result = result & resultFilter;		// keep the node if it matches this filter (and matches the first filters)
			else if (filterMode == kTTSym_exclude)
				result = result & !resultFilter;	// keep the node if it doesn't matches this filter (and matches the first filters)
			else if (filterMode == TTSymbol("hamlet"))
				result = result || !resultFilter;	// keep the node if it doesn't match this filter (what ever the first filters)

		}
	}
	// if the filter list is empty return YES
	else
		result = YES;

	return result;
}

TTBoolean compareNodePriorityThenNameThenInstance(TTValue& v1, TTValue& v2)
{
	TTNodePtr	n1, n2;
	TTObject    o1, o2;
	TTValue		v;
	TTValue     name1;
	TTValue     name2;
	TTValue     instance1;
	TTValue     instance2;
	TTInt32		p1 = 0;
	TTInt32		p2 = 0;

	// get priority of v1
	n1 = TTNodePtr((TTPtr)v1[0]);
	if (n1) {

		name1 = TTString(n1->getName().c_str());            // to convert number name
		instance1 = TTString(n1->getInstance().c_str());    // to convert number instance
		o1 = n1->getObject();

		if (o1.valid())
			if (!o1.get(kTTSym_priority, v))
				p1 = v[0];
	}

	// get priority of v2
	n2 = TTNodePtr((TTPtr)v2[0]);
	if (n2) {

		name2 = TTString(n2->getName().c_str());
		instance2 = TTString(n2->getInstance().c_str());
		o2 = n2->getObject();

		if (o2.valid())
			if (!o2.get(kTTSym_priority, v))
				p2 = v[0];
	}

	if (p1 == p2) {

		name1.fromString();
		name2.fromString();

		if (name1.size() != name2.size())
			return YES;

		if (name1[0].type() != name2[0].type())
			return YES;

		if (name1 == name2) {

			instance1.fromString();
			instance2.fromString();

			if (instance1.size() != instance2.size())
				return YES;

			if (instance1[0].type() != instance2[0].type())
				return YES;

			if (instance1 == instance2)
				return v1 < v2;
			else
				return instance1 < instance2;
		}
		else
			return name1 < name2;
	}

	if (p1 == 0) return NO;
	if (p2 == 0) return YES;

	return p1 < p2;
}

void findObserver(const TTValue& value, TTPtr observerToMatch, TTBoolean& found)
{
	TTObject anObserver = value[0];
	found = anObserver.instance() == TTObjectBasePtr(observerToMatch);
}

#endif
