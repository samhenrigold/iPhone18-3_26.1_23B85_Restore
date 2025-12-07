@interface DTXProxyChannel
- (DTXProxyChannel)initWithChannel:(id)channel remoteProtocol:(id)protocol localProtocol:(id)localProtocol;
- (id)_allowedClassesForArgumentsOfRemoteInterfaceSelector:(SEL)selector methodSignature:(id)signature;
- (id)_allowedClassesForReturnValues;
- (id)_validateDispatch:(id)dispatch;
- (id)remoteObjectProxy;
- (void)_sendInvocationMessage:(id)message;
- (void)cancel;
- (void)setAdditionalAllowedClassesForProtocolMethods:(id)methods;
- (void)setExportedObject:(id)object queue:(id)queue;
@end

@implementation DTXProxyChannel

- (DTXProxyChannel)initWithChannel:(id)channel remoteProtocol:(id)protocol localProtocol:(id)localProtocol
{
  channelCopy = channel;
  protocolCopy = protocol;
  localProtocolCopy = localProtocol;
  v24.receiver = self;
  v24.super_class = DTXProxyChannel;
  v12 = [(DTXProxyChannel *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_channel, channel);
    objc_storeStrong(&v13->_remoteInterface, protocol);
    objc_storeStrong(&v13->_exportedInterface, localProtocol);
    v16 = objc_msgSend_set(MEMORY[0x277CBEB98], v14, v15);
    additionalAllowedClassesForProtocolMethods = v13->_additionalAllowedClassesForProtocolMethods;
    v13->_additionalAllowedClassesForProtocolMethods = v16;

    objc_initWeak(&location, v13);
    channel = v13->_channel;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_247F3F070;
    v21[3] = &unk_278EEE6B8;
    objc_copyWeak(&v22, &location);
    objc_msgSend__setDispatchValidator_(channel, v19, v21);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (id)remoteObjectProxy
{
  v3 = [_DTXProxy alloc];
  v5 = objc_msgSend_initWithChannel_(v3, v4, self);

  return v5;
}

- (void)cancel
{
  channel = self->_channel;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247F3F19C;
  v3[3] = &unk_278EEE5C8;
  v3[4] = self;
  objc_msgSend_sendControlAsync_replyHandler_(channel, a2, kDTXAckBarrierMessage, v3);
}

- (id)_allowedClassesForArgumentsOfRemoteInterfaceSelector:(SEL)selector methodSignature:(id)signature
{
  signatureCopy = signature;
  v8 = objc_msgSend_defaultAllowedSecureCodingClasses(DTXMessage, v6, v7);
  v9 = signatureCopy;
  v10 = objc_opt_new();
  if (objc_msgSend_numberOfArguments(v9, v11, v12))
  {
    v14 = 0;
    do
    {
      v15 = objc_msgSend__classForObjectAtArgumentIndex_(v9, v13, v14);
      if (v15)
      {
        objc_msgSend_addObject_(v10, v16, v15);
      }

      ++v14;
    }

    while (v14 < objc_msgSend_numberOfArguments(v9, v16, v17));
  }

  if (objc_msgSend_count(v10, v18, v19))
  {
    v22 = objc_msgSend_setByAddingObjectsFromSet_(v8, v20, v10);

    v8 = v22;
  }

  v23 = objc_msgSend_additionalAllowedClassesForProtocolMethods(self, v20, v21);
  if (objc_msgSend_count(v23, v24, v25))
  {
    v27 = objc_msgSend_setByAddingObjectsFromSet_(v8, v26, v23);

    v8 = v27;
  }

  return v8;
}

- (id)_allowedClassesForReturnValues
{
  v4 = objc_msgSend_defaultAllowedSecureCodingClasses(DTXMessage, a2, v2);
  v7 = objc_msgSend_additionalAllowedClassesForProtocolMethods(self, v5, v6);
  if (objc_msgSend_count(v7, v8, v9))
  {
    v11 = objc_msgSend_setByAddingObjectsFromSet_(v4, v10, v7);

    v4 = v11;
  }

  return v4;
}

- (id)_validateDispatch:(id)dispatch
{
  dispatchCopy = dispatch;
  atomic_store(1u, &self->_hasProcessedMessage);
  if (!self->_exportedInterface)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v4, @"DTXMissingInterfaceException", @"No exported interface has been specified");
  }

  v7 = objc_msgSend_selector(dispatchCopy, v4, v5);
  MethodTypeEncoding = _protocol_getMethodTypeEncoding();
  if (!MethodTypeEncoding)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = NSStringFromSelector(v7);
    objc_msgSend_raise_format_(v10, v12, @"DTXSelectorNotAllowedException", @"Selector %@ is not part of the exported interface", v11);
  }

  v13 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x277CBEB08], v8, MethodTypeEncoding);
  v16 = objc_msgSend_methodSignature(dispatchCopy, v14, v15);
  v19 = objc_msgSend_numberOfArguments(v16, v17, v18);
  v22 = objc_msgSend_numberOfArguments(v13, v20, v21);

  if (v19 != v22)
  {
    v25 = MEMORY[0x277CBEAD8];
    v26 = NSStringFromSelector(v7);
    objc_msgSend_raise_format_(v25, v27, @"DTXSelectorMismatchException", @"Incorrect number of arguments in incoming message with selector %@", v26);
  }

  v54 = dispatchCopy;
  v28 = objc_msgSend_target(dispatchCopy, v23, v24);
  v29 = objc_opt_respondsToSelector();

  if ((v29 & 1) == 0)
  {
    v32 = MEMORY[0x277CBEAD8];
    v33 = NSStringFromSelector(v7);
    objc_msgSend_raise_format_(v32, v34, @"DTXSelectorUnimplementedException", @"Selector %@ is a valid part of the exported interface, but the exported object does not implement it.", v33);
  }

  if (objc_msgSend_numberOfArguments(v13, v30, v31) >= 3)
  {
    v35 = 2;
    do
    {
      v36 = v13;
      ArgumentTypeAtIndex = objc_msgSend_getArgumentTypeAtIndex_(v36, v37, v35);
      if (*ArgumentTypeAtIndex != 64)
      {
        v41 = ArgumentTypeAtIndex;
        v42 = MEMORY[0x277CBEAD8];
        v43 = NSStringFromSelector(v7);
        objc_msgSend_raise_format_(v42, v44, @"DTXSelectorInvalidArgumentTypeException", @"Invalid argument type %s at index %lu of selector %@", v41, v35, v43);
      }

      ++v35;
    }

    while (v35 < objc_msgSend_numberOfArguments(v13, v39, v40));
  }

  v45 = v13;
  if (*objc_msgSend_methodReturnType(v45, v46, v47) != 64)
  {
    v49 = MEMORY[0x277CBEAD8];
    v50 = NSStringFromSelector(v7);
    objc_msgSend_raise_format_(v49, v51, @"DTXSelectorInvalidReturnTypeException", @"Selector %@ is a part of the exported interface, but return type is not an object.", v50);
  }

  v52 = objc_msgSend__allowedClassesForArgumentsOfRemoteInterfaceSelector_methodSignature_(self, v48, v7, v13);

  return v52;
}

