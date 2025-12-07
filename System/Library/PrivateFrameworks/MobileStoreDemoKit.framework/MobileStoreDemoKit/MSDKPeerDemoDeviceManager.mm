@interface MSDKPeerDemoDeviceManager
+ (id)sharedInstance;
- (BOOL)_setUpXPCConnectionIfNeeded;
- (BOOL)registerPeerEventsObserver:(id)observer;
- (MSDKPeerDemoDeviceManager)init;
- (MSDKPeerEventsObserverProtocol)observer;
- (NSArray)discoveredPeers;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (void)_cleanUpUponXPCDisconnection;
- (void)_setUpXPCConnectionIfNeeded;
- (void)adjustVolumeOnPeer:(id)peer toValue:(float)value forCategory:(unint64_t)category withCompletion:(id)completion;
- (void)attemptPairingWithPeer:(id)peer withCompletion:(id)completion;
- (void)changeWiFiSettingsOnPeer:(id)peer newSettings:(id)settings withCompletion:(id)completion;
- (void)enableMuseBuddyResetOnPeer:(id)peer value:(BOOL)value withCompletion:(id)completion;
- (void)enumerateTestScriptsOnPeer:(id)peer withCompletion:(id)completion;
- (void)fetchDeviceInfoFromPeer:(id)peer withCompletion:(id)completion;
- (void)getAccessibiltiySettingsOnPeer:(id)peer withCompletion:(id)completion;
- (void)getIconImagesOfVisibleAppsOnPeer:(id)peer height:(float)height width:(float)width scale:(float)scale withCompletion:(id)completion;
- (void)getMuseBuddyResetValueOnPeer:(id)peer withCompletion:(id)completion;
- (void)initiateAirPlayAssistedFromPeer:(id)peer usingParameters:(id)parameters discoveryMode:(unint64_t)mode withCompletion:(id)completion;
- (void)initiateIPDResetOnPeer:(id)peer targetIPD:(double)d withCompletion:(id)completion;
- (void)invokeInputRecoveryOnPeer:(id)peer forType:(unint64_t)type withCompletion:(id)completion;
- (void)launchAppOnPeer:(id)peer appIdentifier:(id)identifier withCompletion:(id)completion;
- (void)launchTestScriptOnPeer:(id)peer ofIdentifier:(id)identifier asRoot:(BOOL)root withCompletion:(id)completion;
- (void)listAppsOnPeer:(id)peer appKind:(unint64_t)kind withCompletion:(id)completion;
- (void)listAvailableEnvironmentsOnPeer:(id)peer withCompletion:(id)completion;
- (void)loadLSMeasurementsOnPeer:(id)peer withCompletion:(id)completion;
- (void)obtainGKMetricsFromPeer:(id)peer withCompletion:(id)completion;
- (void)obtainGKResultsFromPeer:(id)peer withCompletion:(id)completion;
- (void)providerDidDiscoverNewPeer:(id)peer;
- (void)providerDidLoseExistingPeerOfID:(id)d;
- (void)providerDidUpdateDeviceInfoOnPeerOfID:(id)d withNewProperties:(id)properties;
- (void)queryIPDResetStageOnPeer:(id)peer withCompletion:(id)completion;
- (void)readIPDStatusFromPeer:(id)peer withCompletion:(id)completion;
- (void)removePairedPeer:(id)peer withCompletion:(id)completion;
- (void)resetToPassThroughOnPeer:(id)peer withCompletion:(id)completion;
- (void)retrieveHSCoachingSuggestionFromPeer:(id)peer withCompletion:(id)completion;
- (void)setAccessibiltiySettingsOnPeer:(id)peer newSettings:(id)settings withCompletion:(id)completion;
- (void)setActiveEnvironmentOnPeer:(id)peer environmentID:(id)d withCompletion:(id)completion;
- (void)setImmersionLevelOnPeer:(id)peer immersionLevel:(float)level animationDuration:(float)duration withCompletion:(id)completion;
- (void)setLanguageAndRegionOnPeer:(id)peer languageCode:(id)code regionCode:(id)regionCode withCompletion:(id)completion;
- (void)skipAutoIPDAdjustmentOnPeer:(id)peer withCompletion:(id)completion;
- (void)startPeerDiscoveryWithCompletion:(id)completion;
- (void)subscribeDeviceInfoFromPeer:(id)peer withCompletion:(id)completion;
- (void)syncCurrentWiFiSettingsToPeer:(id)peer withCompletion:(id)completion;
- (void)terminateAppOnPeer:(id)peer appIdentifier:(id)identifier withCompletion:(id)completion;
- (void)triggerSnapshotRevertOnPeer:(id)peer rebootDevice:(BOOL)device withCompletion:(id)completion;
- (void)unregisterPeerEventsObserver;
- (void)wipeCustomerAssetsOnPeer:(id)peer withCompletion:(id)completion;
@end

@implementation MSDKPeerDemoDeviceManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[MSDKPeerDemoDeviceManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __43__MSDKPeerDemoDeviceManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MSDKPeerDemoDeviceManager);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MSDKPeerDemoDeviceManager)init
{
  v5.receiver = self;
  v5.super_class = MSDKPeerDemoDeviceManager;
  v2 = [(MSDKPeerDemoDeviceManager *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    [(MSDKPeerDemoDeviceManager *)v2 setPeers:v3];
  }

  return v2;
}

- (NSArray)discoveredPeers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  peers = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
  allValues = [peers allValues];

  objc_sync_exit(selfCopy);

  return allValues;
}

