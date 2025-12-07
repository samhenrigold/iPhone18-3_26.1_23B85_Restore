@interface _GCControllerManagerServer
+ (id)sharedInstance;
- (BOOL)acceptIncomingDriverConnection:(id)connection;
- (BOOL)addConfiguration:(id)configuration replaceExisting:(BOOL)existing;
- (BOOL)getLastGeneratedName:(id *)name directoryHandle:(id *)handle url:(id *)url;
- (BOOL)hasConfigurationWithIdentifier:(id)identifier;
- (BOOL)removeConfigurationWithIdentifier:(id)identifier;
- (BOOL)updateConfiguration:(id)configuration;
- (_GCControllerManagerServer)init;
- (_GCControllerManagerServer)initWithControllerProfiles:(id)profiles;
- (id)IPCObjectWithIdentifier:(id)identifier;
- (id)_hidqueue_popPendingDriverConnectionsForRegistryID:(id)d;
- (id)_hidqueue_popPendingFilterConnectionsForRegistryID:(id)d;
- (id)configurationWithIdentifier:(id)identifier;
- (id)lastGeneratedURL;
- (id)matchingHIDServiceAttributes;
- (void)_hidqueue_pushPendingDriverConnection:(id)connection forRegistryID:(id)d;
- (void)_hidqueue_pushPendingFilterConnection:(id)connection forRegistryID:(id)d;
- (void)_onqueue_refreshControllers;
- (void)_onqueue_refreshLogicalDevices;
- (void)_onqueue_registerLogicalDevice:(id)device;
- (void)_onqueue_registerPhysicalDevice:(id)device;
- (void)_onqueue_signalGameControllerFocusModeEvent;
- (void)_onqueue_unregisterLogicalDevice:(id)device;
- (void)_onqueue_unregisterPhysicalDevice:(id)device;
- (void)_rebuildCoPilotConfigurations;
- (void)_refreshCoPilotSettings;
- (void)dealloc;
- (void)deviceManager:(id)manager deviceDidConnect:(id)connect;
- (void)deviceManager:(id)manager deviceDidDisconnect:(id)disconnect;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)onHIDServiceAdded:(id)added;
- (void)onHIDServiceRemoved:(id)removed;
- (void)refreshActiveConfigurations;
- (void)refreshActiveConfigurationsWithCompletion:(id)completion;
- (void)registerIPCObject:(id)object;
- (void)setLastGeneratedName:(id)name directoryHandle:(id)handle url:(id)url;
- (void)setupHIDMonitor:(BOOL)monitor;
- (void)teardownHIDMonitor;
@end

@implementation _GCControllerManagerServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_GCControllerManagerServer sharedInstance];
  }

  v3 = sharedInstance_sharedManager;

  return v3;
}

- (_GCControllerManagerServer)init
{
  v3 = AllControllerProfiles(self);
  v4 = [(_GCControllerManagerServer *)self initWithControllerProfiles:v3];

  return v4;
}

