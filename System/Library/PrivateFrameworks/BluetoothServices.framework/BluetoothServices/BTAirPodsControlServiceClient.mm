@interface BTAirPodsControlServiceClient
- (BOOL)_runConnectStart;
- (BOOL)_runDiscoverCharacteristicsStart;
- (BOOL)_runDiscoverServicesStart;
- (BOOL)_runInit;
- (BOOL)isFindmyManaged;
- (BTAirPodsControlServiceClient)init;
- (uint64_t)_run;
- (void)_abortRequestsWithError:(id)error;
- (void)_completeRequest:(id)request error:(id)error;
- (void)_invalidate;
- (void)_reportError:(id)error;
- (void)_run;
- (void)_runConnectStart;
- (void)_runDiscoverCharacteristicsStart;
- (void)_runDiscoverServicesStart;
- (void)_runProcessRequest:(id)request;
- (void)_runProcessRequests;
- (void)_setupTimeoutForRequest:(id)request;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didUpdateFindMyPeripherals:(id)peripherals;
- (void)centralManagerDidUpdateState:(id)state;
- (void)getSilentModeWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)setSilentMode:(BOOL)mode completionHandler:(id)handler;
@end

@implementation BTAirPodsControlServiceClient

- (BTAirPodsControlServiceClient)init
{
  v6.receiver = self;
  v6.super_class = BTAirPodsControlServiceClient;
  v2 = [(BTAirPodsControlServiceClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__BTAirPodsControlServiceClient_invalidate__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__43__BTAirPodsControlServiceClient_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[4];
  if ((*(v4 + 49) & 1) == 0)
  {
    v5 = result;
    *(v4 + 49) = 1;
    if (gLogCategory_BTAirPodsControlServiceClient <= 30)
    {
      if (gLogCategory_BTAirPodsControlServiceClient != -1 || (result = _LogCategory_Initialize(), result))
      {
        __43__BTAirPodsControlServiceClient_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    v6 = v5[4];

    return [v6 _invalidate];
  }

  return result;
}

- (void)_invalidate
{
  v9 = BTErrorF(4294896148, "Invalidated", v2, v3, v4, v5, v6, v7, v16);
  [(BTAirPodsControlServiceClient *)self _abortRequestsWithError:v9];

  [(CBCentralManager *)self->_centralManager setDelegate:0];
  centralManager = self->_centralManager;
  self->_centralManager = 0;

  [(CBPeripheral *)self->_peripheral setDelegate:0];
  peripheral = self->_peripheral;
  self->_peripheral = 0;

  requestArray = self->_requestArray;
  self->_requestArray = 0;

  if (gLogCategory_BTAirPodsControlServiceClient <= 30)
  {
    if (gLogCategory_BTAirPodsControlServiceClient != -1 || (v13 = _LogCategory_Initialize(), v13))
    {
      [(BTAirPodsControlServiceClient *)v13 _invalidate];
    }
  }
}

- (void)getSilentModeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__BTAirPodsControlServiceClient_getSilentModeWithCompletionHandler___block_invoke;
  v7[3] = &unk_278D11920;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __68__BTAirPodsControlServiceClient_getSilentModeWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 32);
  if (*(*(a1 + 32) + 49) == 1)
  {
    v10 = BTErrorF(4294896148, "Request after invalidate", a3, a4, a5, a6, a7, a8, v15);
    v16 = v10;
    if (gLogCategory_BTAirPodsControlServiceClient <= 90)
    {
      if (gLogCategory_BTAirPodsControlServiceClient != -1 || (v11 = _LogCategory_Initialize(), v10 = v16, v11))
      {
        __68__BTAirPodsControlServiceClient_getSilentModeWithCompletionHandler___block_invoke_cold_2(v9, v10);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v16 = objc_alloc_init(BTAirPodsControlRequest);
    [(BTAirPodsControlRequest *)v16 setClient:*(a1 + 32)];
    [(BTAirPodsControlRequest *)v16 setGetHandler:*(a1 + 40)];
    [*(a1 + 32) _setupTimeoutForRequest:v16];
    v12 = *(*(a1 + 32) + 72);
    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = *(*v9 + 72);
      *(*v9 + 72) = v13;

      v12 = *(*v9 + 72);
    }

    [v12 addObject:v16];
    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      __68__BTAirPodsControlServiceClient_getSilentModeWithCompletionHandler___block_invoke_cold_1(v9);
    }

    [*v9 _run];
  }
}

- (void)setSilentMode:(BOOL)mode completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BTAirPodsControlServiceClient_setSilentMode_completionHandler___block_invoke;
  block[3] = &unk_278D11B48;
  modeCopy = mode;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __65__BTAirPodsControlServiceClient_setSilentMode_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 32);
  if (*(*(a1 + 32) + 49) == 1)
  {
    v14 = BTErrorF(4294896148, "Request after invalidate", a3, a4, a5, a6, a7, a8, v13);
    if (gLogCategory_BTAirPodsControlServiceClient <= 90 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      __65__BTAirPodsControlServiceClient_setSilentMode_completionHandler___block_invoke_cold_2(v9, a1, v14);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = objc_alloc_init(BTAirPodsControlRequest);
    [(BTAirPodsControlRequest *)v14 setClient:*(a1 + 32)];
    [(BTAirPodsControlRequest *)v14 setEnabled:*(a1 + 48)];
    [(BTAirPodsControlRequest *)v14 setSetHandler:*(a1 + 40)];
    [*(a1 + 32) _setupTimeoutForRequest:v14];
    v10 = *(*(a1 + 32) + 72);
    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = *(*v9 + 72);
      *(*v9 + 72) = v11;

      v10 = *(*v9 + 72);
    }

    [v10 addObject:v14];
    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      __65__BTAirPodsControlServiceClient_setSilentMode_completionHandler___block_invoke_cold_1(v9, (a1 + 48));
    }

    [*v9 _run];
  }
}

