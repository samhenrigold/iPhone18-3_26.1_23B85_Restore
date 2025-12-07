@interface _GCDefaultLogicalDevice
- (BOOL)_addClient:(id)client;
- (NSSet)components;
- (NSSet)underlyingDevices;
- (NSString)debugDescription;
- (_GCDefaultLogicalDevice)init;
- (_GCDefaultLogicalDevice)initWithPhysicalDevice:(id)device configuration:(id)configuration manager:(id)manager;
- (_GCDefaultLogicalDeviceDelegate)delegate;
- (_GCDeviceManager)manager;
- (id)_makeControllerGamepadEventSource;
- (id)hapticDriver;
- (id)makeControllerForClient:(id)client;
- (id)makeSyntheticController;
- (id)persistentIdentifierForSettings;
- (uint64_t)updateAdaptiveTriggersForActiveClient;
- (void)_removeClient:(id)client;
- (void)activateLogical;
- (void)adaptiveTriggersXPCProxyServerEndpoint:(id)endpoint didReceiveAdaptiveTriggersChange:(id)change forIndex:(int)index;
- (void)deactivateLogical;
- (void)dealloc;
- (void)lightXPCProxyServerEndpoint:(id)endpoint didReceiveLightChange:(id)change;
- (void)motionXPCProxyServerEndpoint:(id)endpoint didReceiveSensorsActiveChange:(BOOL)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playerIndicatorXPCProxyServerEndpoint:(id)endpoint didReceivePlayerIndexChange:(int64_t)change;
- (void)setActiveApplicationPID:(int)d;
- (void)settingsDidChange;
- (void)startTrackingSessionForClient:(void *)client;
- (void)stopTrackingSessionForClient:(void *)client;
- (void)stopTrackingSessionsForAllClients;
- (void)systemGestureXPCProxyServerEndpoint:(void *)endpoint didSetSystemGestureStateForInput:(unsigned int)input enabled:;
- (void)updateAdaptiveTriggersForActiveClient;
- (void)updateAnalyticsForActiveClient;
- (void)updateLightForActiveClient;
- (void)updateSystemGestureStateForActiveClient;
- (void)updateSystemGestureStateForSettings;
@end

@implementation _GCDefaultLogicalDevice

