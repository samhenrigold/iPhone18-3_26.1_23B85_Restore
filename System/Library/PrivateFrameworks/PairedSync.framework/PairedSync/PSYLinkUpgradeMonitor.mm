@interface PSYLinkUpgradeMonitor
- (BOOL)_holdingAWDLCompanionLinkPreference;
- (BOOL)holdingAnyCompanionLinkPreference;
- (PSYLinkUpgradeMonitor)initWithRegistryDevice:(id)device delegateQueue:(id)queue;
- (PSYLinkUpgradeMonitorDelegate)delegate;
- (id)createNetworkRelayDeviceMonitor;
- (int64_t)localLinkTypeFromNRLinkType:(unsigned __int8)type linkSubtype:(unsigned __int8)subtype;
- (void)_awdlUpgradeTimedout;
- (void)_cancelAWDLUgpradeTimeoutTimer;
- (void)_enteredCompatibilityStateOnDevice:(id)device;
- (void)_informDelegateAboutLinkChangedTo:(int64_t)to;
- (void)_onInitialPropertyExchangeComplete;
- (void)_onQueue_requestLinkUpgrade;
- (void)_onQueue_resetCompanionLinkPreference;
- (void)_performLinkUpgradeToInfraWiFi;
- (void)_updateCompanionLinkPreferenceToAWDLforBTUUID:(id)d;
- (void)createNetworkRelayDeviceMonitor;
- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected;
- (void)deviceLinkTypeDidChange:(id)change linkType:(unsigned __int8)type linkSubtype:(unsigned __int8)subtype;
- (void)registry:(id)registry changed:(id)changed properties:(id)properties;
- (void)requestLinkUpgrade;
- (void)resetCompanionLinkPreference;
- (void)resetMonitor;
- (void)wirelessCredentialUpdateRequestCompletedWithResult:(BOOL)result;
@end

@implementation PSYLinkUpgradeMonitor

- (PSYLinkUpgradeMonitor)initWithRegistryDevice:(id)device delegateQueue:(id)queue
{
  deviceCopy = device;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = PSYLinkUpgradeMonitor;
  v9 = [(PSYLinkUpgradeMonitor *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegateQueue, queue);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_get_global_queue(0, 0);
    v13 = dispatch_queue_create_with_target_V2("com.apple.PairedSync.linkMonitorQueue", v11, v12);
    processingQueue = v10->_processingQueue;
    v10->_processingQueue = v13;

    objc_storeStrong(&v10->_pdrRegistryDevice, device);
    v10->_networkRelayDevicePreferencesLock._os_unfair_lock_opaque = 0;
    v15 = +[PSYRegistrySingleton registry];
    [v15 addDelegate:v10];

    createNetworkRelayDeviceMonitor = [(PSYLinkUpgradeMonitor *)v10 createNetworkRelayDeviceMonitor];
    networkRelayDeviceMonitor = v10->_networkRelayDeviceMonitor;
    v10->_networkRelayDeviceMonitor = createNetworkRelayDeviceMonitor;
  }

  return v10;
}

