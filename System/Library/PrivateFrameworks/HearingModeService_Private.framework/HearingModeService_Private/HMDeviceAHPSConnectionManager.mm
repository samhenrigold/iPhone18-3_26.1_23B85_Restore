@interface HMDeviceAHPSConnectionManager
- (HMDeviceAHPSConnectionManager)initWithQueue:(id)queue;
- (void)_activateWithBluetoothDeviceUUID:(id)d;
- (void)_centralManagerEnsureStarted;
- (void)_centralManagerEnsureStopped;
- (void)_discoverAccessory;
- (void)_invalidate;
- (void)_triggerOnDemandDiagnosticCheckWithCompletionHandler:(id)handler;
- (void)_writeHMSettingsConfigsData:(id)data completion:(id)completion;
- (void)activateWithBluetoothDeviceUUID:(id)d;
- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)invalidate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)triggerOnDemandDiagnosticCheckWithCompletionHandler:(id)handler;
- (void)writeHMSettingsConfigsData:(id)data completion:(id)completion;
@end

@implementation HMDeviceAHPSConnectionManager

- (HMDeviceAHPSConnectionManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = HMDeviceAHPSConnectionManager;
  v6 = [(HMDeviceAHPSConnectionManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
    v8 = v7;
  }

  return v7;
}

- (void)activateWithBluetoothDeviceUUID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDeviceAHPSConnectionManager_activateWithBluetoothDeviceUUID___block_invoke;
  v7[3] = &unk_2796EFEC8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithBluetoothDeviceUUID:(id)d
{
  dCopy = d;
  if (!self->_activateCalled)
  {
    v8 = dCopy;
    self->_activateCalled = 1;
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
    {
      if (gLogCategory_HMDeviceAHPSConnectionManager != -1 || (dCopy = _LogCategory_Initialize(), dCopy))
      {
        [(HMDeviceAHPSConnectionManager *)dCopy _activateWithBluetoothDeviceUUID:v6, v7];
      }
    }

    objc_storeStrong(&self->_identifier, d);
    [(HMDeviceAHPSConnectionManager *)self _centralManagerEnsureStarted];
    dCopy = v8;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDeviceAHPSConnectionManager_invalidate__block_invoke;
  block[3] = &unk_2796EFEF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  [(HMDeviceAHPSConnectionManager *)self _centralManagerEnsureStopped];
  v3 = NSErrorF(*MEMORY[0x277CCA590], 4294896148, "Invalidated");
  diagnosticCheckWriteCompletion = self->_diagnosticCheckWriteCompletion;
  v10 = v3;
  if (diagnosticCheckWriteCompletion)
  {
    diagnosticCheckWriteCompletion[2]();
    v5 = self->_diagnosticCheckWriteCompletion;
  }

  else
  {
    v5 = 0;
  }

  self->_diagnosticCheckWriteCompletion = 0;

  diagnosticStatusUpdateHandler = self->_diagnosticStatusUpdateHandler;
  self->_diagnosticStatusUpdateHandler = 0;

  hearingProtectionUpdateHandler = self->_hearingProtectionUpdateHandler;
  self->_hearingProtectionUpdateHandler = 0;

  settingsUpdateHandler = self->_settingsUpdateHandler;
  self->_settingsUpdateHandler = 0;

  self->_activateCalled = 0;
  identifier = self->_identifier;
  self->_identifier = 0;
}

- (void)_centralManagerEnsureStarted
{
  selfCopy = self;
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(HMDeviceAHPSConnectionManager *)self _centralManagerEnsureStarted];
    }
  }

  v4 = selfCopy->_centralManager;
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBDFF8]);
    dispatchQueue = selfCopy->_dispatchQueue;
    v7 = MEMORY[0x277CBEAC0];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v9 = [v7 dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x277CBDD90], 0}];
    obj = [v5 initWithDelegate:selfCopy queue:dispatchQueue options:v9];

    objc_storeStrong(&selfCopy->_centralManager, obj);
    v4 = obj;
  }
}