- (_GCDefaultLogicalDevice)initWithPhysicalDevice:(id)device configuration:(id)configuration manager:(id)manager
{
  v199 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  configurationCopy = configuration;
  managerCopy = manager;
  v189.receiver = self;
  v189.super_class = _GCDefaultLogicalDevice;
  v11 = [(_GCDefaultLogicalDevice *)&v189 init];

  if (v11)
  {
    deviceIdentifier = [configurationCopy deviceIdentifier];
    identifier = v11->_identifier;
    v11->_identifier = deviceIdentifier;

    objc_storeStrong(&v11->_underlyingDevice, device);
    objc_storeStrong(&v11->_configuration, configuration);
    objc_storeWeak(&v11->_manager, managerCopy);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    clients = v11->_clients;
    v11->_clients = strongToStrongObjectsMapTable;

    v16 = objc_opt_new();
    pidToAnalytics = v11->_pidToAnalytics;
    v11->_pidToAnalytics = v16;

    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    components = [(_GCDefaultLogicalDevice *)v11 components];
    v19 = [components countByEnumeratingWithState:&v185 objects:v198 count:16];
    if (v19)
    {
      v20 = *v186;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v186 != v20)
          {
            objc_enumerationMutation(components);
          }

          v22 = *(*(&v185 + 1) + 8 * i);
          if ([v22 conformsToProtocol:&unk_1F4E9B3C8])
          {
            objc_storeStrong(&v11->_devicePlayerIndicatorComponent, v22);
          }
        }

        v19 = [components countByEnumeratingWithState:&v185 objects:v198 count:16];
      }

      while (v19);
    }

    if (v11->_devicePlayerIndicatorComponent)
    {
      v11->_indicatedPlayerIndex = -1;
      strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientPlayerIndicatorEndpoints = v11->_clientPlayerIndicatorEndpoints;
      v11->_clientPlayerIndicatorEndpoints = strongToStrongObjectsMapTable2;
    }

    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    components2 = [(_GCDefaultLogicalDevice *)v11 components];
    v26 = [components2 countByEnumeratingWithState:&v181 objects:v197 count:16];
    if (v26)
    {
      v27 = *v182;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v182 != v27)
          {
            objc_enumerationMutation(components2);
          }

          v29 = *(*(&v181 + 1) + 8 * j);
          if ([v29 conformsToProtocol:&unk_1F4E9FF28])
          {
            objc_storeStrong(&v11->_deviceLightComponent, v29);
          }
        }

        v26 = [components2 countByEnumeratingWithState:&v181 objects:v197 count:16];
      }

      while (v26);
    }

    if (v11->_deviceLightComponent)
    {
      v30 = dispatch_semaphore_create(0);
      v179[0] = MEMORY[0x1E69E9820];
      v179[1] = 3221225472;
      v179[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke;
      v179[3] = &unk_1E8418C28;
      v31 = v30;
      v180 = v31;
      v32 = [(_GCDeviceLightComponent *)v11->_deviceLightComponent setDeviceLightServiceConnectedHandler:v179];
      isInternalBuild = gc_isInternalBuild(v32, v33);
      if (isInternalBuild)
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:? configuration:? manager:?];
      }

      v35 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v31, v35);
      light = [(_GCDeviceLightComponent *)v11->_deviceLightComponent light];
      p_light = &v11->_light;
      light = v11->_light;
      v11->_light = light;

      if (!v11->_light)
      {
        v41 = gc_isInternalBuild(v39, v40);
        if (v41)
        {
          [_GCDefaultLogicalDevice initWithPhysicalDevice:v41 configuration:? manager:?];
        }

        v42 = [GCDeviceLight alloc];
        v43 = [GCColor alloc];
        LODWORD(v44) = 1056997505;
        LODWORD(v45) = 1040220289;
        LODWORD(v46) = 1017159841;
        v47 = [(GCColor *)v43 initWithRed:v44 green:v45 blue:v46];
        v48 = [(GCDeviceLight *)v42 initWithColor:v47];
        v49 = *p_light;
        *p_light = v48;
      }

      if (gc_isInternalBuild(v39, v40))
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:? configuration:? manager:?];
      }

      strongToStrongObjectsMapTable3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientLightEndpoints = v11->_clientLightEndpoints;
      v11->_clientLightEndpoints = strongToStrongObjectsMapTable3;
    }

    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    components3 = [(_GCDefaultLogicalDevice *)v11 components];
    v53 = [components3 countByEnumeratingWithState:&v175 objects:v196 count:16];
    if (v53)
    {
      v54 = *v176;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v176 != v54)
          {
            objc_enumerationMutation(components3);
          }

          v56 = *(*(&v175 + 1) + 8 * k);
          if ([v56 conformsToProtocol:&unk_1F4E9FE68])
          {
            objc_storeStrong(&v11->_deviceAdaptiveTriggersComponent, v56);
          }
        }

        v53 = [components3 countByEnumeratingWithState:&v175 objects:v196 count:16];
      }

      while (v53);
    }

    if (v11->_deviceAdaptiveTriggersComponent)
    {
      v57 = dispatch_semaphore_create(0);
      v173[0] = MEMORY[0x1E69E9820];
      v173[1] = 3221225472;
      v173[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_181;
      v173[3] = &unk_1E8418C28;
      v58 = v57;
      v174 = v58;
      v59 = [(_GCDeviceAdaptiveTriggersComponent *)v11->_deviceAdaptiveTriggersComponent setDeviceAdaptiveTriggersServiceConnectedHandler:v173];
      v61 = gc_isInternalBuild(v59, v60);
      if (v61)
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:v61 configuration:? manager:?];
      }

      v62 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v58, v62);
      triggerStatuses = [(_GCDeviceAdaptiveTriggersComponent *)v11->_deviceAdaptiveTriggersComponent triggerStatuses];
      p_adaptiveTriggerStatuses = &v11->_adaptiveTriggerStatuses;
      adaptiveTriggerStatuses = v11->_adaptiveTriggerStatuses;
      v11->_adaptiveTriggerStatuses = triggerStatuses;

      if (!v11->_adaptiveTriggerStatuses)
      {
        v68 = gc_isInternalBuild(v66, v67);
        if (v68)
        {
          [_GCDefaultLogicalDevice initWithPhysicalDevice:v68 configuration:? manager:?];
        }

        v69 = [[GCDeviceAdaptiveTriggersStatusPayload alloc] initFeedbackWithStatus:0 armPosition:0 mode:0];
        v195[0] = v69;
        v70 = [[GCDeviceAdaptiveTriggersStatusPayload alloc] initFeedbackWithStatus:0 armPosition:0 mode:0];
        v195[1] = v70;
        v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v195 count:2];
        v72 = *p_adaptiveTriggerStatuses;
        *p_adaptiveTriggerStatuses = v71;
      }

      if (gc_isInternalBuild(v66, v67))
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:? configuration:? manager:?];
      }

      strongToStrongObjectsMapTable4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientAdaptiveTriggersEndpoints = v11->_clientAdaptiveTriggersEndpoints;
      v11->_clientAdaptiveTriggersEndpoints = strongToStrongObjectsMapTable4;

      strongToStrongObjectsMapTable5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      pidToAdaptiveTriggersComponent = v11->_pidToAdaptiveTriggersComponent;
      v11->_pidToAdaptiveTriggersComponent = strongToStrongObjectsMapTable5;

      objc_initWeak(location, v11);
      v171[0] = MEMORY[0x1E69E9820];
      v171[1] = 3221225472;
      v171[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_184;
      v171[3] = &unk_1E841A5D8;
      objc_copyWeak(&v172, location);
      [(_GCDeviceAdaptiveTriggersComponent *)v11->_deviceAdaptiveTriggersComponent setDeviceAdaptiveTriggersComponentStatusUpdatedHandler:v171];
      objc_destroyWeak(&v172);
      objc_destroyWeak(location);
    }

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    components4 = [(_GCDefaultLogicalDevice *)v11 components];
    v78 = [components4 countByEnumeratingWithState:&v167 objects:v194 count:16];
    if (v78)
    {
      v79 = *v168;
      do
      {
        for (m = 0; m != v78; ++m)
        {
          if (*v168 != v79)
          {
            objc_enumerationMutation(components4);
          }

          v81 = *(*(&v167 + 1) + 8 * m);
          if ([v81 conformsToProtocol:&unk_1F4EA0008])
          {
            objc_storeStrong(&v11->_deviceMotionComponent, v81);
          }
        }

        v78 = [components4 countByEnumeratingWithState:&v167 objects:v194 count:16];
      }

      while (v78);
    }

    if (v11->_deviceMotionComponent)
    {
      v82 = dispatch_semaphore_create(0);
      v165[0] = MEMORY[0x1E69E9820];
      v165[1] = 3221225472;
      v165[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_2;
      v165[3] = &unk_1E8418C28;
      v83 = v82;
      v166 = v83;
      v84 = [(_GCDeviceMotionComponent *)v11->_deviceMotionComponent setDeviceMotionServiceConnectedHandler:v165];
      v86 = gc_isInternalBuild(v84, v85);
      if (v86)
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:v86 configuration:? manager:?];
      }

      v87 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v83, v87);
      v11->_motionSensorsActive = 0;
      [(_GCDeviceMotionComponent *)v11->_deviceMotionComponent setSensorsActive:0];
      strongToStrongObjectsMapTable6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientMotionEndpoints = v11->_clientMotionEndpoints;
      v11->_clientMotionEndpoints = strongToStrongObjectsMapTable6;
    }

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    components5 = [(_GCDefaultLogicalDevice *)v11 components];
    v91 = [components5 countByEnumeratingWithState:&v161 objects:v193 count:16];
    if (v91)
    {
      v92 = *v162;
      do
      {
        for (n = 0; n != v91; ++n)
        {
          if (*v162 != v92)
          {
            objc_enumerationMutation(components5);
          }

          v94 = *(*(&v161 + 1) + 8 * n);
          if ([v94 conformsToProtocol:&unk_1F4E9B500])
          {
            objc_storeStrong(&v11->_deviceBatteryComponent, v94);
          }
        }

        v91 = [components5 countByEnumeratingWithState:&v161 objects:v193 count:16];
      }

      while (v91);
    }

    if (v11->_deviceBatteryComponent)
    {
      v95 = dispatch_semaphore_create(0);
      v159[0] = MEMORY[0x1E69E9820];
      v159[1] = 3221225472;
      v159[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_212;
      v159[3] = &unk_1E8418C28;
      v96 = v95;
      v160 = v96;
      v97 = [(_GCDeviceBatteryComponent *)v11->_deviceBatteryComponent setDeviceBatteryServiceConnectedHandler:v159];
      v99 = gc_isInternalBuild(v97, v98);
      if (v99)
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:v99 configuration:? manager:?];
      }

      v100 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v96, v100);
      battery = [(_GCDeviceBatteryComponent *)v11->_deviceBatteryComponent battery];
      p_battery = &v11->_battery;
      battery = v11->_battery;
      v11->_battery = battery;

      if (!v11->_battery)
      {
        v106 = gc_isInternalBuild(v104, v105);
        if (v106)
        {
          [_GCDefaultLogicalDevice initWithPhysicalDevice:v106 configuration:? manager:?];
        }

        v107 = [[GCDeviceBattery alloc] initWithLevel:-1 batteryState:0.0];
        v108 = *p_battery;
        *p_battery = v107;
      }

      if (gc_isInternalBuild(v104, v105))
      {
        [_GCDefaultLogicalDevice initWithPhysicalDevice:? configuration:? manager:?];
      }

      strongToStrongObjectsMapTable7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientBatteryEndpoints = v11->_clientBatteryEndpoints;
      v11->_clientBatteryEndpoints = strongToStrongObjectsMapTable7;

      objc_initWeak(location, v11);
      v157[0] = MEMORY[0x1E69E9820];
      v157[1] = 3221225472;
      v157[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_214;
      v157[3] = &unk_1E841A470;
      objc_copyWeak(&v158, location);
      [(_GCDeviceBatteryComponent *)v11->_deviceBatteryComponent setDeviceBatteryComponentBatteryUpdatedHandler:v157];
      objc_destroyWeak(&v158);
      objc_destroyWeak(location);
    }

    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    components6 = [(_GCDefaultLogicalDevice *)v11 components];
    v112 = [components6 countByEnumeratingWithState:&v153 objects:v192 count:16];
    if (v112)
    {
      v113 = *v154;
      do
      {
        for (ii = 0; ii != v112; ++ii)
        {
          if (*v154 != v113)
          {
            objc_enumerationMutation(components6);
          }

          v115 = *(*(&v153 + 1) + 8 * ii);
          if ([v115 conformsToProtocol:&unk_1F4E9FB90])
          {
            objc_storeStrong(&v11->_deviceSystemGestureComponent, v115);
          }
        }

        v112 = [components6 countByEnumeratingWithState:&v153 objects:v192 count:16];
      }

      while (v112);
    }

    if (v11->_deviceSystemGestureComponent)
    {
      objc_initWeak(&from, v11);
      v116 = objc_alloc_init(GCSystemGesturesState);
      activeSystemGesturesState = v11->_activeSystemGesturesState;
      v11->_activeSystemGesturesState = v116;

      strongToStrongObjectsMapTable8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientSystemGestureEndpoints = v11->_clientSystemGestureEndpoints;
      v11->_clientSystemGestureEndpoints = strongToStrongObjectsMapTable8;

      strongToStrongObjectsMapTable9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientToSystemGesturesState = v11->_clientToSystemGesturesState;
      v11->_clientToSystemGesturesState = strongToStrongObjectsMapTable9;

      strongToStrongObjectsMapTable10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientToSystemButtonResponderAssertion = v11->_clientToSystemButtonResponderAssertion;
      v11->_clientToSystemButtonResponderAssertion = strongToStrongObjectsMapTable10;

      v124 = GCLookupService();
      userDefaults = v11->_userDefaults;
      v11->_userDefaults = v124;

      objc_opt_class();
      v126 = GCLookupService();
      systemButtonServer = v11->_systemButtonServer;
      v11->_systemButtonServer = v126;

      if (!v11->_userDefaults)
      {
        v143 = _gc_log_logical_device(v128);
        if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
        {
          identifier = [(_GCDefaultLogicalDevice *)v11 identifier];
          [_GCDefaultLogicalDevice initWithPhysicalDevice:identifier configuration:location manager:v143];
        }
      }

      v150[0] = MEMORY[0x1E69E9820];
      v150[1] = 3221225472;
      v150[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228;
      v150[3] = &unk_1E841A628;
      objc_copyWeak(&v151, &from);
      [(_GCDeviceSystemGestureComponent *)v11->_deviceSystemGestureComponent setDeviceSystemGestureTriggeredHandler:v150];
      objc_destroyWeak(&v151);
      objc_destroyWeak(&from);
    }

    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    components7 = [(_GCDefaultLogicalDevice *)v11 components];
    v130 = [components7 countByEnumeratingWithState:&v146 objects:v190 count:16];
    if (v130)
    {
      v131 = *v147;
      do
      {
        for (jj = 0; jj != v130; ++jj)
        {
          if (*v147 != v131)
          {
            objc_enumerationMutation(components7);
          }

          v133 = *(*(&v146 + 1) + 8 * jj);
          if ([v133 conformsToProtocol:&unk_1F4E9E828])
          {
            objc_storeWeak(&v11->_deviceSettingsComponent, v133);
          }
        }

        v130 = [components7 countByEnumeratingWithState:&v146 objects:v190 count:16];
      }

      while (v130);
    }

    WeakRetained = objc_loadWeakRetained(&v11->_deviceSettingsComponent);
    if (WeakRetained)
    {
      strongToStrongObjectsMapTable11 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      clientSettingsEndpoints = v11->_clientSettingsEndpoints;
      v11->_clientSettingsEndpoints = strongToStrongObjectsMapTable11;

      v137 = GCLookupService();
      settingsStore = v11->_settingsStore;
      v11->_settingsStore = v137;

      profiles = [(GCSSettingsStoreService *)v11->_settingsStore profiles];
      [profiles addObserver:v11 forKeyPath:@"values" options:5 context:0];

      games = [(GCSSettingsStoreService *)v11->_settingsStore games];
      [games addObserver:v11 forKeyPath:@"values" options:5 context:0];

      if (([(GCSSettingsStoreService *)v11->_settingsStore showGCPreferencesPane]& 1) == 0)
      {
        [(GCSSettingsStoreService *)v11->_settingsStore setShowGCPreferencesPane:1];
      }
    }
  }

  v141 = v11;

  return v141;
}