- (void)setExportedObject:(id)object queue:(id)queue
{
  objectCopy = object;
  queueCopy = queue;
  v7 = objectCopy;
  v8 = queueCopy;
  if (objectCopy)
  {
    v9 = objc_msgSend_conformsToProtocol_(objectCopy, objectCopy, self->_exportedInterface);
    v7 = objectCopy;
    if ((v9 & 1) == 0)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], objectCopy, *MEMORY[0x277CBE648], @"Exported object does not conform to the exported interface.");
      v7 = objectCopy;
    }
  }

  objc_msgSend__setDispatchTarget_queue_(self->_channel, v7, v7, v8);
}

- (void)setAdditionalAllowedClassesForProtocolMethods:(id)methods
{
  methodsCopy = methods;
  if (atomic_exchange(&self->_hasProcessedMessage, 1u))
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE648];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[DTXProxyChannel setAdditionalAllowedClassesForProtocolMethods:]");
    objc_msgSend_raise_format_(v6, v9, v7, @"%@ must only be called once, before sending or receiving messages", v8);
  }

  additionalAllowedClassesForProtocolMethods = self->_additionalAllowedClassesForProtocolMethods;
  self->_additionalAllowedClassesForProtocolMethods = methodsCopy;
}

- (void)_sendInvocationMessage:(id)message
{
  atomic_store(1u, &self->_hasProcessedMessage);
  messageCopy = message;
  v17 = objc_opt_new();
  objc_msgSend_setReturnValue_(messageCopy, v5, &v17);
  objc_msgSend_retainArguments(messageCopy, v6, v7);
  v8 = [DTXMessage alloc];
  v10 = objc_msgSend_initWithInvocation_(v8, v9, messageCopy);

  v13 = objc_msgSend_channel(self, v11, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_247F3F880;
  v15[3] = &unk_278EEE6E0;
  v15[4] = self;
  v16 = v17;
  objc_msgSend_sendControlAsync_replyHandler_(v13, v14, v10, v15);
}

@end