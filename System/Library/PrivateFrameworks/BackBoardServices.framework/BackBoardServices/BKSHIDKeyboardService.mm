@interface BKSHIDKeyboardService
+ (id)new;
+ (id)sharedInstance;
- (BKSHIDKeyboardService)init;
- (_BKSHIDKeyboardDeviceClientProxy)_proxyDeviceForConcreteDevice:(uint64_t)device;
- (id)_addObserver:(uint64_t)observer forReason:;
- (id)_proxyDevicesForConcreteDevices:(void *)devices;
- (id)addKeyboardObserver:(id)observer;
- (id)allKeyboardDevices;
- (id)keyboardDeviceForSenderID:(unint64_t)d;
- (void)_evaluateObservationStateAfterReconnect:(uint64_t)reconnect;
- (void)_updateKeyboards:(uint64_t)keyboards;
- (void)setConnectedKeyboards:(id)keyboards withReply:(id)reply;
@end

@implementation BKSHIDKeyboardService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_150);
  }

  v3 = sharedInstance_service;

  return v3;
}

- (id)allKeyboardDevices
{
  v3 = [(BKSHIDKeyboardService *)&self->super.isa _addObserver:@"allKeyboardDevices" forReason:?];
  os_unfair_lock_lock(&self->_lock);
  allValues = [(BSOrderedDictionary *)self->_lock_senderIDToDevice allValues];
  v5 = [allValues copy];

  os_unfair_lock_unlock(&self->_lock);
  v6 = [(BKSHIDKeyboardService *)self _proxyDevicesForConcreteDevices:v5];
  [v3 invalidate];

  return v6;
}

void __39__BKSHIDKeyboardService_sharedInstance__block_invoke()
{
  v38 = *MEMORY[0x1E69E9840];
  v0 = +[BKSHIDServiceConnectionFactory sharedInstance];
  v1 = [v0 clientConnectionForServiceWithName:?];

  v2 = [BKSHIDKeyboardService alloc];
  v22 = v1;
  if (v2)
  {
    v25.receiver = v2;
    v25.super_class = BKSHIDKeyboardService;
    v3 = objc_msgSendSuper2(&v25, sel_init);
    if (v3)
    {
      v4 = v3;
      if (v22)
      {
        v5 = MEMORY[0x1E698E658];
        v24 = v3;
        v6 = [v5 assertionWithIdentifier:? stateDidChangeHandler:?];
        v7 = v24[2];
        v24[2] = v6;

        v8 = MEMORY[0x1E698E658];
        v23 = v24;
        v9 = [v8 assertionWithIdentifier:? stateDidChangeHandler:?];
        v10 = v23[3];
        v23[3] = v9;

        v2 = v23;
        [v22 configure:?];
        v11 = BKLogKeyboard();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          connection = v2->_connection;
          *buf = 138543362;
          v27 = connection;
          _os_log_impl(&dword_186345000, v11, OS_LOG_TYPE_DEFAULT, "Activating connection to server: %{public}@", buf, 0xCu);
        }

        [v22 activate];
        v13 = BKLogKeyboard();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v22 remoteTarget];
          *buf = 138543362;
          v27 = v14;
          _os_log_impl(&dword_186345000, v13, OS_LOG_TYPE_DEFAULT, "server remote target %{public}@", buf, 0xCu);
        }

        v15 = [v22 remoteTarget];

        if (!v15)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v19 = NSStringFromSelector(sel__initWithConnection_);
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            *buf = 138544642;
            v27 = v19;
            v28 = 2114;
            v29 = v21;
            v30 = 2048;
            v31 = v2;
            v32 = 2114;
            v33 = @"BKSHIDKeyboardService.m";
            v34 = 1024;
            v35 = 239;
            v36 = 2114;
            v37 = v18;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v18 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863521A0);
        }

        objc_storeStrong(&v2->_connection, v1);

        v4 = v24;
      }

      else
      {
        v16 = BKLogKeyboard();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_186345000, v16, OS_LOG_TYPE_ERROR, "cannot get connection for service", buf, 2u);
        }

        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v17 = sharedInstance_service;
  sharedInstance_service = v2;
}