- (_GCDefaultLogicalDevice)init
{
  [(_GCDefaultLogicalDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p '%@'>", v5, self, self->_identifier];

  return v6;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self->_systemButtonServer == objectCopy && [pathCopy isEqualToString:@"hasButtonThief"])
  {
LABEL_8:
    [(_GCDefaultLogicalDevice *)self updateSystemGestureStateForSettings];
    goto LABEL_14;
  }

  if (self->_userDefaults == objectCopy)
  {
    v13 = [pathCopy isEqualToString:@"bluetoothPrefsMenuLongPressAction"];
    if (v13)
    {
      v14 = _gc_log_logical_device(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(_GCDefaultLogicalDevice *)self identifier];
        v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
        *buf = 138412546;
        v20 = identifier;
        v21 = 2114;
        v22 = v16;
        _os_log_impl(&dword_1D2CD5000, v14, OS_LOG_TYPE_DEFAULT, "[%@] Shortcuts Enabled changed: %{public}@", buf, 0x16u);
      }

      goto LABEL_8;
    }
  }

  if ([pathCopy isEqualToString:@"values"])
  {
    [(_GCDefaultLogicalDevice *)self settingsDidChange];
  }

  else if ([pathCopy isEqualToString:@"deferringTarget"])
  {
    v17 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    -[_GCDefaultLogicalDevice setActiveApplicationPID:](self, "setActiveApplicationPID:", [v17 intValue]);
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _GCDefaultLogicalDevice;
    [(_GCDefaultLogicalDevice *)&v18 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_14:
}

- (void)updateSystemGestureStateForSettings
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_DEFAULT, "[%@] Does not support system button.", buf, 0xCu);
}

- (void)dealloc
{
  settingsStore = self->_settingsStore;
  if (settingsStore)
  {
    profiles = [(GCSSettingsStoreService *)settingsStore profiles];
    [profiles removeObserver:self forKeyPath:@"values" context:0];

    games = [(GCSSettingsStoreService *)self->_settingsStore games];
    [games removeObserver:self forKeyPath:@"values" context:0];
  }

  v6.receiver = self;
  v6.super_class = _GCDefaultLogicalDevice;
  [(_GCDefaultLogicalDevice *)&v6 dealloc];
}

- (void)playerIndicatorXPCProxyServerEndpoint:(id)endpoint didReceivePlayerIndexChange:(int64_t)change
{
  v16 = *MEMORY[0x1E69E9840];
  self->_indicatedPlayerIndex = change;
  [(_GCDevicePlayerIndexIndicatorComponent *)self->_devicePlayerIndicatorComponent setIndicatedPlayerIndex:change];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clientPlayerIndicatorEndpoints objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v11 + 1) + 8 * v10++) setPlayerIndex:change];
      }

      while (v8 != v10);
      v8 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)lightXPCProxyServerEndpoint:(id)endpoint didReceiveLightChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  objc_storeStrong(&self->_light, change);
  self->_lightClientOverrideEnabled = 1;
  if (!self->_lightUserOverrideEnabled)
  {
    [(_GCDeviceLightComponent *)self->_deviceLightComponent setLight:changeCopy];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clientLightEndpoints objectEnumerator];
  v8 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v12 + 1) + 8 * v11++) setLight:changeCopy];
      }

      while (v9 != v11);
      v9 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)adaptiveTriggersXPCProxyServerEndpoint:(id)endpoint didReceiveAdaptiveTriggersChange:(id)change forIndex:(int)index
{
  v5 = *&index;
  v33 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  changeCopy = change;
  if (gc_isInternalBuild(changeCopy, v10))
  {
    [_GCDefaultLogicalDevice adaptiveTriggersXPCProxyServerEndpoint:endpointCopy didReceiveAdaptiveTriggersChange:? forIndex:?];
  }

  v11 = objc_autoreleasePoolPush();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  keyEnumerator = [(NSMapTable *)self->_clientAdaptiveTriggersEndpoints keyEnumerator];
  v13 = [keyEnumerator countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v26 = v5;
    v27 = changeCopy;
    v15 = v11;
    v16 = *v29;
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v29 != v16)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      v18 = *(*(&v28 + 1) + 8 * v17);
      v19 = [(NSMapTable *)self->_clientAdaptiveTriggersEndpoints objectForKey:v18, v26];
      v20 = [v19 isEqual:endpointCopy];

      if (v20)
      {
        break;
      }

      if (v14 == ++v17)
      {
        v14 = [keyEnumerator countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v14)
        {
          goto LABEL_5;
        }

        v21 = keyEnumerator;
        v11 = v15;
        changeCopy = v27;
        goto LABEL_17;
      }
    }

    v21 = v18;

    v11 = v15;
    changeCopy = v27;
    if (!v21)
    {
      goto LABEL_18;
    }

    pidToAdaptiveTriggersComponent = self->_pidToAdaptiveTriggersComponent;
    v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v21, "processIdentifier")}];
    v24 = [(NSMapTable *)pidToAdaptiveTriggersComponent objectForKey:v23];

    [v24 setObject:v27 atIndexedSubscript:v26];
    activeApplicationPID = self->_activeApplicationPID;
    if (activeApplicationPID == [v21 processIdentifier])
    {
      [(_GCDeviceAdaptiveTriggersComponent *)self->_deviceAdaptiveTriggersComponent setAdaptiveTriggersPayload:v27 forIndex:v26];
    }
  }

  else
  {
    v21 = keyEnumerator;
  }

LABEL_17:

LABEL_18:
  objc_autoreleasePoolPop(v11);
}

