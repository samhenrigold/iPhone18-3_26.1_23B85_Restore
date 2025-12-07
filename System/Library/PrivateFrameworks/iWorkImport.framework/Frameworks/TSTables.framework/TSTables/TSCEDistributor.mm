@interface TSCEDistributor
- (BOOL)hasReceiver:(id)receiver;
- (BOOL)hasReceivers;
- (Protocol)protocol;
- (TSCEDistributor)init;
- (void)addReceiver:(id)receiver;
- (void)addReceiverIfMissing:(id)missing;
- (void)distributeBlock:(id)block;
- (void)dropAllTargets;
- (void)removeReceiver:(id)receiver;
- (void)suspendDuringBlock:(id)block;
@end

@implementation TSCEDistributor

- (TSCEDistributor)init
{
  v6.receiver = self;
  v6.super_class = TSCEDistributor;
  v2 = [(TSCEDistributor *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    receivers = v2->_receivers;
    v2->_receivers = v3;

    v2->_receiversLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v2;
}

- (Protocol)protocol
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDistributor protocol]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDistributor.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 37, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSCEDistributor protocol]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (void)addReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (receiverCopy)
  {
    v44 = receiverCopy;
    v11 = objc_msgSend_protocol(self, v6, v7, v8);
    if (v11)
    {
      v12 = objc_msgSend_conformsToProtocol_(v44, v9, v11, v10);
      if (objc_msgSend_conformsToProtocol_(v44, v13, v11, v14))
      {
        p_receiversLock = &self->_receiversLock;
        os_unfair_lock_lock(&self->_receiversLock);
        if (!v12)
        {
          goto LABEL_10;
        }

LABEL_8:
        if ((objc_msgSend_containsObject_(self->_receivers, v18, v44, v19) & 1) == 0)
        {
          objc_msgSend_addObject_(self->_receivers, v42, v44, v43);
        }

        goto LABEL_10;
      }

      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCEDistributor addReceiver:]", v16);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDistributor.m", v32);
      v34 = NSStringFromSelector(a2);
      v35 = objc_opt_class();
      v36 = NSStringFromProtocol(v11);
      v37 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v38, v30, v33, 53, 0, "Error %@: Target %@ does not conform to protocol %@ required for TSCEDistributor class %@.", v34, v35, v36, v37);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v39, v40, v41);
      p_receiversLock = &self->_receiversLock;
      os_unfair_lock_lock(&self->_receiversLock);
      if (v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCEDistributor addReceiver:]", v10);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDistributor.m", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 49, 0, "protocol MUST be defined before addReceiver can be used");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
      p_receiversLock = &self->_receiversLock;
      os_unfair_lock_lock(&self->_receiversLock);
    }

LABEL_10:
    os_unfair_lock_unlock(p_receiversLock);

    receiverCopy = v44;
  }
}

- (void)addReceiverIfMissing:(id)missing
{
  missingCopy = missing;
  if (missingCopy)
  {
    v8 = missingCopy;
    hasReceiver = objc_msgSend_hasReceiver_(self, missingCopy, missingCopy, v5);
    missingCopy = v8;
    if ((hasReceiver & 1) == 0)
    {
      objc_msgSend_addReceiver_(self, v8, v8, v7);
      missingCopy = v8;
    }
  }
}

- (void)removeReceiver:(id)receiver
{
  if (receiver)
  {
    receiverCopy = receiver;
    os_unfair_lock_lock(&self->_receiversLock);
    objc_msgSend_removeObjectIdenticalTo_(self->_receivers, v5, receiverCopy, v6);

    os_unfair_lock_unlock(&self->_receiversLock);
  }
}

- (BOOL)hasReceivers
{
  os_unfair_lock_lock(&self->_receiversLock);
  v6 = objc_msgSend_count(self->_receivers, v3, v4, v5) != 0;
  os_unfair_lock_unlock(&self->_receiversLock);
  return v6;
}

- (BOOL)hasReceiver:(id)receiver
{
  receiverCopy = receiver;
  os_unfair_lock_lock(&self->_receiversLock);
  if (receiverCopy)
  {
    v7 = objc_msgSend_indexOfObjectIdenticalTo_(self->_receivers, v5, receiverCopy, v6) != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_receiversLock);

  return v7;
}

- (void)dropAllTargets
{
  os_unfair_lock_lock(&self->_receiversLock);
  objc_msgSend_removeAllObjects(self->_receivers, v3, v4, v5);

  os_unfair_lock_unlock(&self->_receiversLock);
}

- (void)distributeBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  os_unfair_lock_lock(&self->_receiversLock);
  if (objc_msgSend_count(self->_receivers, v5, v6, v7))
  {
    v11 = objc_msgSend_copy(self->_receivers, v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock(&self->_receiversLock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v11;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v19, v23, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v12);
        }

        blockCopy[2](blockCopy, *(*(&v19 + 1) + 8 * v17++));
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, &v19, v23, 16);
    }

    while (v15);
  }
}

- (void)suspendDuringBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  os_unfair_lock_lock(&self->_receiversLock);
  receivers = self->_receivers;
  v6 = receivers;
  v7 = objc_opt_new();
  v8 = self->_receivers;
  self->_receivers = v7;

  os_unfair_lock_unlock(&self->_receiversLock);
  blockCopy[2](blockCopy);
  os_unfair_lock_lock(&self->_receiversLock);
  v9 = self->_receivers;
  if (objc_msgSend_count(v9, v10, v11, v12))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCEDistributor suspendDuringBlock:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDistributor.m", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 127, 0, "someone added a receiver when we were not expecting it");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  objc_storeStrong(&self->_receivers, receivers);
  os_unfair_lock_unlock(&self->_receiversLock);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = v9;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v32, v36, 16);
  if (v26)
  {
    v29 = v26;
    v30 = *v33;
    do
    {
      v31 = 0;
      do
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(v24);
        }

        objc_msgSend_addReceiverIfMissing_(self, v27, *(*(&v32 + 1) + 8 * v31++), v28, v32);
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v32, v36, 16);
    }

    while (v29);
  }
}

@end