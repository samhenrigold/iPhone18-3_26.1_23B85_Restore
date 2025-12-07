@interface CMContinuityCaptureProvider
+ (id)filterCapabilitiesByMinorVersion:(id)version;
- (BOOL)activate;
- (BOOL)connectClient:(id)client error:(id *)error;
- (BOOL)setProviderProperties:(id)properties error:(id *)error;
- (CMContinuityCaptureProvider)initWithQueue:(id)queue;
- (NSSet)availableProperties;
- (NSString)description;
- (id)_captureDeviceForEntity:(int64_t)entity deviceUID:(id)d;
- (id)_debugInfo;
- (id)debugInfo;
- (id)providerPropertiesForProperties:(id)properties error:(id *)error;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_reset:(id)_reset;
- (void)_terminateCompleteForDevice:(id)device;
- (void)cancel;
- (void)createCompositeDeviceWithTransportDevice:(id)device;
- (void)debugInfo:(id)info;
- (void)disconnectClient:(id)client;
- (void)logDevicePublishSummary:(id)summary publishTime:(id)time;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)postEventOnAllDevices:(id)devices data:(id)data;
- (void)registerStreamIntentForDevice:(id)device forTransportType:(int64_t)type completion:(id)completion;
- (void)reset:(id)reset;
- (void)resetTransportDevice:(id)device forIdentifier:(id)identifier;
- (void)terminateAllDevices;
- (void)terminateCompleteForDevice:(id)device;
- (void)terminateCompositeDeviceWithIdentifier:(id)identifier;
- (void)terminateDevicesIfApplicable:(id)applicable;
- (void)unregisterStreamIntentForDevice:(id)device;
- (void)updateState;
@end

@implementation CMContinuityCaptureProvider

+ (id)filterCapabilitiesByMinorVersion:(id)version
{
  versionCopy = version;
  v4 = 0x277CBE000uLL;
  array = [MEMORY[0x277CBEB18] array];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v40 = versionCopy;
  obj = [versionCopy devicesCapabilities];
  v44 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (!v44)
  {
    goto LABEL_56;
  }

  v42 = *v81;
  do
  {
    v5 = 0;
    do
    {
      if (*v81 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v46 = v5;
      v6 = *(*(&v80 + 1) + 8 * v5);
      array2 = [*(v4 + 2840) array];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v47 = v6;
      streamFormats = [v6 streamFormats];
      v9 = [streamFormats countByEnumeratingWithState:? objects:? count:?];
      if (v9)
      {
        v10 = v9;
        v11 = *v77;
        do
        {
          for (i = 0; i != v10; i = (i + 1))
          {
            if (*v77 != v11)
            {
              objc_enumerationMutation(streamFormats);
            }

            v13 = *(*(&v76 + 1) + 8 * i);
            if (!v13)
            {
              memset(v75, 0, sizeof(v75));
              memset(v72, 0, sizeof(v72));
LABEL_19:
              [array2 addObject:?];
              continue;
            }

            [v75 minimumSupportedVersion];
            if (v75[0] == 3)
            {
              [v73 minimumSupportedVersion];
              if (v74 <= 304)
              {
                goto LABEL_19;
              }
            }

            [v72 minimumSupportedVersion];
            if (v72[0] <= 2)
            {
              goto LABEL_19;
            }

            v14 = CMContinuityCaptureLog(1);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v13;
              _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "Filtered out unsupported stream format %@", &buf, 0xCu);
            }
          }

          v10 = [streamFormats countByEnumeratingWithState:? objects:? count:?];
        }

        while (v10);
      }

      array3 = [*(v4 + 2840) array];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      manualFramingSupportedStreamFormats = [v47 manualFramingSupportedStreamFormats];
      v16 = [manualFramingSupportedStreamFormats countByEnumeratingWithState:? objects:? count:?];
      if (!v16)
      {
        goto LABEL_38;
      }

      v17 = v16;
      v18 = *v69;
      do
      {
        for (j = 0; j != v17; j = (j + 1))
        {
          if (*v69 != v18)
          {
            objc_enumerationMutation(manualFramingSupportedStreamFormats);
          }

          v20 = *(*(&v68 + 1) + 8 * j);
          if (!v20)
          {
            memset(v67, 0, sizeof(v67));
            memset(v64, 0, sizeof(v64));
LABEL_35:
            [array2 addObject:?];
            continue;
          }

          [v67 minimumSupportedVersion];
          if (v67[0] == 3)
          {
            [v65 minimumSupportedVersion];
            if (v66 <= 304)
            {
              goto LABEL_35;
            }
          }

          [v64 minimumSupportedVersion];
          if (v64[0] <= 2)
          {
            goto LABEL_35;
          }

          v21 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v20;
            _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "Filtered out unsupported manual framing format %@", &buf, 0xCu);
          }
        }

        v17 = [manualFramingSupportedStreamFormats countByEnumeratingWithState:? objects:? count:?];
      }

      while (v17);