- (void)_centralManagerEnsureStopped
{
  selfCopy = self;
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(HMDeviceAHPSConnectionManager *)self _centralManagerEnsureStopped];
    }
  }

  centralManager = selfCopy->_centralManager;
  selfCopy->_centralManager = 0;

  selectedPeripheral = selfCopy->_selectedPeripheral;
  selfCopy->_selectedPeripheral = 0;
}

- (void)_discoverAccessory
{
  v20[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(HMDeviceAHPSConnectionManager *)v3 _discoverAccessory];
    }
  }

  isCentralManagerOn = self->_isCentralManagerOn;
  if (!isCentralManagerOn)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager > 30)
    {
      return;
    }

    if (gLogCategory_HMDeviceAHPSConnectionManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      isCentralManagerOn = self->_isCentralManagerOn;
    }

    LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager _discoverAccessory]", 30, "skip accessory discovery, centralManager state: %d", isCentralManagerOn);
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

  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    [(HMDeviceAHPSConnectionManager *)v15 _discoverAccessory];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__HMDeviceAHPSConnectionManager__discoverAccessory__block_invoke;
  v16[3] = &unk_2796EFF18;
  v16[4] = self;
  [v15 enumerateObjectsUsingBlock:v16];
}

void __51__HMDeviceAHPSConnectionManager__discoverAccessory__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 32) + 40);
  v15 = v7;
  v9 = [v7 identifier];
  v10 = [v9 UUIDString];
  v11 = v8;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {

LABEL_6:
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      __51__HMDeviceAHPSConnectionManager__discoverAccessory__block_invoke_cold_1(v15);
    }

    objc_storeStrong((*(a1 + 32) + 56), a2);
    [*(*(a1 + 32) + 16) connectPeripheral:v15 options:0];
    *a4 = 1;
    goto LABEL_11;
  }

  if ((v11 != 0) == (v12 == 0))
  {

    goto LABEL_11;
  }

  v14 = [v11 isEqual:v12];

  if (v14)
  {
    goto LABEL_6;
  }

LABEL_11:
}

- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = self->_identifier;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v11 = identifier;
  v12 = uUIDString;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if ((v11 != 0) == (v12 == 0))
    {

LABEL_17:
      [HMDeviceAHPSConnectionManager centralManager:connectionEventDidOccur:forPeripheral:];
      goto LABEL_12;
    }

    v14 = [(NSString *)v11 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (occur == 1 && !self->_selectedPeripheral)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager centralManager:peripheralCopy connectionEventDidOccur:? forPeripheral:?];
    }

    objc_storeStrong(&self->_selectedPeripheral, peripheral);
    [(CBCentralManager *)self->_centralManager connectPeripheral:peripheralCopy options:0];
  }

LABEL_12:
}

- (void)centralManagerDidUpdateState:(id)state
{
  state = [state state];
  v5 = state == 5;
  if (self->_isCentralManagerOn != v5)
  {
    v6 = state;
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager centralManagerDidUpdateState:?];
    }

    self->_isCentralManagerOn = v5;
    if (v6 == 5)
    {

      [(HMDeviceAHPSConnectionManager *)self _discoverAccessory];
    }
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = self->_identifier;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v8 = identifier;
  v9 = uUIDString;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if ((v8 != 0) == (v9 == 0))
    {

LABEL_15:
      [HMDeviceAHPSConnectionManager centralManager:didConnectPeripheral:];
      goto LABEL_10;
    }

    v11 = [(NSString *)v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v12 = peripheralCopy;
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager != -1 || (v13 = _LogCategory_Initialize(), v12 = peripheralCopy, v13))
    {
      [HMDeviceAHPSConnectionManager centralManager:v12 didConnectPeripheral:?];
      v12 = peripheralCopy;
    }
  }

  [v12 setDelegate:self];
  v14 = MEMORY[0x277CBEA60];
  v15 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF60]];
  v16 = [v14 arrayWithObjects:{v15, 0}];
  [peripheralCopy discoverServices:v16];

LABEL_10:
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = self->_identifier;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v9 = identifier;
  v10 = uUIDString;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if ((v9 != 0) == (v10 == 0))
    {

LABEL_15:
      [HMDeviceAHPSConnectionManager centralManager:didDisconnectPeripheral:error:];
      goto LABEL_10;
    }

    v12 = [(NSString *)v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceAHPSConnectionManager centralManager:peripheralCopy didDisconnectPeripheral:? error:?];
  }

  selectedPeripheral = self->_selectedPeripheral;
  self->_selectedPeripheral = 0;