- (void)setConnectedKeyboards:(id)keyboards withReply:(id)reply
{
  replyCopy = reply;
  [(BKSHIDKeyboardService *)self _updateKeyboards:keyboards];
  v6 = replyCopy;
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, 0);
    v6 = replyCopy;
  }
}

- (void)_updateKeyboards:(uint64_t)keyboards
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (keyboards)
  {
    os_unfair_lock_lock((keyboards + 8));
    v4 = [v3 count];
    v5 = [*(keyboards + 40) count];
    keyboardsCopy = keyboards;
    if (v4)
    {
      if (v5)
      {
        v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v61 = *(keyboards + 40);
        v6 = objc_alloc_init(MEMORY[0x1E698E6F8]);
        v62 = v3;
        obj = v3;
        v7 = [obj countByEnumeratingWithState:? objects:? count:?];
        if (v7)
        {
          v8 = v7;
          v9 = MEMORY[0];
          do
          {
            for (i = 0; i != v8; i = (i + 1))
            {
              if (MEMORY[0] != v9)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(8 * i);
              v12 = MEMORY[0x1E696AD98];
              [v11 senderID];
              v13 = [v12 numberWithUnsignedLongLong:?];
              v14 = [*(keyboards + 40) objectForKey:?];
              if (v14)
              {
                v15 = v14;
                layout = [v11 layout];
                layout2 = [v15 layout];
                v18 = [layout isEqual:?];

                if ((v18 & 1) == 0)
                {
                  [v64 addObject:?];
                  [v15 _replaceProperties:?];
                }

                keyboards = keyboardsCopy;
              }

              else
              {
                v15 = [[BKSHIDKeyboardDevice alloc] _initWithProperties:?];
                [v65 addObject:?];
              }

              [v6 setObject:? forKey:?];
            }

            v8 = [obj countByEnumeratingWithState:? objects:? count:?];
          }

          while (v8);
        }

        v69 = v6;
        v70 = v60;
        [v61 enumerateKeysAndObjectsUsingBlock:?];
        v19 = *(keyboardsCopy + 40);
        *(keyboardsCopy + 40) = v69;
        v20 = v69;
        v21 = v64;
        allValues2 = v70;
        allValues = v65;

        keyboards = keyboardsCopy;
        v3 = v62;
      }

      else
      {
        v25 = objc_alloc_init(MEMORY[0x1E698E6F8]);
        v26 = v3;
        v27 = [v26 countByEnumeratingWithState:? objects:? count:?];
        if (v27)
        {
          v28 = v27;
          v29 = MEMORY[0];
          do
          {
            for (j = 0; j != v28; j = (j + 1))
            {
              if (MEMORY[0] != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = MEMORY[0x1E696AD98];
              [*(8 * j) senderID];
              v32 = [v31 numberWithUnsignedLongLong:?];
              v33 = [[BKSHIDKeyboardDevice alloc] _initWithProperties:?];
              [v25 setObject:? forKey:?];
            }

            v28 = [v26 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v28);
        }

        allValues = [v25 allValues];
        v34 = *(keyboardsCopy + 40);
        *(keyboardsCopy + 40) = v25;
        keyboards = keyboardsCopy;

        v21 = 0;
        allValues2 = 0;
      }
    }

    else
    {
      if (v5)
      {
        allValues2 = [*(keyboards + 40) allValues];
        v24 = *(keyboards + 40);
        *(keyboards + 40) = 0;

        v21 = 0;
      }

      else
      {
        v21 = 0;
        allValues2 = 0;
      }

      allValues = 0;
    }

    orderedContext = [*(keyboards + 16) orderedContext];
    v36 = [orderedContext copy];

    os_unfair_lock_unlock((keyboards + 8));
    if ([allValues count])
    {
      v37 = BKLogKeyboard();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v72 = allValues;
        _os_log_impl(&dword_186345000, v37, OS_LOG_TYPE_DEFAULT, "connected: %{public}@", buf, 0xCu);
      }

      if ([v36 count])
      {
        v38 = [(BKSHIDKeyboardService *)keyboards _proxyDevicesForConcreteDevices:allValues];
        v39 = v36;
        v40 = [v39 countByEnumeratingWithState:? objects:? count:?];
        if (v40)
        {
          v41 = v40;
          v42 = MEMORY[0];
          do
          {
            for (k = 0; k != v41; k = (k + 1))
            {
              if (MEMORY[0] != v42)
              {
                objc_enumerationMutation(v39);
              }

              [*(8 * k) keyboardDevicesDidConnect:?];
            }

            v41 = [v39 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v41);
        }

        keyboards = keyboardsCopy;
      }
    }

    if ([v21 count])
    {
      v44 = BKLogKeyboard();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v72 = v21;
        _os_log_impl(&dword_186345000, v44, OS_LOG_TYPE_DEFAULT, "layouts did change: %{public}@", buf, 0xCu);
      }

      if ([v36 count])
      {
        v66 = allValues;
        v63 = v3;
        v45 = [(BKSHIDKeyboardService *)keyboards _proxyDevicesForConcreteDevices:v21];
        v46 = v36;
        v47 = [v46 countByEnumeratingWithState:? objects:? count:?];
        if (v47)
        {
          v48 = v47;
          v49 = MEMORY[0];
          do
          {
            for (m = 0; m != v48; m = (m + 1))
            {
              if (MEMORY[0] != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(8 * m);
              if (objc_opt_respondsToSelector())
              {
                [v51 keyboardDeviceLayoutsDidChange:?];
              }
            }

            v48 = [v46 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v48);
        }

        v3 = v63;
        keyboards = keyboardsCopy;
        allValues = v66;
      }
    }

    if ([allValues2 count])
    {
      v52 = BKLogKeyboard();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v72 = allValues2;
        _os_log_impl(&dword_186345000, v52, OS_LOG_TYPE_DEFAULT, "disconnected: %{public}@", buf, 0xCu);
      }

      if ([v36 count])
      {
        v53 = allValues;
        v54 = [(BKSHIDKeyboardService *)keyboards _proxyDevicesForConcreteDevices:allValues2];
        v55 = v36;
        v56 = [v55 countByEnumeratingWithState:? objects:? count:?];
        if (v56)
        {
          v57 = v56;
          v58 = MEMORY[0];
          do
          {
            for (n = 0; n != v57; n = (n + 1))
            {
              if (MEMORY[0] != v58)
              {
                objc_enumerationMutation(v55);
              }

              [*(8 * n) keyboardDevicesDidDisconnect:?];
            }

            v57 = [v55 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v57);
        }

        allValues = v53;
      }
    }
  }
}

void __42__BKSHIDKeyboardService__updateKeyboards___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = [*(a1 + 32) objectForKey:?];

  if (!v4)
  {
    [*(a1 + 40) addObject:?];
  }
}

- (id)_proxyDevicesForConcreteDevices:(void *)devices
{
  if (devices)
  {
    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __57__BKSHIDKeyboardService__proxyDevicesForConcreteDevices___block_invoke;
    v7 = &unk_1E6F465A8;
    devicesCopy = devices;
    devices = [a2 bs_map:?];
    v2 = vars8;
  }

  return devices;
}

- (_BKSHIDKeyboardDeviceClientProxy)_proxyDeviceForConcreteDevice:(uint64_t)device
{
  v2 = 0;
  if (device && a2)
  {
    v3 = *(device + 24);
    v4 = MEMORY[0x1E696AEC0];
    v5 = a2;
    v6 = [v4 stringWithFormat:v5];
    v7 = [v3 acquireForReason:?];

    v2 = [_BKSHIDKeyboardDeviceClientProxy initWithDevice:"initWithDevice:lifetimeAssertion:" lifetimeAssertion:?];
  }

  return v2;
}

- (id)keyboardDeviceForSenderID:(unint64_t)d
{
  if (keyboardDeviceForSenderID__onceToken != -1)
  {
    dispatch_once(&keyboardDeviceForSenderID__onceToken, &__block_literal_global_169);
  }

  v5 = [(BKSHIDKeyboardService *)&self->super.isa _addObserver:@"keyboardDeviceWithSenderID:" forReason:?];
  os_unfair_lock_lock(&self->_lock);
  if (d && (v6 = keyboardDeviceForSenderID__axSenders, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v6, "containsObject:"), v7, !v6))
  {
    lock_senderIDToDevice = self->_lock_senderIDToDevice;
    allValues = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    lastObject = [(BSOrderedDictionary *)lock_senderIDToDevice objectForKey:?];
  }

  else
  {
    allValues = [(BSOrderedDictionary *)self->_lock_senderIDToDevice allValues];
    lastObject = [allValues lastObject];
  }

  v11 = lastObject;

  os_unfair_lock_unlock(&self->_lock);
  v12 = [(BKSHIDKeyboardService *)self _proxyDeviceForConcreteDevice:v11];
  [v5 invalidate];

  return v12;
}