- (void)systemGestureXPCProxyServerEndpoint:(void *)endpoint didSetSystemGestureStateForInput:(unsigned int)input enabled:
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a2;
  endpointCopy = endpoint;
  v42 = endpointCopy;
  if (self)
  {
    if (gc_isInternalBuild(endpointCopy, v8))
    {
      [_GCDefaultLogicalDevice systemGestureXPCProxyServerEndpoint:v42 didSetSystemGestureStateForInput:? enabled:?];
    }

    context = objc_autoreleasePoolPush();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    keyEnumerator = [selfCopy[29] keyEnumerator];
    v11 = [keyEnumerator countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v11)
    {
      v12 = *v44;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v14 = *(*(&v43 + 1) + 8 * i);
          v15 = [selfCopy[29] objectForKey:v14];
          v16 = [v15 isEqual:v6];

          if (v16)
          {
            v11 = v14;
            goto LABEL_14;
          }
        }

        v11 = [keyEnumerator countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    objc_sync_exit(selfCopy);
    if (!v11)
    {
      goto LABEL_29;
    }

    v17 = selfCopy;
    objc_sync_enter(v17);
    v18 = [v17[27] objectForKey:v11];
    if (!v18)
    {
      v19 = [GCSystemGesturesState alloc];
      v20 = objc_opt_new();
      v21 = objc_opt_new();
      bundleIdentifier = [v11 bundleIdentifier];
      v18 = [(GCSystemGesturesState *)v19 initWithEnabledSystemGestures:v20 disabledSystemGestures:v21 bundleIdentifier:bundleIdentifier];
    }

    disabledSystemGestureInputNames = [(GCSystemGesturesState *)v18 disabledSystemGestureInputNames];
    v24 = [disabledSystemGestureInputNames mutableCopy];

    enabledSystemGestureInputNames = [(GCSystemGesturesState *)v18 enabledSystemGestureInputNames];
    v26 = [enabledSystemGestureInputNames mutableCopy];

    if (input)
    {
      [v26 addObject:v42];
      [v24 removeObject:v42];
    }

    else
    {
      [v26 removeObject:v42];
      [v24 addObject:v42];
    }

    v27 = [GCSystemGesturesState alloc];
    bundleIdentifier2 = [v11 bundleIdentifier];
    v29 = [(GCSystemGesturesState *)v27 initWithEnabledSystemGestures:v26 disabledSystemGestures:v24 bundleIdentifier:bundleIdentifier2];

    [v17[27] setObject:v29 forKey:v11];
    disabledSystemGestureInputNames2 = [(GCSystemGesturesState *)v29 disabledSystemGestureInputNames];
    if ([disabledSystemGestureInputNames2 containsObject:@"Button Home"])
    {
      v31 = [v17[28] objectForKey:v11];
      v32 = v31 == 0;

      if (v32)
      {
        objc_opt_class();
        v33 = GCLookupService();
        bundleIdentifier3 = [v11 bundleIdentifier];
        v35 = [v33 activeProcessRespondingToSystemButton:bundleIdentifier3];

        [v17[28] setObject:v35 forKey:v11];
LABEL_26:

        objc_sync_exit(v17);
        v39 = *(v17 + 67);
        if (v39 == [v11 processIdentifier])
        {
          [(_GCDefaultLogicalDevice *)v17 updateSystemGestureStateForActiveClient];
        }

LABEL_29:
        objc_autoreleasePoolPop(context);
        goto LABEL_30;
      }
    }

    else
    {
    }

    disabledSystemGestureInputNames3 = [(GCSystemGesturesState *)v29 disabledSystemGestureInputNames];
    v37 = [disabledSystemGestureInputNames3 containsObject:@"Button Home"];

    if ((v37 & 1) == 0)
    {
      v38 = [v17[28] objectForKey:v11];
      [v38 invalidate];

      [v17[28] removeObjectForKey:v11];
    }

    goto LABEL_26;
  }

LABEL_30:
}

- (void)updateSystemGestureStateForActiveClient
{
  v37 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = *(selfCopy + 67);
    obj = selfCopy;
    disabledSystemGestureInputNames = [selfCopy[26] disabledSystemGestureInputNames];
    v22 = [disabledSystemGestureInputNames containsObject:@"Button Home"];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    keyEnumerator = [selfCopy[27] keyEnumerator];
    v5 = [keyEnumerator countByEnumeratingWithState:&v24 objects:v36 count:16];
    location = selfCopy + 26;
    v6 = 0;
    if (v5)
    {
      v7 = *v25;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          if ([v9 processIdentifier] == v2)
          {
            v10 = [obj[27] objectForKey:v9];
            disabledSystemGestureInputNames2 = [v10 disabledSystemGestureInputNames];
            v12 = [disabledSystemGestureInputNames2 containsObject:@"Button Home"];

            v6 |= v12;
          }
        }

        v5 = [keyEnumerator countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v5);
    }

    objc_sync_exit(obj);
    if ((v22 ^ v6))
    {
      v14 = _gc_log_logical_device(v13);
      v15 = v6 & 1;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [obj identifier];
        *buf = 138413058;
        v29 = identifier;
        v30 = 1024;
        v31 = v2;
        v32 = 1024;
        v33 = v22;
        v34 = 1024;
        v35 = v6 & 1;
        _os_log_impl(&dword_1D2CD5000, v14, OS_LOG_TYPE_DEFAULT, "[%@] Update active process (%i) wants HOME button %{BOOL}d -> %{BOOL}d", buf, 0x1Eu);
      }

      v17 = objc_opt_new();
      v18 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
      if (v15)
      {
        [v17 setDisabledSystemGestureInputNames:v18];
      }

      else
      {
        [v17 setEnabledSystemGestureInputNames:v18];
      }

      v19 = obj;
      objc_sync_enter(v19);
      objc_storeStrong(location, v17);
      objc_sync_exit(v19);

      v20 = v19[23];
      if (v20)
      {
        [v20 setForwardHomeButtonPress:v15];
      }
    }
  }
}

- (void)motionXPCProxyServerEndpoint:(id)endpoint didReceiveSensorsActiveChange:(BOOL)change
{
  changeCopy = change;
  endpointCopy = endpoint;
  if (gc_isInternalBuild(endpointCopy, v7))
  {
    [_GCDefaultLogicalDevice motionXPCProxyServerEndpoint:endpointCopy didReceiveSensorsActiveChange:?];
  }

  [(_GCDeviceMotionComponent *)self->_deviceMotionComponent setSensorsActive:changeCopy];
}

- (NSSet)components
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = objc_msgSend_underlyingDevice(self, 0);
  components = [v4 components];

  v6 = [components countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(components);
        }

        [array addObject:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [components countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [array addObject:self];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:array];

  return v10;
}

- (NSSet)underlyingDevices
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_underlyingDevice;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)activateLogical
{
  devicePlayerIndicatorComponent = self->_devicePlayerIndicatorComponent;
  if (devicePlayerIndicatorComponent)
  {
    self->_indicatedPlayerIndex = -1;
    [(_GCDevicePlayerIndexIndicatorComponent *)devicePlayerIndicatorComponent setIndicatedPlayerIndex:-1];
  }

  if (self->_deviceSystemGestureComponent)
  {
    [(GCSystemButtonServer *)self->_systemButtonServer addObserver:self forKeyPath:@"hasButtonThief" options:1 context:0];
    [(GCUserDefaults *)self->_userDefaults addObserver:self forKeyPath:@"bluetoothPrefsMenuLongPressAction" options:1 context:0];

    [(_GCDefaultLogicalDevice *)self updateSystemGestureStateForSettings];
  }
}

- (void)deactivateLogical
{
  v17 = *MEMORY[0x1E69E9840];
  [(_GCDefaultLogicalDevice *)self stopTrackingSessionsForAllClients];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_clientToSystemButtonResponderAssertion;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_clientToSystemButtonResponderAssertion objectForKey:*(*(&v12 + 1) + 8 * v7), v12];
        [v8 invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_clientToSystemButtonResponderAssertion removeAllObjects];
  [self->_deviceSystemGestureButtonHandle invalidate];
  deviceSystemGestureButtonHandle = self->_deviceSystemGestureButtonHandle;
  self->_deviceSystemGestureButtonHandle = 0;

  systemButtonServer = self->_systemButtonServer;
  if (systemButtonServer)
  {
    [(GCSystemButtonServer *)systemButtonServer removeObserver:self forKeyPath:@"hasButtonThief"];
  }

  userDefaults = self->_userDefaults;
  if (userDefaults)
  {
    [(GCUserDefaults *)userDefaults removeObserver:self forKeyPath:@"bluetoothPrefsMenuLongPressAction"];
  }
}

