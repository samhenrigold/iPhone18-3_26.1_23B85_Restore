@interface AXRDeviceDiscoveryManager
+ (id)sharedInstance;
- (id)_init;
- (id)cachedDiscoveredDevices;
- (id)mineDevices;
- (unint64_t)_indexOfDeviceWithEffectiveIdentifier:(id)identifier;
- (void)_discoveredDevicesChanged;
- (void)_enumerateObservers:(id)observers;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation AXRDeviceDiscoveryManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXRDeviceDiscoveryManager sharedInstance];
  }

  v3 = sharedInstance__Manager;

  return v3;
}

uint64_t __43__AXRDeviceDiscoveryManager_sharedInstance__block_invoke()
{
  sharedInstance__Manager = [[AXRDeviceDiscoveryManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)cachedDiscoveredDevices
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __52__AXRDeviceDiscoveryManager_cachedDiscoveredDevices__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) discoveredDevices];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)_enumerateObservers:(id)observers
{
  v16 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  if (observersCopy)
  {
    os_unfair_lock_lock(&self->_observersLock);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_observersLock);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = allObjects;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v6);
          }

          observersCopy[2](observersCopy, *(*(&v11 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (id)_init
{
  v29.receiver = self;
  v29.super_class = AXRDeviceDiscoveryManager;
  v2 = [(AXRDeviceDiscoveryManager *)&v29 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.AXRemoteServices.DiscoveryDeviceQueue", v4);
    deviceQueue = v2->_deviceQueue;
    v2->_deviceQueue = v5;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v2->_observersLock._os_unfair_lock_opaque = 0;
    v9 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.accessibility.switchcontrol"];
    [(AXRDeviceDiscoveryManager *)v2 setService:v9];

    mineDevices = [(AXRDeviceDiscoveryManager *)v2 mineDevices];
    v11 = objc_opt_new();
    [(AXRDeviceDiscoveryManager *)v2 setDiscoveredDevices:v11];

    [(AXRDeviceDiscoveryManager *)v2 setDevicesLock:0];
    v12 = objc_alloc_init(MEMORY[0x277D44160]);
    [(AXRDeviceDiscoveryManager *)v2 setCompanionLinkClient:v12];

    companionLinkClient = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [companionLinkClient setAppID:@"com.apple.AXRemoteServices.DeviceDiscoveryManager"];

    companionLinkClient2 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [companionLinkClient2 setControlFlags:0x200000002];

    v15 = v2->_deviceQueue;
    companionLinkClient3 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [companionLinkClient3 setDispatchQueue:v15];

    objc_initWeak(&location, v2);
    companionLinkClient4 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [companionLinkClient4 setDisconnectHandler:&__block_literal_global_14];

    companionLinkClient5 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [companionLinkClient5 setInterruptionHandler:&__block_literal_global_17];

    companionLinkClient6 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [companionLinkClient6 setInvalidationHandler:&__block_literal_global_20];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __34__AXRDeviceDiscoveryManager__init__block_invoke_21;
    v26[3] = &unk_2786656F8;
    objc_copyWeak(&v27, &location);
    companionLinkClient7 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [companionLinkClient7 setDeviceFoundHandler:v26];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __34__AXRDeviceDiscoveryManager__init__block_invoke_2;
    v24[3] = &unk_2786656F8;
    objc_copyWeak(&v25, &location);
    companionLinkClient8 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [companionLinkClient8 setDeviceLostHandler:v24];

    companionLinkClient9 = [(AXRDeviceDiscoveryManager *)v2 companionLinkClient];
    [companionLinkClient9 activateWithCompletion:&__block_literal_global_35];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke(uint64_t a1)
{
  v1 = ax_remote_connection_log(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_22952F000, v1, OS_LOG_TYPE_INFO, "discovery companion link disconnected", v2, 2u);
  }
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_15(uint64_t a1)
{
  v1 = ax_remote_connection_log(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_22952F000, v1, OS_LOG_TYPE_INFO, "discovery companion link interrupted", v2, 2u);
  }
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_18(uint64_t a1)
{
  v1 = ax_remote_connection_log(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_22952F000, v1, OS_LOG_TYPE_INFO, "discovery companion link invalidated", v2, 2u);
  }
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_21(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sourceVersion];
  v5 = ax_remote_connection_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v3 proximity];
    if (v6 > 19)
    {
      if (v6 == 20)
      {
        v7 = "Near";
        goto LABEL_12;
      }

      if (v6 == 30)
      {
        v7 = "Far";
        goto LABEL_12;
      }
    }

    else
    {
      if (!v6)
      {
        v7 = "Unknown";
        goto LABEL_12;
      }

      if (v6 == 10)
      {
        v7 = "Immed";
LABEL_12:
        *buf = 138412802;
        v51 = v3;
        v52 = 2112;
        v53 = v4;
        v54 = 2080;
        v55 = v7;
        _os_log_impl(&dword_22952F000, v5, OS_LOG_TYPE_INFO, "found device: %@ (version: %@), proximity: %s", buf, 0x20u);
        goto LABEL_13;
      }
    }

    v7 = "?";
    goto LABEL_12;
  }

LABEL_13:

  if (!v4)
  {
    v8 = _os_feature_enabled_impl();
    v9 = v8;
    v10 = ax_remote_connection_log(v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (!v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_22952F000, v10, OS_LOG_TYPE_INFO, "No source version!", buf, 2u);
      }

      goto LABEL_61;
    }

    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_22952F000, v10, OS_LOG_TYPE_INFO, "Ignoring source version", buf, 2u);
    }
  }

  v10 = [v4 componentsSeparatedByString:@"."];
  v12 = [v10 count];
  if (v12 < 1)
  {
    v15 = 0.0;
  }

  else
  {
    v13 = v12;
    v14 = [v10 objectAtIndexedSubscript:0];
    v15 = (10000 * [v14 integerValue]);

    if (v13 != 1)
    {
      v16 = [v10 objectAtIndexedSubscript:1];
      v17 = (fmax([v16 integerValue], 99.0) * 100.0 + v15);

      if (v13 > 2)
      {
        v18 = [v10 objectAtIndexedSubscript:2];
        v17 = (fmax([v18 integerValue], 99.0) + v17);
      }

      goto LABEL_24;
    }
  }

  v17 = v15;