- (BOOL)isFindmyManaged
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self->_deviceSN)
  {
    v3 = [objc_opt_new() init];
    [v3 addObject:self->_deviceSN];
    centralManager = self->_centralManager;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__BTAirPodsControlServiceClient_isFindmyManaged__block_invoke;
    v7[3] = &unk_278D11B70;
    v7[4] = &v8;
    [(CBCentralManager *)centralManager retrievePeripheralsWithFindMySerialNumberStrings:v3 completion:v7];

    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

void __48__BTAirPodsControlServiceClient_isFindmyManaged__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 firstObject];
  v4 = [v3 managedByFindMy];
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = v4;

  if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
  {
    __48__BTAirPodsControlServiceClient_isFindmyManaged__block_invoke_cold_1(v7, v5);
  }
}

- (void)_abortRequestsWithError:(id)error
{
  errorCopy = error;
  requestCurrent = self->_requestCurrent;
  v7 = errorCopy;
  if (!requestCurrent)
  {
    goto LABEL_5;
  }

  self->_requestCurrent = 0;
  popFirstObject = requestCurrent;

LABEL_3:
  [(BTAirPodsControlServiceClient *)self _completeRequest:popFirstObject error:v7];
  while (1)
  {

LABEL_5:
    if (![(NSMutableArray *)self->_requestArray count])
    {
      break;
    }

    popFirstObject = [(NSMutableArray *)self->_requestArray popFirstObject];
    if (popFirstObject)
    {
      goto LABEL_3;
    }
  }
}

- (void)_completeRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  getHandler = [(BTAirPodsControlRequest *)requestCopy getHandler];
  if (getHandler)
  {
    v8 = "GetSilentMode";
  }

  else
  {
    v8 = "SetSilentMode";
  }

  if (errorCopy)
  {
    if (gLogCategory_BTAirPodsControlServiceClient <= 90 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      [BTAirPodsControlServiceClient _completeRequest:errorCopy error:v8];
    }
  }

  else if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
  {
    [BTAirPodsControlServiceClient _completeRequest:v8 error:?];
  }

  timeoutTimer = [(BTAirPodsControlRequest *)requestCopy timeoutTimer];
  v10 = timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    [(BTAirPodsControlRequest *)requestCopy setTimeoutTimer:0];
  }

  getHandler2 = [(BTAirPodsControlRequest *)requestCopy getHandler];

  if (getHandler2)
  {
    getHandler3 = [(BTAirPodsControlRequest *)requestCopy getHandler];
    (getHandler3)[2](getHandler3, [(BTAirPodsControlRequest *)requestCopy enabled], errorCopy);
  }

  else
  {
    setHandler = [(BTAirPodsControlRequest *)requestCopy setHandler];

    if (!setHandler)
    {
      goto LABEL_19;
    }

    getHandler3 = [(BTAirPodsControlRequest *)requestCopy setHandler];
    (getHandler3[2])(getHandler3, errorCopy);
  }

LABEL_19:
  [(BTAirPodsControlRequest *)requestCopy setClient:0];
  [(BTAirPodsControlRequest *)requestCopy setGetHandler:0];
  [(BTAirPodsControlRequest *)requestCopy setSetHandler:0];
  [(NSMutableArray *)self->_requestArray removeObject:requestCopy];
  requestCurrent = self->_requestCurrent;
  if (requestCurrent == requestCopy)
  {
    self->_requestCurrent = 0;
  }

  [(BTAirPodsControlServiceClient *)self _run];
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  v6 = errorCopy;
  if (!self->_invalidateCalled && gLogCategory_BTAirPodsControlServiceClient <= 90)
  {
    if (gLogCategory_BTAirPodsControlServiceClient != -1 || (v5 = _LogCategory_Initialize(), errorCopy = v6, v5))
    {
      [BTAirPodsControlServiceClient _reportError:errorCopy];
      errorCopy = v6;
    }
  }

  self->_state = 3;
  [(BTAirPodsControlServiceClient *)self _abortRequestsWithError:errorCopy];
}

- (void)_setupTimeoutForRequest:(id)request
{
  requestCopy = request;
  timeoutTimer = [requestCopy timeoutTimer];
  v6 = timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
  }

  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  [requestCopy setTimeoutTimer:v7];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __57__BTAirPodsControlServiceClient__setupTimeoutForRequest___block_invoke;
  handler[3] = &unk_278D11B98;
  v11 = v7;
  v12 = requestCopy;
  selfCopy = self;
  v8 = requestCopy;
  v9 = v7;
  dispatch_source_set_event_handler(v9, handler);
  CUDispatchTimerSet();
  dispatch_activate(v9);
}

