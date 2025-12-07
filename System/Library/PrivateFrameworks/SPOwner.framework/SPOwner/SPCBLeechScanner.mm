@interface SPCBLeechScanner
+ (id)remoteInterface;
- (BOOL)containsOnlyNSSecureCodable:(id)codable;
- (SPCBLeechScanner)init;
- (SPCBPeripheralManagementXPCProtocol)proxy;
- (id)fixupDictionary:(id)dictionary;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManagerDidUpdateState:(id)state;
- (void)handleStateChange:(unint64_t)change;
- (void)interruptionHandler:(id)handler;
- (void)invalidationHandler:(id)handler;
- (void)startScanning;
- (void)stopScanning;
@end

@implementation SPCBLeechScanner

- (SPCBLeechScanner)init
{
  v29.receiver = self;
  v29.super_class = SPCBLeechScanner;
  v2 = [(SPCBLeechScanner *)&v29 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SPOwner.SPCBLeechScanner", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = [objc_alloc(MEMORY[0x277D07B78]) initWithQueue:v2->_serialQueue];
    queueSynchronizer = v2->_queueSynchronizer;
    v2->_queueSynchronizer = v6;

    v8 = v2->_serialQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __24__SPCBLeechScanner_init__block_invoke;
    handler[3] = &unk_279B59498;
    v9 = v2;
    v28 = v9;
    v10 = notify_register_dispatch("com.apple.SPOwner.SPCBLeechScanner", &v2->_notifyToken, v8, handler);
    if (v10)
    {
      v11 = LogCategory_CBPeripheralManagement(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SPCBLeechScanner init];
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __24__SPCBLeechScanner_init__block_invoke_2;
    aBlock[3] = &unk_279B58C28;
    v12 = v9;
    v26 = v12;
    v13 = _Block_copy(aBlock);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __24__SPCBLeechScanner_init__block_invoke_2;
    v23[3] = &unk_279B58C28;
    v14 = v12;
    v24 = v14;
    v15 = _Block_copy(v23);
    v16 = objc_alloc(MEMORY[0x277D07BA0]);
    v17 = +[SPCBLeechScanner remoteInterface];
    v18 = [v16 initWithMachServiceName:@"com.apple.searchparty.managedperipheral" options:0 remoteObjectInterface:v17 interruptionHandler:v13 invalidationHandler:v15];
    serviceDescription = v14->_serviceDescription;
    v14->_serviceDescription = v18;

    v20 = [objc_alloc(MEMORY[0x277CBDFF8]) initWithDelegate:v14 queue:v2->_serialQueue];
    centralManager = v14->_centralManager;
    v14->_centralManager = v20;
  }

  return v2;
}

uint64_t __24__SPCBLeechScanner_init__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  return [*(a1 + 32) handleStateChange:state64];
}

uint64_t __24__SPCBLeechScanner_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  return [*(a1 + 32) interruptionHandler:a2];
}

