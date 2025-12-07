@interface _GCDefaultPhysicalDevice
+ (id)identifierForService:(id)service;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)sensorsActive;
- (BOOL)supportsAdaptiveTriggers;
- (BOOL)supportsBattery;
- (BOOL)supportsHapticCapabilities;
- (BOOL)supportsLight;
- (BOOL)supportsMotion;
- (BOOL)supportsPlayerIndicator;
- (GCDeviceBattery)battery;
- (GCDeviceLight)light;
- (GCHapticCapabilityGraph)hapticCapabilityGraph;
- (NSArray)hapticEngines;
- (NSArray)triggerStatuses;
- (NSString)debugDescription;
- (NSString)description;
- (_GCDefaultPhysicalDevice)init;
- (_GCDefaultPhysicalDevice)initWithHIDDevice:(id)device manager:(id)manager;
- (_GCDefaultPhysicalDeviceDelegate)delegate;
- (_GCDeviceManager)manager;
- (_GCGamepadEventSourceDescription)gamepadEventSource;
- (_GCMotionEventSourceDescription)motionEventSource;
- (id)deviceAdaptiveTriggersComponentStatusUpdatedHandler;
- (id)deviceAdaptiveTriggersServiceConnectedHandler;
- (id)deviceBatteryComponentBatteryUpdatedHandler;
- (id)deviceBatteryServiceConnectedHandler;
- (id)deviceLightServiceConnectedHandler;
- (id)deviceMotionServiceConnectedHandler;
- (id)deviceSystemGestureTriggeredHandler;
- (id)propertyForKey:(id)key;
- (id)redactedDescription;
- (int64_t)indicatedPlayerIndex;
- (void)_displayBatteryAlertIfNeededForBatteryLevel:(char)level charging:;
- (void)_updatePowerSourceWithBatteryLevel:(uint64_t)level charging:(uint64_t)charging;
- (void)_workaround_MFiCombinedHomeVendorButton:(id)button;
- (void)_workaround_backbone_97462229:(id)_workaround_backbone_97462229;
- (void)createPowerSource;
- (void)dealloc;
- (void)eaAccessoriesDidChange;
- (void)handleButton:(unsigned int)button gesture:(unint64_t)gesture;
- (void)refreshHomeButtonConfiguration;
- (void)requestIdleDisconnect:(id)disconnect;
- (void)setAdaptiveTriggersPayload:(id)payload forIndex:(int)index;
- (void)setDeviceAdaptiveTriggersComponentStatusUpdatedHandler:(id)handler;
- (void)setDeviceAdaptiveTriggersServiceConnectedHandler:(id)handler;
- (void)setDeviceBatteryComponentBatteryUpdatedHandler:(id)handler;
- (void)setDeviceBatteryServiceConnectedHandler:(id)handler;
- (void)setDeviceLightServiceConnectedHandler:(id)handler;
- (void)setDeviceMotionServiceConnectedHandler:(id)handler;
- (void)setDeviceSystemGestureTriggeredHandler:(id)handler;
- (void)setDriverConnection:(id)connection;
- (void)setFilterConnection:(id)connection;
- (void)setIndicatedPlayerIndex:(int64_t)index;
- (void)setLight:(id)light;
- (void)setSensorsActive:(BOOL)active;
- (void)updateAdaptiveTriggerStatusWithLeftMode:(unsigned __int8)mode leftStatus:(unsigned __int8)status leftArmPosition:(unsigned __int8)position rightMode:(unsigned __int8)rightMode rightStatus:(unsigned __int8)rightStatus rightArmPosition:(unsigned __int8)armPosition;
- (void)updateBattery:(unsigned __int8)battery isCharging:(BOOL)charging;
- (void)updateGlyphFlags;
@end

@implementation _GCDefaultPhysicalDevice