void __57__BTAirPodsControlServiceClient__setupTimeoutForRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) timeoutTimer];

  if (v2 == v3)
  {
    dispatch_source_cancel(*(a1 + 32));
    [*(a1 + 40) setTimeoutTimer:0];
    v6 = a1 + 40;
    v4 = *(a1 + 40);
    v5 = *(v6 + 8);
    v14 = BTErrorF(4294960574, "Timed out", v7, v8, v9, v10, v11, v12, v13);
    [v5 _completeRequest:v4 error:v14];
  }
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      state = self->_state;
      if (state > 13)
      {
        if (state <= 15)
        {
          if (state == 14)
          {
            if ([(BTAirPodsControlServiceClient *)self _runDiscoverServicesStart])
            {
              goto LABEL_26;
            }
          }

          else if (self->_airpodsCaseControlServiceObj)
          {
            self->_state = 16;
          }
        }

        else
        {
          switch(state)
          {
            case 16:
              if (![(BTAirPodsControlServiceClient *)self _runDiscoverCharacteristicsStart])
              {
                break;
              }

LABEL_26:
              ++self->_state;
              break;
            case 17:
              if (self->_airpodsCaseControlCharacteristicObj)
              {
                self->_state = 18;
              }

              break;
            case 18:
              [(BTAirPodsControlServiceClient *)self _runProcessRequests];
              break;
          }
        }
      }

      else if (state <= 10)
      {
        if (state)
        {
          if (state == 10 && [(CBCentralManager *)self->_centralManager state]== 5)
          {
            goto LABEL_26;
          }
        }

        else if ([(BTAirPodsControlServiceClient *)self _runInit])
        {
          self->_state = 10;
        }
      }

      else if (state == 11)
      {
        if ([(BTAirPodsControlServiceClient *)self _runConnectStart])
        {
          goto LABEL_26;
        }
      }

      else if (state == 12)
      {
        if (self->_connected)
        {
          self->_state = 13;
        }
      }

      else
      {
        self->_state = 14;
      }

      if (self->_state == state)
      {
        return;
      }

      if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
      {
        [(BTAirPodsControlServiceClient *)state _run];
      }
    }
  }
}

- (BOOL)_runInit
{
  v36[1] = *MEMORY[0x277D85DE8];
  p_centralManager = &self->_centralManager;
  v4 = self->_centralManager;
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBDFF8]);
    dispatchQueue = self->_dispatchQueue;
    v35 = *MEMORY[0x277CBDD80];
    v36[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v4 = [v5 initWithDelegate:self queue:dispatchQueue options:v7];

    if (!v4)
    {
      v4 = BTErrorF(4294960596, "Create CBCentralManager failed", v8, v9, v10, v11, v12, v13, v34);
      [(BTAirPodsControlServiceClient *)self _reportError:v4];
      v24 = 0;
      goto LABEL_14;
    }

    objc_storeStrong(p_centralManager, v4);
  }

  v14 = self->_airpodsCaseControlServiceUUID;
  if (v14)
  {
    goto LABEL_7;
  }

  v15 = [MEMORY[0x277CBE0A0] UUIDWithString:@"2EE26CD4-C04E-41CE-905A-B4054F5D1770"];
  if (v15)
  {
    v14 = v15;
    objc_storeStrong(&self->_airpodsCaseControlServiceUUID, v15);
LABEL_7:
    v22 = self->_airpodsCaseControlCharacteristicUUID;
    if (v22)
    {
      v23 = v22;
      v24 = 1;
    }

    else
    {
      v25 = [MEMORY[0x277CBE0A0] UUIDWithString:@"71060001-413A-41EA-AF86-8CECFA21D057"];
      v24 = v25 != 0;
      if (v25)
      {
        v23 = v25;
        airpodsCaseControlCharacteristicUUID = self->_airpodsCaseControlCharacteristicUUID;
        self->_airpodsCaseControlCharacteristicUUID = v23;
      }

      else
      {
        airpodsCaseControlCharacteristicUUID = BTErrorF(4294960591, "Create characteristic UUID failed: %@", v26, v27, v28, v29, v30, v31, @"71060001-413A-41EA-AF86-8CECFA21D057");
        [(BTAirPodsControlServiceClient *)self _reportError:airpodsCaseControlCharacteristicUUID];
        v23 = 0;
      }
    }

    goto LABEL_13;
  }

  v14 = BTErrorF(4294960591, "Create service UUID failed: %@", v16, v17, v18, v19, v20, v21, @"2EE26CD4-C04E-41CE-905A-B4054F5D1770");
  [(BTAirPodsControlServiceClient *)self _reportError:v14];
  v24 = 0;
LABEL_13:

LABEL_14:
  return v24;
}

- (BOOL)_runConnectStart
{
  v49[1] = *MEMORY[0x277D85DE8];
  peerDevice = self->_peerDevice;
  if (!peerDevice)
  {
    deviceUUID = self->_deviceUUID;
    if (!deviceUUID)
    {
      deviceSN = self->_deviceSN;
      if (deviceSN)
      {
        v37 = [(NSString *)deviceSN dataUsingEncoding:4];
        if (v37)
        {
          v44 = v37;
          v48 = v37;
          LOBYTE(identifier) = 1;
          v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
          centralManager = self->_centralManager;
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __49__BTAirPodsControlServiceClient__runConnectStart__block_invoke;
          v47[3] = &unk_278D11BC0;
          v47[4] = self;
          [(CBCentralManager *)centralManager retrievePeripheralsWithFindMySerialNumbers:v45 completion:v47];

          return identifier;
        }

        [(BTAirPodsControlServiceClient *)&self->_deviceSN _runConnectStart:v38];
      }

      else
      {
        if (self->_peerUUID)
        {
LABEL_12:
          LOBYTE(identifier) = 1;
          return identifier;
        }

        [(BTAirPodsControlServiceClient *)self _runConnectStart:a2];
      }

LABEL_22:
      LOBYTE(identifier) = 0;
      return identifier;
    }

    identifier = deviceUUID;
LABEL_6:
    v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:identifier];
    if (v19)
    {
      v26 = v19;
      v27 = self->_centralManager;
      v49[0] = v19;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
      v29 = [(CBCentralManager *)v27 retrievePeripheralsWithIdentifiers:v28];
      firstObject = [v29 firstObject];

      if (firstObject)
      {
        objc_storeStrong(&self->_peerUUID, v26);
        objc_storeStrong(&self->_peripheral, firstObject);
        [(CBPeripheral *)self->_peripheral setDelegate:self];
        if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
        {
          [(BTAirPodsControlServiceClient *)&self->_peerUUID _runConnectStart];
        }

        [(CBCentralManager *)self->_centralManager connectPeripheral:self->_peripheral options:0];

        goto LABEL_12;
      }

      [(BTAirPodsControlServiceClient *)v26 _runConnectStart:0];
    }

    else
    {
      [(BTAirPodsControlServiceClient *)identifier _runConnectStart:v20];
    }

    goto LABEL_22;
  }

  identifier = [(CBDevice *)peerDevice identifier];
  if (identifier)
  {
    goto LABEL_6;
  }

  [(BTAirPodsControlServiceClient *)self _runConnectStart:v10];
  return identifier;
}