- (void)handleStateChange:(unint64_t)change
{
  *&v19[5] = *MEMORY[0x277D85DE8];
  v5 = LogCategory_CBPeripheralManagement(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    *v19 = change;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: handleStateChange: %llu", &v18, 0xCu);
  }

  centralManager = [(SPCBLeechScanner *)self centralManager];
  state = [centralManager state];

  v8 = LogCategory_CBPeripheralManagement([(SPCBLeechScanner *)self setEnabled:change != 0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    enabled = [(SPCBLeechScanner *)self enabled];
    isScanning = [(SPCBLeechScanner *)self isScanning];
    v18 = 67109376;
    v19[0] = enabled;
    LOWORD(v19[1]) = 1024;
    *(&v19[1] + 2) = isScanning;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: enabled: %u isScanning: %u", &v18, 0xEu);
  }

  if (![(SPCBLeechScanner *)self enabled])
  {
    isScanning2 = [(SPCBLeechScanner *)self isScanning];
    if ((isScanning2 & 1) == 0 && state != 5)
    {
      v12 = LogCategory_CBPeripheralManagement(isScanning2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        v13 = "SPCBLeechScanner: Do nothing -- scanner is already stopped (000)";
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

  if (![(SPCBLeechScanner *)self enabled])
  {
    isScanning3 = [(SPCBLeechScanner *)self isScanning];
    if ((isScanning3 & 1) == 0 && state == 5)
    {
      v12 = LogCategory_CBPeripheralManagement(isScanning3);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        v13 = "SPCBLeechScanner: Do nothing -- scanner is already stopped (001)";
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

  if (![(SPCBLeechScanner *)self enabled]&& [(SPCBLeechScanner *)self isScanning]&& state != 5 || ![(SPCBLeechScanner *)self enabled]&& [(SPCBLeechScanner *)self isScanning]&& state == 5)
  {
    goto LABEL_37;
  }

  if ([(SPCBLeechScanner *)self enabled])
  {
    isScanning4 = [(SPCBLeechScanner *)self isScanning];
    if ((isScanning4 & 1) == 0 && state != 5)
    {
      v12 = LogCategory_CBPeripheralManagement(isScanning4);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        v13 = "SPCBLeechScanner: Do nothing -- scanner is already stopped (100)";
LABEL_22:
        _os_log_impl(&dword_2643D0000, v12, OS_LOG_TYPE_DEFAULT, v13, &v18, 2u);
      }

LABEL_23:

      return;
    }
  }

  if ([(SPCBLeechScanner *)self enabled]&& ![(SPCBLeechScanner *)self isScanning]&& state == 5)
  {
    [(SPCBLeechScanner *)self startScanning];
    return;
  }

  if ([(SPCBLeechScanner *)self enabled]&& [(SPCBLeechScanner *)self isScanning]&& state != 5)
  {
LABEL_37:
    [(SPCBLeechScanner *)self stopScanning];
  }

  else
  {
    enabled2 = [(SPCBLeechScanner *)self enabled];
    if (enabled2)
    {
      enabled2 = [(SPCBLeechScanner *)self isScanning];
      if (enabled2)
      {
        if (state == 5)
        {
          v12 = LogCategory_CBPeripheralManagement(enabled2);
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          LOWORD(v18) = 0;
          v13 = "SPCBLeechScanner: Do nothing -- scanner is already running (111)";
          goto LABEL_22;
        }
      }
    }

    v17 = LogCategory_CBPeripheralManagement(enabled2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(SPCBLeechScanner *)self handleStateChange:change];
    }
  }
}

- (void)startScanning
{
  v10[1] = *MEMORY[0x277D85DE8];
  serialQueue = [(SPCBLeechScanner *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v5 = LogCategory_CBPeripheralManagement(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: startScanning", v8, 2u);
  }

  v9 = *MEMORY[0x277CBDE68];
  v10[0] = &unk_2875F2B38;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  centralManager = [(SPCBLeechScanner *)self centralManager];
  [centralManager scanForPeripheralsWithServices:0 options:v6 completion:&__block_literal_global_9];

  [(SPCBLeechScanner *)self setIsScanning:1];
}

void __33__SPCBLeechScanner_startScanning__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = LogCategory_CBPeripheralManagement(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __33__SPCBLeechScanner_startScanning__block_invoke_cold_1();
    }
  }
}

- (void)stopScanning
{
  serialQueue = [(SPCBLeechScanner *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v5 = LogCategory_CBPeripheralManagement(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: stopScanning", v7, 2u);
  }

  centralManager = [(SPCBLeechScanner *)self centralManager];
  [centralManager stopScan];

  [(SPCBLeechScanner *)self setIsScanning:0];
}

- (void)interruptionHandler:(id)handler
{
  v7 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v4 = LogCategory_CBPeripheralManagement(handlerCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: interruptionHandler %{public}@", &v5, 0xCu);
  }
}

- (void)invalidationHandler:(id)handler
{
  v8 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = LogCategory_CBPeripheralManagement(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: invalidationHandler %{public}@", &v6, 0xCu);
  }

  [(SPCBLeechScanner *)self setSession:0];
}

- (SPCBPeripheralManagementXPCProtocol)proxy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  queueSynchronizer = [(SPCBLeechScanner *)self queueSynchronizer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__SPCBLeechScanner_proxy__block_invoke;
  v6[3] = &unk_279B594E0;
  v6[4] = self;
  v6[5] = &v7;
  [queueSynchronizer conditionalSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __25__SPCBLeechScanner_proxy__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];

  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x277D07BA8]);
    v4 = [*(a1 + 32) serviceDescription];
    v5 = [v3 initWithServiceDescription:v4];
    [*(a1 + 32) setSession:v5];

    v7 = LogCategory_CBPeripheralManagement(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) serviceDescription];
      v9 = [v8 machService];
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: Establishing XPC connection to %{public}@", &v15, 0xCu);
    }

    v10 = [*(a1 + 32) session];
    [v10 resume];
  }

  v11 = [*(a1 + 32) session];
  v12 = [v11 proxy];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_4 != -1)
  {
    +[SPCBLeechScanner remoteInterface];
  }

  v3 = remoteInterface_interface_3;

  return v3;
}

uint64_t __35__SPCBLeechScanner_remoteInterface__block_invoke()
{
  remoteInterface_interface_3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606C10];

  return MEMORY[0x2821F96F8]();
}