- (BOOL)registerPeerEventsObserver:(id)observer
{
  v25 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = defaultLogHandle(observerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKPeerDemoDeviceManager registerPeerEventsObserver:]";
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  v6 = [observerCopy conformsToProtocol:&unk_286AE9918];
  v7 = v6;
  if (v6)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(MSDKPeerDemoDeviceManager *)selfCopy setObserver:observerCopy];
    peers = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
    allValues = [peers allValues];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = allValues;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          observer = [(MSDKPeerDemoDeviceManager *)selfCopy observer];
          [observer managerDidFindPeer:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v6);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [MSDKPeerDemoDeviceManager registerPeerEventsObserver:];
    }
  }

  return v7;
}

- (void)unregisterPeerEventsObserver
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDKPeerDemoDeviceManager unregisterPeerEventsObserver]";
    _os_log_impl(&dword_259B7D000, v3, OS_LOG_TYPE_DEFAULT, "%s: called.", &v5, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MSDKPeerDemoDeviceManager *)selfCopy setObserver:0];
  objc_sync_exit(selfCopy);
}

- (void)startPeerDiscoveryWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[MSDKPeerDemoDeviceManager startPeerDiscoveryWithCompletion:]";
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__MSDKPeerDemoDeviceManager_startPeerDiscoveryWithCompletion___block_invoke;
    v17[3] = &unk_2798EF628;
    v8 = completionCopy;
    v18 = v8;
    v9 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v17];
    [v9 startPeerDiscoveryWithCompletion:v8];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v6);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super startPeerDiscoveryWithCompletion:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

- (void)attemptPairingWithPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager attemptPairingWithPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__MSDKPeerDemoDeviceManager_attemptPairingWithPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v11 = completionCopy;
    v24 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__MSDKPeerDemoDeviceManager_attemptPairingWithPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF628;
    v22 = v11;
    [v12 attemptPairingWithPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super attemptPairingWithPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)subscribeDeviceInfoFromPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager subscribeDeviceInfoFromPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__MSDKPeerDemoDeviceManager_subscribeDeviceInfoFromPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v11 = completionCopy;
    v24 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__MSDKPeerDemoDeviceManager_subscribeDeviceInfoFromPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF628;
    v22 = v11;
    [v12 subscribeDeviceInfoFromPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super subscribeDeviceInfoFromPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)fetchDeviceInfoFromPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager fetchDeviceInfoFromPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__MSDKPeerDemoDeviceManager_fetchDeviceInfoFromPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v11 = completionCopy;
    v24 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__MSDKPeerDemoDeviceManager_fetchDeviceInfoFromPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF628;
    v22 = v11;
    [v12 fetchDeviceInfoFromPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super fetchDeviceInfoFromPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)initiateAirPlayAssistedFromPeer:(id)peer usingParameters:(id)parameters discoveryMode:(unint64_t)mode withCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  parametersCopy = parameters;
  completionCopy = completion;
  v13 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[MSDKPeerDemoDeviceManager initiateAirPlayAssistedFromPeer:usingParameters:discoveryMode:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v13, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __106__MSDKPeerDemoDeviceManager_initiateAirPlayAssistedFromPeer_usingParameters_discoveryMode_withCompletion___block_invoke;
    v28[3] = &unk_2798EF628;
    v16 = completionCopy;
    v29 = v16;
    v17 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v28];
    identifier = [peerCopy identifier];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __106__MSDKPeerDemoDeviceManager_initiateAirPlayAssistedFromPeer_usingParameters_discoveryMode_withCompletion___block_invoke_2;
    v26[3] = &unk_2798EF628;
    v27 = v16;
    [v17 initiateAirPlayAssistedFromPeerOfID:identifier usingParameters:parametersCopy discoveryMode:mode withCompletion:v26];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v14);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super initiateAirPlayAssistedFromPeer:v19 usingParameters:v20 discoveryMode:v21 withCompletion:v22, v23, v24, v25];
    }
  }
}

- (void)triggerSnapshotRevertOnPeer:(id)peer rebootDevice:(BOOL)device withCompletion:(id)completion
{
  deviceCopy = device;
  v30 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v10 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[MSDKPeerDemoDeviceManager triggerSnapshotRevertOnPeer:rebootDevice:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v10, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    xpcConnection = [(MSDKPeerDemoDeviceManager *)selfCopy xpcConnection];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __85__MSDKPeerDemoDeviceManager_triggerSnapshotRevertOnPeer_rebootDevice_withCompletion___block_invoke;
    v26[3] = &unk_2798EF628;
    v14 = completionCopy;
    v27 = v14;
    v15 = [xpcConnection remoteObjectProxyWithErrorHandler:v26];
    identifier = [peerCopy identifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__MSDKPeerDemoDeviceManager_triggerSnapshotRevertOnPeer_rebootDevice_withCompletion___block_invoke_2;
    v24[3] = &unk_2798EF628;
    v25 = v14;
    [v15 triggerSnapshotRevertOnPeerOfID:identifier rebootDevice:deviceCopy withCompletion:v24];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v11);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super triggerSnapshotRevertOnPeer:v17 rebootDevice:v18 withCompletion:v19, v20, v21, v22, v23];
    }
  }
}

- (void)invokeInputRecoveryOnPeer:(id)peer forType:(unint64_t)type withCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v10 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[MSDKPeerDemoDeviceManager invokeInputRecoveryOnPeer:forType:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v10, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __78__MSDKPeerDemoDeviceManager_invokeInputRecoveryOnPeer_forType_withCompletion___block_invoke;
    v25[3] = &unk_2798EF628;
    v13 = completionCopy;
    v26 = v13;
    v14 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v25];
    identifier = [peerCopy identifier];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __78__MSDKPeerDemoDeviceManager_invokeInputRecoveryOnPeer_forType_withCompletion___block_invoke_2;
    v23[3] = &unk_2798EF628;
    v24 = v13;
    [v14 invokeInputRecoveryOnPeerOfID:identifier forType:type withCompletion:v23];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v11);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super invokeInputRecoveryOnPeer:v16 forType:v17 withCompletion:v18, v19, v20, v21, v22];
    }
  }
}

