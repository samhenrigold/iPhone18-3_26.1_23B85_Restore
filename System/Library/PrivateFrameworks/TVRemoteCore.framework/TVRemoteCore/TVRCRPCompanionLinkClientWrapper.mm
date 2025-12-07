@interface TVRCRPCompanionLinkClientWrapper
+ (TVRCRPCompanionLinkClientWrapper)wrapperWithDevice:(id)device;
- (BOOL)_featureSupported:(id)supported;
- (NSDictionary)alternateIdentifiers;
- (NSString)description;
- (NSString)identifier;
- (NSString)idsIdentifier;
- (NSString)model;
- (NSString)name;
- (NSString)sourceVersion;
- (TVRCRPCompanionLinkClientWrapper)initWithDevice:(id)device;
- (_TVRCCompanionLinkClientWrapperDelegate)delegate;
- (id)_stringForFeatureFlags:(unint64_t)flags;
- (id)newCompanionLinkClient;
- (id)supportedButtons;
- (int)_commandForButtonEvent:(id)event;
- (int)_stateForButtonEvent:(id)event;
- (int64_t)linkType;
- (void)_disconnectWithError:(id)error;
- (void)_fetchSiriEnabledWithSiriInfo:(id)info completionHandler:(id)handler;
- (void)_fetchTVSystemStatusAndStartMonitoring;
- (void)_handleSideEffectsForEvent:(id)event;
- (void)_invalidateAndReset;
- (void)_invalidateAndResetWithCompletionHandler:(id)handler;
- (void)_invalidateRemoteFindingManager;
- (void)_launchApplicationOrURL:(id)l;
- (void)_resetState;
- (void)_resolveFeatureFlags;
- (void)_sendSessionStart;
- (void)_sendSessionStop;
- (void)_setupFeatureServicesIfNeeded;
- (void)_setupHidSessionIfNeeded;
- (void)_setupLegacyMediaEventsManager;
- (void)_setupMediaEventsManager;
- (void)_setupRemoteFindingManagerIfNeeded;
- (void)_setupTextInputSessionIfNeeded;
- (void)_setupTouchSessionIfNeeded;
- (void)_startMonitoringNowPlayingInfo;
- (void)_startMonitoringSupportedActions;
- (void)_startMonitoringTVSystemStatus;
- (void)_stopMonitoringNowPlayingInfo;
- (void)_stopMonitoringSupportedActions;
- (void)_stopMonitoringTVSystemStatus;
- (void)_updateAttentionState:(int64_t)state;
- (void)_updateConnectedState;
- (void)_updateNowPlayingInfo:(id)info;
- (void)_updateSiriRemoteFindingState:(int64_t)state;
- (void)_updateSiriStatusFromSiriInfo:(id)info;
- (void)_updateSupportedButtons;
- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)connect;
- (void)dealloc;
- (void)deregisterEvent:(id)event;
- (void)disconnect;
- (void)disconnectWithError:(id)error;
- (void)enableFindingSession:(BOOL)session;
- (void)fetchLaunchableAppsWithCompletion:(id)completion;
- (void)fetchUpNextInfoWithPaginationToken:(id)token completion:(id)completion;
- (void)getCurrentRTISourceSession:(id)session;
- (void)launchAppWithBundleID:(id)d completion:(id)completion;
- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playItem:(id)item completion:(id)completion;
- (void)reconnect;
- (void)reestablishConnectionWithCompletionHandler:(id)handler;
- (void)registerEvent:(id)event options:(id)options handler:(id)handler;
- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)rpSiriSessionDidReceiveStopRecording;
- (void)sendButtonEvent:(id)event;
- (void)sendEvent:(id)event options:(id)options shouldRetry:(BOOL)retry response:(id)response;
- (void)sendTouchEvent:(id)event;
- (void)setRTISessionHandler:(id)handler;
- (void)sourceVersion;
- (void)toggleCaptions:(BOOL)captions;
- (void)updateWithDevice:(id)device;
@end

@implementation TVRCRPCompanionLinkClientWrapper

+ (TVRCRPCompanionLinkClientWrapper)wrapperWithDevice:(id)device
{
  deviceCopy = device;
  v4 = [[TVRCRPCompanionLinkClientWrapper alloc] initWithDevice:deviceCopy];

  return v4;
}

- (TVRCRPCompanionLinkClientWrapper)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = TVRCRPCompanionLinkClientWrapper;
  v6 = [(TVRCRPCompanionLinkClientWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v7->_connected = 0;
    [(TVRCRPCompanionLinkClientWrapper *)v7 _resolveFeatureFlags];
  }

  return v7;
}

- (NSString)name
{
  name = [(RPCompanionLinkDevice *)self->_device name];
  v3 = [name copy];

  return v3;
}

- (NSString)identifier
{
  effectiveIdentifier = [(RPCompanionLinkDevice *)self->_device effectiveIdentifier];
  v3 = [effectiveIdentifier copy];

  return v3;
}

- (NSString)idsIdentifier
{
  idsDeviceIdentifier = [(RPCompanionLinkDevice *)self->_device idsDeviceIdentifier];
  v3 = [idsDeviceIdentifier copy];

  return v3;
}

- (NSDictionary)alternateIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mediaRemoteIdentifier = [(RPCompanionLinkDevice *)self->_device mediaRemoteIdentifier];
  mediaRouteIdentifier = [(RPCompanionLinkDevice *)self->_device mediaRouteIdentifier];
  name = [(RPCompanionLinkDevice *)self->_device name];
  idsDeviceIdentifier = [(RPCompanionLinkDevice *)self->_device idsDeviceIdentifier];
  homeKitIdentifier = [(RPCompanionLinkDevice *)self->_device homeKitIdentifier];
  uUIDString = [homeKitIdentifier UUIDString];

  if (idsDeviceIdentifier)
  {
    [v3 setObject:idsDeviceIdentifier forKey:@"TVRCIDSID"];
  }

  if (uUIDString)
  {
    [v3 setObject:uUIDString forKey:@"HomeKitID"];
  }

  if (mediaRemoteIdentifier)
  {
    [v3 setObject:mediaRemoteIdentifier forKey:@"MediaRemoteID"];
  }

  if (mediaRouteIdentifier)
  {
    [v3 setObject:mediaRouteIdentifier forKey:@"AirplayID"];
  }

  if (name)
  {
    [v3 setObject:name forKey:@"DeviceName"];
  }

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v10;
}

- (NSString)model
{
  model = [(RPCompanionLinkDevice *)self->_device model];
  v3 = [model copy];

  return v3;
}

- (int64_t)linkType
{
  if (([(RPCompanionLinkDevice *)self->_device statusFlags]& 4) != 0)
  {
    return 3;
  }

  if (([(RPCompanionLinkDevice *)self->_device statusFlags]& 0x200) != 0)
  {
    return 2;
  }

  return ([(RPCompanionLinkDevice *)self->_device statusFlags]>> 1) & 1;
}

- (void)updateWithDevice:(id)device
{
  v35 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v6 = _TVRCRapportLog(deviceCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *v31 = "[TVRCRPCompanionLinkClientWrapper updateWithDevice:]";
    *&v31[8] = 2114;
    v32 = deviceCopy;
    v33 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s - device: %{public}@, %{public}@", buf, 0x20u);
  }

  p_device = &self->_device;
  v8 = [(RPCompanionLinkDevice *)self->_device isEqualToRPDevice:deviceCopy];
  v9 = v8;
  v10 = _TVRCRapportLog(v8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Devices are the same", buf, 2u);
    }

    deviceCapabilityFlags = [(RPCompanionLinkDevice *)*p_device deviceCapabilityFlags];
    deviceCapabilityFlags2 = [deviceCopy deviceCapabilityFlags];
    v14 = deviceCapabilityFlags2;
    if (deviceCapabilityFlags != deviceCapabilityFlags2)
    {
      v15 = _TVRCRapportLog(deviceCapabilityFlags2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        deviceCapabilityFlags3 = [(RPCompanionLinkDevice *)*p_device deviceCapabilityFlags];
        deviceCapabilityFlags4 = [deviceCopy deviceCapabilityFlags];
        *buf = 67109376;
        *v31 = deviceCapabilityFlags3;
        *&v31[4] = 1024;
        *&v31[6] = deviceCapabilityFlags4;
        _os_log_impl(&dword_26CF7F000, v15, OS_LOG_TYPE_DEFAULT, "Device capabilities changed: old: %d, new: %d", buf, 0xEu);
      }
    }

    name = [(RPCompanionLinkDevice *)*p_device name];
    name2 = [deviceCopy name];
    v20 = [name isEqualToString:name2];
    if ((v20 & 1) == 0)
    {
      v21 = _TVRCRapportLog(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        name3 = [(RPCompanionLinkDevice *)*p_device name];
        name4 = [deviceCopy name];
        *buf = 138543618;
        *v31 = name3;
        *&v31[8] = 2114;
        v32 = name4;
        v23 = name4;
        _os_log_impl(&dword_26CF7F000, v21, OS_LOG_TYPE_DEFAULT, "Device name changed: old: %{public}@, new: %{public}@", buf, 0x16u);
      }
    }

    objc_storeStrong(&self->_device, device);
    if (deviceCapabilityFlags != v14)
    {
      v24 = [(TVRCRPCompanionLinkClientWrapper *)self _findMyRemoteSupportedForDevice:deviceCopy];
      delegate = [(TVRCRPCompanionLinkClientWrapper *)self delegate];
      [delegate deviceSupportsFindMyRemote:v24];
    }

    delegate2 = [(TVRCRPCompanionLinkClientWrapper *)self delegate];
    [delegate2 didUpdateDevice:self];
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Devices are not the same", buf, 2u);
    }

    objc_storeStrong(&self->_device, device);
    connected = [(TVRCRPCompanionLinkClientWrapper *)self connected];
    if (connected)
    {
      v28 = _TVRCRapportLog(connected);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v31 = deviceCopy;
        _os_log_impl(&dword_26CF7F000, v28, OS_LOG_TYPE_DEFAULT, "Device was connected. Attempting to reconnect to new device: %{public}@", buf, 0xCu);
      }

      [(TVRCRPCompanionLinkClientWrapper *)self reconnect];
    }
  }
}

- (void)reconnect
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[TVRCRPCompanionLinkClientWrapper reconnect]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__TVRCRPCompanionLinkClientWrapper_reconnect__block_invoke;
  v4[3] = &unk_279D825E0;
  v4[4] = self;
  [(TVRCRPCompanionLinkClientWrapper *)self _invalidateAndResetWithCompletionHandler:v4];
  self->_connectionState = 1;
}

