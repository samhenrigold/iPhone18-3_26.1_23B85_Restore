@interface TVRCSiriRemoteConnectionManager
+ (id)sharedInstance;
- (TVRCSiriRemoteConnectionManager)init;
- (void)_removePeripheral:(id)peripheral;
- (void)_sendEnableMessage:(BOOL)message forRemote:(id)remote;
- (void)_startCBScanIfNeeded;
- (void)_startDiscoveryForRemoteWithInfo:(id)info didConnectHandler:(id)handler;
- (void)_stopDiscoveryForRemoteWithInfo:(id)info;
- (void)_stopScanning;
- (void)_updateFindingSessionState:(int64_t)state;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManagerDidUpdateState:(id)state;
- (void)enableFastFindMy:(BOOL)my forRemoteWithInfo:(id)info;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)teardown;
@end

@implementation TVRCSiriRemoteConnectionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TVRCSiriRemoteConnectionManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __49__TVRCSiriRemoteConnectionManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(TVRCSiriRemoteConnectionManager);

  return MEMORY[0x2821F96F8]();
}

- (TVRCSiriRemoteConnectionManager)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = TVRCSiriRemoteConnectionManager;
  v2 = [(TVRCSiriRemoteConnectionManager *)&v16 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    connectedSiriRemotes = v2->_connectedSiriRemotes;
    v2->_connectedSiriRemotes = dictionary;

    v5 = objc_alloc(MEMORY[0x277CBDFF8]);
    v17 = *MEMORY[0x277CBDF08];
    v18[0] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v7 = [v5 initWithDelegate:v2 queue:0 options:v6];
    centralManager = v2->_centralManager;
    v2->_centralManager = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    remoteInfoSet = v2->_remoteInfoSet;
    v2->_remoteInfoSet = v9;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    didConnectHandlerBlockMap = v2->_didConnectHandlerBlockMap;
    v2->_didConnectHandlerBlockMap = dictionary2;

    v13 = [MEMORY[0x277CBEB58] set];
    discoveredPeripherals = v2->_discoveredPeripherals;
    v2->_discoveredPeripherals = v13;
  }

  return v2;
}

- (void)enableFastFindMy:(BOOL)my forRemoteWithInfo:(id)info
{
  myCopy = my;
  v19 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = _TVRCBLEDiscoveryLog(infoCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"Disable";
    if (myCopy)
    {
      v8 = @"Enable";
    }

    *buf = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = infoCopy;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "%@ fast finding for remote with info: %@", buf, 0x16u);
  }

  if (myCopy)
  {
    connectedSiriRemotes = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
    name = [infoCopy name];
    v11 = [connectedSiriRemotes objectForKeyedSubscript:name];

    if (v11)
    {
      v13 = _TVRCBLEDiscoveryLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Valid BLE connection found. Skip starting BLE discovery.", buf, 2u);
      }

      [(TVRCSiriRemoteConnectionManager *)self _sendEnableMessage:1 forRemote:v11];
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __70__TVRCSiriRemoteConnectionManager_enableFastFindMy_forRemoteWithInfo___block_invoke;
      v14[3] = &unk_279D82670;
      v14[4] = self;
      [(TVRCSiriRemoteConnectionManager *)self _startDiscoveryForRemoteWithInfo:infoCopy didConnectHandler:v14];
    }
  }

  else
  {
    [(TVRCSiriRemoteConnectionManager *)self _stopDiscoveryForRemoteWithInfo:infoCopy];
  }
}

uint64_t __70__TVRCSiriRemoteConnectionManager_enableFastFindMy_forRemoteWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _TVRCBLEDiscoveryLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "didConnectHandler called", v6, 2u);
  }

  [*(a1 + 32) _updateFindingSessionState:4];
  [*(a1 + 32) _sendEnableMessage:1 forRemote:v3];

  return [*(a1 + 32) _stopScanning];
}

- (void)_updateFindingSessionState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    findingSessionStateChangedHandler = [(TVRCSiriRemoteConnectionManager *)self findingSessionStateChangedHandler];

    if (findingSessionStateChangedHandler)
    {
      findingSessionStateChangedHandler2 = [(TVRCSiriRemoteConnectionManager *)self findingSessionStateChangedHandler];
      findingSessionStateChangedHandler2[2](findingSessionStateChangedHandler2, state);
    }
  }
}