- (_GCDefaultPhysicalDevice)initWithHIDDevice:(id)device manager:(id)manager
{
  deviceCopy = device;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = _GCDefaultPhysicalDevice;
  v9 = [(_GCDefaultPhysicalDevice *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceInfo, device);
    objc_storeWeak(&v10->_manager, managerCopy);
    v11 = [objc_opt_class() identifierForService:deviceCopy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_cachedGlyphFlags = 0;
    [(_GCDefaultPhysicalDevice *)v10 _workaround_backbone_97462229:deviceCopy];
    [(_GCDefaultPhysicalDevice *)v10 _workaround_MFiCombinedHomeVendorButton:deviceCopy];
  }

  return v10;
}

- (void)_workaround_backbone_97462229:(id)_workaround_backbone_97462229
{
  _workaround_backbone_97462229Copy = _workaround_backbone_97462229;
  v5 = [_workaround_backbone_97462229Copy numberPropertyForKey:@"VendorID"];
  v6 = [_workaround_backbone_97462229Copy numberPropertyForKey:@"ProductID"];

  if ([v5 intValue] == 5901 && (v7 = objc_msgSend(v6, "intValue"), v7 == 1359) || (v7 = objc_msgSend(v5, "intValue"), v7 == 13706))
  {
    isInternalBuild = gc_isInternalBuild(v7, v8);
    if (isInternalBuild)
    {
      [_GCDefaultPhysicalDevice _workaround_backbone_97462229:?];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_eaAccessoriesDidChange name:*MEMORY[0x1E6966D70] object:0];

    [GCEAAccessoryManagerWrapper registerForLocalNotificationsWithObserver:self];
  }
}

- (void)_workaround_MFiCombinedHomeVendorButton:(id)button
{
  buttonCopy = button;
  v5 = [buttonCopy numberPropertyForKey:@"VendorID"];
  v6 = [buttonCopy numberPropertyForKey:@"ProductID"];

  intValue = [v5 intValue];
  if (intValue == 13706 || [v5 intValue] == 5901 && (intValue = objc_msgSend(v6, "intValue"), intValue == 1359) || objc_msgSend(v5, "intValue") == 5901 && (intValue = objc_msgSend(v6, "intValue"), intValue == 1358))
  {
    isInternalBuild = gc_isInternalBuild(intValue, v8);
    if (isInternalBuild)
    {
      v13 = getGCLogger(isInternalBuild);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v14 = "Backbone detected, deploying HOME button workaround...";
        v15 = buf;
        goto LABEL_15;
      }

LABEL_16:
    }
  }

  else
  {
    intValue2 = [v5 intValue];
    if (intValue2 != 1155)
    {
      goto LABEL_4;
    }

    v12 = gc_isInternalBuild(intValue2, v11);
    if (v12)
    {
      v13 = getGCLogger(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v16 = 0;
        v14 = "ELO detected, deploying HOME button workaround...";
        v15 = &v16;
LABEL_15:
        _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  self->_hasCombinedMFiHomeVendorButton = 1;
LABEL_4:
}

- (_GCDefaultPhysicalDevice)init
{
  [(_GCDefaultPhysicalDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  batteryAlertTestNotificationToken = self->_batteryAlertTestNotificationToken;
  if (batteryAlertTestNotificationToken)
  {
    notify_cancel(batteryAlertTestNotificationToken);
    self->_batteryAlertTestNotificationToken = 0;
  }

  powerSourceProperties = self->_powerSourceProperties;
  if (powerSourceProperties)
  {
    CFRelease(powerSourceProperties);
    self->_powerSourceProperties = 0;
  }

  if (self->_powerSourceID)
  {
    IOPSReleasePowerSource();
    self->_powerSourceID = 0;
  }

  [GCEAAccessoryManagerWrapper unregisterForLocalNotificationsWithObserver:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6966D70] object:0];

  v6.receiver = self;
  v6.super_class = _GCDefaultPhysicalDevice;
  [(_GCDefaultPhysicalDevice *)&v6 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = protocolCopy;
  if (&unk_1F4E9B320 == protocolCopy)
  {
    supportsGamepad = [(_GCDefaultPhysicalDevice *)self supportsGamepad];
  }

  else if (&unk_1F4E9B3C8 == protocolCopy)
  {
    supportsGamepad = [(_GCDefaultPhysicalDevice *)self supportsPlayerIndicator];
  }

  else if (&unk_1F4E9FF28 == protocolCopy)
  {
    supportsGamepad = [(_GCDefaultPhysicalDevice *)self supportsLight];
  }

  else if (&unk_1F4E9FE68 == protocolCopy)
  {
    supportsGamepad = [(_GCDefaultPhysicalDevice *)self supportsAdaptiveTriggers];
  }

  else if (&unk_1F4E9B580 == protocolCopy)
  {
    supportsGamepad = [(_GCDefaultPhysicalDevice *)self supportsHapticCapabilities];
  }

  else if (&unk_1F4EA0008 == protocolCopy)
  {
    supportsGamepad = [(_GCDefaultPhysicalDevice *)self supportsMotion];
  }

  else if (&unk_1F4E9B500 == protocolCopy)
  {
    supportsGamepad = [(_GCDefaultPhysicalDevice *)self supportsBattery];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _GCDefaultPhysicalDevice;
    supportsGamepad = [(_GCDefaultPhysicalDevice *)&v9 conformsToProtocol:protocolCopy];
  }

  v7 = supportsGamepad;

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = self->_identifier;
  registryID = [(GCHIDServiceInfo *)self->_serviceInfo registryID];
  v7 = [v3 stringWithFormat:@"<%@ '%@' registryID = %@>", v4, identifier, registryID];

  return v7;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [self->_identifier hash];
  registryID = [(GCHIDServiceInfo *)self->_serviceInfo registryID];
  v7 = [v3 stringWithFormat:@"<%@ '#%llx' registryID = %@>", v4, v5, registryID];

  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = self->_identifier;
  registryID = [(GCHIDServiceInfo *)self->_serviceInfo registryID];
  v8 = [v3 stringWithFormat:@"<%@ %p '%@' registryID = %@>", v5, self, identifier, registryID];

  return v8;
}

- (void)setFilterConnection:(id)connection
{
  connectionCopy = connection;
  filterConnectionInvalidationRegistration = self->_filterConnectionInvalidationRegistration;
  self->_filterConnectionInvalidationRegistration = 0;

  filterConnection = self->_filterConnection;
  self->_filterConnection = 0;

  objc_storeStrong(&self->_filterConnection, connection);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48___GCDefaultPhysicalDevice_setFilterConnection___block_invoke;
  v16[3] = &unk_1E8418C28;
  v16[4] = self;
  v8 = [connectionCopy addInvalidationHandler:v16];
  v9 = self->_filterConnectionInvalidationRegistration;
  self->_filterConnectionInvalidationRegistration = v8;

  objc_initWeak(&location, self);
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __48___GCDefaultPhysicalDevice_setFilterConnection___block_invoke_2;
  activity_block[3] = &unk_1E8419CD8;
  v12 = connectionCopy;
  selfCopy = self;
  v10 = connectionCopy;
  objc_copyWeak(&v14, &location);
  _os_activity_initiate(&dword_1D2CD5000, "Connect Game Intent Service", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

- (void)setDriverConnection:(id)connection
{
  connectionCopy = connection;
  driverConnectionInvalidationRegistration = self->_driverConnectionInvalidationRegistration;
  self->_driverConnectionInvalidationRegistration = 0;

  driverConnection = self->_driverConnection;
  self->_driverConnection = 0;

  objc_storeStrong(&self->_driverConnection, connection);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke;
  v36[3] = &unk_1E8418C28;
  v36[4] = self;
  v8 = [connectionCopy addInvalidationHandler:v36];
  v9 = self->_driverConnectionInvalidationRegistration;
  self->_driverConnectionInvalidationRegistration = v8;

  objc_initWeak(&location, self);
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_2;
  activity_block[3] = &unk_1E8419CD8;
  v10 = connectionCopy;
  v32 = v10;
  selfCopy = self;
  objc_copyWeak(&v34, &location);
  _os_activity_initiate(&dword_1D2CD5000, "Connect Light Service", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  objc_destroyWeak(&v34);

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_2_245;
  v27[3] = &unk_1E8419CD8;
  v11 = v10;
  v28 = v11;
  selfCopy2 = self;
  objc_copyWeak(&v30, &location);
  _os_activity_initiate(&dword_1D2CD5000, "Connect Adaptive Triggers Service", OS_ACTIVITY_FLAG_DEFAULT, v27);
  objc_destroyWeak(&v30);

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_2_249;
  v23[3] = &unk_1E8419CD8;
  v12 = v11;
  v24 = v12;
  selfCopy3 = self;
  objc_copyWeak(&v26, &location);
  _os_activity_initiate(&dword_1D2CD5000, "Connect Motion Service", OS_ACTIVITY_FLAG_DEFAULT, v23);
  objc_destroyWeak(&v26);

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_252;
  v19[3] = &unk_1E8419CD8;
  v13 = v12;
  v20 = v13;
  selfCopy4 = self;
  objc_copyWeak(&v22, &location);
  _os_activity_initiate(&dword_1D2CD5000, "Connect Battery Service", OS_ACTIVITY_FLAG_DEFAULT, v19);
  objc_destroyWeak(&v22);

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_2_256;
  v15[3] = &unk_1E8419CD8;
  v16 = v13;
  selfCopy5 = self;
  v14 = v13;
  objc_copyWeak(&v18, &location);
  _os_activity_initiate(&dword_1D2CD5000, "Connect Idle Service", OS_ACTIVITY_FLAG_DEFAULT, v15);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  v5 = [(__CFString *)keyCopy isEqualToString:@"RegistryID"];
  serviceInfo = self->_serviceInfo;
  if (v5)
  {
    registryID = [(GCHIDServiceInfo *)serviceInfo registryID];
  }

  else
  {
    registryID = IOHIDServiceClientCopyProperty([(GCHIDServiceInfo *)serviceInfo service], keyCopy);
  }

  v8 = registryID;

  return v8;
}

+ (id)identifierForService:(id)service
{
  serviceCopy = service;
  v4 = [serviceCopy stringPropertyForKey:@"Transport"];
  v5 = [serviceCopy stringPropertyForKey:@"PhysicalDeviceUniqueID"];
  if (v5 && ([v4 isEqualToString:@"iAP"] & 1) == 0)
  {
    v9 = v5;
  }

  else
  {
    v6 = [serviceCopy stringPropertyForKey:@"SerialNumber"];
    v7 = v6;
    if (v6)
    {
      uUID = v6;
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
    }

    v9 = uUID;
  }

  return v9;
}

- (void)eaAccessoriesDidChange
{
  cachedGlyphFlags = self->_cachedGlyphFlags;
  [(_GCDefaultPhysicalDevice *)self updateGlyphFlags];
  if (cachedGlyphFlags != self->_cachedGlyphFlags)
  {
    self->_cachedGlyphFlags = cachedGlyphFlags;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"GCRefreshPhysicalDeviceConfigurationNotification" object:self];
  }
}

- (void)updateGlyphFlags
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (_GCDeviceManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (_GCDefaultPhysicalDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_GCGamepadEventSourceDescription)gamepadEventSource
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_GCCControllerManagerDescription);
  v4 = [[_GCCControllerHIDServiceInfoDescription alloc] initWithServiceInfo:self->_serviceInfo];
  v5 = [[_GCKeyboardEventHIDAdapterDescription alloc] initWithSource:v3 service:v4];
  v6 = [[_GCGamepadEventGamepadHIDAdapterDescription alloc] initWithSource:v3 service:v4];
  v7 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v9 physicalDeviceUsesACHomeForMenu:self];

  if (!v10)
  {
LABEL_5:
    [v7 mapUsagePage:12 usage:516 toGamepadElement:23];
    [v7 mapUsagePage:12 usage:521 toGamepadElement:24];
    v11 = v7;
    v12 = 178;
    v13 = 40;
    goto LABEL_6;
  }

  v11 = v7;
  v12 = 547;
  v13 = 23;
LABEL_6:
  [v11 mapUsagePage:12 usage:v12 toGamepadElement:v13];
  v14 = [[_GCGamepadEventKeyboardEventAdapterDescription alloc] initWithConfiguration:v7 source:v5];
  v15 = [[_GCGamepadEventFusionConfig alloc] initWithSourceCount:2];
  for (i = 0; i != 47; ++i)
  {
    v17 = i > 0x28 || ((1 << i) & 0x10001800000) == 0;
    [(_GCGamepadEventFusionConfig *)v15 setPassRule:1 forElement:i forSourceAtIndex:v17];
  }

  v18 = [_GCGamepadEventFusionDescription alloc];
  v22[0] = v14;
  v22[1] = v6;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v20 = [(_GCGamepadEventFusionDescription *)v18 initWithConfiguration:v15 sources:v19];

  return v20;
}

- (BOOL)supportsMotion
{
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate physicalDeviceSupportsMotion:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)deviceMotionServiceConnectedHandler
{
  v2 = _Block_copy(self->_motionComponentServiceConnectedHandler);

  return v2;
}

- (void)setDeviceMotionServiceConnectedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  motionComponentServiceConnectedHandler = self->_motionComponentServiceConnectedHandler;
  self->_motionComponentServiceConnectedHandler = v4;

  if (self->_motionComponentServiceConnectedHandler)
  {
    if (self->_motionServiceServer)
    {
      objc_initWeak(&location, self);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __75___GCDefaultPhysicalDevice_Motion__setDeviceMotionServiceConnectedHandler___block_invoke;
      v6[3] = &unk_1E8418D18;
      objc_copyWeak(&v7, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v6);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

- (_GCMotionEventSourceDescription)motionEventSource
{
  v3 = objc_alloc_init(_GCCControllerManagerDescription);
  v4 = [[_GCCControllerHIDServiceInfoDescription alloc] initWithServiceInfo:self->_serviceInfo];
  v5 = [[_GCMotionEventHIDAdapterDescription alloc] initWithSource:v3 service:v4];

  return v5;
}

- (BOOL)sensorsActive
{
  v3 = dispatch_semaphore_create(0);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49___GCDefaultPhysicalDevice_Motion__sensorsActive__block_invoke;
  v8[3] = &unk_1E841A730;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [delegate physicalDevice:self getSensorsActiveWithReply:v8];

  v6 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v5, v6);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

- (void)setSensorsActive:(BOOL)active
{
  activeCopy = active;
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  [delegate physicalDevice:self setSensorsActive:activeCopy];
}

- (BOOL)supportsPlayerIndicator
{
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (int64_t)indicatedPlayerIndex
{
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  v4 = [delegate physicalDeviceGetIndicatedPlayerIndex:self];

  return v4;
}

- (void)setIndicatedPlayerIndex:(int64_t)index
{
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  [delegate physicalDevice:self setIndicatedPlayerIndex:index];
}

- (BOOL)supportsLight
{
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)deviceLightServiceConnectedHandler
{
  v2 = _Block_copy(self->_lightComponentServiceConnectedHandler);

  return v2;
}

- (void)setDeviceLightServiceConnectedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  lightComponentServiceConnectedHandler = self->_lightComponentServiceConnectedHandler;
  self->_lightComponentServiceConnectedHandler = v4;

  if (self->_lightComponentServiceConnectedHandler)
  {
    if (self->_lightServiceServer)
    {
      objc_initWeak(&location, self);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __73___GCDefaultPhysicalDevice_Light__setDeviceLightServiceConnectedHandler___block_invoke;
      v6[3] = &unk_1E8418D18;
      objc_copyWeak(&v7, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v6);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

- (GCDeviceLight)light
{
  v3 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40___GCDefaultPhysicalDevice_Light__light__block_invoke;
  v9[3] = &unk_1E841A758;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  [delegate physicalDevice:self getLightWithReply:v9];

  v6 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setLight:(id)light
{
  lightCopy = light;
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  [delegate physicalDevice:self setLight:lightCopy];
}

- (BOOL)supportsAdaptiveTriggers
{
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)deviceAdaptiveTriggersServiceConnectedHandler
{
  v2 = _Block_copy(self->_adaptiveTriggersComponentServiceConnectedHandler);

  return v2;
}

- (void)setDeviceAdaptiveTriggersServiceConnectedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  adaptiveTriggersComponentServiceConnectedHandler = self->_adaptiveTriggersComponentServiceConnectedHandler;
  self->_adaptiveTriggersComponentServiceConnectedHandler = v4;

  if (self->_adaptiveTriggersComponentServiceConnectedHandler)
  {
    if (self->_adaptiveTriggersServiceServer)
    {
      objc_initWeak(&location, self);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __95___GCDefaultPhysicalDevice_AdaptiveTriggers__setDeviceAdaptiveTriggersServiceConnectedHandler___block_invoke;
      v6[3] = &unk_1E8418D18;
      objc_copyWeak(&v7, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v6);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

- (void)setAdaptiveTriggersPayload:(id)payload forIndex:(int)index
{
  v4 = *&index;
  payloadCopy = payload;
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  [delegate physicalDevice:self setAdaptiveTriggersPayload:payloadCopy forIndex:v4];
}

- (id)deviceAdaptiveTriggersComponentStatusUpdatedHandler
{
  v2 = _Block_copy(self->_adaptiveTriggersComponentStatusUpdatedHandler);

  return v2;
}

- (void)setDeviceAdaptiveTriggersComponentStatusUpdatedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  adaptiveTriggersComponentStatusUpdatedHandler = self->_adaptiveTriggersComponentStatusUpdatedHandler;
  self->_adaptiveTriggersComponentStatusUpdatedHandler = v4;
}

- (NSArray)triggerStatuses
{
  v3 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61___GCDefaultPhysicalDevice_AdaptiveTriggers__triggerStatuses__block_invoke;
  v9[3] = &unk_1E841A780;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  [delegate physicalDevice:self getAdaptiveTriggersStatusesWithReply:v9];

  v6 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)updateAdaptiveTriggerStatusWithLeftMode:(unsigned __int8)mode leftStatus:(unsigned __int8)status leftArmPosition:(unsigned __int8)position rightMode:(unsigned __int8)rightMode rightStatus:(unsigned __int8)rightStatus rightArmPosition:(unsigned __int8)armPosition
{
  if (self->_adaptiveTriggersComponentStatusUpdatedHandler)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __158___GCDefaultPhysicalDevice_AdaptiveTriggersClient__updateAdaptiveTriggerStatusWithLeftMode_leftStatus_leftArmPosition_rightMode_rightStatus_rightArmPosition___block_invoke;
    block[3] = &unk_1E841A7A8;
    objc_copyWeak(&v15, &location);
    statusCopy = status;
    positionCopy = position;
    modeCopy = mode;
    rightStatusCopy = rightStatus;
    armPositionCopy = armPosition;
    rightModeCopy = rightMode;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (BOOL)supportsBattery
{
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate physicalDeviceSupportsBattery:self])
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)deviceBatteryServiceConnectedHandler
{
  v2 = _Block_copy(self->_batteryComponentServiceConnectedHandler);

  return v2;
}

- (void)setDeviceBatteryServiceConnectedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  batteryComponentServiceConnectedHandler = self->_batteryComponentServiceConnectedHandler;
  self->_batteryComponentServiceConnectedHandler = v4;

  if (self->_batteryComponentServiceConnectedHandler)
  {
    if (self->_batteryServiceServer)
    {
      objc_initWeak(&location, self);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __77___GCDefaultPhysicalDevice_Battery__setDeviceBatteryServiceConnectedHandler___block_invoke;
      v6[3] = &unk_1E8418D18;
      objc_copyWeak(&v7, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v6);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

- (id)deviceBatteryComponentBatteryUpdatedHandler
{
  v2 = _Block_copy(self->_batteryComponentBatteryUpdatedHandler);

  return v2;
}

- (void)setDeviceBatteryComponentBatteryUpdatedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  batteryComponentBatteryUpdatedHandler = self->_batteryComponentBatteryUpdatedHandler;
  self->_batteryComponentBatteryUpdatedHandler = v4;
}

- (GCDeviceBattery)battery
{
  v3 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44___GCDefaultPhysicalDevice_Battery__battery__block_invoke;
  v9[3] = &unk_1E841A7D0;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  [delegate physicalDevice:self getBatteryWithReply:v9];

  v6 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)createPowerSource
{
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate physicalDeviceShouldPublishPowerSource:self])
  {
    if (self->_powerSourceID || (v5 = IOPSCreatePowerSource(), v7 = v5, !v5) && self->_powerSourceID)
    {
      powerSourceProperties = self->_powerSourceProperties;
      if (powerSourceProperties)
      {
        CFDictionaryRemoveAllValues(powerSourceProperties);
      }

      else
      {
        self->_powerSourceProperties = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      }

      v8 = [(_GCDefaultPhysicalDevice *)self propertyForKey:@"Transport"];
      if (v8)
      {
        CFDictionarySetValue(self->_powerSourceProperties, @"Transport Type", v8);
      }

      v9 = [(_GCDefaultPhysicalDevice *)self propertyForKey:@"Product"];
      if (v9)
      {
        CFDictionarySetValue(self->_powerSourceProperties, @"Name", v9);
      }

      v10 = [(_GCDefaultPhysicalDevice *)self propertyForKey:@"VendorID"];
      if (v10)
      {
        CFDictionarySetValue(self->_powerSourceProperties, @"Vendor ID", v10);
      }

      v11 = [(_GCDefaultPhysicalDevice *)self propertyForKey:@"ProductID"];
      if (v11)
      {
        CFDictionarySetValue(self->_powerSourceProperties, @"Product ID", v11);
      }

      v12 = [(_GCDefaultPhysicalDevice *)self propertyForKey:@"ModelNumber"];
      if (v12)
      {
        CFDictionarySetValue(self->_powerSourceProperties, @"Model Number", v12);
      }

      v13 = [(_GCDefaultPhysicalDevice *)self propertyForKey:@"SerialNumber"];
      if (v13)
      {
        CFDictionarySetValue(self->_powerSourceProperties, @"Accessory Identifier", v13);
      }

      CFDictionarySetValue(self->_powerSourceProperties, @"Accessory Category", @"Game Controller");
      CFDictionarySetValue(self->_powerSourceProperties, @"Is Present", *MEMORY[0x1E695E4D0]);
      CFDictionarySetValue(self->_powerSourceProperties, @"Type", @"Accessory Source");

      CFDictionarySetValue(self->_powerSourceProperties, @"Is Charging", *MEMORY[0x1E695E4C0]);
      CFDictionarySetValue(self->_powerSourceProperties, @"Power Source State", @"Battery Power");
      CFDictionarySetValue(self->_powerSourceProperties, @"Max Capacity", &unk_1F4E8E378);
      CFDictionarySetValue(self->_powerSourceProperties, @"Current Capacity", &unk_1F4E8E378);
      v14 = IOPSSetPowerSourceDetails();
      if (v14)
      {
        v16 = v14;
        if (gc_isInternalBuild(v14, v15))
        {
          [(_GCDefaultPhysicalDevice(Battery) *)v16 createPowerSource];
        }
      }

      objc_initWeak(&location, self);
      batteryServiceServer = [(_GCDefaultPhysicalDevice *)self batteryServiceServer];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __54___GCDefaultPhysicalDevice_Battery__createPowerSource__block_invoke;
      v25[3] = &unk_1E841A7F8;
      objc_copyWeak(&v26, &location);
      [batteryServiceServer readBatteryWithReply:v25];

      isInternalBuild = gc_isInternalBuild(v18, v19);
      if (isInternalBuild)
      {
        v22 = getGCLogger(isInternalBuild);
        [(_GCDefaultPhysicalDevice(Battery) *)v22 createPowerSource];
      }

      if (os_variant_allows_internal_security_policies())
      {
        v21 = dispatch_get_global_queue(21, 0);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __54___GCDefaultPhysicalDevice_Battery__createPowerSource__block_invoke_496;
        handler[3] = &unk_1E8419C10;
        objc_copyWeak(&v24, &location);
        notify_register_dispatch("com.apple.gamecontroller.simulatedbatteryalert", &self->_batteryAlertTestNotificationToken, v21, handler);

        objc_destroyWeak(&v24);
      }

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    else if (gc_isInternalBuild(v5, v6))
    {
      [(_GCDefaultPhysicalDevice(Battery) *)v7 createPowerSource];
    }
  }
}

- (void)_displayBatteryAlertIfNeededForBatteryLevel:(char)level charging:
{
  if (self)
  {
    if ((level & 1) == 0 && (*(self + 88) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((self + 152));
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = objc_loadWeakRetained((self + 152));
        v8 = [v7 physicalDeviceShouldDisplayAlertAtBatteryLevel:self];

        if ((a2 - 1) < v8)
        {
          *(self + 88) = 1;

          [self _displayBatteryAlertForBatteryLevel:a2];
        }
      }
    }
  }
}

- (BOOL)supportsHapticCapabilities
{
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate physicalDeviceGetHapticCapabilities:self];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 count] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)hapticEngines
{
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  v4 = [delegate physicalDeviceGetHapticCapabilities:self];

  return v4;
}

- (GCHapticCapabilityGraph)hapticCapabilityGraph
{
  delegate = [(_GCDefaultPhysicalDevice *)self delegate];
  v4 = [delegate physicalDeviceGetHapticCapabilityGraph:self];

  return v4;
}

- (void)refreshHomeButtonConfiguration
{
  v30 = *MEMORY[0x1E69E9840];
  enableHomeButtonGestures = self->_enableHomeButtonGestures;
  forwardHomeButtonPress = self->_forwardHomeButtonPress;
  if (self->_enableHomeButtonGestures)
  {
    v5 = 16777479;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5 | (forwardHomeButtonPress << 7) | 0x160000;
  if (self->_enableHomeButtonGestures)
  {
    v7 = 18219015;
  }

  else
  {
    v7 = 18219009;
  }

  if (self->_forwardHomeButtonPress)
  {
    v7 = 1441921;
  }

  if (self->_hasCombinedMFiHomeVendorButton)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [v10 physicalDeviceUsesACHomeForMenu:self];

    if (v11)
    {
      v8 &= 0x1FFFFFEu;
    }
  }

  else
  {
  }

  v13 = _gc_log_physical_device(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    registryID = [(GCHIDServiceInfo *)self->_serviceInfo registryID];
    unsignedLongLongValue = [registryID unsignedLongLongValue];
    hasCombinedMFiHomeVendorButton = self->_hasCombinedMFiHomeVendorButton;
    v17 = v8;
    v18 = 134219264;
    v19 = unsignedLongLongValue;
    v20 = 1024;
    v21 = 786979;
    v22 = 1024;
    v23 = hasCombinedMFiHomeVendorButton;
    v24 = 2048;
    v25 = v8;
    v26 = 1024;
    v27 = enableHomeButtonGestures;
    v28 = 1024;
    v29 = forwardHomeButtonPress;
    _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply button:%#x (combined: %{BOOL}d) configuration:%#llx (system: %{BOOL}d, app: %{BOOL}d)", &v18, 0x2Eu);
  }

  else
  {
    v17 = v8;
  }

  [(GCGameIntentServiceServerInterface *)self->_gameIntentServiceServer setConfiguration:v17 forButton:786979];
}

- (id)deviceSystemGestureTriggeredHandler
{
  v2 = _Block_copy(self->_deviceSystemGestureTriggeredHandler);

  return v2;
}

- (void)setDeviceSystemGestureTriggeredHandler:(id)handler
{
  v4 = [handler copy];
  deviceSystemGestureTriggeredHandler = self->_deviceSystemGestureTriggeredHandler;
  self->_deviceSystemGestureTriggeredHandler = v4;
}

- (void)handleButton:(unsigned int)button gesture:(unint64_t)gesture
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = _gc_log_physical_device(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    registryID = [(GCHIDServiceInfo *)self->_serviceInfo registryID];
    *buf = 134218496;
    unsignedLongLongValue = [registryID unsignedLongLongValue];
    v13 = 1024;
    buttonCopy = button;
    v15 = 2048;
    gestureCopy = gesture;
    _os_log_impl(&dword_1D2CD5000, v7, OS_LOG_TYPE_DEFAULT, "[%#010llx] Handle button:%#x gesture:%zu", buf, 0x1Cu);
  }

  if (button == 786979 && gesture - 1 <= 1 && self->_deviceSystemGestureTriggeredHandler)
  {
    if (self->_hasCombinedMFiHomeVendorButton)
    {
      gesture = 1;
    }

    objc_initWeak(buf, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67___GCDefaultPhysicalDevice_GameIntentClient__handleButton_gesture___block_invoke;
    v9[3] = &unk_1E841A848;
    objc_copyWeak(v10, buf);
    v10[1] = gesture;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
    objc_destroyWeak(v10);
    objc_destroyWeak(buf);
  }
}

- (void)requestIdleDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  if (gc_isInternalBuild(disconnectCopy, v4))
  {
    [_GCDefaultPhysicalDevice(Idle) requestIdleDisconnect:disconnectCopy];
  }

  v5 = [_GCBluetoothDeviceIdentifier identifierWithHardwareAddressString:disconnectCopy];
  v6 = [[_GCBluetoothDeviceDisconnectionRequest alloc] initWithDeviceIdentifier:v5];
  [(_GCBluetoothDeviceDisconnectionRequest *)v6 performRequest:0];
}

- (void)_updatePowerSourceWithBatteryLevel:(uint64_t)level charging:(uint64_t)charging
{
  if (level)
  {
    if (*(level + 72))
    {
      v3 = *(level + 80);
      if (v3)
      {
        CFDictionarySetValue(v3, @"Is Charging", [MEMORY[0x1E696AD98] numberWithBool:?]);
        CFDictionarySetValue(*(level + 80), @"Max Capacity", &unk_1F4E8E390);
        CFDictionarySetValue(*(level + 80), @"Current Capacity", [MEMORY[0x1E696AD98] numberWithUnsignedChar:charging]);
        v5 = IOPSSetPowerSourceDetails();
        if (v5)
        {
          isInternalBuild = gc_isInternalBuild(v5, v6);
          if (isInternalBuild)
          {
            v8 = getGCLogger(isInternalBuild);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_1_0();
              _os_log_error_impl(v9, v10, OS_LOG_TYPE_ERROR, v11, v12, 8u);
            }
          }
        }
      }
    }
  }
}

- (void)updateBattery:(unsigned __int8)battery isCharging:(BOOL)charging
{
  batteryCopy = battery;
  if (self->_batteryComponentBatteryUpdatedHandler)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68___GCDefaultPhysicalDevice_BatteryClient__updateBattery_isCharging___block_invoke;
    block[3] = &unk_1E841A820;
    objc_copyWeak(&v8, &location);
    v9 = batteryCopy;
    chargingCopy = charging;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  [_GCDefaultPhysicalDevice _updatePowerSourceWithBatteryLevel:batteryCopy charging:?];
  [(_GCDefaultPhysicalDevice *)self _displayBatteryAlertIfNeededForBatteryLevel:batteryCopy charging:charging];
}

- (void)_workaround_backbone_97462229:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

@end