- (void)reestablishConnectionWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _TVRCRapportLog(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[TVRCRPCompanionLinkClientWrapper reestablishConnectionWithCompletionHandler:]";
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  newCompanionLinkClient = [(TVRCRPCompanionLinkClientWrapper *)self newCompanionLinkClient];
  objc_initWeak(buf, newCompanionLinkClient);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__TVRCRPCompanionLinkClientWrapper_reestablishConnectionWithCompletionHandler___block_invoke;
  v8[3] = &unk_279D83278;
  v7 = handlerCopy;
  v9 = v7;
  objc_copyWeak(&v10, buf);
  [newCompanionLinkClient activateWithCompletion:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
}

void __79__TVRCRPCompanionLinkClientWrapper_reestablishConnectionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _TVRCRapportLog(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__TVRCRPCompanionLinkClientWrapper_reestablishConnectionWithCompletionHandler___block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Reestablished connection with success", v8, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

- (void)connect
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    device = self->_device;
    *buf = 136315650;
    selfCopy3 = "[TVRCRPCompanionLinkClientWrapper connect]";
    v35 = 2112;
    selfCopy = self;
    v37 = 2114;
    v38 = device;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@ %{public}@", buf, 0x20u);
  }

  objc_initWeak(&location, self);
  activated = [(TVRCRPCompanionLinkClientWrapper *)self activated];
  if (!activated || ([(TVRCRPCompanionLinkClientWrapper *)self companionClient], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, v7))
  {
    self->_connectionState = 1;
    if (!self->_companionClient)
    {
      newCompanionLinkClient = [(TVRCRPCompanionLinkClientWrapper *)self newCompanionLinkClient];
      companionClient = self->_companionClient;
      self->_companionClient = newCompanionLinkClient;

      v11 = self->_companionClient;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke;
      v30[3] = &unk_279D826E8;
      objc_copyWeak(&v31, &location);
      [(RPCompanionLinkClient *)v11 setInvalidationHandler:v30];
      v12 = self->_companionClient;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_4;
      v28[3] = &unk_279D826E8;
      objc_copyWeak(&v29, &location);
      [(RPCompanionLinkClient *)v12 setInterruptionHandler:v28];
      flags = [(RPCompanionLinkDevice *)self->_device flags];
      self->_authenticated = (flags & 1) == 0;
      if (flags)
      {
        v14 = _TVRCRapportLog(flags);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Device is not authenticated. Setting up prompt for password handlers.", buf, 2u);
        }

        [(RPCompanionLinkClient *)self->_companionClient setFlags:1];
        [(RPCompanionLinkClient *)self->_companionClient setPasswordType:1];
        v15 = self->_companionClient;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_5;
        v26[3] = &unk_279D832C8;
        objc_copyWeak(&v27, &location);
        [(RPCompanionLinkClient *)v15 setPromptForPasswordHandler:v26];
        v16 = self->_companionClient;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_10;
        v24[3] = &unk_279D82D38;
        objc_copyWeak(&v25, &location);
        [(RPCompanionLinkClient *)v16 setAuthCompletionHandler:v24];
        objc_destroyWeak(&v25);
        objc_destroyWeak(&v27);
      }

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v31);
    }

    v17 = _TVRCRapportLog(activated);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_26CF7F000, v17, OS_LOG_TYPE_DEFAULT, "Activate companion client %@", buf, 0xCu);
    }

    v18 = self->_companionClient;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_11;
    v22 = &unk_279D82D38;
    objc_copyWeak(&v23, &location);
    [(RPCompanionLinkClient *)v18 activateWithCompletion:&v19];
    [(RPCompanionLinkClient *)self->_companionClient setEventIDRegistrationCompletion:&__block_literal_global_10, v19, v20, v21, v22];
    [(TVRCRPCompanionLinkClientWrapper *)self _updateConnectedState];
    objc_destroyWeak(&v23);
  }

  else
  {
    v8 = _TVRCRapportLog(activated);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "CompanionClient is already activated %@", buf, 0xCu);
    }

    [(TVRCRPCompanionLinkClientWrapper *)self _updateConnectedState];
  }

  objc_destroyWeak(&location);
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _TVRCRapportLog(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "companionLinkClient invalidationHandler", buf, 2u);
    }

    if (v2[8] == 1)
    {
      v4 = TVRCMakeError(400, 0);
      [v2 _disconnectWithError:v4];
    }

    v2[18] = 0;
    v5 = [v2 invalidationCompletionBlock];

    if (v5)
    {
      v7 = _TVRCRapportLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Executing queued connection request", v9, 2u);
      }

      v8 = [v2 invalidationCompletionBlock];
      v8[2]();

      [v2 setInvalidationCompletionBlock:0];
    }
  }
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _TVRCRapportLog(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "companionLinkClient interruptionHandler", v4, 2u);
    }
  }
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_5(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _TVRCRapportLog(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v5 + 3);
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "PromptForPasswordHandler called on companionLinkClient for device %{public}@", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_7;
    v12[3] = &unk_279D832A0;
    v12[4] = v5;
    v8 = [TVRXDeviceAuthenticationChallenge _challengeWithCodeToEnterLocally:v12];
    [v8 setThrottleSeconds:a3];
    v9 = [*(v5 + 10) passwordTypeActual];
    if (v9 == 7)
    {
      v10 = _TVRCRapportLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "companionLinkClient reports password type is text", buf, 2u);
      }

      [v8 setChallengeAttributes:2];
    }

    v11 = objc_loadWeakRetained(v5 + 8);
    [v11 deviceEncounteredAuthenticationChallenge:v8];
  }
}

uint64_t __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_7(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = _TVRCRapportLog(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_7_cold_1();
    }

    return [*(a1 + 32) disconnect];
  }

  else
  {
    v6 = *(*(a1 + 32) + 80);

    return [v6 tryPassword:a2];
  }
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_10(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _TVRCRapportLog(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v5[3];
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "AuthCompletionHandler called on companionLinkClient for device %{public}@. Error - %{public}@", &v11, 0x16u);
    }

    if (v3)
    {
      v9 = _TVRCRapportLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_10_cold_1();
      }

      if ([v3 code] == -6776)
      {
        v10 = TVRCMakeError(104, 0);
        [v5 _disconnectWithError:v10];
      }

      else
      {
        [v5 _disconnectWithError:v3];
      }
    }

    else
    {
      *(v5 + 10) = 1;
      [v5 _updateConnectedState];
    }
  }
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_11(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _TVRCRapportLog(WeakRetained);
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_11_cold_1();
      }

      [v5 _disconnectWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "companionLinkClient activateWithCompletion %@", &v8, 0xCu);
      }

      v5[9] = 1;
      [v5 _updateConnectedState];
    }
  }
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_12(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _TVRCRapportLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Successfully registered %{public}@", &v4, 0xCu);
  }
}

- (void)disconnect
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    device = [(TVRCRPCompanionLinkClientWrapper *)self device];
    v5 = 136315650;
    v6 = "[TVRCRPCompanionLinkClientWrapper disconnect]";
    v7 = 2114;
    v8 = device;
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s - Disconnecting %{public}@ %@", &v5, 0x20u);
  }

  [(TVRCRPCompanionLinkClientWrapper *)self _disconnectWithError:0];
}

- (void)disconnectWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = _TVRCRapportLog(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[TVRCRPCompanionLinkClientWrapper disconnectWithError:]";
    v8 = 2112;
    v9 = errorCopy;
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s error:%@ %@", &v6, 0x20u);
  }

  [(TVRCRPCompanionLinkClientWrapper *)self _disconnectWithError:errorCopy];
}

- (id)supportedButtons
{
  v33[12] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (([(TVRCRPCompanionLinkClientWrapper *)self featureFlags]& 1) != 0)
  {
    v29 = [[TVRCButton alloc] _initWithButtonType:12];
    v33[0] = v29;
    v28 = [[TVRCButton alloc] _initWithButtonType:13];
    v33[1] = v28;
    v27 = [[TVRCButton alloc] _initWithButtonType:14];
    v33[2] = v27;
    v26 = [[TVRCButton alloc] _initWithButtonType:15];
    v33[3] = v26;
    v25 = [[TVRCButton alloc] _initWithButtonType:5];
    v33[4] = v25;
    v24 = [[TVRCButton alloc] _initWithButtonType:3];
    v33[5] = v24;
    v23 = [[TVRCButton alloc] _initWithButtonType:2];
    v33[6] = v23;
    v4 = [[TVRCButton alloc] _initWithButtonType:1];
    v33[7] = v4;
    v5 = [[TVRCButton alloc] _initWithButtonType:21];
    v33[8] = v5;
    v6 = [[TVRCButton alloc] _initWithButtonType:22];
    v33[9] = v6;
    v7 = [[TVRCButton alloc] _initWithButtonType:19];
    v33[10] = v7;
    v8 = [[TVRCButton alloc] _initWithButtonType:20 hasTapAction:1 properties:0];
    v33[11] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:12];
    [v3 addObjectsFromArray:v9];
  }

  if ([(TVRCRPCompanionLinkClientWrapper *)self isSiriEnabled])
  {
    v10 = [[TVRCButton alloc] _initWithButtonType:4];
    v32 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v3 addObjectsFromArray:v11];
  }

  if (([(TVRCRPCompanionLinkClientWrapper *)self featureFlags]& 2) != 0)
  {
    v12 = [[TVRCButton alloc] _initWithButtonType:5];
    v31[0] = v12;
    v13 = [[TVRCButton alloc] _initWithButtonType:16 hasTapAction:1 properties:0];
    v31[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    [v3 addObjectsFromArray:v14];

    supportedMediaCommands = [(TVRCMediaEventsManaging *)self->_mediaManager supportedMediaCommands];
    if (supportedMediaCommands)
    {
      [v3 unionSet:supportedMediaCommands];
    }
  }

  if (([(TVRCRPCompanionLinkClientWrapper *)self featureFlags]& 8) != 0)
  {
    v16 = [[TVRCButton alloc] _initWithButtonType:30];
    v30[0] = v16;
    v17 = [[TVRCButton alloc] _initWithButtonType:26];
    v30[1] = v17;
    v18 = [[TVRCButton alloc] _initWithButtonType:27];
    v30[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
    [v3 addObjectsFromArray:v19];
  }

  if ([(TVRCRPCompanionLinkClientWrapper *)self isGuideButtonSupported])
  {
    v20 = [[TVRCButton alloc] _initWithButtonType:28];
    [v3 addObject:v20];
  }

  v21 = [MEMORY[0x277CBEB98] setWithSet:v3];

  return v21;
}

- (void)sendButtonEvent:(id)event
{
  v35 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = _TVRCRapportLog(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[TVRCRPCompanionLinkClientWrapper sendButtonEvent:]";
    v31 = 2112;
    v32 = eventCopy;
    v33 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s event:%@ %@", buf, 0x20u);
  }

  connected = [(TVRCRPCompanionLinkClientWrapper *)self connected];
  if (connected)
  {
    if ([TVRCButton _isMediaButtonEvent:eventCopy])
    {
      [(TVRCMediaEventsManaging *)self->_mediaManager sendMediaEvent:eventCopy];
      button = [eventCopy button];
      buttonType = [button buttonType];

      if ((buttonType - 17) <= 1)
      {
        [(TVRCRPCompanionLinkClientWrapper *)self toggleCaptions:buttonType == 17];
      }

      goto LABEL_24;
    }

    button2 = [eventCopy button];
    if ([button2 buttonType] == 20)
    {
      v11 = [eventCopy eventType] == 0;

      if (v11)
      {
        button3 = [eventCopy button];
        properties = [button3 properties];

        v14 = [properties objectForKey:@"TVRCButtonApplicationBundleIDKey"];
        [(TVRCRPCompanionLinkClientWrapper *)self _launchApplicationOrURL:v14];

        goto LABEL_24;
      }
    }

    else
    {
    }

    button4 = [eventCopy button];
    if ([button4 buttonType] == 2)
    {
    }

    else
    {
      button5 = [eventCopy button];
      v18 = [button5 buttonType] == 23;

      if (!v18)
      {
LABEL_21:
        v21 = [(TVRCRPCompanionLinkClientWrapper *)self _commandForButtonEvent:eventCopy];
        v22 = [(TVRCRPCompanionLinkClientWrapper *)self _stateForButtonEvent:eventCopy];
        v23 = _TVRCRapportLog(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [TVRCRPCompanionLinkClientWrapper sendButtonEvent:];
        }

        objc_initWeak(buf, self);
        hidSession = self->_hidSession;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __52__TVRCRPCompanionLinkClientWrapper_sendButtonEvent___block_invoke;
        v26[3] = &unk_279D83310;
        objc_copyWeak(&v28, buf);
        v25 = *MEMORY[0x277D44228];
        v26[4] = self;
        v27 = eventCopy;
        [(RPHIDSession *)hidSession hidCommand:v21 buttonState:v22 destinationID:v25 completion:v26];

        objc_destroyWeak(&v28);
        objc_destroyWeak(buf);
        goto LABEL_24;
      }
    }

    if (self->_siriSession)
    {
      v19 = _TVRCRapportLog(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [TVRCRPCompanionLinkClientWrapper sendButtonEvent:];
      }

      [(RPSiriSession *)self->_siriSession invalidate];
      siriSession = self->_siriSession;
      self->_siriSession = 0;
    }

    goto LABEL_21;
  }

  v9 = _TVRCRapportLog(connected);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [TVRCRPCompanionLinkClientWrapper sendButtonEvent:];
  }

LABEL_24:
}

