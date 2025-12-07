@interface RPRemoteDisplayDiscovery
- (BOOL)_checkRSSIThresholdForDevice:(id)device;
- (BOOL)shouldReportDevice:(id)device;
- (NSArray)discoveredDevices;
- (NSArray)discoveredPeople;
- (RPRemoteDisplayDiscovery)init;
- (RPRemoteDisplayDiscovery)initWithCoder:(id)coder;
- (id)description;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_lostAllDevices;
- (void)_lostAllPeople;
- (void)activateWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)enterDiscoverySessionWithDevice:(id)device reason:(id)reason;
- (void)exitDiscoverySessionWithReason:(id)reason;
- (void)invalidate;
- (void)personCanceled:(id)canceled;
- (void)remoteDisplayChangedDevice:(id)device changes:(unsigned int)changes;
- (void)remoteDisplayDedicatedDeviceChanged:(id)changed;
- (void)remoteDisplayDeviceSelected:(id)selected;
- (void)remoteDisplayFoundDevice:(id)device;
- (void)remoteDisplayLostDevice:(id)device;
- (void)remoteDisplayNotifyDiscoverySessionState:(unsigned __int8)state forDevice:(id)device startReason:(unsigned __int8)reason;
- (void)remoteDisplayPersonDeclined;
- (void)remoteDisplayUpdateErrorFlags:(unint64_t)flags;
- (void)requestDedicatedDeviceConfirmationWithCompletion:(id)completion;
- (void)saveDedicatedDevice:(id)device;
- (void)setPersonSelected:(id)selected forPairingType:(unsigned int)type;
@end

@implementation RPRemoteDisplayDiscovery