- (id)createNetworkRelayDeviceMonitor
{
  v24 = *MEMORY[0x277D85DE8];
  pdrRegistryDevice = [(PSYLinkUpgradeMonitor *)self pdrRegistryDevice];
  pairingID = [pdrRegistryDevice pairingID];
  [(PSYLinkUpgradeMonitor *)self setMonitoringBluetoothIdPairingId:pairingID];

  pdrRegistryDevice2 = [(PSYLinkUpgradeMonitor *)self pdrRegistryDevice];
  v6 = [pdrRegistryDevice2 valueForProperty:*MEMORY[0x277D37B58]];

  v8 = psylink_log(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = psylink_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      v21 = "[PSYLinkUpgradeMonitor createNetworkRelayDeviceMonitor]";
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_25DF25000, v11, OS_LOG_TYPE_DEFAULT, "%s: BT identifier: %{public}@", &v20, 0x16u);
    }
  }

  if (v6)
  {
    [(PSYLinkUpgradeMonitor *)self setMonitoringBluetoothIdPairingId:0];
    v12 = [MEMORY[0x277D2C9C8] newDeviceIdentifierWithBluetoothUUID:v6];
    v13 = [objc_alloc(MEMORY[0x277D2C9E8]) initWithDeviceIdentifier:v12 delegate:self queue:self->_processingQueue];
    v14 = v13;
    if (v13)
    {
      self->_currentLinkSubType = [v13 linkSubtype];
      v15 = -[PSYLinkUpgradeMonitor localLinkTypeFromNRLinkType:linkSubtype:](self, "localLinkTypeFromNRLinkType:linkSubtype:", [v14 linkType], objc_msgSend(v14, "linkSubtype"));
      if (self->_currentLinkType != v15)
      {
        self->_currentLinkType = v15;
        [(PSYLinkUpgradeMonitor *)self _informDelegateAboutLinkChangedTo:v15];
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  v16 = psylink_log(v10);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v12 = psylink_log(v18);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PSYLinkUpgradeMonitor *)v12 createNetworkRelayDeviceMonitor];
    }

    v14 = 0;
    goto LABEL_13;
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (void)_informDelegateAboutLinkChangedTo:(int64_t)to
{
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PSYLinkUpgradeMonitor__informDelegateAboutLinkChangedTo___block_invoke;
  block[3] = &unk_2799FBA28;
  objc_copyWeak(v7, &location);
  v7[1] = to;
  dispatch_async(delegateQueue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __59__PSYLinkUpgradeMonitor__informDelegateAboutLinkChangedTo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = objc_opt_respondsToSelector();

    WeakRetained = v6;
    if (v4)
    {
      v5 = [v6 delegate];
      [v5 linkChangedToLinkType:*(a1 + 40)];

      WeakRetained = v6;
    }
  }
}

- (void)requestLinkUpgrade
{
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__PSYLinkUpgradeMonitor_requestLinkUpgrade__block_invoke;
  v4[3] = &unk_2799FB6C8;
  objc_copyWeak(&v5, &location);
  dispatch_async(processingQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __43__PSYLinkUpgradeMonitor_requestLinkUpgrade__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _onQueue_requestLinkUpgrade];
    WeakRetained = v2;
  }
}

- (void)_onQueue_requestLinkUpgrade
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = _os_feature_enabled_impl();
  if ((v3 & 1) == 0)
  {
    v15 = psylink_log(v3);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (!v16)
    {
      return;
    }

    v10 = psylink_log(v17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 136315138;
      v34 = "[PSYLinkUpgradeMonitor _onQueue_requestLinkUpgrade]";
      _os_log_impl(&dword_25DF25000, v10, OS_LOG_TYPE_DEFAULT, "%s: feature disabled. Ignoring linkupgrade request", &v33, 0xCu);
    }

    goto LABEL_36;
  }

  if (self->_currentLinkSubType != 102 && !self->_waitingForAWDLupgradeTimeout)
  {
    [(PSYLinkUpgradeMonitor *)self setMonitoringCompatibilityState:1];
    v18 = [(PDRDevice *)self->_pdrRegistryDevice valueForProperty:*MEMORY[0x277D37B68]];
    unsignedIntValue = [v18 unsignedIntValue];

    if (unsignedIntValue >= 3)
    {
      v21 = psylink_log(v20);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      if (v22)
      {
        v24 = psylink_log(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 136315394;
          v34 = "[PSYLinkUpgradeMonitor _onQueue_requestLinkUpgrade]";
          v35 = 2048;
          v36 = unsignedIntValue;
          _os_log_impl(&dword_25DF25000, v24, OS_LOG_TYPE_DEFAULT, "%s: already initial properties exchanged: %ld", &v33, 0x16u);
        }
      }

      [(PSYLinkUpgradeMonitor *)self setMonitoringCompatibilityState:0];
      [(PSYLinkUpgradeMonitor *)self _onInitialPropertyExchangeComplete];
    }

    v10 = [(PDRDevice *)self->_pdrRegistryDevice valueForProperty:*MEMORY[0x277D37B58]];
    v25 = psylink_log(v10);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v28 = psylink_log(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315394;
        v34 = "[PSYLinkUpgradeMonitor _onQueue_requestLinkUpgrade]";
        v35 = 2114;
        v36 = v10;
        _os_log_impl(&dword_25DF25000, v28, OS_LOG_TYPE_DEFAULT, "%s: BT identifier: %{public}@", &v33, 0x16u);
      }
    }

    if (!v10)
    {
      v29 = psylink_log(v27);
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

      if (v30)
      {
        v32 = psylink_log(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 136315138;
          v34 = "[PSYLinkUpgradeMonitor _onQueue_requestLinkUpgrade]";
          _os_log_impl(&dword_25DF25000, v32, OS_LOG_TYPE_DEFAULT, "%s: Couldn't get BTUUID. Marked link upgrade pending", &v33, 0xCu);
        }
      }

      self->_pendingAWDLUpgradeRequest = 1;
      goto LABEL_36;
    }

    self->_pendingAWDLUpgradeRequest = 0;
    goto LABEL_30;
  }

  v4 = psylink_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = psylink_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
      waitingForAWDLupgradeTimeout = self->_waitingForAWDLupgradeTimeout;
      v33 = 136315650;
      v34 = "[PSYLinkUpgradeMonitor _onQueue_requestLinkUpgrade]";
      v35 = 2112;
      v36 = StringFromNRLinkSubtype;
      v37 = 1024;
      v38 = waitingForAWDLupgradeTimeout;
      _os_log_impl(&dword_25DF25000, v7, OS_LOG_TYPE_DEFAULT, "%s: Ignoring upgrade request. current link: %@ request in progress: %d", &v33, 0x1Cu);
    }
  }

  if (self->_currentLinkType == 102 && ![(PSYLinkUpgradeMonitor *)self holdingAnyCompanionLinkPreference])
  {
    v10 = [(PDRDevice *)self->_pdrRegistryDevice valueForKey:*MEMORY[0x277D37B58]];
    if (!v10)
    {
      v11 = psylink_log(0);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (v12)
      {
        v14 = psylink_log(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(PSYLinkUpgradeMonitor *)v14 _onQueue_requestLinkUpgrade];
        }
      }

      goto LABEL_36;
    }

