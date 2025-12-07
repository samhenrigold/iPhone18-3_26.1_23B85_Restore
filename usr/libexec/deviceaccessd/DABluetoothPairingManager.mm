@interface DABluetoothPairingManager
- (DABluetoothPairingManager)init;
- (id)_getNextTask;
- (id)getCurrentTaskBluetoothIdentifier;
- (void)_addNewTask:(id)task completion:(id)completion bluetoothOp:(int64_t)op pairCTKD:(BOOL)d displayName:(id)name taskTimeout:(id)timeout appConfirmsAuth:(BOOL)auth supportsHID:(BOOL)self0;
- (void)_reportEvent:(int64_t)event error:(id)error endCurrentTask:(BOOL)task;
- (void)_reportFailure:(id)failure;
- (void)_runNextTask;
- (void)cancelAll;
- (void)cancelCurrentTask;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)forgetBluetoothDevice:(id)device completion:(id)completion;
- (void)invalidate;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)persistBluetoothDevice:(id)device pairingRequired:(BOOL)required pairWithCTKD:(BOOL)d displayName:(id)name taskTimeout:(id)timeout appConfirmsAuth:(BOOL)auth supportsHID:(BOOL)iD completion:(id)self0;
- (void)respondToPairingRequest:(id)request type:(int64_t)type accept:(BOOL)accept passkey:(id)passkey;
@end

@implementation DABluetoothPairingManager

- (DABluetoothPairingManager)init
{
  v11.receiver = self;
  v11.super_class = DABluetoothPairingManager;
  v2 = [(DABluetoothPairingManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = 0;

    cbCentralManager = v3->_cbCentralManager;
    v3->_cbCentralManager = 0;

    cbPairingAgent = v3->_cbPairingAgent;
    v3->_cbPairingAgent = 0;

    v3->_currentTaskEndEvent = 0;
    v7 = objc_opt_new();
    taskList = v3->_taskList;
    v3->_taskList = v7;

    *&v3->_cbPowerOn = 0;
    v3->_taskTimeoutSeconds = 30.0;
    v9 = v3;
  }

  return v3;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C0F4;
  block[3] = &unk_100058B58;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)persistBluetoothDevice:(id)device pairingRequired:(BOOL)required pairWithCTKD:(BOOL)d displayName:(id)name taskTimeout:(id)timeout appConfirmsAuth:(BOOL)auth supportsHID:(BOOL)iD completion:(id)self0
{
  deviceCopy = device;
  nameCopy = name;
  timeoutCopy = timeout;
  completionCopy = completion;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036810(deviceCopy);
  }

  v20 = objc_retainBlock(completionCopy);
  v21 = deviceCopy;
  v22 = nameCopy;
  v23 = timeoutCopy;
  bluetoothUUID = self->_bluetoothUUID;
  self->_bluetoothUUID = v21;

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10002C2DC;
    v28[3] = &unk_100059980;
    v28[4] = self;
    v28[5] = v21;
    v28[7] = v23;
    v28[8] = v20;
    requiredCopy = required;
    dCopy = d;
    v28[6] = v22;
    authCopy = auth;
    iDCopy = iD;
    dispatch_async(dispatchQueue, v28);
  }

  else
  {
    sub_100036850(0, v25, v26);
  }
}

- (void)forgetBluetoothDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager forgetBluetoothDevice:completion:]", 50, "### forgetBluetoothDevice %@ cbManager %@", deviceCopy, self->_cbCentralManager);
  }

  v8 = objc_retainBlock(completionCopy);
  v11 = deviceCopy;
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002C46C;
    block[3] = &unk_1000599A8;
    block[4] = self;
    block[5] = v11;
    block[6] = v8;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    sub_1000368B0(0, v9, v10);
  }
}

- (void)cancelCurrentTask
{
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036910(self);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C584;
  block[3] = &unk_100058B58;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)cancelAll
{
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000369BC(self);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C7E8;
  block[3] = &unk_100058B58;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)getCurrentTaskBluetoothIdentifier
{
  currentTask = self->_currentTask;
  if (currentTask)
  {
    currentTask = [currentTask bluetoothUUID];
    v2 = vars8;
  }

  return currentTask;
}