- (RPRemoteDisplayDiscovery)init
{
  v8.receiver = self;
  v8.super_class = RPRemoteDisplayDiscovery;
  v2 = [(RPRemoteDisplayDiscovery *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_controlFlags = 6;
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    DeviceClass = GestaltGetDeviceClass();
    v5 = -60;
    if (DeviceClass == 4)
    {
      v5 = -75;
    }

    v3->_rssiThreshold = v5;
    v6 = v3;
  }

  return v3;
}

- (RPRemoteDisplayDiscovery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RPRemoteDisplayDiscovery;
  v5 = [(RPRemoteDisplayDiscovery *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v7 = coderCopy;
    if ([v7 containsValueForKey:@"cFl"])
    {
      v6->_controlFlags = [v7 decodeInt64ForKey:@"cFl"];
    }

    v8 = v7;
    if ([v8 containsValueForKey:@"dFl"])
    {
      v6->_discoveryFlags = [v8 decodeInt64ForKey:@"dFl"];
    }

    v9 = v8;
    if ([v9 containsValueForKey:@"eDis"])
    {
      v6->_triggerEnhancedDiscovery = [v9 decodeBoolForKey:@"eDis"];
    }

    v10 = v9;
    if ([v10 containsValueForKey:@"rssiTh"])
    {
      v6->_rssiThreshold = [v10 decodeIntegerForKey:@"rssiTh"];
    }

    v11 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  controlFlags = self->_controlFlags;
  v8 = coderCopy;
  if (controlFlags)
  {
    [coderCopy encodeInt64:controlFlags forKey:@"cFl"];
    coderCopy = v8;
  }

  discoveryFlags = self->_discoveryFlags;
  if (discoveryFlags)
  {
    [v8 encodeInt64:discoveryFlags forKey:@"dFl"];
    coderCopy = v8;
  }

  if (self->_triggerEnhancedDiscovery)
  {
    [v8 encodeBool:1 forKey:@"eDis"];
    coderCopy = v8;
  }

  rssiThreshold = self->_rssiThreshold;
  if (rssiThreshold)
  {
    [v8 encodeInteger:rssiThreshold forKey:@"rssiTh"];
    coderCopy = v8;
  }
}

- (id)description
{
  v19 = 0;
  NSAppendPrintF(&v19, "RPRemoteDisplayDiscovery %{ptr}", self);
  v3 = v19;
  v4 = v3;
  discoveryFlags = self->_discoveryFlags;
  if (discoveryFlags)
  {
    v18 = v3;
    NSAppendPrintF(&v18, ", DF %ll{flags}", discoveryFlags, &unk_1B6F2E991);
    v6 = v18;

    v4 = v6;
  }

  controlFlags = self->_controlFlags;
  if (controlFlags)
  {
    v17 = v4;
    NSAppendPrintF(&v17, ", CF %ll{flags}", controlFlags, &unk_1B6F2E9B0);
    v8 = v17;

    v4 = v8;
  }

  if ([(NSMutableDictionary *)self->_discoveredDevices count])
  {
    v16 = v4;
    NSAppendPrintF(&v16, ", devices %u", [(NSMutableDictionary *)self->_discoveredDevices count]);
    v9 = v16;

    v4 = v9;
  }

  if ([(NSMutableDictionary *)self->_discoveredPeople count])
  {
    v15 = v4;
    NSAppendPrintF(&v15, ", people %u", [(NSMutableDictionary *)self->_discoveredPeople count]);
    v10 = v15;

    v4 = v10;
  }

  rssiThreshold = self->_rssiThreshold;
  if (rssiThreshold)
  {
    v14 = v4;
    NSAppendPrintF(&v14, ", RSSIThreshold %ld", rssiThreshold);
    v12 = v14;

    v4 = v12;
  }

  return v4;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__RPRemoteDisplayDiscovery_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __51__RPRemoteDisplayDiscovery_activateWithCompletion___block_invoke(uint64_t a1)
{
  DeviceClass = GestaltGetDeviceClass();
  *(*(a1 + 32) + 8) = 1;
  v3 = *(a1 + 32);
  if (*(v3 + 64))
  {
    v4 = DeviceClass == 100;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  *(v3 + 50) = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 _activateWithCompletion:v7 reactivate:0];
}

- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  completionCopy = completion;
  if (reactivateCopy)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery <= 30 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
    {
      v9 = "Re-activate\n";
LABEL_11:
      [(RPRemoteDisplayDiscovery *)v9 _activateWithCompletion:v6 reactivate:v7];
    }
  }

  else if (gLogCategory_RPRemoteDisplayDiscovery <= 30 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
  {
    v9 = "Activate\n";
    goto LABEL_11;
  }

  [(RPRemoteDisplayDiscovery *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke;
  v17[3] = &unk_1E7C92F88;
  v19 = reactivateCopy;
  v11 = completionCopy;
  v18 = v11;
  v12 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_2;
  v14[3] = &unk_1E7C94D00;
  v16 = reactivateCopy;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 remoteDisplayActivateDiscovery:self completion:v14];
}

void __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
    {
      if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v8, v4))
      {
        v5 = "### Re-activate XPC error: %{error}\n";
LABEL_15:
        __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_cold_1(v5, v8);
        v3 = v8;
      }
    }
  }

  else if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v6 = _LogCategory_Initialize(), v3 = v8, v6))
    {
      v5 = "### Activate XPC error: %{error}\n";
      goto LABEL_15;
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
    v3 = v8;
  }
}