LABEL_30:
    [(PSYLinkUpgradeMonitor *)self _updateCompanionLinkPreferenceToAWDLforBTUUID:v10];
LABEL_36:
  }
}

- (void)_enteredCompatibilityStateOnDevice:(id)device
{
  deviceCopy = device;
  pairingID = [deviceCopy pairingID];
  pdrRegistryDevice = [(PSYLinkUpgradeMonitor *)self pdrRegistryDevice];
  pairingID2 = [pdrRegistryDevice pairingID];
  v8 = [pairingID isEqual:pairingID2];

  if (v8)
  {
    objc_initWeak(&location, self);
    processingQueue = self->_processingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PSYLinkUpgradeMonitor__enteredCompatibilityStateOnDevice___block_invoke;
    block[3] = &unk_2799FB778;
    objc_copyWeak(&v12, &location);
    v11 = deviceCopy;
    dispatch_async(processingQueue, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __60__PSYLinkUpgradeMonitor__enteredCompatibilityStateOnDevice___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) valueForProperty:*MEMORY[0x277D37B68]];
    v4 = [v3 intValue];

    v6 = psylink_log(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v9 = psylink_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "[PSYLinkUpgradeMonitor _enteredCompatibilityStateOnDevice:]_block_invoke";
        v12 = 1024;
        v13 = v4;
        _os_log_impl(&dword_25DF25000, v9, OS_LOG_TYPE_DEFAULT, "%s: Entered Compatibility State: %d", &v10, 0x12u);
      }
    }

    if (v4 >= 3)
    {
      [WeakRetained setMonitoringCompatibilityState:0];
      [WeakRetained _onInitialPropertyExchangeComplete];
    }
  }
}

