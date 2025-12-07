@interface _GCControllerManagerAppClient
- (NSSet)devices;
- (_GCControllerManagerAppClient)init;
- (_GCControllerManagerAppClient)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment;
- (id)IPCObjectWithIdentifier:(id)identifier;
- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options;
- (id)matchingHIDServiceAttributes;
- (id)serviceClientForIPCService:(id)service;
- (void)CBApplicationDidBecomeActive;
- (void)_connectToDaemon;
- (void)_onqueue_addPendingController:(id)controller;
- (void)_onqueue_onHIDServiceAdded:(dispatch_queue_t *)added;
- (void)_onqueue_onHIDServiceRemoved:(uint64_t)removed;
- (void)_onqueue_publishController:(id)controller;
- (void)_onqueue_refreshPublishedControllers;
- (void)_onqueue_unpublishController:(id)controller;
- (void)_resumeDaemonConnection;
- (void)awakeWithSession:(id)session environment:(id)environment;
- (void)dealloc;
- (void)finalizeRecording;
- (void)observerDeliveryPolicyDidChange:(id)change;
- (void)onScreenshotTriggered:(id)triggered;
- (void)onVideoRecordingToggled:(id)toggled;
- (void)publishControllers:(id)controllers;
- (void)refreshControllers;
- (void)registerIPCObject:(id)object;
- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices;
- (void)setProperty:(id)property forKey:(id)key forHIDServiceClientWithRegistryID:(id)d;
- (void)startBuffering;
- (void)startVideoRecording;
- (void)startVideoRecordingBuffering:(id)buffering;
- (void)stopBuffering;
- (void)stopVideoRecordingBuffering;
- (void)stopVideoRecordingWithClipBuffering:(BOOL)buffering controller:(id)controller;
- (void)unpublishControllersWithIdentifiers:(id)identifiers;
- (void)updateEmulatedControllerEnabled;
@end

@implementation _GCControllerManagerAppClient

- (void)CBApplicationDidBecomeActive
{
  v2 = getGCLogger(self);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (_GCControllerManagerAppClient)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment
{
  configurationCopy = configuration;
  queueCopy = queue;
  environmentCopy = environment;
  v33.receiver = self;
  v33.super_class = _GCControllerManagerAppClient;
  v12 = [(_GCControllerManagerAppClient *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionQueue, queue);
    v13->_ipcRegistryLock._os_unfair_lock_opaque = 0;
    v14 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    ipcObjectRegistry = v13->_ipcObjectRegistry;
    v13->_ipcObjectRegistry = v14;

    [(_GCControllerManagerAppClient *)v13 registerIPCObject:v13];
    objc_storeStrong(&v13->_configuration, configuration);
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    knownHIDServices = v13->_knownHIDServices;
    v13->_knownHIDServices = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    publishedControllers = v13->_publishedControllers;
    v13->_publishedControllers = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingControllers = v13->_pendingControllers;
    v13->_pendingControllers = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    serverValidControllerIdentifiers = v13->_serverValidControllerIdentifiers;
    v13->_serverValidControllerIdentifiers = v22;

    *&v13->_bufferingStarted = 0;
    v24 = objc_alloc_init(MEMORY[0x1E698E3B8]);
    hidEventObserver = v13->_hidEventObserver;
    v13->_hidEventObserver = v24;

    keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    [(BKSHIDEventDeliveryPolicyObserver *)v13->_hidEventObserver setDeferringEnvironment:keyboardFocusEnvironment];

    [(BKSHIDEventDeliveryPolicyObserver *)v13->_hidEventObserver addObserver:v13];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel_startVideoRecordingBuffering_ name:@"GCControllerStartVideoRecordingBuffering" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v13 selector:sel_onVideoRecordingToggled_ name:@"GCControllerVideoRecordingToggled" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v13 selector:sel_onScreenshotTriggered_ name:@"GCControllerScreenshotTriggered" object:0];

    v30 = GCLookupService();
    hidServiceProviding = v13->_hidServiceProviding;
    v13->_hidServiceProviding = v30;
  }

  return v13;
}