- (void)_startDiscoveryForRemoteWithInfo:(id)info didConnectHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  handlerCopy = handler;
  v8 = _TVRCBLEDiscoveryLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = infoCopy;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Start scanning for remote with info: %@", buf, 0xCu);
  }

  remoteInfoSet = [(TVRCSiriRemoteConnectionManager *)self remoteInfoSet];
  [remoteInfoSet addObject:infoCopy];

  [(TVRCSiriRemoteConnectionManager *)self _startCBScanIfNeeded];
  if (!self->_cbDiscovery)
  {
    objc_initWeak(buf, self);
    v10 = objc_alloc_init(MEMORY[0x277CBE030]);
    cbDiscovery = self->_cbDiscovery;
    self->_cbDiscovery = v10;

    [(CBDiscovery *)self->_cbDiscovery setUseCase:589824];
    [(CBDiscovery *)self->_cbDiscovery setDiscoveryFlags:0x200000000];
    [(CBDiscovery *)self->_cbDiscovery addDiscoveryType:14];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke;
    v27[3] = &unk_279D82698;
    objc_copyWeak(&v29, buf);
    v28 = handlerCopy;
    [(CBDiscovery *)self->_cbDiscovery setDeviceFoundHandler:v27];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_37;
    v25[3] = &unk_279D826C0;
    objc_copyWeak(&v26, buf);
    [(CBDiscovery *)self->_cbDiscovery setDeviceLostHandler:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_38;
    v23[3] = &unk_279D826E8;
    objc_copyWeak(&v24, buf);
    [(CBDiscovery *)self->_cbDiscovery setInvalidationHandler:v23];
    [(CBDiscovery *)self->_cbDiscovery setInterruptionHandler:&__block_literal_global_41];
    [(CBDiscovery *)self->_cbDiscovery activateWithCompletion:&__block_literal_global_45];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  remoteInfoSet2 = [(TVRCSiriRemoteConnectionManager *)self remoteInfoSet];
  v14 = [remoteInfoSet2 countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (v14)
  {
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(remoteInfoSet2);
        }

        cbKeyInfo = [*(*(&v19 + 1) + 8 * v16) cbKeyInfo];
        [array addObject:cbKeyInfo];

        ++v16;
      }

      while (v14 != v16);
      v14 = [remoteInfoSet2 countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v14);
  }

  cbDiscovery = [(TVRCSiriRemoteConnectionManager *)self cbDiscovery];
  [cbDiscovery setOobKeys:array];
}

void __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _TVRCBLEDiscoveryLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v2;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Device found: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = [WeakRetained remoteInfoSet];
    v45 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (!v45)
    {
      goto LABEL_36;
    }

    v6 = *v54;
    v47 = *MEMORY[0x277CBDE98];
    v41 = *v54;
    v42 = v2;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v54 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v7;
        v8 = *(*(&v53 + 1) + 8 * v7);
        v9 = [v2 btAddressData:v41];
        v10 = [v8 btAddressData];
        v11 = [v9 isEqualToData:v10];

        v13 = _TVRCBLEDiscoveryLog(v12);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (!v11)
        {
          if (v14)
          {
            *buf = 138412546;
            v62 = v2;
            v63 = 2112;
            v64 = v8;
            _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Device not matched: %@ to info: %@", buf, 0x16u);
          }

LABEL_33:
          v40 = v46;
          goto LABEL_34;
        }

        if (v14)
        {
          *buf = 138412546;
          v62 = v2;
          v63 = 2112;
          v64 = v8;
          _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Matched device: %@ to info: %@", buf, 0x16u);
        }

        v15 = objc_alloc(MEMORY[0x277CCAD78]);
        v16 = [v2 identifier];
        v17 = [v15 initWithUUIDString:v16];

        v13 = v17;
        if (!v17)
        {
          goto LABEL_33;
        }

        v18 = [v5 centralManager];
        v44 = v17;
        v60 = v17;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
        v20 = [v18 retrievePeripheralsWithIdentifiers:v19];

        if (![v20 count])
        {
          v21 = _TVRCBLEDiscoveryLog(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v62 = v44;
            _os_log_error_impl(&dword_26CF7F000, v21, OS_LOG_TYPE_ERROR, "Failed to find any peripherals with UUID: %@", buf, 0xCu);
          }
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v50;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v50 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v49 + 1) + 8 * i);
              v28 = [v5 discoveredPeripherals];
              v29 = [v28 containsObject:v27];

              if (v29)
              {
                v31 = _TVRCBLEDiscoveryLog(v30);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v62 = v27;
                  _os_log_impl(&dword_26CF7F000, v31, OS_LOG_TYPE_DEFAULT, "Skipping since we previously discovered this peripheral: %@", buf, 0xCu);
                }
              }

              else
              {
                v32 = [v5 discoveredPeripherals];
                [v32 addObject:v27];

                v34 = _TVRCBLEDiscoveryLog(v33);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v62 = v27;
                  _os_log_impl(&dword_26CF7F000, v34, OS_LOG_TYPE_DEFAULT, "Attemping to connect to :%@", buf, 0xCu);
                }

                v57 = v47;
                v58 = &unk_287E66A18;
                v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
                v35 = [v5 centralManager];
                [v35 connectPeripheral:v27 options:v31];

                [v27 setDelegate:v5];
                v36 = [*(a1 + 32) copy];
                v37 = MEMORY[0x26D6B0B70]();
                v38 = [v5 didConnectHandlerBlockMap];
                v39 = [v27 identifier];
                [v38 setObject:v37 forKeyedSubscript:v39];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v49 objects:v59 count:16];
          }

          while (v24);
        }

        v6 = v41;
        v2 = v42;
        v40 = v46;
        v13 = v44;
