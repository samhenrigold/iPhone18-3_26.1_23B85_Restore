@interface HMAccessoryManager
- (HMAccessoryManager)init;
- (void)_activateWithBluetoothDeviceAddress:(id)address;
- (void)_discoveryAccessory;
- (void)_invalidate;
- (void)_triggerOnDemandFaultCheckWithCompletionHandler:(id)handler;
- (void)_writeHearingModeSetting:(id)setting;
- (void)activateWithBluetoothDeviceAddress:(id)address;
- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)init;
- (void)invalidate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)triggerOnDemandFaultCheckWithCompletionHandler:(id)handler;
- (void)writeHearingModeSetting:(id)setting;
@end

@implementation HMAccessoryManager

- (HMAccessoryManager)init
{
  v10.receiver = self;
  v10.super_class = HMAccessoryManager;
  v2 = [(HMAccessoryManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("HearingModeAccessoryManager", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      [HMAccessoryManager init];
    }

    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    bluetoothManager = v2->_bluetoothManager;
    v2->_bluetoothManager = mEMORY[0x277CF3248];

    v8 = v2;
  }

  return v2;
}

- (void)activateWithBluetoothDeviceAddress:(id)address
{
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMAccessoryManager_activateWithBluetoothDeviceAddress___block_invoke;
  v7[3] = &unk_2796EE598;
  v7[4] = self;
  v8 = addressCopy;
  v6 = addressCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithBluetoothDeviceAddress:(id)address
{
  addressCopy = address;
  v4 = self->_centralManager;
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBDFF8]);
    dispatchQueue = self->_dispatchQueue;
    v7 = MEMORY[0x277CBEAC0];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v9 = [v7 dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x277CBDD90], 0}];
    v4 = [v5 initWithDelegate:self queue:dispatchQueue options:v9];

    objc_storeStrong(&self->_centralManager, v4);
  }

  v10 = [addressCopy copy];
  v11 = [(BluetoothManager *)self->_bluetoothManager deviceFromAddressString:v10];
  selectedDevice = self->_selectedDevice;
  self->_selectedDevice = v11;

  v13 = self->_selectedDevice;
  if (v13)
  {
    if (gLogCategory_HMAccessoryManager > 30)
    {
      goto LABEL_12;
    }

    if (gLogCategory_HMAccessoryManager != -1)
    {
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v13 = self->_selectedDevice;
LABEL_6:
      LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager _activateWithBluetoothDeviceAddress:]", 30, "initialized with bluetooth device %@", v13);
    }
  }

  else if (gLogCategory_HMAccessoryManager <= 90 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    [HMAccessoryManager _activateWithBluetoothDeviceAddress:v10];
  }

LABEL_12:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMAccessoryManager_invalidate__block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  selectedDevice = self->_selectedDevice;
  self->_selectedDevice = 0;

  selectedPeripheral = self->_selectedPeripheral;
  self->_selectedPeripheral = 0;

  centralManager = self->_centralManager;
  self->_centralManager = 0;
}

- (void)triggerOnDemandFaultCheckWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMAccessoryManager_triggerOnDemandFaultCheckWithCompletionHandler___block_invoke;
  v7[3] = &unk_2796EE5E8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_triggerOnDemandFaultCheckWithCompletionHandler:(id)handler
{
  dispatchQueue = self->_dispatchQueue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = MEMORY[0x2530950A0](handlerCopy);

  faultCheckWriteCompletion = self->_faultCheckWriteCompletion;
  self->_faultCheckWriteCompletion = v6;

  selectedPeripheral = self->_selectedPeripheral;
  if (selectedPeripheral)
  {
    services = [(CBPeripheral *)selectedPeripheral services];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__HMAccessoryManager__triggerOnDemandFaultCheckWithCompletionHandler___block_invoke;
    v10[3] = &unk_2796EE638;
    v10[4] = self;
    [services enumerateObjectsUsingBlock:v10];
  }

  else
  {
    self->_isFaultCheckPending = 1;
    if (gLogCategory_HMAccessoryManager <= 90 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      [HMAccessoryManager _triggerOnDemandFaultCheckWithCompletionHandler:];
    }
  }
}