void __52__TVRCRPCompanionLinkClientWrapper_sendButtonEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = _TVRCRapportLog(WeakRetained);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __52__TVRCRPCompanionLinkClientWrapper_sendButtonEvent___block_invoke_cold_1();
      }

      v8 = _TVRCRapportLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to reconnect after an issue sending a HID event", v9, 2u);
      }

      [*(a1 + 32) reconnect];
    }

    else
    {
      [WeakRetained _handleSideEffectsForEvent:*(a1 + 40)];
    }
  }
}

- (void)sendTouchEvent:(id)event
{
  eventCopy = event;
  v5 = _TVRCRapportLog(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TVRCRPCompanionLinkClientWrapper sendTouchEvent:];
  }

  connected = [(TVRCRPCompanionLinkClientWrapper *)self connected];
  if ((connected & 1) == 0)
  {
    v7 = _TVRCRapportLog(connected);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [TVRCRPCompanionLinkClientWrapper sendTouchEvent:];
    }

    goto LABEL_22;
  }

  if (self->_hidTouchSession)
  {
    v7 = objc_alloc_init(MEMORY[0x277D441A0]);
    -[NSObject setFinger:](v7, "setFinger:", [eventCopy finger]);
    [eventCopy digitizerLocation];
    [v7 setLocation:?];
    phase = [eventCopy phase];
    if (phase <= 2)
    {
      if (phase == 1)
      {
        v10 = 1;
        goto LABEL_21;
      }

      if (phase != 2)
      {
        v10 = 0;
        goto LABEL_21;
      }

      [v7 setPhase:2];
    }

    else if (phase != 3)
    {
      if (phase == 5)
      {
        v9 = 5;
      }

      else
      {
        v9 = 0;
      }

      if (phase == 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v9;
      }

      goto LABEL_21;
    }

    v10 = 3;
LABEL_21:
    [v7 setPhase:v10];
    [eventCopy timestamp];
    [v7 setTimestampSeconds:?];
    objc_initWeak(&location, self);
    hidTouchSession = self->_hidTouchSession;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__TVRCRPCompanionLinkClientWrapper_sendTouchEvent___block_invoke;
    v12[3] = &unk_279D83338;
    objc_copyWeak(&v13, &location);
    v12[4] = self;
    [(RPHIDTouchSession *)hidTouchSession sendTouchEvent:v7 completion:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
LABEL_22:
  }
}

void __51__TVRCRPCompanionLinkClientWrapper_sendTouchEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = _TVRCRapportLog(WeakRetained);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __51__TVRCRPCompanionLinkClientWrapper_sendTouchEvent___block_invoke_cold_1();
      }

      v8 = _TVRCRapportLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to reconnect after an issue sending a touch event", v10, 2u);
      }

      WeakRetained = [*(a1 + 32) reconnect];
    }

    v9 = _TVRCRapportLog(WeakRetained);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __51__TVRCRPCompanionLinkClientWrapper_sendTouchEvent___block_invoke_cold_2();
    }
  }
}

- (void)getCurrentRTISourceSession:(id)session
{
  v14 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = _TVRCRapportLog(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[TVRCRPCompanionLinkClientWrapper getCurrentRTISourceSession:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__TVRCRPCompanionLinkClientWrapper_getCurrentRTISourceSession___block_invoke;
  v7[3] = &unk_279D82F58;
  objc_copyWeak(&v9, buf);
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __63__TVRCRPCompanionLinkClientWrapper_getCurrentRTISourceSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = WeakRetained;
      v4 = [WeakRetained[14] rtiSession];
      (*(v3 + 16))(v3, v4, 0);

      WeakRetained = v5;
    }
  }
}

- (void)setRTISessionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _TVRCRapportLog(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[TVRCRPCompanionLinkClientWrapper setRTISessionHandler:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  [(TVRCRPCompanionLinkClientWrapper *)self setRtiSessionHandler:handlerCopy];
  objc_initWeak(buf, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__TVRCRPCompanionLinkClientWrapper_setRTISessionHandler___block_invoke;
  v7[3] = &unk_279D82F58;
  objc_copyWeak(&v9, buf);
  v6 = handlerCopy;
  v8 = v6;
  [(RPTextInputSession *)self->_textInputSession setRtiUpdatedHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __57__TVRCRPCompanionLinkClientWrapper_setRTISessionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = WeakRetained;
      v4 = [WeakRetained[14] rtiSession];
      (*(v3 + 16))(v3, v4);

      WeakRetained = v5;
    }
  }
}

- (void)sendEvent:(id)event options:(id)options shouldRetry:(BOOL)retry response:(id)response
{
  v31 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  optionsCopy = options;
  responseCopy = response;
  v13 = _TVRCRapportLog(responseCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = eventCopy;
    v29 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@ %@", buf, 0x16u);
  }

  v14 = MEMORY[0x277CBEC10];
  if (optionsCopy)
  {
    v14 = optionsCopy;
  }

  v15 = v14;
  objc_initWeak(buf, self);
  companionClient = self->_companionClient;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__TVRCRPCompanionLinkClientWrapper_sendEvent_options_shouldRetry_response___block_invoke;
  v21[3] = &unk_279D83388;
  v17 = eventCopy;
  v22 = v17;
  retryCopy = retry;
  objc_copyWeak(&v25, buf);
  v18 = *MEMORY[0x277D44228];
  v19 = responseCopy;
  v24 = v19;
  v20 = optionsCopy;
  v23 = v20;
  [(RPCompanionLinkClient *)companionClient sendRequestID:v17 request:v15 destinationID:v18 options:0 responseHandler:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

void __75__TVRCRPCompanionLinkClientWrapper_sendEvent_options_shouldRetry_response___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _TVRCRapportLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138543874;
    v24 = v11;
    v25 = 2114;
    v26 = v7;
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", buf, 0x20u);
  }

  if (v9 && *(a1 + 64) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v13 = WeakRetained;
    if (WeakRetained)
    {
      v14 = _TVRCRapportLog(WeakRetained);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Reestablishing connection after error", buf, 2u);
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __75__TVRCRPCompanionLinkClientWrapper_sendEvent_options_shouldRetry_response___block_invoke_19;
      v16[3] = &unk_279D83360;
      v17 = *(a1 + 32);
      v21 = *(a1 + 48);
      v18 = v7;
      v19 = v8;
      objc_copyWeak(&v22, (a1 + 56));
      v20 = *(a1 + 40);
      [v13 reestablishConnectionWithCompletionHandler:v16];

      objc_destroyWeak(&v22);
    }
  }

  else
  {
    v15 = *(a1 + 48);
    if (v15)
    {
      (*(v15 + 16))(v15, v7, v8, v9);
    }
  }
}

void __75__TVRCRPCompanionLinkClientWrapper_sendEvent_options_shouldRetry_response___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _TVRCRapportLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __75__TVRCRPCompanionLinkClientWrapper_sendEvent_options_shouldRetry_response___block_invoke_19_cold_1();
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      (*(v6 + 16))(v6, *(a1 + 40), *(a1 + 48), v4);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained sendEvent:*(a1 + 32) options:*(a1 + 56) shouldRetry:0 response:*(a1 + 64)];
  }
}

- (void)registerEvent:(id)event options:(id)options handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  optionsCopy = options;
  handlerCopy = handler;
  activated = [(TVRCRPCompanionLinkClientWrapper *)self activated];
  v12 = activated;
  v13 = _TVRCRapportLog(activated);
  companionClient = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = eventCopy;
      v17 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_26CF7F000, companionClient, OS_LOG_TYPE_DEFAULT, "Registering event with ID %{public}@ %@", &v15, 0x16u);
    }

    companionClient = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
    [companionClient registerEventID:eventCopy options:optionsCopy handler:handlerCopy];
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [TVRCRPCompanionLinkClientWrapper registerEvent:options:handler:];
  }
}

- (void)deregisterEvent:(id)event
{
  v11 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = _TVRCRapportLog(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = eventCopy;
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "De-registering event %{public}@ %@", &v7, 0x16u);
  }

  companionClient = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  [companionClient deregisterEventID:eventCopy];
}

- (void)toggleCaptions:(BOOL)captions
{
  captionsCopy = captions;
  v19 = *MEMORY[0x277D85DE8];
  supportsDirectCaptionQueries = [(TVRCRPCompanionLinkClientWrapper *)self supportsDirectCaptionQueries];
  if (supportsDirectCaptionQueries)
  {
    v6 = _TVRCRapportLog(supportsDirectCaptionQueries);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[TVRCRPCompanionLinkClientWrapper toggleCaptions:]";
      v15 = 1026;
      v16 = captionsCopy;
      v17 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s: %{public,BOOL}d %@", buf, 0x1Cu);
    }

    v7 = @"NO";
    if (captionsCopy)
    {
      v7 = @"YES";
    }

    v11 = @"CaptionsEnabled";
    v12 = v7;
    v8 = MEMORY[0x277CBEAC0];
    v9 = v7;
    v10 = [v8 dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    [(TVRCRPCompanionLinkClientWrapper *)self sendEvent:@"ToggleCaptions" options:v10 shouldRetry:0 response:0, v11, v12];
  }
}