void __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(a1 + 32) + 112) = a2;
  v13 = v5;
  if (a2 && (*(a1 + 48) & 1) != 0)
  {
    v6 = _Block_copy(*(*(a1 + 32) + 120));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
    }

    v5 = v13;
  }

  if (v5)
  {
    if (*(a1 + 48))
    {
      if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
      {
        if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v8 = _LogCategory_Initialize(), v5 = v13, v8))
        {
          __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_2(v5);
LABEL_25:
          v5 = v13;
        }
      }
    }

    else if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
    {
      if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v10 = _LogCategory_Initialize(), v5 = v13, v10))
      {
        __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_1(v5);
        goto LABEL_25;
      }
    }
  }

  else if (*(a1 + 48))
  {
    if (gLogCategory_RPRemoteDisplayDiscovery <= 30)
    {
      if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v9 = _LogCategory_Initialize(), v5 = v13, v9))
      {
        __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_4(a2);
        goto LABEL_25;
      }
    }
  }

  else if (gLogCategory_RPRemoteDisplayDiscovery <= 30)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v11 = _LogCategory_Initialize(), v5 = v13, v11))
    {
      __63__RPRemoteDisplayDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_3(a2);
      goto LABEL_25;
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v13);
    v5 = v13;
  }
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[11] = v2;
    v12[12] = v3;
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.RemoteDisplay" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF7D58];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__RPRemoteDisplayDiscovery__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__RPRemoteDisplayDiscovery__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEE98];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPRemoteDisplayDiscovery <= 10 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
    {
      [RPRemoteDisplayDiscovery _ensureXPCStarted];
    }
  }
}

uint64_t __45__RPRemoteDisplayDiscovery__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPRemoteDisplayDiscovery <= 50 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplayDiscovery _interrupted];
  }

  [(RPRemoteDisplayDiscovery *)self _lostAllDevices];
  [(RPRemoteDisplayDiscovery *)self _lostAllPeople];
  if (self->_activateCalled)
  {
    [(RPRemoteDisplayDiscovery *)self _activateWithCompletion:0 reactivate:1];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v4 = *(interruptionHandler + 2);

    v4();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__RPRemoteDisplayDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__38__RPRemoteDisplayDiscovery_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v7 = result[4];
  if ((*(v7 + 32) & 1) == 0)
  {
    v10 = v3;
    v8 = result;
    *(v7 + 32) = 1;
    if (gLogCategory_RPRemoteDisplayDiscovery <= 30)
    {
      if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (result = _LogCategory_Initialize(), result))
      {
        __38__RPRemoteDisplayDiscovery_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    [*(v8[4] + 40) invalidate];
    v9 = v8[4];

    return [v9 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcCnx)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    dedicatedDeviceChangedHandler = self->_dedicatedDeviceChangedHandler;
    self->_dedicatedDeviceChangedHandler = 0;

    dedicatedDevice = self->_dedicatedDevice;
    self->_dedicatedDevice = 0;

    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    deviceChangedHandler = self->_deviceChangedHandler;
    self->_deviceChangedHandler = 0;

    discoverySessionStateChangedHandler = self->_discoverySessionStateChangedHandler;
    self->_discoverySessionStateChangedHandler = 0;

    discoveredDevices = self->_discoveredDevices;
    self->_discoveredDevices = 0;

    discoveredPeople = self->_discoveredPeople;
    self->_discoveredPeople = 0;

    errorFlagsChangedHandler = self->_errorFlagsChangedHandler;
    self->_errorFlagsChangedHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v14 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    personDeclinedHandler = self->_personDeclinedHandler;
    self->_personDeclinedHandler = 0;

    personFoundHandler = self->_personFoundHandler;
    self->_personFoundHandler = 0;

    personLostHandler = self->_personLostHandler;
    self->_personLostHandler = 0;

    personChangedHandler = self->_personChangedHandler;
    self->_personChangedHandler = 0;

    personSelected = self->_personSelected;
    self->_personSelected = 0;

    peerDeviceIdentifier = self->_peerDeviceIdentifier;
    self->_peerDeviceIdentifier = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPRemoteDisplayDiscovery <= 30)
    {
      if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v21 = _LogCategory_Initialize(), v21))
      {
        [(RPRemoteDisplayDiscovery *)v21 _invalidated];
      }
    }
  }
}

