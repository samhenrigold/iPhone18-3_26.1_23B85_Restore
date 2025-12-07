@interface SPOfflineAdvertisingKeysDelegate
- (SPOfflineAdvertisingKeysDelegate)initWithBeaconManager:(id)manager;
- (id)proxy;
- (id)remoteInterface;
- (id)syncProxy;
- (int64_t)transformReason:(int64_t)reason;
- (void)enterLowPowerMode;
- (void)peripheralManager:(id)manager offlineAdvPayloadRequestedWithReason:(int64_t)reason;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)processKeyResponse:(id)response;
@end

@implementation SPOfflineAdvertisingKeysDelegate

- (SPOfflineAdvertisingKeysDelegate)initWithBeaconManager:(id)manager
{
  v26[2] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v24.receiver = self;
  v24.super_class = SPOfflineAdvertisingKeysDelegate;
  v6 = [(SPOfflineAdvertisingKeysDelegate *)&v24 init];
  v7 = v6;
  if (v6)
  {
    v8 = LogCategory_OfflineAdvertising(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOfflineAdvertisingKeysDelegate: SPOfflineAdvertisingKeysDelegate created.", v23, 2u);
    }

    objc_storeStrong(&v7->_beaconManager, manager);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("SPOfflineAdvertisingKeysDelegate", v9);
    queue = v7->_queue;
    v7->_queue = v10;

    v12 = objc_alloc(MEMORY[0x277D07BA0]);
    remoteInterface = [(SPOfflineAdvertisingKeysDelegate *)v7 remoteInterface];
    v14 = [v12 initWithMachServiceName:@"com.apple.icloud.searchpartyd.beaconmanager" options:0 remoteObjectInterface:remoteInterface interruptionHandler:0 invalidationHandler:0];
    serviceDescription = v7->_serviceDescription;
    v7->_serviceDescription = v14;

    v16 = objc_alloc(MEMORY[0x277CBE068]);
    v17 = v7->_queue;
    v18 = *MEMORY[0x277CBDF38];
    v25[0] = *MEMORY[0x277CBDF08];
    v25[1] = v18;
    v26[0] = MEMORY[0x277CBEC38];
    v26[1] = MEMORY[0x277CBEC38];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v20 = [v16 initWithDelegate:v7 queue:v17 options:v19];
    peripheralManager = v7->_peripheralManager;
    v7->_peripheralManager = v20;
  }

  return v7;
}

- (id)remoteInterface
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606B50];
  v3 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:3];
  v5 = [v3 setWithArray:{v4, v7, v8}];
  [v2 setClasses:v5 forSelector:sel_offlineAdvertisingKeysForReason_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (id)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  queue = [(SPOfflineAdvertisingKeysDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(SPOfflineAdvertisingKeysDelegate *)self session];

  if (!session)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    serviceDescription = [(SPOfflineAdvertisingKeysDelegate *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:serviceDescription];
    [(SPOfflineAdvertisingKeysDelegate *)self setSession:v7];

    v9 = LogCategory_OfflineAdvertising(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      serviceDescription2 = [(SPOfflineAdvertisingKeysDelegate *)self serviceDescription];
      machService = [serviceDescription2 machService];
      v16 = 138412290;
      v17 = machService;
      _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "SPOfflineAdvertisingKeysDelegate: Establishing XPC connection to %@", &v16, 0xCu);
    }

    session2 = [(SPOfflineAdvertisingKeysDelegate *)self session];
    [session2 resume];
  }

  session3 = [(SPOfflineAdvertisingKeysDelegate *)self session];
  proxy = [session3 proxy];

  return proxy;
}

- (id)syncProxy
{
  v18 = *MEMORY[0x277D85DE8];
  queue = [(SPOfflineAdvertisingKeysDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(SPOfflineAdvertisingKeysDelegate *)self session];

  if (!session)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    serviceDescription = [(SPOfflineAdvertisingKeysDelegate *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:serviceDescription];
    [(SPOfflineAdvertisingKeysDelegate *)self setSession:v7];

    v9 = LogCategory_OfflineAdvertising(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      serviceDescription2 = [(SPOfflineAdvertisingKeysDelegate *)self serviceDescription];
      machService = [serviceDescription2 machService];
      v16 = 138412290;
      v17 = machService;
      _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "SPOfflineAdvertisingKeysDelegate: Establishing XPC connection to %@", &v16, 0xCu);
    }

    session2 = [(SPOfflineAdvertisingKeysDelegate *)self session];
    [session2 resume];
  }

  session3 = [(SPOfflineAdvertisingKeysDelegate *)self session];
  v14 = [session3 syncProxyWithErrorHandler:&__block_literal_global_172];

  return v14;
}