LABEL_34:

        v7 = v40 + 1;
      }

      while (v7 != v45);
      v45 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
      if (!v45)
      {
LABEL_36:

        break;
      }
    }
  }
}

void __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_37(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCBLEDiscoveryLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v3;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Device lost: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    v7 = [v3 identifier];
    v8 = [v6 initWithUUIDString:v7];

    if (v8)
    {
      v9 = [WeakRetained centralManager];
      v24 = v8;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      v11 = [v9 retrievePeripheralsWithIdentifiers:v10];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v19 + 1) + 8 * i);
            if ([v17 state] == 1 || objc_msgSend(v17, "state") == 2)
            {
              v18 = [WeakRetained centralManager];
              [v18 cancelPeripheralConnection:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v14);
      }
    }
  }
}

void __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_38(uint64_t a1)
{
  v2 = _TVRCBLEDiscoveryLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "CBDiscovery invalidated", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained centralManager];
  [v4 stopScan];
}

void __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_39(uint64_t a1)
{
  v1 = _TVRCBLEDiscoveryLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_26CF7F000, v1, OS_LOG_TYPE_DEFAULT, "CBDiscovery interrupted", v2, 2u);
  }
}

void __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_42(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _TVRCBLEDiscoveryLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_42_cold_1();
    }
  }

  v5 = _TVRCBLEDiscoveryLog(v2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Activated CBDiscovery", v6, 2u);
  }
}

- (void)_stopDiscoveryForRemoteWithInfo:(id)info
{
  v13 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = _TVRCBLEDiscoveryLog(infoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = infoCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Stop scanning for remote with info :%@", buf, 0xCu);
  }

  remoteInfoSet = [(TVRCSiriRemoteConnectionManager *)self remoteInfoSet];
  [remoteInfoSet removeObject:infoCopy];

  connectedSiriRemotes = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
  name = [infoCopy name];
  v9 = [connectedSiriRemotes objectForKeyedSubscript:name];

  if (v9)
  {
    [(TVRCSiriRemoteConnectionManager *)self _sendEnableMessage:0 forRemote:v9];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__TVRCSiriRemoteConnectionManager__stopDiscoveryForRemoteWithInfo___block_invoke;
  block[3] = &unk_279D825E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_stopScanning
{
  v3 = _TVRCBLEDiscoveryLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stop Discovery", v6, 2u);
  }

  centralManager = [(TVRCSiriRemoteConnectionManager *)self centralManager];
  [centralManager stopScan];

  cbDiscovery = [(TVRCSiriRemoteConnectionManager *)self cbDiscovery];
  [cbDiscovery invalidate];

  [(TVRCSiriRemoteConnectionManager *)self setCbDiscovery:0];
}

- (void)teardown
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = _TVRCBLEDiscoveryLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Tearing down ConnectionManager", buf, 2u);
  }

  [(TVRCSiriRemoteConnectionManager *)self _updateFindingSessionState:2];
  remoteInfoSet = [(TVRCSiriRemoteConnectionManager *)self remoteInfoSet];
  [remoteInfoSet removeAllObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  connectedSiriRemotes = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
  allValues = [connectedSiriRemotes allValues];

  v7 = [allValues countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        centralManager = [(TVRCSiriRemoteConnectionManager *)self centralManager];
        peripheral = [v11 peripheral];
        [centralManager cancelPeripheralConnection:peripheral];

        ++v10;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  connectedSiriRemotes2 = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
  [connectedSiriRemotes2 removeAllObjects];

  discoveredPeripherals = [(TVRCSiriRemoteConnectionManager *)self discoveredPeripherals];
  [discoveredPeripherals removeAllObjects];

  didConnectHandlerBlockMap = [(TVRCSiriRemoteConnectionManager *)self didConnectHandlerBlockMap];
  [didConnectHandlerBlockMap removeAllObjects];
}

- (void)_sendEnableMessage:(BOOL)message forRemote:(id)remote
{
  messageCopy = message;
  v27 = *MEMORY[0x277D85DE8];
  remoteCopy = remote;
  connectedSiriRemotes = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
  peripheral = [remoteCopy peripheral];
  name = [peripheral name];
  v10 = [connectedSiriRemotes objectForKeyedSubscript:name];

  v12 = _TVRCBLEDiscoveryLog(v11);
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (messageCopy)
      {
        v14 = @"enable";
      }

      else
      {
        v14 = @"disable";
      }

      peripheral2 = [remoteCopy peripheral];
      v23 = 138412546;
      v24 = v14;
      v25 = 2112;
      v26 = peripheral2;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Sending message to %@ fast finding for remote: %@", &v23, 0x16u);
    }

    if (messageCopy)
    {
      v16 = &enableFastFindMy;
    }

    else
    {
      v16 = &disableFastFindMy;
    }

    v13 = [MEMORY[0x277CBEB28] dataWithBytes:v16 length:6];
    v17 = malloc_type_malloc(0xAuLL, 0x7E827ABDuLL);
    Bytes = CCRandomGenerateBytes(v17, 0xAuLL);
    if (Bytes)
    {
      v19 = Bytes;
      v20 = _TVRCBLEDiscoveryLog(Bytes);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [TVRCSiriRemoteConnectionManager _sendEnableMessage:v19 forRemote:v20];
      }
    }

    else
    {
      v20 = [MEMORY[0x277CBEA90] dataWithBytes:v17 length:10];
      free(v17);
      [v13 appendData:v20];
      peripheral3 = [remoteCopy peripheral];
      findMyCharacteristic = [remoteCopy findMyCharacteristic];
      [peripheral3 writeValue:v13 forCharacteristic:findMyCharacteristic type:1];

      if (messageCopy)
      {
        [(TVRCSiriRemoteConnectionManager *)self _updateFindingSessionState:1];
      }
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [TVRCSiriRemoteConnectionManager _sendEnableMessage:remoteCopy forRemote:v13];
  }
}