void __70__HMAccessoryManager__triggerOnDemandFaultCheckWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 characteristics];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HMAccessoryManager__triggerOnDemandFaultCheckWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_2796EE610;
  v8 = *(a1 + 32);
  v7 = a1 + 32;
  v9[4] = v8;
  [v6 enumerateObjectsUsingBlock:v9];

  if ((*a4 & 1) == 0 && gLogCategory_HMAccessoryManager <= 90 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    __70__HMAccessoryManager__triggerOnDemandFaultCheckWithCompletionHandler___block_invoke_cold_1(v7);
  }

  *(*v7 + 41) = 0;
}

void __70__HMAccessoryManager__triggerOnDemandFaultCheckWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 UUID];
  v7 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120004-95c5-4d6f-9098-0f0b41457e0a"];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

LABEL_6:
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      __70__HMAccessoryManager__triggerOnDemandFaultCheckWithCompletionHandler___block_invoke_2_cold_1(a1);
    }

    v12 = *(*(a1 + 32) + 56);
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:"1" length:1];
    [v12 writeValue:v13 forCharacteristic:v14 type:0];

    *a4 = 1;
    goto LABEL_11;
  }

  if ((v8 != 0) == (v9 == 0))
  {

    goto LABEL_11;
  }

  v11 = [v8 isEqual:v9];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_11:
}

- (void)writeHearingModeSetting:(id)setting
{
  settingCopy = setting;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMAccessoryManager_writeHearingModeSetting___block_invoke;
  v7[3] = &unk_2796EE598;
  v7[4] = self;
  v8 = settingCopy;
  v6 = settingCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_writeHearingModeSetting:(id)setting
{
  settingCopy = setting;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selectedPeripheral = self->_selectedPeripheral;
  if (selectedPeripheral)
  {
    services = [(CBPeripheral *)selectedPeripheral services];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__HMAccessoryManager__writeHearingModeSetting___block_invoke;
    v9[3] = &unk_2796EE688;
    v9[4] = self;
    v10 = settingCopy;
    [services enumerateObjectsUsingBlock:v9];
  }

  else
  {
    [(HMAccessoryManager *)0 _writeHearingModeSetting:v5, v6];
  }
}

void __47__HMAccessoryManager__writeHearingModeSetting___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HMAccessoryManager__writeHearingModeSetting___block_invoke_2;
  v5[3] = &unk_2796EE660;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 enumerateObjectsUsingBlock:v5];
}

void __47__HMAccessoryManager__writeHearingModeSetting___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 UUID];
  v7 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120005-95c5-4d6f-9098-0f0b41457e0a"];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

LABEL_6:
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      __47__HMAccessoryManager__writeHearingModeSetting___block_invoke_2_cold_1(a1);
    }

    [*(*(a1 + 32) + 56) writeValue:*(a1 + 40) forCharacteristic:v12 type:1];
    *a4 = 1;
    goto LABEL_11;
  }

  if ((v8 != 0) == (v9 == 0))
  {

    goto LABEL_11;
  }

  v11 = [v8 isEqual:v9];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_11:
}

- (void)_discoveryAccessory
{
  v20[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    if (gLogCategory_HMAccessoryManager != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(HMAccessoryManager *)v3 _discoveryAccessory];
    }
  }

  isCentralManagerOn = self->_isCentralManagerOn;
  if (!isCentralManagerOn)
  {
    if (gLogCategory_HMAccessoryManager > 30)
    {
      return;
    }

    if (gLogCategory_HMAccessoryManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      isCentralManagerOn = self->_isCentralManagerOn;
    }

    LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager _discoveryAccessory]", 30, "skip accessory discovery, centralManager state: %d", isCentralManagerOn);
    return;
  }

  centralManager = self->_centralManager;
  v19 = *MEMORY[0x277CBDED8];
  v8 = *MEMORY[0x277CBDF60];
  v9 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF60]];
  v18 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v20[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [(CBCentralManager *)centralManager registerForConnectionEventsWithOptions:v11];

  v12 = self->_centralManager;
  v13 = [MEMORY[0x277CBE0A0] UUIDWithString:v8];
  v17 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v15 = [(CBCentralManager *)v12 retrieveConnectedPeripheralsWithServices:v14];

  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    [(HMAccessoryManager *)v15 _discoveryAccessory];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__HMAccessoryManager__discoveryAccessory__block_invoke;
  v16[3] = &unk_2796EE6B0;
  v16[4] = self;
  [v15 enumerateObjectsUsingBlock:v16];
}

