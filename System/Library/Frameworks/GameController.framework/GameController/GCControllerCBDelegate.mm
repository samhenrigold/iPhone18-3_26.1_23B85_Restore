@interface GCControllerCBDelegate
- (GCControllerCBDelegate)init;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didRetrieveConnectedPeripherals:(id)peripherals;
- (void)centralManager:(id)manager didRetrievePeripherals:(id)peripherals;
- (void)centralManagerDidUpdateState:(id)state;
- (void)fireCompletionHandler;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverIncludedServicesForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error;
- (void)startScanWithTimeout:(double)timeout;
- (void)stopScan;
@end

@implementation GCControllerCBDelegate

- (GCControllerCBDelegate)init
{
  v8.receiver = self;
  v8.super_class = GCControllerCBDelegate;
  v2 = [(GCControllerCBDelegate *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    foundPeripherals = v2->_foundPeripherals;
    v2->_foundPeripherals = v3;

    v5 = objc_opt_new();
    connectedPeripherals = v2->_connectedPeripherals;
    v2->_connectedPeripherals = v5;
  }

  return v2;
}

- (void)fireCompletionHandler
{
  v3 = _Block_copy(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__GCControllerCBDelegate_fireCompletionHandler__block_invoke;
    block[3] = &unk_1E8419198;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)stopScan
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__GCControllerCBDelegate_stopScan__block_invoke;
  block[3] = &unk_1E8418C28;
  block[4] = self;
  dispatch_async(s_cbDelegateQueue, block);
}

uint64_t __34__GCControllerCBDelegate_stopScan__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) stopScan];
  v2 = *(a1 + 32);

  return [v2 fireCompletionHandler];
}