- (void)stopTrackingSessionsForAllClients
{
  if (OUTLINED_FUNCTION_11(self))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)startTrackingSessionForClient:(void *)client
{
  v3 = a2;
  if (client)
  {
    clientCopy = client;
    objc_sync_enter(clientCopy);
    bundleIdentifier = [v3 bundleIdentifier];

    if (bundleIdentifier && (v6 = clientCopy[32], [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "processIdentifier")}], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
    {
      delegate = [clientCopy delegate];
      v10 = objc_opt_respondsToSelector();

      [clientCopy delegate];
      if (v10)
        v11 = {;
        [v11 logicalDeviceControllerDetailedProductCategory:clientCopy];
      }

      else
        v11 = {;
        [v11 logicalDeviceControllerProductCategory:clientCopy];
      }
      v12 = ;

      v13 = [GCLogicalDeviceAnalytics alloc];
      v14 = +[_GCDaemonSettings instance];
      v15 = [v14 anonymizedIdentifierForControllerIdentifier:clientCopy[34]];
      bundleIdentifier2 = [v3 bundleIdentifier];
      v17 = [(GCLogicalDeviceAnalytics *)v13 initWithAnonymousIdentifier:v15 bundleIdentifier:bundleIdentifier2 productCategory:v12];

      v18 = clientCopy[32];
      v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "processIdentifier")}];
      [v18 setObject:v17 forKeyedSubscript:v19];

      isInternalBuild = gc_isInternalBuild(v20, v21);
      if (isInternalBuild)
      {
        v25 = getGCAnalyticsLogger(isInternalBuild);
        [_GCDefaultLogicalDevice startTrackingSessionForClient:v25];
      }

      v24 = gc_isInternalBuild(isInternalBuild, v23);
      if (v24)
      {
        v26 = getGCAnalyticsLogger(v24);
        [_GCDefaultLogicalDevice startTrackingSessionForClient:v26];
      }

      objc_sync_exit(clientCopy);
      [(_GCDefaultLogicalDevice *)clientCopy updateAnalyticsForActiveClient];
    }

    else
    {
      objc_sync_exit(clientCopy);
    }
  }
}

- (void)updateAnalyticsForActiveClient
{
  if (!self)
  {
    return;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = selfCopy[67];
  if (v2 == selfCopy[66])
  {
    objc_sync_exit(selfCopy);
    v9 = 0;
  }

  else
  {
    v3 = *(selfCopy + 32);
    v4 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v9 = [v3 objectForKeyedSubscript:v4];

    v5 = *(selfCopy + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v2];
    v7 = [v5 objectForKeyedSubscript:v6];

    selfCopy[66] = v2;
    objc_sync_exit(selfCopy);

    v8 = v9;
    if (v9)
    {
      [v9 pauseSession];
      v8 = v9;
    }

    if (!v7)
    {
      goto LABEL_9;
    }

    [v7 resumeSession];
    selfCopy = v7;
  }

  v8 = v9;
LABEL_9:
}

- (void)stopTrackingSessionForClient:(void *)client
{
  v3 = a2;
  if (client)
  {
    clientCopy = client;
    objc_sync_enter(clientCopy);
    bundleIdentifier = [v3 bundleIdentifier];

    if (bundleIdentifier && (v6 = clientCopy[32], [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "processIdentifier")}], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      v9 = clientCopy[32];
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "processIdentifier")}];
      v11 = [v9 objectForKeyedSubscript:v10];

      v12 = clientCopy[32];
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "processIdentifier")}];
      [v12 removeObjectForKey:v13];

      isInternalBuild = gc_isInternalBuild(v14, v15);
      if (isInternalBuild)
      {
        v19 = getGCAnalyticsLogger(isInternalBuild);
        [_GCDefaultLogicalDevice stopTrackingSessionForClient:v19];
      }

      v18 = gc_isInternalBuild(isInternalBuild, v17);
      if (v18)
      {
        v20 = getGCAnalyticsLogger(v18);
        [_GCDefaultLogicalDevice stopTrackingSessionForClient:v20];
      }

      [v11 flushSessionAndSendCAEvent];

      objc_sync_exit(clientCopy);
      [(_GCDefaultLogicalDevice *)clientCopy updateAnalyticsForActiveClient];
    }

    else
    {
      objc_sync_exit(clientCopy);
    }
  }
}

- (BOOL)_addClient:(id)client
{
  v22 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  if (clientCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMapTable *)selfCopy->_clients objectForKey:clientCopy];

    if (v6)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      objc_initWeak(&location, selfCopy);
      objc_initWeak(&from, clientCopy);
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __38___GCDefaultLogicalDevice__addClient___block_invoke;
      v16 = &unk_1E8419D00;
      objc_copyWeak(&v17, &location);
      objc_copyWeak(&v18, &from);
      v8 = [clientCopy addInvalidationHandler:&v13];
      v7 = v8 != 0;
      if (v8)
      {
        v9 = _gc_log_logical_device([(NSMapTable *)selfCopy->_clients setObject:v8 forKey:clientCopy, v13, v14, v15, v16]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          identifier = [(_GCDefaultLogicalDevice *)selfCopy identifier];
          [(_GCDefaultLogicalDevice *)identifier _addClient:clientCopy, v21];
        }

        if ([(NSMapTable *)selfCopy->_clients count]== 1)
        {
          v12 = +[_GCHIDEventDeliveryMonitor sharedInstance];
          [v12 addObserver:selfCopy forKeyPath:@"deferringTarget" options:5 context:0];
        }

        [(_GCDefaultLogicalDevice *)selfCopy startTrackingSessionForClient:clientCopy];
      }

      objc_destroyWeak(&v18);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_removeClient:(id)client
{
  v14[3] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (clientCopy)
  {
    v6 = [(NSMapTable *)selfCopy->_clients objectForKey:clientCopy];

    if (v6)
    {
      v7 = [(NSMapTable *)selfCopy->_clientToSystemButtonResponderAssertion objectForKey:clientCopy];
      [v7 invalidate];

      [(_GCDefaultLogicalDevice *)selfCopy stopTrackingSessionForClient:clientCopy];
      [(NSMapTable *)selfCopy->_clientPlayerIndicatorEndpoints removeObjectForKey:clientCopy];
      [(NSMapTable *)selfCopy->_clientLightEndpoints removeObjectForKey:clientCopy];
      [(NSMapTable *)selfCopy->_clientAdaptiveTriggersEndpoints removeObjectForKey:clientCopy];
      [(NSMapTable *)selfCopy->_clientMotionEndpoints removeObjectForKey:clientCopy];
      [(NSMapTable *)selfCopy->_clientBatteryEndpoints removeObjectForKey:clientCopy];
      [(NSMapTable *)selfCopy->_clientSettingsEndpoints removeObjectForKey:clientCopy];
      [(NSMapTable *)selfCopy->_clientSystemGestureEndpoints removeObjectForKey:clientCopy];
      v6 = [(NSMapTable *)selfCopy->_clients objectForKey:clientCopy];
      [(NSMapTable *)selfCopy->_clients removeObjectForKey:clientCopy];
      pidToAdaptiveTriggersComponent = selfCopy->_pidToAdaptiveTriggersComponent;
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(clientCopy, "processIdentifier")}];
      [(NSMapTable *)pidToAdaptiveTriggersComponent removeObjectForKey:v9];

      [(NSMapTable *)selfCopy->_clientToSystemGesturesState removeObjectForKey:clientCopy];
      v10 = [(NSMapTable *)selfCopy->_clientToSystemButtonResponderAssertion removeObjectForKey:clientCopy];
      if (!selfCopy->_clients)
      {
        v13 = +[_GCHIDEventDeliveryMonitor sharedInstance];
        [v13 removeObserver:selfCopy forKeyPath:@"deferringTarget" context:0];
      }

      v11 = _gc_log_logical_device(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        identifier = [(_GCDefaultLogicalDevice *)selfCopy identifier];
        [(_GCDefaultLogicalDevice *)identifier _removeClient:clientCopy, v14];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)setActiveApplicationPID:(int)d
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = _gc_log_logical_device(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [(_GCDefaultLogicalDevice *)self identifier];
    activeApplicationPID = self->_activeApplicationPID;
    v8 = 138412802;
    v9 = identifier;
    v10 = 1024;
    v11 = activeApplicationPID;
    v12 = 1024;
    dCopy = d;
    _os_log_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_INFO, "[%@] setActiveApplicationPID - was %d now %d", &v8, 0x18u);
  }

  if (self->_activeApplicationPID != d)
  {
    self->_activeApplicationPID = d;
    [(_GCDefaultLogicalDevice *)self updateAnalyticsForActiveClient];
    [(_GCDefaultLogicalDevice *)&self->super.isa updateAdaptiveTriggersForActiveClient];
    [(_GCDefaultLogicalDevice *)&self->super.isa updateLightForActiveClient];
    [(_GCDefaultLogicalDevice *)self updateSystemGestureStateForActiveClient];
  }
}

