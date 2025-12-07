@interface _GCDefaultDeviceManager
- (BOOL)acceptDriverConnection:(id)connection forHIDService:(id)service;
- (BOOL)acceptFilterConnection:(id)connection forHIDService:(id)service;
- (_GCDefaultDeviceManager)initWithIdentifier:(id)identifier matchingFilter:(id)filter probeScore:(id)score;
- (_GCDefaultDeviceManagerDelegate)delegate;
- (_GCPhysicalDeviceRegistry)deviceRegistry;
- (id)configurationIdentifierForDevice:(id)device;
- (id)makeDeviceWithConfiguration:(id)configuration dependencies:(id)dependencies;
- (id)matchHIDService:(id)service;
- (void)_onqueue_checkAndHideDuplicateDevice:(id)device;
- (void)_onqueue_registerDefaultConfigurationForDevice:(id)device replaceExisting:(BOOL)existing;
- (void)_onqueue_registerPhysicalDevice:(id)device serviceInfo:(id)info checkForDuplicateDevice:(BOOL)duplicateDevice;
- (void)_onqueue_relinquishHIDDevice:(id)device;
- (void)claimHIDService:(id)service;
- (void)refreshPhysicalDeviceConfiguration:(id)configuration;
- (void)relinquishHIDService:(id)service;
@end

@implementation _GCDefaultDeviceManager

- (_GCDefaultDeviceManager)initWithIdentifier:(id)identifier matchingFilter:(id)filter probeScore:(id)score
{
  identifierCopy = identifier;
  filterCopy = filter;
  scoreCopy = score;
  v28.receiver = self;
  v28.super_class = _GCDefaultDeviceManager;
  v11 = [(_GCDefaultDeviceManager *)&v28 init];
  if (v11)
  {
    v12 = [identifierCopy copyWithZone:0];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_probeScore, score);
    objc_storeStrong(&v11->_matchingFilter, filter);
    v14 = MEMORY[0x1E696AEC0];
    identifier = [(_GCDeviceMatchingFilter *)v11->_matchingFilter identifier];
    v16 = [v14 stringWithFormat:@"_GCDefaultDeviceManager.%@", identifier];

    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v18 = dispatch_queue_create([v16 cStringUsingEncoding:4], v17);
    queue = v11->_queue;
    v11->_queue = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    claimedServices = v11->_claimedServices;
    v11->_claimedServices = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    physicalDevices = v11->_physicalDevices;
    v11->_physicalDevices = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    hiddenPhysicalDevices = v11->_hiddenPhysicalDevices;
    v11->_hiddenPhysicalDevices = v24;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel_refreshPhysicalDeviceConfiguration_ name:@"GCRefreshPhysicalDeviceConfigurationNotification" object:0];
  }

  return v11;
}

- (id)makeDeviceWithConfiguration:(id)configuration dependencies:(id)dependencies
{
  v41 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  dependenciesCopy = dependencies;
  if ([dependenciesCopy count] == 1)
  {
    v9 = [_GCDefaultLogicalDevice alloc];
    anyObject = [dependenciesCopy anyObject];
    v11 = [(_GCDefaultLogicalDevice *)v9 initWithPhysicalDevice:anyObject configuration:configurationCopy manager:self];

    delegate = [(_GCDefaultDeviceManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate deviceManager:self prepareLogicalDevice:v11];
    }

    goto LABEL_25;
  }

  if ([dependenciesCopy count] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCDefaultDeviceManager.m" lineNumber:124 description:{@"Bad configuration: %@", configurationCopy}];

    v11 = 0;
    goto LABEL_25;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = dependenciesCopy;
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v14)
  {

    v16 = 0;
    goto LABEL_29;
  }

  v15 = v14;
  v33 = dependenciesCopy;
  obj = v13;
  v31 = a2;
  selfCopy = self;
  v16 = 0;
  v17 = 0;
  v35 = *v37;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v37 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v36 + 1) + 8 * i);
      identifier = [v19 identifier];
      deviceDependencies = [configurationCopy deviceDependencies];
      [deviceDependencies firstObject];
      v23 = v22 = configurationCopy;
      v24 = [identifier isEqual:v23];

      configurationCopy = v22;
      v25 = v19;
      if (v24)
      {
        v26 = v17;
      }

      else
      {
        v26 = v16;
      }

      if (v24)
      {
        v17 = v25;
      }

      else
      {
        v16 = v25;
      }
    }

    v15 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v15);
  v13 = obj;

  self = selfCopy;
  dependenciesCopy = v33;
  a2 = v31;
  if (!v17)
  {
LABEL_29:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"GCDefaultDeviceManager.m" lineNumber:111 description:{@"Dependencies did not contain primary device. %@", v13}];

    v17 = 0;
    if (v16)
    {
      goto LABEL_21;
    }

