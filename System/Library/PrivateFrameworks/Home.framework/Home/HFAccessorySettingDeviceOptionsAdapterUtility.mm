@interface HFAccessorySettingDeviceOptionsAdapterUtility
- (HFAccessorySettingDeviceOptionsAdapterUtility)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode groupedAccessory:(BOOL)accessory delegate:(id)delegate;
- (HFAccessorySettingDeviceOptionsAdapterUtilityDelegate)delegate;
- (id)_reachableDevices:(id)devices;
- (id)_sendRapportMessageToAccessoriesWithRequestID:(id)d request:(id)request options:(id)options;
- (id)_sendRapportMessageToAccessoryWithRequestID:(id)d request:(id)request options:(id)options;
- (id)_sendRapportMessageToDevice:(id)device requestID:(id)d request:(id)request options:(id)options;
- (id)extractWiFiInfo;
- (id)identifyAccessory;
- (id)requestAirDrop:(id)drop;
- (id)resetAccessory;
- (id)restartAccessories;
- (id)restartAccessory;
- (void)_resetRapportClientWithInvalidation:(BOOL)invalidation;
- (void)_setupRapportClient;
- (void)_updateRapportReachable;
- (void)dealloc;
@end

@implementation HFAccessorySettingDeviceOptionsAdapterUtility

- (HFAccessorySettingDeviceOptionsAdapterUtility)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode groupedAccessory:(BOOL)accessory delegate:(id)delegate
{
  v27 = *MEMORY[0x277D85DE8];
  vendorCopy = vendor;
  delegateCopy = delegate;
  if (mode)
  {
    selfCopy = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = HFAccessorySettingDeviceOptionsAdapterUtility;
    v12 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)&v20 init];
    if (v12)
    {
      v13 = vendorCopy;
      v14 = &unk_282584A38;
      if ([v13 conformsToProtocol:v14])
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      mediaProfileContainer = v12->_mediaProfileContainer;
      v12->_mediaProfileContainer = v16;

      objc_storeWeak(&v12->_delegate, delegateCopy);
      v18 = HFLogForCategory(0x3CuLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v22 = v12;
        v23 = 2080;
        v24 = "[HFAccessorySettingDeviceOptionsAdapterUtility initWithHomeKitSettingsVendor:mode:groupedAccessory:delegate:]";
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "%@:%s Instantiated utility class, about to reset rapport client, with media profile container %@", buf, 0x20u);
      }

      [(HFAccessorySettingDeviceOptionsAdapterUtility *)v12 _resetRapportClientWithInvalidation:1];
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  discoveryLink = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];

  if (discoveryLink)
  {
    discoveryLink2 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
    [discoveryLink2 setDeviceFoundHandler:0];

    discoveryLink3 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
    [discoveryLink3 setDeviceLostHandler:0];

    discoveryLink4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
    [discoveryLink4 setInterruptionHandler:0];

    discoveryLink5 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
    [discoveryLink5 setInvalidationHandler:0];

    discoveryLink6 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
    [discoveryLink6 invalidate];
  }

  v9.receiver = self;
  v9.super_class = HFAccessorySettingDeviceOptionsAdapterUtility;
  [(HFAccessorySettingDeviceOptionsAdapterUtility *)&v9 dealloc];
}

- (id)identifyAccessory
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[HFAccessorySettingDeviceOptionsAdapterUtility identifyAccessory]";
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToAccessoryWithRequestID:@"com.apple.identify" request:0 options:0];

  return v4;
}

- (id)restartAccessory
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[HFAccessorySettingDeviceOptionsAdapterUtility restartAccessory]";
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToAccessoryWithRequestID:@"com.apple.SoundBoard.RebootDeviceRequest" request:0 options:0];

  return v4;
}

- (id)restartAccessories
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[HFAccessorySettingDeviceOptionsAdapterUtility restartAccessories]";
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToAccessoriesWithRequestID:@"com.apple.SoundBoard.RebootDeviceRequest" request:0 options:0];

  return v4;
}

- (id)resetAccessory
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[HFAccessorySettingDeviceOptionsAdapterUtility resetAccessory]";
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToAccessoryWithRequestID:@"com.apple.SoundBoard.ObliterateRequest" request:0 options:0];

  return v4;
}