LABEL_38:

      array4 = [*(v4 + 2840) array];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      controls = [v47 controls];
      v24 = [controls countByEnumeratingWithState:? objects:? count:?];
      if (!v24)
      {
        goto LABEL_54;
      }

      v25 = v24;
      v26 = *v61;
      while (2)
      {
        v27 = 0;
        while (2)
        {
          if (*v61 != v26)
          {
            objc_enumerationMutation(controls);
          }

          v28 = *(*(&v60 + 1) + 8 * v27);
          if (!v28)
          {
            memset(v59, 0, sizeof(v59));
            memset(v56, 0, sizeof(v56));
LABEL_51:
            [array4 addObject:?];
            goto LABEL_52;
          }

          [v59 minimumSupportedVersion];
          if (v59[0] == 3)
          {
            [v57 minimumSupportedVersion];
            if (v58 <= 304)
            {
              goto LABEL_51;
            }
          }

          [v56 minimumSupportedVersion];
          if (v56[0] <= 2)
          {
            goto LABEL_51;
          }

          v29 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v28;
            _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "Filtered out unsupported control %@", &buf, 0xCu);
          }

LABEL_52:
          if (v25 != ++v27)
          {
            continue;
          }

          break;
        }

        v25 = [controls countByEnumeratingWithState:? objects:? count:?];
        if (v25)
        {
          continue;
        }

        break;
      }

LABEL_54:

      v30 = [CMContinuityCaptureDeviceCapabilities alloc];
      [v47 entityType];
      v31 = [CMContinuityCaptureDeviceCapabilities initWithEntityType:v30 streamFormats:"initWithEntityType:streamFormats:manualFramingSupportedStreamFormats:controls:" manualFramingSupportedStreamFormats:? controls:?];
      [array addObject:?];

      v5 = v46 + 1;
      v4 = 0x277CBE000;
    }

    while ((v46 + 1) != v44);
    v44 = [obj countByEnumeratingWithState:? objects:? count:?];
  }

  while (v44);
LABEL_56:

  if (v40)
  {
    [v55 capabilitiesVersion];
    v32 = v55[0];
    [&v52 capabilitiesVersion];
    v33 = v53;
    [v50 capabilitiesVersion];
    v34 = v51;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v32 = 0;
    memset(v55, 0, sizeof(v55));
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v50[0] = 0;
    v50[1] = 0;
  }

  if (v33 >= 304)
  {
    v33 = 304;
  }

  if (v32 >= 3)
  {
    v35 = 3;
  }

  else
  {
    v35 = v32;
  }

  if (v34 >= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v34;
  }

  v37 = [CMContinuityCaptureCapabilities alloc];
  [v40 userDisabled];
  *&buf = v35;
  *(&buf + 1) = v33;
  v49 = v36;
  v38 = [CMContinuityCaptureCapabilities initWithCapabilitiesVersion:v37 devicesCapabilities:"initWithCapabilitiesVersion:devicesCapabilities:userDisabled:" userDisabled:?];

  return v38;
}

- (void)logDevicePublishSummary:(id)summary publishTime:(id)time
{
  summaryCopy = summary;
  timeCopy = time;
  if ([(NSMutableArray *)self->_devicePublishLogs count]>= 0xB)
  {
    [(NSMutableArray *)self->_devicePublishLogs removeObjectAtIndex:?];
  }

  if (summaryCopy)
  {
    v8 = summaryCopy;
  }

  else
  {
    v8 = &stru_2854DE150;
  }

  if (timeCopy)
  {
    v9 = timeCopy;
  }

  else
  {
    v9 = &stru_2854DE150;
  }

  v12 = v8;
  v13 = v9;
  v10 = CMContinuityCaptureGetCurrentTimeString();
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:@"DeviceIdentifier" forKeys:@"DevicePublishTime" count:{@"DeviceTerminateTime", v12, v13, v10}];

  [(NSMutableArray *)self->_devicePublishLogs addObject:?];
}

- (void)terminateAllDevices
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    availableCaptureDevicesByIdentifiers = self->_availableCaptureDevicesByIdentifiers;
    *buf = 138412802;
    selfCopy2 = self;
    v16 = 2082;
    v17 = "[CMContinuityCaptureProvider terminateAllDevices]";
    v18 = 2114;
    v19 = availableCaptureDevicesByIdentifiers;
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %{public}s %{public}@ ", buf, 0x20u);
  }

  allKeys = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allKeys];
  v6 = [allKeys countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v8 = v6;
    v9 = MEMORY[0];
    *&v7 = 138412546;
    v13 = v7;
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(8 * i);
        if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:v13])
        {
          v12 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            selfCopy2 = self;
            v16 = 2114;
            v17 = v11;
            _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%@ Device %{public}@ has pending termination", buf, 0x16u);
          }
        }

        else
        {
          [(CMContinuityCaptureProvider *)self terminateCompositeDeviceWithIdentifier:?];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }
}