- (id)_addObserver:(uint64_t)observer forReason:
{
  if (self)
  {
    self = [self[2] acquireForReason:? withContext:?];
    v3 = vars8;
  }

  return self;
}

uint64_t __51__BKSHIDKeyboardService_keyboardDeviceForSenderID___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1EF56BDD8, &unk_1EF56BDF0, &unk_1EF56BE08, &unk_1EF56BE20, &unk_1EF56BE38, &unk_1EF56BE50, &unk_1EF56BE68, 0}];
  v1 = keyboardDeviceForSenderID__axSenders;
  keyboardDeviceForSenderID__axSenders = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)addKeyboardObserver:(id)observer
{
  v4 = MEMORY[0x1E696AEC0];
  observerCopy = observer;
  observerCopy = [v4 stringWithFormat:objc_opt_class(), observerCopy];
  v7 = [(BKSHIDKeyboardService *)&self->super.isa _addObserver:observerCopy forReason:observerCopy];

  return v7;
}

- (BKSHIDKeyboardService)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDKeyboardService.m";
    v17 = 1024;
    v18 = 173;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void __45__BKSHIDKeyboardService__initWithConnection___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698E710];
  v4 = a2;
  v5 = [v3 protocolForProtocol:?];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:?];
  [v7 setServer:?];
  [v7 setClient:?];
  [v4 setInterface:?];
  [v4 setInterfaceTarget:?];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __45__BKSHIDKeyboardService__initWithConnection___block_invoke_4;
  v11 = &unk_1E6F474B0;
  v12 = *(a1 + 32);
  [v4 setInterruptionHandler:?];
  [v4 setInvalidationHandler:?];
}