LABEL_10:
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = self->_identifier;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v9 = identifier;
  v10 = uUIDString;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if ((v9 != 0) == (v10 == 0))
    {

LABEL_9:
      [HMDeviceAHPSConnectionManager peripheral:didDiscoverServices:];
      goto LABEL_7;
    }

    v12 = [(NSString *)v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  services = [peripheralCopy services];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__HMDeviceAHPSConnectionManager_peripheral_didDiscoverServices___block_invoke;
  v14[3] = &unk_2796EFF40;
  v15 = peripheralCopy;
  [services enumerateObjectsUsingBlock:v14];

LABEL_7:
}

void __64__HMDeviceAHPSConnectionManager_peripheral_didDiscoverServices___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 UUID];
  v4 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF60]];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      __64__HMDeviceAHPSConnectionManager_peripheral_didDiscoverServices___block_invoke_cold_1(a1);
    }

    [*(a1 + 32) discoverCharacteristics:0 forService:v6];
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = self->_identifier;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v12 = identifier;
  v13 = uUIDString;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if ((v12 != 0) == (v13 == 0))
    {

LABEL_20:
      [HMDeviceAHPSConnectionManager peripheral:didDiscoverCharacteristicsForService:error:];
      goto LABEL_16;
    }

    v15 = [(NSString *)v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceAHPSConnectionManager peripheral:serviceCopy didDiscoverCharacteristicsForService:peripheralCopy error:?];
  }

  services = [peripheralCopy services];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__HMDeviceAHPSConnectionManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke;
  v18[3] = &unk_2796EFF40;
  v17 = peripheralCopy;
  v19 = v17;
  [services enumerateObjectsUsingBlock:v18];

  if (self->_isDiagnosticCheckPending)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager peripheral:v17 didDiscoverCharacteristicsForService:? error:?];
    }

    if (self->_selectedPeripheral)
    {
      [(HMDeviceAHPSConnectionManager *)self _triggerOnDemandDiagnosticCheckWithCompletionHandler:self->_diagnosticCheckWriteCompletion];
    }

    else
    {
      [HMDeviceAHPSConnectionManager peripheral:didDiscoverCharacteristicsForService:error:];
    }
  }

LABEL_16:
}

void __87__HMDeviceAHPSConnectionManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __87__HMDeviceAHPSConnectionManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2;
  v4[3] = &unk_2796EFF68;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __87__HMDeviceAHPSConnectionManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [v24 UUID];
  v4 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120005-95c5-4d6f-9098-0f0b41457e0a"];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else if ((v5 != 0) == (v6 == 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 isEqual:v6];
  }

  v9 = [v24 UUID];
  v10 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a48fec08-3921-43db-82aa-afbce8ebb4fb"];
  v11 = v9;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {
    v14 = 1;
  }

  else if ((v11 != 0) == (v12 == 0))
  {
    v14 = 0;
  }

  else
  {
    v14 = [v11 isEqual:v12];
  }

  v15 = v8 | v14;
  v16 = [v24 UUID];
  v17 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120002-95c5-4d6f-9098-0f0b41457e0a"];
  v18 = v16;
  v19 = v17;
  v20 = v19;
  if (v18 == v19)
  {
    v21 = 1;
  }

  else if ((v18 != 0) == (v19 == 0))
  {
    v21 = 0;
  }

  else
  {
    v21 = [v18 isEqual:v19];
  }

  if ((v15 | v21))
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager peripheral:didDiscoverCharacteristicsForService:error:]_block_invoke_2", 30, "setting notify for peripheral: %@, characteristic %@", *(a1 + 32), v24);
    }

    v23 = *(a1 + 32);
    v22 = (a1 + 32);
    [v23 setNotifyValue:1 forCharacteristic:v24];
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      __87__HMDeviceAHPSConnectionManager_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_2_cold_1(v22);
    }

    [*v22 readValueForCharacteristic:v24];
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = self->_identifier;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v12 = identifier;
  v13 = uUIDString;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if ((v12 != 0) == (v13 == 0))
    {

LABEL_47:
      [HMDeviceAHPSConnectionManager peripheral:didUpdateValueForCharacteristic:error:];
      goto LABEL_42;
    }

    v15 = [(NSString *)v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  uUID = [characteristicCopy UUID];
  v17 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120005-95c5-4d6f-9098-0f0b41457e0a"];
  value = uUID;
  v19 = v17;
  v20 = v19;
  if (value == v19)
  {

    goto LABEL_11;
  }

  if ((value != 0) == (v19 == 0))
  {

LABEL_17:
    goto LABEL_18;
  }

  v21 = [value isEqual:v19];

  if (v21)
  {
LABEL_11:
    value = [characteristicCopy value];
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager peripheral:peripheralCopy didUpdateValueForCharacteristic:? error:?];
    }

    settingsUpdateHandler = self->_settingsUpdateHandler;
    if (settingsUpdateHandler)
    {
      settingsUpdateHandler[2](settingsUpdateHandler, self->_identifier, value);
    }

    goto LABEL_17;
  }

