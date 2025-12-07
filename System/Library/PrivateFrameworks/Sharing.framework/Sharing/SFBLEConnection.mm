@interface SFBLEConnection
- (BOOL)removeClient:(id)client;
- (NSString)description;
- (SFBLEConnection)initWithDevice:(id)device acceptor:(BOOL)acceptor;
- (int64_t)connectionState;
- (void)_activate;
- (void)_cleanupQueuedData:(int)data;
- (void)_connectIfNeeded;
- (void)_invalidate;
- (void)_processQueuedData;
- (void)activate;
- (void)activateDirect;
- (void)addClient:(id)client;
- (void)dealloc;
- (void)invalidate;
- (void)nearby:(id)nearby didConnectToPeer:(id)peer transport:(int64_t)transport error:(id)error;
- (void)nearby:(id)nearby didDisconnectFromPeer:(id)peer error:(id)error;
- (void)nearby:(id)nearby didReceiveData:(id)data fromPeer:(id)peer;
- (void)nearby:(id)nearby didSendData:(id)data toPeer:(id)peer error:(id)error;
- (void)nearbyDidChangeBluetoothBandwidthState:(id)state;
- (void)nearbyDidUpdateState:(id)state;
- (void)sendData:(id)data completion:(id)completion;
- (void)sendDataDirect:(id)direct completion:(id)completion;
- (void)setAcceptor:(BOOL)acceptor;
- (void)setDispatchQueue:(id)queue;
@end

@implementation SFBLEConnection

- (void)dealloc
{
  if (self->_connectRetrier)
  {
    [SFBLEConnection dealloc];
    goto LABEL_8;
  }

  if (self->_wpNearby)
  {
LABEL_8:
    [SFBLEAdvertiser dealloc];
    [(SFBLEConnection *)v4 description];
    return;
  }

  ucat = self->_ucat;
  if (ucat)
  {
    if ((ucat->var3 & 0x40000) != 0)
    {
      LogCategory_Remove();
      self->_ucat = 0;
    }
  }

  v6.receiver = self;
  v6.super_class = SFBLEConnection;
  [(SFBLEConnection *)&v6 dealloc];
}

- (NSString)description
{
  identifier = [(SFBLEDevice *)self->_peerDevice identifier];
  if (self->_connected)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  v5 = NSPrintF("SFBLEConnection %{ptr}, Peer %@, Connected %s, Clients %ld", self, identifier, v4, [(NSMutableSet *)self->_clients count]);

  return v5;
}

- (void)setAcceptor:(BOOL)acceptor
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__SFBLEConnection_setAcceptor___block_invoke;
  v4[3] = &unk_1E788B700;
  v4[4] = self;
  acceptorCopy = acceptor;
  dispatch_async(dispatchQueue, v4);
}

void __31__SFBLEConnection_setAcceptor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_10;
      }

      v3 = *(v2 + 80);
    }

    v4 = "no";
    if (*(v2 + 8))
    {
      v5 = "yes";
    }

    else
    {
      v5 = "no";
    }

    if (*(a1 + 40))
    {
      v4 = "yes";
    }

    LogPrintF(v3, "[SFBLEConnection setAcceptor:]_block_invoke", 30, "Set acceptor: %s -> %s\n", v5, v4);
    v2 = *(a1 + 32);
  }

LABEL_10:
  v7 = *(a1 + 40);
  *(v2 + 8) = v7;
  v8 = *(a1 + 32);
  if (*(v8 + 9) == 1)
  {
    if (v7)
    {
      [*(v8 + 40) invalidate];
      v9 = *(a1 + 32);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;
    }

    else
    {
      if (!*(v8 + 40))
      {
        v11 = objc_alloc_init(MEMORY[0x1E6999520]);
        v12 = *(a1 + 32);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        [*(*(a1 + 32) + 40) setDispatchQueue:*(*(a1 + 32) + 136)];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __31__SFBLEConnection_setAcceptor___block_invoke_2;
        v14[3] = &unk_1E788B198;
        v15 = *(a1 + 32);
        [*(v15 + 40) setActionHandler:v14];
        [*(*(a1 + 32) + 40) setInterval:3.0];
        [*(*(a1 + 32) + 40) startDirect];
        v8 = *(a1 + 32);
      }

      [v8 _processQueuedData];
    }
  }
}