- (void)fetchUpNextInfoWithPaginationToken:(id)token completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  completionCopy = completion;
  v8 = @"FetchUpNextInfoEvent";
  v9 = _TVRCRapportLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@ %@", buf, 0x16u);
  }

  companionClient = self->_companionClient;
  v19 = @"PaginationTokenKey";
  null = tokenCopy;
  if (!tokenCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v20 = null;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v13 = *MEMORY[0x277D44228];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__TVRCRPCompanionLinkClientWrapper_fetchUpNextInfoWithPaginationToken_completion___block_invoke;
  v16[3] = &unk_279D833B0;
  v14 = v8;
  v17 = v14;
  v18 = completionCopy;
  v15 = completionCopy;
  [(RPCompanionLinkClient *)companionClient sendRequestID:v14 request:v12 destinationID:v13 options:0 responseHandler:v16];

  if (!tokenCopy)
  {
  }
}

void __82__TVRCRPCompanionLinkClientWrapper_fetchUpNextInfoWithPaginationToken_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543874;
    v12 = v9;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v11, 0x20u);
  }

  v10 = [v6 objectForKeyedSubscript:@"PaginationTokenKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v10 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = @"MarkAsWatchedEvent";
  if ([identifierCopy length])
  {
    v21 = @"IdentifierKey";
    v22[0] = identifierCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = _TVRCRapportLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@ %@", buf, 0x16u);
    }

    companionClient = self->_companionClient;
    v12 = *MEMORY[0x277D44228];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __80__TVRCRPCompanionLinkClientWrapper_markAsWatchedWithMediaIdentifier_completion___block_invoke;
    v14[3] = &unk_279D833B0;
    v15 = v8;
    v16 = completionCopy;
    [(RPCompanionLinkClient *)companionClient sendRequestID:v15 request:v9 destinationID:v12 options:0 responseHandler:v14];
  }

  else
  {
    v13 = _TVRCRapportLog(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Invalid mediaIdentifier sent to %@", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __80__TVRCRPCompanionLinkClientWrapper_markAsWatchedWithMediaIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543874;
    v11 = v9;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = @"AddToUpNextEvent";
  if ([identifierCopy length])
  {
    v21 = @"IdentifierKey";
    v22[0] = identifierCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = _TVRCRapportLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@ %@", buf, 0x16u);
    }

    companionClient = self->_companionClient;
    v12 = *MEMORY[0x277D44228];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__TVRCRPCompanionLinkClientWrapper_addItemWithMediaIdentifier_completion___block_invoke;
    v14[3] = &unk_279D833B0;
    v15 = v8;
    v16 = completionCopy;
    [(RPCompanionLinkClient *)companionClient sendRequestID:v15 request:v9 destinationID:v12 options:0 responseHandler:v14];
  }

  else
  {
    v13 = _TVRCRapportLog(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Invalid mediaIdentifier sent to %@", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __74__TVRCRPCompanionLinkClientWrapper_addItemWithMediaIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543874;
    v11 = v9;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = @"RemoveFromUpNextEvent";
  if ([identifierCopy length])
  {
    v21 = @"IdentifierKey";
    v22[0] = identifierCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = _TVRCRapportLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@ %@", buf, 0x16u);
    }

    companionClient = self->_companionClient;
    v12 = *MEMORY[0x277D44228];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__TVRCRPCompanionLinkClientWrapper_removeItemWithMediaIdentifier_completion___block_invoke;
    v14[3] = &unk_279D833B0;
    v15 = v8;
    v16 = completionCopy;
    [(RPCompanionLinkClient *)companionClient sendRequestID:v15 request:v9 destinationID:v12 options:0 responseHandler:v14];
  }

  else
  {
    v13 = _TVRCRapportLog(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Invalid mediaIdentifier sent to %@", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __77__TVRCRPCompanionLinkClientWrapper_removeItemWithMediaIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543874;
    v11 = v9;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)playItem:(id)item completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  v8 = @"PlayMediaEvent";
  isValid = [itemCopy isValid];
  if (isValid)
  {
    dictionaryRepresentation = [itemCopy dictionaryRepresentation];
    v11 = _TVRCRapportLog(dictionaryRepresentation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@ %@", buf, 0x16u);
    }

    companionClient = self->_companionClient;
    v13 = *MEMORY[0x277D44228];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__TVRCRPCompanionLinkClientWrapper_playItem_completion___block_invoke;
    v15[3] = &unk_279D833B0;
    v16 = v8;
    v17 = completionCopy;
    [(RPCompanionLinkClient *)companionClient sendRequestID:v16 request:dictionaryRepresentation destinationID:v13 options:0 responseHandler:v15];
  }

  else
  {
    v14 = _TVRCRapportLog(isValid);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Invalid item sent to %@", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __56__TVRCRPCompanionLinkClientWrapper_playItem_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543874;
    v11 = v9;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchLaunchableAppsWithCompletion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = @"FetchLaunchableApplicationsEvent";
  v16 = @"IncludeAppMetadataKey";
  v17[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v7 = _TVRCRapportLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@", buf, 0xCu);
  }

  companionClient = self->_companionClient;
  v9 = *MEMORY[0x277D44228];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__TVRCRPCompanionLinkClientWrapper_fetchLaunchableAppsWithCompletion___block_invoke;
  v11[3] = &unk_279D833B0;
  v12 = v5;
  v13 = completionCopy;
  v10 = completionCopy;
  [(RPCompanionLinkClient *)companionClient sendRequestID:v5 request:v6 destinationID:v9 options:0 responseHandler:v11];
}

void __70__TVRCRPCompanionLinkClientWrapper_fetchLaunchableAppsWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543874;
    v11 = v9;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)launchAppWithBundleID:(id)d completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = @"LaunchApp";
  if ([dCopy length])
  {
    v17 = @"BundleIDKey";
    v18 = dCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v10 = _TVRCRapportLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@", buf, 0xCu);
    }

    companionClient = self->_companionClient;
    v12 = *MEMORY[0x277D44228];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__TVRCRPCompanionLinkClientWrapper_launchAppWithBundleID_completion___block_invoke;
    v14[3] = &unk_279D833B0;
    v15 = v8;
    v16 = completionCopy;
    [(RPCompanionLinkClient *)companionClient sendRequestID:v15 request:v9 destinationID:v12 options:0 responseHandler:v14];
  }

  else
  {
    v13 = _TVRCRapportLog(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Invalid bundleID sent to %@", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __69__TVRCRPCompanionLinkClientWrapper_launchAppWithBundleID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543874;
    v11 = v9;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  name = [(TVRCRPCompanionLinkClientWrapper *)self name];
  [v3 appendString:name withName:@"name"];

  identifier = [(TVRCRPCompanionLinkClientWrapper *)self identifier];
  [v3 appendString:identifier withName:@"Identifier"];

  model = [(TVRCRPCompanionLinkClientWrapper *)self model];
  [v3 appendString:model withName:@"model"];

  sourceVersion = [(TVRCRPCompanionLinkClientWrapper *)self sourceVersion];
  [v3 appendString:sourceVersion withName:@"sourceVersion"];

  v8 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper isSiriEnabled](self withName:{"isSiriEnabled"), @"siriEnabled"}];
  v9 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper activated](self withName:{"activated"), @"activated"}];
  v10 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper authenticated](self withName:{"authenticated"), @"authenticated"}];
  v11 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper pttFeatureSupported](self withName:{"pttFeatureSupported"), @"siriPTTEnabled"}];
  v12 = [(TVRCRPCompanionLinkClientWrapper *)self _stringForFeatureFlags:self->_featureFlags];
  [v3 appendString:v12 withName:@"featureFlags"];

  v13 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper connected](self withName:{"connected"), @"connected"}];
  v14 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper isPaired](self withName:{"isPaired"), @"isPaired"}];
  v15 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper supportsFindMyRemote](self withName:{"supportsFindMyRemote"), @"supportsFindMyRemote"}];
  alternateIdentifiers = [(TVRCRPCompanionLinkClientWrapper *)self alternateIdentifiers];
  [v3 appendDictionarySection:alternateIdentifiers withName:@"alternateIdentifiers" skipIfEmpty:0];

  companionClient = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  v18 = [v3 appendObject:companionClient withName:@"companionClient"];

  build = [v3 build];

  return build;
}

- (BOOL)_featureSupported:(id)supported
{
  v18 = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  sourceVersion = [(TVRCRPCompanionLinkClientWrapper *)self sourceVersion];
  v6 = [sourceVersion compare:supportedCopy options:64];
  v7 = _TVRCRapportLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    name = [(TVRCRPCompanionLinkClientWrapper *)self name];
    v10 = 138413058;
    v11 = supportedCopy;
    v12 = 2112;
    v13 = name;
    v14 = 2112;
    v15 = sourceVersion;
    v16 = 1024;
    v17 = v6 < 2;
    _os_log_debug_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEBUG, "Checking if '%@' is supported on '%@' for sourceVersion '%@': %{BOOL}d", &v10, 0x26u);
  }

  return v6 < 2;
}

- (NSString)sourceVersion
{
  v30 = *MEMORY[0x277D85DE8];
  device = [(TVRCRPCompanionLinkClientWrapper *)self device];
  sourceVersion = [device sourceVersion];

  v5 = MEMORY[0x277CCACA8];
  device2 = [(TVRCRPCompanionLinkClientWrapper *)self device];
  name = [device2 name];
  v8 = [v5 stringWithFormat:@"%@-SourceVersion", name];

  v9 = [(__CFString *)sourceVersion length];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [standardUserDefaults objectForKey:v8];
  if (v9)
  {

    v12 = [(__CFString *)v11 length];
    if (v12)
    {
      v13 = _TVRCRapportLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [TVRCRPCompanionLinkClientWrapper sourceVersion];
      }
    }

    else
    {

      v13 = _TVRCRapportLog(v18);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [TVRCRPCompanionLinkClientWrapper sourceVersion];
      }

      v11 = @"0.0";
    }

    v19 = [(__CFString *)v11 compare:sourceVersion options:64];
    standardUserDefaults2 = _TVRCRapportLog(v19);
    v21 = os_log_type_enabled(standardUserDefaults2, OS_LOG_TYPE_DEBUG);
    if (v19 > 1)
    {
      if (v21)
      {
        *buf = 138412802;
        v25 = sourceVersion;
        v26 = 2112;
        v27 = v8;
        v28 = 2112;
        v29 = v11;
        _os_log_debug_impl(&dword_26CF7F000, standardUserDefaults2, OS_LOG_TYPE_DEBUG, "sourceVersion '%@' for '%@' is greater than cached version '%@' so caching and returning it", buf, 0x20u);
      }

      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults2 setObject:sourceVersion forKey:v8];
      v22 = sourceVersion;
    }

    else
    {
      if (v21)
      {
        *buf = 138412802;
        v25 = v11;
        v26 = 2112;
        v27 = v8;
        v28 = 2112;
        v29 = sourceVersion;
        _os_log_debug_impl(&dword_26CF7F000, standardUserDefaults2, OS_LOG_TYPE_DEBUG, "Cached version '%@' for '%@' is >= reported version '%@' so returning it", buf, 0x20u);
      }

      v22 = v11;
    }

    v17 = v22;
  }

  else
  {

    v14 = [(__CFString *)v11 length];
    v15 = _TVRCRapportLog(v14);
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [TVRCRPCompanionLinkClientWrapper sourceVersion];
      }

      sourceVersion = v11;
      v17 = sourceVersion;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Unknown sourceVersion, allowing all features", buf, 2u);
      }

      v17 = @"9999.9";
      sourceVersion = v11;
    }
  }

  return v17;
}