- (void)adjustVolumeOnPeer:(id)peer toValue:(float)value forCategory:(unint64_t)category withCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v12 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[MSDKPeerDemoDeviceManager adjustVolumeOnPeer:toValue:forCategory:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __83__MSDKPeerDemoDeviceManager_adjustVolumeOnPeer_toValue_forCategory_withCompletion___block_invoke;
    v28[3] = &unk_2798EF628;
    v15 = completionCopy;
    v29 = v15;
    v16 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v28];
    identifier = [peerCopy identifier];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__MSDKPeerDemoDeviceManager_adjustVolumeOnPeer_toValue_forCategory_withCompletion___block_invoke_2;
    v26[3] = &unk_2798EF628;
    v27 = v15;
    *&v18 = value;
    [v16 adjustVolumeOnPeerOfID:identifier toValue:category forCategory:v26 withCompletion:v18];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v13);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super adjustVolumeOnPeer:v19 toValue:v20 forCategory:v21 withCompletion:v22, v23, v24, v25];
    }
  }
}

- (void)listAppsOnPeer:(id)peer appKind:(unint64_t)kind withCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v10 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[MSDKPeerDemoDeviceManager listAppsOnPeer:appKind:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v10, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __67__MSDKPeerDemoDeviceManager_listAppsOnPeer_appKind_withCompletion___block_invoke;
    v25[3] = &unk_2798EF628;
    v13 = completionCopy;
    v26 = v13;
    v14 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v25];
    identifier = [peerCopy identifier];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__MSDKPeerDemoDeviceManager_listAppsOnPeer_appKind_withCompletion___block_invoke_2;
    v23[3] = &unk_2798EF650;
    v24 = v13;
    [v14 listAppsOnPeerOfID:identifier appKind:kind withCompletion:v23];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v11);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super listAppsOnPeer:v16 appKind:v17 withCompletion:v18, v19, v20, v21, v22];
    }
  }
}

- (void)getIconImagesOfVisibleAppsOnPeer:(id)peer height:(float)height width:(float)width scale:(float)scale withCompletion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v14 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = "[MSDKPeerDemoDeviceManager getIconImagesOfVisibleAppsOnPeer:height:width:scale:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v14, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __96__MSDKPeerDemoDeviceManager_getIconImagesOfVisibleAppsOnPeer_height_width_scale_withCompletion___block_invoke;
    v32[3] = &unk_2798EF628;
    v17 = completionCopy;
    v33 = v17;
    v18 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v32];
    identifier = [peerCopy identifier];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __96__MSDKPeerDemoDeviceManager_getIconImagesOfVisibleAppsOnPeer_height_width_scale_withCompletion___block_invoke_2;
    v30[3] = &unk_2798EF678;
    v31 = v17;
    *&v20 = height;
    *&v21 = width;
    *&v22 = scale;
    [v18 getIconImagesOfVisibleAppsOnPeerOfID:identifier height:v30 width:v20 scale:v21 withCompletion:v22];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v15);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super getIconImagesOfVisibleAppsOnPeer:v23 height:v24 width:v25 scale:v26 withCompletion:v27, v28, v29];
    }
  }
}

- (void)launchAppOnPeer:(id)peer appIdentifier:(id)identifier withCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[MSDKPeerDemoDeviceManager launchAppOnPeer:appIdentifier:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__MSDKPeerDemoDeviceManager_launchAppOnPeer_appIdentifier_withCompletion___block_invoke;
    v26[3] = &unk_2798EF628;
    v14 = completionCopy;
    v27 = v14;
    v15 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v26];
    identifier = [peerCopy identifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __74__MSDKPeerDemoDeviceManager_launchAppOnPeer_appIdentifier_withCompletion___block_invoke_2;
    v24[3] = &unk_2798EF628;
    v25 = v14;
    [v15 launchAppOnPeerOfID:identifier appIdentifier:identifierCopy withCompletion:v24];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v12);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super launchAppOnPeer:v17 appIdentifier:v18 withCompletion:v19, v20, v21, v22, v23];
    }
  }
}

- (void)terminateAppOnPeer:(id)peer appIdentifier:(id)identifier withCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[MSDKPeerDemoDeviceManager terminateAppOnPeer:appIdentifier:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __77__MSDKPeerDemoDeviceManager_terminateAppOnPeer_appIdentifier_withCompletion___block_invoke;
    v26[3] = &unk_2798EF628;
    v14 = completionCopy;
    v27 = v14;
    v15 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v26];
    identifier = [peerCopy identifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__MSDKPeerDemoDeviceManager_terminateAppOnPeer_appIdentifier_withCompletion___block_invoke_2;
    v24[3] = &unk_2798EF628;
    v25 = v14;
    [v15 terminateAppOnPeerOfID:identifier appIdentifier:identifierCopy withCompletion:v24];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v12);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super terminateAppOnPeer:v17 appIdentifier:v18 withCompletion:v19, v20, v21, v22, v23];
    }
  }
}

- (void)listAvailableEnvironmentsOnPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager listAvailableEnvironmentsOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__MSDKPeerDemoDeviceManager_listAvailableEnvironmentsOnPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v11 = completionCopy;
    v24 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__MSDKPeerDemoDeviceManager_listAvailableEnvironmentsOnPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF650;
    v22 = v11;
    [v12 listAvailableEnvironmentsOnPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super listAvailableEnvironmentsOnPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)setActiveEnvironmentOnPeer:(id)peer environmentID:(id)d withCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  dCopy = d;
  completionCopy = completion;
  v11 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[MSDKPeerDemoDeviceManager setActiveEnvironmentOnPeer:environmentID:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __85__MSDKPeerDemoDeviceManager_setActiveEnvironmentOnPeer_environmentID_withCompletion___block_invoke;
    v26[3] = &unk_2798EF628;
    v14 = completionCopy;
    v27 = v14;
    v15 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v26];
    identifier = [peerCopy identifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__MSDKPeerDemoDeviceManager_setActiveEnvironmentOnPeer_environmentID_withCompletion___block_invoke_2;
    v24[3] = &unk_2798EF628;
    v25 = v14;
    [v15 setActiveEnvironmentOnPeerOfID:identifier environmentID:dCopy withCompletion:v24];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v12);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super setActiveEnvironmentOnPeer:v17 environmentID:v18 withCompletion:v19, v20, v21, v22, v23];
    }
  }
}

- (void)setImmersionLevelOnPeer:(id)peer immersionLevel:(float)level animationDuration:(float)duration withCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v12 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[MSDKPeerDemoDeviceManager setImmersionLevelOnPeer:immersionLevel:animationDuration:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __101__MSDKPeerDemoDeviceManager_setImmersionLevelOnPeer_immersionLevel_animationDuration_withCompletion___block_invoke;
    v29[3] = &unk_2798EF628;
    v15 = completionCopy;
    v30 = v15;
    v16 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v29];
    identifier = [peerCopy identifier];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __101__MSDKPeerDemoDeviceManager_setImmersionLevelOnPeer_immersionLevel_animationDuration_withCompletion___block_invoke_2;
    v27[3] = &unk_2798EF628;
    v28 = v15;
    *&v18 = level;
    *&v19 = duration;
    [v16 seImmersionLevelOnPeerOfID:identifier immersionLevel:v27 animationDuration:v18 withCompletion:v19];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v13);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super setImmersionLevelOnPeer:v20 immersionLevel:v21 animationDuration:v22 withCompletion:v23, v24, v25, v26];
    }
  }
}

- (void)resetToPassThroughOnPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager resetToPassThroughOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__MSDKPeerDemoDeviceManager_resetToPassThroughOnPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v11 = completionCopy;
    v24 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__MSDKPeerDemoDeviceManager_resetToPassThroughOnPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF628;
    v22 = v11;
    [v12 resetToPassThroughOnPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super resetToPassThroughOnPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)enumerateTestScriptsOnPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager enumerateTestScriptsOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __71__MSDKPeerDemoDeviceManager_enumerateTestScriptsOnPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v11 = completionCopy;
    v24 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__MSDKPeerDemoDeviceManager_enumerateTestScriptsOnPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF650;
    v22 = v11;
    [v12 enumerateTestScriptsOnPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super enumerateTestScriptsOnPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)launchTestScriptOnPeer:(id)peer ofIdentifier:(id)identifier asRoot:(BOOL)root withCompletion:(id)completion
{
  rootCopy = root;
  v32 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  identifierCopy = identifier;
  completionCopy = completion;
  v13 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[MSDKPeerDemoDeviceManager launchTestScriptOnPeer:ofIdentifier:asRoot:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v13, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __87__MSDKPeerDemoDeviceManager_launchTestScriptOnPeer_ofIdentifier_asRoot_withCompletion___block_invoke;
    v28[3] = &unk_2798EF628;
    v16 = completionCopy;
    v29 = v16;
    v17 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v28];
    identifier = [peerCopy identifier];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __87__MSDKPeerDemoDeviceManager_launchTestScriptOnPeer_ofIdentifier_asRoot_withCompletion___block_invoke_2;
    v26[3] = &unk_2798EF628;
    v27 = v16;
    [v17 launchTestScriptOnPeerOfID:identifier ofIdentifier:identifierCopy asRoot:rootCopy withCompletion:v26];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v14);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super launchTestScriptOnPeer:v19 ofIdentifier:v20 asRoot:v21 withCompletion:v22, v23, v24, v25];
    }
  }
}