- (void)_onInitialPropertyExchangeComplete
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = psylink_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = psylink_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[PSYLinkUpgradeMonitor _onInitialPropertyExchangeComplete]";
      _os_log_impl(&dword_25DF25000, v6, OS_LOG_TYPE_DEFAULT, "%s: Initial property exchange complete.", buf, 0xCu);
    }
  }

  self->_initialPropertyExchangeComplete = 1;
  objc_initWeak(buf, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PSYLinkUpgradeMonitor__onInitialPropertyExchangeComplete__block_invoke;
  block[3] = &unk_2799FB6C8;
  objc_copyWeak(&v9, buf);
  dispatch_async(delegateQueue, block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __59__PSYLinkUpgradeMonitor__onInitialPropertyExchangeComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [v3 delegate];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __59__PSYLinkUpgradeMonitor__onInitialPropertyExchangeComplete__block_invoke_2;
      v7[3] = &unk_2799FBA50;
      objc_copyWeak(&v8, (a1 + 32));
      [v6 sendWirelessCredentialsToWatchWithCompletion:v7];

      objc_destroyWeak(&v8);
    }

    else
    {
      [v3 wirelessCredentialUpdateRequestCompletedWithResult:1];
    }
  }
}

void __59__PSYLinkUpgradeMonitor__onInitialPropertyExchangeComplete__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained wirelessCredentialUpdateRequestCompletedWithResult:a2];
    WeakRetained = v4;
  }
}

- (void)resetCompanionLinkPreference
{
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__PSYLinkUpgradeMonitor_resetCompanionLinkPreference__block_invoke;
  v4[3] = &unk_2799FB6C8;
  objc_copyWeak(&v5, &location);
  dispatch_async(processingQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__PSYLinkUpgradeMonitor_resetCompanionLinkPreference__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _onQueue_resetCompanionLinkPreference];
    WeakRetained = v2;
  }
}

- (void)_onQueue_resetCompanionLinkPreference
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_networkRelayDevicePreferences)
  {
    v3 = psylink_log(self);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v6 = psylink_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[PSYLinkUpgradeMonitor _onQueue_resetCompanionLinkPreference]";
        _os_log_impl(&dword_25DF25000, v6, OS_LOG_TYPE_DEFAULT, "%s: reset companion link preference", &v7, 0xCu);
      }
    }

    [(NRDevicePreferences *)self->_networkRelayDevicePreferences setCompanionLinkPreferences:0];
  }

  [(PSYLinkUpgradeMonitor *)self setMonitoringBluetoothIdPairingId:0];
  [(PSYLinkUpgradeMonitor *)self setMonitoringCompatibilityState:0];
}

- (void)registry:(id)registry changed:(id)changed properties:(id)properties
{
  registryCopy = registry;
  changedCopy = changed;
  propertiesCopy = properties;
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__PSYLinkUpgradeMonitor_registry_changed_properties___block_invoke;
  v15[3] = &unk_2799FBA78;
  objc_copyWeak(&v20, &location);
  v16 = changedCopy;
  v17 = propertiesCopy;
  v18 = registryCopy;
  selfCopy = self;
  v12 = registryCopy;
  v13 = propertiesCopy;
  v14 = changedCopy;
  dispatch_async(processingQueue, v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __53__PSYLinkUpgradeMonitor_registry_changed_properties___block_invoke(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained monitoringBluetoothIdPairingId];
    v5 = [a1[4] pairingID];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      v7 = *MEMORY[0x277D37B58];
      if ([a1[5] containsObject:*MEMORY[0x277D37B58]])
      {
        v8 = [a1[4] valueForProperty:v7];
        v9 = psylink_log(v8);
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (v10)
        {
          v12 = psylink_log(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 136315394;
            v16 = "[PSYLinkUpgradeMonitor registry:changed:properties:]_block_invoke";
            v17 = 2114;
            v18 = v8;
            _os_log_impl(&dword_25DF25000, v12, OS_LOG_TYPE_DEFAULT, "%s: BT identifier: %{public}@", &v15, 0x16u);
          }
        }

        if (v8)
        {
          [a1[6] removeDelegate:a1[7]];
          [v3 setMonitoringBluetoothIdPairingId:0];
          v13 = [v3 networkRelayDeviceMonitor];

          if (!v13)
          {
            v14 = [v3 createNetworkRelayDeviceMonitor];
            [v3 setNetworkRelayDeviceMonitor:v14];
          }

          if ([v3 pendingAWDLUpgradeRequest])
          {
            [v3 setPendingAWDLUpgradeRequest:0];
            [v3 _updateCompanionLinkPreferenceToAWDLforBTUUID:v8];
          }
        }
      }
    }

    if ([v3 monitoringCompatibilityState] && objc_msgSend(a1[5], "containsObject:", *MEMORY[0x277D37B68]))
    {
      [a1[7] _enteredCompatibilityStateOnDevice:a1[4]];
    }
  }
}