- (id)requestAirDrop:(id)drop
{
  v23 = *MEMORY[0x277D85DE8];
  dropCopy = drop;
  v5 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = dropCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Sending AirDrop request for results: %@", buf, 0xCu);
  }

  v6 = [dropCopy objectForKeyedSubscript:@"sysdiagnosePath"];
  if ([v6 length])
  {
    v7 = +[HFUtilities deviceAirDropIdentifier];
    if ([v7 length])
    {
      v20[0] = v7;
      v8 = MEMORY[0x277CCABB0];
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v10 = [v8 numberWithDouble:?];
      v19[2] = @"sysdiagnosePath";
      v20[1] = v10;
      v20[2] = v6;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

      v12 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToAccessoryWithRequestID:@"com.apple.homepod.AirDropFile" request:v11 options:0];
    }

    else
    {
      v16 = HFLogForCategory(0x3CuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Invalid (Empty) airDropID", buf, 2u);
      }

      v17 = MEMORY[0x277D2C900];
      v11 = [MEMORY[0x277CCA9B8] hf_errorWithCode:25 operation:@"Invalid AirDrop ID" options:0];
      v12 = [v17 futureWithError:v11];
    }

    v15 = v12;
  }

  else
  {
    v13 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Invalid (Empty) Sysdiagnose Path", buf, 2u);
    }

    v14 = MEMORY[0x277D2C900];
    v7 = [MEMORY[0x277CCA9B8] hf_errorWithCode:25 operation:@"Invalid Sysdiagnose Path" options:0];
    v15 = [v14 futureWithError:v7];
  }

  return v15;
}

- (id)extractWiFiInfo
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[HFAccessorySettingDeviceOptionsAdapterUtility extractWiFiInfo]";
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToAccessoryWithRequestID:@"com.apple.SoundBoard.ExtractWiFiInfo" request:0 options:0];

  return v4;
}

- (void)_setupRapportClient
{
  discoveryLink = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];

  if (!discoveryLink)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(MEMORY[0x277D44160]);
    [v4 setControlFlags:2054];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke;
    v16[3] = &unk_277DF4460;
    objc_copyWeak(&v17, &location);
    [v4 setInvalidationHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_290;
    v14[3] = &unk_277DF4460;
    objc_copyWeak(&v15, &location);
    [v4 setInterruptionHandler:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_291;
    v12[3] = &unk_277DFAD98;
    objc_copyWeak(&v13, &location);
    [v4 setDeviceFoundHandler:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_293;
    v10[3] = &unk_277DFAD98;
    objc_copyWeak(&v11, &location);
    [v4 setDeviceLostHandler:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_294;
    v9[3] = &unk_277DFADC0;
    v9[4] = self;
    [v4 setDeviceChangedHandler:v9];
    v5 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Now Activating RPCompanionLinkClient...", buf, 2u);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_296;
    v6[3] = &unk_277DF3860;
    objc_copyWeak(&v7, &location);
    [v4 activateWithCompletion:v6];
    [(HFAccessorySettingDeviceOptionsAdapterUtility *)self setDiscoveryLink:v4];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);

    objc_destroyWeak(&location);
  }
}

void __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRapportClientActivationFailCount:{objc_msgSend(WeakRetained, "rapportClientActivationFailCount") + 1}];
  [WeakRetained _resetRapportClientWithInvalidation:0];
  v2 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "RPCompanionLinkClient was invalidated.", v3, 2u);
  }
}

void __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRapportClientActivationFailCount:{objc_msgSend(WeakRetained, "rapportClientActivationFailCount") + 1}];
  [WeakRetained _resetRapportClientWithInvalidation:1];
  v2 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "RPCompanionLinkClient was interrupted.", v3, 2u);
  }
}

void __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_291(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEBUG, "Device Found from Rapport..%@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateRapportReachable];
}

void __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_293(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEBUG, "Device lost from Rapport..%@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateRapportReachable];
}

void __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_294(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_debug_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEBUG, "device changed from Rapport..%@", &v5, 0xCu);
  }

  [*(a1 + 32) _updateRapportReachable];
}