- (void)personCanceled:(id)canceled
{
  canceledCopy = canceled;
  if (canceledCopy)
  {
    [(RPRemoteDisplayDiscovery *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__RPRemoteDisplayDiscovery_personCanceled___block_invoke;
    v8[3] = &unk_1E7C92D58;
    v6 = canceledCopy;
    v9 = v6;
    v7 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v8];
    [v7 remoteDisplayPersonCanceled:v6];
  }
}

void __43__RPRemoteDisplayDiscovery_personCanceled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
  {
    v6 = v3;
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      LogPrintF(&gLogCategory_RPRemoteDisplayDiscovery, "[RPRemoteDisplayDiscovery personCanceled:]_block_invoke", 90, "### Failed to cancel confirmation for person (%@): %@\n", *(a1 + 32), v4);
      v4 = v6;
    }
  }
}

- (BOOL)_checkRSSIThresholdForDevice:(id)device
{
  bleDevice = [device bleDevice];
  v4BleDevice = [bleDevice bleDevice];
  rssi = [v4BleDevice rssi];

  return !rssi || rssi >= self->_rssiThreshold;
}

- (NSArray)discoveredDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  discoveredDevices = selfCopy->_discoveredDevices;
  if (discoveredDevices)
  {
    allValues = [(NSMutableDictionary *)discoveredDevices allValues];
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (NSArray)discoveredPeople
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  discoveredPeople = selfCopy->_discoveredPeople;
  if (discoveredPeople)
  {
    allValues = [(NSMutableDictionary *)discoveredPeople allValues];
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (void)setPersonSelected:(id)selected forPairingType:(unsigned int)type
{
  v4 = *&type;
  selectedCopy = selected;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_personSelected, selected);
  objc_sync_exit(selfCopy);

  if (selectedCopy)
  {
    [(RPRemoteDisplayDiscovery *)selfCopy _ensureXPCStarted];
    xpcCnx = selfCopy->_xpcCnx;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __61__RPRemoteDisplayDiscovery_setPersonSelected_forPairingType___block_invoke;
    v15 = &unk_1E7C92D10;
    v10 = selectedCopy;
    v16 = v10;
    v17 = selfCopy;
    v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:&v12];
    [v11 remoteDisplayPersonSelected:v10 forPairingType:{v4, v12, v13, v14, v15}];
  }
}

void __61__RPRemoteDisplayDiscovery_setPersonSelected_forPairingType___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (gLogCategory_RPRemoteDisplayDiscovery <= 90 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_RPRemoteDisplayDiscovery, "[RPRemoteDisplayDiscovery setPersonSelected:forPairingType:]_block_invoke", 90, "Failed to set selected person (%@): %@\n", *(a1 + 32), v6);
  }

  v3 = *(a1 + 40);
  objc_sync_enter(v3);
  v4 = *(a1 + 40);
  v5 = *(v4 + 176);
  *(v4 + 176) = 0;

  objc_sync_exit(v3);
}

- (void)remoteDisplayFoundDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  discoveredDevices = selfCopy->_discoveredDevices;
  if (!discoveredDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = selfCopy->_discoveredDevices;
    selfCopy->_discoveredDevices = v6;

    discoveredDevices = selfCopy->_discoveredDevices;
  }

  identifier = [deviceCopy identifier];
  [(NSMutableDictionary *)discoveredDevices setObject:deviceCopy forKeyedSubscript:identifier];

  accountAltDSID = [deviceCopy accountAltDSID];
  if (!accountAltDSID)
  {
    goto LABEL_14;
  }

  v10 = [(NSMutableDictionary *)selfCopy->_discoveredPeople valueForKey:accountAltDSID];
  v11 = v10;
  if (v10)
  {
    [v10 addDevice:deviceCopy];
    v12 = 0;
    goto LABEL_15;
  }

  v11 = [[RPRemoteDisplayPerson alloc] initPersonWithDevice:deviceCopy];
  if (!v11)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery <= 90 && (gLogCategory_RPRemoteDisplayDiscovery != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_RPRemoteDisplayDiscovery, "[RPRemoteDisplayDiscovery remoteDisplayFoundDevice:]", 90, "### Failed to initialize a person for device: %@\n", deviceCopy);
    }

