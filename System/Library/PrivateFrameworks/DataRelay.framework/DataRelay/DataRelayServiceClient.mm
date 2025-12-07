@interface DataRelayServiceClient
- (DataRelayServiceClient)init;
- (DataRelayServiceClient)initWithCoder:(id)coder;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_activate;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)sensorDataAvailable:(id)available dataTypes:(unint64_t)types completion:(id)completion;
- (void)sensorDataUnavailable:(id)unavailable dataTypes:(unint64_t)types completion:(id)completion;
@end

@implementation DataRelayServiceClient

- (DataRelayServiceClient)initWithCoder:(id)coder
{
  v3 = [(DataRelayServiceClient *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)description
{
  NSAppendPrintF();

  return 0;
}

- (DataRelayServiceClient)init
{
  v6.receiver = self;
  v6.super_class = DataRelayServiceClient;
  v2 = [(DataRelayServiceClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__DataRelayServiceClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_278F4E358;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __49__DataRelayServiceClient_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = NSErrorF();
    v9 = v3;
    if (gLogCategory_DataRelayServiceClient <= 90)
    {
      if (gLogCategory_DataRelayServiceClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v9, v4))
      {
        __49__DataRelayServiceClient_activateWithCompletion___block_invoke_cold_1(v3);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 8) = 1;
    v5 = MEMORY[0x24C1D4510](*(a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v8 = *(a1 + 32);

    [v8 _activate];
  }
}

- (void)_activate
{
  if (self->_invalidateCalled)
  {
    v7 = NSErrorF();
    if (gLogCategory_DataRelayServiceClient <= 90 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
    {
      [(DataRelayServiceClient *)v7 _activate];
    }

    v3 = MEMORY[0x24C1D4510](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v3)
    {
      (v3)[2](v3, v7);
    }
  }

  else
  {
    _ensureXPCStarted = [(DataRelayServiceClient *)self _ensureXPCStarted];
    v7 = _ensureXPCStarted;
    if (_ensureXPCStarted)
    {
      [(DataRelayServiceClient *)self _reportError:_ensureXPCStarted];
      goto LABEL_15;
    }

    if (gLogCategory_DataRelayServiceClient <= 30 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
    {
      [(DataRelayServiceClient *)self _activate];
    }

    v3 = MEMORY[0x24C1D4510](self->_activateCompletion);
    v6 = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v3)
    {
      v3[2](v3, 0);
    }
  }

LABEL_15:
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B1C350];
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.AudioAccessoryServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v4;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__DataRelayServiceClient__ensureXPCStarted__block_invoke;
    v13[3] = &unk_278F4E380;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v13];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __43__DataRelayServiceClient__ensureXPCStarted__block_invoke_2;
    v10 = &unk_278F4E3A8;
    selfCopy = self;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:&v7];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v3, v7, v8, v9, v10, selfCopy];
    [(NSXPCConnection *)self->_xpcCnx resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return 0;
}

void __43__DataRelayServiceClient__ensureXPCStarted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _interrupted];
}

void __43__DataRelayServiceClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_DataRelayServiceClient <= 90)
  {
    if (gLogCategory_DataRelayServiceClient != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(DataRelayServiceClient *)v3 _interrupted];
    }
  }

  v6 = NSErrorF();
  [(DataRelayServiceClient *)self _reportError:v6];

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v9 = *(interruptionHandler + 2);

    v9();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__DataRelayServiceClient_invalidate__block_invoke;
  block[3] = &unk_278F4E3D0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __36__DataRelayServiceClient_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    if ((*(*(a1 + 32) + 25) & 1) == 0 && gLogCategory_DataRelayServiceClient <= 30 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
    {
      __36__DataRelayServiceClient_invalidate__block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    if (v5)
    {
      [v5 invalidate];
      v4 = *(a1 + 32);
    }

    v9 = MEMORY[0x24C1D4510](*(v4 + 16));
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    if (v9)
    {
      v8 = NSErrorF();
      v9[2](v9, v8);
    }

    [*(a1 + 32) _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    selfCopy = self;
    if (!self->_invalidateCalled && gLogCategory_DataRelayServiceClient <= 90)
    {
      if (gLogCategory_DataRelayServiceClient != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(DataRelayServiceClient *)self _invalidated];
      }
    }

    if (!selfCopy->_xpcCnx)
    {
      v10 = MEMORY[0x24C1D4510](selfCopy->_activateCompletion, a2);
      activateCompletion = selfCopy->_activateCompletion;
      selfCopy->_activateCompletion = 0;

      if (v10)
      {
        v5 = NSErrorF();
        v10[2](v10, v5);
      }

      interruptionHandler = selfCopy->_interruptionHandler;
      selfCopy->_interruptionHandler = 0;

      v7 = MEMORY[0x24C1D4510](selfCopy->_invalidationHandler);
      invalidationHandler = selfCopy->_invalidationHandler;
      selfCopy->_invalidationHandler = 0;

      if (v7)
      {
        v7[2](v7);
      }

      xpcCnx = selfCopy->_xpcCnx;
      selfCopy->_xpcCnx = 0;

      selfCopy->_invalidateDone = 1;
    }
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  v4 = MEMORY[0x24C1D4510](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, errorCopy);
  }
}