- (void)_runNextTask
{
  selfCopy = self;
  if (dword_1000607A0 <= 50)
  {
    if (dword_1000607A0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      self = sub_100036A4C(selfCopy);
    }
  }

  p_currentTask = &selfCopy->_currentTask;
  currentTask = selfCopy->_currentTask;
  if (currentTask)
  {
    sub_100036A90(&selfCopy->_currentTask, currentTask);
    return;
  }

  if (selfCopy->_cbCentralManager)
  {
    if (!selfCopy->_cbPowerOn)
    {
      return;
    }

    if (dword_1000607A0 <= 50)
    {
      if (dword_1000607A0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100036B14(self, currentTask, v2);
      }
    }

    if ([(NSMutableArray *)selfCopy->_taskList count])
    {
      if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100036B30();
      }

      _getNextTask = [(DABluetoothPairingManager *)selfCopy _getNextTask];
      v9 = selfCopy->_currentTask;
      selfCopy->_currentTask = _getNextTask;

      selfCopy->_currentTaskEndEvent = 0;
      v10 = selfCopy->_currentTask;
      taskTimeout = [(DABluetoothTask *)v10 taskTimeout];
      integerValue = [taskTimeout integerValue];
      dispatchQueue = selfCopy->_dispatchQueue;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10002CF98;
      v35[3] = &unk_100058B58;
      v35[4] = selfCopy;
      [(DABluetoothTask *)v10 setTimerTimeout:dispatchQueue queue:v35 handler:integerValue];

      cbCentralManager = selfCopy->_cbCentralManager;
      bluetoothUUID = [(DABluetoothTask *)selfCopy->_currentTask bluetoothUUID];
      v36 = bluetoothUUID;
      v16 = [NSArray arrayWithObjects:&v36 count:1];
      v17 = [(CBCentralManager *)cbCentralManager retrievePeripheralsWithIdentifiers:v16];

      if (!v17 || [v17 count] != 1)
      {
        if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100036C78(&selfCopy->_currentTask);
        }

        bluetoothUUID2 = [(DABluetoothTask *)selfCopy->_currentTask bluetoothUUID];
        v29 = DAErrorF(350009, "persistBluetoothDevice btuuid %@ Invalid device task %@", bluetoothUUID2, selfCopy->_currentTask);
        [(DABluetoothPairingManager *)selfCopy _reportFailure:v29];

        goto LABEL_35;
      }

      v18 = [v17 objectAtIndexedSubscript:0];
      cbPeripheral = selfCopy->_cbPeripheral;
      selfCopy->_cbPeripheral = v18;

      btOperation = [(DABluetoothTask *)selfCopy->_currentTask btOperation];
      if (btOperation == 10)
      {
        goto LABEL_70;
      }

      if (btOperation == 30)
      {
        if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100036B70();
        }

        [(CBPairingAgent *)selfCopy->_cbPairingAgent unpairPeer:selfCopy->_cbPeripheral];
        goto LABEL_35;
      }

      if (btOperation == 20)
      {
LABEL_70:
        if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100036BB0();
        }

        if ([(CBPairingAgent *)selfCopy->_cbPairingAgent isPeerPaired:selfCopy->_cbPeripheral])
        {
          if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100036BF0();
          }

          [(DABluetoothPairingManager *)selfCopy pairingAgent:selfCopy->_cbPairingAgent peerDidCompletePairing:selfCopy->_cbPeripheral];
        }

        else
        {
          if ([*p_currentTask supportsHID] && (-[CBPairingAgent isPeerPaired:](selfCopy->_cbPairingAgent, "isPeerPaired:", selfCopy->_cbPeripheral) & 1) == 0)
          {
            [(CBPeripheral *)selfCopy->_cbPeripheral tag:@"ASK_ALLOW_HID"];
          }

          [(CBCentralManager *)selfCopy->_cbCentralManager connectPeripheral:selfCopy->_cbPeripheral options:0];
        }
      }

      else
      {
        if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100036C30(&selfCopy->_currentTask);
        }

        bluetoothUUID3 = [(DABluetoothTask *)selfCopy->_currentTask bluetoothUUID];
        v34 = DAErrorF(350011, "persistBluetoothDevice btuuid %@ invalid task %@", bluetoothUUID3, selfCopy->_currentTask);

        [(DABluetoothPairingManager *)selfCopy _reportFailure:v34];
      }