- (_GCControllerManagerAppClient)init
{
  [(_GCControllerManagerAppClient *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)awakeWithSession:(id)session environment:(id)environment
{
  v22 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  targetQueue = [sessionCopy targetQueue];
  targetQueue = self->_targetQueue;
  self->_targetQueue = targetQueue;

  hidEventSource = [sessionCopy hidEventSource];
  hidEventSource = self->_hidEventSource;
  self->_hidEventSource = hidEventSource;

  v10 = NSClassFromString(&cfstr_Gckeyboardcont.isa);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  deviceProviders = [sessionCopy deviceProviders];
  v12 = [deviceProviders countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(deviceProviders);
        }

        if (v10)
        {
          v16 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&self->_keyboardControllerManager, v16);
            goto LABEL_12;
          }
        }
      }

      v13 = [deviceProviders countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options
{
  sessionQueue = self->_sessionQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73___GCControllerManagerAppClient_activateWithSession_environment_options___block_invoke;
  v8[3] = &unk_1E841A9A8;
  v8[4] = self;
  v6 = [MEMORY[0x1E69A06D0] futureOnQueue:sessionQueue withBlock:{v8, options}];

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"GCControllerScreenshotTriggered" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"GCControllerVideoRecordingToggled" object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:@"GCControllerStartVideoRecordingBuffering" object:0];

  hidEventObserver = self->_hidEventObserver;
  if (hidEventObserver)
  {
    [(BKSHIDEventDeliveryPolicyObserver *)hidEventObserver removeObserver:self];
    v7 = self->_hidEventObserver;
    self->_hidEventObserver = 0;
  }

  v8.receiver = self;
  v8.super_class = _GCControllerManagerAppClient;
  [(_GCControllerManagerAppClient *)&v8 dealloc];
}

- (void)finalizeRecording
{
  v2 = objc_opt_new();
  [v2 resume];
  remoteProxy = [v2 remoteProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50___GCControllerManagerAppClient_finalizeRecording__block_invoke;
  v5[3] = &unk_1E8419678;
  v6 = v2;
  v4 = v2;
  [remoteProxy moveLastRecordingToDesktop:v5];
}

- (void)_connectToDaemon
{
  if (self->_serverConnection)
  {
    isInternalBuild = gc_isInternalBuild(self, a2);
    if (!isInternalBuild)
    {
      return;
    }

    v3 = getGCLogger(isInternalBuild);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2CD5000, v3, OS_LOG_TYPE_INFO, "Game Controller daemon connection has already been established.", buf, 2u);
    }
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setClient:self];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49___GCControllerManagerAppClient__connectToDaemon__block_invoke;
    v12[3] = &unk_1E8418C28;
    v12[4] = self;
    v6 = [v5 addInvalidationHandler:v12];
    serverConnectionInvalidation = self->_serverConnectionInvalidation;
    self->_serverConnectionInvalidation = v6;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_136;
    v11[3] = &unk_1E8418C28;
    v11[4] = self;
    v8 = [v5 addInterruptionHandler:v11];
    serverConnectionInterruption = self->_serverConnectionInterruption;
    self->_serverConnectionInterruption = v8;

    serverConnection = self->_serverConnection;
    self->_serverConnection = v5;
    v3 = v5;

    [(GCIPCOutgoingConnection *)self->_serverConnection resume];
    [(_GCControllerManagerAppClient *)self _resumeDaemonConnection];
  }
}

