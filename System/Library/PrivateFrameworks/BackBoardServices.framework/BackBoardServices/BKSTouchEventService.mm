@interface BKSTouchEventService
+ (BKSTouchEventService)sharedInstance;
- (BKSTouchEventService)init;
- (CATransform3D)transformForDisplayUUID:(SEL)d layerID:(id)iD contextID:(unint64_t)contextID;
- (id)addAuthenticationSpecifications:(id)specifications forReason:(id)reason;
- (id)excludeEventsFromSenders:(id)senders fromHitTestingToContextIDs:(id)ds;
- (id)registerSceneHostSettings:(id)settings forCAContextID:(unsigned int)d;
- (id)setContextIDs:(id)ds forHitTestContextCategory:(int64_t)category;
- (void)_connectToService;
- (void)_repostAllRegistrations;
- (void)_updateRegistration:(uint64_t)registration;
- (void)_updateServerHitTestCategoryContextIDs;
- (void)_updateServerHitTestFilterParameters;
- (void)addTouchAuthenticationSpecifications:(id)specifications forReason:(id)reason;
@end

@implementation BKSTouchEventService

+ (BKSTouchEventService)sharedInstance
{
  if (sharedInstance_onceToken_13602 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_13602, &__block_literal_global_117);
  }

  v3 = sharedInstance_service_13603;

  return v3;
}

- (void)_connectToService
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_connectionLock);
  if (self->_connection)
  {

    os_unfair_lock_unlock(&self->_connectionLock);
  }

  else
  {
    v3 = +[BKSHIDServiceConnectionFactory sharedInstance];
    v4 = [v3 clientConnectionForServiceWithName:?];

    if (v4)
    {
      objc_storeStrong(&self->_connection, v4);
      os_unfair_lock_unlock(&self->_connectionLock);
      [(BSServiceInitiatingConnection *)self->_connection configure:?];
      v5 = BKLogTouchEvents();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_186345000, v5, OS_LOG_TYPE_DEBUG, "activating connection to server", buf, 2u);
      }

      [v4 activate];
      v6 = BKLogTouchEvents();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        remoteTarget = [v4 remoteTarget];
        *buf = 138543362;
        v12 = remoteTarget;
        _os_log_debug_impl(&dword_186345000, v6, OS_LOG_TYPE_DEBUG, "server remote target %{public}@", buf, 0xCu);
      }

      remoteTarget2 = [v4 remoteTarget];

      if (!remoteTarget2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];
      }
    }

    else
    {
      v9 = BKLogTouchEvents();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_186345000, v9, OS_LOG_TYPE_ERROR, "cannot get connection for service", buf, 2u);
      }

      os_unfair_lock_unlock(&self->_connectionLock);
    }
  }
}

- (void)_updateRegistration:(uint64_t)registration
{
  v3 = a2;
  if (registration)
  {
    v14 = v3;
    [registration _connectToService];
    os_unfair_lock_lock((registration + 32));
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    if (*(registration + 24))
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = *(registration + 24);
      *(registration + 24) = v5;

      v7 = *(registration + 24);
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 objectForKey:?];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v9 = *(registration + 24);
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [v9 setObject:? forKey:?];
    }

    [v8 removeObject:?];
    [v8 addObject:?];
    if (v14)
    {
      v11 = v14[3];
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    os_unfair_lock_unlock((registration + 32));
    remoteTarget = [*(registration + 8) remoteTarget];
    [remoteTarget setSceneHostSettings:? forContextID:?];

    v3 = v14;
  }
}

void __41__BKSTouchEventService__connectToService__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLogTouchEvents();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(location[0]) = 0;
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "configured client service", location, 2u);
  }

  v5 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:?];
  [v7 setServer:?];
  [v7 setClient:?];
  [v3 setInterface:?];
  [v3 setInterfaceTarget:?];
  v8 = MEMORY[0x1E698F4D0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 queueWithName:?];

  [v3 setQueue:?];
  objc_initWeak(location, *(a1 + 32));
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __41__BKSTouchEventService__connectToService__block_invoke_189;
  v15 = &unk_1E6F47930;
  objc_copyWeak(&v16, location);
  [v3 setInterruptionHandler:?];
  [v3 setInvalidationHandler:?];
  objc_destroyWeak(&v16);
  objc_destroyWeak(location);
}

void __41__BKSTouchEventService__connectToService__block_invoke_189(uint64_t a1)
{
  v2 = BKLogTouchEvents();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 0;
    _os_log_error_impl(&dword_186345000, v2, OS_LOG_TYPE_ERROR, "service interruption -- attempting to reconnect", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] activate];
    [v4 _repostAllRegistrations];
    [v4 _updateServerHitTestCategoryContextIDs];
  }
}

void __41__BKSTouchEventService__connectToService__block_invoke_191()
{
  v0 = BKLogTouchEvents();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_186345000, v0, OS_LOG_TYPE_ERROR, "backboardd must be going down, ignoring", v1, 2u);
  }
}