void __49__BTAirPodsControlServiceClient__runConnectStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = v3;
  if (gLogCategory_BTAirPodsControlServiceClient <= 30)
  {
    if (gLogCategory_BTAirPodsControlServiceClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v14, v4))
    {
      __49__BTAirPodsControlServiceClient__runConnectStart__block_invoke_cold_1(v3);
      v3 = v14;
    }
  }

  v5 = [v3 firstObject];
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;

  [*(*(a1 + 32) + 64) setDelegate:?];
  v8 = [*(*(a1 + 32) + 64) identifier];
  v9 = *(a1 + 32);
  v10 = *(v9 + 56);
  *(v9 + 56) = v8;

  v11 = *(a1 + 32);
  v12 = *(v11 + 56);
  if (v12)
  {
    if (gLogCategory_BTAirPodsControlServiceClient <= 30)
    {
      if (gLogCategory_BTAirPodsControlServiceClient == -1)
      {
        v13 = _LogCategory_Initialize();
        v11 = *(a1 + 32);
        if (!v13)
        {
          goto LABEL_12;
        }

        v12 = *(v11 + 56);
      }

      LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient _runConnectStart]_block_invoke", 30, "Connecting to peer %@", v12);
      v11 = *(a1 + 32);
    }

LABEL_12:
    [*(v11 + 40) connectPeripheral:*(v11 + 64) options:0];
    goto LABEL_13;
  }

  if (gLogCategory_BTAirPodsControlServiceClient > 90)
  {
    goto LABEL_13;
  }

  if (gLogCategory_BTAirPodsControlServiceClient != -1)
  {
LABEL_10:
    LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient _runConnectStart]_block_invoke", 90, "### Can't get the peer device for SN %@", *(v11 + 112));
    goto LABEL_13;
  }

  if (_LogCategory_Initialize())
  {
    v11 = *(a1 + 32);
    goto LABEL_10;
  }

LABEL_13:
}

- (BOOL)_runDiscoverServicesStart
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = self->_peripheral;
  if (v10)
  {
    v11 = self->_airpodsCaseControlServiceUUID;
    v19 = v11;
    v20 = v11 != 0;
    if (v11)
    {
      v23[0] = v11;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
      {
        [(BTAirPodsControlServiceClient *)v10 _runDiscoverServicesStart];
      }

      [(CBPeripheral *)v10 discoverServices:v21];
    }

    else
    {
      [(BTAirPodsControlServiceClient *)self _runDiscoverServicesStart:v12];
    }
  }

  else
  {
    [(BTAirPodsControlServiceClient *)self _runDiscoverServicesStart:v3];
    v20 = 0;
  }

  return v20;
}

- (BOOL)_runDiscoverCharacteristicsStart
{
  v31[1] = *MEMORY[0x277D85DE8];
  v10 = self->_peripheral;
  if (v10)
  {
    v18 = self->_airpodsCaseControlServiceObj;
    if (v18)
    {
      v19 = self->_airpodsCaseControlCharacteristicUUID;
      v27 = v19;
      v28 = v19 != 0;
      if (v19)
      {
        v31[0] = v19;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
        if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
        {
          [BTAirPodsControlServiceClient _runDiscoverCharacteristicsStart];
        }

        [(CBPeripheral *)v10 discoverCharacteristics:v29 forService:v18];
      }

      else
      {
        [(BTAirPodsControlServiceClient *)self _runDiscoverCharacteristicsStart:v20];
      }
    }

    else
    {
      [(BTAirPodsControlServiceClient *)self _runDiscoverCharacteristicsStart:v11];
      v28 = 0;
    }
  }

  else
  {
    [(BTAirPodsControlServiceClient *)self _runDiscoverServicesStart:v3];
    v28 = 0;
  }

  return v28;
}

- (void)_runProcessRequests
{
  p_requestCurrent = &self->_requestCurrent;
  if (!self->_requestCurrent)
  {
    popFirstObject = [(NSMutableArray *)self->_requestArray popFirstObject];
    if (popFirstObject)
    {
      v5 = popFirstObject;
      objc_storeStrong(p_requestCurrent, popFirstObject);
      [(BTAirPodsControlServiceClient *)self _runProcessRequest:v5];
    }

    MEMORY[0x2821F96F8]();
  }
}