- (void)_resumeDaemonConnection
{
  if (OUTLINED_FUNCTION_11(self))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (NSSet)devices
{
  v3 = objc_opt_new();
  v4 = self->_publishedControllers;
  objc_sync_enter(v4);
  allValues = [(NSMutableDictionary *)self->_publishedControllers allValues];
  [v3 addObjectsFromArray:allValues];

  objc_sync_exit(v4);

  return v3;
}

- (void)_onqueue_addPendingController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(self->_sessionQueue);
  identifier = [controllerCopy identifier];
  v6 = [(NSMutableSet *)self->_serverValidControllerIdentifiers member:identifier];

  if (!v6)
  {
    [(_GCControllerManagerAppClient *)a2 _onqueue_addPendingController:controllerCopy];
  }

  [(NSMutableSet *)self->_pendingControllers addObject:controllerCopy];
}

- (void)_onqueue_refreshPublishedControllers
{
  OUTLINED_FUNCTION_5();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_12(5.7779e-34);
    OUTLINED_FUNCTION_5_9(&dword_1D2CD5000, v3, v4, "Materialized controller: '%@'");
  }
}

- (void)_onqueue_unpublishController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(self->_sessionQueue);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:controllerCopy];
  [(_GCControllerManagerAppClient *)self willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v4];
  v5 = self->_publishedControllers;
  objc_sync_enter(v5);
  publishedControllers = self->_publishedControllers;
  identifier = [controllerCopy identifier];
  [(NSMutableDictionary *)publishedControllers removeObjectForKey:identifier];

  objc_sync_exit(v5);
  [(_GCControllerManagerAppClient *)self didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v4];
  if (![(NSMutableDictionary *)self->_publishedControllers count])
  {
    [(_GCControllerManagerAppClient *)self stopVideoRecordingBuffering];
  }
}

- (void)_onqueue_publishController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(self->_sessionQueue);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:controllerCopy];
  [(_GCControllerManagerAppClient *)self willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v4];
  v5 = self->_publishedControllers;
  objc_sync_enter(v5);
  publishedControllers = self->_publishedControllers;
  identifier = [controllerCopy identifier];
  [(NSMutableDictionary *)publishedControllers setObject:controllerCopy forKey:identifier];

  objc_sync_exit(v5);
  [(_GCControllerManagerAppClient *)self didChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v4];
}

- (void)updateEmulatedControllerEnabled
{
  settingsXPCProxyService = self->_settingsXPCProxyService;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64___GCControllerManagerAppClient_updateEmulatedControllerEnabled__block_invoke;
  v3[3] = &unk_1E841AB38;
  v3[4] = self;
  [(GCSettingsXPCProxyServiceRemoteServerInterface *)settingsXPCProxyService checkEmulatedControllerEnabledWithReply:v3];
}

- (id)matchingHIDServiceAttributes
{
  v15[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14[0] = @"DeviceUsagePage";
  v14[1] = @"DeviceUsage";
  v15[0] = &unk_1F4E8E3F0;
  v15[1] = &unk_1F4E8E408;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [array addObject:v3];
  v12[0] = @"DeviceUsagePage";
  v12[1] = @"DeviceUsage";
  v13[0] = &unk_1F4E8E3F0;
  v13[1] = &unk_1F4E8E420;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [array addObject:v4];
  v10[0] = @"DeviceUsagePage";
  v10[1] = @"DeviceUsage";
  v11[0] = &unk_1F4E8E3F0;
  v11[1] = &unk_1F4E8E438;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [array addObject:v5];
  v8[0] = @"DeviceUsagePage";
  v8[1] = @"DeviceUsage";
  v9[0] = &unk_1F4E8E450;
  v9[1] = &unk_1F4E8E468;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [array addObject:v6];

  return array;
}

- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices
{
  v28 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  removedServicesCopy = removedServices;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [removedServicesCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(removedServicesCopy);
        }

        [(_GCControllerManagerAppClient *)self _onqueue_onHIDServiceRemoved:?];
      }

      while (v10 != v12);
      v10 = [removedServicesCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = servicesCopy;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(_GCControllerManagerAppClient *)self _onqueue_onHIDServiceAdded:?];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (void)setProperty:(id)property forKey:(id)key forHIDServiceClientWithRegistryID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  keyCopy = key;
  dCopy = d;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_knownHIDServices;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v23 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v22 + 1) + 8 * v15);
      registryID = [v16 registryID];
      v18 = [registryID isEqualToNumber:dCopy];

      if (v18)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = v16;

    if (!v19)
    {
      goto LABEL_15;
    }

    if (gc_isInternalBuild(v20, v21))
    {
      [_GCControllerManagerAppClient setProperty:propertyCopy forKey:? forHIDServiceClientWithRegistryID:?];
    }

    IOHIDServiceClientSetProperty([(NSMutableSet *)v19 service], keyCopy, propertyCopy);
  }

  else
  {
LABEL_9:
    v19 = v11;
  }