- (void)_updateCompanionLinkPreferenceToAWDLforBTUUID:(id)d
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D2C9C8] newDeviceIdentifierWithBluetoothUUID:d];
  v5 = psylink_log(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = psylink_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      nrDeviceIdentifier = [v4 nrDeviceIdentifier];
      *buf = 136315394;
      v40 = "[PSYLinkUpgradeMonitor _updateCompanionLinkPreferenceToAWDLforBTUUID:]";
      v41 = 2114;
      v42 = nrDeviceIdentifier;
      _os_log_impl(&dword_25DF25000, v8, OS_LOG_TYPE_DEFAULT, "%s: NetworkRelayDeviceIdentifier: %{public}@", buf, 0x16u);
    }
  }

  deviceIdentifier = [(NRDeviceMonitor *)self->_networkRelayDeviceMonitor deviceIdentifier];
  nrDeviceIdentifier2 = [deviceIdentifier nrDeviceIdentifier];
  nrDeviceIdentifier3 = [v4 nrDeviceIdentifier];
  v13 = [nrDeviceIdentifier2 isEqual:nrDeviceIdentifier3];

  if ((v13 & 1) == 0)
  {
    createNetworkRelayDeviceMonitor = [(PSYLinkUpgradeMonitor *)self createNetworkRelayDeviceMonitor];
    networkRelayDeviceMonitor = self->_networkRelayDeviceMonitor;
    self->_networkRelayDeviceMonitor = createNetworkRelayDeviceMonitor;
  }

  isConnected = [(NRDeviceMonitor *)self->_networkRelayDeviceMonitor isConnected];
  if (isConnected)
  {
    self->_pendingAWDLUpgradeRequest = 0;
    self->_currentLinkSubType = [(NRDeviceMonitor *)self->_networkRelayDeviceMonitor linkSubtype];
    os_unfair_lock_lock(&self->_networkRelayDevicePreferencesLock);
    v17 = [objc_alloc(MEMORY[0x277D2CA28]) initWithDeviceIdentifier:v4];
    networkRelayDevicePreferences = self->_networkRelayDevicePreferences;
    self->_networkRelayDevicePreferences = v17;

    v19 = [objc_alloc(MEMORY[0x277D2C9C0]) initForHighThroughputWithServiceClass:5 includeP2P:1];
    [(NRDevicePreferences *)self->_networkRelayDevicePreferences setCompanionLinkPreferences:v19];
    os_unfair_lock_unlock(&self->_networkRelayDevicePreferencesLock);
    if (self->_currentLinkSubType == 102)
    {
      v21 = psylink_log(v20);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      if (v22)
      {
        v24 = psylink_log(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25DF25000, v24, OS_LOG_TYPE_DEFAULT, "link already on AWDL. Took assertion again.", buf, 2u);
        }
      }
    }

    else
    {
      self->_waitingForAWDLupgradeTimeout = 1;
      v29 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_processingQueue);
      awdlUpgradeTimeoutTimer = self->_awdlUpgradeTimeoutTimer;
      self->_awdlUpgradeTimeoutTimer = v29;

      v31 = self->_awdlUpgradeTimeoutTimer;
      v32 = dispatch_time(0, 60000000000);
      dispatch_source_set_timer(v31, v32, 0xFFFFFFFFFFFFFFFFLL, 0);
      v33 = self->_awdlUpgradeTimeoutTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __71__PSYLinkUpgradeMonitor__updateCompanionLinkPreferenceToAWDLforBTUUID___block_invoke;
      handler[3] = &unk_2799FB560;
      handler[4] = self;
      dispatch_source_set_event_handler(v33, handler);
      dispatch_activate(self->_awdlUpgradeTimeoutTimer);
    }

    v34 = psylink_log(v23);
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

    if (v35)
    {
      v37 = psylink_log(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v40 = "[PSYLinkUpgradeMonitor _updateCompanionLinkPreferenceToAWDLforBTUUID:]";
        _os_log_impl(&dword_25DF25000, v37, OS_LOG_TYPE_DEFAULT, "%s: Marked for using AWDL", buf, 0xCu);
      }
    }
  }

  else
  {
    v25 = psylink_log(isConnected);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v28 = psylink_log(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v40 = "[PSYLinkUpgradeMonitor _updateCompanionLinkPreferenceToAWDLforBTUUID:]";
        _os_log_impl(&dword_25DF25000, v28, OS_LOG_TYPE_DEFAULT, "%s: Peer not connected yet. Waiting for connectivity", buf, 0xCu);
      }
    }

    self->_pendingAWDLUpgradeRequest = 1;
  }
}