- (void)postEventOnAllDevices:(id)devices data:(id)data
{
  devicesCopy = devices;
  dataCopy = data;
  allValues = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allValues];
  v9 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v17 = 2112;
    v18 = devicesCopy;
    v19 = 2114;
    v20 = allValues;
    v21 = 2114;
    v22 = dataCopy;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ Post %@ on devices %{public}@ data %{public}@", buf, 0x2Au);
  }

  if (devicesCopy)
  {
    v10 = allValues;
    v11 = [NSObject countByEnumeratingWithState:v10 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v11)
    {
      v12 = v11;
      v13 = MEMORY[0];
      do
      {
        for (i = 0; i != v12; i = (i + 1))
        {
          if (MEMORY[0] != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(8 * i) postEvent:? entity:? data:?];
        }

        v12 = [NSObject countByEnumeratingWithState:v10 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v12);
    }
  }

  else
  {
    v10 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [CMContinuityCaptureProvider postEventOnAllDevices:v10 data:?];
    }
  }
}

- (void)terminateCompleteForDevice:(id)device
{
  deviceCopy = device;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CMContinuityCaptureProvider_terminateCompleteForDevice___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__CMContinuityCaptureProvider_terminateCompleteForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _terminateCompleteForDevice:?];
    WeakRetained = v2;
  }
}

- (void)createCompositeDeviceWithTransportDevice:(id)device
{
  deviceCopy = device;
  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdentifier = [deviceCopy deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];
    *buf = 138412802;
    selfCopy = self;
    v50 = 2080;
    v51 = "[CMContinuityCaptureProvider createCompositeDeviceWithTransportDevice:]";
    v52 = 2114;
    v53 = uUIDString;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@", buf, 0x20u);
  }

  v9 = [CMContinuityCaptureCompositeDevice initWithDevice:"initWithDevice:provider:" provider:?];
  if (!v9)
  {
    [(CMContinuityCaptureProvider *)self createCompositeDeviceWithTransportDevice:deviceCopy];
    goto LABEL_11;
  }

  availableCaptureDevicesByIdentifiers = self->_availableCaptureDevicesByIdentifiers;
  deviceIdentifier2 = [deviceCopy deviceIdentifier];
  uUIDString2 = [deviceIdentifier2 UUIDString];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];

  v13 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  activeSession = [v13 activeSession];
  if (activeSession)
  {
    v15 = activeSession;
    v16 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    activeSession2 = [v16 activeSession];
    device = [activeSession2 device];
    if ([device hasStreamIntent])
    {
      v40 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      activeSession3 = [v40 activeSession];
      device2 = [activeSession3 device];
      deviceIdentifier3 = [device2 deviceIdentifier];
      uUIDString3 = [deviceIdentifier3 UUIDString];
      [deviceCopy deviceIdentifier];
      v21 = v41 = deviceCopy;
      [v21 UUIDString];
      v22 = v37 = v16;
      v38 = [uUIDString3 isEqualToString:?];

      deviceCopy = v41;
      if ((v38 & 1) == 0)
      {
        [CMContinuityCaptureCompositeDevice postEvent:v9 entity:"postEvent:entity:data:" data:?];
      }

      goto LABEL_10;
    }
  }

LABEL_10:
  client = [(CMContinuityCaptureCompositeDevice *)v9 client];
  device3 = [client device];
  magicStateMonitor = [device3 magicStateMonitor];
  queue2 = [magicStateMonitor queue];
  dispatch_assert_queue_not_V2(queue2);

  client2 = [(CMContinuityCaptureCompositeDevice *)v9 client];
  device4 = [client2 device];
  magicStateMonitor2 = [device4 magicStateMonitor];
  queue3 = [magicStateMonitor2 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CMContinuityCaptureProvider_createCompositeDeviceWithTransportDevice___block_invoke;
  block[3] = &unk_278D5C008;
  v31 = v9;
  v46 = v31;
  selfCopy2 = self;
  dispatch_async_and_wait(queue3, block);

  v32 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  queue4 = [v32 queue];
  dispatch_assert_queue_not_V2(queue4);

  v34 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  queue5 = [v34 queue];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __72__CMContinuityCaptureProvider_createCompositeDeviceWithTransportDevice___block_invoke_2;
  v42[3] = &unk_278D5C008;
  v43 = v31;
  selfCopy3 = self;
  dispatch_async_and_wait(queue5, v42);

  [(NSMutableSet *)self->_observedDevices addObject:?];
LABEL_11:
}

void __72__CMContinuityCaptureProvider_createCompositeDeviceWithTransportDevice___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client];
  v1 = [v3 device];
  v2 = [v1 magicStateMonitor];
  [v2 addObserver:? forKeyPath:? options:? context:?];
}

void __72__CMContinuityCaptureProvider_createCompositeDeviceWithTransportDevice___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v1 = [v2 device];
  [v1 addObserver:? forKeyPath:? options:? context:?];
}

void __70__CMContinuityCaptureProvider_terminateCompositeDeviceWithIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client];
  v1 = [v3 device];
  v2 = [v1 magicStateMonitor];
  [v2 removeObserver:? forKeyPath:? context:?];
}