- (void)_resolveFeatureFlags
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[TVRCRPCompanionLinkClientWrapper _resolveFeatureFlags]";
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  flags = [(RPCompanionLinkDevice *)self->_device flags];
  v5 = ([(RPCompanionLinkDevice *)self->_device flags]>> 7) & 2 | (flags >> 10) & 1;
  v6 = v5 | ([(RPCompanionLinkDevice *)self->_device flags]>> 10) & 4;
  if ([(TVRCRPCompanionLinkClientWrapper *)self _featureSupported:@"250.3"])
  {
    v6 |= 8uLL;
  }

  if ([(TVRCRPCompanionLinkClientWrapper *)self _featureSupported:@"340.15"])
  {
    v6 |= 0x10uLL;
  }

  v7 = [(TVRCRPCompanionLinkClientWrapper *)self _featureSupported:@"600.20"];
  if (v7)
  {
    v6 |= 0x20uLL;
  }

  v8 = _TVRCRapportLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(TVRCRPCompanionLinkClientWrapper *)self _stringForFeatureFlags:v6];
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Resolved Feature Flags: %{public}@", &v13, 0xCu);
  }

  self->_pttFeatureSupported = 0;
  v11 = _TVRCRapportLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    pttFeatureSupported = self->_pttFeatureSupported;
    v13 = 67109120;
    LODWORD(v14) = pttFeatureSupported;
    _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "PTT feature supported: %d", &v13, 8u);
  }

  self->_featureFlags = v6;
}

- (id)_stringForFeatureFlags:(unint64_t)flags
{
  flagsCopy = flags;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = v4;
  if (flagsCopy)
  {
    [v4 addObject:@"HID"];
    if ((flagsCopy & 2) == 0)
    {
LABEL_3:
      if ((flagsCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((flagsCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"MediaControl"];
  if ((flagsCopy & 4) == 0)
  {
LABEL_4:
    if ((flagsCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v5 addObject:@"TextInput"];
  if ((flagsCopy & 8) == 0)
  {
LABEL_5:
    if ((flagsCopy & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  [v5 addObject:@"MVPD"];
  if ((flagsCopy & 0x10) != 0)
  {
LABEL_6:
    [v5 addObject:@"SiriPTT"];
  }

LABEL_7:
  v6 = MEMORY[0x277CCACA8];
  v7 = [v5 componentsJoinedByString:@" | "];
  v8 = [v6 stringWithFormat:@"[%@]", v7];

  return v8;
}

- (void)_disconnectWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = _TVRCRapportLog(errorCopy);
  v6 = v5;
  if (errorCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [TVRCRPCompanionLinkClientWrapper _disconnectWithError:];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[TVRCRPCompanionLinkClientWrapper _disconnectWithError:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v8, 0x16u);
  }

  [(TVRCRPCompanionLinkClientWrapper *)self _invalidateAndReset];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained disconnectedFromDevice:self error:errorCopy];
}

- (void)_invalidateAndReset
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[TVRCRPCompanionLinkClientWrapper _invalidateAndReset]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v4, 0x16u);
  }

  [(TVRCRPCompanionLinkClientWrapper *)self _invalidateAndResetWithCompletionHandler:0];
}

- (void)_invalidateAndResetWithCompletionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _TVRCRapportLog(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    selfCopy3 = "[TVRCRPCompanionLinkClientWrapper _invalidateAndResetWithCompletionHandler:]";
    v30 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  isInvalidating = [(TVRCRPCompanionLinkClientWrapper *)self isInvalidating];
  if (!isInvalidating)
  {
    self->_isInvalidating = 1;
    self->_connectionState = 0;
    [(TVRCRPCompanionLinkClientWrapper *)self _sendSessionStop];
    [(TVRCRPCompanionLinkClientWrapper *)self _stopMonitoringTVSystemStatus];
    [(TVRCRPCompanionLinkClientWrapper *)self _stopMonitoringSupportedActions];
    [(TVRCRPCompanionLinkClientWrapper *)self _stopMonitoringNowPlayingInfo];
    [(TVRCRPCompanionLinkClientWrapper *)self _invalidateRemoteFindingManager];
    v8 = dispatch_group_create();
    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke;
    block[3] = &unk_279D825E0;
    block[4] = self;
    dispatch_group_async(v8, v9, block);
    siriSession = [(TVRCRPCompanionLinkClientWrapper *)self siriSession];

    if (siriSession)
    {
      dispatch_group_enter(v8);
      siriSession2 = [(TVRCRPCompanionLinkClientWrapper *)self siriSession];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_111;
      v25[3] = &unk_279D82DD8;
      v25[4] = self;
      v26 = v8;
      [siriSession2 invalidateWithCompletion:v25];
    }

    hidTouchSession = [(TVRCRPCompanionLinkClientWrapper *)self hidTouchSession];
    if (hidTouchSession)
    {
    }

    else
    {
      hidTouchSessionActivated = [(TVRCRPCompanionLinkClientWrapper *)self hidTouchSessionActivated];
      if ((hidTouchSessionActivated & 1) == 0)
      {
LABEL_14:
        v17 = dispatch_get_global_queue(25, 0);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_113;
        v18[3] = &unk_279D83400;
        v19 = v8;
        v20 = v9;
        selfCopy2 = self;
        v22 = handlerCopy;
        v7 = v8;
        dispatch_async(v17, v18);

        goto LABEL_15;
      }
    }

    v15 = _TVRCRapportLog(hidTouchSessionActivated);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v15, OS_LOG_TYPE_DEFAULT, "Invalidating HIDTouchSession", buf, 2u);
    }

    dispatch_group_enter(v8);
    hidTouchSession2 = [(TVRCRPCompanionLinkClientWrapper *)self hidTouchSession];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_112;
    v23[3] = &unk_279D82DD8;
    v23[4] = self;
    v24 = v8;
    [hidTouchSession2 invalidateWithCompletion:v23];

    goto LABEL_14;
  }

  v7 = _TVRCRapportLog(isInvalidating);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Already in the process of invalidating. Ignoring this request. %@", buf, 0xCu);
  }

LABEL_15:
}

uint64_t __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = _TVRCRapportLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Invalidating MediaManager", buf, 2u);
  }

  v3 = [*(a1 + 32) mediaManager];
  [v3 invalidate];

  v4 = _TVRCRapportLog([*(a1 + 32) setMediaManager:0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating HIDSession", v10, 2u);
  }

  v5 = [*(a1 + 32) hidSession];
  [v5 invalidate];

  [*(a1 + 32) setHidSession:0];
  v6 = _TVRCRapportLog([*(a1 + 32) setHidSessionActivated:0]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating TextInputSession", v9, 2u);
  }

  v7 = [*(a1 + 32) textInputSession];
  [v7 invalidate];

  [*(a1 + 32) setTextInputSession:0];
  return [*(a1 + 32) setTextInputSessionActivated:0];
}

void __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_111(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _TVRCRapportLog(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_111_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully invalidated RPSiriSession", v6, 2u);
  }

  if ([*(a1 + 32) isInvalidating])
  {
    [*(a1 + 32) setSiriSession:0];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_112(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _TVRCRapportLog(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_112_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully invalidated HIDTouchSession", v6, 2u);
  }

  if ([*(a1 + 32) isInvalidating])
  {
    [*(a1 + 32) setHidTouchSession:0];
    [*(a1 + 32) setHidTouchSessionActivated:0];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_113(void *a1)
{
  v2 = _TVRCRapportLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Waiting for rapport to invalidate all sessions", buf, 2u);
  }

  v3 = a1[4];
  v4 = dispatch_time(0, 2000000000);
  v5 = dispatch_group_wait(v3, v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_114;
  block[3] = &unk_279D833D8;
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[7];
  v11 = v5;
  block[4] = v6;
  v10 = v8;
  dispatch_sync(v7, block);
}

uint64_t __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_114(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = _TVRCRapportLog(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v8 = 0;
    v5 = "Failed to invalidate all sessions. Will force reset rapport sessions";
    v6 = &v8;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = "Invalidated all sessions. Invalidating CompanionLinkClient.";
    v6 = buf;
  }

  _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
LABEL_7:

  [*(a1 + 32) _resetState];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result);
  }

  return result;
}

- (void)_resetState
{
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Resetting state", v6, 2u);
  }

  companionClient = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  [companionClient invalidate];

  companionClient = self->_companionClient;
  self->_companionClient = 0;

  [(TVRCRPCompanionLinkClientWrapper *)self setConnected:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setActivated:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setAuthenticated:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setHidSession:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setHidSessionActivated:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setHidTouchSession:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setHidTouchSessionActivated:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setMediaManager:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setReceivedVolumeSettings:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setTextInputSession:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setTextInputSessionActivated:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setSiriSession:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setReceivedSiriSettings:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setStartedSetup:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setIsInvalidating:0];
}

- (void)_sendSessionStart
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__TVRCRPCompanionLinkClientWrapper__sendSessionStart__block_invoke;
  v3[3] = &unk_279D82788;
  objc_copyWeak(&v4, &location);
  [(TVRCRPCompanionLinkClientWrapper *)self sendEvent:@"TVRCSessionStart" options:0 shouldRetry:0 response:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __53__TVRCRPCompanionLinkClientWrapper__sendSessionStart__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = _TVRCRapportLog(WeakRetained);
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __53__TVRCRPCompanionLinkClientWrapper__sendSessionStart__block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v7[10];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Session started for companionLinkClient %{public}@.", &v11, 0xCu);
    }
  }
}

- (void)_sendSessionStop
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__TVRCRPCompanionLinkClientWrapper__sendSessionStop__block_invoke;
  v3[3] = &unk_279D82788;
  objc_copyWeak(&v4, &location);
  [(TVRCRPCompanionLinkClientWrapper *)self sendEvent:@"TVRCSessionStop" options:0 shouldRetry:0 response:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __52__TVRCRPCompanionLinkClientWrapper__sendSessionStop__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = _TVRCRapportLog(WeakRetained);
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __52__TVRCRPCompanionLinkClientWrapper__sendSessionStop__block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v7[10];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Session stopped for companionLinkClient %{public}@.", &v11, 0xCu);
    }
  }
}

- (void)_setupHidSessionIfNeeded
{
  if (self->_hidSession)
  {
    v2 = _TVRCRapportLog(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Active HIDSession already exists", buf, 2u);
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D44198]);
    hidSession = self->_hidSession;
    self->_hidSession = v4;

    [(RPHIDSession *)self->_hidSession setMessenger:self->_companionClient];
    objc_initWeak(buf, self);
    v6 = self->_hidSession;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__TVRCRPCompanionLinkClientWrapper__setupHidSessionIfNeeded__block_invoke;
    v7[3] = &unk_279D83338;
    objc_copyWeak(&v8, buf);
    v7[4] = self;
    [(RPHIDSession *)v6 activateWithCompletion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __60__TVRCRPCompanionLinkClientWrapper__setupHidSessionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _TVRCRapportLog(WeakRetained);
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __60__TVRCRPCompanionLinkClientWrapper__setupHidSessionIfNeeded__block_invoke_cold_1();
      }

      [*(a1 + 32) _disconnectWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v5[10];
        v9 = 138543362;
        v10 = v8;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Successfully created hidSession for companionLinkClient %{public}@.", &v9, 0xCu);
      }

      *(v5 + 12) = 1;
      [v5 _updateConnectedState];
    }
  }
}