void __41__HMAccessoryManager__discoveryAccessory__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [MEMORY[0x277CF3248] sharedInstance];
  v8 = [v14 identifier];
  v9 = [v7 deviceFromIdentifier:v8];

  v10 = *(*(a1 + 32) + 48);
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {

LABEL_6:
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      __41__HMAccessoryManager__discoveryAccessory__block_invoke_cold_1(v14);
    }

    objc_storeStrong((*(a1 + 32) + 56), a2);
    [*(*(a1 + 32) + 16) connectPeripheral:v14 options:0];
    *a4 = 1;
    goto LABEL_11;
  }

  if ((v11 == 0) == (v10 != 0))
  {

    goto LABEL_11;
  }

  v13 = [v10 isEqual:v11];

  if (v13)
  {
    goto LABEL_6;
  }

LABEL_11:
}

- (void)centralManagerDidUpdateState:(id)state
{
  state = [state state];
  v5 = state == 5;
  if (self->_isCentralManagerOn != v5)
  {
    v6 = state;
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      [HMAccessoryManager centralManagerDidUpdateState:?];
    }

    self->_isCentralManagerOn = v5;
    if (v6 == 5)
    {

      [(HMAccessoryManager *)self _discoveryAccessory];
    }
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  identifier = [peripheralCopy identifier];
  v7 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

  selectedDevice = self->_selectedDevice;
  v9 = v7;
  v10 = selectedDevice;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if ((v9 != 0) == (v10 == 0))
    {

LABEL_15:
      [HMAccessoryManager centralManager:didConnectPeripheral:];
      goto LABEL_10;
    }

    v12 = [(BluetoothDevice *)v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    [HMAccessoryManager centralManager:v9 didConnectPeripheral:?];
  }

  [peripheralCopy setDelegate:self];
  v13 = MEMORY[0x277CBEA60];
  v14 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF60]];
  v15 = [v13 arrayWithObjects:{v14, 0}];
  [peripheralCopy discoverServices:v15];

LABEL_10:
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  identifier = [peripheralCopy identifier];
  v8 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

  selectedDevice = self->_selectedDevice;
  v10 = v8;
  v11 = selectedDevice;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if ((v10 != 0) == (v11 == 0))
    {

LABEL_15:
      [HMAccessoryManager centralManager:didDisconnectPeripheral:error:];
      goto LABEL_10;
    }

    v13 = [(BluetoothDevice *)v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    [HMAccessoryManager centralManager:v10 didDisconnectPeripheral:? error:?];
  }

  selectedPeripheral = self->_selectedPeripheral;
  self->_selectedPeripheral = 0;

LABEL_10:
}

- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  identifier = [peripheralCopy identifier];
  v10 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

  selectedDevice = self->_selectedDevice;
  v12 = v10;
  v13 = selectedDevice;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if ((v12 != 0) == (v13 == 0))
    {

LABEL_17:
      [HMAccessoryManager centralManager:connectionEventDidOccur:forPeripheral:];
      goto LABEL_12;
    }

    v15 = [(BluetoothDevice *)v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (occur == 1 && !self->_selectedPeripheral)
  {
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      [HMAccessoryManager centralManager:peripheralCopy connectionEventDidOccur:? forPeripheral:?];
    }

    objc_storeStrong(&self->_selectedPeripheral, peripheral);
    [(CBCentralManager *)self->_centralManager connectPeripheral:peripheralCopy options:0];
  }

