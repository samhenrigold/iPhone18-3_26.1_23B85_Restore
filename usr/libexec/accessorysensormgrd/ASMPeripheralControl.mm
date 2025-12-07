@interface ASMPeripheralControl
+ (id)sharedInstance;
- (ASMPeripheralControl)init;
- (BOOL)_restartIfNeeded;
- (void)_accessoryDiscoveryEnsureStarted;
- (void)_accessoryDiscoveryEnsureStopped;
- (void)_activate;
- (void)_activateSecureSensorGATTServiceForPeripheral:(id)peripheral;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)_ensureOSTransaction;
- (void)_invalidate;
- (void)_invalidateSecureSensorGATTServiceForPeripheral:(id)peripheral;
- (void)_modifyPeripheralConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion;
- (void)_peripheralPerformActionsOnConnection:(id)connection;
- (void)_releaseOSTransaction;
- (void)_writeWithData:(id)data characteristic:(id)characteristic identifier:(id)identifier completion:(id)completion;
- (void)activate;
- (void)invalidate;
- (void)modifyPeripheralConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion;
- (void)writeWithData:(id)data characteristic:(id)characteristic identifier:(id)identifier completion:(id)completion;
@end

@implementation ASMPeripheralControl

+ (id)sharedInstance
{
  if (qword_10001A610 != -1)
  {
    sub_100008E54();
  }

  v3 = qword_10001A608;

  return v3;
}

- (ASMPeripheralControl)init
{
  v8.receiver = self;
  v8.super_class = ASMPeripheralControl;
  v2 = [(ASMPeripheralControl *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ASMPeripheralControl.daemon.queue", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000046FC;
  block[3] = &unk_1000143A0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_activateCalled)
  {
    v8 = v3;
    selfCopy = self;
    self->_activateCalled = 1;
    if (dword_10001A398 <= 30)
    {
      if (dword_10001A398 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100008E68(self, a2, v2);
      }
    }

    [(ASMPeripheralControl *)selfCopy _accessoryDiscoveryEnsureStarted:v4];

    [(ASMPeripheralControl *)selfCopy _startASMExclaveDaemon];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000047FC;
  block[3] = &unk_1000143A0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  selfCopy = self;
  if (dword_10001A398 <= 30)
  {
    if (dword_10001A398 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100008E84(self, a2, v2);
    }
  }

  peripheralMap = selfCopy->_peripheralMap;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000048D4;
  v6[3] = &unk_100014508;
  v6[4] = selfCopy;
  [(NSMutableDictionary *)peripheralMap enumerateKeysAndObjectsUsingBlock:v6];
  [(NSMutableDictionary *)selfCopy->_peripheralMap removeAllObjects];
  v5 = selfCopy->_peripheralMap;
  selfCopy->_peripheralMap = 0;

  [(ASMPeripheralControl *)selfCopy _accessoryDiscoveryEnsureStopped];
  selfCopy->_activateCalled = 0;
}

- (BOOL)_restartIfNeeded
{
  v3 = [(NSMutableDictionary *)self->_peripheralMap count];
  if (v3)
  {
    [(ASMPeripheralControl *)self _invalidate];
    [(ASMPeripheralControl *)self _activate];
  }

  return v3 != 0;
}

- (void)modifyPeripheralConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004A8C;
  v15[3] = &unk_100014450;
  v15[4] = self;
  v16 = configurationCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = configurationCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)_modifyPeripheralConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  completionCopy = completion;
  if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_10001A398, "[ASMPeripheralControl _modifyPeripheralConfiguration:identifier:completion:]", 30, "modifyPeripheralConfiguration: %@, identifier: %@", configurationCopy, identifierCopy);
  }

  v10 = [(NSMutableDictionary *)self->_peripheralMap objectForKeyedSubscript:identifierCopy];
  if (!v10)
  {
    v11 = NSErrorF(NSOSStatusErrorDomain, 4294960569, "peripheral not found");
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v11);
    }
  }
}

- (void)writeWithData:(id)data characteristic:(id)characteristic identifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  characteristicCopy = characteristic;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004CCC;
  block[3] = &unk_100014530;
  block[4] = self;
  v20 = dataCopy;
  v21 = characteristicCopy;
  v22 = identifierCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  v17 = characteristicCopy;
  v18 = dataCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_writeWithData:(id)data characteristic:(id)characteristic identifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  characteristicCopy = characteristic;
  identifierCopy = identifier;
  completionCopy = completion;
  v14 = [(NSMutableDictionary *)self->_peripheralMap objectForKeyedSubscript:identifierCopy];
  if (v14)
  {
    v15 = [(NSMutableDictionary *)self->_peripheralMap objectForKeyedSubscript:identifierCopy];
    gattConnectionManager = [v15 gattConnectionManager];

    if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
    {
      sub_100008EA0(identifierCopy);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100004E90;
    v17[3] = &unk_100014558;
    v18 = identifierCopy;
    v19 = completionCopy;
    [gattConnectionManager writeWithData:dataCopy characteristic:characteristicCopy completion:v17];
  }

  else
  {
    gattConnectionManager = NSErrorF(NSOSStatusErrorDomain, 4294960569, "peripheral not found");
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, gattConnectionManager);
    }
  }
}