LABEL_30:
    [(_GCDefaultDeviceManager *)a2 makeDeviceWithConfiguration:v13 dependencies:?];
    goto LABEL_21;
  }

  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_21:
  v11 = [[_GCFusedLogicalDevice alloc] initWithPrimaryPhysicalDevice:v17 secondaryPhysicalDevice:v16 configuration:configurationCopy manager:self];
  delegate2 = [(_GCDefaultDeviceManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate2 deviceManager:self prepareLogicalDevice:v11];
  }

LABEL_25:

  return v11;
}

- (id)configurationIdentifierForDevice:(id)device
{
  v3 = MEMORY[0x1E696AEC0];
  deviceCopy = device;
  v5 = [v3 alloc];
  identifier = [deviceCopy identifier];

  v7 = [v5 initWithFormat:@"LOGICAL_DEVICE(%@)", identifier];

  return v7;
}

- (void)_onqueue_registerDefaultConfigurationForDevice:(id)device replaceExisting:(BOOL)existing
{
  existingCopy = existing;
  v16[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v7 = [(_GCDefaultDeviceManager *)self configurationIdentifierForDevice:deviceCopy];
  v8 = MEMORY[0x1E69A0710];
  identifier = [deviceCopy identifier];
  v16[0] = identifier;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  identifier2 = [(_GCDefaultDeviceManager *)self identifier];
  v12 = [v8 configurationWithIdentifier:v7 priority:10 deviceIdentifier:v7 deviceDependencies:v10 deviceBuilder:identifier2];

  identifier3 = [deviceCopy identifier];

  objc_opt_class();
  LOBYTE(deviceCopy) = objc_opt_isKindOfClass();

  if (deviceCopy)
  {
    [v12 setTransient:1];
  }

  deviceRegistry = [(_GCDefaultDeviceManager *)self deviceRegistry];
  deviceConfigurationRegistry = [deviceRegistry deviceConfigurationRegistry];
  [deviceConfigurationRegistry addConfiguration:v12 replaceExisting:existingCopy];
}

- (void)refreshPhysicalDeviceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  object = [configurationCopy object];
  v6 = [object conformsToProtocol:&unk_1F4E9B800];

  if (v6)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62___GCDefaultDeviceManager_refreshPhysicalDeviceConfiguration___block_invoke;
    v8[3] = &unk_1E8419C38;
    objc_copyWeak(&v11, &location);
    v9 = configurationCopy;
    selfCopy = self;
    dispatch_async(queue, v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (id)matchHIDService:(id)service
{
  v4 = [(_GCDeviceMatchingFilter *)self->_matchingFilter match:service];
  p_probeScore = &self->_probeScore;
  if (!v4)
  {
    p_probeScore = MEMORY[0x1E69A0688];
  }

  v6 = *p_probeScore;

  return v6;
}

- (void)_onqueue_checkAndHideDuplicateDevice:(id)device
{
  v25 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [(NSMutableDictionary *)self->_physicalDevices allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(allKeys);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      v11 = [(NSMutableDictionary *)self->_physicalDevices objectForKeyedSubscript:v10];
      identifier2 = [v11 identifier];
      v13 = [identifier2 isEqual:identifier];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = v10;

    if (!v11)
    {
      goto LABEL_15;
    }

    v17 = deviceCopy;
    if (v11 != deviceCopy)
    {
      if (gc_isInternalBuild(v14, v15))
      {
        [_GCDefaultDeviceManager _onqueue_checkAndHideDuplicateDevice:identifier];
      }

      [(_GCDefaultDeviceManager *)self _onqueue_relinquishHIDDevice:v16];
      [(NSMutableDictionary *)self->_hiddenPhysicalDevices setObject:v11 forKey:v16];
    }
  }

  else
  {
LABEL_9:

    v16 = 0;
LABEL_15:
    isInternalBuild = gc_isInternalBuild(v14, v15);
    if (isInternalBuild)
    {
      [_GCDefaultDeviceManager _onqueue_checkAndHideDuplicateDevice:?];
    }

    v11 = 0;
    v17 = deviceCopy;
  }
}

- (void)claimHIDService:(id)service
{
  serviceCopy = service;
  v6 = _os_activity_create(&dword_1D2CD5000, "[Default Device Manager] Claim HID Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  isInternalBuild = gc_isInternalBuild(v7, v8);
  if (isInternalBuild)
  {
    v14 = getGCLogger(isInternalBuild);
    [_GCDefaultDeviceManager claimHIDService:v14];
  }

  v10 = [(_GCDefaultDeviceManager *)self matchHIDService:serviceCopy];
  v11 = *MEMORY[0x1E69A0688];

  if (v10 <= v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCDefaultDeviceManager.m" lineNumber:214 description:{@"%@ does not match against %@ but is trying to claim it", self, serviceCopy}];
  }

  if ([(NSMutableSet *)self->_claimedServices containsObject:serviceCopy])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"GCDefaultDeviceManager.m" lineNumber:215 description:{@"%@ has already claimed %@", self, serviceCopy}];
  }

  [(NSMutableSet *)self->_claimedServices addObject:serviceCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___GCDefaultDeviceManager_claimHIDService___block_invoke;
  block[3] = &unk_1E8419B98;
  block[4] = self;
  v18 = serviceCopy;
  v19 = a2;
  v13 = serviceCopy;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

- (void)_onqueue_registerPhysicalDevice:(id)device serviceInfo:(id)info checkForDuplicateDevice:(BOOL)duplicateDevice
{
  duplicateDeviceCopy = duplicateDevice;
  deviceCopy = device;
  infoCopy = info;
  v11 = infoCopy;
  if (duplicateDeviceCopy)
  {
    infoCopy = [(_GCDefaultDeviceManager *)self _onqueue_checkAndHideDuplicateDevice:deviceCopy];
  }

  if (deviceCopy)
  {
    if (gc_isInternalBuild(infoCopy, v10))
    {
      [_GCDefaultDeviceManager _onqueue_registerPhysicalDevice:serviceInfo:checkForDuplicateDevice:];
    }

    [(NSMutableDictionary *)self->_physicalDevices setObject:deviceCopy forKey:v11];
    [(_GCDefaultDeviceManager *)self _onqueue_registerDefaultConfigurationForDevice:deviceCopy replaceExisting:1];
    delegate = [(_GCDefaultDeviceManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate deviceManager:self willPublishPhysicalDevice:deviceCopy];
    }

    deviceRegistry = [(_GCDefaultDeviceManager *)self deviceRegistry];
    [deviceRegistry deviceManager:self deviceDidConnect:deviceCopy];
  }
}

- (void)_onqueue_relinquishHIDDevice:(id)device
{
  v48 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_physicalDevices objectForKey:deviceCopy];
  v7 = v5;
  if (v5)
  {
    if (gc_isInternalBuild(v5, v6))
    {
      [_GCDefaultDeviceManager _onqueue_relinquishHIDDevice:];
    }

    deviceRegistry = [(_GCDefaultDeviceManager *)self deviceRegistry];
    [deviceRegistry deviceManager:self deviceDidDisconnect:v7];

    [(NSMutableDictionary *)self->_physicalDevices removeObjectForKey:deviceCopy];
  }

  v9 = [(NSMutableDictionary *)self->_hiddenPhysicalDevices objectForKey:deviceCopy];
  v11 = v9;
  if (v9)
  {
    if (gc_isInternalBuild(v9, v10))
    {
      [_GCDefaultDeviceManager _onqueue_relinquishHIDDevice:];
    }

    [(NSMutableDictionary *)self->_hiddenPhysicalDevices removeObjectForKey:deviceCopy];
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  hiddenPhysicalDevices = self->_hiddenPhysicalDevices;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __56___GCDefaultDeviceManager__onqueue_relinquishHIDDevice___block_invoke;
  v26[3] = &unk_1E8419C60;
  v13 = v7;
  v27 = v13;
  v28 = &v36;
  v29 = &v30;
  [(NSMutableDictionary *)hiddenPhysicalDevices enumerateKeysAndObjectsWithOptions:0 usingBlock:v26];
  if (v37[5])
  {
    v14 = [deviceCopy stringPropertyForKey:@"Transport"];
    v15 = [v37[5] stringPropertyForKey:@"Transport"];
    isInternalBuild = gc_isInternalBuild(v15, v16);
    if (isInternalBuild)
    {
      v23 = getGCLogger(isInternalBuild);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = v37[5];
        *buf = 138412802;
        selfCopy = self;
        v44 = 2112;
        v45 = deviceCopy;
        v46 = 2112;
        v47 = v24;
        _os_log_impl(&dword_1D2CD5000, v23, OS_LOG_TYPE_INFO, "%@ Service %@ was relinquished, but we found cached hidden service %@ with the same identifier...", buf, 0x20u);
      }
    }

    v18 = [v14 isEqual:v15];
    if (v18)
    {
      v20 = gc_isInternalBuild(v18, v19);
      if (v20)
      {
        v21 = getGCLogger(v20);
        [_GCDefaultDeviceManager _onqueue_relinquishHIDDevice:v21];
      }
    }

    else
    {
      v22 = gc_isInternalBuild(v18, v19);
      if (v22)
      {
        v25 = getGCLogger(v22);
        [_GCDefaultDeviceManager _onqueue_relinquishHIDDevice:v25];
      }

      [(_GCDefaultDeviceManager *)self _onqueue_registerPhysicalDevice:v31[5] serviceInfo:v37[5] checkForDuplicateDevice:0];
    }
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
}

- (void)relinquishHIDService:(id)service
{
  serviceCopy = service;
  v6 = _os_activity_create(&dword_1D2CD5000, "[Default Device Manager] Relinquish HID Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  isInternalBuild = gc_isInternalBuild(v7, v8);
  if (isInternalBuild)
  {
    v12 = getGCLogger(isInternalBuild);
    [_GCDefaultDeviceManager relinquishHIDService:v12];
  }

  if (([(NSMutableSet *)self->_claimedServices containsObject:serviceCopy]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCDefaultDeviceManager.m" lineNumber:311 description:{@"%@ has not claimed %@", self, serviceCopy}];
  }

  [(NSMutableSet *)self->_claimedServices removeObject:serviceCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48___GCDefaultDeviceManager_relinquishHIDService___block_invoke;
  block[3] = &unk_1E8418C50;
  block[4] = self;
  v15 = serviceCopy;
  v11 = serviceCopy;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

- (BOOL)acceptDriverConnection:(id)connection forHIDService:(id)service
{
  connectionCopy = connection;
  serviceCopy = service;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___GCDefaultDeviceManager_acceptDriverConnection_forHIDService___block_invoke;
  block[3] = &unk_1E8419BC0;
  block[4] = self;
  v13 = serviceCopy;
  v14 = connectionCopy;
  v9 = connectionCopy;
  v10 = serviceCopy;
  dispatch_async(queue, block);

  return 1;
}

- (BOOL)acceptFilterConnection:(id)connection forHIDService:(id)service
{
  connectionCopy = connection;
  serviceCopy = service;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___GCDefaultDeviceManager_acceptFilterConnection_forHIDService___block_invoke;
  block[3] = &unk_1E8419BC0;
  block[4] = self;
  v13 = serviceCopy;
  v14 = connectionCopy;
  v9 = connectionCopy;
  v10 = serviceCopy;
  dispatch_async(queue, block);

  return 1;
}

- (_GCPhysicalDeviceRegistry)deviceRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceRegistry);

  return WeakRetained;
}

- (_GCDefaultDeviceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)makeDeviceWithConfiguration:(uint64_t)a3 dependencies:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4();
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:v4 object:v3 file:@"GCDefaultDeviceManager.m" lineNumber:112 description:{@"Dependencies did not contain secondary device. %@", a3}];
}

- (void)_onqueue_checkAndHideDuplicateDevice:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)_onqueue_checkAndHideDuplicateDevice:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)claimHIDService:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)_onqueue_registerPhysicalDevice:serviceInfo:checkForDuplicateDevice:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v3 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_9();
    _os_log_impl(&dword_1D2CD5000, v1, OS_LOG_TYPE_DEFAULT, "%@: Adding %@", v2, 0x16u);
  }
}

- (void)_onqueue_relinquishHIDDevice:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)_onqueue_relinquishHIDDevice:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)_onqueue_relinquishHIDDevice:(NSObject *)a1 .cold.3(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)_onqueue_relinquishHIDDevice:(NSObject *)a1 .cold.4(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)relinquishHIDService:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

@end