LABEL_12:
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  identifier = [peripheralCopy identifier];
  v8 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

  selectedDevice = self->_selectedDevice;
  v10 = v8;
  v11 = selectedDevice;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if ((v10 != 0) == (v11 == 0))
    {

LABEL_9:
      [HMAccessoryManager peripheral:didDiscoverServices:];
      goto LABEL_7;
    }

    v13 = [(BluetoothDevice *)v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  services = [peripheralCopy services];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__HMAccessoryManager_peripheral_didDiscoverServices___block_invoke;
  v15[3] = &unk_2796EE638;
  v16 = peripheralCopy;
  [services enumerateObjectsUsingBlock:v15];

LABEL_7:
}

void __53__HMAccessoryManager_peripheral_didDiscoverServices___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 UUID];
  v4 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF60]];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      __53__HMAccessoryManager_peripheral_didDiscoverServices___block_invoke_cold_1(a1);
    }

    [*(a1 + 32) discoverCharacteristics:0 forService:v6];
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  identifier = [peripheralCopy identifier];
  v11 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

  selectedDevice = self->_selectedDevice;
  v13 = v11;
  v14 = selectedDevice;
  v15 = v14;
  if (v13 == v14)
  {
  }

  else
  {
    if ((v13 != 0) == (v14 == 0))
    {

LABEL_20:
      [HMAccessoryManager peripheral:didDiscoverCharacteristicsForService:error:];
      goto LABEL_16;
    }

    v16 = [(BluetoothDevice *)v13 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    [HMAccessoryManager peripheral:serviceCopy didDiscoverCharacteristicsForService:peripheralCopy error:?];
  }

  services = [peripheralCopy services];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__HMAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke;
  v19[3] = &unk_2796EE638;
  v18 = peripheralCopy;
  v20 = v18;
  [services enumerateObjectsUsingBlock:v19];

  if (self->_isFaultCheckPending)
  {
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      [HMAccessoryManager peripheral:v18 didDiscoverCharacteristicsForService:? error:?];
    }

    if (self->_selectedPeripheral)
    {
      [(HMAccessoryManager *)self _triggerOnDemandFaultCheckWithCompletionHandler:self->_faultCheckWriteCompletion];
    }

    else
    {
      [HMAccessoryManager peripheral:didDiscoverCharacteristicsForService:error:];
    }
  }

LABEL_16:
}

void __76__HMAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__HMAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2;
  v4[3] = &unk_2796EE610;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __76__HMAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 UUID];
  v4 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120005-95c5-4d6f-9098-0f0b41457e0a"];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

LABEL_6:
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager peripheral:didDiscoverCharacteristicsForService:error:]_block_invoke_2", 30, "setting notify for peripheral: %@, characteristic %@", *(a1 + 32), v11);
    }

    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    [v10 setNotifyValue:1 forCharacteristic:v11];
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      __76__HMAccessoryManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2_cold_1(v9);
    }

    [*v9 readValueForCharacteristic:v11];
    goto LABEL_15;
  }

  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_15;
  }

  v8 = [v5 isEqual:v6];

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_15:
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  identifier = [peripheralCopy identifier];
  v10 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

  selectedDevice = self->_selectedDevice;
  v12 = v10;
  v13 = selectedDevice;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if ((v12 != 0) == (v13 == 0))
    {

LABEL_17:
      [HMAccessoryManager peripheral:didUpdateValueForCharacteristic:error:];
      goto LABEL_12;
    }

    v15 = [(BluetoothDevice *)v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  value = [characteristicCopy value];
  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    [HMAccessoryManager peripheral:peripheralCopy didUpdateValueForCharacteristic:? error:?];
  }

  settingsUpdateHandler = self->_settingsUpdateHandler;
  if (settingsUpdateHandler)
  {
    settingsUpdateHandler[2](settingsUpdateHandler, value);
  }