LABEL_15:
}

- (void)startVideoRecording
{
  if (![(GCDeviceSessionConfiguration *)self->_configuration isNonUI])
  {
    v3 = GCLookupService();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52___GCControllerManagerAppClient_startVideoRecording__block_invoke;
    v4[3] = &unk_1E8419EA8;
    v4[4] = self;
    [v3 startRecordingWithHandler:v4];
  }
}

- (void)stopVideoRecordingWithClipBuffering:(BOOL)buffering controller:(id)controller
{
  controllerCopy = controller;
  if (![(GCDeviceSessionConfiguration *)self->_configuration isNonUI])
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    processName = [mainBundle objectForInfoDictionaryKey:@"CFBundleDisplayName"];

    if (!processName)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
    }

    photoVideoService = self->_photoVideoService;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke;
    v11[3] = &unk_1E841ABB0;
    bufferingCopy = buffering;
    v11[4] = self;
    v12 = controllerCopy;
    [(GCPhotoVideoXPCProxyServiceRemoteServerInterface *)photoVideoService generateURLFor:processName withReply:v11];
  }
}

- (void)startBuffering
{
  if (![(GCDeviceSessionConfiguration *)self->_configuration isNonUI]&& ![(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures]&& !self->_bufferingStartPending)
  {
    self->_bufferingStartPending = 1;
    v3 = GCLookupService();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __47___GCControllerManagerAppClient_startBuffering__block_invoke;
    v4[3] = &unk_1E8419EA8;
    v4[4] = self;
    [v3 startClipBufferingWithCompletionHandler:v4];
  }
}

- (void)stopBuffering
{
  if (![(GCDeviceSessionConfiguration *)self->_configuration isNonUI]&& ![(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures])
  {
    v3 = GCLookupService();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __46___GCControllerManagerAppClient_stopBuffering__block_invoke;
    v4[3] = &unk_1E8419EA8;
    v4[4] = self;
    [v3 stopClipBufferingWithCompletionHandler:v4];
  }
}

- (void)startVideoRecordingBuffering:(id)buffering
{
  bufferingCopy = buffering;
  if (![(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures])
  {
    object = [bufferingCopy object];
    if (gc_isInternalBuild(object, v6))
    {
      [_GCControllerManagerAppClient startVideoRecordingBuffering:object];
    }

    v7 = self->_publishedControllers;
    objc_sync_enter(v7);
    if (!object || (publishedControllers = self->_publishedControllers, [object identifier], v9 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](publishedControllers, "objectForKey:", v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10 != object))
    {

      object = 0;
    }

    objc_sync_exit(v7);

    if (object)
    {
      v11 = +[_GCCurrentApplicationForegroundMonitor sharedInstance];
      isAppInBackground = [v11 isAppInBackground];

      if (isAppInBackground)
      {
        self->_shouldStartBufferingOnForeground = 1;
      }

      else if (!self->_bufferingStarted)
      {
        [(_GCControllerManagerAppClient *)self startBuffering];
      }
    }
  }
}

- (void)stopVideoRecordingBuffering
{
  if (self->_bufferingStarted)
  {
    [(_GCControllerManagerAppClient *)self stopBuffering];
  }
}

- (void)onVideoRecordingToggled:(id)toggled
{
  toggledCopy = toggled;
  if (![(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures])
  {
    object = [toggledCopy object];
    if (gc_isInternalBuild(object, v6))
    {
      [_GCControllerManagerAppClient onVideoRecordingToggled:object];
    }

    v7 = self->_publishedControllers;
    objc_sync_enter(v7);
    if (!object || (publishedControllers = self->_publishedControllers, [object identifier], v9 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](publishedControllers, "objectForKey:", v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10 != object))
    {

      object = 0;
    }

    objc_sync_exit(v7);

    if (!object)
    {
      goto LABEL_24;
    }

    userInfo = [toggledCopy userInfo];
    v12 = [userInfo objectForKeyedSubscript:@"mode"];
    integerValue = [v12 integerValue];

    v14 = +[_GCCurrentApplicationForegroundMonitor sharedInstance];
    LOBYTE(v12) = [v14 isAppInBackground];

    if (v12)
    {
      goto LABEL_24;
    }

    if (!integerValue && self->_bufferingStarted)
    {
      [(_GCControllerManagerAppClient *)self stopBuffering];
LABEL_24:

      goto LABEL_25;
    }

    v15 = GCLookupService();
    isRecording = [v15 isRecording];

    isInternalBuild = gc_isInternalBuild(v17, v18);
    if (isRecording)
    {
      if (isInternalBuild)
      {
        [_GCControllerManagerAppClient onVideoRecordingToggled:?];
      }

      [(_GCControllerManagerAppClient *)self stopVideoRecordingWithClipBuffering:self->_bufferingStarted controller:object];
      goto LABEL_24;
    }

    if (isInternalBuild)
    {
      [_GCControllerManagerAppClient onVideoRecordingToggled:?];
      if (integerValue)
      {
LABEL_18:
        if (integerValue == 1)
        {
          v21 = gc_isInternalBuild(isInternalBuild, v20);
          if (v21)
          {
            [_GCControllerManagerAppClient onVideoRecordingToggled:v21];
          }

          [(_GCControllerManagerAppClient *)self startBuffering];
        }

        goto LABEL_24;
      }
    }

    else if (integerValue)
    {
      goto LABEL_18;
    }

    [(_GCControllerManagerAppClient *)self startVideoRecording];
    goto LABEL_24;
  }

LABEL_25:
}

- (void)onScreenshotTriggered:(id)triggered
{
  triggeredCopy = triggered;
  if ([(GCDeviceSessionConfiguration *)self->_configuration disableShareGestures])
  {
    goto LABEL_12;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  object = [triggeredCopy object];
  isInternalBuild = gc_isInternalBuild(object, v5);
  if (isInternalBuild)
  {
    v16 = getGCLogger(isInternalBuild);
    [_GCControllerManagerAppClient onScreenshotTriggered:v16];
  }

  v7 = self->_publishedControllers;
  objc_sync_enter(v7);
  v8 = v19;
  v9 = v19[5];
  if (!v9)
  {
    v14 = 0;
    goto LABEL_8;
  }

  publishedControllers = self->_publishedControllers;
  identifier = [v9 identifier];
  v12 = [(NSMutableDictionary *)publishedControllers objectForKey:identifier];
  v13 = v19[5];

  if (v12 != v13)
  {
    v8 = v19;
    v14 = v19[5];
LABEL_8:
    v8[5] = 0;
  }

  objc_sync_exit(v7);

  if (v19[5])
  {
    photoVideoService = self->_photoVideoService;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __55___GCControllerManagerAppClient_onScreenshotTriggered___block_invoke;
    v17[3] = &unk_1E8419E30;
    v17[4] = &v18;
    [(GCPhotoVideoXPCProxyServiceRemoteServerInterface *)photoVideoService takeScreenshotWithReply:v17];
  }

  _Block_object_dispose(&v18, 8);

LABEL_12:
}

- (id)IPCObjectWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_ipcRegistryLock);
  v5 = [(NSMapTable *)self->_ipcObjectRegistry objectForKey:identifierCopy];

  os_unfair_lock_unlock(&self->_ipcRegistryLock);

  return v5;
}

- (void)registerIPCObject:(id)object
{
  objectCopy = object;
  identifier = [objectCopy identifier];
  v7 = [identifier copyWithZone:0];

  if (!v7)
  {
    [(_GCControllerManagerAppClient(IPC) *)a2 registerIPCObject:?];
  }

  os_unfair_lock_lock(&self->_ipcRegistryLock);
  [(NSMapTable *)self->_ipcObjectRegistry setObject:objectCopy forKey:v7];

  os_unfair_lock_unlock(&self->_ipcRegistryLock);
}

- (id)serviceClientForIPCService:(id)service
{
  if (&unk_1F4EB38E8 == service || &unk_1F4EA1BC8 == service || &unk_1F4EB3588 == service || &unk_1F4EA1A98 == service || &unk_1F4EB3948 == service || &unk_1F4EA1980 == service || &unk_1F4EB2F58 == service || &unk_1F4EA1850 == service || &unk_1F4EB2C90 == service || &unk_1F4EA1738 == service || &unk_1F4EB3828 == service || &unk_1F4EB39A8 == service || &unk_1F4EA1618 == service)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)publishControllers:(id)controllers
{
  controllersCopy = controllers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = controllersCopy;
  v5 = controllersCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Controller Service Client) Publish Controllers", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)unpublishControllersWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = identifiersCopy;
  v5 = identifiersCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Controller Service Client) Unpublish Controllers", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)refreshControllers
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Controller Service Client) Refresh Controllers", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)observerDeliveryPolicyDidChange:(id)change
{
  serverConnection = self->_serverConnection;
  changeCopy = change;
  remoteProxy = [(GCIPCOutgoingConnection *)serverConnection remoteProxy];
  canReceiveEvents = [changeCopy canReceiveEvents];

  [remoteProxy clientCanReceiveEventsDidChange:canReceiveEvents];
}

- (void)_onqueue_onHIDServiceAdded:(dispatch_queue_t *)added
{
  v3 = a2;
  if (added)
  {
    dispatch_assert_queue_V2(added[1]);
    if (([OUTLINED_FUNCTION_15_2() containsObject:?] & 1) == 0)
    {
      [OUTLINED_FUNCTION_15_2() addObject:?];
      [(dispatch_queue_t *)added registerIPCObject:v3];
      [(dispatch_queue_t *)added _onqueue_refreshPublishedControllers];
    }
  }
}

- (void)_onqueue_onHIDServiceRemoved:(uint64_t)removed
{
  v3 = a2;
  if (removed)
  {
    dispatch_assert_queue_V2(*(removed + 8));
    if ([OUTLINED_FUNCTION_15_2() containsObject:?])
    {
      [OUTLINED_FUNCTION_15_2() removeObject:?];
    }
  }
}

- (void)_onqueue_addPendingController:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4();
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:v4 object:v3 file:@"GCControllerManagerApp.m" lineNumber:399 description:{@"Asked to add %@, which is not in the valid set.", a3}];
}

- (void)setProperty:(uint64_t)a1 forKey:forHIDServiceClientWithRegistryID:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x20u);
  }
}

- (void)startVideoRecordingBuffering:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
  }
}

- (void)onVideoRecordingToggled:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
  }
}

- (void)onVideoRecordingToggled:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 2u);
  }
}

- (void)onVideoRecordingToggled:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 2u);
  }
}

- (void)onVideoRecordingToggled:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 2u);
  }
}

- (void)onScreenshotTriggered:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
  }
}

@end