LABEL_24:
  if (v17 <= 3999999)
  {
    v19 = _os_feature_enabled_impl();
    v20 = v19;
    WeakRetained = ax_remote_connection_log(v19);
    v22 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO);
    if (!v20)
    {
      if (v22)
      {
        *buf = 0;
        _os_log_impl(&dword_22952F000, WeakRetained, OS_LOG_TYPE_INFO, "skipping older source version", buf, 2u);
      }

      goto LABEL_60;
    }

    if (v22)
    {
      *buf = 0;
      _os_log_impl(&dword_22952F000, WeakRetained, OS_LOG_TYPE_INFO, "Ignoring rapport version", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = [WeakRetained mineDevices];
  v24 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v24)
  {
    v32 = v23;
    goto LABEL_59;
  }

  v25 = v24;
  v41 = v10;
  v42 = v4;
  v26 = *v46;
  while (2)
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v46 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v45 + 1) + 8 * i);
      v29 = [v3 idsDeviceIdentifier];
      v30 = [v28 uniqueIDOverride];
      v31 = [v29 isEqualToString:v30];

      if (v31)
      {
        v32 = v28;

        if (!v32)
        {
          v10 = v41;
          v4 = v42;
          goto LABEL_60;
        }

        v33 = [v32 deviceType];
        v34 = v33 > 8 || ((1 << v33) & 0x1E3) == 0;
        v10 = v41;
        if (!v34)
        {
          v35 = _os_feature_enabled_impl();
          v36 = v35;
          v37 = ax_remote_connection_log(v35);
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
          if (!v36)
          {
            if (v38)
            {
              *buf = 0;
              _os_log_impl(&dword_22952F000, v37, OS_LOG_TYPE_INFO, "skipping unsupported device type", buf, 2u);
            }

            goto LABEL_58;
          }

          if (v38)
          {
            *buf = 0;
            _os_log_impl(&dword_22952F000, v37, OS_LOG_TYPE_INFO, "Ignoring unsupported device type", buf, 2u);
          }
        }

        v37 = [v3 effectiveIdentifier];
        v39 = [WeakRetained _indexOfDeviceWithEffectiveIdentifier:v37];
        v40 = [[AXRemoteDevice alloc] initWithDevice:v3];
        if (v39 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v43 = WeakRetained;
          v44 = v40;
          AX_PERFORM_WITH_LOCK();
          [v43 _discoveredDevicesChanged];
        }

LABEL_58:
        v4 = v42;

        goto LABEL_59;
      }
    }

    v25 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v25)
    {
      continue;
    }

    break;
  }

  v32 = v23;
  v10 = v41;
  v4 = v42;
LABEL_59:

LABEL_60:
LABEL_61:
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_29(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveredDevices];
  [v2 addObject:*(a1 + 40)];
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ax_remote_connection_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_22952F000, v4, OS_LOG_TYPE_INFO, "lost device: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v3 effectiveIdentifier];
  if ([WeakRetained _indexOfDeviceWithEffectiveIdentifier:v6] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = WeakRetained;
    AX_PERFORM_WITH_LOCK();
    [v8 _discoveredDevicesChanged];
  }
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_31(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveredDevices];
  [v2 removeObjectAtIndex:*(a1 + 40)];
}

void __34__AXRDeviceDiscoveryManager__init__block_invoke_2_32(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ax_remote_connection_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_22952F000, v3, OS_LOG_TYPE_INFO, "activated discovery companion link with error: %@", &v4, 0xCu);
  }
}

- (id)mineDevices
{
  service = [(AXRDeviceDiscoveryManager *)self service];
  v3 = [service linkedDevicesWithRelationship:1];

  return v3;
}

- (unint64_t)_indexOfDeviceWithEffectiveIdentifier:(id)identifier
{
  identifierCopy = identifier;
  discoveredDevices = [(AXRDeviceDiscoveryManager *)self discoveredDevices];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__AXRDeviceDiscoveryManager__indexOfDeviceWithEffectiveIdentifier___block_invoke;
  v9[3] = &unk_278665768;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [discoveredDevices indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __67__AXRDeviceDiscoveryManager__indexOfDeviceWithEffectiveIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)_discoveredDevicesChanged
{
  cachedDiscoveredDevices = [(AXRDeviceDiscoveryManager *)self cachedDiscoveredDevices];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__AXRDeviceDiscoveryManager__discoveredDevicesChanged__block_invoke;
  v5[3] = &unk_2786656D0;
  v5[4] = self;
  v6 = cachedDiscoveredDevices;
  v4 = cachedDiscoveredDevices;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __54__AXRDeviceDiscoveryManager__discoveredDevicesChanged__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__AXRDeviceDiscoveryManager__discoveredDevicesChanged__block_invoke_2;
  v2[3] = &unk_278665790;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _enumerateObservers:v2];
}

@end