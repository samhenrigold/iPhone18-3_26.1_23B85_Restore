@interface DMTSharingDiscoveryPrimitives
- (DMTSharingDiscoveryPrimitives)init;
- (id)sessionForDevice:(id)device;
- (void)activateWithCompletion:(id)completion;
- (void)addDependencyHandlers;
- (void)deactivate;
- (void)handleDevice:(id)device;
@end

@implementation DMTSharingDiscoveryPrimitives

- (DMTSharingDiscoveryPrimitives)init
{
  v10.receiver = self;
  v10.super_class = DMTSharingDiscoveryPrimitives;
  v2 = [(DMTSharingDiscoveryPrimitives *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.devicemanagementtools.discovery", 0);
    discoveryCallbackQueue = v2->_discoveryCallbackQueue;
    v2->_discoveryCallbackQueue = v3;

    v5 = objc_opt_new();
    deviceDiscovery = v2->_deviceDiscovery;
    v2->_deviceDiscovery = v5;

    [(SFDeviceDiscovery *)v2->_deviceDiscovery setDispatchQueue:v2->_discoveryCallbackQueue];
    [(SFDeviceDiscovery *)v2->_deviceDiscovery setDiscoveryFlags:0x8000];
    [(SFDeviceDiscovery *)v2->_deviceDiscovery setPurpose:@"RemoteManagementPairing"];
    [(SFDeviceDiscovery *)v2->_deviceDiscovery setChangeFlags:1];
    [(SFDeviceDiscovery *)v2->_deviceDiscovery setFastScanMode:1];
    [(SFDeviceDiscovery *)v2->_deviceDiscovery setScanRate:50];
    v7 = objc_opt_new();
    foundDevicesByIdentifier = v2->_foundDevicesByIdentifier;
    v2->_foundDevicesByIdentifier = v7;
  }

  return v2;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(DMTSharingDiscoveryPrimitives *)self addDependencyHandlers];
  objc_initWeak(&location, self);
  deviceDiscovery = [(DMTSharingDiscoveryPrimitives *)self deviceDiscovery];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__DMTSharingDiscoveryPrimitives_activateWithCompletion___block_invoke;
  v7[3] = &unk_278F5E3B8;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [deviceDiscovery activateWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__DMTSharingDiscoveryPrimitives_activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained setActivated:v4 == 0];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)deactivate
{
  deviceDiscovery = [(DMTSharingDiscoveryPrimitives *)self deviceDiscovery];
  [deviceDiscovery invalidate];
}

- (id)sessionForDevice:(id)device
{
  deviceCopy = device;
  v4 = [DMTCatalystSharingBackedDeviceSession alloc];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [(DMTCatalystSharingBackedDeviceSession *)v4 initWithDevice:deviceCopy locale:currentLocale];

  return v6;
}

- (void)addDependencyHandlers
{
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke;
  v17[3] = &unk_278F5E3E0;
  objc_copyWeak(&v18, &location);
  deviceDiscovery = [(DMTSharingDiscoveryPrimitives *)self deviceDiscovery];
  [deviceDiscovery setInvalidationHandler:v17];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_2;
  v15[3] = &unk_278F5E3E0;
  objc_copyWeak(&v16, &location);
  deviceDiscovery2 = [(DMTSharingDiscoveryPrimitives *)self deviceDiscovery];
  [deviceDiscovery2 setInterruptionHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_10;
  v13[3] = &unk_278F5E408;
  objc_copyWeak(&v14, &location);
  deviceDiscovery3 = [(DMTSharingDiscoveryPrimitives *)self deviceDiscovery];
  [deviceDiscovery3 setDeviceLostHandler:v13];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_12;
  v11[3] = &unk_278F5E408;
  objc_copyWeak(&v12, &location);
  deviceDiscovery4 = [(DMTSharingDiscoveryPrimitives *)self deviceDiscovery];
  [deviceDiscovery4 setDeviceFoundHandler:v11];

  v9 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v10, &location);
  v7 = [(DMTSharingDiscoveryPrimitives *)self deviceDiscovery:v9];
  [v7 setDeviceChangedHandler:&v9];

  deviceDiscovery5 = [(DMTSharingDiscoveryPrimitives *)self deviceDiscovery];
  [deviceDiscovery5 setTimeoutHandler:&__block_literal_global_1];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setInvalidated:1];
    v2 = [v4 invalidationHandler];
    if (v2)
    {
      v3 = DMTErrorWithCodeAndUserInfo(10, 0);
      (v2)[2](v2, v3);
    }

    WeakRetained = v4;
  }
}