- (void)updateAdaptiveTriggersForActiveClient
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = self + 6;
    if (self[6])
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      keyEnumerator = [selfCopy[9] keyEnumerator];
      v4 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v4)
      {
        v5 = *v16;
        while (2)
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v16 != v5)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v7 = *(*(&v15 + 1) + 8 * i);
            if ([v7 processIdentifier] == *(selfCopy + 67))
            {
              v4 = v7;
              goto LABEL_13;
            }
          }

          v4 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v20 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      objc_sync_exit(selfCopy);
      if (v4)
      {
        v8 = selfCopy;
        objc_sync_enter(v8);
        v9 = v8[8];
        v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
        v11 = [v9 objectForKey:v10];
        v12 = [v11 copy];

        objc_sync_exit(v8);
        if ([v12 count])
        {
          v13 = 0;
          do
          {
            v14 = [v12 objectAtIndexedSubscript:v13];
            [*v1 setAdaptiveTriggersPayload:v14 forIndex:v13];

            ++v13;
          }

          while ([v12 count] > v13);
        }
      }

      else
      {
        [(_GCDefaultLogicalDevice *)v1 updateAdaptiveTriggersForActiveClient];
        v12 = v19;
      }
    }
  }
}

- (void)updateLightForActiveClient
{
  objc_sync_exit(a2);

  v7 = *(a2 + 160);
  persistentIdentifierForSettings = [a2 persistentIdentifierForSettings];
  if (self)
  {
    bundleIdentifier = [self bundleIdentifier];
    v10 = [v7 profileForPersistentControllerIdentifier:persistentIdentifierForSettings appBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v10 = [v7 profileForPersistentControllerIdentifier:persistentIdentifierForSettings appBundleIdentifier:0];
  }

  if ([v10 lightbarColor])
  {
    v11 = -[GCColor initWithColorPreset:]([GCColor alloc], "initWithColorPreset:", [v10 lightbarColor]);
    v12 = [[GCDeviceLight alloc] initWithColor:v11];
    [*a3 setLight:v12];

    *(a2 + 97) = 1;
  }

  else
  {
    *(a2 + 97) = 0;
    if (*(a2 + 96))
    {
      [*a3 setLight:*(a2 + 88)];
    }
  }
}

- (_GCDeviceManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (_GCDefaultLogicalDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)makeControllerForClient:(id)client
{
  v123 = a2;
  v136[1] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  if (![(_GCDefaultLogicalDevice *)self _addClient:clientCopy])
  {
    v6 = 0;
    goto LABEL_104;
  }

  delegate = [(_GCDefaultLogicalDevice *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate logicalDevice:self shouldMakeControllerForClient:{clientCopy, v123}])
  {
    v6 = 0;
    goto LABEL_103;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    components = [(_GCDefaultLogicalDevice *)self components];
    array = [MEMORY[0x1E695DF70] array];
    v8 = [[GCProductInformation alloc] initWithIdentifier:@"ProductInfo"];
    if (objc_opt_respondsToSelector())
    {
      [delegate logicalDeviceControllerProductCategory:self forClient:clientCopy];
    }

    else
    {
      [delegate logicalDeviceControllerProductCategory:self];
    }
    v9 = ;
    [(GCProductInformation *)v8 setProductCategory:v9, v123];

    if (objc_opt_respondsToSelector())
    {
      [delegate logicalDeviceControllerDetailedProductCategory:self];
    }

    else
    {
      [(GCProductInformation *)v8 productCategory];
    }
    v10 = ;
    [(GCProductInformation *)v8 setDetailedProductCategory:v10];

    if (objc_opt_respondsToSelector())
    {
      v11 = [delegate logicalDeviceControllerVendorName:self forClient:clientCopy];
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v11 = objc_msgSend_underlyingDevice(self);
        v12 = [v11 propertyForKey:@"Product"];
        [(GCProductInformation *)v8 setVendorName:v12];

        goto LABEL_22;
      }

      v11 = [delegate logicalDeviceControllerVendorName:self];
      if (!v11)
      {
LABEL_21:
        v13 = objc_msgSend_underlyingDevice(self);
        v14 = [v13 propertyForKey:@"Product"];
        [(GCProductInformation *)v8 setVendorName:v14];

LABEL_22:
        v15 = +[_GCDaemonSettings instance];
        v16 = [v15 anonymizedIdentifierForControllerIdentifier:self->_identifier];
        [(GCProductInformation *)v8 setAnonymizedIdentifier:v16];

        if (objc_opt_respondsToSelector())
        {
          v17 = [delegate logicalDeviceControllerUniformTypeIdentifier:self];
          [(GCProductInformation *)v8 setUniformTypeIdentifier:v17];
        }

        if (objc_opt_respondsToSelector())
        {
          v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(delegate, "logicalDeviceControllerIsAttachedToHost:", self)}];
          [(GCProductInformation *)v8 setAttachedToDevice:v18];
        }

        else
        {
          v19 = objc_msgSend_underlyingDevice(self);
          v18 = [v19 propertyForKey:@"GameControllerFormFitting"];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            bOOLValue = [v18 BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }

          v21 = objc_msgSend_underlyingDevice(self);
          v22 = [v21 propertyForKey:@"IAPHIDAccessoryCategory"];

          objc_opt_class();
          v23 = (objc_opt_isKindOfClass() & 1) != 0 && [v22 intValue] - 3 < 2;
          v24 = [MEMORY[0x1E696AD98] numberWithBool:(bOOLValue | v23) & 1];
          [(GCProductInformation *)v8 setAttachedToDevice:v24];
        }

        v25 = [[_GCControllerComponentDescription alloc] initWithComponent:v8 bindings:0];
        [array addObject:v25];

        v26 = [GCHIDInformationDescription alloc];
        v27 = objc_msgSend_underlyingDevice(self);
        v28 = [v27 propertyForKey:@"RegistryID"];
        v29 = [(GCHIDInformationDescription *)v26 initWithIdentifier:@"HIDInfo" registryID:v28];

        [array addObject:v29];
        _makeControllerGamepadEventSource = [(_GCDefaultLogicalDevice *)self _makeControllerGamepadEventSource];
        if (!_makeControllerGamepadEventSource)
        {
LABEL_55:

          if (self->_deviceMotionComponent)
          {
            v47 = [delegate logicalDevice:self makeControllerMotionWithIdentifier:@"Motion"];
            motionEventSource = [(_GCDeviceMotionComponent *)self->_deviceMotionComponent motionEventSource];
            v49 = [_GCControllerComponentDescription alloc];
            v131 = motionEventSource;
            v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
            v51 = [(_GCControllerComponentDescription *)v49 initWithComponent:v47 bindings:v50];

            [array addObject:v51];
            selfCopy = self;
            objc_sync_enter(selfCopy);
            v53 = [(NSMapTable *)selfCopy->_clientMotionEndpoints objectForKey:clientCopy];
            if (!v53)
            {
              v54 = [GCMotionXPCProxyServerEndpoint alloc];
              uUID = [MEMORY[0x1E696AFB0] UUID];
              v53 = [(GCMotionXPCProxyServerEndpoint *)v54 initWithIdentifier:uUID initialValue:0];

              [(GCMotionXPCProxyServerEndpoint *)v53 setDelegate:selfCopy];
              [(NSMapTable *)selfCopy->_clientMotionEndpoints setObject:v53 forKey:clientCopy];
              iPCObjectRegistry = [clientCopy IPCObjectRegistry];
              [iPCObjectRegistry registerIPCObject:v53];
            }

            receiverDescription = [(GCMotionXPCProxyServerEndpoint *)v53 receiverDescription];
            [array addObject:receiverDescription];

            objc_sync_exit(selfCopy);
          }

          if (objc_opt_respondsToSelector())
          {
            v58 = [delegate logicalDevice:self makeControllerSpatialDescriptionWithIdentifier:@"SpatialInput" forClient:clientCopy];
            if (v58)
            {
              [array addObject:v58];
            }
          }

          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v59 = components;
          v60 = [v59 countByEnumeratingWithState:&v126 objects:v130 count:16];
          v61 = v59;
          if (v60)
          {
            v61 = 0;
            v62 = *v127;
            do
            {
              for (i = 0; i != v60; ++i)
              {
                if (*v127 != v62)
                {
                  objc_enumerationMutation(v59);
                }

                v64 = *(*(&v126 + 1) + 8 * i);
                if ([v64 conformsToProtocol:&unk_1F4E9B580])
                {
                  v65 = v64;

                  v61 = v65;
                }
              }

              v60 = [v59 countByEnumeratingWithState:&v126 objects:v130 count:16];
            }

            while (v60);

            if (!v61)
            {
              goto LABEL_75;
            }

            v66 = [GCHapticCapabilities alloc];
            hapticEngines = [v61 hapticEngines];
            hapticCapabilityGraph = [v61 hapticCapabilityGraph];
            v69 = [(GCHapticCapabilities *)v66 initWithIdentifier:@"HapticCapabilities" hapticEnginesInfo:hapticEngines hapticCapabilityGraph:hapticCapabilityGraph];

            v70 = [[_GCControllerComponentDescription alloc] initWithComponent:v69 bindings:0];
            [array addObject:v70];
          }

LABEL_75:
          if (self->_devicePlayerIndicatorComponent)
          {
            selfCopy2 = self;
            objc_sync_enter(selfCopy2);
            v72 = [(NSMapTable *)selfCopy2->_clientPlayerIndicatorEndpoints objectForKey:clientCopy];
            if (!v72)
            {
              v73 = [GCPlayerIndicatorXPCProxyServerEndpoint alloc];
              uUID2 = [MEMORY[0x1E696AFB0] UUID];
              v72 = [(GCPlayerIndicatorXPCProxyServerEndpoint *)v73 initWithIdentifier:uUID2 initialValue:selfCopy2->_indicatedPlayerIndex];

              [(GCPlayerIndicatorXPCProxyServerEndpoint *)v72 setDelegate:selfCopy2];
              [(NSMapTable *)selfCopy2->_clientPlayerIndicatorEndpoints setObject:v72 forKey:clientCopy];
              iPCObjectRegistry2 = [clientCopy IPCObjectRegistry];
              [iPCObjectRegistry2 registerIPCObject:v72];
            }

            receiverDescription2 = [(GCPlayerIndicatorXPCProxyServerEndpoint *)v72 receiverDescription];
            [array addObject:receiverDescription2];

            objc_sync_exit(selfCopy2);
          }

          if (self->_deviceLightComponent)
          {
            selfCopy3 = self;
            objc_sync_enter(selfCopy3);
            v78 = [(NSMapTable *)selfCopy3->_clientLightEndpoints objectForKey:clientCopy];
            if (!v78)
            {
              v79 = [GCLightXPCProxyServerEndpoint alloc];
              uUID3 = [MEMORY[0x1E696AFB0] UUID];
              v78 = [(GCLightXPCProxyServerEndpoint *)v79 initWithIdentifier:uUID3 initialValue:selfCopy3->_light];

              [(GCLightXPCProxyServerEndpoint *)v78 setDelegate:selfCopy3];
              [(NSMapTable *)selfCopy3->_clientLightEndpoints setObject:v78 forKey:clientCopy];
              iPCObjectRegistry3 = [clientCopy IPCObjectRegistry];
              [iPCObjectRegistry3 registerIPCObject:v78];
            }

            receiverDescription3 = [(GCLightXPCProxyServerEndpoint *)v78 receiverDescription];
            [array addObject:receiverDescription3];

            objc_sync_exit(selfCopy3);
          }

          if (self->_deviceAdaptiveTriggersComponent)
          {
            selfCopy4 = self;
            objc_sync_enter(selfCopy4);
            v84 = [(NSMapTable *)selfCopy4->_clientAdaptiveTriggersEndpoints objectForKey:clientCopy];
            if (!v84)
            {
              v85 = [GCAdaptiveTriggersXPCProxyServerEndpoint alloc];
              uUID4 = [MEMORY[0x1E696AFB0] UUID];
              v84 = [(GCAdaptiveTriggersXPCProxyServerEndpoint *)v85 initWithIdentifier:uUID4 initialStatuses:selfCopy4->_adaptiveTriggerStatuses];

              [(GCAdaptiveTriggersXPCProxyServerEndpoint *)v84 setDelegate:selfCopy4];
              [(NSMapTable *)selfCopy4->_clientAdaptiveTriggersEndpoints setObject:v84 forKey:clientCopy];
              iPCObjectRegistry4 = [clientCopy IPCObjectRegistry];
              [iPCObjectRegistry4 registerIPCObject:v84];
            }

            receiverDescription4 = [(GCAdaptiveTriggersXPCProxyServerEndpoint *)v84 receiverDescription];
            [array addObject:receiverDescription4];

            v89 = objc_opt_new();
            initOff = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
            [v89 addObject:initOff];

            initOff2 = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
            [v89 addObject:initOff2];

            pidToAdaptiveTriggersComponent = selfCopy4->_pidToAdaptiveTriggersComponent;
            v93 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(clientCopy, "processIdentifier")}];
            [(NSMapTable *)pidToAdaptiveTriggersComponent setObject:v89 forKey:v93];

            objc_sync_exit(selfCopy4);
          }

          if (self->_deviceBatteryComponent)
          {
            selfCopy5 = self;
            objc_sync_enter(selfCopy5);
            v95 = [(NSMapTable *)selfCopy5->_clientBatteryEndpoints objectForKey:clientCopy];
            if (!v95)
            {
              v96 = [GCBatteryXPCProxyServerEndpoint alloc];
              uUID5 = [MEMORY[0x1E696AFB0] UUID];
              v95 = [(GCBatteryXPCProxyServerEndpoint *)v96 initWithIdentifier:uUID5 initialValue:selfCopy5->_battery];

              [(GCBatteryXPCProxyServerEndpoint *)v95 setDelegate:selfCopy5];
              [(NSMapTable *)selfCopy5->_clientBatteryEndpoints setObject:v95 forKey:clientCopy];
              iPCObjectRegistry5 = [clientCopy IPCObjectRegistry];
              [iPCObjectRegistry5 registerIPCObject:v95];
            }

            receiverDescription5 = [(GCBatteryXPCProxyServerEndpoint *)v95 receiverDescription];
            [array addObject:receiverDescription5];

            objc_sync_exit(selfCopy5);
          }

          if (self->_deviceSystemGestureComponent)
          {
            selfCopy6 = self;
            objc_sync_enter(selfCopy6);
            v101 = [(NSMapTable *)selfCopy6->_clientSystemGestureEndpoints objectForKey:clientCopy];
            if (!v101)
            {
              v102 = [GCSystemGestureXPCProxyServerEndpoint alloc];
              uUID6 = [MEMORY[0x1E696AFB0] UUID];
              v101 = [(GCSystemGestureXPCProxyServerEndpoint *)v102 initWithIdentifier:uUID6];

              [(GCSystemGestureXPCProxyServerEndpoint *)v101 setDelegate:selfCopy6];
              [(NSMapTable *)selfCopy6->_clientSystemGestureEndpoints setObject:v101 forKey:clientCopy];
              iPCObjectRegistry6 = [clientCopy IPCObjectRegistry];
              [iPCObjectRegistry6 registerIPCObject:v101];
            }

            receiverDescription6 = [(GCSystemGestureXPCProxyServerEndpoint *)v101 receiverDescription];
            [array addObject:receiverDescription6];

            objc_sync_exit(selfCopy6);
          }

          WeakRetained = objc_loadWeakRetained(&self->_deviceSettingsComponent);

          if (WeakRetained)
          {
            selfCopy7 = self;
            objc_sync_enter(selfCopy7);
            v108 = [(NSMapTable *)selfCopy7->_clientSettingsEndpoints objectForKey:clientCopy];
            if (!v108)
            {
              settingsStore = selfCopy7->_settingsStore;
              persistentIdentifierForSettings = [(_GCDefaultLogicalDevice *)selfCopy7 persistentIdentifierForSettings];
              bundleIdentifier = [clientCopy bundleIdentifier];
              v112 = [(GCSSettingsStoreService *)settingsStore profileForPersistentControllerIdentifier:persistentIdentifierForSettings appBundleIdentifier:bundleIdentifier];
              anonymizedCopy = [v112 anonymizedCopy];

              v114 = [GCSettingsXPCProxyServerEndpoint alloc];
              uUID7 = [MEMORY[0x1E696AFB0] UUID];
              v108 = [(GCSettingsXPCProxyServerEndpoint *)v114 initWithIdentifier:uUID7 initialValueForProfile:anonymizedCopy];

              [(GCSettingsXPCProxyServerEndpoint *)v108 setDelegate:selfCopy7];
              [(NSMapTable *)selfCopy7->_clientSettingsEndpoints setObject:v108 forKey:clientCopy];
              iPCObjectRegistry7 = [clientCopy IPCObjectRegistry];
              [iPCObjectRegistry7 registerIPCObject:v108];
            }

            receiverDescription7 = [(GCSettingsXPCProxyServerEndpoint *)v108 receiverDescription];
            [array addObject:receiverDescription7];

            objc_sync_exit(selfCopy7);
          }

          v118 = objc_opt_class();
          if (objc_opt_respondsToSelector())
          {
            v118 = [delegate logicalDeviceControllerDescriptionClass:self];
            if (([v118 isSubclassOfClass:objc_opt_class()] & 1) == 0)
            {
              [(_GCDefaultLogicalDevice(ControllerProviding) *)v124 makeControllerForClient:?];
            }
          }

          v119 = [v118 alloc];
          identifier = [(_GCDefaultLogicalDevice *)self identifier];
          v121 = [v119 initWithIdentifier:identifier components:array];

          v6 = v121;
          goto LABEL_103;
        }

        if (objc_opt_respondsToSelector())
        {
          v136[0] = _makeControllerGamepadEventSource;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:1];
          v32 = [delegate logicalDevice:self makeControllerInputDescriptionWithIdentifier:@"Input" bindings:v31];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_41;
          }

          v135 = _makeControllerGamepadEventSource;
          v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
          v32 = [delegate logicalDevice:self makeControllerInputDescriptionWithIdentifier:@"Input" bindings:v33 forClient:clientCopy];
        }

        if (v32)
        {
          [array addObject:v32];
        }