- (void)_setupFeatureServicesIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[TVRCRPCompanionLinkClientWrapper _setupFeatureServicesIfNeeded]";
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self->_mediaManager)
  {
    v5 = _TVRCRapportLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "_TVRCRapportMediaEventsManager is already set up", buf, 2u);
    }
  }

  else
  {
    [(TVRCRPCompanionLinkClientWrapper *)self _setupMediaEventsManager];
    objc_initWeak(buf, self);
    v6 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__TVRCRPCompanionLinkClientWrapper__setupFeatureServicesIfNeeded__block_invoke;
    block[3] = &unk_279D826E8;
    objc_copyWeak(&v10, buf);
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
    device = [(TVRCRPCompanionLinkClientWrapper *)self device];
    siriInfo = [device siriInfo];
    [(TVRCRPCompanionLinkClientWrapper *)self _updateSiriStatusFromSiriInfo:siriInfo];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __65__TVRCRPCompanionLinkClientWrapper__setupFeatureServicesIfNeeded__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (WeakRetained[16] != 1 || (WeakRetained[15] & 1) == 0))
  {
    v3 = _TVRCRapportLog(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[16];
      v5 = v2[15];
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "TVRCMediaEventsManager timed out waiting for volume:%d or siri:%d settings, meaning it is unsupported", v6, 0xEu);
    }

    *(v2 + 15) = 257;
    [v2 _updateConnectedState];
  }
}

- (void)_setupMediaEventsManager
{
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Setting up TVRCMediaEventsManager", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [TVRCMediaEventsManager alloc];
  companionClient = self->_companionClient;
  supportsDirectCaptionQueries = [(TVRCRPCompanionLinkClientWrapper *)self supportsDirectCaptionQueries];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__TVRCRPCompanionLinkClientWrapper__setupMediaEventsManager__block_invoke;
  v11[3] = &unk_279D826E8;
  objc_copyWeak(&v12, buf);
  v7 = [(TVRCMediaEventsManager *)v4 initWithCompanionLinkClient:companionClient supportsDirectCaptionQueries:supportsDirectCaptionQueries eventHandler:v11];
  mediaManager = self->_mediaManager;
  self->_mediaManager = v7;

  v9 = self->_mediaManager;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__TVRCRPCompanionLinkClientWrapper__setupMediaEventsManager__block_invoke_123;
  v10[3] = &unk_279D82DB0;
  v10[4] = self;
  [(TVRCMediaEventsManaging *)v9 activateWithCompletionHandler:v10];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __60__TVRCRPCompanionLinkClientWrapper__setupMediaEventsManager__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _TVRCRapportLog(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "TVRCMediaEventsManager eventHandlerCalled", &v8, 2u);
    }

    if (*(v2 + 16))
    {
      goto LABEL_10;
    }

    v5 = _TVRCRapportLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(v2 + 9) volumeSupported];
      v7 = @"unsupported";
      if (v6)
      {
        v7 = @"supported";
      }

      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "TVRCMediaEventsManager volume control is: %@", &v8, 0xCu);
    }

    *(v2 + 16) = 1;
    if (*(v2 + 8))
    {
LABEL_10:
      [v2 _updateSupportedButtons];
    }

    else
    {
      [v2 _updateConnectedState];
    }
  }
}

void __60__TVRCRPCompanionLinkClientWrapper__setupMediaEventsManager__block_invoke_123(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _TVRCRapportLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __60__TVRCRPCompanionLinkClientWrapper__setupMediaEventsManager__block_invoke_123_cold_1();
    }

    [*(a1 + 32) _setupLegacyMediaEventsManager];
  }
}

- (void)_setupLegacyMediaEventsManager
{
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Setting up legacy TVRCRapportMediaEventsManager", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [TVRCRapportMediaEventsManager alloc];
  companionClient = self->_companionClient;
  supportsDirectCaptionQueries = [(TVRCRPCompanionLinkClientWrapper *)self supportsDirectCaptionQueries];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__TVRCRPCompanionLinkClientWrapper__setupLegacyMediaEventsManager__block_invoke;
  v9[3] = &unk_279D826E8;
  objc_copyWeak(&v10, buf);
  v7 = [(TVRCRapportMediaEventsManager *)v4 initWithCompanionLinkClient:companionClient supportsDirectCaptionQueries:supportsDirectCaptionQueries eventHandler:v9];
  mediaManager = self->_mediaManager;
  self->_mediaManager = v7;

  [(TVRCMediaEventsManaging *)self->_mediaManager activateWithCompletionHandler:&__block_literal_global_127];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __66__TVRCRPCompanionLinkClientWrapper__setupLegacyMediaEventsManager__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _TVRCRapportLog(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "TVRCRapportMediaEventsManager eventHandlerCalled", &v8, 2u);
    }

    if (*(v2 + 16))
    {
      goto LABEL_10;
    }

    v5 = _TVRCRapportLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(v2 + 9) volumeSupported];
      v7 = @"unsupported";
      if (v6)
      {
        v7 = @"supported";
      }

      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "TVRCRapportMediaEventsManager volume control is: %@", &v8, 0xCu);
    }

    *(v2 + 16) = 1;
    if (*(v2 + 8))
    {
LABEL_10:
      [v2 _updateSupportedButtons];
    }

    else
    {
      [v2 _updateConnectedState];
    }
  }
}

void __66__TVRCRPCompanionLinkClientWrapper__setupLegacyMediaEventsManager__block_invoke_125(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _TVRCRapportLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__TVRCRPCompanionLinkClientWrapper__setupLegacyMediaEventsManager__block_invoke_125_cold_1();
    }
  }
}

- (void)_setupTouchSessionIfNeeded
{
  if (self->_hidTouchSession)
  {
    v2 = _TVRCRapportLog(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Active HIDTouchSession already exists", buf, 2u);
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D441A8]);
    hidTouchSession = self->_hidTouchSession;
    self->_hidTouchSession = v4;

    [(RPHIDTouchSession *)self->_hidTouchSession setMessenger:self->_companionClient];
    objc_initWeak(buf, self);
    v6 = self->_hidTouchSession;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__TVRCRPCompanionLinkClientWrapper__setupTouchSessionIfNeeded__block_invoke;
    v7[3] = &unk_279D82D38;
    objc_copyWeak(&v8, buf);
    [(RPHIDTouchSession *)v6 activateWithCompletion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __62__TVRCRPCompanionLinkClientWrapper__setupTouchSessionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _TVRCRapportLog(WeakRetained);
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __62__TVRCRPCompanionLinkClientWrapper__setupTouchSessionIfNeeded__block_invoke_cold_1();
      }

      v5[13] = 0;
      [v5 _disconnectWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v5 + 10);
        v9 = 138543362;
        v10 = v8;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Successfully created hidTouchSession for companionLinkClient %{public}@.", &v9, 0xCu);
      }

      v5[13] = 1;
      [v5 _updateConnectedState];
    }
  }
}

- (void)_setupTextInputSessionIfNeeded
{
  if (self->_textInputSession)
  {
    v2 = _TVRCRapportLog(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Active TextInputSession already exists", buf, 2u);
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D44218]);
    textInputSession = self->_textInputSession;
    self->_textInputSession = v4;

    [(RPTextInputSession *)self->_textInputSession setMessenger:self->_companionClient];
    objc_initWeak(buf, self);
    v6 = self->_textInputSession;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__TVRCRPCompanionLinkClientWrapper__setupTextInputSessionIfNeeded__block_invoke;
    v7[3] = &unk_279D82D38;
    objc_copyWeak(&v8, buf);
    [(RPTextInputSession *)v6 activateWithCompletion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __66__TVRCRPCompanionLinkClientWrapper__setupTextInputSessionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _TVRCRapportLog(WeakRetained);
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __66__TVRCRPCompanionLinkClientWrapper__setupTextInputSessionIfNeeded__block_invoke_cold_1();
      }

      [v5 _disconnectWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v5[10];
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Successfully created textInputSession for companionLinkClient %{public}@.", &v11, 0xCu);
      }

      *(v5 + 14) = 1;
      [v5 _updateConnectedState];
      v9 = v5[15];
      if (v9)
      {
        v10 = [v5[14] rtiSession];
        v9[2](v9, v10);
      }
    }
  }
}

- (void)_updateSupportedButtons
{
  v10 = *MEMORY[0x277D85DE8];
  receivedSiriSettings = [(TVRCRPCompanionLinkClientWrapper *)self receivedSiriSettings];
  if (receivedSiriSettings && (receivedSiriSettings = [(TVRCRPCompanionLinkClientWrapper *)self receivedVolumeSettings], (receivedSiriSettings & 1) != 0))
  {
    delegate = [(TVRCRPCompanionLinkClientWrapper *)self delegate];
    [delegate deviceUpdatedSupportedButtons:self];
  }

  else
  {
    v4 = _TVRCRapportLog(receivedSiriSettings);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      receivedSiriSettings2 = [(TVRCRPCompanionLinkClientWrapper *)self receivedSiriSettings];
      v8 = 1024;
      receivedVolumeSettings = [(TVRCRPCompanionLinkClientWrapper *)self receivedVolumeSettings];
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Waiting for volume or siri settings before notifying client of supported buttons. receivedSiriSettings:%d, receivedVolumeSettings:%d", buf, 0xEu);
    }
  }
}

- (void)_updateAttentionState:(int64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  attentionState = [(TVRCRPCompanionLinkClientWrapper *)self attentionState];
  if (attentionState != state)
  {
    v6 = _TVRCRapportLog(attentionState);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if ((state - 1) >= 3)
      {
        state = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", state];
      }

      else
      {
        state = off_279D834E8[state - 1];
      }

      v8 = state;
      attentionState2 = [(TVRCRPCompanionLinkClientWrapper *)self attentionState];
      if ((attentionState2 - 1) >= 3)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", attentionState2];
      }

      else
      {
        v10 = off_279D834E8[attentionState2 - 1];
      }

      *buf = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "TV attention state updated to %{public}@ from %{public}@", buf, 0x16u);
    }

    self->_attentionState = state;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deviceUpdatedAttentionState];
  }
}

- (void)_fetchTVSystemStatusAndStartMonitoring
{
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Fetching TV System Status", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__TVRCRPCompanionLinkClientWrapper__fetchTVSystemStatusAndStartMonitoring__block_invoke;
  v4[3] = &unk_279D83428;
  v4[4] = self;
  [(TVRCRPCompanionLinkClientWrapper *)self sendEvent:@"FetchAttentionState" options:MEMORY[0x277CBEC10] response:v4];
  [(TVRCRPCompanionLinkClientWrapper *)self _startMonitoringTVSystemStatus];
}