LABEL_35:

      return;
    }

    v30 = *p_currentTask;
    if (*p_currentTask)
    {
      bluetoothUUID4 = [v30 bluetoothUUID];
      v32 = DAErrorF(350008, "bluetooth is no longer turned on btuuid %@ task %@", bluetoothUUID4, selfCopy->_currentTask);
      [(DABluetoothPairingManager *)selfCopy _reportFailure:v32];
    }

    if (dword_1000607A0 <= 50)
    {
      if (dword_1000607A0 != -1 || (v30 = _LogCategory_Initialize(), v30))
      {
        sub_100036CD4(v30, v6, v7);
      }
    }

    [(DABluetoothPairingManager *)selfCopy cancelAll];
  }

  else
  {
    if (dword_1000607A0 <= 50)
    {
      if (dword_1000607A0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100036CF0(self, currentTask, v2);
      }
    }

    v21 = [CBCentralManager alloc];
    v22 = selfCopy->_dispatchQueue;
    v37 = CBManagerNeedsRestrictedStateOperation;
    v38 = &__kCFBooleanTrue;
    v23 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v24 = [v21 initWithDelegate:selfCopy queue:v22 options:v23];
    v25 = selfCopy->_cbCentralManager;
    selfCopy->_cbCentralManager = v24;

    sharedPairingAgent = [(CBCentralManager *)selfCopy->_cbCentralManager sharedPairingAgent];
    cbPairingAgent = selfCopy->_cbPairingAgent;
    selfCopy->_cbPairingAgent = sharedPairingAgent;

    [(CBPairingAgent *)selfCopy->_cbPairingAgent setDelegate:selfCopy];
  }
}

- (void)_reportEvent:(int64_t)event error:(id)error endCurrentTask:(BOOL)task
{
  taskCopy = task;
  errorCopy = error;
  if (dword_1000607A0 > 50 || dword_1000607A0 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_33;
  }

  if (event <= 19)
  {
    if (event)
    {
      v8 = errorCopy;
      if (event == 10)
      {
        v9 = @"DABluetoothEventAccessoryConnected";
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v9 = @"DABluetoothEventUnknown";
LABEL_16:
    v8 = errorCopy;
    goto LABEL_18;
  }

  if (event == 20)
  {
    v9 = @"DABluetoothEventCompleted";
    goto LABEL_16;
  }

  if (event == 30)
  {
    v9 = @"DABluetoothEventFailed";
    goto LABEL_16;
  }

  v8 = errorCopy;
  if (event == 40)
  {
    v9 = @"DABluetoothEventPairingRequested";
    goto LABEL_18;
  }

LABEL_17:
  v9 = @"?";
LABEL_18:
  currentTaskEndEvent = self->_currentTaskEndEvent;
  if (currentTaskEndEvent <= 19)
  {
    if (!currentTaskEndEvent)
    {
      v11 = @"DABluetoothEventUnknown";
      goto LABEL_30;
    }

    if (currentTaskEndEvent == 10)
    {
      v11 = @"DABluetoothEventAccessoryConnected";
      goto LABEL_30;
    }

LABEL_29:
    v11 = @"?";
    goto LABEL_30;
  }

  if (currentTaskEndEvent == 20)
  {
    v11 = @"DABluetoothEventCompleted";
    goto LABEL_30;
  }

  if (currentTaskEndEvent == 30)
  {
    v11 = @"DABluetoothEventFailed";
    goto LABEL_30;
  }

  if (currentTaskEndEvent != 40)
  {
    goto LABEL_29;
  }

  v11 = @"DABluetoothEventPairingRequested";
LABEL_30:
  v12 = "no";
  if (taskCopy)
  {
    v12 = "yes";
  }

  LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager _reportEvent:error:endCurrentTask:]", 50, "### _reportEvent event %@ _currentTaskEndEvent %@ errorcode %@ endTask %s %@", v9, v11, v8, v12, self->_currentTask);
LABEL_33:
  if (!self->_currentTaskEndEvent)
  {
    currentTask = self->_currentTask;
    if (currentTask)
    {
      pairedCTKD = [(DABluetoothTask *)currentTask pairedCTKD];
      identifier = [(CBPeripheral *)self->_cbPeripheral identifier];
      v16 = [[DABluetoothPairingInfo alloc] initWithBluetoothIdentifier:identifier pairedCTKD:pairedCTKD appConfirmsAuth:-[DABluetoothTask appConfirmsAuth](self->_currentTask pairingRequired:{"appConfirmsAuth"), -[DABluetoothTask btOperation](self->_currentTask, "btOperation") == 10}];
      if (!errorCopy)
      {
        cbPeripheral = self->_cbPeripheral;
        displayName = [(DABluetoothTask *)self->_currentTask displayName];
        [(CBPeripheral *)cbPeripheral setCustomProperty:@"ASK_DISPLAY_NAME" value:displayName];
      }

      eventHandler = [(DABluetoothTask *)self->_currentTask eventHandler];
      (eventHandler)[2](eventHandler, event, v16, errorCopy);
    }
  }

  if (taskCopy)
  {
    self->_busy = [(NSMutableArray *)self->_taskList count]!= 0;
    [(DABluetoothTask *)self->_currentTask cancelTimer];
    v20 = self->_cbPeripheral;
    self->_cbPeripheral = 0;
    self->_currentTaskEndEvent = event;

    v21 = self->_currentTask;
    self->_currentTask = 0;

    [(DABluetoothPairingManager *)self _runNextTask];
  }
}

- (void)_reportFailure:(id)failure
{
  failureCopy = failure;
  v6 = failureCopy;
  if (dword_1000607A0 <= 50)
  {
    if (dword_1000607A0 != -1 || (v5 = _LogCategory_Initialize(), failureCopy = v6, v5))
    {
      LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager _reportFailure:]", 50, "### _reportFailure %@ error %@", self->_currentTask, failureCopy);
      failureCopy = v6;
    }
  }

  [(DABluetoothPairingManager *)self _reportEvent:30 error:failureCopy endCurrentTask:1];
}