- (void)_runProcessRequest:(id)request
{
  requestCopy = request;
  v11 = self->_peripheral;
  if (v11)
  {
    v18 = self->_airpodsCaseControlCharacteristicObj;
    if (v18)
    {
      getHandler = [requestCopy getHandler];

      if (getHandler)
      {
        v24 = 513;
        v25 = 8;
        v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v24 length:3];
        if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
        {
          [BTAirPodsControlServiceClient _runProcessRequest:v11];
        }
      }

      else
      {
        v21 = 1;
        v22 = 8;
        enabled = [requestCopy enabled];
        v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v21 length:4];
        if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
        {
          [BTAirPodsControlServiceClient _runProcessRequest:];
        }
      }

      [(CBPeripheral *)v11 writeValue:v20 forCharacteristic:v18 type:0];
    }

    else
    {
      [(BTAirPodsControlServiceClient *)self _runProcessRequest:requestCopy, v12, v13, v14, v15, v16, v17];
    }
  }

  else
  {
    [(BTAirPodsControlServiceClient *)self _runProcessRequest:requestCopy, v5, v6, v7, v8, v9, v10];
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  if (!self->_invalidateCalled)
  {
    v16 = stateCopy;
    state = [stateCopy state];
    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      [BTAirPodsControlServiceClient centralManagerDidUpdateState:state];
    }

    if (state == 1)
    {
      v12 = "Bluetooth reset";
      v13 = 4294896145;
    }

    else
    {
      if (state != 4)
      {
        stateCopy = v16;
        if (state != 5)
        {
          goto LABEL_13;
        }

        [(BTAirPodsControlServiceClient *)self _run];
        goto LABEL_12;
      }

      v12 = "Bluetooth powered off";
      v13 = 4294896144;
    }

    v14 = BTErrorF(v13, v12, v5, v6, v7, v8, v9, v10, v15);
    [(BTAirPodsControlServiceClient *)self _reportError:v14];

LABEL_12:
    stateCopy = v16;
  }

LABEL_13:
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  if (!self->_invalidateCalled)
  {
    identifier = [peripheral identifier];
    if ([identifier isEqual:self->_peerUUID])
    {
      if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
      {
        [BTAirPodsControlServiceClient centralManager:identifier didConnectPeripheral:?];
      }

      self->_connected = 1;
      [(BTAirPodsControlServiceClient *)self _run];
    }

    else
    {
      [BTAirPodsControlServiceClient centralManager:? didConnectPeripheral:?];
    }
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  errorCopy = error;
  if (!self->_invalidateCalled)
  {
    v16 = errorCopy;
    identifier = [peripheral identifier];
    if ([identifier isEqual:self->_peerUUID])
    {
      if (gLogCategory_BTAirPodsControlServiceClient <= 90 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
      {
        [BTAirPodsControlServiceClient centralManager:v16 didFailToConnectPeripheral:identifier error:?];
      }

      if (v16)
      {
        [(BTAirPodsControlServiceClient *)self _reportError:?];
      }

      else
      {
        v14 = BTErrorF(4294960543, "Connect failed without error", 0, v9, v10, v11, v12, v13, v15);
        [(BTAirPodsControlServiceClient *)self _reportError:v14];
      }
    }

    else
    {
      [BTAirPodsControlServiceClient centralManager:? didFailToConnectPeripheral:? error:?];
    }

    errorCopy = v16;
  }
}

- (void)centralManager:(id)manager didUpdateFindMyPeripherals:(id)peripherals
{
  managerCopy = manager;
  peripheralsCopy = peripherals;
  if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
  {
    [BTAirPodsControlServiceClient centralManager:peripheralsCopy didUpdateFindMyPeripherals:?];
  }
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v24 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  identifier = [peripheralCopy identifier];
  if (([identifier isEqual:self->_peerUUID] & 1) == 0)
  {
    [BTAirPodsControlServiceClient peripheral:didDiscoverServices:];
    goto LABEL_20;
  }

  [peripheralCopy services];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      uUID = [v12 UUID];
      v14 = [uUID isEqual:self->_airpodsCaseControlServiceUUID];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v16 = v12;

    if (!v16)
    {
      goto LABEL_11;
    }

    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      [BTAirPodsControlServiceClient peripheral:v7 didDiscoverServices:identifier];
    }

    airpodsCaseControlServiceObj = self->_airpodsCaseControlServiceObj;
    self->_airpodsCaseControlServiceObj = v16;
    v15 = v16;

    [(BTAirPodsControlServiceClient *)self _run];
  }

  else
  {
LABEL_10:

LABEL_11:
    if (([(BTAirPodsControlServiceClient *)self peripheral:v7 didDiscoverServices:identifier, &v22]& 1) != 0)
    {
      goto LABEL_19;
    }

    v15 = v22;
  }