void __70__CMContinuityCaptureProvider_terminateCompositeDeviceWithIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v1 = [v2 device];
  [v1 removeObserver:? forKeyPath:? context:?];
}

- (void)reset:(id)reset
{
  resetCopy = reset;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureProvider *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CMContinuityCaptureProvider_reset___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = resetCopy;
  v6 = resetCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __37__CMContinuityCaptureProvider_reset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reset:?];
    WeakRetained = v2;
  }
}

- (void)_reset:(id)_reset
{
  _resetCopy = _reset;
  client = [_resetCopy client];
  device = [client device];
  deviceIdentifier = [device deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];

  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:?])
  {
    v10 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      selfCopy = self;
      v13 = 2114;
      v14 = _resetCopy;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ Reset %{public}@", &v11, 0x16u);
    }

    [(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers removeObject:?];
    [(CMContinuityCaptureProvider *)self updateState];
  }
}

- (void)resetTransportDevice:(id)device forIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:?])
  {
    v9 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v68 = 2114;
      v69 = identifierCopy;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ Device %{public}@ has pending termination", buf, 0x16u);
    }
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKeyedSubscript:?];
    client = [v9 client];
    device = [client device];
    v12 = [device isEqual:?];

    if ((v12 & 1) == 0)
    {
      v13 = CMContinuityCaptureLog(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        client2 = [v9 client];
        device2 = [client2 device];
        *buf = 138413058;
        selfCopy2 = self;
        v68 = 2080;
        v69 = "[CMContinuityCaptureProvider resetTransportDevice:forIdentifier:]";
        v70 = 2112;
        v71 = device2;
        v72 = 2112;
        v73 = deviceCopy;
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%@ %s (%@) -> (%@)", buf, 0x2Au);
      }

      observedDevices = self->_observedDevices;
      client3 = [v9 client];
      device3 = [client3 device];
      LODWORD(observedDevices) = [(NSMutableSet *)observedDevices containsObject:?];

      v19 = &qword_2425D8000;
      v20 = 0x278D5B000;
      if (observedDevices)
      {
        client4 = [v9 client];
        device4 = [client4 device];
        magicStateMonitor = [device4 magicStateMonitor];
        queue2 = [magicStateMonitor queue];
        dispatch_assert_queue_not_V2(queue2);

        client5 = [v9 client];
        device5 = [client5 device];
        magicStateMonitor2 = [device5 magicStateMonitor];
        queue3 = [magicStateMonitor2 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke;
        block[3] = &unk_278D5C008;
        v29 = v9;
        v64 = v29;
        selfCopy3 = self;
        dispatch_async_and_wait(queue3, block);

        v19 = &qword_2425D8000;
        v30 = +[CMContinuityCaptureDiscoverySession sharedInstance];
        queue4 = [v30 queue];
        dispatch_assert_queue_not_V2(queue4);

        v32 = +[CMContinuityCaptureDiscoverySession sharedInstance];
        queue5 = [v32 queue];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_2;
        v60[3] = &unk_278D5C008;
        v34 = v29;
        v61 = v34;
        selfCopy4 = self;
        dispatch_async_and_wait(queue5, v60);

        v35 = self->_observedDevices;
        client6 = [v34 client];
        device6 = [client6 device];
        [(NSMutableSet *)v35 removeObject:?];

        v20 = 0x278D5B000uLL;
      }

      sharedInstance = [*(v20 + 2216) sharedInstance];
      queue6 = [sharedInstance queue];
      dispatch_assert_queue_not_V2(queue6);

      sharedInstance2 = [*(v20 + 2216) sharedInstance];
      queue7 = [sharedInstance2 queue];
      v54 = MEMORY[0x277D85DD0];
      v55 = v19[2];
      v42 = v55;
      v56 = __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_3;
      v57 = &unk_278D5C008;
      v43 = deviceCopy;
      v58 = v43;
      selfCopy5 = self;
      dispatch_async_and_wait(queue7, &v54);

      magicStateMonitor3 = [v43 magicStateMonitor];
      queue8 = [magicStateMonitor3 queue];
      dispatch_assert_queue_not_V2(queue8);

      magicStateMonitor4 = [v43 magicStateMonitor];
      queue9 = [magicStateMonitor4 queue];
      v48 = MEMORY[0x277D85DD0];
      v49 = v42;
      v50 = __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_4;
      v51 = &unk_278D5C008;
      v52 = v43;
      selfCopy6 = self;
      dispatch_async_and_wait(queue9, &v48);

      [(NSMutableSet *)self->_observedDevices addObject:v48, v49, v50, v51];
    }

    [v9 resetTransportDevice:?];
  }
}

void __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client];
  v1 = [v3 device];
  v2 = [v1 magicStateMonitor];
  [v2 removeObserver:? forKeyPath:? context:?];
}

void __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v1 = [v2 device];
  [v1 removeObserver:? forKeyPath:? context:?];
}

void __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) magicStateMonitor];
  [v1 addObserver:? forKeyPath:? options:? context:?];
}