LABEL_18:
  uUID2 = [characteristicCopy UUID];
  v24 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a48fec08-3921-43db-82aa-afbce8ebb4fb"];
  value2 = uUID2;
  v26 = v24;
  v27 = v26;
  if (value2 == v26)
  {

    goto LABEL_23;
  }

  if ((value2 != 0) == (v26 == 0))
  {

LABEL_29:
    goto LABEL_30;
  }

  v28 = [value2 isEqual:v26];

  if (v28)
  {
LABEL_23:
    value2 = [characteristicCopy value];
    v37 = 1;
    [value2 getBytes:&v37 length:1];
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager peripheral:peripheralCopy didUpdateValueForCharacteristic:? error:?];
    }

    hearingProtectionUpdateHandler = self->_hearingProtectionUpdateHandler;
    if (hearingProtectionUpdateHandler)
    {
      hearingProtectionUpdateHandler[2](hearingProtectionUpdateHandler, self->_identifier, v37);
    }

    goto LABEL_29;
  }

LABEL_30:
  uUID3 = [characteristicCopy UUID];
  v31 = [MEMORY[0x277CBE0A0] UUIDWithString:@"a4120002-95c5-4d6f-9098-0f0b41457e0a"];
  value3 = uUID3;
  v33 = v31;
  v34 = v33;
  if (value3 == v33)
  {

LABEL_35:
    value3 = [characteristicCopy value];
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager peripheral:peripheralCopy didUpdateValueForCharacteristic:? error:?];
    }

    diagnosticStatusUpdateHandler = self->_diagnosticStatusUpdateHandler;
    if (diagnosticStatusUpdateHandler)
    {
      diagnosticStatusUpdateHandler[2](diagnosticStatusUpdateHandler, self->_identifier, value3);
    }

    goto LABEL_41;
  }

  if ((value3 != 0) != (v33 == 0))
  {
    v35 = [value3 isEqual:v33];

    if ((v35 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_35;
  }

LABEL_41:
LABEL_42:
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (errorCopy)
  {
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager peripheral:didWriteValueForCharacteristic:error:]", 30, "failed to write to peripheral: %@, characteristic: %@, error: %@", peripheralCopy, characteristicCopy, errorCopy);
    }
  }

  else if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager peripheral:didWriteValueForCharacteristic:error:]", 30, "did write to peripheral: %@, characteristic: %@", peripheralCopy, characteristicCopy);
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
    v12 = MEMORY[0x253095540](self->_diagnosticCheckWriteCompletion);
    diagnosticCheckWriteCompletion = self->_diagnosticCheckWriteCompletion;
    self->_diagnosticCheckWriteCompletion = 0;

    if (v12)
    {
      (*(v12 + 2))(v12, errorCopy);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)writeHMSettingsConfigsData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDeviceAHPSConnectionManager_writeHMSettingsConfigsData_completion___block_invoke;
  block[3] = &unk_2796EFF90;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_writeHMSettingsConfigsData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selectedPeripheral = self->_selectedPeripheral;
  if (selectedPeripheral)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    services = [(CBPeripheral *)selectedPeripheral services];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__HMDeviceAHPSConnectionManager__writeHMSettingsConfigsData_completion___block_invoke;
    v11[3] = &unk_2796EFFE0;
    v11[4] = self;
    v12 = dataCopy;
    v13 = &v14;
    [services enumerateObjectsUsingBlock:v11];

    if (v15[3])
    {
      v10 = 0;
      if (!completionCopy)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (gLogCategory_HMDeviceAHPSConnectionManager <= 90 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager _writeHMSettingsConfigsData:completion:]", 90, "write HA characteristic UUID: %@ not found on %@", @"a4120005-95c5-4d6f-9098-0f0b41457e0a", self->_selectedPeripheral);
      }

      v10 = NSErrorF(*MEMORY[0x277CCA590], 4294960569, "### write HA characteristic UUID: %@ not found for identifier %@", @"a4120005-95c5-4d6f-9098-0f0b41457e0a", self->_identifier);
      if (!completionCopy)
      {
        goto LABEL_16;
      }
    }

    completionCopy[2](completionCopy, v10);