- (void)obtainGKResultsFromPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager obtainGKResultsFromPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__MSDKPeerDemoDeviceManager_obtainGKResultsFromPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v11 = completionCopy;
    v24 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__MSDKPeerDemoDeviceManager_obtainGKResultsFromPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF6A0;
    v22 = v11;
    [v12 obtainGKResultsOnPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super obtainGKResultsFromPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)obtainGKMetricsFromPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager obtainGKMetricsFromPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__MSDKPeerDemoDeviceManager_obtainGKMetricsFromPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v11 = completionCopy;
    v24 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__MSDKPeerDemoDeviceManager_obtainGKMetricsFromPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF6C8;
    v22 = v11;
    [v12 obtainGKMetricsOnPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super obtainGKMetricsFromPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)loadLSMeasurementsOnPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager loadLSMeasurementsOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__MSDKPeerDemoDeviceManager_loadLSMeasurementsOnPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v11 = completionCopy;
    v24 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__MSDKPeerDemoDeviceManager_loadLSMeasurementsOnPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF6F0;
    v22 = v11;
    [v12 loadLSMeasurementsOnPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super loadLSMeasurementsOnPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)retrieveHSCoachingSuggestionFromPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager retrieveHSCoachingSuggestionFromPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __81__MSDKPeerDemoDeviceManager_retrieveHSCoachingSuggestionFromPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v11 = completionCopy;
    v24 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__MSDKPeerDemoDeviceManager_retrieveHSCoachingSuggestionFromPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF718;
    v22 = v11;
    [v12 retrieveHSCoachingSuggestionFromPeer:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super retrieveHSCoachingSuggestionFromPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)readIPDStatusFromPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager readIPDStatusFromPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__MSDKPeerDemoDeviceManager_readIPDStatusFromPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v11 = completionCopy;
    v24 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__MSDKPeerDemoDeviceManager_readIPDStatusFromPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF740;
    v22 = v11;
    [v12 readIPDStatusFromPeer:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super readIPDStatusFromPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)skipAutoIPDAdjustmentOnPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager skipAutoIPDAdjustmentOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__MSDKPeerDemoDeviceManager_skipAutoIPDAdjustmentOnPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v11 = completionCopy;
    v24 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__MSDKPeerDemoDeviceManager_skipAutoIPDAdjustmentOnPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF628;
    v22 = v11;
    [v12 skipAutoIPDAdjustmentFromPeer:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super skipAutoIPDAdjustmentOnPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)initiateIPDResetOnPeer:(id)peer targetIPD:(double)d withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v10 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager initiateIPDResetOnPeer:targetIPD:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v10, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__MSDKPeerDemoDeviceManager_initiateIPDResetOnPeer_targetIPD_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v13 = completionCopy;
    v24 = v13;
    v14 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    [v14 initiateIPDResetOnPeer:identifier targetIPD:v13 withCompletion:d];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v11);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super initiateIPDResetOnPeer:v16 targetIPD:v17 withCompletion:v18, v19, v20, v21, v22];
    }
  }
}

- (void)queryIPDResetStageOnPeer:(id)peer withCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKPeerDemoDeviceManager queryIPDResetStageOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__MSDKPeerDemoDeviceManager_queryIPDResetStageOnPeer_withCompletion___block_invoke;
    v21[3] = &unk_2798EF628;
    v11 = completionCopy;
    v22 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v21];
    identifier = [peerCopy identifier];
    [v12 queryIPDResetStageOnPeer:identifier withCompletion:v11];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super queryIPDResetStageOnPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)getAccessibiltiySettingsOnPeer:(id)peer withCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKPeerDemoDeviceManager getAccessibiltiySettingsOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__MSDKPeerDemoDeviceManager_getAccessibiltiySettingsOnPeer_withCompletion___block_invoke;
    v21[3] = &unk_2798EF628;
    v11 = completionCopy;
    v22 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v21];
    identifier = [peerCopy identifier];
    [v12 getAccessibiltiySettingsOnPeer:identifier withCompletion:v11];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super getAccessibiltiySettingsOnPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)setAccessibiltiySettingsOnPeer:(id)peer newSettings:(id)settings withCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  settingsCopy = settings;
  completionCopy = completion;
  v11 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[MSDKPeerDemoDeviceManager setAccessibiltiySettingsOnPeer:newSettings:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __87__MSDKPeerDemoDeviceManager_setAccessibiltiySettingsOnPeer_newSettings_withCompletion___block_invoke;
    v24[3] = &unk_2798EF628;
    v14 = completionCopy;
    v25 = v14;
    v15 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v24];
    identifier = [peerCopy identifier];
    [v15 setAccessibiltiySettingsOnPeer:identifier newSettings:settingsCopy withCompletion:v14];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v12);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super setAccessibiltiySettingsOnPeer:v17 newSettings:v18 withCompletion:v19, v20, v21, v22, v23];
    }
  }
}

- (void)wipeCustomerAssetsOnPeer:(id)peer withCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKPeerDemoDeviceManager wipeCustomerAssetsOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__MSDKPeerDemoDeviceManager_wipeCustomerAssetsOnPeer_withCompletion___block_invoke;
    v21[3] = &unk_2798EF628;
    v11 = completionCopy;
    v22 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v21];
    identifier = [peerCopy identifier];
    [v12 wipeCustomerAssetsOnPeer:identifier withCompletion:v11];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super wipeCustomerAssetsOnPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)syncCurrentWiFiSettingsToPeer:(id)peer withCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKPeerDemoDeviceManager syncCurrentWiFiSettingsToPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__MSDKPeerDemoDeviceManager_syncCurrentWiFiSettingsToPeer_withCompletion___block_invoke;
    v21[3] = &unk_2798EF628;
    v11 = completionCopy;
    v22 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v21];
    identifier = [peerCopy identifier];
    [v12 syncCurrentWiFiSettingsToPeer:identifier withCompletion:v11];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super syncCurrentWiFiSettingsToPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)changeWiFiSettingsOnPeer:(id)peer newSettings:(id)settings withCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  settingsCopy = settings;
  completionCopy = completion;
  v11 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[MSDKPeerDemoDeviceManager changeWiFiSettingsOnPeer:newSettings:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __81__MSDKPeerDemoDeviceManager_changeWiFiSettingsOnPeer_newSettings_withCompletion___block_invoke;
    v24[3] = &unk_2798EF628;
    v14 = completionCopy;
    v25 = v14;
    v15 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v24];
    identifier = [peerCopy identifier];
    [v15 changeWiFiSettingsOnPeer:identifier newSettings:settingsCopy withCompletion:v14];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v12);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super changeWiFiSettingsOnPeer:v17 newSettings:v18 withCompletion:v19, v20, v21, v22, v23];
    }
  }
}