void __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_296(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "RPCompanionLinkClient failed to activate: %@", &v7, 0xCu);
    }

    [v5 setRapportClientActivationFailCount:{objc_msgSend(v5, "rapportClientActivationFailCount") + 1}];
    [v5 _resetRapportClientWithInvalidation:1];
  }

  else
  {
    [WeakRetained _updateRapportReachable];
  }
}

- (void)_resetRapportClientWithInvalidation:(BOOL)invalidation
{
  v12 = *MEMORY[0x277D85DE8];
  if (invalidation)
  {
    discoveryLink = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
    [discoveryLink invalidate];
  }

  discoveryLink2 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
  [discoveryLink2 setDeviceFoundHandler:0];

  discoveryLink3 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
  [discoveryLink3 setDeviceLostHandler:0];

  discoveryLink4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
  [discoveryLink4 setInterruptionHandler:0];

  discoveryLink5 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
  [discoveryLink5 setInvalidationHandler:0];

  [(HFAccessorySettingDeviceOptionsAdapterUtility *)self setDiscoveryLink:0];
  if ([(HFAccessorySettingDeviceOptionsAdapterUtility *)self rapportClientActivationFailCount]> 2)
  {
    v9 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = 3;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "RPCompanionLinkClient activation exceeded  (%lu) activation attempts. Seems like a bug in Rapport. Please file a bug.", &v10, 0xCu);
    }
  }

  else
  {

    [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _setupRapportClient];
  }
}

- (void)_updateRapportReachable
{
  mediaProfileContainer = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self mediaProfileContainer];
  accessories = [mediaProfileContainer accessories];
  allObjects = [accessories allObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HFAccessorySettingDeviceOptionsAdapterUtility__updateRapportReachable__block_invoke;
  v8[3] = &unk_277DFADE8;
  v8[4] = self;
  v6 = [allObjects na_flatMap:v8];

  delegate = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self delegate];
  [delegate accessoryReachableOverRapport:{objc_msgSend(v6, "count") != 0}];
}

- (id)_reachableDevices:(id)devices
{
  devicesCopy = devices;
  discoveryLink = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
  activeDevices = [discoveryLink activeDevices];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__HFAccessorySettingDeviceOptionsAdapterUtility__reachableDevices___block_invoke;
  v20[3] = &unk_277DFAE10;
  v7 = devicesCopy;
  v21 = v7;
  v8 = [activeDevices na_filter:v20];

  discoveryLink2 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
  activeDevices2 = [discoveryLink2 activeDevices];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__HFAccessorySettingDeviceOptionsAdapterUtility__reachableDevices___block_invoke_2;
  v18 = &unk_277DFAE10;
  v19 = v7;
  v11 = v7;
  v12 = [activeDevices2 na_filter:&v15];
  v13 = [v8 arrayByAddingObjectsFromArray:{v12, v15, v16, v17, v18}];

  return v13;
}

uint64_t __67__HFAccessorySettingDeviceOptionsAdapterUtility__reachableDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 homeKitIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __67__HFAccessorySettingDeviceOptionsAdapterUtility__reachableDevices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 statusFlags] & 2) != 0)
  {
    v5 = [v3 idsDeviceIdentifier];
    v6 = [*(a1 + 32) accountIdentifier];
    v7 = [v6 UUIDString];
    v4 = [v5 isEqualToString:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sendRapportMessageToAccessoryWithRequestID:(id)d request:(id)request options:(id)options
{
  optionsCopy = options;
  requestCopy = request;
  dCopy = d;
  mediaProfileContainer = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self mediaProfileContainer];
  accessories = [mediaProfileContainer accessories];
  anyObject = [accessories anyObject];
  v14 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _reachableDevices:anyObject];

  firstObject = [v14 firstObject];
  v16 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToDevice:firstObject requestID:dCopy request:requestCopy options:optionsCopy];

  return v16;
}