LABEL_16:

    _Block_object_dispose(&v14, 8);
    goto LABEL_17;
  }

  if (gLogCategory_HMDeviceAHPSConnectionManager <= 90 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceAHPSConnectionManager _writeHMSettingsConfigsData:? completion:?];
  }

  v10 = NSErrorF(*MEMORY[0x277CCA590], 4294960569, "peripheral device not found for identifier: %@", self->_identifier);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v10);
  }

LABEL_17:
}

void __72__HMDeviceAHPSConnectionManager__writeHMSettingsConfigsData_completion___block_invoke(void *a1, void *a2)
{
  v3 = [a2 characteristics];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMDeviceAHPSConnectionManager__writeHMSettingsConfigsData_completion___block_invoke_2;
  v7[3] = &unk_2796EFFB8;
  v4 = a1[5];
  v7[4] = a1[4];
  v5 = v4;
  v6 = a1[6];
  v8 = v5;
  v9 = v6;
  [v3 enumerateObjectsUsingBlock:v7];
}

void __72__HMDeviceAHPSConnectionManager__writeHMSettingsConfigsData_completion___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
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
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      __72__HMDeviceAHPSConnectionManager__writeHMSettingsConfigsData_completion___block_invoke_2_cold_1(a1);
    }

    [*(a1[4] + 56) writeValue:a1[5] forCharacteristic:v12 type:1];
    *a4 = 1;
    *(*(a1[6] + 8) + 24) = 1;
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

- (void)triggerOnDemandDiagnosticCheckWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HMDeviceAHPSConnectionManager_triggerOnDemandDiagnosticCheckWithCompletionHandler___block_invoke;
  v7[3] = &unk_2796F0008;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_triggerOnDemandDiagnosticCheckWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = MEMORY[0x253095540](handlerCopy);
  diagnosticCheckWriteCompletion = self->_diagnosticCheckWriteCompletion;
  self->_diagnosticCheckWriteCompletion = v5;

  selectedPeripheral = self->_selectedPeripheral;
  if (selectedPeripheral)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    services = [(CBPeripheral *)selectedPeripheral services];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __86__HMDeviceAHPSConnectionManager__triggerOnDemandDiagnosticCheckWithCompletionHandler___block_invoke;
    v12[3] = &unk_2796F0058;
    v12[4] = self;
    v12[5] = &v13;
    [services enumerateObjectsUsingBlock:v12];

    if ((v14[3] & 1) == 0)
    {
      if (gLogCategory_HMDeviceAHPSConnectionManager <= 90 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager _triggerOnDemandDiagnosticCheckWithCompletionHandler:]", 90, "diagnostic check write characteristic UUID: %@ not found on %@", @"a4120004-95c5-4d6f-9098-0f0b41457e0a", self->_selectedPeripheral);
      }

      v9 = NSErrorF(*MEMORY[0x277CCA590], 4294960569, "### diagnostic check write characteristic UUID: %@ not found for identifier: %@", @"a4120004-95c5-4d6f-9098-0f0b41457e0a", self->_identifier);
      v10 = self->_diagnosticCheckWriteCompletion;
      if (v10)
      {
        v10[2](v10, v9);
        v11 = self->_diagnosticCheckWriteCompletion;
      }

      else
      {
        v11 = 0;
      }

      self->_diagnosticCheckWriteCompletion = 0;
    }

    self->_isDiagnosticCheckPending = 0;
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    self->_isDiagnosticCheckPending = 1;
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 90 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceAHPSConnectionManager _triggerOnDemandDiagnosticCheckWithCompletionHandler:];
    }
  }
}