- (void)centralManagerDidUpdateState:(id)state
{
  [state state];
  enabled = [(SPCBLeechScanner *)self enabled];

  [(SPCBLeechScanner *)self handleStateChange:enabled];
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  iCopy = i;
  serialQueue = [(SPCBLeechScanner *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v12 = LogCategory_CBPeripheralManagement(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = dataCopy;
    v18 = 2114;
    v19 = iCopy;
    _os_log_impl(&dword_2643D0000, v12, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: didDiscoverPeripheral: %{public}@  RSSI: %{public}@", &v16, 0x16u);
  }

  v13 = [(SPCBLeechScanner *)self fixupDictionary:dataCopy];
  v14 = [(SPCBLeechScanner *)self containsOnlyNSSecureCodable:v13];
  if (v14)
  {
    proxy = [(SPCBLeechScanner *)self proxy];
    -[NSObject leechScannerDiscoveredAdvertisementData:rssi:completion:](proxy, "leechScannerDiscoveredAdvertisementData:rssi:completion:", v13, [iCopy intValue], &__block_literal_global_71_0);
  }

  else
  {
    proxy = LogCategory_CBPeripheralManagement(v14);
    if (os_log_type_enabled(proxy, OS_LOG_TYPE_ERROR))
    {
      [SPCBLeechScanner centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
    }
  }
}

void __80__SPCBLeechScanner_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = LogCategory_CBPeripheralManagement(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80__SPCBLeechScanner_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_cold_1();
    }
  }
}

- (id)fixupDictionary:(id)dictionary
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy mutableCopy];
  v5 = *MEMORY[0x277CBDD28];
  v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CBDD28]];
  if (v6)
  {
    v17 = v4;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [v6 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v6 objectForKeyedSubscript:v13];
          data = [v13 data];
          [v7 setObject:v14 forKeyedSubscript:data];
        }

        v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v4 = v17;
    [v17 setObject:v7 forKeyedSubscript:v5];
  }

  return v4;
}

- (BOOL)containsOnlyNSSecureCodable:(id)codable
{
  v42 = *MEMORY[0x277D85DE8];
  codableCopy = codable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = codableCopy;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    allKeys = [v5 allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          v12 = [v11 conformsToProtocol:&unk_2875F3818];
          if ((v12 & 1) == 0)
          {
            v24 = LogCategory_CBPeripheralManagement(v12);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              [SPCBLeechScanner containsOnlyNSSecureCodable:v11];
            }

LABEL_38:
            v15 = 0;
            goto LABEL_39;
          }

          v13 = [v5 objectForKey:v11];
          v14 = [(SPCBLeechScanner *)self containsOnlyNSSecureCodable:v13];

          if (!v14)
          {
            goto LABEL_38;
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v35 objects:v41 count:16];
        v15 = 1;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 1;
    }

LABEL_39:

    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = codableCopy;
    v16 = [v5 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
LABEL_15:
      v19 = 0;
      while (1)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v5);
        }

        if (![(SPCBLeechScanner *)self containsOnlyNSSecureCodable:*(*(&v31 + 1) + 8 * v19)])
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v5 countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v17)
          {
            goto LABEL_15;
          }

          goto LABEL_31;
        }
      }

LABEL_32:
      v15 = 0;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = codableCopy;
    v20 = [v5 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
LABEL_25:
      v23 = 0;
      while (1)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v5);
        }

        if (![(SPCBLeechScanner *)self containsOnlyNSSecureCodable:*(*(&v27 + 1) + 8 * v23), v27])
        {
          goto LABEL_32;
        }

        if (v21 == ++v23)
        {
          v21 = [v5 countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (v21)
          {
            goto LABEL_25;
          }

          break;
        }
      }
    }

LABEL_31:
    v15 = 1;
LABEL_33:

    goto LABEL_40;
  }

  v26 = [codableCopy conformsToProtocol:&unk_2875F3818];
  if (v26)
  {
    v15 = 1;
    goto LABEL_41;
  }

  v5 = LogCategory_CBPeripheralManagement(v26);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SPCBLeechScanner containsOnlyNSSecureCodable:codableCopy];
  }

  v15 = 0;
LABEL_40:

LABEL_41:
  return v15;
}

- (void)handleStateChange:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 centralManager];
  *v10 = 134218240;
  *&v10[4] = a2;
  *&v10[12] = 2048;
  *&v10[14] = [v3 state];
  OUTLINED_FUNCTION_0_4(&dword_2643D0000, v4, v5, "SPCBLeechScanner: Unexpected state: enabled: %llu centralState: %lu", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

- (void)containsOnlyNSSecureCodable:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1_3(v1);
  OUTLINED_FUNCTION_0_4(&dword_2643D0000, v3, v4, "SPCBLeechScanner: not NSSecureCodable: %@: %@!", v5, v6, v7, v8);
}

- (void)containsOnlyNSSecureCodable:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1_3(v1);
  OUTLINED_FUNCTION_0_4(&dword_2643D0000, v3, v4, "SPCBLeechScanner: NSDictionary key not NSSecureCodable: %@: %@!", v5, v6, v7, v8);
}

@end