LABEL_19:
LABEL_20:
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  serviceCopy = service;
  identifier = [peripheralCopy identifier];
  if (([identifier isEqual:self->_peerUUID] & 1) == 0)
  {
    [BTAirPodsControlServiceClient peripheral:didDiscoverCharacteristicsForService:error:];
    goto LABEL_23;
  }

  uUID = [serviceCopy UUID];
  if (([uUID isEqual:self->_airpodsCaseControlServiceUUID] & 1) == 0)
  {
    [BTAirPodsControlServiceClient peripheral:didDiscoverCharacteristicsForService:error:];
    goto LABEL_22;
  }

  v25 = uUID;
  v26 = serviceCopy;
  v11 = identifier;
  v12 = peripheralCopy;
  [serviceCopy characteristics];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v30 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v28 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v27 + 1) + 8 * v17);
      uUID2 = [v18 UUID];
      v20 = [uUID2 isEqual:self->_airpodsCaseControlCharacteristicUUID];

      if (v20)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v15)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v23 = v18;

    if (!v23)
    {
      goto LABEL_12;
    }

    peripheralCopy = v12;
    identifier = v11;
    uUID = v25;
    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      [BTAirPodsControlServiceClient peripheral:didDiscoverCharacteristicsForService:error:];
    }

    airpodsCaseControlCharacteristicObj = self->_airpodsCaseControlCharacteristicObj;
    self->_airpodsCaseControlCharacteristicObj = v23;
    v22 = v23;

    [v12 setNotifyValue:1 forCharacteristic:v22];
    [(BTAirPodsControlServiceClient *)self _run];
  }

  else
  {
LABEL_11:

LABEL_12:
    peripheralCopy = v12;
    identifier = v11;
    uUID = v25;
    if (gLogCategory_BTAirPodsControlServiceClient > 60 || gLogCategory_BTAirPodsControlServiceClient == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_21;
    }

    airpodsCaseControlCharacteristicUUID = self->_airpodsCaseControlCharacteristicUUID;
    v22 = CUPrintNSObjectOneLine();
    LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didDiscoverCharacteristicsForService:error:]", 60, "### DidDiscoverCharacteristics not found: peer %@, service %@, characteristic %@ vs %@", identifier, v25, airpodsCaseControlCharacteristicUUID, v22);
  }

LABEL_21:
  serviceCopy = v26;
LABEL_22:

LABEL_23:
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
  {
    [BTAirPodsControlServiceClient peripheral:didUpdateNotificationStateForCharacteristic:error:];
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  identifier = [peripheral identifier];
  if ([identifier isEqual:self->_peerUUID])
  {
    uUID = [characteristicCopy UUID];
    if (([uUID isEqual:self->_airpodsCaseControlCharacteristicUUID] & 1) == 0)
    {
      [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
      goto LABEL_18;
    }

    v9 = self->_requestCurrent;
    if (!v9)
    {
      [BTAirPodsControlServiceClient peripheral:identifier didUpdateValueForCharacteristic:uUID error:?];
      goto LABEL_17;
    }

    value = [characteristicCopy value];
    v11 = [value copy];

    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
    }

    bytes = [v11 bytes];
    v13 = [v11 length];
    if (v13 <= 2)
    {
      [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
    }

    else
    {
      v14 = v13;
      v15 = *(bytes + 1);
      getHandler = [(BTAirPodsControlRequest *)v9 getHandler];

      if (getHandler)
      {
        if (v15 != 2051)
        {
          [BTAirPodsControlServiceClient peripheral:v15 didUpdateValueForCharacteristic:v11 error:?];
          goto LABEL_16;
        }

        if (v14 == 3)
        {
          [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
          goto LABEL_16;
        }

        [(BTAirPodsControlRequest *)v9 setEnabled:*(bytes + 3) != 0];
      }

      else
      {
        if (v15 != 2049)
        {
          [BTAirPodsControlServiceClient peripheral:v15 didUpdateValueForCharacteristic:v11 error:?];
          goto LABEL_16;
        }

        if (v14 <= 4)
        {
          [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
          goto LABEL_16;
        }

        if (*(bytes + 3))
        {
          [BTAirPodsControlServiceClient peripheral:v11 didUpdateValueForCharacteristic:? error:?];
          goto LABEL_16;
        }
      }

      [(BTAirPodsControlServiceClient *)self _completeRequest:v9 error:0];
    }

LABEL_16:

LABEL_17:
LABEL_18:

    goto LABEL_19;
  }

  [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
LABEL_19:
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  identifier = [peripheral identifier];
  if ([identifier isEqual:self->_peerUUID])
  {
    uUID = [characteristicCopy UUID];
    if ([uUID isEqual:self->_airpodsCaseControlCharacteristicUUID])
    {
      if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didWriteValueForCharacteristic:error:]", 30, "DidWriteValueForCharacteristic: peer %@, characteristic %@", identifier, uUID);
      }
    }

    else
    {
      [BTAirPodsControlServiceClient peripheral:? didWriteValueForCharacteristic:? error:?];
    }
  }

  else
  {
    [BTAirPodsControlServiceClient peripheral:didWriteValueForCharacteristic:error:];
  }
}

void __68__BTAirPodsControlServiceClient_getSilentModeWithCompletionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 104);
  if (v2)
  {
    v3 = [v2 identifier];
    LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient getSilentModeWithCompletionHandler:]_block_invoke", 30, "GetSilentMode enqueued: peer %@", v3);
  }

  else
  {
    LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient getSilentModeWithCompletionHandler:]_block_invoke", 30, "GetSilentMode enqueued: peer %@", *(v1 + 112));
  }
}

void __68__BTAirPodsControlServiceClient_getSilentModeWithCompletionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 104);
  if (v2)
  {
    v3 = [*(*a1 + 104) identifier];
  }

  else
  {
    v3 = *(*a1 + 112);
  }

  v5 = v3;
  v4 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient getSilentModeWithCompletionHandler:]_block_invoke", 90, "### GetSilentMode failed: peer %@, %@", v5, v4);

  if (v2)
  {
  }
}