- (void)_awdlUpgradeTimedout
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = psylink_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = psylink_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[PSYLinkUpgradeMonitor _awdlUpgradeTimedout]";
      _os_log_impl(&dword_25DF25000, v6, OS_LOG_TYPE_DEFAULT, "%s: AWDL upgrade request timedout", &v7, 0xCu);
    }
  }

  self->_waitingForAWDLupgradeTimeout = 0;
  if (self->_wirelessCredentialsExchangeStepComplete && !self->_currentLinkSubType && !self->_everConnectedOnAWDL)
  {
    [(PSYLinkUpgradeMonitor *)self _performLinkUpgradeToInfraWiFi];
  }
}

- (void)_cancelAWDLUgpradeTimeoutTimer
{
  self->_waitingForAWDLupgradeTimeout = 0;
  awdlUpgradeTimeoutTimer = self->_awdlUpgradeTimeoutTimer;
  if (awdlUpgradeTimeoutTimer)
  {
    dispatch_source_cancel(awdlUpgradeTimeoutTimer);
    v4 = self->_awdlUpgradeTimeoutTimer;
    self->_awdlUpgradeTimeoutTimer = 0;
  }
}

- (void)_performLinkUpgradeToInfraWiFi
{
  v42 = *MEMORY[0x277D85DE8];
  pdrRegistryDevice = self->_pdrRegistryDevice;
  if (pdrRegistryDevice)
  {
    v4 = [(PDRDevice *)pdrRegistryDevice valueForProperty:*MEMORY[0x277D37B58]];
    v5 = v4;
    if (v4)
    {
      if (!self->_pendingAWDLUpgradeRequest)
      {
        v9 = [MEMORY[0x277D2C9C8] newDeviceIdentifierWithBluetoothUUID:v4];
        v17 = psylink_log(v9);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

        if (v18)
        {
          v20 = psylink_log(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            nrDeviceIdentifier = [v9 nrDeviceIdentifier];
            v36 = 136315650;
            v37 = "[PSYLinkUpgradeMonitor _performLinkUpgradeToInfraWiFi]";
            v38 = 2114;
            v39 = v5;
            v40 = 2114;
            v41 = nrDeviceIdentifier;
            _os_log_impl(&dword_25DF25000, v20, OS_LOG_TYPE_DEFAULT, "%s: BT identifier: %{public}@ networkRelayDeviceIdentifier: %{public}@", &v36, 0x20u);
          }
        }

        deviceIdentifier = [(NRDeviceMonitor *)self->_networkRelayDeviceMonitor deviceIdentifier];
        nrDeviceIdentifier2 = [deviceIdentifier nrDeviceIdentifier];
        nrDeviceIdentifier3 = [v9 nrDeviceIdentifier];
        v25 = [nrDeviceIdentifier2 isEqual:nrDeviceIdentifier3];

        if ((v25 & 1) == 0)
        {
          createNetworkRelayDeviceMonitor = [(PSYLinkUpgradeMonitor *)self createNetworkRelayDeviceMonitor];
          networkRelayDeviceMonitor = self->_networkRelayDeviceMonitor;
          self->_networkRelayDeviceMonitor = createNetworkRelayDeviceMonitor;
        }

        self->_currentLinkSubType = [(NRDeviceMonitor *)self->_networkRelayDeviceMonitor linkSubtype];
        os_unfair_lock_lock(&self->_networkRelayDevicePreferencesLock);
        v28 = [objc_alloc(MEMORY[0x277D2CA28]) initWithDeviceIdentifier:v9];
        networkRelayDevicePreferences = self->_networkRelayDevicePreferences;
        self->_networkRelayDevicePreferences = v28;

        v30 = [objc_alloc(MEMORY[0x277D2C9C0]) initForHighThroughputWithServiceClass:5 includeP2P:0];
        [(NRDevicePreferences *)self->_networkRelayDevicePreferences setCompanionLinkPreferences:v30];
        os_unfair_lock_unlock(&self->_networkRelayDevicePreferencesLock);
        v32 = psylink_log(v31);
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

        if (v33)
        {
          v35 = psylink_log(v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315138;
            v37 = "[PSYLinkUpgradeMonitor _performLinkUpgradeToInfraWiFi]";
            _os_log_impl(&dword_25DF25000, v35, OS_LOG_TYPE_DEFAULT, "%s: Marked for using Infra Wi-Fi", &v36, 0xCu);
          }
        }

        goto LABEL_25;
      }

      v6 = psylink_log(v4);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

      if (v7)
      {
        v9 = psylink_log(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 136315138;
          v37 = "[PSYLinkUpgradeMonitor _performLinkUpgradeToInfraWiFi]";
          v10 = "%s: waiting for AWDL upgrade request to complete.";
LABEL_13:
          _os_log_impl(&dword_25DF25000, v9, OS_LOG_TYPE_DEFAULT, v10, &v36, 0xCu);
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v14 = psylink_log(0);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        v9 = psylink_log(v16);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 136315138;
          v37 = "[PSYLinkUpgradeMonitor _performLinkUpgradeToInfraWiFi]";
          v10 = "%s: btDeviceID not yet available, will attempt once available.";
          goto LABEL_13;
        }

LABEL_25:
      }
    }
  }

  else
  {
    v11 = psylink_log(0);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (!v12)
    {
      return;
    }

    v5 = psylink_log(v13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 136315138;
      v37 = "[PSYLinkUpgradeMonitor _performLinkUpgradeToInfraWiFi]";
      _os_log_impl(&dword_25DF25000, v5, OS_LOG_TYPE_DEFAULT, "%s: no active device to upgrade link to Infra Wi-Fi", &v36, 0xCu);
    }
  }
}