- (void)updateState
{
  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  allKeys = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allKeys];
  v28 = [v4 initWithArray:?];

  v6 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  availableClientDevices = [v6 availableClientDevices];

  v8 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy5 = self;
    v31 = 2114;
    v32 = availableClientDevices;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ CurrentDevices : %{public}@", buf, 0x16u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = availableClientDevices;
  v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v12 = v10;
    v13 = *v36;
    *&v11 = 138412546;
    v27 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v35 + 1) + 8 * v14);
        deviceIdentifier = [v15 deviceIdentifier];
        uUIDString = [deviceIdentifier UUIDString];

        if ([v15 userDisconnected])
        {
          v18 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            deviceIdentifier2 = [v15 deviceIdentifier];
            wired = [v15 wired];
            *buf = 138412802;
            selfCopy5 = self;
            v31 = 2114;
            v32 = deviceIdentifier2;
            v33 = 1024;
            LODWORD(v34) = wired;
            _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%@ Ignore Device %{public}@ in User Disconnect Mode (wired:%d)", buf, 0x1Cu);
          }

LABEL_20:

          goto LABEL_21;
        }

        v21 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKey:?];

        if (!v21)
        {
          capabilities = [v15 capabilities];
          v18 = [CMContinuityCaptureProvider filterCapabilitiesByMinorVersion:?];

          v24 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            selfCopy5 = self;
            v31 = 2114;
            v32 = uUIDString;
            v33 = 2114;
            v34 = v18;
            _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%@ New Device (%{public}@) : %{public}@", buf, 0x20u);
          }

          [(CMContinuityCaptureProvider *)self createCompositeDeviceWithTransportDevice:?];
          goto LABEL_20;
        }

        v22 = CMContinuityCaptureLog(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v27;
          selfCopy5 = self;
          v31 = 2114;
          v32 = uUIDString;
          _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%@ Device (%{public}@) present", buf, 0x16u);
        }

        [v28 removeObject:?];
        if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:?])
        {
          v18 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            selfCopy5 = self;
            v31 = 2114;
            v32 = uUIDString;
            _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%@ Device %{public}@ has pending termination, skip reset", buf, 0x16u);
          }

          goto LABEL_20;
        }

        [CMContinuityCaptureProvider resetTransportDevice:"resetTransportDevice:forIdentifier:" forIdentifier:?];
LABEL_21:

        v14 = (v14 + 1);
      }

      while (v12 != v14);
      v25 = [v9 countByEnumeratingWithState:? objects:? count:?];
      v12 = v25;
    }

    while (v25);
  }

  allObjects = [v28 allObjects];
  [(CMContinuityCaptureProvider *)self terminateDevicesIfApplicable:?];
}

- (void)terminateDevicesIfApplicable:(id)applicable
{
  applicableCopy = applicable;
  dispatch_assert_queue_V2(self->_queue);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = applicableCopy;
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 138412546;
    v13 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:v13])
        {
          v12 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            selfCopy = self;
            v16 = 2114;
            v17 = v11;
            _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%@ Device %{public}@ has pending termination", buf, 0x16u);
          }
        }

        else
        {
          [(CMContinuityCaptureProvider *)self terminateCompositeDeviceWithIdentifier:?];
        }

        v10 = (v10 + 1);
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }
}

- (BOOL)activate
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __39__CMContinuityCaptureProvider_activate__block_invoke;
  v8 = &unk_278D5C080;
  objc_copyWeak(&v9, &location);
  dispatch_async(queue, &v5);
  [MEMORY[0x277CC1B98] startServiceWithProvider:{v5, v6, v7, v8}];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return 1;
}