void __65__BTAirPodsControlServiceClient_setSilentMode_completionHandler___block_invoke_cold_1(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 104);
  if (v4)
  {
    v5 = [v4 identifier];
    v9 = v5;
    if (*a2)
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }

    LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient setSilentMode:completionHandler:]_block_invoke", 30, "SetSilentMode enqueued: peer %@, enable %s", v5, v6);
  }

  else
  {
    v7 = *(v3 + 112);
    if (*a2)
    {
      v8 = "yes";
    }

    else
    {
      v8 = "no";
    }

    LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient setSilentMode:completionHandler:]_block_invoke", 30, "SetSilentMode enqueued: peer %@, enable %s", v7, v8);
  }
}

void __65__BTAirPodsControlServiceClient_setSilentMode_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + 104);
  if (v4)
  {
    v5 = [*(*a1 + 104) identifier];
  }

  else
  {
    v5 = *(*a1 + 112);
  }

  v8 = v5;
  if (*(a2 + 48))
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  v7 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient setSilentMode:completionHandler:]_block_invoke", 90, "### SetSilentMode failed: peer %@, enabled %s, %@", v8, v6, v7);

  if (v4)
  {
  }
}

uint64_t __48__BTAirPodsControlServiceClient_isFindmyManaged__block_invoke_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 count];
  if (*(*(*a2 + 8) + 24))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  return LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient isFindmyManaged]_block_invoke", 30, "CentralManager retrieved FindMy peripherals with serial numbers count %lu, managed by findmy %s", v3, v4);
}

- (void)_completeRequest:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v3 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient _completeRequest:error:]", 90, "### %s failed: %@", a2, v3);
}

- (void)_reportError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient _reportError:]", 90, "Error: %@", v1);
}

- (uint64_t)_run
{
  if (self > 0x12)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_278D11BE0[self];
  }

  v3 = *a2;
  if (v3 > 0x12)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_278D11BE0[v3];
  }

  return LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient _run]", 30, "State: %s -> %s", v2, v4);
}

- (void)_runConnectStart
{
  v8 = BTErrorF(4294960591, "No peer Device or Serial Number is specified", a3, a4, a5, a6, a7, a8, v9);
  OUTLINED_FUNCTION_4(v8);
}

- (void)_runDiscoverServicesStart
{
  v8 = BTErrorF(4294960591, "No peripheral", a3, a4, a5, a6, a7, a8, v9);
  OUTLINED_FUNCTION_4(v8);
}

- (void)_runDiscoverCharacteristicsStart
{
  v8 = BTErrorF(4294960591, "No service", a3, a4, a5, a6, a7, a8, v9);
  OUTLINED_FUNCTION_4(v8);
}

- (void)_runProcessRequest:(void *)a1 .cold.1(void *a1)
{
  [a1 identifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9();
  v2 = CUPrintNSDataHex();
  LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient _runProcessRequest:]", 30, "GetSilentMode start: peer %@, value <%@>", v1, v2);
}

- (void)_runProcessRequest:.cold.2()
{
  OUTLINED_FUNCTION_5();
  v2 = [v1 identifier];
  if ([v0 enabled])
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  v4 = CUPrintNSDataHex();
  LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient _runProcessRequest:]", 30, "SetSilentMode start: peer %@, enable %s, value <%@>", v2, v3, v4);
}

- (void)_runProcessRequest:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = BTErrorF(4294960596, "No characteristic", a3, a4, a5, a6, a7, a8, v9);
  OUTLINED_FUNCTION_10(v8);
}

- (void)_runProcessRequest:(uint64_t)a3 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = BTErrorF(4294960591, "No peripheral", a3, a4, a5, a6, a7, a8, v9);
  OUTLINED_FUNCTION_10(v8);
}

- (uint64_t)centralManagerDidUpdateState:(unint64_t)a1 .cold.1(unint64_t a1)
{
  if (a1 > 0xA)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_278D11C78[a1];
  }

  return LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient centralManagerDidUpdateState:]", 30, "Bluetooth state changed: %s", v1);
}

- (uint64_t)centralManager:(uint64_t)result didConnectPeripheral:.cold.1(uint64_t result)
{
  if (result <= 60)
  {
    OUTLINED_FUNCTION_5();
    if (v1 != -1 || (result = _LogCategory_Initialize(), result))
    {
      OUTLINED_FUNCTION_6();
      return LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient centralManager:didConnectPeripheral:]", 60, "### DidConnectPeripheral wrong peripheral: %@ (not %@)");
    }
  }

  return result;
}

- (uint64_t)centralManager:(uint64_t)result didFailToConnectPeripheral:error:.cold.1(uint64_t result)
{
  if (result <= 60)
  {
    OUTLINED_FUNCTION_5();
    if (v1 != -1 || (result = _LogCategory_Initialize(), result))
    {
      OUTLINED_FUNCTION_6();
      return LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient centralManager:didFailToConnectPeripheral:error:]", 60, "### DidFailToConnectPeripheral wrong peripheral: %@ (not %@)");
    }
  }

  return result;
}

- (void)centralManager:(uint64_t)a1 didFailToConnectPeripheral:(uint64_t)a2 error:.cold.2(uint64_t a1, uint64_t a2)
{
  v3 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient centralManager:didFailToConnectPeripheral:error:]", 90, "### DidFailToConnectPeripheral %@, error %@", a2, v3);
}

- (void)peripheral:didDiscoverServices:.cold.1()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 60)
  {
    OUTLINED_FUNCTION_1_1();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_6();
      LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didDiscoverServices:]", 60, "### DidDiscoverServices wrong peripheral: %@ (not %@)");
    }
  }
}

- (void)peripheral:(uint64_t)a1 didDiscoverServices:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v3 = CUPrintNSObjectOneLine();
  LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didDiscoverServices:]", 30, "DidDiscoverServices: peer %@, services %@", a2, v3);
}