LABEL_14:
    v12 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  discoveredPeople = selfCopy->_discoveredPeople;
  if (!discoveredPeople)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = selfCopy->_discoveredPeople;
    selfCopy->_discoveredPeople = v14;

    discoveredPeople = selfCopy->_discoveredPeople;
  }

  [(NSMutableDictionary *)discoveredPeople setObject:v11 forKeyedSubscript:accountAltDSID];
  v12 = 1;
LABEL_15:

  objc_sync_exit(selfCopy);
  if (v11)
  {
    if (v12)
    {
      personFoundHandler = selfCopy->_personFoundHandler;
    }

    else
    {
      personFoundHandler = selfCopy->_personChangedHandler;
    }

    v17 = _Block_copy(personFoundHandler);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, v11);
    }
  }

  deviceFoundHandler = selfCopy->_deviceFoundHandler;
  if (deviceFoundHandler)
  {
    deviceFoundHandler[2](deviceFoundHandler, deviceCopy);
  }
}

- (void)remoteDisplayLostDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  discoveredDevices = selfCopy->_discoveredDevices;
  identifier = [deviceCopy identifier];
  [(NSMutableDictionary *)discoveredDevices setObject:0 forKeyedSubscript:identifier];

  accountAltDSID = [deviceCopy accountAltDSID];
  if (accountAltDSID)
  {
    v8 = [(NSMutableDictionary *)selfCopy->_discoveredPeople valueForKey:accountAltDSID];
    v9 = v8;
    if (v8 && ([v8 removeDevice:deviceCopy], objc_msgSend(v9, "discoveredDevices"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11))
    {
      [(NSMutableDictionary *)selfCopy->_discoveredPeople removeObjectForKey:accountAltDSID];
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v9 = 0;
  }

  objc_sync_exit(selfCopy);
  if (v9)
  {
    if (v12)
    {
      personLostHandler = selfCopy->_personLostHandler;
    }

    else
    {
      personLostHandler = selfCopy->_personChangedHandler;
    }

    v14 = _Block_copy(personLostHandler);
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, v9);
    }
  }

  deviceLostHandler = selfCopy->_deviceLostHandler;
  if (deviceLostHandler)
  {
    deviceLostHandler[2](deviceLostHandler, deviceCopy);
  }
}

- (void)remoteDisplayChangedDevice:(id)device changes:(unsigned int)changes
{
  v4 = *&changes;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  discoveredDevices = selfCopy->_discoveredDevices;
  identifier = [deviceCopy identifier];
  v9 = [(NSMutableDictionary *)discoveredDevices objectForKeyedSubscript:identifier];

  if (v9)
  {
    v10 = selfCopy->_discoveredDevices;
    identifier2 = [deviceCopy identifier];
    [(NSMutableDictionary *)v10 setObject:deviceCopy forKeyedSubscript:identifier2];

    accountAltDSID = [deviceCopy accountAltDSID];
    if (accountAltDSID)
    {
      v13 = [(NSMutableDictionary *)selfCopy->_discoveredPeople valueForKey:accountAltDSID];
      v14 = v13;
      if (v13)
      {
        [v13 removeDevice:deviceCopy];
        [v14 addDevice:deviceCopy];
      }
    }

    else
    {
      v14 = 0;
    }

    objc_sync_exit(selfCopy);
    if (v14)
    {
      personChangedHandler = selfCopy->_personChangedHandler;
      if (personChangedHandler)
      {
        personChangedHandler[2](personChangedHandler, v14);
      }
    }

    deviceChangedHandler = selfCopy->_deviceChangedHandler;
    if (deviceChangedHandler)
    {
      deviceChangedHandler[2](deviceChangedHandler, deviceCopy, v4);
    }
  }

  else
  {
    [(RPRemoteDisplayDiscovery *)selfCopy remoteDisplayFoundDevice:deviceCopy];
    objc_sync_exit(selfCopy);

    v14 = 0;
  }
}

