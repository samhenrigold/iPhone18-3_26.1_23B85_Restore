@interface CKDContainerProxy
- (BOOL)beginContentAccess;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isContentDiscarded;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)isMemberOfClass:(Class)class;
- (CKDContainer)container;
- (CKDContainerProxy)initWithAppContainerTuple:(id)tuple entitlements:(id)entitlements options:(id)options distantContainer:(id)container connection:(id)connection;
- (CKDXPCConnection)connection;
- (Class)class;
- (id)CKStatusReportArray;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)beginContentAccess:(id)access;
- (void)dealloc;
- (void)discardContentIfPossible;
- (void)endContentAccess;
- (void)forwardInvocation:(id)invocation;
- (void)handleMemoryPressure:(int64_t)pressure;
- (void)handleMemoryPressure:(int64_t)pressure completionHandler:(id)handler;
- (void)handleMemoryPressureNotification:(id)notification;
- (void)isContentDiscarded:(id)discarded;
@end

@implementation CKDContainerProxy

- (BOOL)beginContentAccess
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (self)
  {
    coalescer = self->_coalescer;
  }

  else
  {
    coalescer = 0;
  }

  v4 = coalescer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_225071CB8;
  v8[3] = &unk_278545678;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_coalesce_(v4, v5, v8);

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (CKDXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (CKDContainer)container
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_225073F70;
  v22 = sub_225073544;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_container);
  v5 = v19[5];
  if (!v5)
  {
    v6 = objc_msgSend_connection(selfCopy, v3, v4);
    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v7 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Creating proxied container", buf, 2u);
      }

      v10 = objc_msgSend_appContainerTuple(selfCopy, v8, v9);
      v13 = objc_msgSend_persona(v10, v11, v12);
      v16 = v6;
      CKPersonaPerformBlock();
    }

    v5 = v19[5];
  }

  v14 = v5;
  _Block_object_dispose(&v18, 8);

  objc_sync_exit(selfCopy);

  return v14;
}

- (Class)class
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_container);
  if (WeakRetained)
  {
    v2 = objc_opt_class();
  }

  objc_sync_exit(selfCopy);
  if (!WeakRetained)
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (void)endContentAccess
{
  if (self)
  {
    coalescer = self->_coalescer;
  }

  else
  {
    coalescer = 0;
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22507448C;
  v3[3] = &unk_278545A00;
  v3[4] = self;
  objc_msgSend_coalesce_(coalescer, a2, v3);
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (self && self->_accessCount)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      accessCount = self->_accessCount;
      *buf = 134217984;
      v10 = accessCount;
      _os_log_error_impl(&dword_22506F000, v4, OS_LOG_TYPE_ERROR, "Deallocating proxy without being discardable (%tu)", buf, 0xCu);
    }
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v5, v6, self);

  v8.receiver = self;
  v8.super_class = CKDContainerProxy;
  [(CKDContainerProxy *)&v8 dealloc];
}