- (void)removePairedPeer:(id)peer withCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKPeerDemoDeviceManager removePairedPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__MSDKPeerDemoDeviceManager_removePairedPeer_withCompletion___block_invoke;
    v21[3] = &unk_2798EF628;
    v11 = completionCopy;
    v22 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v21];
    identifier = [peerCopy identifier];
    [v12 removePairedPeer:identifier withCompletion:v11];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v9);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super removePairedPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)setLanguageAndRegionOnPeer:(id)peer languageCode:(id)code regionCode:(id)regionCode withCompletion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  codeCopy = code;
  regionCodeCopy = regionCode;
  completionCopy = completion;
  v14 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[MSDKPeerDemoDeviceManager setLanguageAndRegionOnPeer:languageCode:regionCode:withCompletion:]";
    v31 = 2114;
    v32 = codeCopy;
    v33 = 2114;
    v34 = regionCodeCopy;
    _os_log_impl(&dword_259B7D000, v14, OS_LOG_TYPE_DEFAULT, "%s: called:  languageCode: %{public}@ - regionCode: %{public}@", buf, 0x20u);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __95__MSDKPeerDemoDeviceManager_setLanguageAndRegionOnPeer_languageCode_regionCode_withCompletion___block_invoke;
    v27[3] = &unk_2798EF628;
    v17 = completionCopy;
    v28 = v17;
    v18 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v27];
    identifier = [peerCopy identifier];
    [v18 setLanguageAndRegionOnPeer:identifier languageCode:codeCopy regionCode:regionCodeCopy withCompletion:v17];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v15);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super setLanguageAndRegionOnPeer:v20 languageCode:v21 regionCode:v22 withCompletion:v23, v24, v25, v26];
    }
  }
}

- (void)enableMuseBuddyResetOnPeer:(id)peer value:(BOOL)value withCompletion:(id)completion
{
  valueCopy = value;
  v29 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v10 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[MSDKPeerDemoDeviceManager enableMuseBuddyResetOnPeer:value:withCompletion:]";
    v27 = 1024;
    v28 = valueCopy;
    _os_log_impl(&dword_259B7D000, v10, OS_LOG_TYPE_DEFAULT, "%s: called - value: %{BOOL}d", buf, 0x12u);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__MSDKPeerDemoDeviceManager_enableMuseBuddyResetOnPeer_value_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v13 = completionCopy;
    v24 = v13;
    v14 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    [v14 enableMuseBuddyResetOnPeer:identifier value:valueCopy withCompletion:v13];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v11);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super enableMuseBuddyResetOnPeer:v16 value:v17 withCompletion:v18, v19, v20, v21, v22];
    }
  }
}

- (void)getMuseBuddyResetValueOnPeer:(id)peer withCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [peerCopy identifier];
    *buf = 136315394;
    v25 = "[MSDKPeerDemoDeviceManager getMuseBuddyResetValueOnPeer:withCompletion:]";
    v26 = 2114;
    v27 = identifier;
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called - Peer ID: %{public}@", buf, 0x16u);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __73__MSDKPeerDemoDeviceManager_getMuseBuddyResetValueOnPeer_withCompletion___block_invoke;
    v22[3] = &unk_2798EF628;
    v12 = completionCopy;
    v23 = v12;
    v13 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v22];
    identifier2 = [peerCopy identifier];
    [v13 getMuseBuddyResetValueOnPeer:identifier2 withCompletion:v12];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle(v10);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super getMuseBuddyResetValueOnPeer:v15 withCompletion:v16, v17, v18, v19, v20, v21];
    }
  }
}

- (BOOL)_setUpXPCConnectionIfNeeded
{
  xpcConnection = [(MSDKPeerDemoDeviceManager *)self xpcConnection];

  if (xpcConnection)
  {
    return 1;
  }

  v6 = defaultLogHandle(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_259B7D000, v6, OS_LOG_TYPE_DEFAULT, "MSDKPeerDemoDeviceManager: Setting up XPC connection.", buf, 2u);
  }

  v7 = +[MSDKManagedDevice sharedInstance];
  retrieveXPCConnectionToPeerService = [v7 retrieveXPCConnectionToPeerService];
  [(MSDKPeerDemoDeviceManager *)self setXpcConnection:retrieveXPCConnectionToPeerService];

  xpcConnection2 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
  v5 = xpcConnection2 != 0;

  if (xpcConnection2)
  {
    v53 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286AE44D0];
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286AE9978];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    [v11 setClasses:v15 forSelector:sel_listAppsOnPeerOfID_appKind_withCompletion_ argumentIndex:0 ofReply:1];

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    [v11 setClasses:v19 forSelector:sel_listAvailableEnvironmentsOnPeerOfID_withCompletion_ argumentIndex:0 ofReply:1];

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
    [v11 setClasses:v23 forSelector:sel_enumerateTestScriptsOnPeerOfID_withCompletion_ argumentIndex:0 ofReply:1];

    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v52 = objc_opt_class();
    v27 = v53;
    v28 = [v24 setWithObjects:{v25, v26, v52, objc_opt_class(), 0}];
    [v11 setClasses:v28 forSelector:sel_obtainGKMetricsOnPeerOfID_withCompletion_ argumentIndex:0 ofReply:1];

    v29 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = [v29 setWithObjects:{v30, v31, objc_opt_class(), 0}];
    [v11 setClasses:v32 forSelector:sel_obtainGKResultsOnPeerOfID_withCompletion_ argumentIndex:0 ofReply:1];

    v33 = MEMORY[0x277CBEB98];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    [v11 setClasses:v35 forSelector:sel_readIPDStatusFromPeer_withCompletion_ argumentIndex:0 ofReply:1];

    v36 = MEMORY[0x277CBEB98];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    [v11 setClasses:v38 forSelector:sel_getAccessibiltiySettingsOnPeer_withCompletion_ argumentIndex:0 ofReply:1];

    v39 = MEMORY[0x277CBEB98];
    v40 = objc_opt_class();
    v41 = [v39 setWithObjects:{v40, objc_opt_class(), 0}];
    [v11 setClasses:v41 forSelector:sel_setAccessibiltiySettingsOnPeer_newSettings_withCompletion_ argumentIndex:0 ofReply:1];

    v42 = MEMORY[0x277CBEB98];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    [v11 setClasses:v44 forSelector:sel_changeWiFiSettingsOnPeer_newSettings_withCompletion_ argumentIndex:0 ofReply:1];

    objc_initWeak(buf, self);
    xpcConnection3 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    [xpcConnection3 setExportedInterface:v53];

    xpcConnection4 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    [xpcConnection4 setExportedObject:self];

    xpcConnection5 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    [xpcConnection5 setRemoteObjectInterface:v11];

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke;
    v56[3] = &unk_2798EF768;
    objc_copyWeak(&v57, buf);
    xpcConnection6 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    [xpcConnection6 setInterruptionHandler:v56];

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke_159;
    v54[3] = &unk_2798EF768;
    objc_copyWeak(&v55, buf);
    xpcConnection7 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    [xpcConnection7 setInvalidationHandler:v54];

    xpcConnection8 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    [xpcConnection8 activate];

    objc_destroyWeak(&v55);
    objc_destroyWeak(&v57);
    objc_destroyWeak(buf);
  }

  else
  {
    v27 = defaultLogHandle(v10);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MSDKPeerDemoDeviceManager _setUpXPCConnectionIfNeeded];
    }
  }

  return v5;
}