- (void)startScanWithTimeout:(double)timeout
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DEC8];
  v6 = [MEMORY[0x1E695D2A0] UUIDWithString:@"1812"];
  v7 = [v5 arrayWithObject:v6];

  v8 = MEMORY[0x1E695DF20];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v10 = [v8 dictionaryWithObject:v9 forKey:*MEMORY[0x1E695D220]];

  [(CBCentralManager *)self->_centralManager scanForPeripheralsWithServices:v7 options:v10];
  v11 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:v7];
  if ([v11 count])
  {
    v12 = MEMORY[0x1E695DF20];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v14 = [v12 dictionaryWithObject:v13 forKey:*MEMORY[0x1E695D228]];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          [(NSMutableArray *)self->_foundPeripherals addObject:v20];
          [(CBCentralManager *)self->_centralManager connectPeripheral:v20 options:v14];
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }
  }

  if (timeout > 0.0)
  {
    v21 = dispatch_time(0, (timeout * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__GCControllerCBDelegate_startScanWithTimeout___block_invoke;
    block[3] = &unk_1E8418C28;
    block[4] = self;
    dispatch_after(v21, s_cbDelegateQueue, block);
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  if ([stateCopy state] == 2)
  {
    isInternalBuild = gc_isInternalBuild(2, v5);
    if (isInternalBuild)
    {
      [GCControllerCBDelegate centralManagerDidUpdateState:?];
    }

    v7 = s_cbDelegateQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__GCControllerCBDelegate_centralManagerDidUpdateState___block_invoke;
    v15[3] = &unk_1E8418C28;
    v15[4] = self;
    v8 = v15;
  }

  else if ([stateCopy state] == 3)
  {
    v10 = gc_isInternalBuild(3, v9);
    if (v10)
    {
      [GCControllerCBDelegate centralManagerDidUpdateState:v10];
    }

    v7 = s_cbDelegateQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__GCControllerCBDelegate_centralManagerDidUpdateState___block_invoke_105;
    v14[3] = &unk_1E8418C28;
    v14[4] = self;
    v8 = v14;
  }

  else
  {
    state = [stateCopy state];
    v7 = s_cbDelegateQueue;
    if (state > 4)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __55__GCControllerCBDelegate_centralManagerDidUpdateState___block_invoke_3;
      v12[3] = &unk_1E8418C28;
      v12[4] = self;
      v8 = v12;
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __55__GCControllerCBDelegate_centralManagerDidUpdateState___block_invoke_2;
      v13[3] = &unk_1E8418C28;
      v13[4] = self;
      v8 = v13;
    }
  }

  dispatch_async(v7, v8);
}

- (void)centralManager:(id)manager didRetrievePeripherals:(id)peripherals
{
  peripheralsCopy = peripherals;
  if (gc_isInternalBuild(peripheralsCopy, v5))
  {
    [GCControllerCBDelegate centralManager:peripheralsCopy didRetrievePeripherals:?];
  }
}

- (void)centralManager:(id)manager didRetrieveConnectedPeripherals:(id)peripherals
{
  peripheralsCopy = peripherals;
  if (gc_isInternalBuild(peripheralsCopy, v5))
  {
    [GCControllerCBDelegate centralManager:peripheralsCopy didRetrieveConnectedPeripherals:?];
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  managerCopy = manager;
  if (gc_isInternalBuild(managerCopy, v14))
  {
    [GCControllerCBDelegate centralManager:peripheralCopy didDiscoverPeripheral:? advertisementData:? RSSI:?];
  }

  [(NSMutableArray *)self->_foundPeripherals addObject:peripheralCopy];
  v15 = MEMORY[0x1E695DF20];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v17 = [v15 dictionaryWithObject:v16 forKey:*MEMORY[0x1E695D228]];

  [managerCopy connectPeripheral:peripheralCopy options:v17];
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  v12[4] = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  if (gc_isInternalBuild(peripheralCopy, v6))
  {
    [GCControllerCBDelegate centralManager:peripheralCopy didConnectPeripheral:?];
  }

  [(NSMutableArray *)self->_connectedPeripherals addObject:peripheralCopy];
  [peripheralCopy setDelegate:self];
  v7 = [MEMORY[0x1E695D2A0] UUIDWithString:@"1812"];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180A"];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180F"];
  v12[2] = v9;
  v10 = [MEMORY[0x1E695D2A0] UUIDWithString:@"7d74f4bd-c74a-4431-862c-cce884371592"];
  v12[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  [peripheralCopy discoverServices:v11];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v17 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  if (gc_isInternalBuild(peripheralCopy, v5))
  {
    [GCControllerCBDelegate peripheral:peripheralCopy didDiscoverServices:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  services = [peripheralCopy services];
  v7 = [services countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(services);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [peripheralCopy discoverIncludedServices:0 forService:v11];
        [peripheralCopy discoverCharacteristics:0 forService:v11];
      }

      v8 = [services countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)peripheral:(id)peripheral didDiscoverIncludedServicesForService:(id)service error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  serviceCopy = service;
  if (gc_isInternalBuild(serviceCopy, v8))
  {
    [GCControllerCBDelegate peripheral:serviceCopy didDiscoverIncludedServicesForService:? error:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  includedServices = [serviceCopy includedServices];
  v10 = [includedServices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(includedServices);
        }

        [peripheralCopy discoverCharacteristics:0 forService:*(*(&v14 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [includedServices countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  v63 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  serviceCopy = service;
  if (gc_isInternalBuild(serviceCopy, v8))
  {
    [GCControllerCBDelegate peripheral:serviceCopy didDiscoverCharacteristicsForService:? error:?];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [serviceCopy characteristics];
  v9 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v53;
    do
    {
      v12 = 0;
      do
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v52 + 1) + 8 * v12);
        uUID = [serviceCopy UUID];
        v15 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180F"];
        v16 = [uUID isEqual:v15];

        if (v16)
        {
          isInternalBuild = gc_isInternalBuild(v17, v18);
          if (isInternalBuild)
          {
            v20 = getGCLogger(isInternalBuild);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              uUID2 = [v13 UUID];
              data = [uUID2 data];
              uUID3 = [v13 UUID];
              *buf = 138412546;
              v57 = data;
              v58 = 2112;
              v59 = uUID3;
              v23 = v20;
              v24 = "=battery=: (%@) %@ ";
              goto LABEL_28;
            }

LABEL_29:
          }

LABEL_18:
          [peripheralCopy readValueForCharacteristic:v13];
          goto LABEL_19;
        }

        uUID4 = [serviceCopy UUID];
        v26 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180A"];
        v27 = [uUID4 isEqual:v26];

        if (v27)
        {
          v30 = gc_isInternalBuild(v28, v29);
          if (!v30)
          {
            goto LABEL_18;
          }

          v20 = getGCLogger(v30);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          uUID2 = [v13 UUID];
          data = [uUID2 data];
          uUID3 = [v13 UUID];
          *buf = 138412546;
          v57 = data;
          v58 = 2112;
          v59 = uUID3;
          v23 = v20;
          v24 = "=device info=: (%@) %@ ";
LABEL_28:
          _os_log_impl(&dword_1D2CD5000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);

          goto LABEL_29;
        }

        uUID5 = [serviceCopy UUID];
        v32 = [MEMORY[0x1E695D2A0] UUIDWithString:@"1812"];
        v33 = [uUID5 isEqual:v32];

        v36 = gc_isInternalBuild(v34, v35);
        if (v33)
        {
          if (!v36)
          {
            goto LABEL_18;
          }

          v20 = getGCLogger(v36);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          uUID2 = [v13 UUID];
          data = [uUID2 data];
          uUID3 = [v13 UUID];
          *buf = 138412546;
          v57 = data;
          v58 = 2112;
          v59 = uUID3;
          v23 = v20;
          v24 = "=hid=: (%@) %@ ";
          goto LABEL_28;
        }

        if (v36)
        {
          v43 = getGCLogger(v36);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            uUID6 = [v13 UUID];
            data2 = [uUID6 data];
            properties = [v13 properties];
            uUID7 = [v13 UUID];
            *buf = 138412802;
            v57 = data2;
            v58 = 2048;
            v59 = properties;
            v60 = 2112;
            v61 = uUID7;
            _os_log_impl(&dword_1D2CD5000, v43, OS_LOG_TYPE_DEFAULT, "=misc=: (%@:0x%lx) %@ ", buf, 0x20u);
          }
        }

        v38 = gc_isInternalBuild(v36, v37);
        if (v38)
        {
          v39 = getGCLogger(v38);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            value = [v13 value];
            v41 = objc_alloc(MEMORY[0x1E696AEC0]);
            value2 = [v13 value];
            v42 = [v41 initWithData:value2 encoding:4];
            *buf = 138412546;
            v57 = value;
            v58 = 2112;
            v59 = v42;
            _os_log_impl(&dword_1D2CD5000, v39, OS_LOG_TYPE_DEFAULT, "(%@) '%@'", buf, 0x16u);
          }
        }

LABEL_19:
        [peripheralCopy discoverDescriptorsForCharacteristic:v13];
        ++v12;
      }

      while (v10 != v12);
      v46 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
      v10 = v46;
    }

    while (v46);
  }
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  if (gc_isInternalBuild(characteristicCopy, v8))
  {
    [GCControllerCBDelegate peripheral:characteristicCopy didDiscoverDescriptorsForCharacteristic:? error:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  descriptors = [characteristicCopy descriptors];
  v10 = [descriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(descriptors);
        }

        [peripheralCopy readValueForDescriptor:*(*(&v14 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [descriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  if (gc_isInternalBuild(characteristicCopy, v6))
  {
    [GCControllerCBDelegate peripheral:characteristicCopy didUpdateValueForCharacteristic:? error:?];
  }

  uUID = [characteristicCopy UUID];
  v8 = [MEMORY[0x1E695D2A0] UUIDWithString:@"2A19"];
  v9 = [uUID isEqual:v8];

  if (v9)
  {
    value = [characteristicCopy value];
    bytes = [value bytes];
    isInternalBuild = gc_isInternalBuild(bytes, v14);
    if (isInternalBuild)
    {
      [GCControllerCBDelegate peripheral:bytes didUpdateValueForCharacteristic:? error:?];
    }

    if (gc_isInternalBuild(isInternalBuild, v16))
    {
      [GCControllerCBDelegate peripheral:value didUpdateValueForCharacteristic:? error:?];
    }
  }

  else
  {
    if (!gc_isInternalBuild(v10, v11))
    {
      goto LABEL_10;
    }

    [GCControllerCBDelegate peripheral:characteristicCopy didUpdateValueForCharacteristic:&v17 error:?];
    value = v17;
  }

LABEL_10:
}

- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  if (gc_isInternalBuild(descriptorCopy, v6))
  {
    [GCControllerCBDelegate peripheral:descriptorCopy didUpdateValueForDescriptor:? error:?];
  }

  uUID = [descriptorCopy UUID];
  v8 = [MEMORY[0x1E695D2A0] UUIDWithString:@"2908"];
  v9 = [uUID isEqual:v8];

  if (v9)
  {
    value = [descriptorCopy value];
    bytes = [value bytes];
    v14 = [value length];
    if (v14)
    {
      v16 = 0;
      v17 = (bytes + 1);
      do
      {
        isInternalBuild = gc_isInternalBuild(v14, v15);
        if (isInternalBuild)
        {
          v19 = getGCLogger(isInternalBuild);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *v17 - 1;
            v22 = *(v17 - 1);
            characteristic = [descriptorCopy characteristic];
            uUID2 = [characteristic UUID];
            *buf = 67109634;
            *&buf[4] = v22;
            v25 = 1024;
            v26 = v21;
            v27 = 2112;
            v28 = uUID2;
            _os_log_impl(&dword_1D2CD5000, v19, OS_LOG_TYPE_DEFAULT, "Found HID report 0x%02x of type %d on char %@", buf, 0x18u);
          }
        }

        v16 += 2;
        v14 = [value length];
        v17 += 2;
      }

      while (v14 > v16);
    }

    goto LABEL_14;
  }

  if (gc_isInternalBuild(v10, v11))
  {
    [GCControllerCBDelegate peripheral:descriptorCopy didUpdateValueForDescriptor:buf error:?];
    value = *buf;
LABEL_14:
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  if (gc_isInternalBuild(errorCopy, v9))
  {
    [GCControllerCBDelegate centralManager:peripheralCopy didFailToConnectPeripheral:? error:?];
  }

  [(NSMutableArray *)self->_foundPeripherals removeObject:peripheralCopy];
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  if (gc_isInternalBuild(errorCopy, v9))
  {
    [GCControllerCBDelegate centralManager:peripheralCopy didDisconnectPeripheral:? error:?];
  }

  [(NSMutableArray *)self->_connectedPeripherals removeObject:peripheralCopy];
}

- (void)centralManagerDidUpdateState:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)centralManagerDidUpdateState:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)centralManager:(uint64_t)a1 didRetrievePeripherals:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)centralManager:(uint64_t)a1 didRetrieveConnectedPeripherals:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)centralManager:(uint64_t)a1 didDiscoverPeripheral:advertisementData:RSSI:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_1_23();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0x20u);
  }
}

- (void)centralManager:(uint64_t)a1 didConnectPeripheral:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)peripheral:(void *)a1 didDiscoverServices:.cold.1(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v9 = [a1 services];
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

- (void)peripheral:(void *)a1 didDiscoverIncludedServicesForService:error:.cold.1(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v9 = [a1 includedServices];
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

- (void)peripheral:(void *)a1 didDiscoverCharacteristicsForService:error:.cold.1(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [a1 UUID];
    v5 = [v4 data];
    v6 = [a1 UUID];
    OUTLINED_FUNCTION_1_23();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }
}

- (void)peripheral:(void *)a1 didDiscoverDescriptorsForCharacteristic:error:.cold.1(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v9 = [a1 UUID];
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

- (void)peripheral:(void *)a1 didUpdateValueForCharacteristic:error:.cold.1(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [a1 UUID];
    v5 = [v4 data];
    v6 = [a1 UUID];
    OUTLINED_FUNCTION_1_23();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }
}

- (void)peripheral:(void *)a1 didUpdateValueForCharacteristic:(NSObject *)a2 error:.cold.2(void *a1, NSObject **a2)
{
  v4 = getGCLogger(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1 value];
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [a1 value];
    v8 = [v6 initWithData:v7 encoding:4];
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_5_10(&dword_1D2CD5000, v9, v10, "(%@) '%@'", v11, v12, v13, v14);
  }

  *a2 = v4;
}

- (void)peripheral:(uint64_t)a1 didUpdateValueForCharacteristic:error:.cold.3(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)peripheral:(uint64_t)a1 didUpdateValueForCharacteristic:error:.cold.4(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)peripheral:(void *)a1 didUpdateValueForDescriptor:error:.cold.1(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [a1 UUID];
    v5 = [v4 data];
    v6 = [a1 UUID];
    OUTLINED_FUNCTION_1_23();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }
}

- (void)peripheral:(void *)a1 didUpdateValueForDescriptor:(NSObject *)a2 error:.cold.2(void *a1, NSObject **a2)
{
  v4 = getGCLogger(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1 characteristic];
    v6 = [v5 UUID];
    v7 = [a1 value];
    *v14 = 138412546;
    *&v14[4] = v6;
    *&v14[12] = 2112;
    *&v14[14] = v7;
    OUTLINED_FUNCTION_5_10(&dword_1D2CD5000, v8, v9, "on (%@): %@", v10, v11, v12, v13, *v14, *&v14[8], *&v14[16]);
  }

  *a2 = v4;
}

- (void)centralManager:(uint64_t)a1 didFailToConnectPeripheral:error:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)centralManager:(uint64_t)a1 didDisconnectPeripheral:error:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

@end