- (void)centralManagerDidUpdateState:(id)state
{
  v5 = self->_cbCentralManager;
  v4 = [(CBCentralManager *)v5 state]== 5 || [(CBCentralManager *)v5 state]== 10;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036D28(v4);
  }

  self->_cbPowerOn = v4;
  [(DABluetoothPairingManager *)self _runNextTask];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager peripheral:didDiscoverServices:]", 50, "### peripheral didDiscoverServices %@ %@ %@", peripheralCopy, servicesCopy, self->_currentTask);
  }

  if (!servicesCopy && self->_currentTask && ([peripheralCopy identifier], v8 = objc_claimAutoreleasedReturnValue(), -[DABluetoothTask bluetoothUUID](self->_currentTask, "bluetoothUUID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
    mitmPairing = self->_mitmPairing;
    pairCTKD = [(DABluetoothTask *)self->_currentTask pairCTKD];
    v17[0] = CBPairingOptionsUseMITMAuthentication;
    v13 = [NSNumber numberWithBool:mitmPairing];
    v17[1] = @"kCBMsgArgPairingOptionsDisableCTKD";
    v18[0] = v13;
    v14 = [NSNumber numberWithInt:pairCTKD ^ 1];
    v18[1] = v14;
    identifier = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager peripheral:didDiscoverServices:]", 50, "### peripheral didDiscoverServices starting pairing to %@ options %@", peripheralCopy, identifier);
    }

    [(CBPairingAgent *)self->_cbPairingAgent pairPeer:peripheralCopy options:identifier];
  }

  else
  {
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager peripheral:didDiscoverServices:]", 50, "### peripheral didDiscoverServices error discovering services %@ %@, failing", servicesCopy, peripheralCopy);
    }

    identifier = [peripheralCopy identifier];
    v16 = DAErrorF(350013, "peripheral didDiscoverServices btuuid %@ Failed to discover services task %@", identifier, self->_currentTask);
    [(DABluetoothPairingManager *)self _reportFailure:v16];
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager centralManager:didConnectPeripheral:]", 50, "### centralManager didConnectPeripheral %@ %@", peripheralCopy, self->_currentTask);
  }

  if (!self->_currentTask || ([peripheralCopy identifier], v7 = objc_claimAutoreleasedReturnValue(), -[DABluetoothTask bluetoothUUID](self->_currentTask, "bluetoothUUID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, !v9))
  {
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036DE8(peripheralCopy);
    }

    identifier = [peripheralCopy identifier];
    DAErrorF(350013, "centralManager didConnectPeripheral btuuid %@ Failed to connect task %@", identifier, self->_currentTask);
    goto LABEL_17;
  }

  btOperation = [(DABluetoothTask *)self->_currentTask btOperation];
  currentTask = self->_currentTask;
  if (btOperation != 10)
  {
    if ([(DABluetoothTask *)currentTask btOperation]== 20)
    {
      [(CBPeripheral *)self->_cbPeripheral tag:@"DA_ASK_RETAIN_DEVICE"];
      v14 = [(DABluetoothTask *)self->_currentTask appConfirmsAuth]^ 1;
      selfCopy2 = self;
      v13 = 20;
LABEL_23:
      [(DABluetoothPairingManager *)selfCopy2 _reportEvent:v13 error:0 endCurrentTask:v14];
      goto LABEL_18;
    }

    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036D68(peripheralCopy);
    }

    identifier = [peripheralCopy identifier];
    DAErrorF(350013, "centralManager didConnectPeripheral btuuid %@ invalid btOperation task %@", identifier, self->_currentTask);
    v16 = LABEL_17:;
    [(DABluetoothPairingManager *)self _reportFailure:v16];

    goto LABEL_18;
  }

  if ([(DABluetoothTask *)currentTask appConfirmsAuth])
  {
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036DA8(peripheralCopy);
    }

    selfCopy2 = self;
    v13 = 10;
    v14 = 0;
    goto LABEL_23;
  }

  [peripheralCopy setDelegate:self];
  [peripheralCopy discoverServices:0];