- (id)_sendRapportMessageToAccessoriesWithRequestID:(id)d request:(id)request options:(id)options
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  mediaProfileContainer = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self mediaProfileContainer];
  accessories = [mediaProfileContainer accessories];
  allObjects = [accessories allObjects];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __111__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToAccessoriesWithRequestID_request_options___block_invoke;
  v27[3] = &unk_277DFADE8;
  v27[4] = self;
  v14 = [allObjects na_map:v27];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __111__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToAccessoriesWithRequestID_request_options___block_invoke_2;
  v23[3] = &unk_277DFAE38;
  v23[4] = self;
  v24 = dCopy;
  v25 = requestCopy;
  v26 = optionsCopy;
  v15 = optionsCopy;
  v16 = requestCopy;
  v17 = dCopy;
  v18 = [v14 na_map:v23];

  v19 = [MEMORY[0x277D2C900] combineAllFutures:v18];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v21 = [v19 reschedule:mainThreadScheduler];

  return v21;
}

id __111__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToAccessoriesWithRequestID_request_options___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = [a2 firstObject];
  v5 = [v3 _sendRapportMessageToDevice:v4 requestID:a1[5] request:a1[6] options:a1[7]];

  return v5;
}

- (id)_sendRapportMessageToDevice:(id)device requestID:(id)d request:(id)request options:(id)options
{
  v50 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v14 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v47 = uUID;
    v48 = 2112;
    v49 = deviceCopy;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "(Request %@) Preparing to send rapport message to '%@'", buf, 0x16u);
  }

  v15 = objc_alloc_init(MEMORY[0x277D44160]);
  [v15 setDestinationDevice:deviceCopy];
  v16 = objc_opt_new();
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __103__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToDevice_requestID_request_options___block_invoke;
  v42[3] = &unk_277DF32A8;
  v18 = v16;
  v43 = v18;
  v19 = v15;
  v44 = v19;
  v20 = uUID;
  v45 = v20;
  v21 = [mainThreadScheduler afterDelay:v42 performBlock:10.0];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __103__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToDevice_requestID_request_options___block_invoke_303;
  v33[3] = &unk_277DFAE88;
  v34 = v21;
  v35 = v20;
  v22 = v18;
  v36 = v22;
  v37 = v19;
  v38 = optionsCopy;
  v39 = requestCopy;
  v40 = dCopy;
  v41 = deviceCopy;
  v23 = deviceCopy;
  v24 = dCopy;
  v25 = requestCopy;
  v26 = optionsCopy;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  [v27 activateWithCompletion:v33];
  v30 = v41;
  v31 = v22;

  return v22;
}

void __103__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToDevice_requestID_request_options___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA9B8] na_timeoutError];
    [v2 finishWithError:v3];

    [*(a1 + 40) invalidate];
    v4 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "(Request %@) Timeout trying to find send!", &v6, 0xCu);
    }
  }
}

void __103__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToDevice_requestID_request_options___block_invoke_303(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) cancel];
  if (v3)
  {
    v4 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 40);
      *buf = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v3;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "(Request %@) Companion link is invalid; error '%@'", buf, 0x16u);
    }

    [*(a1 + 48) finishWithError:v3];
    [*(a1 + 56) invalidate];
  }

  else
  {
    v5 = *(a1 + 64);
    if (!v5)
    {
      v5 = MEMORY[0x277CBEC10];
    }

    v6 = v5;
    v7 = *(a1 + 72);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v20 = @"com.apple.Home.RapportRequest";
      v9 = MEMORY[0x277CCABB0];
      v10 = [MEMORY[0x277CBEAA8] date];
      [v10 timeIntervalSince1970];
      v11 = [v9 numberWithDouble:?];
      v21 = v11;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    }

    v12 = *(a1 + 56);
    v13 = *(a1 + 80);
    v14 = [*(a1 + 88) identifier];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __103__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToDevice_requestID_request_options___block_invoke_304;
    v16[3] = &unk_277DFAE60;
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    [v12 sendRequestID:v13 request:v8 destinationID:v14 options:v6 responseHandler:v16];
  }
}

void __103__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToDevice_requestID_request_options___block_invoke_304(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = HFLogForCategory(0x3CuLL);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138412546;
      v15 = v13;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "(Request %@) rapport message send failed with error: %@", &v14, 0x16u);
    }

    [*(a1 + 40) finishWithError:v9];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "(Request %@) rapport message sent; response: %@ / options: %@", &v14, 0x20u);
    }

    [*(a1 + 40) finishWithResult:v7];
  }

  [*(a1 + 48) invalidate];
}

- (HFAccessorySettingDeviceOptionsAdapterUtilityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end