- (CKDContainerProxy)initWithAppContainerTuple:(id)tuple entitlements:(id)entitlements options:(id)options distantContainer:(id)container connection:(id)connection
{
  tupleCopy = tuple;
  entitlementsCopy = entitlements;
  optionsCopy = options;
  containerCopy = container;
  connectionCopy = connection;
  v18 = objc_msgSend_copy(tupleCopy, v16, v17);
  appContainerTuple = self->_appContainerTuple;
  self->_appContainerTuple = v18;

  v22 = objc_msgSend_copy(entitlementsCopy, v20, v21);
  entitlements = self->_entitlements;
  self->_entitlements = v22;

  v26 = objc_msgSend_copy(optionsCopy, v24, v25);
  options = self->_options;
  self->_options = v26;

  objc_storeStrong(&self->_distantContainer, container);
  objc_storeWeak(&self->_connection, connectionCopy);
  v30 = objc_msgSend_testDeviceReferenceProtocol(optionsCopy, v28, v29);
  v32 = objc_msgSend_deviceContextForTestDeviceReference_(CKDLogicalDeviceContext, v31, v30);

  v34 = objc_msgSend_logicalDeviceScopedClientProxyForDeviceContext_(connectionCopy, v33, v32);
  logicalDeviceScopedClientProxy = self->_logicalDeviceScopedClientProxy;
  self->_logicalDeviceScopedClientProxy = v34;

  objc_initWeak(&location, self);
  v38 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v36, v37);
  objc_msgSend_containerProxyInactiveTimeoutWithDefaultValue_(v38, v39, v40, 60.0);
  v42 = v41;

  v43 = objc_alloc(MEMORY[0x277CBC1E8]);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_22518AF48;
  v61[3] = &unk_278547F50;
  objc_copyWeak(&v62, &location);
  v45 = objc_msgSend_initWithActivityDelay_maxActivityDelay_coalescingInterval_processingDelay_notifyBlock_(v43, v44, (v42 * 1000000000.0), 0, 0, 0, v61);
  coalescer = self->_coalescer;
  self->_coalescer = v45;

  v49 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v47, v48);
  v52 = objc_msgSend_memoryInfo(MEMORY[0x277CBC450], v50, v51);
  objc_msgSend_addObserver_selector_name_object_(v49, v53, self, sel_handleMemoryPressureNotification_, *MEMORY[0x277CBBFA8], v52);

  v56 = objc_msgSend_memoryInfo(MEMORY[0x277CBC450], v54, v55);
  self->_memoryPressure = objc_msgSend_memoryPressure(v56, v57, v58) != 0;

  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);

  return self;
}