- (void)_removePeripheral:(id)peripheral
{
  v15 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  v5 = _TVRCBLEDiscoveryLog(peripheralCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = peripheralCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Remove peripheral: %@", &v13, 0xCu);
  }

  discoveredPeripherals = [(TVRCSiriRemoteConnectionManager *)self discoveredPeripherals];
  v7 = [discoveredPeripherals containsObject:peripheralCopy];

  if (v7)
  {
    v9 = _TVRCBLEDiscoveryLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = peripheralCopy;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Removing tracked peripheral: %@", &v13, 0xCu);
    }

    discoveredPeripherals2 = [(TVRCSiriRemoteConnectionManager *)self discoveredPeripherals];
    [discoveredPeripherals2 removeObject:peripheralCopy];

    connectedSiriRemotes = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
    name = [peripheralCopy name];
    [connectedSiriRemotes removeObjectForKey:name];
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  v7 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v4 = _TVRCBLEDiscoveryLog(stateCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    state = [stateCopy state];
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "centralManagerDidUpdateState :%ld", &v5, 0xCu);
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v10 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  v7 = _TVRCBLEDiscoveryLog(peripheralCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = peripheralCopy;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Did discover peripheral: %@", &v8, 0xCu);
  }
}

- (void)_startCBScanIfNeeded
{
  centralManager = [(TVRCSiriRemoteConnectionManager *)self centralManager];
  isScanning = [centralManager isScanning];

  if ((isScanning & 1) == 0)
  {
    v6 = _TVRCBLEDiscoveryLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Started Scanning for Siri Remotes...", v8, 2u);
    }

    centralManager2 = [(TVRCSiriRemoteConnectionManager *)self centralManager];
    [centralManager2 scanForPeripheralsWithServices:0 options:0];
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  v13 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  v5 = _TVRCBLEDiscoveryLog(peripheralCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = peripheralCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully connected to Remote: %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBE0A0] UUIDWithString:@"F5873412-D314-B885-A5AA-EFA546123981"];
  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [peripheralCopy discoverServices:v7];

  v9 = _TVRCBLEDiscoveryLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = peripheralCopy;
    _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Discovering find my service for peripheral: %@", buf, 0xCu);
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  v11 = errorCopy;
  if (!errorCopy)
  {
    v14 = _TVRCBLEDiscoveryLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = peripheralCopy;
      _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Disconnected peripheral: %@", &v16, 0xCu);
    }

    goto LABEL_10;
  }

  code = [errorCopy code];
  v13 = _TVRCBLEDiscoveryLog(code);
  v14 = v13;
  if (code != 7)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [TVRCSiriRemoteConnectionManager centralManager:didDisconnectPeripheral:error:];
    }