- (int64_t)connectionState
{
  if (self->_connected)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF("Attempt to set dispatch queue after activate has been called");
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = queueCopy;

    objc_sync_exit(obj);
  }
}

- (void)activate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SFBLEConnection_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (void)activateDirect
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  objc_sync_exit(selfCopy);

  [(SFBLEConnection *)selfCopy _activate];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SFBLEConnection_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEConnection _invalidate]", 30, "Invalidating\n");
  }

LABEL_6:
  self->_invalidateCalled = 1;
  [(CURetrier *)self->_connectRetrier invalidateDirect];
  connectRetrier = self->_connectRetrier;
  self->_connectRetrier = 0;

  [(SFBLEConnection *)self _cleanupQueuedData:4294960573];
  dataSendQueue = self->_dataSendQueue;
  self->_dataSendQueue = 0;

  if (self->_connected || self->_connecting)
  {
    *&self->_connected = 0;
    v6 = self->_ucat;
    if (v6->var0 <= 30)
    {
      if (v6->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v6 = self->_ucat;
      }

      LogPrintF(v6, "[SFBLEConnection _invalidate]", 30, "Disconnect\n");
    }

LABEL_12:
    wpNearby = self->_wpNearby;
    identifier = [(SFBLEDevice *)self->_peerDevice identifier];
    [(WPNearby *)wpNearby disconnectFromPeer:identifier];
  }

  v9 = self->_wpNearby;
  if (v9)
  {
    v10 = +[SFBLEClient sharedClient];
    [v10 removeNearbyDelegate:self];

    v9 = self->_wpNearby;
  }

  self->_wpNearby = 0;

  v11 = self->_ucat;
  if (v11->var0 > 30)
  {
    goto LABEL_19;
  }

  if (v11->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_19;
    }

    v11 = self->_ucat;
  }

  LogPrintF(v11, "[SFBLEConnection _invalidate]", 30, "Invalidated\n");
LABEL_19:
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  bluetoothBandwidthChangedHandler = self->_bluetoothBandwidthChangedHandler;
  self->_bluetoothBandwidthChangedHandler = 0;

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  clients = self->_clients;
  self->_clients = 0;

  connectionStateChangedHandler = self->_connectionStateChangedHandler;
  self->_connectionStateChangedHandler = 0;

  dataHandler = self->_dataHandler;
  self->_dataHandler = 0;

  v18 = self->_invalidationHandler;
  self->_invalidationHandler = 0;
}

- (void)sendData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFBLEConnection_sendData_completion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_connectIfNeeded
{
  v15[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 10)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEConnection _connectIfNeeded]", 10, "ConnectIfNeeded\n");
  }

LABEL_5:
  [(CURetrier *)self->_connectRetrier succeededDirect];
  if (!self->_connected && !self->_connecting && [(WPNearby *)self->_wpNearby state]== 3)
  {
    self->_connecting = 1;
    kdebug_trace();
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_bleEncrypted];
    [v4 setObject:v5 forKeyedSubscript:@"kCBConnectOptionEncryptionEnabled"];

    if ((self->_sessionFlags & 0x1000) != 0)
    {
      v6 = [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCBConnectOptionDoNoDisconnectOnEncryptionFailure"];
    }

    if (self->_latencyCritical)
    {
      v7 = getWPNearbyKeyConnectLatencyCritical(v6);
      [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v7];
    }

    if (self->_lePipeCapable)
    {
      v8 = getWPNearbyLEPipeCapable(v6);
      [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v8];
    }

    if (self->_useCase)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      v15[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v11 = getWPNearbyKeyUseCaseList(v10);
      [v4 setObject:v10 forKeyedSubscript:v11];
    }

    v12 = self->_ucat;
    if (v12->var0 > 30)
    {
      goto LABEL_20;
    }

    if (v12->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      v12 = self->_ucat;
    }

    LogPrintF(v12, "[SFBLEConnection _connectIfNeeded]", 30, "Connecting with options %@\n", v4);
LABEL_20:
    self->_connectStartTime = CFAbsoluteTimeGetCurrent();
    wpNearby = self->_wpNearby;
    identifier = [(SFBLEDevice *)self->_peerDevice identifier];
    [(WPNearby *)wpNearby connectToPeer:identifier withOptions:v4];
  }
}