void __45__SPOfflineAdvertisingKeysDelegate_syncProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LogCategory_OfflineAdvertising(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__SPOfflineAdvertisingKeysDelegate_syncProxy__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  inLowPowerMode = [(SPOfflineAdvertisingKeysDelegate *)self inLowPowerMode];
  if (inLowPowerMode)
  {
    v6 = LogCategory_OfflineAdvertising(inLowPowerMode);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = 2;
      _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Sending bluetoothPowerStateUpdated(SPBluetoothPowerStateLowPowerMode)", buf, 2u);
    }

    else
    {
      v7 = 2;
    }

LABEL_13:

    userAgentSyncProxy = [(SPOfflineAdvertisingKeysDelegate *)self userAgentSyncProxy];
    [userAgentSyncProxy bluetoothPowerStateUpdated:v7];

    goto LABEL_14;
  }

  state = [stateCopy state];
  if (state == 5)
  {
    v6 = LogCategory_OfflineAdvertising(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Sending bluetoothPowerStateUpdated(SPBluetoothPowerStateOn)", v10, 2u);
    }

    v7 = 1;
    goto LABEL_13;
  }

  if (state == 4)
  {
    v6 = LogCategory_OfflineAdvertising(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Sending bluetoothPowerStateUpdated(SPBluetoothPowerStateOff)", v11, 2u);
    }

    v7 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

- (void)enterLowPowerMode
{
  v3 = LogCategory_OfflineAdvertising(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPOfflineAdvertisingKeysDelegate: Entering low power mode", buf, 2u);
  }

  v4 = LogCategory_OfflineAdvertising([(SPOfflineAdvertisingKeysDelegate *)self setInLowPowerMode:1]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "Sending bluetoothPowerStateUpdated(SPBluetoothPowerStateLowPowerMode)", v6, 2u);
  }

  userAgentSyncProxy = [(SPOfflineAdvertisingKeysDelegate *)self userAgentSyncProxy];
  [userAgentSyncProxy bluetoothPowerStateUpdated:2];
}

- (int64_t)transformReason:(int64_t)reason
{
  reasonCopy = reason;
  if (reason >= 3)
  {
    v4 = LogCategory_OfflineAdvertising(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SPOfflineAdvertisingKeysDelegate *)reasonCopy transformReason:v4, v5, v6, v7, v8, v9, v10];
    }

    return 0;
  }

  return reasonCopy;
}

- (void)processKeyResponse:(id)response
{
  v43 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  has_internal_content = os_variant_has_internal_content();
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults BOOLForKey:@"__qa__log_offline_keys"];

  v9 = LogCategory_OfflineAdvertising(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = responseCopy;
    _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "SPOfflineAdvertisingKeysDelegate: processKeyResponse: %@", buf, 0xCu);
  }

  if ((has_internal_content & v7) == 1)
  {
    selfCopy = self;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = [responseCopy objectAtIndexedSubscript:0];
    keys = [v10 keys];

    v12 = [keys countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        v15 = 0;
        do
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(keys);
          }

          v16 = *(*(&v35 + 1) + 8 * v15);
          v17 = LogCategory_OfflineAdvertising(v12);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            fm_hexString = [v16 fm_hexString];
            *buf = 138412290;
            v42 = fm_hexString;
            _os_log_impl(&dword_2643D0000, v17, OS_LOG_TYPE_DEFAULT, "OFFLINE_KEYS: First : %@", buf, 0xCu);
          }

          ++v15;
        }

        while (v13 != v15);
        v12 = [keys countByEnumeratingWithState:&v35 objects:v40 count:16];
        v13 = v12;
      }

      while (v12);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = [responseCopy objectAtIndexedSubscript:1];
    keys2 = [v19 keys];

    v21 = [keys2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        v24 = 0;
        do
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(keys2);
          }

          v25 = *(*(&v31 + 1) + 8 * v24);
          v26 = LogCategory_OfflineAdvertising(v21);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            fm_hexString2 = [v25 fm_hexString];
            *buf = 138412290;
            v42 = fm_hexString2;
            _os_log_impl(&dword_2643D0000, v26, OS_LOG_TYPE_DEFAULT, "OFFLINE_KEYS: Second: %@", buf, 0xCu);
          }

          ++v24;
        }

        while (v22 != v24);
        v21 = [keys2 countByEnumeratingWithState:&v31 objects:v39 count:16];
        v22 = v21;
      }

      while (v21);
    }

    self = selfCopy;
  }

  v28 = [responseCopy fm_map:&__block_literal_global_180];
  peripheralManager = [(SPOfflineAdvertisingKeysDelegate *)self peripheralManager];
  [peripheralManager setOfflineAdvertisingParamsAndData:v28];
}

- (void)peripheralManager:(id)manager offlineAdvPayloadRequestedWithReason:(int64_t)reason
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __91__SPOfflineAdvertisingKeysDelegate_peripheralManager_offlineAdvPayloadRequestedWithReason___block_invoke;
  v4[3] = &unk_279B59000;
  v4[4] = self;
  v4[5] = reason;
  _os_activity_initiate(&dword_2643D0000, "offlineAdvertisingKeysForReason", OS_ACTIVITY_FLAG_DEFAULT, v4);
}

void __91__SPOfflineAdvertisingKeysDelegate_peripheralManager_offlineAdvPayloadRequestedWithReason___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_OfflineAdvertising(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPOfflineAdvertisingKeysDelegate: offlineAdvPayloadRequestedWithReason: %ld", &v8, 0xCu);
  }

  [*(a1 + 32) enterLowPowerMode];
  v4 = [*(a1 + 32) beaconManager];
  v5 = [*(a1 + 32) transformReason:*(a1 + 40)];
  v6 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v7 = [v4 generateOfflineAdvertisingKeysForReason:v5 now:v6];

  [*(a1 + 32) processKeyResponse:v7];
}

void __45__SPOfflineAdvertisingKeysDelegate_syncProxy__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2643D0000, a2, a3, "sync proxy error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)transformReason:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2643D0000, a2, a3, "SPOfflineAdvertisingKeysDelegate: Unexpected CBPeripheralManagerShutdownReason value: %ld", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end