- (_GCControllerManagerServer)initWithControllerProfiles:(id)profiles
{
  v81 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v79.receiver = self;
  v79.super_class = _GCControllerManagerServer;
  v5 = [(_GCControllerManagerServer *)&v79 init];
  if (v5)
  {
    v6 = dispatch_queue_create("GCControllerManager.controllers", 0);
    controllersQueue = v5->_controllersQueue;
    v5->_controllersQueue = v6;

    v70 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v8 = dispatch_queue_create("com.apple.corecontroller.events", v70);
    hidSystemClientQueue = v5->_hidSystemClientQueue;
    v5->_hidSystemClientQueue = v8;

    v5->_ipcRegistryLock._os_unfair_lock_opaque = 0;
    v10 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    ipcObjectRegistry = v5->_ipcObjectRegistry;
    v5->_ipcObjectRegistry = v10;

    notify_register_check("com.apple.GameController.system.status", &v5->_systemStatusNotification);
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(profilesCopy, "count")}];
    allDeviceManagers = v5->_allDeviceManagers;
    v5->_allDeviceManagers = v12;

    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(profilesCopy, "count")}];
    physicalDeviceManagers = v5->_physicalDeviceManagers;
    v5->_physicalDeviceManagers = v14;

    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(profilesCopy, "count")}];
    logicalDeviceManagers = v5->_logicalDeviceManagers;
    v5->_logicalDeviceManagers = v16;

    v18 = GCLookupService();
    settingsStore = v5->_settingsStore;
    v5->_settingsStore = v18;

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v20 = profilesCopy;
    v21 = [v20 countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v76;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v76 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v75 + 1) + 8 * i);
          if ([v25 conformsToProtocol:{&unk_1F4E97480, v70}])
          {
            deviceManager = [v25 deviceManager];
            [deviceManager setDeviceRegistry:v5];
            v27 = v5->_allDeviceManagers;
            identifier = [deviceManager identifier];
            [(NSMutableDictionary *)v27 setObject:deviceManager forKey:identifier];

            if ([deviceManager conformsToProtocol:&unk_1F4E99998])
            {
              v29 = v5->_physicalDeviceManagers;
              identifier2 = [deviceManager identifier];
              [(NSMutableDictionary *)v29 setObject:deviceManager forKey:identifier2];
            }

            if ([deviceManager conformsToProtocol:&unk_1F4E99AB0])
            {
              v31 = v5->_logicalDeviceManagers;
              identifier3 = [deviceManager identifier];
              [(NSMutableDictionary *)v31 setObject:deviceManager forKey:identifier3];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v22);
    }

    v33 = objc_opt_new();
    [v33 setDeviceRegistry:v5];
    v34 = v5->_allDeviceManagers;
    identifier4 = [v33 identifier];
    [(NSMutableDictionary *)v34 setObject:v33 forKey:identifier4];

    v36 = v5->_physicalDeviceManagers;
    identifier5 = [v33 identifier];
    [(NSMutableDictionary *)v36 setObject:v33 forKey:identifier5];

    v38 = v5->_logicalDeviceManagers;
    identifier6 = [v33 identifier];
    [(NSMutableDictionary *)v38 setObject:v33 forKey:identifier6];

    v5->_configurationsLock._os_unfair_lock_opaque = 0;
    v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    configurations = v5->_configurations;
    v5->_configurations = v40;

    v42 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    copilotConfigurations = v5->_copilotConfigurations;
    v5->_copilotConfigurations = v42;

    v44 = GCLookupService();
    defaults = v5->_defaults;
    v5->_defaults = v44;

    copilotSettings = v5->_copilotSettings;
    v5->_copilotSettings = MEMORY[0x1E695E0F0];

    copilotFusedControllers = [(GCSSettingsStore *)v5->_settingsStore copilotFusedControllers];
    [copilotFusedControllers addObserver:v5 forKeyPath:@"values" options:5 context:0];

    v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
    allDevices = v5->_allDevices;
    v5->_allDevices = v48;

    v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
    physicalDevices = v5->_physicalDevices;
    v5->_physicalDevices = v50;

    v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
    logicalDevices = v5->_logicalDevices;
    v5->_logicalDevices = v52;

    v54 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeConfigurations = v5->_activeConfigurations;
    v5->_activeConfigurations = v54;

    v56 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeControllerDevices = v5->_activeControllerDevices;
    v5->_activeControllerDevices = v56;

    v58 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    hidServices = v5->_hidServices;
    v5->_hidServices = v58;

    v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
    hidServiceOwners = v5->_hidServiceOwners;
    v5->_hidServiceOwners = v60;

    v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingDriverConnections = v5->_pendingDriverConnections;
    v5->_pendingDriverConnections = v62;

    v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingFilterConnections = v5->_pendingFilterConnections;
    v5->_pendingFilterConnections = v64;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57___GCControllerManagerServer_initWithControllerProfiles___block_invoke;
    block[3] = &unk_1E8418C28;
    v66 = v5;
    v74 = v66;
    v67 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, -1, block);
    dispatch_async(MEMORY[0x1E69E96A0], v67);

    controllersQueue = [(_GCControllerManagerServer *)v66 controllersQueue];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __57___GCControllerManagerServer_initWithControllerProfiles___block_invoke_2;
    v71[3] = &unk_1E8418C28;
    v72 = v66;
    dispatch_async(controllersQueue, v71);
  }

  return v5;
}

- (void)dealloc
{
  [(_GCControllerManagerServer *)self teardownHIDMonitor];
  [(GCUserDefaults *)self->_defaults removeObserver:self forKeyPath:@"configurations_v1" context:0];
  copilotFusedControllers = [(GCSSettingsStore *)self->_settingsStore copilotFusedControllers];

  if (copilotFusedControllers)
  {
    copilotFusedControllers2 = [(GCSSettingsStore *)self->_settingsStore copilotFusedControllers];
    [copilotFusedControllers2 removeObserver:self forKeyPath:@"values" context:0];
  }

  v5.receiver = self;
  v5.super_class = _GCControllerManagerServer;
  [(_GCControllerManagerServer *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  copilotFusedControllers = [(GCSSettingsStore *)self->_settingsStore copilotFusedControllers];
  v14 = copilotFusedControllers;
  if (copilotFusedControllers != objectCopy)
  {

LABEL_5:
    v17.receiver = self;
    v17.super_class = _GCControllerManagerServer;
    [(_GCControllerManagerServer *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_6;
  }

  v15 = [pathCopy isEqualToString:@"values"];

  if (!v15)
  {
    goto LABEL_5;
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v16 = _os_activity_create(&dword_1D2CD5000, "Co-pilot Settings Did Change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v16, &state);
  [(_GCControllerManagerServer *)&self->super.isa _refreshCoPilotSettings];
  os_activity_scope_leave(&state);

LABEL_6:
}

- (void)_refreshCoPilotSettings
{
  if (os_log_type_enabled(self, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)_onqueue_refreshControllers
{
  v16 = *MEMORY[0x1E69E9840];
  controllersQueue = [(_GCControllerManagerServer *)self controllersQueue];
  dispatch_assert_queue_V2(controllersQueue);

  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableDictionary count](self->_logicalDevices, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_logicalDevices allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 conformsToProtocol:&unk_1F4E9B608])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(_GCControllerManagerServer *)self setActiveControllerDevices:v4];
}

- (void)_onqueue_refreshLogicalDevices
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCControllerManagerServer.m" lineNumber:403 description:@"We are missing a device."];
}

- (void)_onqueue_registerPhysicalDevice:(id)device
{
  deviceCopy = device;
  controllersQueue = [(_GCControllerManagerServer *)self controllersQueue];
  dispatch_assert_queue_V2(controllersQueue);

  if (([deviceCopy conformsToProtocol:&unk_1F4E9B800] & 1) == 0)
  {
    [_GCControllerManagerServer _onqueue_registerPhysicalDevice:];
  }

  identifier = [deviceCopy identifier];
  v6 = [(NSMutableDictionary *)self->_allDevices objectForKey:identifier];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_allDevices objectForKey:identifier];

    if (v7 != deviceCopy)
    {
      [_GCControllerManagerServer _onqueue_registerPhysicalDevice:];
    }
  }

  allDevices = self->_allDevices;
  identifier2 = [deviceCopy identifier];
  [(NSMutableDictionary *)allDevices setObject:deviceCopy forKey:identifier2];

  physicalDevices = self->_physicalDevices;
  identifier3 = [deviceCopy identifier];
  [(NSMutableDictionary *)physicalDevices setObject:deviceCopy forKey:identifier3];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"GCPhysicalDeviceWasRegisteredNotification" object:deviceCopy userInfo:0];
}

- (void)_onqueue_unregisterPhysicalDevice:(id)device
{
  deviceCopy = device;
  controllersQueue = [(_GCControllerManagerServer *)self controllersQueue];
  dispatch_assert_queue_V2(controllersQueue);

  identifier = [deviceCopy identifier];
  v6 = [(NSMutableDictionary *)self->_physicalDevices objectForKey:identifier];

  if (!v6)
  {
    [_GCControllerManagerServer _onqueue_unregisterPhysicalDevice:];
  }

  [(NSMutableDictionary *)self->_physicalDevices removeObjectForKey:identifier];
  v7 = [(NSMutableDictionary *)self->_logicalDevices objectForKey:identifier];

  if (!v7)
  {
    [(NSMutableDictionary *)self->_allDevices removeObjectForKey:identifier];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"GCPhysicalDeviceWasUnregisteredNotification" object:deviceCopy userInfo:0];
}

- (void)_onqueue_registerLogicalDevice:(id)device
{
  deviceCopy = device;
  controllersQueue = [(_GCControllerManagerServer *)self controllersQueue];
  dispatch_assert_queue_V2(controllersQueue);

  if (([deviceCopy conformsToProtocol:&unk_1F4E9B8B8] & 1) == 0)
  {
    [_GCControllerManagerServer _onqueue_registerLogicalDevice:];
  }

  identifier = [deviceCopy identifier];
  v6 = [(NSMutableDictionary *)self->_allDevices objectForKey:identifier];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_allDevices objectForKey:identifier];

    if (v7 != deviceCopy)
    {
      [_GCControllerManagerServer _onqueue_registerLogicalDevice:];
    }
  }

  allDevices = self->_allDevices;
  identifier2 = [deviceCopy identifier];
  [(NSMutableDictionary *)allDevices setObject:deviceCopy forKey:identifier2];

  logicalDevices = self->_logicalDevices;
  identifier3 = [deviceCopy identifier];
  [(NSMutableDictionary *)logicalDevices setObject:deviceCopy forKey:identifier3];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"GCLogicalDeviceWasRegisteredNotification" object:deviceCopy userInfo:0];

  [(_GCControllerManagerServer *)self _onqueue_signalGameControllerFocusModeEvent];
}