- (void)remoteDisplayUpdateErrorFlags:(unint64_t)flags
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_errorFlags != flags)
  {
    self->_errorFlags = flags;
    v5 = _Block_copy(self->_errorFlagsChangedHandler);
    if (v5)
    {
      v6 = v5;
      v5[2]();
      v5 = v6;
    }
  }
}

- (void)remoteDisplayDeviceSelected:(id)selected
{
  selectedCopy = selected;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = selectedCopy;
  if (selectedCopy)
  {
    accountAltDSID = [(RPRemoteDisplayPerson *)selectedCopy accountAltDSID];

    if (accountAltDSID)
    {
      v4 = [[RPRemoteDisplayPerson alloc] initPersonWithDevice:selectedCopy];
    }

    else
    {
      v4 = 0;
    }
  }

  personSelected = self->_personSelected;
  self->_personSelected = v4;

  v7 = _Block_copy(self->_deviceSelectedHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, selectedCopy);
  }
}

- (void)remoteDisplayNotifyDiscoverySessionState:(unsigned __int8)state forDevice:(id)device startReason:(unsigned __int8)reason
{
  stateCopy = state;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_currentState = stateCopy;
  objc_storeStrong(&self->_peerDeviceIdentifier, device);
  self->_discoverySessionStartReason = reason;
  discoverySessionStateChangedHandler = self->_discoverySessionStateChangedHandler;
  if (discoverySessionStateChangedHandler)
  {
    discoverySessionStateChangedHandler[2](discoverySessionStateChangedHandler, stateCopy, deviceCopy);
  }
}

- (void)remoteDisplayPersonDeclined
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = _Block_copy(self->_personDeclinedHandler);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)_lostAllDevices
{
  selfCopy = self;
  v20 = *MEMORY[0x1E69E9840];
  if (gLogCategory_RPRemoteDisplayDiscovery <= 30)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(RPRemoteDisplayDiscovery *)self _lostAllDevices];
    }
  }

  deviceLostHandler = selfCopy->_deviceLostHandler;
  obj = selfCopy;
  objc_sync_enter(obj);
  v5 = obj[2];
  if (deviceLostHandler)
  {
    allValues = [v5 allValues];
    [obj[2] removeAllObjects];
    v7 = obj[2];
    obj[2] = 0;

    objc_sync_exit(obj);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = allValues;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = selfCopy->_deviceLostHandler;
          if (v12)
          {
            v12[2](v12, *(*(&v15 + 1) + 8 * i));
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [v5 removeAllObjects];
    v13 = obj[2];
    obj[2] = 0;

    objc_sync_exit(obj);
  }
}

- (void)_lostAllPeople
{
  selfCopy = self;
  v17 = *MEMORY[0x1E69E9840];
  if (gLogCategory_RPRemoteDisplayDiscovery <= 30)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(RPRemoteDisplayDiscovery *)self _lostAllPeople];
    }
  }

  discoveredPeople = [(RPRemoteDisplayDiscovery *)selfCopy discoveredPeople];
  v5 = selfCopy;
  objc_sync_enter(v5);
  [(NSMutableDictionary *)v5->_discoveredPeople removeAllObjects];
  discoveredPeople = v5->_discoveredPeople;
  v5->_discoveredPeople = 0;

  personSelected = v5->_personSelected;
  v5->_personSelected = 0;

  objc_sync_exit(v5);
  if (v5->_personLostHandler)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = discoveredPeople;
    v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v9)
    {
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v8);
          }

          (*(v5->_personLostHandler + 2))(v5->_personLostHandler);
        }

        v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)shouldReportDevice:(id)device
{
  deviceCopy = device;
  v5 = (([deviceCopy statusFlags] & 0x80000) != 0 || (objc_msgSend(deviceCopy, "statusFlags") & 0x2000000000) != 0 && (self->_discoveryFlags & 1) != 0 || (objc_msgSend(deviceCopy, "statusFlags") & 0x1000000000) != 0 && (self->_discoveryFlags & 2) != 0) && -[RPRemoteDisplayDiscovery _checkRSSIThresholdForDevice:](self, "_checkRSSIThresholdForDevice:", deviceCopy);

  return v5;
}