uint64_t __39__CMContinuityCaptureProvider_activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = +[CMContinuityCaptureUserOnboarding sharedInstance];
    v3 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    atomic_store(1u, v5 + 224);
    [v3 addObserver:? forKeyPath:? options:? context:?];
    [v2 addObserver:? forKeyPath:? options:? context:?];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)cancel
{
  v3 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v26 = 2082;
    v27 = "[CMContinuityCaptureProvider cancel]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %{public}s", buf, 0x16u);
  }

  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  allValues = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allValues];
  v6 = [allValues countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(allValues);
        }

        continuityCaptureDevices = [*(8 * i) continuityCaptureDevices];
        v11 = [continuityCaptureDevices countByEnumeratingWithState:? objects:? count:?];
        if (v11)
        {
          v12 = v11;
          v13 = MEMORY[0];
          do
          {
            for (j = 0; j != v12; j = (j + 1))
            {
              if (MEMORY[0] != v13)
              {
                objc_enumerationMutation(continuityCaptureDevices);
              }

              [*(8 * j) invalidate];
            }

            v12 = [continuityCaptureDevices countByEnumeratingWithState:? objects:? count:?];
          }

          while (v12);
        }
      }

      v7 = [allValues countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  devices = [(CMIOExtensionProvider *)self devices];
  v16 = [devices countByEnumeratingWithState:? objects:? count:?];
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0];
    do
    {
      for (k = 0; k != v17; k = (k + 1))
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(devices);
        }

        [CMIOExtensionProvider removeDevice:"removeDevice:error:" error:?];
      }

      v17 = [devices countByEnumeratingWithState:? objects:? count:?];
    }

    while (v17);
  }

  [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers removeAllObjects];
  v20 = +[CMContinuityCaptureUserOnboarding sharedInstance];
  v21 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  v22 = v21;
  v23 = atomic_load(&self->_observingStateKVOs);
  if (v23)
  {
    [v21 removeObserver:? forKeyPath:? context:?];
    [v20 removeObserver:? forKeyPath:? context:?];
    atomic_store(0, &self->_observingStateKVOs);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__CMContinuityCaptureProvider_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = pathCopy;
  v19 = objectCopy;
  v20 = changeCopy;
  v21[1] = context;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __78__CMContinuityCaptureProvider_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:? ofObject:? change:? context:?];
    WeakRetained = v2;
  }
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  dispatch_assert_queue_V2(self->_queue);
  if (CMContinityCaptureDebugLogEnabled(v12, v13))
  {
    v14 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy = self;
      v31 = 2114;
      v32 = pathCopy;
      v33 = 2114;
      v34 = objectCopy;
      _os_log_debug_impl(&dword_242545000, v14, OS_LOG_TYPE_DEBUG, "%@ keypath:%{public}@ object:%{public}@", buf, 0x20u);
    }
  }

  if ([pathCopy isEqualToString:?])
  {
    goto LABEL_6;
  }

  if (![pathCopy isEqualToString:?])
  {
    if (![pathCopy isEqualToString:?])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v15 = [changeCopy objectForKeyedSubscript:?];
  integerValue = [v15 integerValue];

  if (integerValue == 4)
  {
    v17 = [changeCopy objectForKeyedSubscript:?];
    integerValue2 = [v17 integerValue];

    if (integerValue2 <= 2)
    {
      v19 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      availableClientDevices = [v19 availableClientDevices];

      v21 = availableClientDevices;
      v22 = [v21 countByEnumeratingWithState:? objects:? count:?];
      if (v22)
      {
        v23 = v22;
        v24 = MEMORY[0];
        do
        {
          for (i = 0; i != v23; i = (i + 1))
          {
            if (MEMORY[0] != v24)
            {
              objc_enumerationMutation(v21);
            }

            magicStateMonitor = [*(8 * i) magicStateMonitor];
            [magicStateMonitor holdMagicStateAssertion:?];
          }

          v23 = [v21 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v23);
      }
    }
  }

  v27 = [changeCopy objectForKeyedSubscript:?];
  integerValue3 = [v27 integerValue];

  if (integerValue3 >= 3)
  {
LABEL_6:
    [(CMContinuityCaptureProvider *)self updateState];
  }

LABEL_7:
}

- (void)registerStreamIntentForDevice:(id)device forTransportType:(int64_t)type completion:(id)completion
{
  typeCopy = type;
  deviceCopy = device;
  completionCopy = completion;
  v10 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138413058;
    selfCopy = self;
    v13 = 2082;
    v14 = "[CMContinuityCaptureProvider registerStreamIntentForDevice:forTransportType:completion:]";
    v15 = 2114;
    v16 = deviceCopy;
    v17 = 1024;
    v18 = typeCopy;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ %{public}s Device:%{public}@ Transport:%d", &v11, 0x26u);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)unregisterStreamIntentForDevice:(id)device
{
  deviceCopy = device;
  objc_initWeak(&location, self);
  v5 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v5 unscheduleNotification:?];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CMContinuityCaptureProvider_unregisterStreamIntentForDevice___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v10, &location);
  v9 = deviceCopy;
  v7 = deviceCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __63__CMContinuityCaptureProvider_unregisterStreamIntentForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[24] allValues];
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0];
      do
      {
        for (i = 0; i != v6; i = (i + 1))
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(8 * i);
          if (([*(a1 + 32) isEqual:?] & 1) == 0)
          {
            [v9 postEvent:? entity:? data:?];
          }
        }

        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }
  }
}

- (id)debugInfo
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(CMContinuityCaptureProvider *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__CMContinuityCaptureProvider_debugInfo__block_invoke;
  v7[3] = &unk_278D5C438;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_async_and_wait(queue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __40__CMContinuityCaptureProvider_debugInfo__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _debugInfo];

  return MEMORY[0x2821F96F8]();
}

- (id)_debugInfo
{
  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  allKeys = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allKeys];
  if (allKeys)
  {
    [v4 setObject:? forKeyedSubscript:?];
  }

  devicePublishLogs = self->_devicePublishLogs;
  if (devicePublishLogs)
  {
    v7 = [(NSMutableArray *)devicePublishLogs copy];
    [v4 setObject:? forKeyedSubscript:?];
  }

  return v4;
}

- (void)debugInfo:(id)info
{
  infoCopy = info;
  debugInfo = [(CMContinuityCaptureProvider *)self debugInfo];
  infoCopy[2](infoCopy, debugInfo);
}