- (void)_onqueue_unregisterLogicalDevice:(id)device
{
  deviceCopy = device;
  controllersQueue = [(_GCControllerManagerServer *)self controllersQueue];
  dispatch_assert_queue_V2(controllersQueue);

  identifier = [deviceCopy identifier];
  v6 = [(NSMutableDictionary *)self->_logicalDevices objectForKey:identifier];

  if (!v6)
  {
    [_GCControllerManagerServer _onqueue_unregisterLogicalDevice:];
  }

  [(NSMutableDictionary *)self->_logicalDevices removeObjectForKey:identifier];
  v7 = [(NSMutableDictionary *)self->_physicalDevices objectForKey:identifier];

  if (!v7)
  {
    [(NSMutableDictionary *)self->_allDevices removeObjectForKey:identifier];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"GCLogicalDeviceWasUnregisteredNotification" object:deviceCopy userInfo:0];

  [(_GCControllerManagerServer *)self _onqueue_signalGameControllerFocusModeEvent];
}

- (void)deviceManager:(id)manager deviceDidConnect:(id)connect
{
  connectCopy = connect;
  controllersQueue = [(_GCControllerManagerServer *)self controllersQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___GCControllerManagerServer_deviceManager_deviceDidConnect___block_invoke;
  v8[3] = &unk_1E8418C50;
  v8[4] = self;
  v9 = connectCopy;
  v7 = connectCopy;
  dispatch_async(controllersQueue, v8);
}

- (void)deviceManager:(id)manager deviceDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  controllersQueue = [(_GCControllerManagerServer *)self controllersQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64___GCControllerManagerServer_deviceManager_deviceDidDisconnect___block_invoke;
  v8[3] = &unk_1E8418C50;
  v8[4] = self;
  v9 = disconnectCopy;
  v7 = disconnectCopy;
  dispatch_async(controllersQueue, v8);
}

- (void)_onqueue_signalGameControllerFocusModeEvent
{
  v2 = getGCLogger(self);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

- (BOOL)hasConfigurationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_configurationsLock);
  v5 = [(NSMutableSet *)self->_configurations member:identifierCopy];

  os_unfair_lock_unlock(&self->_configurationsLock);
  return v5 != 0;
}

- (id)configurationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_configurationsLock);
  v5 = [(NSMutableSet *)self->_configurations member:identifierCopy];

  os_unfair_lock_unlock(&self->_configurationsLock);

  return v5;
}

- (BOOL)addConfiguration:(id)configuration replaceExisting:(BOOL)existing
{
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_configurationsLock);
  configurations = self->_configurations;
  identifier = [configurationCopy identifier];
  v9 = [(NSMutableSet *)configurations member:identifier];

  if (!existing && v9 && (![v9 isTransient] || (objc_msgSend(configurationCopy, "isTransient") & 1) != 0))
  {

    os_unfair_lock_unlock(&self->_configurationsLock);
    v10 = 0;
    goto LABEL_6;
  }

  v12 = [configurationCopy copy];

  if (gc_isInternalBuild(v13, v14))
  {
    [_GCControllerManagerServer addConfiguration:v12 replaceExisting:?];
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v9)
  {
LABEL_9:
    [(NSMutableSet *)self->_configurations removeObject:v9];
  }