LABEL_10:
    v15 = 5;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = peripheralCopy;
    _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Remote button was pressed: %@", &v16, 0xCu);
  }

  v15 = 6;
LABEL_11:

  [(TVRCSiriRemoteConnectionManager *)self _updateFindingSessionState:v15];
  [(TVRCSiriRemoteConnectionManager *)self _removePeripheral:peripheralCopy];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v32 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  servicesCopy = services;
  v8 = _TVRCBLEDiscoveryLog(servicesCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    services = [peripheralCopy services];
    *buf = 138412290;
    v31 = services;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Discovered services %@", buf, 0xCu);
  }

  if (servicesCopy)
  {
    v11 = _TVRCBLEDiscoveryLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TVRCSiriRemoteConnectionManager peripheral:didDiscoverServices:];
    }

LABEL_6:

    [(TVRCSiriRemoteConnectionManager *)self _updateFindingSessionState:3];
    goto LABEL_16;
  }

  services2 = [peripheralCopy services];
  v13 = [services2 count];

  if (!v13)
  {
    v11 = _TVRCBLEDiscoveryLog(v14);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TVRCSiriRemoteConnectionManager peripheral:didDiscoverServices:];
    }

    goto LABEL_6;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = peripheralCopy;
  obj = [peripheralCopy services];
  v16 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        v21 = [MEMORY[0x277CBE0A0] UUIDWithString:@"F5873413-D314-B885-A5AA-EFA546123982"];
        v28 = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
        [v15 discoverCharacteristics:v22 forService:v20];
      }

      v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v17);
  }

  peripheralCopy = v15;
LABEL_16:
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  errorCopy = error;
  v10 = errorCopy;
  if (errorCopy)
  {
    v11 = _TVRCBLEDiscoveryLog(errorCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TVRCSiriRemoteConnectionManager peripheral:didDiscoverCharacteristicsForService:error:];
    }

    [(TVRCSiriRemoteConnectionManager *)self _updateFindingSessionState:3];
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [service characteristics];
    v12 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          uUID = [v16 UUID];
          v18 = [MEMORY[0x277CBE0A0] UUIDWithString:@"F5873413-D314-B885-A5AA-EFA546123982"];
          v19 = [uUID isEqual:v18];

          if (v19)
          {
            v21 = _TVRCBLEDiscoveryLog(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v39 = peripheralCopy;
              _os_log_impl(&dword_26CF7F000, v21, OS_LOG_TYPE_DEFAULT, "Found Siri Remote with find my characteristic: %@", buf, 0xCu);
            }

            name = [peripheralCopy name];

            if (!name)
            {
              v32 = _TVRCBLEDiscoveryLog(v23);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
              {
                [TVRCSiriRemoteConnectionManager peripheral:v32 didDiscoverCharacteristicsForService:? error:?];
              }

              [(TVRCSiriRemoteConnectionManager *)self _updateFindingSessionState:3];
              goto LABEL_23;
            }

            v24 = objc_alloc_init(TVRCSiriRemote);
            [(TVRCSiriRemote *)v24 setPeripheral:peripheralCopy];
            [(TVRCSiriRemote *)v24 setFindMyCharacteristic:v16];
            connectedSiriRemotes = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
            name2 = [peripheralCopy name];
            [connectedSiriRemotes setObject:v24 forKeyedSubscript:name2];

            didConnectHandlerBlockMap = [(TVRCSiriRemoteConnectionManager *)self didConnectHandlerBlockMap];
            identifier = [peripheralCopy identifier];
            v29 = [didConnectHandlerBlockMap objectForKeyedSubscript:identifier];

            if (v29)
            {
              (v29)[2](v29, v24);
              didConnectHandlerBlockMap2 = [(TVRCSiriRemoteConnectionManager *)self didConnectHandlerBlockMap];
              identifier2 = [peripheralCopy identifier];
              [didConnectHandlerBlockMap2 setObject:0 forKeyedSubscript:identifier2];
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    v10 = 0;
  }
}

- (void)_sendEnableMessage:(int)a1 forRemote:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Failed to generate random bytes Error: %d", v2, 8u);
}

- (void)_sendEnableMessage:(void *)a1 forRemote:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 peripheral];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Attemping to send message to remote that is not connected: %@", v4, 0xCu);
}

@end