void __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_sync_enter(WeakRetained);
  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _cleanUpUponXPCDisconnection];

  objc_sync_exit(WeakRetained);
}

void __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke_159(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke_159_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_sync_enter(WeakRetained);
  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _cleanUpUponXPCDisconnection];

  objc_sync_exit(WeakRetained);
}

- (void)_cleanUpUponXPCDisconnection
{
  v21 = *MEMORY[0x277D85DE8];
  [(MSDKPeerDemoDeviceManager *)self setXpcConnection:0];
  v3 = MEMORY[0x277CBEA60];
  peers = [(MSDKPeerDemoDeviceManager *)self peers];
  allValues = [peers allValues];
  v6 = [v3 arrayWithArray:allValues];

  peers2 = [(MSDKPeerDemoDeviceManager *)self peers];
  [peers2 removeAllObjects];

  observer = [(MSDKPeerDemoDeviceManager *)self observer];

  if (observer)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          observer2 = [(MSDKPeerDemoDeviceManager *)self observer];
          [observer2 managerDidLosePeer:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if ([(MSDKPeerDemoDeviceManager *)self _setUpXPCConnectionIfNeeded])
  {
    xpcConnection = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__MSDKPeerDemoDeviceManager__remoteObjectProxyWithErrorHandler___block_invoke;
    v9[3] = &unk_2798EF628;
    v10 = handlerCopy;
    v6 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorDomainMSDWithCode:3727741186 message:@"Failed to establish xpc connection to demod."];
    (*(handlerCopy + 2))(handlerCopy, v7);

    v6 = 0;
  }

  return v6;
}

void __64__MSDKPeerDemoDeviceManager__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = [a2 localizedDescription];
  v5 = [v3 errorDomainMSDWithCode:3727741186 message:@"Failed to establish xpc connection to demod." reason:v4];

  (*(*(a1 + 32) + 16))();
}

- (void)providerDidDiscoverNewPeer:(id)peer
{
  peerCopy = peer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [peerCopy identifier];
  peers = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
  v8 = [peers objectForKey:identifier];

  if (v8)
  {
    observer2 = defaultLogHandle(v9);
    if (os_log_type_enabled(observer2, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)peerCopy providerDidDiscoverNewPeer:observer2, v11, v12, v13, v14, v15, v16];
    }

    goto LABEL_6;
  }

  peers2 = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
  [peers2 setObject:peerCopy forKey:identifier];

  observer = [(MSDKPeerDemoDeviceManager *)selfCopy observer];

  if (observer)
  {
    observer2 = [(MSDKPeerDemoDeviceManager *)selfCopy observer];
    [observer2 managerDidFindPeer:peerCopy];
LABEL_6:
  }

  objc_sync_exit(selfCopy);
}

- (void)providerDidLoseExistingPeerOfID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  peers = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
  v7 = [peers objectForKey:dCopy];

  if (!v7)
  {
    observer2 = defaultLogHandle(v8);
    if (os_log_type_enabled(observer2, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)dCopy providerDidLoseExistingPeerOfID:observer2, v14, v15, v16, v17, v18, v19];
    }

    goto LABEL_8;
  }

  peers2 = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
  [peers2 removeObjectForKey:dCopy];

  v11 = defaultLogHandle(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(MSDKPeerDemoDeviceManager *)dCopy providerDidLoseExistingPeerOfID:v11];
  }

  observer = [(MSDKPeerDemoDeviceManager *)selfCopy observer];

  if (observer)
  {
    observer2 = [(MSDKPeerDemoDeviceManager *)selfCopy observer];
    [observer2 managerDidLosePeer:v7];
LABEL_8:
  }

  objc_sync_exit(selfCopy);
}