LABEL_10:
  v15 = [(NSMutableSet *)self->_configurations addObject:v12];
  if (gc_isInternalBuild(v15, v16))
  {
    [_GCControllerManagerServer addConfiguration:v12 replaceExisting:?];
  }

  os_unfair_lock_unlock(&self->_configurationsLock);
  [(_GCControllerManagerServer *)self _rebuildCoPilotConfigurations];
  v10 = 1;
  configurationCopy = v12;
LABEL_6:

  return v10;
}

- (BOOL)updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_configurationsLock);
  configurations = self->_configurations;
  identifier = [configurationCopy identifier];
  v7 = [(NSMutableSet *)configurations member:identifier];

  if (v7)
  {
    v8 = [configurationCopy copy];

    if (gc_isInternalBuild(v10, v11))
    {
      [_GCControllerManagerServer updateConfiguration:v8];
    }

    [(NSMutableSet *)self->_configurations removeObject:v8];
    v12 = [(NSMutableSet *)self->_configurations addObject:v8];
    if (gc_isInternalBuild(v12, v13))
    {
      [_GCControllerManagerServer updateConfiguration:v8];
    }

    os_unfair_lock_unlock(&self->_configurationsLock);
    [(_GCControllerManagerServer *)self _rebuildCoPilotConfigurations];
  }

  else
  {
    os_unfair_lock_unlock(&self->_configurationsLock);
    v8 = configurationCopy;
  }

  return v7 != 0;
}

- (BOOL)removeConfigurationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_configurationsLock);
  v5 = [(NSMutableSet *)self->_configurations member:identifierCopy];
  v7 = v5;
  if (v5)
  {
    if (gc_isInternalBuild(v5, v6))
    {
      [_GCControllerManagerServer removeConfigurationWithIdentifier:v7];
    }

    v9 = [(NSMutableSet *)self->_configurations removeObject:identifierCopy];
    if (gc_isInternalBuild(v9, v10))
    {
      [_GCControllerManagerServer removeConfigurationWithIdentifier:v7];
    }

    os_unfair_lock_unlock(&self->_configurationsLock);
    [(_GCControllerManagerServer *)self _rebuildCoPilotConfigurations];
  }

  else
  {
    os_unfair_lock_unlock(&self->_configurationsLock);
  }

  return v7 != 0;
}

- (void)refreshActiveConfigurationsWithCompletion:(id)completion
{
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_1D2CD5000, "Refresh Active Configurations", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  controllersQueue = [(_GCControllerManagerServer *)self controllersQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72___GCControllerManagerServer_refreshActiveConfigurationsWithCompletion___block_invoke;
  v8[3] = &unk_1E8418BB8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(controllersQueue, v8);

  os_activity_scope_leave(&state);
}

- (void)refreshActiveConfigurations
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_1D2CD5000, "Refresh Active Configurations", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);
  controllersQueue = [(_GCControllerManagerServer *)self controllersQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___GCControllerManagerServer_refreshActiveConfigurations__block_invoke;
  block[3] = &unk_1E8418C28;
  block[4] = self;
  dispatch_sync(controllersQueue, block);

  os_activity_scope_leave(&state);
}