- (void)_cleanupQueuedData:(int)data
{
  selfCopy = self;
  v45[1] = *MEMORY[0x1E69E9840];
  currentData = self->_currentData;
  if (currentData)
  {
    completion = [(SFBLEData *)currentData completion];

    if (completion)
    {
      completion2 = [(SFBLEData *)selfCopy->_currentData completion];
      v8 = completion2;
      if (data)
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = selfCopy;
        v11 = *MEMORY[0x1E696A768];
        v44 = *MEMORY[0x1E696A578];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
        v13 = v12;
        v14 = @"?";
        if (v12)
        {
          v14 = v12;
        }

        v45[0] = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
        v16 = v11;
        selfCopy = v10;
        v17 = [v9 errorWithDomain:v16 code:data userInfo:v15];
        (v8)[2](v8, v17);
      }

      else
      {
        (*(completion2 + 16))(completion2, 0);
      }
    }

    v18 = selfCopy->_currentData;
    selfCopy->_currentData = 0;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = selfCopy;
  v19 = selfCopy->_dataSendQueue;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    v36 = *MEMORY[0x1E696A768];
    v35 = *MEMORY[0x1E696A578];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v37 + 1) + 8 * i);
        completion3 = [v24 completion];

        if (completion3)
        {
          completion4 = [v24 completion];
          v27 = completion4;
          if (data)
          {
            v28 = MEMORY[0x1E696ABC0];
            v41 = v35;
            v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
            v30 = v29;
            v31 = @"?";
            if (v29)
            {
              v31 = v29;
            }

            v42 = v31;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
            v33 = [v28 errorWithDomain:v36 code:data userInfo:v32];
            (v27)[2](v27, v33);
          }

          else
          {
            (*(completion4 + 16))(completion4, 0);
          }
        }
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v21);
  }

  [(NSMutableArray *)v34->_dataSendQueue removeAllObjects];
}

- (void)addClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  clients = selfCopy->_clients;
  if (!clients)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = selfCopy->_clients;
    selfCopy->_clients = v6;

    clients = selfCopy->_clients;
  }

  [(NSMutableSet *)clients addObject:clientCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)removeClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_clients removeObject:clientCopy];
  v6 = [(NSMutableSet *)selfCopy->_clients count]!= 0;
  objc_sync_exit(selfCopy);

  return v6;
}

- (SFBLEConnection)initWithDevice:(id)device acceptor:(BOOL)acceptor
{
  v19[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v17 = 0;
  v18 = 0;
  v19[0] = 0;
  v16 = 0;
  v15.receiver = self;
  v15.super_class = SFBLEConnection;
  v8 = [(SFBLEConnection *)&v15 init];
  v9 = v8;
  if (v8 && (v8->_acceptor = acceptor, v8->_bleEncrypted = 1, SFMainQueue(), v10 = objc_claimAutoreleasedReturnValue(), dispatchQueue = v9->_dispatchQueue, v9->_dispatchQueue = v10, dispatchQueue, objc_storeStrong(&v9->_peerDevice, device), [deviceCopy identifier], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "getUUIDBytes:", &v18), v12, ASPrintF(&v17, "SFBLEConnection-%.3H", v19 + 5, 3, 3), v17) && (v9->_ucat = LogCategoryCreateEx(), free(v17), !v16))
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_activate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEConnection _activate]", 30, "Activate\n");
  }