LABEL_12:
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (errorCopy)
  {
    if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager peripheral:didWriteValueForCharacteristic:error:]", 30, "failed to write to peripheral: %@, characteristic: %@, error: %@", peripheralCopy, characteristicCopy, errorCopy);
    }
  }

  else if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager peripheral:didWriteValueForCharacteristic:error:]", 30, "did write to peripheral: %@, characteristic: %@", peripheralCopy, characteristicCopy);
  }

  uUID = [characteristicCopy UUID];
  v11 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120004-95c5-4d6f-9098-0f0b41457e0a"];
  v12 = uUID;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_16;
  }

  if ((v12 != 0) == (v13 == 0))
  {

LABEL_19:
    goto LABEL_20;
  }

  v15 = [v12 isEqual:v13];

  if (v15)
  {
LABEL_16:
    v12 = MEMORY[0x2530950A0](self->_faultCheckWriteCompletion);
    faultCheckWriteCompletion = self->_faultCheckWriteCompletion;
    self->_faultCheckWriteCompletion = 0;

    if (v12)
    {
      (*(v12 + 2))(v12, errorCopy);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)init
{
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  connectedDevices = [mEMORY[0x277CF3248] connectedDevices];
  LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager init]", 30, "connected device: %@", connectedDevices);
}

- (void)_writeHearingModeSetting:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager _writeHearingModeSetting:]", a3, "peripheral device not found");
  }
}

- (uint64_t)centralManagerDidUpdateState:(char)a1 .cold.1(char a1)
{
  v1 = @"OFF";
  if (a1)
  {
    v1 = @"ON";
  }

  return LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager centralManagerDidUpdateState:]", 30, "central Manager state %@", v1);
}

- (void)centralManager:didConnectPeripheral:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    OUTLINED_FUNCTION_0();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager centralManager:didConnectPeripheral:]", 30, "unknown peripheral connected: %@", v0);
    }
  }
}

- (void)centralManager:(void *)a1 didConnectPeripheral:.cold.2(void *a1)
{
  v1 = [a1 address];
  LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager centralManager:didConnectPeripheral:]", 30, "connected to device %@", v1);
}

- (void)centralManager:didDisconnectPeripheral:error:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    OUTLINED_FUNCTION_0();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager centralManager:didDisconnectPeripheral:error:]", 30, "unknown peripheral disconnected: %@", v0);
    }
  }
}

- (void)centralManager:(void *)a1 didDisconnectPeripheral:error:.cold.2(void *a1)
{
  v1 = [a1 address];
  LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager centralManager:didDisconnectPeripheral:error:]", 30, "disconnected from device %@", v1);
}

- (void)centralManager:connectionEventDidOccur:forPeripheral:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    OUTLINED_FUNCTION_0();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager centralManager:connectionEventDidOccur:forPeripheral:]", 30, "unknown connection event from peripheral: %@", v0);
    }
  }
}

- (void)peripheral:didDiscoverServices:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    OUTLINED_FUNCTION_0();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager peripheral:didDiscoverServices:]", 30, "service discovered from unknown peripheral: %@", v0);
    }
  }
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    OUTLINED_FUNCTION_0();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager peripheral:didDiscoverCharacteristicsForService:error:]", 30, "characteristics discovered from unknown peripheral: %@", v0);
    }
  }
}

- (void)peripheral:(void *)a1 didDiscoverCharacteristicsForService:(uint64_t)a2 error:.cold.2(void *a1, uint64_t a2)
{
  v3 = [a1 characteristics];
  LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager peripheral:didDiscoverCharacteristicsForService:error:]", 30, "Peripheral: %@, found characteristics: %@", a2, v3);
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.4()
{
  if (gLogCategory_HMAccessoryManager <= 30 && (gLogCategory_HMAccessoryManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager peripheral:didDiscoverCharacteristicsForService:error:]", 30, "skipping fault check trigger, no peripheral selected", v0, v1);
  }
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.1()
{
  if (gLogCategory_HMAccessoryManager <= 30)
  {
    OUTLINED_FUNCTION_0();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMAccessoryManager, "[HMAccessoryManager peripheral:didUpdateValueForCharacteristic:error:]", 30, "characteristic updated from unknown peripheral: %@", v0);
    }
  }
}

@end