- (BOOL)isKindOfClass:(Class)class
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_container);
  if (WeakRetained)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  objc_sync_exit(selfCopy);
  if (!WeakRetained)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)isMemberOfClass:(Class)class
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_container);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    isMemberOfClass = objc_msgSend_isMemberOfClass_(WeakRetained, v7, class);
  }

  objc_sync_exit(selfCopy);
  if (v8)
  {
    return isMemberOfClass & 1;
  }

  v10 = objc_opt_class();

  return objc_msgSend_isMemberOfClass_(v10, v11, class);
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_container);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_msgSend_conformsToProtocol_(WeakRetained, v8, protocolCopy);
  }

  objc_sync_exit(selfCopy);
  if (!v9)
  {
    v10 = objc_opt_class();
    v3 = objc_msgSend_conformsToProtocol_(v10, v11, protocolCopy);
  }

  return v3 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  v120 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  objc_msgSend_retainArguments(invocationCopy, v5, v6);
  objc_msgSend_selector(invocationCopy, v7, v8);
  v9 = CKExtendedMethodSignatureForProtocolSelector();
  if (objc_msgSend_numberOfArguments(v9, v10, v11) < 3)
  {
LABEL_5:
    v20 = 0;
  }

  else
  {
    v14 = 2;
    while (1)
    {
      v15 = objc_msgSend__classForObjectAtArgumentIndex_(v9, v12, v14);
      v16 = objc_opt_class();
      if (objc_msgSend_isSubclassOfClass_(v15, v17, v16))
      {
        break;
      }

      if (++v14 >= objc_msgSend_numberOfArguments(v9, v18, v19))
      {
        goto LABEL_5;
      }
    }

    *buf = 0;
    objc_msgSend_getArgument_atIndex_(invocationCopy, v18, buf, v14);
    v23 = objc_msgSend_callbackProxyEndpoint(*buf, v21, v22);
    v26 = objc_msgSend_interface(v23, v24, v25);

    v20 = 1;
  }

  v27 = objc_msgSend_methodSignature(invocationCopy, v12, v13);
  v30 = objc_msgSend_CK_indexesOfBlockArguments(v27, v28, v29);

  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = sub_22518B904;
  v112[3] = &unk_278547FC8;
  v31 = invocationCopy;
  v113 = v31;
  selfCopy = self;
  objc_msgSend_enumerateIndexesUsingBlock_(v30, v32, v112);
  if (objc_msgSend_isSupported(MEMORY[0x277CBC558], v33, v34))
  {
    v37 = objc_msgSend_appContainerTuple(self, v35, v36);
    v40 = objc_msgSend_persona(v37, v38, v39);

    if (v40)
    {
      v43 = objc_msgSend_appContainerTuple(self, v41, v42);
      v46 = objc_msgSend_persona(v43, v44, v45);
      isCurrentPersona = objc_msgSend_isCurrentPersona(v46, v47, v48);

      if ((isCurrentPersona & 1) == 0)
      {
        v52 = objc_msgSend_appContainerTuple(self, v50, v51);
        v55 = objc_msgSend_persona(v52, v53, v54);
        v111 = 0;
        v57 = objc_msgSend_adopt_(v55, v56, &v111);
        v58 = v111;

        if (!v57)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v76 = &selRef_setHasAssetSize_;
          v77 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v99 = v77;
            v102 = objc_msgSend_selector(v31, v100, v101);
            v103 = NSStringFromSelector(v102);
            v106 = objc_msgSend_appContainerTuple(self, v104, v105);
            v109 = objc_msgSend_ckShortDescription(v106, v107, v108);
            *buf = 138412802;
            *&buf[4] = v103;
            v116 = 2112;
            v117 = v109;
            v118 = 2112;
            v119 = v58;
            _os_log_error_impl(&dword_22506F000, v99, OS_LOG_TYPE_ERROR, "Failed to adopt persona for invocation -%@ for container %@: %@", buf, 0x20u);

            v76 = &selRef_setHasAssetSize_;
          }

          v79 = objc_msgSend_errorWithDomain_code_userInfo_error_format_(MEMORY[0x277CBC560], v78, *MEMORY[0x277CBBF50], 5, 0, v58, @"Incorrect persona for container");
          objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(v31, v80, v79, v76[367]);

          goto LABEL_33;
        }
      }
    }
  }

  v59 = objc_msgSend_container(self, v35, v36);
  v40 = v59;
  if (v20)
  {
    v110 = 0;
    v61 = objc_msgSend_checkSessionValidityCacheOnly_error_(v59, v60, 0, &v110);
    v62 = v110;
    v58 = v62;
    if ((v61 & 1) == 0)
    {
      isCloudCoreSessionNoLongerValidError = objc_msgSend_isCloudCoreSessionNoLongerValidError(v62, v63, v64);
      v66 = *MEMORY[0x277CBC878];
      if (isCloudCoreSessionNoLongerValidError)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v66);
        }

        v67 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v81 = v67;
          v84 = objc_msgSend_selector(v31, v82, v83);
          v85 = NSStringFromSelector(v84);
          v88 = objc_msgSend_appContainerTuple(self, v86, v87);
          v91 = objc_msgSend_ckShortDescription(v88, v89, v90);
          *buf = 138412802;
          *&buf[4] = v85;
          v116 = 2112;
          v117 = v91;
          v118 = 2112;
          v119 = v58;
          _os_log_error_impl(&dword_22506F000, v81, OS_LOG_TYPE_ERROR, "Container found invalid for invocation -%@ for container %@: %@", buf, 0x20u);
        }

        objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(v31, v68, v58, &unk_2838E3570);
LABEL_33:

        goto LABEL_27;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v66);
      }

      v69 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v92 = v69;
        v95 = objc_msgSend_appContainerTuple(self, v93, v94);
        v98 = objc_msgSend_ckShortDescription(v95, v96, v97);
        *buf = 138412546;
        *&buf[4] = v98;
        v116 = 2112;
        v117 = v58;
        _os_log_error_impl(&dword_22506F000, v92, OS_LOG_TYPE_ERROR, "Failed to validate CloudCore session for container %@: %@", buf, 0x16u);
      }
    }
  }

  objc_msgSend_setTarget_(v31, v60, v40);
  objc_msgSend_beginContentAccess(self, v70, v71);
  objc_msgSend_invoke(v31, v72, v73);
  objc_msgSend_endContentAccess(self, v74, v75);
LABEL_27:
}