- (id)matchingHIDServiceAttributes
{
  v15[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14[0] = @"DeviceUsagePage";
  v14[1] = @"DeviceUsage";
  v15[0] = &unk_1F4E8DEF8;
  v15[1] = &unk_1F4E8DF10;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [array addObject:v3];
  v12[0] = @"DeviceUsagePage";
  v12[1] = @"DeviceUsage";
  v13[0] = &unk_1F4E8DEF8;
  v13[1] = &unk_1F4E8DF28;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [array addObject:v4];
  v10[0] = @"DeviceUsagePage";
  v10[1] = @"DeviceUsage";
  v11[0] = &unk_1F4E8DEF8;
  v11[1] = &unk_1F4E8DF40;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [array addObject:v5];
  v8[0] = @"DeviceUsagePage";
  v8[1] = @"DeviceUsage";
  v9[0] = &unk_1F4E8DF58;
  v9[1] = &unk_1F4E8DF70;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [array addObject:v6];

  return array;
}

- (void)setupHIDMonitor:(BOOL)monitor
{
  p_hidEventSystemClient = &self->_hidEventSystemClient;
  if (!self->_hidEventSystemClient)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    v5 = _os_activity_create(&dword_1D2CD5000, "Setup HID Monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    v6 = [objc_alloc(MEMORY[0x1E69A06E8]) initWithQueue:self->_hidSystemClientQueue type:2 attributes:0];
    [v6 setServicesChangedCallback:__HIDServicesChangedCallback target:self context:0];
    objc_storeStrong(p_hidEventSystemClient, v6);
    [v6 activate];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46___GCControllerManagerServer_setupHIDMonitor___block_invoke;
    v9[3] = &unk_1E8418C50;
    v10 = v6;
    selfCopy = self;
    v7 = v6;
    v8 = _Block_copy(v9);
    dispatch_async_and_wait(self->_hidSystemClientQueue, v8);

    os_activity_scope_leave(&state);
  }
}

- (void)teardownHIDMonitor
{
  v3 = self->_hidEventSystemClient;
  if (v3)
  {
    v4 = _os_activity_create(&dword_1D2CD5000, "Teardown HID Monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0;
    v6.opaque[1] = 0;
    os_activity_scope_enter(v4, &v6);
    [(GCHIDEventSystemClient *)v3 invalidate];
    hidEventSystemClient = self->_hidEventSystemClient;
    self->_hidEventSystemClient = 0;

    os_activity_scope_leave(&v6);
  }
}

- (void)onHIDServiceAdded:(id)added
{
  v99 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  v5 = [(NSMutableSet *)self->_hidServices member:addedCopy];

  if (!v5)
  {
    [(NSMutableSet *)self->_hidServices addObject:addedCopy];
    [(_GCControllerManagerServer *)self registerIPCObject:addedCopy];
    v10 = *MEMORY[0x1E69A0688];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    allValues = [(NSMutableDictionary *)self->_physicalDeviceManagers allValues];
    v12 = [allValues countByEnumeratingWithState:&v86 objects:v98 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v87;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v87 != v14)
          {
            objc_enumerationMutation(allValues);
          }

          v16 = *(*(&v86 + 1) + 8 * i);
          [(NSMutableDictionary *)self->_hidServiceOwners setObject:v16 forKey:addedCopy];
          v9 = [v16 matchHIDService:addedCopy];
          if (v9 > v10)
          {

            v21 = v16;
            v40 = [v21 claimHIDService:addedCopy];
            if (gc_isInternalBuild(v40, v41))
            {
              [_GCControllerManagerServer onHIDServiceAdded:];
            }

            registryID = [addedCopy registryID];
            v43 = [(_GCControllerManagerServer *)self _hidqueue_popPendingDriverConnectionsForRegistryID:registryID];

            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v39 = v43;
            v44 = [v39 countByEnumeratingWithState:&v82 objects:v97 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = *v83;
              do
              {
                v47 = 0;
                do
                {
                  if (*v83 != v46)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v48 = *(*(&v82 + 1) + 8 * v47);
                  v49 = objc_opt_respondsToSelector();
                  if ((v49 & 1) == 0)
                  {
                    goto LABEL_50;
                  }

                  isInternalBuild = gc_isInternalBuild(v49, v50);
                  if (isInternalBuild)
                  {
                    loga = getGCLogger(isInternalBuild);
                    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412546;
                      v94 = v48;
                      v95 = 2112;
                      v96 = v21;
                      _os_log_debug_impl(&dword_1D2CD5000, loga, OS_LOG_TYPE_DEBUG, "Sending previous driver connection %@ to %@", buf, 0x16u);
                    }
                  }

                  v49 = [v21 acceptDriverConnection:v48 forHIDService:addedCopy];
                  if ((v49 & 1) == 0)
                  {
LABEL_50:
                    v52 = gc_isInternalBuild(v49, v50);
                    if (v52)
                    {
                      log = getGCLogger(v52);
                      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v94 = v48;
                        v95 = 2112;
                        v96 = v21;
                        _os_log_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_INFO, "Dropping incoming driver connection %@ because %@ rejected it.", buf, 0x16u);
                      }
                    }

                    [v48 invalidate];
                  }

                  ++v47;
                }

                while (v45 != v47);
                v53 = [v39 countByEnumeratingWithState:&v82 objects:v97 count:16];
                v45 = v53;
              }

              while (v53);
            }

            registryID2 = [addedCopy registryID];
            v55 = [(_GCControllerManagerServer *)self _hidqueue_popPendingFilterConnectionsForRegistryID:registryID2];

            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v31 = v55;
            v56 = [v31 countByEnumeratingWithState:&v78 objects:v92 count:16];
            if (v56)
            {
              v57 = v56;
              v58 = *v79;
              do
              {
                v59 = 0;
                do
                {
                  if (*v79 != v58)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v60 = *(*(&v78 + 1) + 8 * v59);
                  v61 = objc_opt_respondsToSelector();
                  if ((v61 & 1) == 0)
                  {
                    goto LABEL_69;
                  }

                  v63 = gc_isInternalBuild(v61, v62);
                  if (v63)
                  {
                    logc = getGCLogger(v63);
                    if (os_log_type_enabled(logc, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412546;
                      v94 = v60;
                      v95 = 2112;
                      v96 = v21;
                      _os_log_debug_impl(&dword_1D2CD5000, logc, OS_LOG_TYPE_DEBUG, "Sending previous filter connection %@ to %@", buf, 0x16u);
                    }
                  }

                  v61 = [v21 acceptFilterConnection:v60 forHIDService:addedCopy];
                  if ((v61 & 1) == 0)
                  {
LABEL_69:
                    v64 = gc_isInternalBuild(v61, v62);
                    if (v64)
                    {
                      logb = getGCLogger(v64);
                      if (os_log_type_enabled(logb, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v94 = v60;
                        v95 = 2112;
                        v96 = v21;
                        _os_log_impl(&dword_1D2CD5000, logb, OS_LOG_TYPE_INFO, "Dropping incoming filter connection %@ because %@ rejected it.", buf, 0x16u);
                      }
                    }

                    [v60 invalidate];
                  }

                  ++v59;
                }

                while (v57 != v59);
                v65 = [v31 countByEnumeratingWithState:&v78 objects:v92 count:16];
                v57 = v65;
              }

              while (v65);
            }

            goto LABEL_81;
          }

          [(NSMutableDictionary *)self->_hidServiceOwners removeObjectForKey:addedCopy];
        }

        v13 = [allValues countByEnumeratingWithState:&v86 objects:v98 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    if (gc_isInternalBuild(v17, v18))
    {
      [_GCControllerManagerServer onHIDServiceAdded:addedCopy];
    }

    registryID3 = [addedCopy registryID];
    v20 = [(_GCControllerManagerServer *)self _hidqueue_popPendingDriverConnectionsForRegistryID:registryID3];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v74 objects:v91 count:16];
    if (v22)
    {
      v24 = v22;
      v25 = *v75;
      do
      {
        v26 = 0;
        do
        {
          if (*v75 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v74 + 1) + 8 * v26);
          v22 = gc_isInternalBuild(v22, v23);
          if (v22)
          {
            v28 = getGCLogger(v22);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v94 = v27;
              v95 = 2112;
              v96 = addedCopy;
              _os_log_impl(&dword_1D2CD5000, v28, OS_LOG_TYPE_INFO, "Ignoring incoming driver connection %@ because it is for unclaimed service %@", buf, 0x16u);
            }
          }

          ++v26;
        }

        while (v24 != v26);
        v22 = [v21 countByEnumeratingWithState:&v74 objects:v91 count:16];
        v24 = v22;
      }

      while (v22);
    }

    registryID4 = [addedCopy registryID];
    v30 = [(_GCControllerManagerServer *)self _hidqueue_popPendingFilterConnectionsForRegistryID:registryID4];

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v70 objects:v90 count:16];
    if (v32)
    {
      v34 = v32;
      v35 = *v71;
      do
      {
        v36 = 0;
        do
        {
          if (*v71 != v35)
          {
            objc_enumerationMutation(v31);
          }

          v37 = *(*(&v70 + 1) + 8 * v36);
          v32 = gc_isInternalBuild(v32, v33);
          if (v32)
          {
            v38 = getGCLogger(v32);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v94 = v37;
              v95 = 2112;
              v96 = addedCopy;
              _os_log_impl(&dword_1D2CD5000, v38, OS_LOG_TYPE_INFO, "Ignoring incoming filter connection %@ because it is for unclaimed service %@", buf, 0x16u);
            }
          }

          ++v36;
        }

        while (v34 != v36);
        v32 = [v31 countByEnumeratingWithState:&v70 objects:v90 count:16];
        v34 = v32;
      }

      while (v32);
    }

    v39 = v31;
    v9 = v10;