- (BOOL)connectClient:(id)client error:(id *)error
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  v6 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    clientID = [clientCopy clientID];
    v10 = 138413059;
    selfCopy = self;
    v12 = 2080;
    v13 = "[CMContinuityCaptureProvider connectClient:error:]";
    v14 = 2113;
    v15 = clientID;
    v16 = 1025;
    v17 = [clientCopy pid];
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s Client Connected - %{private}@, %{private}d", &v10, 0x26u);
  }

  v8 = +[CMContinuityCaptureUserOnboarding sharedInstance];
  [v8 reportClientState:? forClient:?];

  return 1;
}

- (void)disconnectClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientID = [clientCopy clientID];
    *buf = 138413059;
    selfCopy = self;
    v21 = 2080;
    v22 = "[CMContinuityCaptureProvider disconnectClient:]";
    v23 = 2113;
    v24 = clientID;
    v25 = 1025;
    v26 = [clientCopy pid];
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s Client Disconnected - %{private}@, %{private}d", buf, 0x26u);
  }

  obj = [(CMIOExtensionProvider *)self devices];
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

        streams = [*(8 * i) streams];
        v12 = [streams countByEnumeratingWithState:? objects:? count:?];
        if (v12)
        {
          v13 = v12;
          v14 = MEMORY[0];
          do
          {
            for (j = 0; j != v13; j = (j + 1))
            {
              if (MEMORY[0] != v14)
              {
                objc_enumerationMutation(streams);
              }

              v16 = *(8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v16 disconnectClient:?];
              }
            }

            v13 = [streams countByEnumeratingWithState:? objects:? count:?];
          }

          while (v13);
        }
      }

      v8 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }

  v17 = +[CMContinuityCaptureUserOnboarding sharedInstance];
  [v17 reportClientState:? forClient:?];
}

- (id)providerPropertiesForProperties:(id)properties error:(id *)error
{
  if (properties)
  {
    queue = self->_queue;
    propertiesCopy = properties;
    dispatch_assert_queue_V2(queue);
    v6 = [MEMORY[0x277CC1BA0] providerPropertiesWithDictionary:?];
    v7 = [propertiesCopy containsObject:?];

    if (v7)
    {
      v8 = [MEMORY[0x277CC1B90] propertyStateWithValue:?];
      if (v8)
      {
        v9 = v8;
        [v6 setPropertyState:? forProperty:?];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setProviderProperties:(id)properties error:(id *)error
{
  if (properties)
  {
    queue = self->_queue;
    propertiesCopy = properties;
    dispatch_assert_queue_V2(queue);
    propertiesDictionary = [propertiesCopy propertiesDictionary];
    client = [propertiesCopy client];

    v10 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      selfCopy2 = self;
      v21 = 2114;
      v22 = propertiesDictionary;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ propertyDict %{public}@", &v19, 0x16u);
    }

    v11 = [propertiesDictionary objectForKeyedSubscript:?];

    if (v11)
    {
      v12 = CMContinuityCaptureLog(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [propertiesDictionary objectForKeyedSubscript:?];
        value = [v13 value];
        v19 = 138412802;
        selfCopy2 = self;
        v21 = 2114;
        v22 = value;
        v23 = 2114;
        v24 = client;
        _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%@ CMIOExtensionPropertyClientStreamingFromDALDevice %{public}@ client %{public}@", &v19, 0x20u);
      }

      v15 = [propertiesDictionary objectForKeyedSubscript:?];
      value2 = [v15 value];
      [value2 BOOLValue];

      v17 = +[CMContinuityCaptureUserOnboarding sharedInstance];
      [v17 reportClientState:? forClient:?];
    }
  }

  return properties != 0;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:v5, self];

  return v6;
}

- (id)_captureDeviceForEntity:(int64_t)entity deviceUID:(id)d
{
  v5 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKeyedSubscript:?];
  continuityCaptureDevices = [v5 continuityCaptureDevices];
  v7 = [continuityCaptureDevices countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(continuityCaptureDevices);
        }

        v11 = *(8 * i);
        if ([v11 entity] == entity)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [continuityCaptureDevices countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (CMContinuityCaptureProvider)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = CMContinuityCaptureProvider;
  v6 = [(CMIOExtensionProvider *)&v10 initWithSource:self clientQueue:queueCopy];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_queue, queue), v7->_queue))
  {
    OUTLINED_FUNCTION_0_0(objc_alloc_init(MEMORY[0x277CBEB58]), 216);
    OUTLINED_FUNCTION_0_0(objc_alloc_init(MEMORY[0x277CBEB38]), 192);
    OUTLINED_FUNCTION_0_0(objc_alloc_init(MEMORY[0x277CBEB18]), 208);
    OUTLINED_FUNCTION_0_0(objc_alloc_init(MEMORY[0x277CBEB58]), 200);
    OUTLINED_FUNCTION_0_0(objc_alloc_init(MEMORY[0x277CBEB58]), 232);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_terminateCompleteForDevice:(id)device
{
  deviceCopy = device;
  client = [deviceCopy client];
  device = [client device];
  deviceIdentifier = [device deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];

  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  selfCopy = self;
  v10 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKey:?];

  if (v10)
  {
    v11 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v30 = 2114;
      v31 = deviceCopy;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ Terminate %{public}@ ", buf, 0x16u);
    }

    availableCaptureDevicesByIdentifiers = self->_availableCaptureDevicesByIdentifiers;
    client2 = [deviceCopy client];
    device2 = [client2 device];
    deviceIdentifier2 = [device2 deviceIdentifier];
    uUIDString2 = [deviceIdentifier2 UUIDString];
    [(NSMutableDictionary *)availableCaptureDevicesByIdentifiers removeObjectForKey:?];

    allKeys = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allKeys];
    v18 = [allKeys countByEnumeratingWithState:? objects:? count:?];
    if (v18)
    {
      v19 = v18;
      v20 = MEMORY[0];
      do
      {
        for (i = 0; i != v19; i = (i + 1))
        {
          if (MEMORY[0] != v20)
          {
            objc_enumerationMutation(allKeys);
          }

          if (([uUIDString isEqualToString:?] & 1) == 0)
          {
            client3 = [deviceCopy client];
            [client3 device];
            v24 = v23 = deviceCopy;
            hasStreamIntent = [v24 hasStreamIntent];

            deviceCopy = v23;
            if (hasStreamIntent)
            {
              v26 = [(NSMutableDictionary *)selfCopy->_availableCaptureDevicesByIdentifiers objectForKeyedSubscript:?];
              [v26 postEvent:? entity:? data:?];
            }
          }
        }

        v19 = [allKeys countByEnumeratingWithState:? objects:? count:?];
      }

      while (v19);
    }

    [(CMContinuityCaptureProvider *)selfCopy _reset:?];
  }
}