- (id)methodSignatureForSelector:(SEL)selector
{
  MethodDescription = protocol_getMethodDescription(&unk_2838E3570, selector, 1, 1);
  name = MethodDescription.name;
  if (MethodDescription.name)
  {
    name = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x277CBEB08], MethodDescription.types, MethodDescription.types);
  }

  return name;
}

- (void)handleMemoryPressureNotification:(id)notification
{
  v4 = objc_msgSend_memoryInfo(MEMORY[0x277CBC450], a2, notification);
  v7 = objc_msgSend_memoryPressure(v4, v5, v6);

  objc_msgSend_handleMemoryPressure_(self, v8, v7);
}

- (void)handleMemoryPressure:(int64_t)pressure
{
  v11 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    pressureCopy = pressure;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Handling memory pressure event: %zd", buf, 0xCu);
    if (self)
    {
      goto LABEL_5;
    }

LABEL_8:
    coalescer = 0;
    goto LABEL_6;
  }

  if (!self)
  {
    goto LABEL_8;
  }

LABEL_5:
  coalescer = self->_coalescer;
LABEL_6:
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22518BC60;
  v8[3] = &unk_278546110;
  v8[4] = self;
  v8[5] = pressure;
  objc_msgSend_mutate_(coalescer, v6, v8);
}

- (void)handleMemoryPressure:(int64_t)pressure completionHandler:(id)handler
{
  handlerCopy = handler;
  if (pressure == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = objc_msgSend_memoryInfo(MEMORY[0x277CBC450], v6, v7);
    pressure = objc_msgSend_memoryPressure(v8, v9, v10);
  }

  objc_msgSend_handleMemoryPressure_(self, v6, pressure);
  v11 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v11 = handlerCopy;
  }
}

- (void)beginContentAccess:(id)access
{
  accessCopy = access;
  v6 = objc_msgSend_beginContentAccess(self, v4, v5);
  v7 = accessCopy;
  if (accessCopy)
  {
    (*(accessCopy + 2))(accessCopy, v6, 0);
    v7 = accessCopy;
  }
}

- (void)isContentDiscarded:(id)discarded
{
  if (discarded)
  {
    discardedCopy = discarded;
    isContentDiscarded = objc_msgSend_isContentDiscarded(self, v5, v6);
    (*(discarded + 2))(discardedCopy, isContentDiscarded, 0);
  }
}

- (void)discardContentIfPossible
{
  if (self)
  {
    coalescer = self->_coalescer;
  }

  else
  {
    coalescer = 0;
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22518BE9C;
  v3[3] = &unk_278545A00;
  v3[4] = self;
  objc_msgSend_mutate_(coalescer, a2, v3);
}

- (BOOL)isContentDiscarded
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  if (self)
  {
    coalescer = self->_coalescer;
  }

  else
  {
    coalescer = 0;
  }

  v12 = 0;
  v4 = coalescer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22518BF90;
  v8[3] = &unk_278545678;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_mutate_(v4, v5, v8);

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)CKStatusReportArray
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  if (self)
  {
    coalescer = self->_coalescer;
  }

  else
  {
    coalescer = 0;
  }

  v28 = 0;
  v4 = coalescer;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22518C1DC;
  v24[3] = &unk_278546448;
  v24[4] = self;
  v24[5] = &v25;
  objc_msgSend_mutate_(v4, v5, v24);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_container);
  objc_sync_exit(selfCopy);

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = MEMORY[0x277CCACA8];
  v12 = objc_msgSend_appContainerTuple(selfCopy, v10, v11);
  v15 = objc_msgSend_applicationID(v12, v13, v14);
  v17 = objc_msgSend_stringWithFormat_(v9, v16, @"\n %@(accessCount: %tu)", v15, v26[3]);
  objc_msgSend_addObject_(v8, v18, v17);

  if (WeakRetained)
  {
    v21 = objc_msgSend_CKStatusReportArray(WeakRetained, v19, v20);
    objc_msgSend_addObjectsFromArray_(v8, v22, v21);
  }

  _Block_object_dispose(&v25, 8);

  return v8;
}

@end