LABEL_81:

    goto LABEL_82;
  }

  v8 = gc_isInternalBuild(v6, v7);
  if (v8)
  {
    v9 = getGCLogger(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_GCControllerManagerServer onHIDServiceAdded:];
    }

LABEL_82:
  }
}

- (void)onHIDServiceRemoved:(id)removed
{
  removedCopy = removed;
  v5 = [(NSMutableDictionary *)self->_hidServiceOwners objectForKey:removedCopy];
  v7 = v5;
  if (v5)
  {
    [v5 relinquishHIDService:removedCopy];
    [(NSMutableDictionary *)self->_hidServiceOwners removeObjectForKey:removedCopy];
    [(NSMutableSet *)self->_hidServices removeObject:removedCopy];
  }

  else if (gc_isInternalBuild(0, v6))
  {
    [_GCControllerManagerServer onHIDServiceRemoved:removedCopy];
  }
}

- (id)_hidqueue_popPendingDriverConnectionsForRegistryID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dispatch_assert_queue_V2(self->_hidSystemClientQueue);
  v5 = [(NSMutableDictionary *)self->_pendingDriverConnections objectForKey:dCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_setAssociatedObject(*(*(&v11 + 1) + 8 * i), "DriverConnectionInvalidationRegistrationKey", 0, 1);
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_pendingDriverConnections removeObjectForKey:dCopy];

  return v5;
}

- (void)_hidqueue_pushPendingDriverConnection:(id)connection forRegistryID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  dispatch_assert_queue_V2(self->_hidSystemClientQueue);
  if (!self->_pendingDriverConnections)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    pendingDriverConnections = self->_pendingDriverConnections;
    self->_pendingDriverConnections = v8;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82___GCControllerManagerServer__hidqueue_pushPendingDriverConnection_forRegistryID___block_invoke;
  v13[3] = &unk_1E8418CA0;
  v15 = connectionCopy;
  v13[4] = self;
  v10 = dCopy;
  v14 = v10;
  v11 = [connectionCopy addInvalidationHandler:v13];
  objc_setAssociatedObject(connectionCopy, "DriverConnectionInvalidationRegistrationKey", v11, 1);
  v12 = [(NSMutableDictionary *)self->_pendingDriverConnections objectForKey:v10];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    [(NSMutableDictionary *)self->_pendingDriverConnections setObject:v12 forKey:v10];
  }

  [v12 addObject:connectionCopy];
}

- (id)_hidqueue_popPendingFilterConnectionsForRegistryID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dispatch_assert_queue_V2(self->_hidSystemClientQueue);
  v5 = [(NSMutableDictionary *)self->_pendingFilterConnections objectForKey:dCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_setAssociatedObject(*(*(&v11 + 1) + 8 * i), "FilterConnectionInvalidationRegistrationKey", 0, 1);
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_pendingFilterConnections removeObjectForKey:dCopy];

  return v5;
}

- (void)_hidqueue_pushPendingFilterConnection:(id)connection forRegistryID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  dispatch_assert_queue_V2(self->_hidSystemClientQueue);
  if (!self->_pendingFilterConnections)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    pendingFilterConnections = self->_pendingFilterConnections;
    self->_pendingFilterConnections = v8;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82___GCControllerManagerServer__hidqueue_pushPendingFilterConnection_forRegistryID___block_invoke;
  v13[3] = &unk_1E8418CA0;
  v15 = connectionCopy;
  v13[4] = self;
  v10 = dCopy;
  v14 = v10;
  v11 = [connectionCopy addInvalidationHandler:v13];
  objc_setAssociatedObject(connectionCopy, "FilterConnectionInvalidationRegistrationKey", v11, 1);
  v12 = [(NSMutableDictionary *)self->_pendingFilterConnections objectForKey:v10];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    [(NSMutableDictionary *)self->_pendingFilterConnections setObject:v12 forKey:v10];
  }

  [v12 addObject:connectionCopy];
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
    [(_GCControllerManagerServer(IPC) *)a2 registerIPCObject:?];
  }

  os_unfair_lock_lock(&self->_ipcRegistryLock);
  [(NSMapTable *)self->_ipcObjectRegistry setObject:objectCopy forKey:v7];

  os_unfair_lock_unlock(&self->_ipcRegistryLock);
}