LABEL_18:
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager centralManager:didDisconnectPeripheral:error:]", 50, "### centralManager didDisconnectPeripheral %@ error %@ %@", peripheralCopy, errorCopy, self->_currentTask);
  }

  [(CBPeripheral *)self->_cbPeripheral untag:@"DA_ASK_RETAIN_DEVICE"];
  identifier = [peripheralCopy identifier];
  v11 = DAErrorF(350012, "centralManager didDisconnectPeripheral btuuid %@ Disconnected task %@", identifier, self->_currentTask);
  [(DABluetoothPairingManager *)self _reportFailure:v11];
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  agentCopy = agent;
  pairingCopy = pairing;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager pairingAgent:peerDidCompletePairing:]", 50, "### peerDidCompletePairing %@ %@", pairingCopy, self->_currentTask);
  }

  if (self->_currentTask)
  {
    identifier = [pairingCopy identifier];
    bluetoothUUID = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
    v9 = [identifier isEqual:bluetoothUUID];

    if (v9)
    {
      if ([(DABluetoothTask *)self->_currentTask supportsHID]&& ([(CBPeripheral *)self->_cbPeripheral hasTag:@"_HID_DEVICE_"]& 1) == 0)
      {
        [(CBPairingAgent *)self->_cbPairingAgent unpairPeer:self->_cbPeripheral];
        identifier2 = [pairingCopy identifier];
        v11 = DAErrorF(350010, "Unpairing btuuid %@ task %@, because accessory does not support HID servie despite app claimed it to.", identifier2, self->_currentTask);
        [(DABluetoothPairingManager *)self _reportFailure:v11];
      }

      [(CBPeripheral *)self->_cbPeripheral tag:@"DA_ASK_RETAIN_DEVICE"];
      if ([(DABluetoothTask *)self->_currentTask pairCTKD]&& [(CBPeripheral *)self->_cbPeripheral hasTag:@"_CTKD_"])
      {
        if (self->_blockIncomingClassicCnx)
        {
          [(CBPeripheral *)self->_cbPeripheral tag:@"_DENY_INCOMING_CLASSIC_CONNECTION_"];
        }

        [(DABluetoothTask *)self->_currentTask setPairedCTKD:1];
      }

      [(DABluetoothPairingManager *)self _reportEvent:20 error:0 endCurrentTask:[(DABluetoothTask *)self->_currentTask appConfirmsAuth]^ 1];
    }
  }
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  errorCopy = error;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036E28(errorCopy, self, pairingCopy);
  }

  if (self->_currentTask)
  {
    identifier = [pairingCopy identifier];
    bluetoothUUID = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
    v12 = [identifier isEqual:bluetoothUUID];

    if (v12)
    {
      [pairingCopy untag:@"DA_ASK_RETAIN_DEVICE"];
      identifier2 = [pairingCopy identifier];
      v14 = DAErrorF(350010, "peerDidFailToCompletePairing btuuid %@ task %@ error %@", identifier2, self->_currentTask, errorCopy);
      [(DABluetoothPairingManager *)self _reportFailure:v14];
    }
  }
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  agentCopy = agent;
  unpairCopy = unpair;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager pairingAgent:peerDidUnpair:]", 50, "### peerDidUnpair %@ %@", unpairCopy, self->_currentTask);
  }

  if (self->_currentTask)
  {
    identifier = [unpairCopy identifier];
    bluetoothUUID = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
    v9 = [identifier isEqual:bluetoothUUID];

    if (v9)
    {
      [(DABluetoothPairingManager *)self _reportEvent:20 error:0 endCurrentTask:1];
    }
  }
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager pairingAgent:peerDidRequestPairing:type:passkey:]", 50, "### peerDidRequestPairing %@ pairingtype: %d passkey: %@ %@", pairingCopy, type, passkeyCopy, self->_currentTask);
  }

  if (self->_currentTask)
  {
    identifier = [pairingCopy identifier];
    bluetoothUUID = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
    v14 = [identifier isEqual:bluetoothUUID];

    if (v14)
    {
      if (type > 1)
      {
        if (type == 4)
        {
          v15 = 0;
          v16 = 40;
          goto LABEL_17;
        }

        if (type == 2)
        {
          v15 = 0;
          v16 = 30;
          goto LABEL_17;
        }
      }

      else
      {
        if (!type)
        {
          v15 = 0;
          v16 = 10;
          goto LABEL_17;
        }

        if (type == 1)
        {
          v15 = 0;
          v16 = 20;
LABEL_17:
          v17 = passkeyCopy;
          if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100036E9C(pairingCopy);
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if (v15)
          {
LABEL_21:
            identifier2 = [pairingCopy identifier];
            eventHandler = DAErrorF(350010, "peerDidRequestPairing btuuid %@ pairingType %ld task %@", identifier2, type, self->_currentTask);
            [(DABluetoothPairingManager *)self _reportEvent:30 error:eventHandler endCurrentTask:1];
LABEL_26:

            goto LABEL_27;
          }

          v20 = [DABluetoothPairingInfo alloc];
          identifier3 = [pairingCopy identifier];
          identifier2 = [v20 initWithBluetoothIdentifier:identifier3 pairingType:v16];

          if (identifier2)
          {
            [identifier2 setPasskey:v17];
            eventHandler = [(DABluetoothTask *)self->_currentTask eventHandler];
            (eventHandler)[2](eventHandler, 40, identifier2, 0);
          }

          else
          {
            eventHandler = [(DABluetoothTask *)self->_currentTask eventHandler];
            identifier4 = [pairingCopy identifier];
            v23 = DAErrorF(350010, "Unable to create DABluetoothPairingInfo btuuid %@ pairingType %ld task %@ missing passkey", identifier4, type, self->_currentTask);
            (eventHandler)[2](eventHandler, 30, 0, v23);
          }

          goto LABEL_26;
        }
      }

      v16 = 0;
      v15 = 1;
      goto LABEL_17;
    }
  }