- (void)_repostAllRegistrations
{
  os_unfair_lock_lock(&self->_registrationLock);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  registrationLock_registrationsByContextID = self->_registrationLock_registrationsByContextID;
  v10 = v3;
  v5 = v3;
  [(NSMutableDictionary *)registrationLock_registrationsByContextID enumerateKeysAndObjectsUsingBlock:?];
  os_unfair_lock_unlock(&self->_registrationLock);
  remoteTarget = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
  v8 = MEMORY[0x1E69E9820];
  v9 = remoteTarget;
  v7 = remoteTarget;
  [v5 enumerateKeysAndObjectsUsingBlock:{v8, 3221225472, __47__BKSTouchEventService__repostAllRegistrations__block_invoke_2, &unk_1E6F47908}];
}

void __47__BKSTouchEventService__repostAllRegistrations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 lastObject];
  [v4 setObject:? forKey:?];
}

- (void)_updateServerHitTestCategoryContextIDs
{
  [(BKSTouchEventService *)self _connectToService];
  remoteTarget = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
  orderedContext = [(BSCompoundAssertion *)self->_contextIDsForAXZoom orderedContext];
  array = [orderedContext array];
  bs_flatten = [array bs_flatten];
  [remoteTarget setContextIDs:? forHitTestContextCategory:?];
}

- (void)_updateServerHitTestFilterParameters
{
  [(BKSTouchEventService *)self _connectToService];
  remoteTarget = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
  orderedContext = [(BSCompoundAssertion *)self->_hitTestFilterParameters orderedContext];
  array = [orderedContext array];
  [remoteTarget setHitTestFilterParameters:?];
}

- (id)excludeEventsFromSenders:(id)senders fromHitTestingToContextIDs:(id)ds
{
  v36 = *MEMORY[0x1E69E9840];
  sendersCopy = senders;
  dsCopy = ds;
  if (![sendersCopy count])
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[senders count] > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v25 = v15;
      v26 = 2114;
      v27 = v17;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSTouchEventService.m";
      v32 = 1024;
      v33 = 273;
      v34 = 2114;
      v35 = v14;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B5CF8);
  }

  if (![dsCopy count])
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[contextIDs count] > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v25 = v19;
      v26 = 2114;
      v27 = v21;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSTouchEventService.m";
      v32 = 1024;
      v33 = 274;
      v34 = 2114;
      v35 = v18;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B5DF0);
  }

  v22 = sendersCopy;
  v23 = dsCopy;
  v9 = dsCopy;
  v10 = sendersCopy;
  v11 = [BKSTouchHitTestFilterParameters build:?];
  v12 = [BSCompoundAssertion acquireForReason:"acquireForReason:withContext:" withContext:?];

  return v12;
}

void __76__BKSTouchEventService_excludeEventsFromSenders_fromHitTestingToContextIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSenderDescriptors:?];
  [v2 setContextIDs:?];
}

- (id)setContextIDs:(id)ds forHitTestContextCategory:(int64_t)category
{
  v64 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (!dsCopy)
  {
    v26 = MEMORY[0x1E696AEC0];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v26 stringWithFormat:@"contextIDs", v28];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v53 = v30;
      v54 = 2114;
      v55 = v32;
      v56 = 2048;
      selfCopy5 = self;
      v58 = 2114;
      v59 = @"BKSTouchEventService.m";
      v60 = 1024;
      v61 = 261;
      v62 = 2114;
      v63 = v29;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B6228);
  }

  v8 = dsCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = MEMORY[0x1E696AEC0];
    classForCoder = [v8 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v35 = NSStringFromClass(classForCoder);
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v33 stringWithFormat:@"contextIDs", v35, v37];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v53 = v39;
      v54 = 2114;
      v55 = v41;
      v56 = 2048;
      selfCopy5 = self;
      v58 = 2114;
      v59 = @"BKSTouchEventService.m";
      v60 = 1024;
      v61 = 261;
      v62 = 2114;
      v63 = v38;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B6364);
  }

  if (![v8 count])
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(a2);
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *buf = 138544642;
      v53 = v43;
      v54 = 2114;
      v55 = v45;
      v56 = 2048;
      selfCopy5 = self;
      v58 = 2114;
      v59 = @"BKSTouchEventService.m";
      v60 = 1024;
      v61 = 262;
      v62 = 2114;
      v63 = v42;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v42 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B6450);
  }

  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(8 * i);
        v15 = objc_opt_class();
        v16 = v14;
        if (v15)
        {
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        unsignedIntValue = [v18 unsignedIntValue];
        if (!unsignedIntValue)
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v23 = NSStringFromSelector(a2);
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            *buf = 138544642;
            v53 = v23;
            v54 = 2114;
            v55 = v25;
            v56 = 2048;
            selfCopy5 = self;
            v58 = 2114;
            v59 = @"BKSTouchEventService.m";
            v60 = 1024;
            v61 = 265;
            v62 = 2114;
            v63 = v22;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v22 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863B6110);
        }
      }

      v11 = [v9 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v11);
  }

  if (category != 1)
  {
    v46 = MEMORY[0x1E696AEC0];
    v47 = NSStringFromBKSTouchHitTestContextCategory(category);
    v48 = [v46 stringWithFormat:v47];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = NSStringFromSelector(a2);
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      *buf = 138544642;
      v53 = v49;
      v54 = 2114;
      v55 = v51;
      v56 = 2048;
      selfCopy5 = self;
      v58 = 2114;
      v59 = @"BKSTouchEventService.m";
      v60 = 1024;
      v61 = 268;
      v62 = 2114;
      v63 = v48;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v48 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B655CLL);
  }

  v20 = [BSCompoundAssertion acquireForReason:"acquireForReason:withContext:" withContext:?];

  return v20;
}