LABEL_6:
  if (!self->_wpNearby)
  {
    v4 = +[SFBLEClient sharedClient];
    v5 = [v4 addNearbyDelegate:self];
    wpNearby = self->_wpNearby;
    self->_wpNearby = v5;
  }

  if (!self->_dataSendQueue)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    dataSendQueue = self->_dataSendQueue;
    self->_dataSendQueue = v7;
  }

  if (self->_acceptor)
  {
    self->_connected = 1;
    if (self->_connectionStateChangedHandler)
    {
      OUTLINED_FUNCTION_2_2();
      v9();
    }
  }

  else if (!self->_connectRetrier)
  {
    v10 = objc_alloc_init(MEMORY[0x1E6999520]);
    connectRetrier = self->_connectRetrier;
    self->_connectRetrier = v10;

    [(CURetrier *)self->_connectRetrier setDispatchQueue:self->_dispatchQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __28__SFBLEConnection__activate__block_invoke;
    v12[3] = &unk_1E788B198;
    v12[4] = self;
    [(CURetrier *)self->_connectRetrier setActionHandler:v12];
    [(CURetrier *)self->_connectRetrier setInterval:3.0];
    [(CURetrier *)self->_connectRetrier startDirect];
  }

  [(SFBLEConnection *)self _processQueuedData];
}

- (void)sendDataDirect:(id)direct completion:(id)completion
{
  directCopy = direct;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    v7 = objc_alloc_init(SFBLEData);
    [(SFBLEData *)v7 setData:directCopy];
    [(SFBLEData *)v7 setCompletion:completionCopy];
    [(NSMutableArray *)self->_dataSendQueue addObject:v7];
    [(SFBLEConnection *)self _processQueuedData];
  }
}

- (void)_processQueuedData
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_connected)
  {
    return;
  }

  if (self->_currentData)
  {
    return;
  }

  firstObject = [(NSMutableArray *)self->_dataSendQueue firstObject];
  currentData = self->_currentData;
  self->_currentData = firstObject;

  if (!self->_currentData)
  {
    return;
  }

  [(NSMutableArray *)self->_dataSendQueue removeObjectAtIndex:0];
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      ucat = self->_ucat;
    }

    data = [(SFBLEData *)self->_currentData data];
    data2 = [(SFBLEData *)self->_currentData data];
    LogPrintF(ucat, "-[SFBLEConnection _processQueuedData]", 30, "Send data req: %'.32@ (%ld bytes)\n", data, [data2 length]);
  }

LABEL_8:
  data3 = [(SFBLEData *)self->_currentData data];
  OUTLINED_FUNCTION_1_9(725287000, [data3 length]);

  wpNearby = self->_wpNearby;
  data4 = [(SFBLEData *)self->_currentData data];
  identifier = [(SFBLEDevice *)self->_peerDevice identifier];
  [(WPNearby *)wpNearby sendData:data4 toPeer:identifier];
}

- (void)nearbyDidChangeBluetoothBandwidthState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  wpNearby = self->_wpNearby;
  if (wpNearby)
  {
    v6 = wpNearby == stateCopy;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_17;
  }

  [(WPNearby *)stateCopy btBandwidthState];
  ucat = OUTLINED_FUNCTION_2_7();
  if (v9 ^ v10 | v6)
  {
    if (v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      ucat = self->_ucat;
    }

    if ((v3 + 1) > 2)
    {
      v11 = "?";
    }

    else
    {
      v11 = off_1E788DCC8[v3 + 1];
    }

    LogPrintF(ucat, "[SFBLEConnection nearbyDidChangeBluetoothBandwidthState:]", 40, "Bluetooth bandwidth updated: %s\n", v11);
  }

LABEL_15:
  if (self->_bluetoothBandwidthChangedHandler)
  {
    OUTLINED_FUNCTION_2_2();
    v12();
  }

LABEL_17:
}

- (void)nearbyDidUpdateState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  wpNearby = self->_wpNearby;
  if (wpNearby)
  {
    v6 = wpNearby == stateCopy;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_28;
  }

  [(WPNearby *)stateCopy state];
  ucat = OUTLINED_FUNCTION_2_7();
  if (!(v9 ^ v10 | v6))
  {
    goto LABEL_15;
  }

  if (v8 != -1)
  {
    goto LABEL_9;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_9:
    if (v3 > 5)
    {
      v11 = "?";
    }

    else
    {
      v11 = off_1E788DCE0[v3];
    }

    LogPrintF(ucat, "[SFBLEConnection nearbyDidUpdateState:]", 40, "Bluetooth state updated: %s\n", v11);
  }