void __74__TVRCRPCompanionLinkClientWrapper__fetchTVSystemStatusAndStartMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"state"];
  [*(a1 + 32) _updateAttentionState:{objc_msgSend(v3, "intValue")}];
}

- (void)_startMonitoringTVSystemStatus
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[TVRCRPCompanionLinkClientWrapper _startMonitoringTVSystemStatus]";
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D44280];
  v9 = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  objc_initWeak(buf, self);
  companionClient = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__TVRCRPCompanionLinkClientWrapper__startMonitoringTVSystemStatus__block_invoke;
  v6[3] = &unk_279D827B0;
  objc_copyWeak(&v7, buf);
  [companionClient registerEventID:@"TVSystemStatus" options:v4 handler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __66__TVRCRPCompanionLinkClientWrapper__startMonitoringTVSystemStatus__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 objectForKeyedSubscript:@"state"];
    [WeakRetained _updateAttentionState:{objc_msgSend(v4, "intValue")}];
  }
}

- (void)_stopMonitoringTVSystemStatus
{
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stopped monitoring TVSystemStatus", v5, 2u);
  }

  companionClient = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  [companionClient deregisterRequestID:@"TVSystemStatus"];
}

- (void)_setupRemoteFindingManagerIfNeeded
{
  remoteFindingManager = self->_remoteFindingManager;
  v4 = _TVRCRapportLog(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (remoteFindingManager)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Active RemoteFindingManager already exists", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Creating RemoteFindingManager", v8, 2u);
    }

    v6 = [[TVRCSiriRemoteFindingManager alloc] initWithCompanionLinkClientWrapper:self];
    v7 = self->_remoteFindingManager;
    self->_remoteFindingManager = v6;

    [(TVRCSiriRemoteFindingManager *)self->_remoteFindingManager addObserver:self forKeyPath:@"pairedRemoteInfo" options:0 context:TVRCSiriRemoteObserverContext];
  }
}

- (void)enableFindingSession:(BOOL)session
{
  sessionCopy = session;
  v12 = *MEMORY[0x277D85DE8];
  v5 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "no";
    if (sessionCopy)
    {
      v6 = "yes";
    }

    v8 = 136315394;
    v9 = v6;
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Enable Finding Session enabled: %s %@", &v8, 0x16u);
  }

  [(TVRCRPCompanionLinkClientWrapper *)self _setupRemoteFindingManagerIfNeeded];
  remoteFindingManager = [(TVRCRPCompanionLinkClientWrapper *)self remoteFindingManager];
  [remoteFindingManager enableFindingSession:sessionCopy];
}

- (void)_invalidateRemoteFindingManager
{
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating RemoteFindingManager", v5, 2u);
  }

  [(TVRCSiriRemoteFindingManager *)self->_remoteFindingManager removeObserver:self forKeyPath:@"pairedRemoteInfo" context:TVRCSiriRemoteObserverContext];
  remoteFindingManager = self->_remoteFindingManager;
  self->_remoteFindingManager = 0;
}

- (void)_updateSiriRemoteFindingState:(int64_t)state
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[TVRCRPCompanionLinkClientWrapper _updateSiriRemoteFindingState:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v7, 0x16u);
  }

  if (self->_siriRemoteFindingSessionState != state)
  {
    self->_siriRemoteFindingSessionState = state;
    delegate = [(TVRCRPCompanionLinkClientWrapper *)self delegate];
    [delegate deviceUpdateSiriRemoteFindingState];
  }
}

- (void)_startMonitoringNowPlayingInfo
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D44280];
  v9[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  objc_initWeak(&location, self);
  companionClient = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__TVRCRPCompanionLinkClientWrapper__startMonitoringNowPlayingInfo__block_invoke;
  v5[3] = &unk_279D827B0;
  objc_copyWeak(&v6, &location);
  [companionClient registerEventID:@"NowPlayingInfo" options:v3 handler:v5];

  [(TVRCRPCompanionLinkClientWrapper *)self sendEvent:@"FetchCurrentNowPlayingInfoEvent" options:MEMORY[0x277CBEC10] response:&__block_literal_global_141];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __66__TVRCRPCompanionLinkClientWrapper__startMonitoringNowPlayingInfo__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateNowPlayingInfo:v5];
  }
}

- (void)_stopMonitoringNowPlayingInfo
{
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stopped monitoring NowPlayingInfo", v5, 2u);
  }

  companionClient = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  [companionClient deregisterEventID:@"NowPlayingInfo"];
}

- (void)_updateNowPlayingInfo:(id)info
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [info objectForKeyedSubscript:@"NowPlayingInfoKey"];
  if (v4)
  {
    v9 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v9];
    v6 = v9;
    v7 = _TVRCRapportLog(v6);
    delegate = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [TVRCRPCompanionLinkClientWrapper _updateNowPlayingInfo:];
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v11 = v5;
        _os_log_impl(&dword_26CF7F000, delegate, OS_LOG_TYPE_DEFAULT, "Updated now playing info: %{public}@", buf, 0xCu);
      }

      [(TVRCRPCompanionLinkClientWrapper *)self setNowPlayingInfo:v5];
      delegate = [(TVRCRPCompanionLinkClientWrapper *)self delegate];
      [delegate deviceUpdatedNowPlayingInfo:self];
    }
  }
}

- (void)_startMonitoringSupportedActions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D44280];
  v9[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  objc_initWeak(&location, self);
  companionClient = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__TVRCRPCompanionLinkClientWrapper__startMonitoringSupportedActions__block_invoke;
  v5[3] = &unk_279D827B0;
  objc_copyWeak(&v6, &location);
  [companionClient registerEventID:@"SupportedActions" options:v3 handler:v5];

  [(TVRCRPCompanionLinkClientWrapper *)self sendEvent:@"FetchSupportedActionsEvent" options:MEMORY[0x277CBEC10] response:0];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __68__TVRCRPCompanionLinkClientWrapper__startMonitoringSupportedActions__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 objectForKeyedSubscript:@"GuideSupportedKey"];
    [WeakRetained setGuideButtonSupported:{objc_msgSend(v4, "BOOLValue")}];
    [WeakRetained _updateSupportedButtons];
  }
}

- (void)_stopMonitoringSupportedActions
{
  companionClient = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  [companionClient deregisterEventID:@"SupportedActions"];
}

- (int)_commandForButtonEvent:(id)event
{
  button = [event button];
  buttonType = [button buttonType];

  if ((buttonType - 1) > 0x1D)
  {
    return 0;
  }

  else
  {
    return dword_26CFC8920[buttonType - 1];
  }
}

- (int)_stateForButtonEvent:(id)event
{
  eventType = [event eventType];
  if (eventType == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (eventType == 2);
  }
}

- (void)_handleSideEffectsForEvent:(id)event
{
  eventCopy = event;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke;
  v6[3] = &unk_279D83450;
  objc_copyWeak(&v9, &location);
  v7 = eventCopy;
  selfCopy = self;
  v5 = eventCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke(id *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] button];
    v4 = [v3 buttonType];

    if (v4 == 4)
    {
      v5 = [a1[4] eventType];
      if ([a1[5] attentionState] == 1 && (v5 & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v6 = _TVRCRapportLog(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [a1[5] attentionState];
          if ((v7 - 1) >= 3)
          {
            v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", v7];
          }

          else
          {
            v8 = off_279D834E8[v7 - 1];
          }

          *buf = 138543362;
          v42 = v8;
          _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "TV is in %{public}@ state. Ignoring Siri invocation", buf, 0xCu);
        }
      }

      else
      {
        v9 = [a1[5] attentionState];
        if (!v9)
        {
          v10 = _TVRCRapportLog(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "TV is in an unkown state. Allowing Siri invocation", buf, 2u);
          }
        }

        switch(v5)
        {
          case 3:
            if (!*(WeakRetained + 11))
            {
              v28 = objc_alloc_init(MEMORY[0x277D44200]);
              v29 = *(WeakRetained + 11);
              *(WeakRetained + 11) = v28;

              v9 = [*(WeakRetained + 11) setIsDestinationPTTEligible:WeakRetained[17]];
              if (WeakRetained[17] == 1)
              {
                v9 = [*(WeakRetained + 11) setDelegate:a1[5]];
              }
            }

            v30 = _TVRCRapportLog(v9);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26CF7F000, v30, OS_LOG_TYPE_DEFAULT, "Prewarming Siri Session", buf, 2u);
            }

            v31 = *(WeakRetained + 11);
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_150;
            v36[3] = &unk_279D82D38;
            objc_copyWeak(&v37, a1 + 6);
            [v31 prewarmWithCompletion:v36];
            objc_destroyWeak(&v37);
            break;
          case 2:
            v26 = [*(WeakRetained + 11) setIsDestinationPTTEligible:WeakRetained[17]];
            if (WeakRetained[17])
            {
              v27 = *(WeakRetained + 11);
              v34[0] = MEMORY[0x277D85DD0];
              v34[1] = 3221225472;
              v34[2] = __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_151;
              v34[3] = &unk_279D82D38;
              objc_copyWeak(&v35, a1 + 6);
              [v27 receivedButtonUpWithCompletion:v34];
              objc_destroyWeak(&v35);
            }

            else
            {
              v32 = _TVRCRapportLog(v26);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_cold_1();
              }

              [*(WeakRetained + 11) invalidate];
              v33 = *(WeakRetained + 11);
              *(WeakRetained + 11) = 0;
            }

            break;
          case 1:
            if (!*(WeakRetained + 11))
            {
              v11 = objc_alloc_init(MEMORY[0x277D44200]);
              v12 = *(WeakRetained + 11);
              *(WeakRetained + 11) = v11;

              [*(WeakRetained + 11) setIsDestinationPTTEligible:WeakRetained[17]];
              if (WeakRetained[17] == 1)
              {
                [*(WeakRetained + 11) setDelegate:a1[5]];
              }
            }

            if (WeakRetained[17] == 1)
            {
              v13 = [*(WeakRetained + 10) localDevice];
              v14 = [v13 effectiveIdentifier];

              v16 = _TVRCRapportLog(v15);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v42 = v14;
                _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Setting source Id - %@", buf, 0xCu);
              }

              [*(WeakRetained + 11) setSourceID:v14];
            }

            [*(WeakRetained + 11) setMessenger:*(WeakRetained + 10)];
            v17 = *(WeakRetained + 11);
            v18 = [WeakRetained identifier];
            [v17 setDestinationID:v18];

            v20 = _TVRCRapportLog(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26CF7F000, v20, OS_LOG_TYPE_DEFAULT, "Activating Siri Session", buf, 2u);
            }

            v21 = [MEMORY[0x277CB83F8] sharedInstance];
            v40 = 0;
            [v21 setHostProcessAttribution:&unk_287E66CE8 error:&v40];
            v22 = v40;

            if (v22)
            {
              v24 = _TVRCRapportLog(v23);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_cold_2();
              }
            }

            v25 = *(WeakRetained + 11);
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_149;
            v38[3] = &unk_279D82D38;
            objc_copyWeak(&v39, a1 + 6);
            [v25 activateWithCompletion:v38];
            objc_destroyWeak(&v39);

            break;
        }
      }
    }
  }
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_149(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = _TVRCRapportLog(WeakRetained);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_149_cold_1();
      }
    }
  }
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_150(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v5 = _TVRCRapportLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Prewarmed Rapport Siri Session", v7, 2u);
    }

    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = _TVRCRapportLog(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_150_cold_1();
    }