void __86__HMDeviceAHPSConnectionManager__triggerOnDemandDiagnosticCheckWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__HMDeviceAHPSConnectionManager__triggerOnDemandDiagnosticCheckWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_2796F0030;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __86__HMDeviceAHPSConnectionManager__triggerOnDemandDiagnosticCheckWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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
    if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
    {
      __86__HMDeviceAHPSConnectionManager__triggerOnDemandDiagnosticCheckWithCompletionHandler___block_invoke_2_cold_1(a1);
    }

    v12 = *(*(a1 + 32) + 56);
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:"1" length:1];
    [v12 writeValue:v13 forCharacteristic:v14 type:0];

    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
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

- (void)centralManager:connectionEventDidOccur:forPeripheral:.cold.1()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    OUTLINED_FUNCTION_1();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager centralManager:connectionEventDidOccur:forPeripheral:]", 30, "unknown connection event from peripheral: %@", v0);
    }
  }
}

- (uint64_t)centralManagerDidUpdateState:(char)a1 .cold.1(char a1)
{
  v1 = @"OFF";
  if (a1)
  {
    v1 = @"ON";
  }

  return LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager centralManagerDidUpdateState:]", 30, "central Manager state %@", v1);
}

- (void)centralManager:didConnectPeripheral:.cold.1()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    OUTLINED_FUNCTION_1();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager centralManager:didConnectPeripheral:]", 30, "unknown peripheral connected: %@", v0);
    }
  }
}

- (void)centralManager:(void *)a1 didConnectPeripheral:.cold.2(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager centralManager:didConnectPeripheral:]", 30, "connected to device %@", v1);
}

- (void)centralManager:didDisconnectPeripheral:error:.cold.1()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    OUTLINED_FUNCTION_1();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager centralManager:didDisconnectPeripheral:error:]", 30, "unknown peripheral disconnected: %@", v0);
    }
  }
}

- (void)centralManager:(void *)a1 didDisconnectPeripheral:error:.cold.2(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager centralManager:didDisconnectPeripheral:error:]", 30, "disconnected from device %@", v1);
}

- (void)peripheral:didDiscoverServices:.cold.1()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    OUTLINED_FUNCTION_1();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager peripheral:didDiscoverServices:]", 30, "service discovered from unknown peripheral: %@", v0);
    }
  }
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.1()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    OUTLINED_FUNCTION_1();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager peripheral:didDiscoverCharacteristicsForService:error:]", 30, "characteristics discovered from unknown peripheral: %@", v0);
    }
  }
}

- (void)peripheral:(void *)a1 didDiscoverCharacteristicsForService:(uint64_t)a2 error:.cold.2(void *a1, uint64_t a2)
{
  v3 = [a1 characteristics];
  LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager peripheral:didDiscoverCharacteristicsForService:error:]", 30, "Peripheral: %@, found characteristics: %@", a2, v3);
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.4()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30 && (gLogCategory_HMDeviceAHPSConnectionManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager peripheral:didDiscoverCharacteristicsForService:error:]", 30, "skipping diagnostic check trigger, no peripheral selected", v0, v1);
  }
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.1()
{
  if (gLogCategory_HMDeviceAHPSConnectionManager <= 30)
  {
    OUTLINED_FUNCTION_1();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceAHPSConnectionManager, "[HMDeviceAHPSConnectionManager peripheral:didUpdateValueForCharacteristic:error:]", 30, "characteristic updated from unknown peripheral: %@", v0);
    }
  }
}

@end