LABEL_41:
        if (objc_opt_respondsToSelector())
        {
          v134 = _makeControllerGamepadEventSource;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
          v35 = [delegate logicalDevice:self makeControllerPhysicalInputProfileDescriptionWithIdentifier:@"PhysicalInput" bindings:v34];

          if (v35)
          {
            [array addObject:v35];
LABEL_54:

            goto LABEL_55;
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          v133 = _makeControllerGamepadEventSource;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v133 count:1];
          v35 = [delegate logicalDevice:self makeControllerPhysicalInputProfileDescriptionWithIdentifier:@"PhysicalInput" bindings:v36 forClient:clientCopy];

          if (v35)
          {
            [array addObject:v35];
            goto LABEL_54;
          }
        }

        v35 = [delegate logicalDevice:self makeControllerPhysicalInputProfileWithIdentifier:@"PhysicalInput"];
        [v35 setGlyphFlags:0];
        v37 = objc_msgSend_underlyingDevice(self);
        v38 = [v37 conformsToProtocol:&unk_1F4E9F9E0];

        if (v38)
        {
          v39 = objc_msgSend_underlyingDevice(self);
          v40 = objc_msgSend_underlyingDevice(self);
          v41 = objc_opt_respondsToSelector();

          if (v41)
          {
            v42 = [v35 setGlyphFlags:{objc_msgSend(v39, "getGlyphFlags")}];
            if (gc_isInternalBuild(v42, v43))
            {
              [_GCDefaultLogicalDevice(ControllerProviding) makeControllerForClient:v35];
            }
          }
        }

        if ([v35 conformsToProtocol:&unk_1F4E92DF0])
        {
          v44 = [_GCControllerComponentDescription alloc];
          v132 = _makeControllerGamepadEventSource;
          v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
          v46 = [(_GCControllerComponentDescription *)v44 initWithComponent:v35 bindings:v45];

          [array addObject:v46];
        }

        goto LABEL_54;
      }
    }

    [(GCProductInformation *)v8 setVendorName:v11];
    goto LABEL_22;
  }

  v6 = [delegate logicalDevice:self makeControllerForClient:clientCopy];