- (BOOL)acceptIncomingDriverConnection:(id)connection
{
  connectionCopy = connection;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_1D2CD5000, "Incoming Driver Connection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];
  remoteProxy = [connectionCopy remoteProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke;
  v9[3] = &unk_1E8418CF0;
  v10 = connectionCopy;
  selfCopy = self;
  v7 = connectionCopy;
  [remoteProxy fetchDeviceRegistryIDWithReply:v9];

  os_activity_scope_leave(&state);
  return 1;
}

- (void)setLastGeneratedName:(id)name directoryHandle:(id)handle url:(id)url
{
  nameCopy = name;
  handleCopy = handle;
  urlCopy = url;
  obj = self;
  objc_sync_enter(obj);
  lastGeneratedName = obj->_lastGeneratedName;
  obj->_lastGeneratedName = nameCopy;
  v12 = nameCopy;

  lastGeneratedDirectoryHandle = obj->_lastGeneratedDirectoryHandle;
  obj->_lastGeneratedDirectoryHandle = handleCopy;
  v14 = handleCopy;

  lastGeneratedURL = obj->_lastGeneratedURL;
  obj->_lastGeneratedURL = urlCopy;

  objc_sync_exit(obj);
}

- (BOOL)getLastGeneratedName:(id *)name directoryHandle:(id *)handle url:(id *)url
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = selfCopy->_lastGeneratedName;
  lastGeneratedName = selfCopy->_lastGeneratedName;
  selfCopy->_lastGeneratedName = 0;

  lastGeneratedDirectoryHandle = selfCopy->_lastGeneratedDirectoryHandle;
  selfCopy->_lastGeneratedDirectoryHandle = 0;
  v12 = lastGeneratedDirectoryHandle;

  v13 = selfCopy->_lastGeneratedURL;
  lastGeneratedURL = selfCopy->_lastGeneratedURL;
  selfCopy->_lastGeneratedURL = 0;

  objc_sync_exit(selfCopy);
  if (name)
  {
    v15 = v9;
    *name = v9;
  }

  if (handle)
  {
    v16 = v12;
    *handle = v12;
  }

  if (url)
  {
    v17 = v13;
    *url = v13;
  }

  if (v9)
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 1;
  }

  v20 = !v18 || v13 != 0;

  return v20;
}