- (CATransform3D)transformForDisplayUUID:(SEL)d layerID:(id)iD contextID:(unint64_t)contextID
{
  v23 = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  [(BKSTouchEventService *)self _connectToService];
  remoteTarget = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v14 = [remoteTarget transform3DForDisplayUUID:? layerID:? contextID:?];

  if (v14)
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
    [v14 transform];
  }

  else
  {
    v15 = BKLogMousePointer();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543874;
      v18 = iDCopy;
      v19 = 1024;
      v20 = a6;
      v21 = 2048;
      contextIDCopy = contextID;
      _os_log_error_impl(&dword_186345000, v15, OS_LOG_TYPE_ERROR, "cannot get transform for display:%{public}@ context:%X layer:%llX", &v17, 0x1Cu);
    }

    *&retstr->m22 = 0u;
    *&retstr->m32 = 0u;
    *&retstr->m42 = 0u;
    *&retstr->m34 = 0u;
    *&retstr->m24 = 0u;
    *&retstr->m14 = 0u;
    *&retstr->m12 = 0u;
    retstr->m11 = 1.0;
    retstr->m22 = 1.0;
    retstr->m33 = 1.0;
    retstr->m44 = 1.0;
  }

  return result;
}

- (id)registerSceneHostSettings:(id)settings forCAContextID:(unsigned int)d
{
  settingsCopy = settings;
  [(BKSTouchEventService *)self _connectToService];
  v8 = [BKSSceneHostRegistration alloc];
  v9 = settingsCopy;
  selfCopy = self;
  if (v8)
  {
    v13.receiver = v8;
    v13.super_class = BKSSceneHostRegistration;
    v11 = [(BKSTouchEventService *)&v13 init];
    v8 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 2, self);
      objc_storeStrong(&v8->_sceneHostSettings, settings);
      v8->_contextID = d;
    }
  }

  [(BKSTouchEventService *)selfCopy _updateRegistration:v8];

  return v8;
}

- (id)addAuthenticationSpecifications:(id)specifications forReason:(id)reason
{
  bs_secureEncoded = [specifications bs_secureEncoded];
  v5 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDTouchAddAuthenticationSpecifications(v5, [bs_secureEncoded bs_bytesForMIG], objc_msgSend(bs_secureEncoded, "bs_lengthForMIG"));
  v6 = objc_alloc_init(_BKSLocallyOwnedTouchAuthenticationAssertion);

  return v6;
}

- (void)addTouchAuthenticationSpecifications:(id)specifications forReason:(id)reason
{
  bs_secureEncoded = [specifications bs_secureEncoded];
  v4 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDTouchAddAuthenticationSpecifications(v4, [bs_secureEncoded bs_bytesForMIG], objc_msgSend(bs_secureEncoded, "bs_lengthForMIG"));
}

- (BKSTouchEventService)init
{
  v14.receiver = self;
  v14.super_class = BKSTouchEventService;
  v2 = [(BKSTouchEventService *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_connectionLock._os_unfair_lock_opaque = 0;
    v2->_registrationLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v2);
    v4 = MEMORY[0x1E698E658];
    v11[1] = MEMORY[0x1E69E9820];
    v11[2] = 3221225472;
    v11[3] = __28__BKSTouchEventService_init__block_invoke;
    v11[4] = &unk_1E6F47890;
    objc_copyWeak(&v12, &location);
    v5 = [v4 assertionWithIdentifier:? stateDidChangeHandler:?];
    contextIDsForAXZoom = v3->_contextIDsForAXZoom;
    v3->_contextIDsForAXZoom = v5;

    v7 = MEMORY[0x1E698E658];
    objc_copyWeak(v11, &location);
    v8 = [v7 assertionWithIdentifier:? stateDidChangeHandler:?];
    hitTestFilterParameters = v3->_hitTestFilterParameters;
    v3->_hitTestFilterParameters = v8;

    objc_destroyWeak(v11);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __28__BKSTouchEventService_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateServerHitTestCategoryContextIDs];
}

void __28__BKSTouchEventService_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateServerHitTestFilterParameters];
}

uint64_t __38__BKSTouchEventService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(BKSTouchEventService);
  v1 = sharedInstance_service_13603;
  sharedInstance_service_13603 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end