- (void)sensorDataAvailable:(id)available dataTypes:(unint64_t)types completion:(id)completion
{
  availableCopy = available;
  completionCopy = completion;
  v12 = completionCopy;
  if (self->_activateCalled)
  {
    dispatchQueue = self->_dispatchQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__DataRelayServiceClient_sensorDataAvailable_dataTypes_completion___block_invoke;
    v14[3] = &unk_278F4E420;
    v14[4] = self;
    v16 = completionCopy;
    v15 = availableCopy;
    typesCopy = types;
    dispatch_async(dispatchQueue, v14);
  }

  else if (gLogCategory_DataRelayServiceClient <= 60)
  {
    if (gLogCategory_DataRelayServiceClient != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [DataRelayServiceClient sensorDataAvailable:completionCopy dataTypes:v10 completion:v11];
    }
  }
}

void __67__DataRelayServiceClient_sensorDataAvailable_dataTypes_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[24] == 1)
  {
    v3 = NSErrorF();
    v10 = v3;
    if (gLogCategory_DataRelayServiceClient <= 90)
    {
      if (gLogCategory_DataRelayServiceClient != -1 || (v9 = _LogCategory_Initialize(), v3 = v10, v9))
      {
        LogPrintF(&gLogCategory_DataRelayServiceClient, "[DataRelayServiceClient sensorDataAvailable:dataTypes:completion:]_block_invoke", 90, "sensorDataAvailable failed: %@, %@", *(a1 + 32), v3);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [v2 _ensureXPCStarted];
    if (v4)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (gLogCategory_DataRelayServiceClient <= 40 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
      {
        __67__DataRelayServiceClient_sensorDataAvailable_dataTypes_completion___block_invoke_cold_1(a1);
      }

      v5 = *(*(a1 + 32) + 32);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __67__DataRelayServiceClient_sensorDataAvailable_dataTypes_completion___block_invoke_2;
      v13[3] = &unk_278F4E3F8;
      v14 = *(a1 + 48);
      v6 = [v5 remoteObjectProxyWithErrorHandler:v13];
      v7 = *(a1 + 56);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __67__DataRelayServiceClient_sensorDataAvailable_dataTypes_completion___block_invoke_3;
      v11[3] = &unk_278F4E3F8;
      v8 = *(a1 + 40);
      v12 = *(a1 + 48);
      [v6 informDRClientSensorDataAvailable:v8 dataTypes:v7 completion:v11];
    }
  }
}

- (void)sensorDataUnavailable:(id)unavailable dataTypes:(unint64_t)types completion:(id)completion
{
  unavailableCopy = unavailable;
  completionCopy = completion;
  v12 = completionCopy;
  if (self->_activateCalled)
  {
    dispatchQueue = self->_dispatchQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__DataRelayServiceClient_sensorDataUnavailable_dataTypes_completion___block_invoke;
    v14[3] = &unk_278F4E420;
    v14[4] = self;
    v16 = completionCopy;
    v15 = unavailableCopy;
    typesCopy = types;
    dispatch_async(dispatchQueue, v14);
  }

  else if (gLogCategory_DataRelayServiceClient <= 60)
  {
    if (gLogCategory_DataRelayServiceClient != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [DataRelayServiceClient sensorDataUnavailable:completionCopy dataTypes:v10 completion:v11];
    }
  }
}

void __69__DataRelayServiceClient_sensorDataUnavailable_dataTypes_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[24] == 1)
  {
    v3 = NSErrorF();
    v10 = v3;
    if (gLogCategory_DataRelayServiceClient <= 90)
    {
      if (gLogCategory_DataRelayServiceClient != -1 || (v9 = _LogCategory_Initialize(), v3 = v10, v9))
      {
        LogPrintF(&gLogCategory_DataRelayServiceClient, "[DataRelayServiceClient sensorDataUnavailable:dataTypes:completion:]_block_invoke", 90, "sensorDataLost failed: %@, %@", *(a1 + 32), v3);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [v2 _ensureXPCStarted];
    if (v4)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (gLogCategory_DataRelayServiceClient <= 40 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
      {
        __69__DataRelayServiceClient_sensorDataUnavailable_dataTypes_completion___block_invoke_cold_1(a1);
      }

      v5 = *(*(a1 + 32) + 32);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __69__DataRelayServiceClient_sensorDataUnavailable_dataTypes_completion___block_invoke_2;
      v13[3] = &unk_278F4E3F8;
      v14 = *(a1 + 48);
      v6 = [v5 remoteObjectProxyWithErrorHandler:v13];
      v7 = *(a1 + 56);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __69__DataRelayServiceClient_sensorDataUnavailable_dataTypes_completion___block_invoke_3;
      v11[3] = &unk_278F4E3F8;
      v8 = *(a1 + 40);
      v12 = *(a1 + 48);
      [v6 informDRClientSensorDataUnavailable:v8 dataTypes:v7 completion:v11];
    }
  }
}

void __67__DataRelayServiceClient_sensorDataAvailable_dataTypes_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = v3;
    if (v2)
    {
      [v3 addObject:@"WxDM6"];
    }

    if ((v2 & 2) != 0)
    {
      [v4 addObject:@"WxHRM"];
    }

    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"None";
  }

  LogPrintF(&gLogCategory_DataRelayServiceClient, "[DataRelayServiceClient sensorDataAvailable:dataTypes:completion:]_block_invoke", 40, "sensorDataAvailable, identifier: %@, dataTypes: %@", v1, v5);
}

void __69__DataRelayServiceClient_sensorDataUnavailable_dataTypes_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = v3;
    if (v2)
    {
      [v3 addObject:@"WxDM6"];
    }

    if ((v2 & 2) != 0)
    {
      [v4 addObject:@"WxHRM"];
    }

    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"None";
  }

  LogPrintF(&gLogCategory_DataRelayServiceClient, "[DataRelayServiceClient sensorDataUnavailable:dataTypes:completion:]_block_invoke", 40, "sensorDataUnavailable, identifier: %@, dataTypes: %@", v1, v5);
}

@end