LABEL_15:
  if (v3 <= 5)
  {
    if (((1 << v3) & 0x36) == 0)
    {
      if (v3 == 3 && !self->_acceptor)
      {
        [(SFBLEConnection *)self _connectIfNeeded];
      }

      goto LABEL_26;
    }

    if (self->_connecting || self->_connected)
    {
      *&self->_connected = 0;
      v12 = self->_ucat;
      if (v12->var0 <= 60)
      {
        if (v12->var0 != -1)
        {
LABEL_21:
          LogPrintF(v12, "[SFBLEConnection nearbyDidUpdateState:]", 60, "### Disconnect due to %s state\n", off_1E788DD10[v3 - 1]);
          goto LABEL_26;
        }

        if (_LogCategory_Initialize())
        {
          v12 = self->_ucat;
          goto LABEL_21;
        }
      }
    }
  }

LABEL_26:
  if (self->_bluetoothStateChangedHandler)
  {
    OUTLINED_FUNCTION_2_2();
    v13();
  }

LABEL_28:
}

- (void)nearby:(id)nearby didConnectToPeer:(id)peer transport:(int64_t)transport error:(id)error
{
  v34[3] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  v13 = self->_peerDevice;
  wpNearby = self->_wpNearby;

  if (!wpNearby)
  {
    goto LABEL_34;
  }

  if (wpNearby != nearbyCopy)
  {
    goto LABEL_34;
  }

  identifier = [(SFBLEDevice *)v13 identifier];
  v16 = [identifier isEqual:peerCopy];

  if (!v16)
  {
    goto LABEL_34;
  }

  self->_connecting = 0;
  if (!self->_acceptor)
  {
    v19 = CFAbsoluteTimeGetCurrent() - self->_connectStartTime;
    self->_connected = errorCopy == 0;
    if (errorCopy)
    {
      ucat = OUTLINED_FUNCTION_3_7();
      if (v21 <= 50)
      {
        if (v21 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_23;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[SFBLEConnection nearby:didConnectToPeer:transport:error:]", 50, "### Connect failed (%f seconds): %@\n", *&v19, errorCopy);
      }

LABEL_23:
      if (self->_connectionStateChangedHandler)
      {
        OUTLINED_FUNCTION_2_2();
        v26();
      }

      [(CURetrier *)self->_connectRetrier failedDirect];
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_1_9(725286996, 0);
    v24 = OUTLINED_FUNCTION_3_7();
    if (v25 <= 30)
    {
      if (v25 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        v24 = self->_ucat;
      }

      LogPrintF(v24, "[SFBLEConnection nearby:didConnectToPeer:transport:error:]", 30, "Connected (%f seconds)\n", v19);
    }

LABEL_27:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v33[0] = @"SFBluetoothNotificationKeyConnectStart";
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_connectStartTime];
    v34[0] = v28;
    v33[1] = @"SFBluetoothNotificationKeyConnectTime";
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    v33[2] = @"SFBluetoothNotificationKeyPeerDevice";
    v34[1] = v29;
    v34[2] = v13;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
    [defaultCenter postNotificationName:@"SFBluetoothNotificationNameConnected" object:self userInfo:v30];

    [(CURetrier *)self->_connectRetrier succeededDirect];
    if (self->_connectionStateChangedHandler)
    {
      OUTLINED_FUNCTION_2_2();
      v31();
    }

    [(SFBLEConnection *)self _processQueuedData];

    goto LABEL_34;
  }

  if (!errorCopy)
  {
    if (self->_connected)
    {
      goto LABEL_31;
    }

    self->_connected = 1;
    v22 = OUTLINED_FUNCTION_3_7();
    if (v23 > 30)
    {
      goto LABEL_31;
    }

    if (v23 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_31;
      }

      v22 = self->_ucat;
    }

    LogPrintF(v22, "[SFBLEConnection nearby:didConnectToPeer:transport:error:]", 30, "Re-connected\n");
LABEL_31:
    if (self->_connectionStateChangedHandler)
    {
      OUTLINED_FUNCTION_2_2();
      v32();
    }

    [(SFBLEConnection *)self _processQueuedData];
    goto LABEL_34;
  }

  v17 = OUTLINED_FUNCTION_3_7();
  if (v18 <= 50)
  {
    if (v18 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_34;
      }

      v17 = self->_ucat;
    }

    LogPrintF(v17, "[SFBLEConnection nearby:didConnectToPeer:transport:error:]", 50, "### Connect failed: %@\n", errorCopy);
  }