- (void)terminateCompositeDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v42 = 2080;
    v43 = "[CMContinuityCaptureProvider terminateCompositeDeviceWithIdentifier:]";
    v44 = 2114;
    v45 = identifierCopy;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@", buf, 0x20u);
  }

  v7 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKey:?];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKeyedSubscript:?];
    publishTime = [v8 publishTime];
    if (publishTime)
    {
      publishTime2 = [v8 publishTime];
      [CMContinuityCaptureProvider logDevicePublishSummary:"logDevicePublishSummary:publishTime:" publishTime:?];
    }

    else
    {
      [CMContinuityCaptureProvider logDevicePublishSummary:"logDevicePublishSummary:publishTime:" publishTime:?];
    }

    [(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers addObject:?];
    [(CMContinuityCaptureProvider *)self unregisterStreamIntentForDevice:?];
    observedDevices = self->_observedDevices;
    client = [v8 client];
    device = [client device];
    LODWORD(observedDevices) = [(NSMutableSet *)observedDevices containsObject:?];

    if (observedDevices)
    {
      client2 = [v8 client];
      device2 = [client2 device];
      magicStateMonitor = [device2 magicStateMonitor];
      queue2 = [magicStateMonitor queue];
      dispatch_assert_queue_not_V2(queue2);

      client3 = [v8 client];
      device3 = [client3 device];
      magicStateMonitor2 = [device3 magicStateMonitor];
      queue3 = [magicStateMonitor2 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__CMContinuityCaptureProvider_terminateCompositeDeviceWithIdentifier___block_invoke;
      block[3] = &unk_278D5C008;
      v22 = v8;
      v38 = v22;
      selfCopy2 = self;
      dispatch_async_and_wait(queue3, block);

      v23 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      queue4 = [v23 queue];
      dispatch_assert_queue_not_V2(queue4);

      v25 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      queue5 = [v25 queue];
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __70__CMContinuityCaptureProvider_terminateCompositeDeviceWithIdentifier___block_invoke_2;
      v34 = &unk_278D5C008;
      v27 = v22;
      v35 = v27;
      selfCopy3 = self;
      dispatch_async_and_wait(queue5, &v31);

      v28 = self->_observedDevices;
      client4 = [v27 client];
      device4 = [client4 device];
      [(NSMutableSet *)v28 removeObject:?];
    }

    [v8 postEvent:? entity:? data:?];
  }
}

- (NSSet)availableProperties
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = v2;
  if (v2)
  {
    [v2 addObject:?];
    [v3 addObject:?];
    [v3 addObject:?];
  }

  return v3;
}

- (void)postEventOnAllDevices:(uint64_t)a1 data:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_242545000, a2, OS_LOG_TYPE_FAULT, "%@ Invalid event name", &v2, 0xCu);
}

- (void)createCompositeDeviceWithTransportDevice:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v4 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a2 deviceIdentifier];
    v6 = [v5 UUIDString];
    v7 = 138412546;
    v8 = a1;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%@ Failed to create capture device for identifier %{public}@", &v7, 0x16u);
  }
}

@end