LABEL_27:
}

- (void)respondToPairingRequest:(id)request type:(int64_t)type accept:(BOOL)accept passkey:(id)passkey
{
  acceptCopy = accept;
  requestCopy = request;
  passkeyCopy = passkey;
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager respondToPairingRequest:type:accept:passkey:]", 50, "### respondToPairingRequest btUUID %@ type %d accept %d passkey %@ _cbPeripheral %@ %@ ", requestCopy, type, acceptCopy, passkeyCopy, self->_cbPeripheral, self->_currentTask);
  }

  bluetoothUUID = [(DABluetoothTask *)self->_currentTask bluetoothUUID];
  if (![requestCopy isEqual:bluetoothUUID])
  {
    goto LABEL_25;
  }

  cbPeripheral = self->_cbPeripheral;

  if (cbPeripheral)
  {
    bluetoothUUID = self->_cbPeripheral;
    if (type <= 19)
    {
      if (!type)
      {
        DAErrorF(350010, "respondToPairingRequest btuuid %@ pairingType %ld task %@", requestCopy, 3, self->_currentTask);
        v17 = LABEL_24:;
        [(DABluetoothPairingManager *)self _reportEvent:30 error:v17 endCurrentTask:1];

        goto LABEL_25;
      }

      if (type == 10)
      {
        v14 = 0;
        v15 = 0;
LABEL_20:
        [(CBPairingAgent *)self->_cbPairingAgent respondToPairingRequest:bluetoothUUID type:v14 accept:acceptCopy data:v15];

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
      switch(type)
      {
        case 20:
          v14 = 1;
          if (!passkeyCopy)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        case 30:
          v14 = 2;
          if (!passkeyCopy)
          {
LABEL_23:
            DAErrorF(350010, "respondToPairingRequest btuuid %@ pairingType %ld task %@ missing passkey", requestCopy, v14, self->_currentTask);
            goto LABEL_24;
          }

LABEL_19:
          v18 = CBPairingAgentPairingDataPasskeyKey;
          v19 = passkeyCopy;
          v16 = passkeyCopy;
          v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

          goto LABEL_20;
        case 40:
          v14 = 4;
          if (!passkeyCopy)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
      }
    }

    v14 = 3;
    if (!passkeyCopy)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_26:
}

- (void)_addNewTask:(id)task completion:(id)completion bluetoothOp:(int64_t)op pairCTKD:(BOOL)d displayName:(id)name taskTimeout:(id)timeout appConfirmsAuth:(BOOL)auth supportsHID:(BOOL)self0
{
  dCopy = d;
  taskCopy = task;
  timeoutCopy = timeout;
  nameCopy = name;
  completionCopy = completion;
  v19 = objc_alloc_init(DABluetoothTask);
  [(DABluetoothTask *)v19 setBluetoothUUID:taskCopy];
  [(DABluetoothTask *)v19 setEventHandler:completionCopy];

  [(DABluetoothTask *)v19 setBtOperation:op];
  [(DABluetoothTask *)v19 setPairCTKD:dCopy];
  [(DABluetoothTask *)v19 setDisplayName:nameCopy];

  [(DABluetoothTask *)v19 setTaskTimeout:timeoutCopy];
  [(DABluetoothTask *)v19 setAppConfirmsAuth:auth];
  [(DABluetoothTask *)v19 setSupportsHID:iD];
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036EDC(v19);
  }

  if (!self->_taskList)
  {
    v20 = objc_opt_new();
    taskList = self->_taskList;
    self->_taskList = v20;
  }

  currentTask = self->_currentTask;
  if (!currentTask)
  {
    if (dword_1000607A0 > 50 || dword_1000607A0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_21;
    }

LABEL_16:
    sub_100036EDC(v19);
LABEL_21:
    [(NSMutableArray *)self->_taskList addObject:v19];
    goto LABEL_22;
  }

  bluetoothUUID = [(DABluetoothTask *)currentTask bluetoothUUID];
  bluetoothUUID2 = [(DABluetoothTask *)v19 bluetoothUUID];
  if (![bluetoothUUID isEqual:bluetoothUUID2])
  {

    goto LABEL_18;
  }

  btOperation = [(DABluetoothTask *)self->_currentTask btOperation];
  btOperation2 = [(DABluetoothTask *)v19 btOperation];

  if (btOperation != btOperation2)
  {
LABEL_18:
    if (dword_1000607A0 > 50 || dword_1000607A0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036F1C(taskCopy);
  }

LABEL_22:
  self->_busy = 1;
}

- (id)_getNextTask
{
  if ([(NSMutableArray *)self->_taskList count])
  {
    v3 = [(NSMutableArray *)self->_taskList objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->_taskList removeObjectAtIndex:0];
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000607A0, "[DABluetoothPairingManager _getNextTask]", 50, "### _getNextTask %@, remaining %@", v3, self->_taskList);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end