LABEL_103:

LABEL_104:

  return v6;
}

- (id)_makeControllerGamepadEventSource
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  components = [(_GCDefaultLogicalDevice *)self components];
  v3 = [components countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(components);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 conformsToProtocol:&unk_1F4E9B320])
        {
          v9 = v8;

          v5 = v9;
        }
      }

      v4 = [components countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  gamepadEventSource = [v5 gamepadEventSource];

  return gamepadEventSource;
}

- (void)settingsDidChange
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = getGCSettingsLogger(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D2CD5000, v3, OS_LOG_TYPE_INFO, "settingsDidChange", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  keyEnumerator = [(NSMapTable *)selfCopy->_clientSettingsEndpoints keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSMapTable *)selfCopy->_clientSettingsEndpoints objectForKey:v9];
        settingsStore = selfCopy->_settingsStore;
        persistentIdentifierForSettings = [(_GCDefaultLogicalDevice *)selfCopy persistentIdentifierForSettings];
        bundleIdentifier = [v9 bundleIdentifier];
        v14 = [(GCSSettingsStoreService *)settingsStore profileForPersistentControllerIdentifier:persistentIdentifierForSettings appBundleIdentifier:bundleIdentifier];
        anonymizedCopy = [v14 anonymizedCopy];

        [v10 setSettingsProfile:anonymizedCopy];
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v6);
  }

  [(_GCDefaultLogicalDevice *)&selfCopy->super.isa updateLightForActiveClient];
  objc_sync_exit(selfCopy);
}

- (id)persistentIdentifierForSettings
{
  identifier = [(_GCDefaultLogicalDevice *)self identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    identifier2 = [(_GCDefaultLogicalDevice *)self identifier];
  }

  else
  {
    identifier2 = &stru_1F4E3B4E0;
  }

  return identifier2;
}

- (id)makeSyntheticController
{
  v3 = [_GCSyntheticControllerDescription alloc];
  identifier = [(_GCDefaultLogicalDevice *)self identifier];
  persistentIdentifierForSettings = [(_GCDefaultLogicalDevice *)self persistentIdentifierForSettings];
  v6 = [(_GCSyntheticControllerDescription *)v3 initWithControllerIdentifier:identifier persistentIdentifier:persistentIdentifierForSettings];

  return v6;
}

- (id)hapticDriver
{
  driverConnection = [(_GCPhysicalDevice *)self->_underlyingDevice driverConnection];
  remoteProxy = [driverConnection remoteProxy];

  return remoteProxy;
}

- (void)initWithPhysicalDevice:(uint64_t)a1 configuration:manager:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)initWithPhysicalDevice:(uint64_t)a1 configuration:manager:.cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_1_17(&dword_1D2CD5000, v3, v4, "Unable to receive response from driver light service!", v5, v6, v7, v8, v9);
  }
}

- (void)initWithPhysicalDevice:(uint64_t)a1 configuration:manager:.cold.3(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)initWithPhysicalDevice:(uint64_t)a1 configuration:manager:.cold.4(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)initWithPhysicalDevice:(uint64_t)a1 configuration:manager:.cold.5(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_1_17(&dword_1D2CD5000, v3, v4, "Unable to receive response from driver adaptive trigger service!", v5, v6, v7, v8, v9);
  }
}

- (void)initWithPhysicalDevice:(uint64_t)a1 configuration:manager:.cold.6(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)initWithPhysicalDevice:(uint64_t)a1 configuration:manager:.cold.7(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)initWithPhysicalDevice:(uint64_t)a1 configuration:manager:.cold.8(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)initWithPhysicalDevice:(uint64_t)a1 configuration:manager:.cold.9(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_1_17(&dword_1D2CD5000, v3, v4, "Unable to receive response from driver battery service!", v5, v6, v7, v8, v9);
  }
}

- (void)initWithPhysicalDevice:(uint64_t)a1 configuration:manager:.cold.10(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)initWithPhysicalDevice:(void *)a1 configuration:(uint8_t *)buf manager:(os_log_t)log .cold.11(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_ERROR, "[%@] #WARNING: Missing user defaults.", buf, 0xCu);
}

- (void)adaptiveTriggersXPCProxyServerEndpoint:(uint64_t)a1 didReceiveAdaptiveTriggersChange:forIndex:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x1Cu);
  }
}

- (void)systemGestureXPCProxyServerEndpoint:(uint64_t)a1 didSetSystemGestureStateForInput:enabled:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x12u);
  }
}

- (void)motionXPCProxyServerEndpoint:(uint64_t)a1 didReceiveSensorsActiveChange:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x12u);
  }
}

- (void)startTrackingSessionForClient:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_10_6(a1))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)startTrackingSessionForClient:(NSObject *)a1 .cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_10_6(a1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)stopTrackingSessionForClient:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_10_6(a1))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)stopTrackingSessionForClient:(NSObject *)a1 .cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_10_6(a1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)_addClient:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_7(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_DEBUG, "[%@] Client added: %@", v4, 0x16u);
}

- (void)_removeClient:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_7(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_DEBUG, "[%@] Client removed: %@", v4, 0x16u);
}

- (uint64_t)updateAdaptiveTriggersForActiveClient
{
  v4 = *self;
  initOff = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
  [v4 setAdaptiveTriggersPayload:initOff forIndex:0];

  v6 = *self;
  initOff2 = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
  *a2 = initOff2;
  return [v6 setAdaptiveTriggersPayload:initOff2 forIndex:1];
}

@end