- (void)enterDiscoverySessionWithDevice:(id)device reason:(id)reason
{
  xpcCnx = self->_xpcCnx;
  reasonCopy = reason;
  deviceCopy = device;
  v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:&__block_literal_global_14];
  [v8 remoteDisplayChangeDiscoverySessionStateForDevice:deviceCopy reason:reasonCopy];
}

void __67__RPRemoteDisplayDiscovery_enterDiscoverySessionWithDevice_reason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
  {
    v5 = v2;
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __67__RPRemoteDisplayDiscovery_enterDiscoverySessionWithDevice_reason___block_invoke_cold_1(v3);
      v3 = v5;
    }
  }
}

- (void)exitDiscoverySessionWithReason:(id)reason
{
  xpcCnx = self->_xpcCnx;
  reasonCopy = reason;
  v5 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:&__block_literal_global_123];
  [v5 remoteDisplayChangeDiscoverySessionStateForDevice:0 reason:reasonCopy];
}

void __59__RPRemoteDisplayDiscovery_exitDiscoverySessionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
  {
    v5 = v2;
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __59__RPRemoteDisplayDiscovery_exitDiscoverySessionWithReason___block_invoke_cold_1(v3);
      v3 = v5;
    }
  }
}

- (void)saveDedicatedDevice:(id)device
{
  xpcCnx = self->_xpcCnx;
  deviceCopy = device;
  v5 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:&__block_literal_global_126];
  [v5 remoteDisplayChangeDedicatedDevice:deviceCopy];
}

void __48__RPRemoteDisplayDiscovery_saveDedicatedDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
  {
    v5 = v2;
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __48__RPRemoteDisplayDiscovery_saveDedicatedDevice___block_invoke_cold_1(v3);
      v3 = v5;
    }
  }
}

- (void)remoteDisplayDedicatedDeviceChanged:(id)changed
{
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_dedicatedDevice == changedCopy)
  {
    objc_storeStrong(&selfCopy->_dedicatedDevice, changed);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = [(RPRemoteDisplayDevice *)changedCopy isEqualToDevice:?];
    objc_storeStrong(&selfCopy->_dedicatedDevice, changed);
    objc_sync_exit(selfCopy);

    if (!v6)
    {
      dedicatedDeviceChangedHandler = selfCopy->_dedicatedDeviceChangedHandler;
      if (dedicatedDeviceChangedHandler)
      {
        dedicatedDeviceChangedHandler[2](dedicatedDeviceChangedHandler, changedCopy);
      }
    }
  }
}

- (void)requestDedicatedDeviceConfirmationWithCompletion:(id)completion
{
  completionCopy = completion;
  [(RPRemoteDisplayDiscovery *)self _ensureXPCStarted];
  v5 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxyWithErrorHandler:&__block_literal_global_129];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__RPRemoteDisplayDiscovery_requestDedicatedDeviceConfirmationWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7C92DA8;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 remoteDisplayDedicatedDeviceConfirmationWithCompletion:v7];
}

void __77__RPRemoteDisplayDiscovery_requestDedicatedDeviceConfirmationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
  {
    v5 = v2;
    if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __77__RPRemoteDisplayDiscovery_requestDedicatedDeviceConfirmationWithCompletion___block_invoke_cold_1(v3);
      v3 = v5;
    }
  }
}

void __77__RPRemoteDisplayDiscovery_requestDedicatedDeviceConfirmationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if (gLogCategory_RPRemoteDisplayDiscovery <= 90)
    {
      if (gLogCategory_RPRemoteDisplayDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __77__RPRemoteDisplayDiscovery_requestDedicatedDeviceConfirmationWithCompletion___block_invoke_2_cold_1(v3);
        v3 = v6;
      }
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

@end