- (id)lastGeneratedURL
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastGeneratedURL;
  lastGeneratedURL = selfCopy->_lastGeneratedURL;
  selfCopy->_lastGeneratedURL = 0;

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_rebuildCoPilotConfigurations
{
  v95 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    [*(self + 72) minusSet:*(self + 104)];
    [*(self + 104) removeAllObjects];
    copilotIdentifier = objc_getProperty(self, sel__rebuildCoPilotConfigurations, 88, 1);
    v71 = [*(self + 72) mutableCopy];
    isInternalBuild = gc_isInternalBuild(v71, v3);
    if (isInternalBuild)
    {
      v67 = getGCLogger(isInternalBuild);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v94 = copilotIdentifier;
        _os_log_debug_impl(&dword_1D2CD5000, v67, OS_LOG_TYPE_DEBUG, "Co-pilot: Rebuild configurations with settings %@", buf, 0xCu);
      }
    }

    selfCopy = self;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = copilotIdentifier;
    v5 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
    if (v5)
    {
      v8 = v5;
      v9 = *v87;
      *&v7 = 138412290;
      v68 = v7;
      v70 = *v87;
      do
      {
        v10 = 0;
        v72 = v8;
        do
        {
          if (*v87 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v86 + 1) + 8 * v10);
          v12 = gc_isInternalBuild(v5, v6);
          if (v12)
          {
            v61 = getGCLogger(v12);
            if (OUTLINED_FUNCTION_9(v61))
            {
              *buf = v68;
              v94 = v11;
              OUTLINED_FUNCTION_3();
              _os_log_debug_impl(v63, v64, v65, "  > Check %@", v66, 0xCu);
            }
          }

          pilotIdentifier = [v11 pilotIdentifier];
          copilotIdentifier = [v11 copilotIdentifier];
          fusedControllerIdentifier = [v11 fusedControllerIdentifier];
          v16 = fusedControllerIdentifier;
          if (pilotIdentifier && copilotIdentifier && fusedControllerIdentifier)
          {
            v75 = pilotIdentifier;
            v76 = copilotIdentifier;
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v17 = v71;
            v18 = [v17 countByEnumeratingWithState:&v82 objects:v91 count:16];
            v77 = v16;
            if (v18)
            {
              v19 = v18;
              v20 = *v83;
              while (2)
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v83 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v82 + 1) + 8 * i);
                  deviceDependencies = [v22 deviceDependencies];
                  v24 = [deviceDependencies count];

                  if (v24 == 1)
                  {
                    deviceIdentifier = [v22 deviceIdentifier];
                    pilotIdentifier2 = [v11 pilotIdentifier];
                    v27 = [deviceIdentifier isEqual:pilotIdentifier2];

                    if (v27)
                    {
                      v28 = v22;
                      goto LABEL_26;
                    }
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v82 objects:v91 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }

              v28 = 0;
LABEL_26:
              v16 = v77;
            }

            else
            {
              v28 = 0;
            }

            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v31 = v17;
            v32 = [v31 countByEnumeratingWithState:&v78 objects:v90 count:16];
            if (v32)
            {
              v33 = v32;
              v74 = v28;
              v34 = *v79;
              while (2)
              {
                for (j = 0; j != v33; ++j)
                {
                  if (*v79 != v34)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v36 = *(*(&v78 + 1) + 8 * j);
                  deviceDependencies2 = [v36 deviceDependencies];
                  v38 = [deviceDependencies2 count];

                  if (v38 == 1)
                  {
                    deviceIdentifier2 = [v36 deviceIdentifier];
                    copilotIdentifier2 = [v11 copilotIdentifier];
                    v41 = [deviceIdentifier2 isEqual:copilotIdentifier2];

                    if (v41)
                    {
                      v42 = v36;
                      goto LABEL_39;
                    }
                  }
                }

                v33 = [v31 countByEnumeratingWithState:&v78 objects:v90 count:16];
                if (v33)
                {
                  continue;
                }

                break;
              }

              v42 = 0;
LABEL_39:
              v16 = v77;
              v28 = v74;
            }

            else
            {
              v42 = 0;
            }

            pilotIdentifier = v75;
            copilotIdentifier = v76;
            if (v28)
            {
              if (v42)
              {
                v45 = [v28 isEqual:v42];
                if (!v45)
                {
                  [v31 removeObject:v28];
                  [v31 removeObject:v42];
                  v48 = [v28 mutableCopy];
                  [v48 setIdentifier:v16];
                  [v48 setDeviceIdentifier:v16];
                  deviceDependencies3 = [v48 deviceDependencies];
                  deviceDependencies4 = [v42 deviceDependencies];
                  firstObject = [deviceDependencies4 firstObject];
                  v57 = [deviceDependencies3 arrayByAddingObject:firstObject];
                  [v48 setDeviceDependencies:v57];

                  [v48 setTransient:1];
                  [v48 setPriority:20];
                  v58 = [v48 copy];
                  v60 = gc_isInternalBuild(v58, v59);
                  if (v60)
                  {
                    v62 = getGCLogger(v60);
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = v68;
                      v94 = v58;
                      _os_log_debug_impl(&dword_1D2CD5000, v62, OS_LOG_TYPE_DEBUG, "  > Register configuration %@", buf, 0xCu);
                    }
                  }

                  [*(selfCopy + 104) addObject:v58];
                  [*(selfCopy + 72) addObject:v58];

                  copilotIdentifier = v76;
                  goto LABEL_56;
                }

                v47 = gc_isInternalBuild(v45, v46);
                if (v47)
                {
                  v48 = getGCLogger(v47);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                  {
                    OUTLINED_FUNCTION_14();
                    v50 = v48;
                    v51 = "  > (!) Pilot and co-pilot configurations are the same.";
                    goto LABEL_53;
                  }

LABEL_56:
                }

LABEL_57:

                v8 = v72;
                v9 = v70;
                goto LABEL_58;
              }

              v53 = gc_isInternalBuild(v43, v44);
              if (!v53)
              {
                goto LABEL_57;
              }

              v48 = getGCLogger(v53);
              if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_56;
              }

              OUTLINED_FUNCTION_14();
              v50 = v48;
              v51 = "  > (!) Did not find co-pilot configuration";
            }

            else
            {
              v52 = gc_isInternalBuild(v43, v44);
              if (!v52)
              {
                goto LABEL_57;
              }

              v48 = getGCLogger(v52);
              if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_56;
              }

              OUTLINED_FUNCTION_14();
              v50 = v48;
              v51 = "  > (!) Did not find pilot configuration";
            }

LABEL_53:
            _os_log_debug_impl(&dword_1D2CD5000, v50, OS_LOG_TYPE_DEBUG, v51, v49, 2u);
            goto LABEL_56;
          }

          v29 = gc_isInternalBuild(fusedControllerIdentifier, v15);
          if (!v29)
          {
            goto LABEL_59;
          }

          v28 = getGCLogger(v29);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_14();
            _os_log_debug_impl(&dword_1D2CD5000, v28, OS_LOG_TYPE_DEBUG, "  > (!) Missing data", v30, 2u);
          }

LABEL_58:

LABEL_59:
          ++v10;
        }

        while (v10 != v8);
        v5 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
        v8 = v5;
      }

      while (v5);
    }

    os_unfair_lock_unlock((selfCopy + 64));
  }
}

- (void)_onqueue_registerPhysicalDevice:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_onqueue_registerPhysicalDevice:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_onqueue_unregisterPhysicalDevice:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_onqueue_registerLogicalDevice:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_onqueue_registerLogicalDevice:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_onqueue_unregisterLogicalDevice:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)addConfiguration:(void *)a1 replaceExisting:.cold.1(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = [a1 debugDescription];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)addConfiguration:(uint64_t)a1 replaceExisting:.cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)updateConfiguration:(void *)a1 .cold.1(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = [a1 debugDescription];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)updateConfiguration:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)removeConfigurationWithIdentifier:(void *)a1 .cold.1(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = [a1 debugDescription];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)removeConfigurationWithIdentifier:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)onHIDServiceAdded:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_DEBUG, "Ignoring added notification for HID service %@, because it is already known.", v1, 0xCu);
}

- (void)onHIDServiceAdded:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)onHIDServiceAdded:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)onHIDServiceRemoved:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

@end