void __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained isInvalidated];
    if (v3)
    {
      v4 = _DMTLogGeneral_0(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_24891B000, v4, OS_LOG_TYPE_INFO, "Interrupted after invalidation, no-op", v6, 2u);
      }
    }

    else
    {
      [v2 setInvalidated:1];
      v4 = [v2 invalidationHandler];
      v5 = DMTErrorWithCodeAndUserInfo(11, 0);
      (*(v4 + 16))(v4, v5);
    }
  }
}

void __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 deviceActionType] == 21)
  {
    v5 = [WeakRetained foundDevicesByIdentifier];
    v6 = [v3 identifier];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      v9 = _DMTLogGeneral_0(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_10_cold_1(v9);
      }
    }

    v10 = [WeakRetained foundDevicesByIdentifier];
    v11 = [v3 identifier];
    [v10 setObject:0 forKeyedSubscript:v11];

    v12 = [WeakRetained deviceLostHandler];
    (v12)[2](v12, v7);
  }
}

void __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _DMTLogGeneral_0(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_12_cold_1(v3, v6);
    }

    [v5 handleDevice:v3];
  }
}

void __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_13(uint64_t a1, void *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = _DMTLogGeneral_0(WeakRetained);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_13_cold_1(v5, a3, v8);
    }

    if (a3)
    {
      v10 = _DMTLogGeneral_0(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = v5;
        v13 = 1024;
        v14 = [v5 deviceActionType];
        _os_log_impl(&dword_24891B000, v10, OS_LOG_TYPE_INFO, "Advertisement data changed for device: %@ with action type: %d", &v11, 0x12u);
      }

      [v7 handleDevice:v5];
    }
  }
}

void __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_15(uint64_t a1)
{
  v1 = _DMTLogGeneral_0(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_15_cold_1(v1);
  }
}

- (void)handleDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceActionType] == 21)
  {
    foundDevicesByIdentifier = [(DMTSharingDiscoveryPrimitives *)self foundDevicesByIdentifier];
    identifier = [deviceCopy identifier];
    v7 = [foundDevicesByIdentifier objectForKeyedSubscript:identifier];

    if (v7)
    {
      deviceFoundHandler = _DMTLogGeneral_0(v8);
      if (os_log_type_enabled(deviceFoundHandler, OS_LOG_TYPE_ERROR))
      {
        [(DMTSharingDiscoveryPrimitives *)v7 handleDevice:deviceFoundHandler];
      }
    }

    else
    {
      v7 = [[DMTSharingDevice alloc] initWithDevice:deviceCopy];
      foundDevicesByIdentifier2 = [(DMTSharingDiscoveryPrimitives *)self foundDevicesByIdentifier];
      identifier2 = [(CATSharingDevice *)v7 identifier];
      [foundDevicesByIdentifier2 setObject:v7 forKeyedSubscript:identifier2];

      deviceFoundHandler = [(DMTSharingDiscoveryPrimitives *)self deviceFoundHandler];
      (*(deviceFoundHandler + 16))(deviceFoundHandler, v7);
    }
  }
}

void __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_10_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = 0;
  _os_log_error_impl(&dword_24891B000, log, OS_LOG_TYPE_ERROR, "Primitives reported a device lost that we've never seen (%{public}@).  This is a known Sharing behavior. Falling through anyways.", &v1, 0xCu);
}

void __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_12_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = [a1 deviceActionType];
  _os_log_debug_impl(&dword_24891B000, a2, OS_LOG_TYPE_DEBUG, "deviceFoundHandler was called for device: %@ with action type: %d", &v3, 0x12u);
}

void __54__DMTSharingDiscoveryPrimitives_addDependencyHandlers__block_invoke_13_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_debug_impl(&dword_24891B000, log, OS_LOG_TYPE_DEBUG, "deviceChangedHandler was called for device: %@ with change flags: %d", &v3, 0x12u);
}

- (void)handleDevice:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_24891B000, a2, OS_LOG_TYPE_ERROR, "Primitives reported a device found that we've already seen (%{public}@). This is a known Sharing behavior.", &v2, 0xCu);
}

@end