LABEL_8:
  }
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_151(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = _TVRCRapportLog(WeakRetained);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_149_cold_1();
      }
    }
  }
}

- (void)_updateConnectedState
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[TVRCRPCompanionLinkClientWrapper _updateConnectedState]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v8, 0x16u);
  }

  if (!self->_isInvalidating)
  {
    if (!self->_startedSetup && self->_activated && self->_authenticated)
    {
      self->_startedSetup = 1;
      self->_isInvalidating = 0;
      [(TVRCRPCompanionLinkClientWrapper *)self _sendSessionStart];
      [(TVRCRPCompanionLinkClientWrapper *)self _setupHidSessionIfNeeded];
      [(TVRCRPCompanionLinkClientWrapper *)self _setupFeatureServicesIfNeeded];
      [(TVRCRPCompanionLinkClientWrapper *)self _setupTouchSessionIfNeeded];
      [(TVRCRPCompanionLinkClientWrapper *)self _setupTextInputSessionIfNeeded];
      [(TVRCRPCompanionLinkClientWrapper *)self _fetchTVSystemStatusAndStartMonitoring];
      [(TVRCRPCompanionLinkClientWrapper *)self _setupRemoteFindingManagerIfNeeded];
      [(TVRCRPCompanionLinkClientWrapper *)self _startMonitoringSupportedActions];
      _startMonitoringNowPlayingInfo = [(TVRCRPCompanionLinkClientWrapper *)self _startMonitoringNowPlayingInfo];
    }

    if (!self->_connected && self->_hidSessionActivated && self->_hidTouchSessionActivated && self->_textInputSessionActivated && self->_receivedSiriSettings && self->_receivedVolumeSettings)
    {
      v5 = _TVRCRapportLog(_startMonitoringNowPlayingInfo);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        companionClient = self->_companionClient;
        v8 = 138543362;
        v9 = companionClient;
        _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully set up companionLinkClient %{public}@. Letting clients know we connected successfully", &v8, 0xCu);
      }

      self->_connected = 1;
      self->_connectionState = 2;
      [(TVRCRPCompanionLinkClientWrapper *)self _updateSupportedButtons];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained connectedToDevice:self];
    }
  }
}

- (void)_launchApplicationOrURL:(id)l
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    v6 = [lCopy containsString:@"://"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
      v8 = _TVRCRapportLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v7;
        _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to launch application with URL %@", buf, 0xCu);
      }

      companionClient = self->_companionClient;
      v10 = *MEMORY[0x277D44228];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke;
      v17[3] = &unk_279D82DB0;
      v18 = v7;
      v11 = v7;
      [(RPCompanionLinkClient *)companionClient launchAppWithURL:v11 destinationID:v10 completion:v17];
    }

    else
    {
      v12 = _TVRCRapportLog(v6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to launch application with bundle ID %@", buf, 0xCu);
      }

      v13 = self->_companionClient;
      v14 = *MEMORY[0x277D44228];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke_156;
      v15[3] = &unk_279D82DB0;
      v16 = v5;
      [(RPCompanionLinkClient *)v13 launchAppWithBundleID:v16 destinationID:v14 completion:v15];
      v11 = v16;
    }
  }

  else
  {
    v11 = _TVRCRapportLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = 0;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Failed to launch App/URL %@", buf, 0xCu);
    }
  }
}

void __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _TVRCRapportLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke_cold_1();
    }
  }
}

void __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke_156(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _TVRCRapportLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke_156_cold_1();
    }
  }
}

- (id)newCompanionLinkClient
{
  v3 = objc_alloc_init(MEMORY[0x277D44160]);
  [v3 setControlFlags:{objc_msgSend(v3, "controlFlags")}];
  [v3 setDispatchQueue:MEMORY[0x277D85CD0]];
  [v3 setDestinationDevice:self->_device];
  [v3 setRssiThreshold:-75];
  [v3 tvrc_setAllowedTVs];
  [v3 setServiceType:@"com.apple.tvremoteservices"];
  return v3;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[TVRCRPCompanionLinkClientWrapper dealloc]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = TVRCRPCompanionLinkClientWrapper;
  [(TVRCRPCompanionLinkClientWrapper *)&v4 dealloc];
}

- (void)_fetchSiriEnabledWithSiriInfo:(id)info completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  handlerCopy = handler;
  v8 = _TVRCRapportLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[TVRCRPCompanionLinkClientWrapper _fetchSiriEnabledWithSiriInfo:completionHandler:]";
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = objc_alloc_init(MEMORY[0x277CEF3A8]);
  v9 = *(*(&buf + 1) + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__TVRCRPCompanionLinkClientWrapper__fetchSiriEnabledWithSiriInfo_completionHandler___block_invoke;
  v11[3] = &unk_279D834A0;
  v11[4] = self;
  v10 = handlerCopy;
  v12 = v10;
  p_buf = &buf;
  [v9 getAssistantIsEnabledForDeviceWithSiriInfo:infoCopy withCompletion:v11];

  _Block_object_dispose(&buf, 8);
}

void __84__TVRCRPCompanionLinkClientWrapper__fetchSiriEnabledWithSiriInfo_completionHandler___block_invoke(void *a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__TVRCRPCompanionLinkClientWrapper__fetchSiriEnabledWithSiriInfo_completionHandler___block_invoke_2;
  block[3] = &unk_279D83478;
  v16 = a2;
  v6 = a1[4];
  v7 = a1[5];
  v12 = v5;
  v13 = v6;
  v8 = v7;
  v9 = a1[6];
  v14 = v8;
  v15 = v9;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __84__TVRCRPCompanionLinkClientWrapper__fetchSiriEnabledWithSiriInfo_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _TVRCRapportLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v11 = 67109378;
    *v12 = v3;
    *&v12[4] = 2114;
    *&v12[6] = v4;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "getAssistantIsEnabledForDeviceWithSiriInfo, enabled=%{BOOL}d, error=%{public}@", &v11, 0x12u);
  }

  if (*(a1 + 32))
  {
    v5 = _TVRCRapportLog([*(a1 + 40) setSiriEnabled:1]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__TVRCRPCompanionLinkClientWrapper__fetchSiriEnabledWithSiriInfo_completionHandler___block_invoke_2_cold_1();
    }
  }

  else
  {
    v5 = _TVRCRapportLog([*(a1 + 40) setSiriEnabled:*(a1 + 64)]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) device];
      v7 = *(a1 + 64);
      v11 = 138543618;
      *v12 = v6;
      *&v12[8] = 1024;
      *&v12[10] = v7;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Siri Enabled on device %{public}@ : %d", &v11, 0x12u);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, [*(a1 + 40) isSiriEnabled]);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

- (void)_updateSiriStatusFromSiriInfo:(id)info
{
  v10 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = _TVRCRapportLog(infoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[TVRCRPCompanionLinkClientWrapper _updateSiriStatusFromSiriInfo:]";
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__TVRCRPCompanionLinkClientWrapper__updateSiriStatusFromSiriInfo___block_invoke;
  v6[3] = &unk_279D834C8;
  objc_copyWeak(&v7, buf);
  [(TVRCRPCompanionLinkClientWrapper *)self _fetchSiriEnabledWithSiriInfo:infoCopy completionHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __66__TVRCRPCompanionLinkClientWrapper__updateSiriStatusFromSiriInfo___block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = _TVRCRapportLog(WeakRetained);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"disabled";
      if (a2)
      {
        v6 = @"enabled";
      }

      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Siri is %{public}@. Calling delegate to update supported buttons", &v7, 0xCu);
    }

    v4[15] = 1;
    if (v4[8])
    {
      [v4 _updateSupportedButtons];
    }

    else
    {
      [v4 _updateConnectedState];
    }
  }
}

- (void)rpSiriSessionDidReceiveStopRecording
{
  if (self->_pttFeatureSupported)
  {
    v6[3] = v2;
    v6[4] = v3;
    objc_initWeak(v6, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __72__TVRCRPCompanionLinkClientWrapper_rpSiriSessionDidReceiveStopRecording__block_invoke;
    v4[3] = &unk_279D826E8;
    objc_copyWeak(&v5, v6);
    dispatch_async(MEMORY[0x277D85CD0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(v6);
  }
}

void __72__TVRCRPCompanionLinkClientWrapper_rpSiriSessionDidReceiveStopRecording__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[11])
  {
    v3 = _TVRCRapportLog(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Received Stop recording - Invalidating RPSiriSession", v5, 2u);
    }

    [v2[11] invalidate];
    v4 = v2[11];
    v2[11] = 0;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (TVRCSiriRemoteObserverContext == context)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__TVRCRPCompanionLinkClientWrapper_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279D825E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TVRCRPCompanionLinkClientWrapper;
    [(TVRCRPCompanionLinkClientWrapper *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

void __83__TVRCRPCompanionLinkClientWrapper_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 deviceUpdatedPairedRemoteInfo:*(a1 + 32)];
}

- (_TVRCCompanionLinkClientWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __79__TVRCRPCompanionLinkClientWrapper_reestablishConnectionWithCompletionHandler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Failed to reestablish connection with client: %{public}@", v4, 0xCu);
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_7_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_10_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_11_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)sendButtonEvent:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendButtonEvent:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_9(v0, v1, v2, v3, v4);
}

void __52__TVRCRPCompanionLinkClientWrapper_sendButtonEvent___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)sendTouchEvent:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x20u);
}

- (void)sendTouchEvent:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__TVRCRPCompanionLinkClientWrapper_sendTouchEvent___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __51__TVRCRPCompanionLinkClientWrapper_sendTouchEvent___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  v2 = 138543362;
  v3 = v0;
  _os_log_debug_impl(&dword_26CF7F000, v1, OS_LOG_TYPE_DEBUG, "Sent touch event to companionLinkClient %{public}@", &v2, 0xCu);
}

void __75__TVRCRPCompanionLinkClientWrapper_sendEvent_options_shouldRetry_response___block_invoke_19_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)registerEvent:options:handler:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

- (void)sourceVersion
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_9(v0, v1, v2, v3, v4);
}

void __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_111_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_112_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __53__TVRCRPCompanionLinkClientWrapper__sendSessionStart__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __52__TVRCRPCompanionLinkClientWrapper__sendSessionStop__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __60__TVRCRPCompanionLinkClientWrapper__setupHidSessionIfNeeded__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __60__TVRCRPCompanionLinkClientWrapper__setupMediaEventsManager__block_invoke_123_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __66__TVRCRPCompanionLinkClientWrapper__setupLegacyMediaEventsManager__block_invoke_125_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __62__TVRCRPCompanionLinkClientWrapper__setupTouchSessionIfNeeded__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __66__TVRCRPCompanionLinkClientWrapper__setupTextInputSessionIfNeeded__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_updateNowPlayingInfo:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_149_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_150_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke_156_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end