void __45__BKSHIDKeyboardService__initWithConnection___block_invoke_4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = BKLogKeyboard();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_186345000, v2, OS_LOG_TYPE_ERROR, "keyboard service reconnecting", v3, 2u);
    }

    [*(v1 + 48) activate];
    [(BKSHIDKeyboardService *)v1 _evaluateObservationStateAfterReconnect:?];
  }
}

- (void)_evaluateObservationStateAfterReconnect:(uint64_t)reconnect
{
  v10 = *MEMORY[0x1E69E9840];
  if (reconnect)
  {
    os_unfair_lock_lock((reconnect + 8));
    if ([*(reconnect + 16) isActive])
    {
      isActive = 1;
    }

    else
    {
      isActive = [*(reconnect + 24) isActive];
    }

    if ((isActive & a2 & 1) != 0 || *(reconnect + 32) != isActive)
    {
      *(reconnect + 32) = isActive;
      v5 = BKLogKeyboard();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9[0] = 67109120;
        v9[1] = isActive;
        _os_log_impl(&dword_186345000, v5, OS_LOG_TYPE_DEFAULT, "currently observing: %{BOOL}u", v9, 8u);
      }

      os_unfair_lock_unlock((reconnect + 8));
      remoteTarget = [*(reconnect + 48) remoteTarget];
      v7 = [MEMORY[0x1E696AD98] numberWithBool:?];
      v8 = [remoteTarget setObservingUsableKeyboardConnections:?];

      [(BKSHIDKeyboardService *)reconnect _updateKeyboards:v8];
    }

    else
    {

      os_unfair_lock_unlock((reconnect + 8));
    }
  }
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDKeyboardService.m";
    v17 = 1024;
    v18 = 168;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end