LABEL_34:
}

- (void)nearby:(id)nearby didDisconnectFromPeer:(id)peer error:(id)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  v13 = 0;
  if (!wpNearby)
  {
    goto LABEL_18;
  }

  if (wpNearby != nearbyCopy)
  {
    goto LABEL_18;
  }

  v13 = self->_peerDevice;
  identifier = [(SFBLEDevice *)v13 identifier];
  v15 = [identifier isEqual:peerCopy];

  if (!v15)
  {
    goto LABEL_18;
  }

  *&self->_connected = 0;
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (errorCopy)
  {
    if (var0 <= 50)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SFBLEConnection nearby:didDisconnectFromPeer:error:]", 50, "### Disconnect failed: %@\n", errorCopy);
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEConnection nearby:didDisconnectFromPeer:error:]", 30, "Disconnected\n");
  }

LABEL_15:
  [(SFBLEConnection *)self _cleanupQueuedData:4294960543];
  if (self->_connectionStateChangedHandler)
  {
    OUTLINED_FUNCTION_2_2();
    v18();
  }

  [(CURetrier *)self->_connectRetrier failedDirect];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v21 = @"SFBluetoothNotificationKeyPeerDevice";
  v22[0] = v13;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [defaultCenter postNotificationName:@"SFBluetoothNotificationNameDisconnected" object:self userInfo:v20];

LABEL_18:
}

- (void)nearby:(id)nearby didSendData:(id)data toPeer:(id)peer error:(id)error
{
  dataCopy = data;
  peerCopy = peer;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (!wpNearby)
  {
    goto LABEL_24;
  }

  if (wpNearby != nearbyCopy)
  {
    goto LABEL_24;
  }

  identifier = [(SFBLEDevice *)self->_peerDevice identifier];
  v16 = [identifier isEqual:peerCopy];

  if (!v16)
  {
    goto LABEL_24;
  }

  if (!self->_currentData)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 50)
    {
      goto LABEL_24;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_24;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "-[SFBLEConnection nearby:didSendData:toPeer:error:]", 50, "### Send data ack without data %'.32@ (%ld bytes), error %@\n", dataCopy, [dataCopy length], errorCopy);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_1_9(725287004, [dataCopy length]);
  v17 = self->_ucat;
  var0 = v17->var0;
  if (errorCopy)
  {
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v17 = self->_ucat;
      }

      LogPrintF(v17, "-[SFBLEConnection nearby:didSendData:toPeer:error:]", 60, "### Send data ack failed for data %'.32@ (%ld bytes): %@\n", dataCopy, [dataCopy length], errorCopy);
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      v17 = self->_ucat;
    }

    LogPrintF(v17, "-[SFBLEConnection nearby:didSendData:toPeer:error:]", 30, "Send data ack for data %'.32@ (%ld bytes)\n", dataCopy, [dataCopy length]);
  }

LABEL_21:
  completion = [(SFBLEData *)self->_currentData completion];

  if (completion)
  {
    completion2 = [(SFBLEData *)self->_currentData completion];
    OUTLINED_FUNCTION_2_2();
    v22();
  }

  currentData = self->_currentData;
  self->_currentData = 0;

LABEL_24:
  [(SFBLEConnection *)self _processQueuedData];
}

- (void)nearby:(id)nearby didReceiveData:(id)data fromPeer:(id)peer
{
  dataCopy = data;
  peerCopy = peer;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    if (wpNearby == nearbyCopy)
    {
      identifier = [(SFBLEDevice *)self->_peerDevice identifier];
      v13 = [identifier isEqual:peerCopy];

      if (v13)
      {
        if (self->_dataHandler)
        {
          OUTLINED_FUNCTION_2_2();
          v14();
        }
      }
    }
  }

  [(SFBLEConnection *)self _processQueuedData];
}

@end