- (void)_peripheralPerformActionsOnConnection:(id)connection
{
  [(ASMPeripheralControl *)self _activateSecureSensorGATTServiceForPeripheral:connection];

  [(ASMPeripheralControl *)self _startASMExclaveDaemon];
}

- (void)_accessoryDiscoveryEnsureStarted
{
  v3 = self->_deviceManager;
  if (!v3)
  {
    v4 = objc_alloc_init(AADeviceManager);
    deviceManager = self->_deviceManager;
    self->_deviceManager = v4;

    [(AADeviceManager *)v4 setDispatchQueue:self->_dispatchQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100005190;
    v10[3] = &unk_1000143A0;
    v10[4] = self;
    [(AADeviceManager *)v4 setInterruptionHandler:v10];
    [(AADeviceManager *)v4 setInvalidationHandler:&stru_100014578];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100005270;
    v9[3] = &unk_1000145A0;
    v9[4] = self;
    [(AADeviceManager *)v4 setDeviceFoundHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000527C;
    v8[3] = &unk_1000145A0;
    v8[4] = self;
    [(AADeviceManager *)v4 setDeviceLostHandler:v8];
    if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
    {
      sub_100008EE0(v4);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000530C;
    v6[3] = &unk_1000145C8;
    v6[4] = self;
    v3 = v4;
    v7 = v3;
    [(AADeviceManager *)v3 activateWithCompletion:v6];
  }
}

- (void)_accessoryDiscoveryEnsureStopped
{
  deviceManager = self->_deviceManager;
  if (deviceManager)
  {
    [(AADeviceManager *)deviceManager invalidate];
    v4 = self->_deviceManager;
    self->_deviceManager = 0;
  }
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [foundCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_peripheralMap objectForKeyedSubscript:identifier];
    if (v5)
    {
      v6 = v5;
      [(ASMPeripheral *)v5 updateWithAADevice:foundCopy];
    }

    else
    {
      if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
      {
        sub_100009074(foundCopy);
      }

      [(ASMPeripheralControl *)self _ensureOSTransaction];
      v6 = objc_alloc_init(ASMPeripheral);
      peripheralMap = self->_peripheralMap;
      if (!peripheralMap)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = self->_peripheralMap;
        self->_peripheralMap = v8;

        peripheralMap = self->_peripheralMap;
      }

      [(NSMutableDictionary *)peripheralMap setObject:v6 forKeyedSubscript:identifier];
      [(ASMPeripheral *)v6 updateWithAADevice:foundCopy];
      [(ASMPeripheralControl *)self _peripheralPerformActionsOnConnection:v6];
    }
  }

  else
  {
    sub_1000090B4(foundCopy);
  }
}

- (void)_deviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_peripheralMap objectForKeyedSubscript:identifier];
    if (v5)
    {
      if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
      {
        sub_100009130(v5);
      }

      [(ASMPeripheralControl *)self _peripheralPerformActionsOnDisconnection:v5];
      [(NSMutableDictionary *)self->_peripheralMap setObject:0 forKeyedSubscript:identifier];
      if (![(NSMutableDictionary *)self->_peripheralMap count])
      {
        [(ASMPeripheralControl *)self _releaseOSTransaction];
      }
    }
  }

  else
  {
    sub_100009170(lostCopy);
  }
}

- (void)_activateSecureSensorGATTServiceForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  bluetoothUUID = [peripheralCopy bluetoothUUID];
  if (bluetoothUUID)
  {
    gattConnectionManager = [peripheralCopy gattConnectionManager];
    if (gattConnectionManager)
    {
      sub_1000091EC(bluetoothUUID, gattConnectionManager, &v11);
      v8 = v11;
    }

    else
    {
      v7 = [[ASMGATTConnectionManager alloc] initWithQueue:self->_dispatchQueue];
      [(ASMGATTConnectionManager *)v7 setRouteUpdateHandler:&stru_100014608];
      [peripheralCopy setGattConnectionManager:v7];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100005780;
      v9[3] = &unk_1000145C8;
      v9[4] = bluetoothUUID;
      v8 = v7;
      v10 = v8;
      [(ASMGATTConnectionManager *)v8 activateWithPeripheral:peripheralCopy completion:v9];
    }
  }

  else
  {
    sub_10000927C();
  }
}

- (void)_invalidateSecureSensorGATTServiceForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  gattConnectionManager = [peripheralCopy gattConnectionManager];
  v4 = gattConnectionManager;
  if (gattConnectionManager)
  {
    [gattConnectionManager invalidate];
    [peripheralCopy setGattConnectionManager:0];
  }
}

- (void)_ensureOSTransaction
{
  if (!self->_transaction)
  {
    selfCopy = self;
    if (dword_10001A398 <= 30)
    {
      if (dword_10001A398 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100009330(self, a2, v2);
      }
    }

    v4 = os_transaction_create();
    transaction = selfCopy->_transaction;
    selfCopy->_transaction = v4;

    if (!selfCopy->_transaction && dword_10001A398 <= 60 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
    {
      sub_10000934C();
    }
  }
}

- (void)_releaseOSTransaction
{
  transaction = self->_transaction;
  if (transaction)
  {
    self->_transaction = 0;

    if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
    {

      LogPrintF(&dword_10001A398, "[ASMPeripheralControl _releaseOSTransaction]", 30, "Removing os transaction for connected peripherals.");
    }
  }
}

@end