- (void)providerDidUpdateDeviceInfoOnPeerOfID:(id)d withNewProperties:(id)properties
{
  dCopy = d;
  propertiesCopy = properties;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  peers = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
  v10 = [peers objectForKey:dCopy];

  if (!v10)
  {
    observer2 = defaultLogHandle(v11);
    if (os_log_type_enabled(observer2, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)dCopy providerDidLoseExistingPeerOfID:observer2, v14, v15, v16, v17, v18, v19];
    }

    goto LABEL_6;
  }

  [v10 refreshDevicePropertiesUsingProperties:propertiesCopy];
  observer = [(MSDKPeerDemoDeviceManager *)selfCopy observer];

  if (observer)
  {
    observer2 = [(MSDKPeerDemoDeviceManager *)selfCopy observer];
    [observer2 managerDidUpdateDeviceInfoForPeer:v10];
LABEL_6:
  }

  objc_sync_exit(selfCopy);
}

- (MSDKPeerEventsObserverProtocol)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)registerPeerEventsObserver:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startPeerDiscoveryWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager startPeerDiscoveryWithCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)attemptPairingWithPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager attemptPairingWithPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)subscribeDeviceInfoFromPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager subscribeDeviceInfoFromPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)fetchDeviceInfoFromPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager fetchDeviceInfoFromPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initiateAirPlayAssistedFromPeer:(uint64_t)a3 usingParameters:(uint64_t)a4 discoveryMode:(uint64_t)a5 withCompletion:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager initiateAirPlayAssistedFromPeer:usingParameters:discoveryMode:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)triggerSnapshotRevertOnPeer:(uint64_t)a3 rebootDevice:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager triggerSnapshotRevertOnPeer:rebootDevice:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)invokeInputRecoveryOnPeer:(uint64_t)a3 forType:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager invokeInputRecoveryOnPeer:forType:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)adjustVolumeOnPeer:(uint64_t)a3 toValue:(uint64_t)a4 forCategory:(uint64_t)a5 withCompletion:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager adjustVolumeOnPeer:toValue:forCategory:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)listAppsOnPeer:(uint64_t)a3 appKind:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager listAppsOnPeer:appKind:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getIconImagesOfVisibleAppsOnPeer:(uint64_t)a3 height:(uint64_t)a4 width:(uint64_t)a5 scale:(uint64_t)a6 withCompletion:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager getIconImagesOfVisibleAppsOnPeer:height:width:scale:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)launchAppOnPeer:(uint64_t)a3 appIdentifier:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager launchAppOnPeer:appIdentifier:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)terminateAppOnPeer:(uint64_t)a3 appIdentifier:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager terminateAppOnPeer:appIdentifier:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)listAvailableEnvironmentsOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager listAvailableEnvironmentsOnPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setActiveEnvironmentOnPeer:(uint64_t)a3 environmentID:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager setActiveEnvironmentOnPeer:environmentID:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setImmersionLevelOnPeer:(uint64_t)a3 immersionLevel:(uint64_t)a4 animationDuration:(uint64_t)a5 withCompletion:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager setImmersionLevelOnPeer:immersionLevel:animationDuration:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)resetToPassThroughOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager resetToPassThroughOnPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)enumerateTestScriptsOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager enumerateTestScriptsOnPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)launchTestScriptOnPeer:(uint64_t)a3 ofIdentifier:(uint64_t)a4 asRoot:(uint64_t)a5 withCompletion:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager launchTestScriptOnPeer:ofIdentifier:asRoot:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)obtainGKResultsFromPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager obtainGKResultsFromPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)obtainGKMetricsFromPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager obtainGKMetricsFromPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)loadLSMeasurementsOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager loadLSMeasurementsOnPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)retrieveHSCoachingSuggestionFromPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager retrieveHSCoachingSuggestionFromPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)readIPDStatusFromPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager readIPDStatusFromPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)skipAutoIPDAdjustmentOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager skipAutoIPDAdjustmentOnPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initiateIPDResetOnPeer:(uint64_t)a3 targetIPD:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager initiateIPDResetOnPeer:targetIPD:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)queryIPDResetStageOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager queryIPDResetStageOnPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getAccessibiltiySettingsOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager getAccessibiltiySettingsOnPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setAccessibiltiySettingsOnPeer:(uint64_t)a3 newSettings:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager setAccessibiltiySettingsOnPeer:newSettings:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)wipeCustomerAssetsOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager wipeCustomerAssetsOnPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)syncCurrentWiFiSettingsToPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager syncCurrentWiFiSettingsToPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)changeWiFiSettingsOnPeer:(uint64_t)a3 newSettings:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager changeWiFiSettingsOnPeer:newSettings:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)removePairedPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager removePairedPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setLanguageAndRegionOnPeer:(uint64_t)a3 languageCode:(uint64_t)a4 regionCode:(uint64_t)a5 withCompletion:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager setLanguageAndRegionOnPeer:languageCode:regionCode:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)enableMuseBuddyResetOnPeer:(uint64_t)a3 value:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager enableMuseBuddyResetOnPeer:value:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getMuseBuddyResetValueOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKPeerDemoDeviceManager getMuseBuddyResetValueOnPeer:withCompletion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_setUpXPCConnectionIfNeeded
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke_159_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)providerDidDiscoverNewPeer:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a2, a3, "MSDKPeerDemoDeviceManager: Received duplicated demo peer: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)providerDidLoseExistingPeerOfID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[MSDKPeerDemoDeviceManager providerDidLoseExistingPeerOfID:]";
  v4 = 2114;
  v5 = a1;
  _os_log_debug_impl(&dword_259B7D000, a2, OS_LOG_TYPE_DEBUG, "%s - Removing peer with id:  %{public}@", &v2, 0x16u);
}

- (void)providerDidLoseExistingPeerOfID:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a2, a3, "MSDKPeerDemoDeviceManager: No demo peer found with ID: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end