- (void)wirelessCredentialUpdateRequestCompletedWithResult:(BOOL)result
{
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__PSYLinkUpgradeMonitor_wirelessCredentialUpdateRequestCompletedWithResult___block_invoke;
  v6[3] = &unk_2799FBAA0;
  objc_copyWeak(&v7, &location);
  resultCopy = result;
  v6[4] = self;
  dispatch_async(processingQueue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __76__PSYLinkUpgradeMonitor_wirelessCredentialUpdateRequestCompletedWithResult___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = psylink_log(WeakRetained);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = psylink_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        v11 = 136315394;
        v12 = "[PSYLinkUpgradeMonitor wirelessCredentialUpdateRequestCompletedWithResult:]_block_invoke";
        v13 = 1024;
        v14 = v8;
        _os_log_impl(&dword_25DF25000, v7, OS_LOG_TYPE_DEFAULT, "%s: wireless credentials exchange complete: %d", &v11, 0x12u);
      }
    }

    if (*(a1 + 48) == 1)
    {
      [v3 setWirelessCredentialsExchangeStepComplete:1];
      if (![v3 currentLinkSubType] && (objc_msgSend(v3, "waitingForAWDLupgradeTimeout") & 1) == 0 && (objc_msgSend(v3, "pendingAWDLUpgradeRequest") & 1) == 0)
      {
        v9 = [v3 networkRelayDeviceMonitor];
        if ([v9 isConnected])
        {
          v10 = *(*(a1 + 32) + 13);

          if ((v10 & 1) == 0)
          {
            [v3 _performLinkUpgradeToInfraWiFi];
          }
        }

        else
        {
        }
      }
    }
  }
}

- (void)resetMonitor
{
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__PSYLinkUpgradeMonitor_resetMonitor__block_invoke;
  v4[3] = &unk_2799FB6C8;
  objc_copyWeak(&v5, &location);
  dispatch_async(processingQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __37__PSYLinkUpgradeMonitor_resetMonitor__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = psylink_log(WeakRetained);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v6 = psylink_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[PSYLinkUpgradeMonitor resetMonitor]_block_invoke";
        _os_log_impl(&dword_25DF25000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
      }
    }

    [v2 _onQueue_resetCompanionLinkPreference];
    [v2 setPendingAWDLUpgradeRequest:0];
    [v2 setWirelessCredentialsExchangeStepComplete:0];
    [v2 setInitialPropertyExchangeComplete:0];
    [v2 setCurrentLinkSubType:0];
    [v2 _cancelAWDLUgpradeTimeoutTimer];
    [v2 setEverConnectedOnAWDL:0];
  }
}

- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected
{
  connectedCopy = connected;
  v14 = *MEMORY[0x277D85DE8];
  v6 = psylink_log(self);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = psylink_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[PSYLinkUpgradeMonitor deviceIsConnectedDidChange:isConnected:]";
      v12 = 1024;
      v13 = connectedCopy;
      _os_log_impl(&dword_25DF25000, v9, OS_LOG_TYPE_DEFAULT, "%s: connected %{BOOL}d", &v10, 0x12u);
    }
  }

  if (connectedCopy && self->_pendingAWDLUpgradeRequest)
  {
    [(PSYLinkUpgradeMonitor *)self _onQueue_requestLinkUpgrade];
  }
}

- (void)deviceLinkTypeDidChange:(id)change linkType:(unsigned __int8)type linkSubtype:(unsigned __int8)subtype
{
  subtypeCopy = subtype;
  typeCopy = type;
  v24 = *MEMORY[0x277D85DE8];
  v8 = psylink_log(self);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = psylink_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
      StringFromNRLinkType = createStringFromNRLinkType();
      v14 = createStringFromNRLinkSubtype();
      v16 = 136315906;
      v17 = "[PSYLinkUpgradeMonitor deviceLinkTypeDidChange:linkType:linkSubtype:]";
      v18 = 2112;
      v19 = StringFromNRLinkSubtype;
      v20 = 2112;
      v21 = StringFromNRLinkType;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_25DF25000, v11, OS_LOG_TYPE_DEFAULT, "%s: link changed. current linkSubType: %@ new linkType: %@, new linkSubType: %@", &v16, 0x2Au);
    }
  }

  self->_currentLinkSubType = subtypeCopy;
  if (subtypeCopy == 102)
  {
    self->_everConnectedOnAWDL = 1;
    [(PSYLinkUpgradeMonitor *)self _cancelAWDLUgpradeTimeoutTimer];
  }

  v15 = [(PSYLinkUpgradeMonitor *)self localLinkTypeFromNRLinkType:typeCopy linkSubtype:subtypeCopy];
  if (v15 != self->_currentLinkType)
  {
    self->_currentLinkType = v15;
    [(PSYLinkUpgradeMonitor *)self _informDelegateAboutLinkChangedTo:v15];
  }
}

- (int64_t)localLinkTypeFromNRLinkType:(unsigned __int8)type linkSubtype:(unsigned __int8)subtype
{
  v4 = 3;
  if (!subtype)
  {
    v4 = 0;
  }

  if (subtype == 102)
  {
    v4 = 2;
  }

  if (type != 2)
  {
    v4 = 0;
  }

  if (type == 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (BOOL)holdingAnyCompanionLinkPreference
{
  os_unfair_lock_lock(&self->_networkRelayDevicePreferencesLock);
  companionLinkPreferences = [(NRDevicePreferences *)self->_networkRelayDevicePreferences companionLinkPreferences];
  v4 = companionLinkPreferences != 0;

  os_unfair_lock_unlock(&self->_networkRelayDevicePreferencesLock);
  return v4;
}

- (BOOL)_holdingAWDLCompanionLinkPreference
{
  os_unfair_lock_lock(&self->_networkRelayDevicePreferencesLock);
  companionLinkPreferences = [(NRDevicePreferences *)self->_networkRelayDevicePreferences companionLinkPreferences];
  v4 = companionLinkPreferences != 0;

  os_unfair_lock_unlock(&self->_networkRelayDevicePreferencesLock);
  return v4;
}

- (PSYLinkUpgradeMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)createNetworkRelayDeviceMonitor
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[PSYLinkUpgradeMonitor createNetworkRelayDeviceMonitor]";
  _os_log_error_impl(&dword_25DF25000, log, OS_LOG_TYPE_ERROR, "%s: Couldn't get BTUUID. Started Observing", &v1, 0xCu);
}

@end