- (uint64_t)peripheral:(uint64_t)a3 didDiscoverServices:(uint64_t *)a4 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (gLogCategory_BTAirPodsControlServiceClient > 60)
  {
    return 1;
  }

  if (gLogCategory_BTAirPodsControlServiceClient == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  v7 = *(a1 + 32);
  v8 = CUPrintNSObjectOneLine();
  *a4 = v8;
  LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didDiscoverServices:]", 60, "### DidDiscoverServices not found: peer %@, service %@ vs %@", a3, v7, v8);
  return 0;
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.1()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 60)
  {
    OUTLINED_FUNCTION_1_1();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_6();
      LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didDiscoverCharacteristicsForService:error:]", 60, "### DidDiscoverCharacteristics wrong peripheral: %@ (not %@)");
    }
  }
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.2()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 60)
  {
    OUTLINED_FUNCTION_1_1();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_6();
      LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didDiscoverCharacteristicsForService:error:]", 60, "### DidDiscoverCharacteristics wrong service: %@ (not %@)");
    }
  }
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.3()
{
  OUTLINED_FUNCTION_5();
  v3 = [v2 UUID];
  LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didDiscoverCharacteristicsForService:error:]", 30, "DidDiscoverCharacteristicsForService: %@, service %@, characteristics %@", v1, v0, v3);
}

- (void)peripheral:didUpdateNotificationStateForCharacteristic:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v3 = [v1 identifier];
  [v0 UUID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9();
  v2 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didUpdateNotificationStateForCharacteristic:error:]", 30, "DidUpdateNotificationStateForCharacteristic: peer %@, characteristic %@, error %@", v3, v0, v2);
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.1()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 60)
  {
    OUTLINED_FUNCTION_1_1();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_6();
      LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:]", 60, "### DidUpdateValueForCharacteristic wrong peripheral: %@ (not %@)");
    }
  }
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.2()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 60)
  {
    OUTLINED_FUNCTION_1_1();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_6();
      LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:]", 60, "### DidUpdateValueForCharacteristic wrong characteristic: %@ (not %@)");
    }
  }
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  v2 = CUPrintNSDataHex();
  LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:]", 30, "DidUpdateValueForCharacteristic: peer %@, characteristic %@, value <%@>", v1, v0, v2);
}

- (void)peripheral:(uint64_t)a1 didUpdateValueForCharacteristic:(uint64_t)a2 error:.cold.4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_2(a1, a2);
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  v3 = CBErrorF(4294960553, "Bad get opcode: 0x%04X, value <%@>");
  OUTLINED_FUNCTION_3(v3);
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  v2 = CUPrintNSDataHex();
  v1 = CBErrorF(4294960553, "No get result: value <%@>", v2);
  OUTLINED_FUNCTION_3(v1);
}

- (void)peripheral:(uint64_t)a1 didUpdateValueForCharacteristic:(uint64_t)a2 error:.cold.6(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_2(a1, a2);
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  v3 = CBErrorF(4294960553, "Bad set opcode: 0x%04X, value <%@>");
  OUTLINED_FUNCTION_3(v3);
}

- (void)peripheral:(uint64_t)a1 didUpdateValueForCharacteristic:(uint64_t)a2 error:.cold.7(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_2(a1, a2);
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  v3 = CBErrorF(4294960584, "Bad set status 0x%04X, value <%@>");
  OUTLINED_FUNCTION_3(v3);
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.8()
{
  OUTLINED_FUNCTION_2_0();
  v2 = CUPrintNSDataHex();
  v1 = CBErrorF(4294960553, "No set status: value <%@>", v2);
  OUTLINED_FUNCTION_3(v1);
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.9()
{
  OUTLINED_FUNCTION_2_0();
  v2 = CUPrintNSDataHex();
  v1 = CBErrorF(4294960553, "No opcode: value <%@>", v2);
  OUTLINED_FUNCTION_3(v1);
}

- (uint64_t)peripheral:(uint64_t)result didUpdateValueForCharacteristic:(uint64_t)a2 error:.cold.10(uint64_t result, uint64_t a2)
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 30)
  {
    v3 = result;
    if (gLogCategory_BTAirPodsControlServiceClient != -1)
    {
      return LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:]", 30, "DidUpdateValueForCharacteristic ignored without request: peer %@, characteristic %@", v3, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:]", 30, "DidUpdateValueForCharacteristic ignored without request: peer %@, characteristic %@", v3, a2);
    }
  }

  return result;
}

- (void)peripheral:didWriteValueForCharacteristic:error:.cold.1()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 60)
  {
    OUTLINED_FUNCTION_1_1();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_6();
      LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didWriteValueForCharacteristic:error:]", 60, "### DidWriteValueForCharacteristic wrong peripheral: %@ (not %@)");
    }
  }
}

- (uint64_t)peripheral:(uint64_t)result didWriteValueForCharacteristic:error:.cold.2(uint64_t result)
{
  if (result <= 60)
  {
    OUTLINED_FUNCTION_5();
    if (v1 != -1 || (result = _LogCategory_Initialize(), result))
    {
      OUTLINED_FUNCTION_6();
      return LogPrintF_safe(&gLogCategory_BTAirPodsControlServiceClient, "[BTAirPodsControlServiceClient peripheral:didWriteValueForCharacteristic:error:]", 60, "### DidWriteValueForCharacteristic wrong characteristic: %@ (not %@)");
    }
  }

  return result;
}

@end