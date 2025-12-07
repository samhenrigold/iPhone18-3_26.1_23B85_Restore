@interface SFSession
- (BOOL)_appleIDAddProof:(id)proof error:(id *)error;
- (BOOL)_sessionReceivedEvent:(id)event flags:(unsigned int)flags;
- (BOOL)_sessionReceivedRegisteredRequestID:(id)d flags:(unsigned int)flags xidKey:(id)key xidValue:(id)value;
- (BOOL)_sessionReceivedRequest:(id)request flags:(unsigned int)flags responseHandler:(id)handler;
- (BOOL)pairingContainsACL:(id)l;
- (SFSession)init;
- (SFSession)initWithCoder:(id)coder;
- (id)_appleIDVerifyProof:(id)proof error:(id *)error;
- (id)description;
- (id)pairingDeriveKeyForIdentifier:(id)identifier keyLength:(unint64_t)length;
- (int)setEncryptionReadKey:(const char *)key readKeyLen:(unint64_t)len writeKey:(const char *)writeKey writeKeyLen:(unint64_t)keyLen;
- (void)_activateWithCompletion:(id)completion;
- (void)_activated;
- (void)_activatedIfReady:(id)ready;
- (void)_cleanup;
- (void)_deregisterRequestID:(id)d;
- (void)_ensureXPCStarted;
- (void)_fetchInfo;
- (void)_hearbeatTimer;
- (void)_interrupted;
- (void)_invalidated;
- (void)_pairSetup:(id)setup start:(BOOL)start;
- (void)_pairSetupCompleted:(int)completed;
- (void)_pairSetupTryPIN:(id)n;
- (void)_pairSetupWithFlags:(unsigned int)flags completion:(id)completion isServer:(BOOL)server;
- (void)_pairVerify:(id)verify start:(BOOL)start;
- (void)_pairVerifyCompleted:(int)completed;
- (void)_pairVerifyWithFlags:(unsigned int)flags completion:(id)completion;
- (void)_registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)_sendEncryptedObject:(id)object;
- (void)_sendFrameType:(unsigned __int8)type object:(id)object;
- (void)_sendRequestID:(id)d options:(id)options request:(id)request responseHandler:(id)handler;
- (void)_sendRequestWithFlags:(unsigned int)flags object:(id)object responseHandler:(id)handler;
- (void)_serviceInitiatedPairSetup:(id)setup;
- (void)_sessionReceivedEncryptedData:(id)data type:(unsigned __int8)type;
- (void)_sessionReceivedObject:(id)object flags:(unsigned int)flags;
- (void)_sessionReceivedRequestID:(id)d object:(id)object flags:(unsigned int)flags;
- (void)_sessionReceivedResponseID:(id)d object:(id)object flags:(unsigned int)flags;
- (void)_sessionReceivedStartAck:(id)ack;
- (void)_sessionReceivedUnencryptedData:(id)data type:(unsigned __int8)type;
- (void)_setupMessageSession;
- (void)_setupTouchRemote;
- (void)_startTimeoutIfNeeded;
- (void)_tearDownMessageSession;
- (void)_tearDownTouchRemote;
- (void)_timeoutTimerFired;
- (void)activateWithCompletion:(id)completion;
- (void)appleIDAddProof:(id)proof dispatchQueue:(id)queue completion:(id)completion;
- (void)appleIDVerifyProof:(id)proof dispatchQueue:(id)queue completion:(id)completion;
- (void)dealloc;
- (void)deregisterRequestID:(id)d;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)n;
- (void)pairSetupWithFlags:(unsigned int)flags completion:(id)completion isServer:(BOOL)server;
- (void)pairVerifyWithFlags:(unsigned int)flags completion:(id)completion;
- (void)registerForExternalIO:(id)o;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)sendEvent:(id)event;
- (void)sendExternalIO:(id)o;
- (void)sendFrameType:(unsigned __int8)type data:(id)data;
- (void)sendFrameType:(unsigned __int8)type object:(id)object;
- (void)sendRequest:(id)request;
- (void)sendRequestID:(id)d options:(id)options request:(id)request responseHandler:(id)handler;
- (void)sendRequestWithFlags:(unsigned int)flags object:(id)object responseHandler:(id)handler;
- (void)sendResponse:(id)response;
- (void)sendWithFlags:(unsigned int)flags object:(id)object;
- (void)sessionBluetoothStateChanged:(int64_t)changed;
- (void)sessionError:(id)error;
- (void)sessionReceivedEvent:(id)event;
- (void)sessionReceivedFragmentData:(id)data last:(BOOL)last;
- (void)sessionReceivedFrameType:(unsigned __int8)type data:(id)data;
- (void)sessionReceivedRequest:(id)request;
- (void)sessionReceivedResponse:(id)response;
- (void)setLabel:(id)label;
@end

@implementation SFSession

- (void)registerForExternalIO:(id)o
{
  oCopy = o;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SFSession_CNJ__registerForExternalIO___block_invoke;
  v6[3] = &unk_1E788B4F8;
  v7 = oCopy;
  v5 = oCopy;
  [(SFSession *)self registerRequestID:@"_cnjExtIO" options:0 handler:v6];
}

void __40__SFSession_CNJ__registerForExternalIO___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a4;
  v6 = [a3 objectForKeyedSubscript:@"d"];
  if (v6)
  {
    if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
    {
      __40__SFSession_CNJ__registerForExternalIO___block_invoke_cold_1(v6);
    }

    [*(a1 + 32) receivedData:v6];
    (*(v8 + 2))(v8, 0, 0, MEMORY[0x1E695E0F8]);
  }

  else
  {
    v7 = NSErrorWithOSStatusF(4294960591, "no data");
    if (gLogCategory_SFDeviceOperationCNJ <= 90 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
    {
      __40__SFSession_CNJ__registerForExternalIO___block_invoke_cold_2(v7);
    }

    (*(v8 + 2))(v8, v7, 0, MEMORY[0x1E695E0F8]);
  }
}

- (void)sendExternalIO:(id)o
{
  v7[1] = *MEMORY[0x1E69E9840];
  oCopy = o;
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    [SFSession(CNJ) sendExternalIO:oCopy];
  }

  v6 = @"d";
  v7[0] = oCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(SFSession *)self sendRequestID:@"_cnjExtIO" options:0 request:v5 responseHandler:&__block_literal_global_52];
}

void __33__SFSession_CNJ__sendExternalIO___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceOperationCNJ, "[SFSession(CNJ) sendExternalIO:]_block_invoke", 30, "CNJ external IO: got response: %@ (error: %@)", v7, v8);
  }
}

- (SFSession)init
{
  v6.receiver = self;
  v6.super_class = SFSession;
  v2 = [(SFSession *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_ucatCore = &gLogCategory_SFSessionCore;
    v2->_ucatCrypto = &gLogCategory_SFSessionCrypto;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = self->_identifier;
  v9 = coderCopy;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"ident"];
    coderCopy = v9;
  }

  peerDevice = self->_peerDevice;
  if (peerDevice)
  {
    [v9 encodeObject:peerDevice forKey:@"pd"];
    coderCopy = v9;
  }

  if (self->_serviceType)
  {
    [v9 encodeInteger:? forKey:?];
    coderCopy = v9;
  }

  serviceUUID = self->_serviceUUID;
  if (serviceUUID)
  {
    [v9 encodeObject:serviceUUID forKey:@"sid"];
    coderCopy = v9;
  }

  sessionFlags = self->_sessionFlags;
  if (sessionFlags)
  {
    [v9 encodeInteger:sessionFlags forKey:@"seFl"];
    coderCopy = v9;
  }
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v5 = [SFProximityClient dealloc];
    [(SFSession *)v5 _cleanup];
  }

  else
  {
    [(SFSession *)self _cleanup];
    ucatCore = self->_ucatCore;
    if (ucatCore && (ucatCore->var3 & 0x40000) != 0)
    {
      LogCategory_Remove();
      self->_ucatCore = 0;
    }

    ucatCrypto = self->_ucatCrypto;
    if (ucatCrypto)
    {
      if ((ucatCrypto->var3 & 0x40000) != 0)
      {
        LogCategory_Remove();
        self->_ucatCrypto = 0;
      }
    }

    v7.receiver = self;
    v7.super_class = SFSession;
    [(SFSession *)&v7 dealloc];
  }
}

- (void)_cleanup
{
  encryptionReadAEAD = self->_encryptionReadAEAD;
  if (encryptionReadAEAD)
  {
    CFRelease(encryptionReadAEAD);
    self->_encryptionReadAEAD = 0;
  }

  encryptionWriteAEAD = self->_encryptionWriteAEAD;
  if (encryptionWriteAEAD)
  {
    CFRelease(encryptionWriteAEAD);
    self->_encryptionWriteAEAD = 0;
  }

  pairSetupCompletion = self->_pairSetupCompletion;
  self->_pairSetupCompletion = 0;

  [(CUPairingSession *)self->_pairSetupSession invalidate];
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = 0;

  pairVerifyCompletion = self->_pairVerifyCompletion;
  self->_pairVerifyCompletion = 0;

  pairVerifySession = self->_pairVerifySession;
  if (pairVerifySession)
  {
    CFRelease(pairVerifySession);
    self->_pairVerifySession = 0;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v10 = timeoutTimer;
    dispatch_source_cancel(v10);
    v11 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  eventMessageHandler = self->_eventMessageHandler;
  self->_eventMessageHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  receivedFrameHandler = self->_receivedFrameHandler;
  self->_receivedFrameHandler = 0;

  receivedObjectHandler = self->_receivedObjectHandler;
  self->_receivedObjectHandler = 0;

  receivedRequestHandler = self->_receivedRequestHandler;
  self->_receivedRequestHandler = 0;

  requestMessageHandler = self->_requestMessageHandler;
  self->_requestMessageHandler = 0;

  responseMessageInternalHandler = self->_responseMessageInternalHandler;
  self->_responseMessageInternalHandler = 0;

  sendFrameHandler = self->_sendFrameHandler;
  self->_sendFrameHandler = 0;

  sessionStartedHandler = self->_sessionStartedHandler;
  self->_sessionStartedHandler = 0;

  transaction = self->_transaction;
  self->_transaction = 0;

  timeoutHandler = self->_timeoutHandler;
  self->_timeoutHandler = 0;

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;
}

- (id)description
{
  v26 = 0;
  NSAppendPrintF(&v26, "SFSession");
  v3 = v26;
  serviceType = self->_serviceType;
  if (self->_serviceType)
  {
    v25 = v3;
    SFNearbyBLEServiceTypeToString_0(serviceType);
    v5 = &v25;
    NSAppendPrintF(&v25, "-%s");
  }

  else
  {
    serviceIdentifier = self->_serviceIdentifier;
    if (!serviceIdentifier)
    {
      goto LABEL_6;
    }

    v24 = v3;
    v5 = &v24;
    NSAppendPrintF(&v24, "-%@", serviceIdentifier);
  }

  v7 = *v5;

  v3 = v7;
LABEL_6:
  if (self->_invalidateCalled)
  {
    v23 = v3;
    NSAppendPrintF(&v23, ", invalidated");
    v8 = v23;

    v3 = v8;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    v22 = v3;
    NSAppendPrintF(&v22, ", ID %@", identifier);
    v10 = v22;

    v3 = v10;
  }

  peerDevice = self->_peerDevice;
  if (peerDevice)
  {
    v21 = v3;
    NSAppendPrintF(&v21, ", Peer %@", peerDevice);
    v12 = v21;

    v3 = v12;
  }

  sessionFlags = self->_sessionFlags;
  if (sessionFlags)
  {
    v20 = v3;
    NSAppendPrintF(&v20, ", %#{flags}", sessionFlags, &unk_1A9990230);
    v14 = v20;

    v3 = v14;
  }

  if ([(NSMutableDictionary *)self->_requestHandlers count])
  {
    v19 = v3;
    NSAppendPrintF(&v19, ", %ld handlers", [(NSMutableDictionary *)self->_requestHandlers count]);
    v15 = v19;

    v3 = v15;
  }

  if ([(NSMutableDictionary *)self->_requestMap count])
  {
    v18 = v3;
    NSAppendPrintF(&v18, ", %ld requests", [(NSMutableDictionary *)self->_requestMap count]);
    v16 = v18;

    v3 = v16;
  }

  return v3;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__SFSession_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  v38[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v35 = 0;
  RandomBytes();
  v8 = self->_serviceIdentifier;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFSession _activateWithCompletion:]", 30, "Activate session: SVID %@, SID 0x%08X\n", v8, self->_sessionID);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_invalidateCalled)
  {
    v25 = 4294960572;
  }

  else
  {
    self->_activateCalled = 1;
    if (v8)
    {
      serviceType = self->_serviceType;
      if (!self->_serviceType)
      {
        serviceType = SFServiceIdentifierToType(v8);
        self->_serviceType = serviceType;
      }

      if (self->_serviceUUID || (SFServiceTypeToUUID(serviceType), v11 = objc_claimAutoreleasedReturnValue(), serviceUUID = self->_serviceUUID, self->_serviceUUID = v11, serviceUUID, self->_serviceUUID) || (SFServiceIdentifierToUUID(v8, &v35), v13 = objc_claimAutoreleasedReturnValue(), v14 = self->_serviceUUID, self->_serviceUUID = v13, v14, self->_serviceUUID))
      {
        if (!self->_requestQueue)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          requestQueue = self->_requestQueue;
          self->_requestQueue = v15;
        }

        if (!self->_identifier)
        {
          uUID = [MEMORY[0x1E696AFB0] UUID];
          identifier = self->_identifier;
          self->_identifier = uUID;
        }

        if (!self->_peer)
        {
          identifier = [(SFDevice *)self->_peerDevice identifier];
          peer = self->_peer;
          self->_peer = identifier;
        }

        [(SFSession *)self _ensureXPCStarted];
        [(SFSession *)self _fetchInfo];
        v21 = _Block_copy(completionCopy);
        activateCompletion = self->_activateCompletion;
        self->_activateCompletion = v21;

        self->_activateInProgress = 1;
        xpcCnx = self->_xpcCnx;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __37__SFSession__activateWithCompletion___block_invoke;
        v33[3] = &unk_1E788BF88;
        v33[4] = self;
        v34 = completionCopy;
        v24 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v33];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __37__SFSession__activateWithCompletion___block_invoke_2;
        v32[3] = &unk_1E788B238;
        v32[4] = self;
        [v24 sessionActivate:self completion:v32];

        v35 = 0;
        goto LABEL_19;
      }

      v25 = 4294960588;
    }

    else
    {
      v25 = 4294960551;
    }
  }

  v35 = v25;
  v26 = self->_ucatCore;
  if (v26->var0 <= 60)
  {
    if (v26->var0 != -1)
    {
LABEL_25:
      LogPrintF(v26, "[SFSession _activateWithCompletion:]", 60, "### Activate start failed: %#m\n", v25);
      goto LABEL_27;
    }

    if (_LogCategory_Initialize())
    {
      v26 = self->_ucatCore;
      v25 = v35;
      goto LABEL_25;
    }
  }

LABEL_27:
  if (completionCopy)
  {
    v27 = v35;
    if (v35)
    {
      v28 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A578];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v3 = v29;
      v30 = @"?";
      if (v29)
      {
        v30 = v29;
      }

      v38[0] = v30;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v31 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:v27 userInfo:v4];
    }

    else
    {
      v31 = 0;
    }

    (*(completionCopy + 2))(completionCopy, v31);
    if (v27)
    {
    }
  }

LABEL_19:

  os_activity_scope_leave(&state);
}

void __37__SFSession__activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 177) = 0;
  v10 = v3;
  if (v3)
  {
    v4 = v3;
    v5 = *(*(a1 + 32) + 160);
    if (*v5 <= 60)
    {
      if (*v5 != -1)
      {
LABEL_4:
        LogPrintF(v5, "[SFSession _activateWithCompletion:]_block_invoke", 60, "### Activate failed: %{error}\n", v4);
        goto LABEL_6;
      }

      v6 = _LogCategory_Initialize();
      v4 = v10;
      if (v6)
      {
        v5 = *(*(a1 + 32) + 160);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v10);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 184);
  *(v8 + 184) = 0;
}

- (void)_activated
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (!self->_invalidateCalled)
  {
    self->_activateCompleted = 1;
    ucatCore = self->_ucatCore;
    if (ucatCore->var0 > 30)
    {
      goto LABEL_6;
    }

    if (ucatCore->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_6:
        if (!self->_serviceType)
        {
          return;
        }

        [(SFSession *)self _setupMessageSession];
        if (self->_touchRemoteEnabled)
        {
          [(SFSession *)self _setupTouchRemote];
        }

        [(SFSession *)self _startTimeoutIfNeeded];
        if (!self->_transaction)
        {
          v5 = os_transaction_create();
          transaction = self->_transaction;
          self->_transaction = v5;

          if (!self->_transaction)
          {
            v7 = self->_ucatCore;
            if (v7->var0 <= 60)
            {
              if (v7->var0 != -1)
              {
LABEL_13:
                LogPrintF(v7, "[SFSession _activated]", 60, "### Create transaction failed\n");
                goto LABEL_15;
              }

              if (_LogCategory_Initialize())
              {
                v7 = self->_ucatCore;
                goto LABEL_13;
              }
            }
          }
        }

LABEL_15:
        v18[0] = @"sid";
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sessionID];
        v18[1] = @"shv";
        v19[0] = v8;
        v19[1] = @"1945.10.6";
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

        v10 = self->_ucatCore;
        if (v10->var0 > 30)
        {
          goto LABEL_19;
        }

        if (v10->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
LABEL_19:
            DataMutable = OPACKEncoderCreateDataMutable();
            if (DataMutable)
            {
              [(SFSession *)self sendFrameType:23 data:DataMutable];
              goto LABEL_25;
            }

            v12 = self->_ucatCore;
            if (v12->var0 <= 60)
            {
              if (v12->var0 != -1)
              {
LABEL_23:
                LogPrintF(v12, "[SFSession _activated]", 60, "### Start request encode failed\n");
                goto LABEL_25;
              }

              if (_LogCategory_Initialize())
              {
                v12 = self->_ucatCore;
                goto LABEL_23;
              }
            }

LABEL_25:
            if (self->_heartbeatTimer)
            {
LABEL_31:

              return;
            }

            RandomBytes();
            v13 = self->_ucatCore;
            if (v13->var0 <= 30)
            {
              if (v13->var0 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_30;
                }

                v13 = self->_ucatCore;
              }

              LogPrintF(v13, "[SFSession _activated]", 30, "Heartbeat start '%.3H'\n", &self->_heartbeatID, 4, 4);
            }

LABEL_30:
            self->_heartbeatLastTicks = mach_absolute_time();
            v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
            heartbeatTimer = self->_heartbeatTimer;
            self->_heartbeatTimer = v14;

            v16 = self->_heartbeatTimer;
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = __23__SFSession__activated__block_invoke;
            handler[3] = &unk_1E788B198;
            handler[4] = self;
            dispatch_source_set_event_handler(v16, handler);
            SFDispatchTimerSet(self->_heartbeatTimer, 3.0, 3.0, -4.0);
            dispatch_resume(self->_heartbeatTimer);
            goto LABEL_31;
          }

          v10 = self->_ucatCore;
        }

        LogPrintF(v10, "[SFSession _activated]", 30, "Start request send: %##@\n", v9);
        goto LABEL_19;
      }

      ucatCore = self->_ucatCore;
    }

    v4 = SFNearbyBLEServiceTypeToString_0(self->_serviceType);
    LogPrintF(ucatCore, "[SFSession _activated]", 30, "Activated: ST %s\n", v4);
    goto LABEL_6;
  }
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    testListenerEndpoint = self->_testListenerEndpoint;
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = (testListenerEndpoint ? [v4 initWithListenerEndpoint:self->_testListenerEndpoint] : objc_msgSend(v4, "initWithMachServiceName:options:", @"com.apple.SharingServices", 0));
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __30__SFSession__ensureXPCStarted__block_invoke;
    v11[3] = &unk_1E788B198;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __30__SFSession__ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_1E788B198;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEFC0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
    ucatCore = self->_ucatCore;
    if (ucatCore->var0 <= 20)
    {
      if (ucatCore->var0 != -1)
      {
LABEL_7:
        LogPrintF(ucatCore, "[SFSession _ensureXPCStarted]", 20, "XPC started\n");
        return;
      }

      if (_LogCategory_Initialize())
      {
        ucatCore = self->_ucatCore;
        goto LABEL_7;
      }
    }
  }
}

- (void)_fetchInfo
{
  if ((self->_sessionFlags & 4) == 0)
  {
    self->_appleIDContactCompleted = 1;
    return;
  }

  if (!self->_appleIDContactInfo)
  {
    ucatCore = self->_ucatCore;
    if (ucatCore->var0 <= 30)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        ucatCore = self->_ucatCore;
      }

      LogPrintF(ucatCore, "[SFSession _fetchInfo]", 30, "Fetching Apple ID contact info\n");
    }

LABEL_8:
    v4 = objc_alloc_init(SFAppleIDClient);
    [(SFAppleIDClient *)v4 setDispatchQueue:self->_dispatchQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __23__SFSession__fetchInfo__block_invoke;
    v6[3] = &unk_1E7890C88;
    v6[4] = self;
    v7 = v4;
    v5 = v4;
    [(SFAppleIDClient *)v5 myAccountWithCompletion:v6];
  }
}

void __23__SFSession__fetchInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = a1 + 32;
  *(*(a1 + 32) + 200) = 1;
  v8 = *(*(a1 + 32) + 160);
  if (*v8 <= 30)
  {
    if (*v8 != -1)
    {
LABEL_3:
      LogPrintF(v8, "[SFSession _fetchInfo]_block_invoke", 30, "Fetched Apple ID contact info\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v8 = *(*v7 + 160);
      goto LABEL_3;
    }
  }

LABEL_5:
  if (v6)
  {
    __23__SFSession__fetchInfo__block_invoke_cold_1(a1 + 32);
  }

  else if (v5)
  {
    v9 = [v5 contactInfo];
    v10 = *(*v7 + 192);
    *(*v7 + 192) = v9;

    if (!*(*v7 + 192))
    {
      __23__SFSession__fetchInfo__block_invoke_cold_2();
    }
  }

  else
  {
    __23__SFSession__fetchInfo__block_invoke_cold_3(a1 + 32);
  }

  [*(a1 + 40) invalidate];
  [*(a1 + 32) _activatedIfReady:0];
  v16[0] = @"errDomain";
  v11 = [v6 domain];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F1D30528;
  }

  v16[1] = @"errCode";
  v17[0] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "code")}];
  v17[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  SFMetricsLog(@"com.apple.sharing.sessionFetchInfo", v15);
}

- (void)_hearbeatTimer
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!self->_heartbeatTimer)
  {
    return;
  }

  mach_absolute_time();
  UpTicksToSecondsF();
  v4 = v3;
  if (v3 >= 300.0)
  {
    ucatCore = self->_ucatCore;
    if (ucatCore->var0 <= 60)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        ucatCore = self->_ucatCore;
      }

      LogPrintF(ucatCore, "[SFSession _hearbeatTimer]", 60, "### Heartbeat timeout after %.3f secs\n", v4);
    }

LABEL_15:
    self->_heartbeatWaiting = 0;
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A768];
    v18 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v11 = v10;
    v12 = @"?";
    if (v10)
    {
      v12 = v10;
    }

    v19[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v8 errorWithDomain:v9 code:-71160 userInfo:v13];
    [(SFSession *)self sessionError:v14];

    return;
  }

  if (!self->_heartbeatWaiting)
  {
    if (!self->_activateCompleted)
    {
      return;
    }

    v7 = self->_ucatCore;
    if (v7->var0 > 30)
    {
      goto LABEL_22;
    }

    if (v7->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v7 = self->_ucatCore;
    }

    LogPrintF(v7, "[SFSession _hearbeatTimer]", 30, "Heartbeat send after %.3f secs '%.3H'\n", *&v4, &self->_heartbeatID, 4, 4);
LABEL_22:
    v15 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_heartbeatID length:4];
    ++self->_heartbeatID;
    self->_heartbeatWaiting = 1;
    if (self->_heartbeatV2)
    {
      v16 = 21;
    }

    else
    {
      v16 = 20;
    }

    v17 = v15;
    [(SFSession *)self sendFrameType:v16 data:?];

    return;
  }

  v5 = self->_ucatCore;
  if (v5->var0 <= 30)
  {
    if (v5->var0 != -1)
    {
LABEL_6:
      LogPrintF(v5, "[SFSession _hearbeatTimer]", 30, "Heartbeat no reply after %.3f secs\n", v4);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v5 = self->_ucatCore;
      goto LABEL_6;
    }
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 > 50)
  {
    goto LABEL_5;
  }

  if (ucatCore->var0 != -1)
  {
    goto LABEL_3;
  }

  if (_LogCategory_Initialize())
  {
    ucatCore = self->_ucatCore;
LABEL_3:
    LogPrintF(ucatCore, "[SFSession _interrupted]", 50, "### Interrupted\n");
  }

LABEL_5:
  *&self->_activateInProgress = 0;
  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  if (self->_activateCalled)
  {
    v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    v6 = self->_ucatCore;
    if (v6->var0 <= 50)
    {
      if (v6->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v6 = self->_ucatCore;
      }

      LogPrintF(v6, "[SFSession _interrupted]", 50, "Restarting after interruption\n");
    }

LABEL_12:
    [(SFSession *)self _ensureXPCStarted];
    self->_activateInProgress = 1;
    xpcCnx = self->_xpcCnx;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __25__SFSession__interrupted__block_invoke;
    v10[3] = &unk_1E788B238;
    v10[4] = self;
    v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __25__SFSession__interrupted__block_invoke_2;
    v9[3] = &unk_1E788B238;
    v9[4] = self;
    [v8 sessionActivate:self completion:v9];

    os_activity_scope_leave(&state);
  }
}

void __25__SFSession__interrupted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 177) = 0;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 160);
    if (*v4 <= 60)
    {
      v6 = v3;
      if (*v4 != -1)
      {
LABEL_4:
        LogPrintF(v4, "[SFSession _interrupted]_block_invoke", 60, "### Restart failed: %{error}\n", v3);
        v3 = v6;
        goto LABEL_6;
      }

      v5 = _LogCategory_Initialize();
      v3 = v6;
      if (v5)
      {
        v4 = *(*(a1 + 32) + 160);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
}

void __25__SFSession__interrupted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 177) = 0;
  v4 = *(a1 + 32);
  if (!v3)
  {
    v7 = 0;
    [v4 _activated];
    goto LABEL_6;
  }

  v5 = v4[20];
  if (*v5 > 60)
  {
    goto LABEL_7;
  }

  v7 = v3;
  if (*v5 != -1)
  {
LABEL_4:
    LogPrintF(v5, "[SFSession _interrupted]_block_invoke_2", 60, "### Restart failed: %{error}\n", v3);
LABEL_6:
    v3 = v7;
    goto LABEL_7;
  }

  v6 = _LogCategory_Initialize();
  v3 = v7;
  if (v6)
  {
    v5 = *(*(a1 + 32) + 160);
    goto LABEL_4;
  }

LABEL_7:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__SFSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __23__SFSession_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 201))
  {
    return;
  }

  *(v1 + 201) = 1;
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  if (*v4 <= 30)
  {
    if (*v4 == -1)
    {
      v5 = _LogCategory_Initialize();
      v3 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_6;
      }

      v4 = *(v3 + 160);
    }

    LogPrintF(v4, "[SFSession invalidate]_block_invoke", 30, "Invalidating\n");
    v3 = *(a1 + 32);
  }

LABEL_6:
  v6 = *(v3 + 96);
  if (v6)
  {
    v7 = v6;
    dispatch_source_cancel(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 96);
    *(v8 + 96) = 0;
  }

  v10 = *(*(a1 + 32) + 304);
  if (v10)
  {
    v11 = v10;
    dispatch_source_cancel(v11);
    v12 = *(a1 + 32);
    v13 = *(v12 + 304);
    *(v12 + 304) = 0;
  }

  v14 = *(*(a1 + 32) + 312);
  if (v14)
  {
    [v14 invalidate];
    v15 = *(a1 + 32);
    v16 = *(v15 + 312);
    *(v15 + 312) = 0;
  }

  else
  {
    v17 = *(a1 + 32);

    [v17 _invalidated];
  }
}

- (void)_invalidated
{
  v37 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateDone)
  {
    return;
  }

  if (!self->_invalidateCalled)
  {
    ucatCore = self->_ucatCore;
    if (ucatCore->var0 <= 50)
    {
      if (ucatCore->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucatCore, "[SFSession _invalidated]", 50, "### Unexpectedly invalidated\n");
        goto LABEL_7;
      }

      if (_LogCategory_Initialize())
      {
        ucatCore = self->_ucatCore;
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  heartbeatTimer = self->_heartbeatTimer;
  if (heartbeatTimer)
  {
    v5 = heartbeatTimer;
    dispatch_source_cancel(v5);
    v6 = self->_heartbeatTimer;
    self->_heartbeatTimer = 0;
  }

  [(SFSession *)self _tearDownMessageSession];
  [(SFSession *)self _tearDownTouchRemote];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_requestQueue;
  v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v28 = *MEMORY[0x1E696A768];
    v10 = *MEMORY[0x1E696A578];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [(NSMutableDictionary *)self->_requestQueue objectForKeyedSubscript:*(*(&v30 + 1) + 8 * i)];
        responseHandler = [v12 responseHandler];

        if (responseHandler)
        {
          responseHandler2 = [v12 responseHandler];
          v15 = MEMORY[0x1E696ABC0];
          v34 = v10;
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
          v17 = v16;
          v18 = @"?";
          if (v16)
          {
            v18 = v16;
          }

          v35 = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v20 = [v15 errorWithDomain:v28 code:-6723 userInfo:v19];
          (responseHandler2)[2](responseHandler2, v20, 0);
        }

        [v12 invalidate];
      }

      v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->_requestQueue removeAllObjects];
  requestQueue = self->_requestQueue;
  self->_requestQueue = 0;

  if (self->_pairSetupSession && !self->_pairSetupEnded)
  {
    [(SFSession *)self _pairSetupCompleted:4294960573];
  }

  if (self->_pairVerifySession && !self->_pairVerifyEnded)
  {
    [(SFSession *)self _pairVerifyCompleted:4294960573];
  }

  [(NSMutableDictionary *)self->_requestHandlers removeAllObjects];
  requestHandlers = self->_requestHandlers;
  self->_requestHandlers = 0;

  requestMap = self->_requestMap;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __25__SFSession__invalidated__block_invoke;
  v29[3] = &unk_1E7890CB0;
  v29[4] = self;
  [(NSMutableDictionary *)requestMap enumerateKeysAndObjectsUsingBlock:v29];
  [(NSMutableDictionary *)self->_requestMap removeAllObjects];
  v24 = self->_requestMap;
  self->_requestMap = 0;

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  [(SFSession *)self _cleanup];
  self->_invalidateDone = 1;
  v26 = self->_ucatCore;
  if (v26->var0 <= 30)
  {
    if (v26->var0 != -1)
    {
LABEL_30:
      LogPrintF(v26, "[SFSession _invalidated]", 30, "Invalidated session 0x%08X\n", self->_sessionID);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v26 = self->_ucatCore;
      goto LABEL_30;
    }
  }
}

void __25__SFSession__invalidated__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 160);
  if (*v7 <= 50)
  {
    if (*v7 != -1)
    {
LABEL_3:
      LogPrintF(v7, "[SFSession _invalidated]_block_invoke", 50, "### Canceling request %@ for invalidate\n", v5);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v7 = *(*(a1 + 32) + 160);
      goto LABEL_3;
    }
  }

LABEL_5:
  v8 = [v6 objectForKeyedSubscript:@"_rh"];
  if (v8)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A768];
    v16 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v11;
    v13 = @"?";
    if (v11)
    {
      v13 = v11;
    }

    v17[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v15 = [v9 errorWithDomain:v10 code:-6723 userInfo:v14];
    (v8)[2](v8, 0, v15, 0);
  }
}

- (void)_setupMessageSession
{
  if (self->_messageSessionServer)
  {
    return;
  }

  v15[5] = v5;
  v15[6] = v4;
  v15[9] = v2;
  v15[10] = v3;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 10)
  {
    if (ucatCore->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF(ucatCore, "[SFSession _setupMessageSession]", 10, "Setup message session server\n");
  }

LABEL_6:
  v8 = objc_alloc_init(MEMORY[0x1E69994C0]);
  messageSessionServer = self->_messageSessionServer;
  self->_messageSessionServer = v8;

  [(CUMessageSessionServer *)self->_messageSessionServer setDispatchQueue:self->_dispatchQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __33__SFSession__setupMessageSession__block_invoke;
  v15[3] = &unk_1E7890D28;
  v15[4] = self;
  [(CUMessageSessionServer *)self->_messageSessionServer setRegisterRequestHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __33__SFSession__setupMessageSession__block_invoke_4;
  v14[3] = &unk_1E7890D50;
  v14[4] = self;
  [(CUMessageSessionServer *)self->_messageSessionServer setDeregisterRequestHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__SFSession__setupMessageSession__block_invoke_5;
  v13[3] = &unk_1E7890DA0;
  v13[4] = self;
  [(CUMessageSessionServer *)self->_messageSessionServer setSendRequestHandler:v13];
  [(CUMessageSessionServer *)self->_messageSessionServer activate];
  templateSession = [(CUMessageSessionServer *)self->_messageSessionServer templateSession];
  messageSessionTemplate = self->_messageSessionTemplate;
  self->_messageSessionTemplate = templateSession;

  if (!self->_messageSessionTemplate)
  {
    v12 = self->_ucatCore;
    if (v12->var0 <= 60)
    {
      if (v12->var0 != -1)
      {
LABEL_9:
        LogPrintF(v12, "[SFSession _setupMessageSession]", 60, "### No message session template after server activate?\n");
        return;
      }

      if (_LogCategory_Initialize())
      {
        v12 = self->_ucatCore;
        goto LABEL_9;
      }
    }
  }
}

void __33__SFSession__setupMessageSession__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9[27])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__SFSession__setupMessageSession__block_invoke_2;
    v10[3] = &unk_1E7890D00;
    v11 = v7;
    [v9 _registerRequestID:a2 options:a3 handler:v10];
  }
}

void __33__SFSession__setupMessageSession__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__SFSession__setupMessageSession__block_invoke_3;
  v11[3] = &unk_1E7890CD8;
  v12 = v7;
  v9 = *(v8 + 16);
  v10 = v7;
  v9(v8, a2, a3, v11);
}

void __33__SFSession__setupMessageSession__block_invoke_3(uint64_t a1, int a2, void *a3, void *a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A768];
    v8 = a2;
    v9 = a4;
    v10 = a3;
    v12 = [v6 errorWithDomain:v7 code:v8 userInfo:0];
    (*(v5 + 16))(v5);
  }

  else
  {
    v11 = *(v5 + 16);
    v10 = a4;
    v12 = a3;
    v11(v5, 0);
  }
}

void *__33__SFSession__setupMessageSession__block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[27])
  {
    return [result _deregisterRequestID:a2];
  }

  return result;
}

void __33__SFSession__setupMessageSession__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = v9;
  v11 = *(a1 + 32);
  if (v11[27])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__SFSession__setupMessageSession__block_invoke_6;
    v12[3] = &unk_1E7890D78;
    v13 = v9;
    [v11 _sendRequestID:a2 options:a3 request:a4 responseHandler:v12];
  }
}

void __33__SFSession__setupMessageSession__block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  v8 = a3;
  v7 = NSErrorToOSStatus();
  (*(v5 + 16))(v5, v7, v8, v6);
}

- (void)_tearDownMessageSession
{
  [(CUMessageSession *)self->_messageSessionTemplate invalidate];
  messageSessionTemplate = self->_messageSessionTemplate;
  self->_messageSessionTemplate = 0;

  [(CUMessageSessionServer *)self->_messageSessionServer invalidate];
  messageSessionServer = self->_messageSessionServer;
  self->_messageSessionServer = 0;
}

- (void)_setupTouchRemote
{
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFSession _setupTouchRemote]", 30, "Setup TouchRemote session\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  v4 = objc_alloc_init(SFTRSession);
  sfTRSession = self->_sfTRSession;
  self->_sfTRSession = v4;

  [(SFTRSession *)self->_sfTRSession setDispatchQueue:self->_dispatchQueue];
  [(SFTRSession *)self->_sfTRSession setSession:self];
  [(SFTRSession *)self->_sfTRSession activate];
  trSession = [(SFTRSession *)self->_sfTRSession trSession];
  trSession = self->_trSession;
  self->_trSession = trSession;
}

- (void)_tearDownTouchRemote
{
  trSession = self->_trSession;
  self->_trSession = 0;

  [(SFTRSession *)self->_sfTRSession invalidate];
  sfTRSession = self->_sfTRSession;
  self->_sfTRSession = 0;
}

- (void)_startTimeoutIfNeeded
{
  timeout = self->_timeout;
  if (timeout > 0.0)
  {
    handler[7] = v2;
    handler[8] = v3;
    if (self->_bluetoothState == 3 && !self->_timeoutFired && !self->_timeoutTimer)
    {
      ucatCore = self->_ucatCore;
      if (ucatCore->var0 <= 20)
      {
        if (ucatCore->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_9;
          }

          ucatCore = self->_ucatCore;
          timeout = self->_timeout;
        }

        LogPrintF(ucatCore, "[SFSession _startTimeoutIfNeeded]", 20, "Start timeout timer for %f seconds\n", timeout);
      }

LABEL_9:
      v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      timeoutTimer = self->_timeoutTimer;
      self->_timeoutTimer = v7;

      v9 = self->_timeoutTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __34__SFSession__startTimeoutIfNeeded__block_invoke;
      handler[3] = &unk_1E788B198;
      handler[4] = self;
      dispatch_source_set_event_handler(v9, handler);
      SFDispatchTimerSet(self->_timeoutTimer, self->_timeout, 1.0, -4.0);
      dispatch_resume(self->_timeoutTimer);
    }
  }
}

- (void)_timeoutTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 20)
  {
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFSession _timeoutTimerFired]", 20, "Timeout timer fired\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  self->_timeoutFired = 1;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v5 = timeoutTimer;
    dispatch_source_cancel(v5);
    v6 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  timeoutHandler = self->_timeoutHandler;
  if (timeoutHandler)
  {
    timeoutHandler[2]();
    timeoutHandler = self->_timeoutHandler;
  }

  self->_timeoutHandler = 0;
}

- (BOOL)pairingContainsACL:(id)l
{
  dispatchQueue = self->_dispatchQueue;
  lCopy = l;
  dispatch_assert_queue_V2(dispatchQueue);
  if (self->_pairVerifySession)
  {
    pairedPeer = PairingSessionCopyPairedPeer();
  }

  else
  {
    pairSetupSession = self->_pairSetupSession;
    if (!pairSetupSession)
    {
      v8 = 0;
      goto LABEL_6;
    }

    pairedPeer = [(CUPairingSession *)pairSetupSession pairedPeer];
  }

  v8 = pairedPeer;
LABEL_6:
  v9 = [v8 acl];
  Int64 = CFDictionaryGetInt64();

  return Int64 != 0;
}

- (id)pairingDeriveKeyForIdentifier:(id)identifier keyLength:(unint64_t)length
{
  identifierCopy = identifier;
  uTF8String = [identifierCopy UTF8String];
  v8 = strlen(uTF8String);
  v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:length];
  v10 = v9;
  pairSetupSession = self->_pairSetupSession;
  if (pairSetupSession)
  {
    v12 = -[CUPairingSession deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:](pairSetupSession, "deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:", "IdentifierKeyInfo", 17, uTF8String, v8, length, [v9 mutableBytes]);
    if (!v12)
    {
LABEL_3:
      v13 = v10;
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (self->_pairVerifySession)
  {
    [v9 mutableBytes];
    v12 = PairingSessionDeriveKey();
    if (!v12)
    {
      goto LABEL_3;
    }

LABEL_9:
    v15 = v12;
    goto LABEL_11;
  }

  v15 = 4294960551;
LABEL_11:
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 60)
  {
    if (ucatCore->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF(ucatCore, "[SFSession pairingDeriveKeyForIdentifier:keyLength:]", 60, "### Derive identifier '%@' key failed: %#m\n", identifierCopy, v15);
  }

LABEL_15:
  v13 = 0;
LABEL_4:

  return v13;
}

- (void)_serviceInitiatedPairSetup:(id)setup
{
  setupCopy = setup;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SFSession__serviceInitiatedPairSetup___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = setupCopy;
  v6 = setupCopy;
  dispatch_async(dispatchQueue, v7);
}

void __40__SFSession__serviceInitiatedPairSetup___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = _Block_copy(*(*(a1 + 32) + 472));
  if (v3)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    *(*(a1 + 32) + 256) = CFDictionaryGetInt64Ranged();
    v5 = *(a1 + 32);
    v6 = *(v5 + 140);
    if ((v6 & 0x800) != 0)
    {
      v7 = 20;
    }

    else
    {
      v7 = Int64Ranged & 0x18 | 4u;
    }

    v8 = *(v5 + 160);
    if (*v8 > 30)
    {
      goto LABEL_9;
    }

    if (*v8 == -1)
    {
      v9 = _LogCategory_Initialize();
      v5 = *v2;
      if (!v9)
      {
        goto LABEL_9;
      }

      v8 = *(v5 + 160);
      v6 = *(v5 + 140);
    }

    LogPrintF(v8, "[SFSession _serviceInitiatedPairSetup:]_block_invoke", 30, "PairSetup server start: XID 0x%X, SF %#{flags}, PF %#{flags}\n", *(v5 + 256), v6, &unk_1A9990230, v7, &unk_1A9990305);
    v5 = *v2;
LABEL_9:
    [v5 _pairSetupWithFlags:v7 completion:v3 isServer:1];
    [*(a1 + 32) _pairSetup:*(a1 + 40) start:1];
    goto LABEL_14;
  }

  v10 = *(*v2 + 160);
  if (*v10 <= 60)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v10 = *(*v2 + 160);
    }

    LogPrintF(v10, "[SFSession _serviceInitiatedPairSetup:]_block_invoke", 60, "### PairSetup failed: %#m\n", 4294960551);
  }

LABEL_14:
}

- (void)pairSetupWithFlags:(unsigned int)flags completion:(id)completion isServer:(BOOL)server
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SFSession_pairSetupWithFlags_completion_isServer___block_invoke;
  block[3] = &unk_1E7890DC8;
  flagsCopy = flags;
  block[4] = self;
  v12 = completionCopy;
  serverCopy = server;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_pairSetupWithFlags:(unsigned int)flags completion:(id)completion isServer:(BOOL)server
{
  serverCopy = server;
  v34[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!serverCopy)
  {
    RandomBytes();
  }

  ucatCore = self->_ucatCore;
  var0 = ucatCore->var0;
  if (!self->_pairSetupCompletion)
  {
    if (var0 > 30)
    {
      goto LABEL_16;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF(ucatCore, "[SFSession _pairSetupWithFlags:completion:isServer:]", 30, "PairSetup client start: XID 0x%X\n", self->_pairSetupXID);
    goto LABEL_16;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF(ucatCore, "[SFSession _pairSetupWithFlags:completion:isServer:]", 30, "PairSetup client restart: XID 0x%X\n", self->_pairSetupXID);
  }

LABEL_11:
  pairSetupCompletion = self->_pairSetupCompletion;
  if ((flags & 0x80000) == 0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A768];
    v33 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v15 = v14;
    v16 = @"?";
    if (v14)
    {
      v16 = v14;
    }

    v34[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v18 = [v12 errorWithDomain:v13 code:-6723 userInfo:v17];
    pairSetupCompletion[2](pairSetupCompletion, v18);

    pairSetupCompletion = self->_pairSetupCompletion;
  }

  self->_pairSetupCompletion = 0;

LABEL_16:
  [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:0];
  [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:0];
  [(CUPairingSession *)self->_pairSetupSession invalidate];
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = 0;

  self->_pairSetupEnded = 0;
  self->_pairSetupFlags = flags | 4;
  v20 = objc_alloc_init(MEMORY[0x1E69994F8]);
  v21 = self->_pairSetupSession;
  self->_pairSetupSession = v20;

  [(CUPairingSession *)self->_pairSetupSession setDispatchQueue:self->_dispatchQueue];
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->_ucatCrypto->var4];
  [(CUPairingSession *)self->_pairSetupSession setLabel:v22];

  [(CUPairingSession *)self->_pairSetupSession setFlags:self->_pairSetupFlags];
  if (serverCopy)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  [(CUPairingSession *)self->_pairSetupSession setSessionType:v23];
  if (self->_promptForPINHandler)
  {
    [(CUPairingSession *)self->_pairSetupSession setPromptForPINHandler:?];
  }

  if (self->_showPINHandlerEx)
  {
    [(CUPairingSession *)self->_pairSetupSession setShowPINHandlerEx:?];
  }

  if (self->_hidePINHandler)
  {
    [(CUPairingSession *)self->_pairSetupSession setHidePINHandler:?];
  }

  if (self->_pairSetupACL)
  {
    [(CUPairingSession *)self->_pairSetupSession setAcl:?];
  }

  v24 = self->_fixedPIN;
  if (![(NSString *)v24 length]&& IsAppleInternalBuild())
  {
    CFStringGetTypeID();
    v25 = CFPrefs_CopyTypedValue();

    v24 = v25;
  }

  if ([(NSString *)v24 length])
  {
    [(CUPairingSession *)self->_pairSetupSession setFixedPIN:v24];
  }

  forcedPasscode = self->_forcedPasscode;
  if (forcedPasscode && self->_isCLIMode && [(NSString *)forcedPasscode length]&& IsAppleInternalBuild())
  {
    v27 = self->_ucatCore;
    if (v27->var0 <= 30)
    {
      if (v27->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_42;
        }

        v27 = self->_ucatCore;
      }

      LogPrintF(v27, "[SFSession _pairSetupWithFlags:completion:isServer:]", 30, "PairSetup client is in CLI mode and is using the forced passcode\n");
    }

LABEL_42:
    [(CUPairingSession *)self->_pairSetupSession setFixedPIN:self->_forcedPasscode];
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __53__SFSession__pairSetupWithFlags_completion_isServer___block_invoke;
  v31[3] = &unk_1E7890598;
  v31[4] = self;
  flagsCopy = flags;
  [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:v31];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __53__SFSession__pairSetupWithFlags_completion_isServer___block_invoke_2;
  v30[3] = &unk_1E788B238;
  v30[4] = self;
  [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:v30];
  v28 = _Block_copy(completionCopy);
  v29 = self->_pairSetupCompletion;
  self->_pairSetupCompletion = v28;

  [(SFSession *)self _pairSetup:0 start:1];
}

void __53__SFSession__pairSetupWithFlags_completion_isServer___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12[0] = @"pd";
  v12[1] = @"pxid";
  v13[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(*(a1 + 32) + 256)];
  v13[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  if (a2)
  {
    v9 = [v7 mutableCopy];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
    [v9 setObject:v10 forKeyedSubscript:@"pf"];

    v11 = [v9 copy];
    v8 = 16;
    v7 = v11;
  }

  else
  {
    v8 = 17;
  }

  [*(a1 + 32) sendFrameType:v8 object:v7];
}

uint64_t __53__SFSession__pairSetupWithFlags_completion_isServer___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = NSErrorToOSStatus();

  return [v2 _pairSetupCompleted:v3];
}

- (void)_pairSetup:(id)setup start:(BOOL)start
{
  startCopy = start;
  setupCopy = setup;
  Int64Ranged = 0;
  if (!self->_pairSetupSession)
  {
    v10 = 0;
    goto LABEL_15;
  }

  p_ucatCore = &self->_ucatCore;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 != -1)
    {
LABEL_4:
      LogPrintF(ucatCore, "[SFSession _pairSetup:start:]", 30, "PairSetup client next: XID 0x%X\n", self->_pairSetupXID);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = *p_ucatCore;
      goto LABEL_4;
    }
  }

LABEL_6:
  if (startCopy)
  {
    [(CUPairingSession *)self->_pairSetupSession activate];
  }

  if (!setupCopy)
  {
    v10 = 0;
    goto LABEL_14;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged)
  {
    [SFSession _pairSetup:? start:?];
LABEL_25:
    v10 = v16;
    goto LABEL_14;
  }

  CFDataGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (!v9)
  {
    [SFSession _pairSetup:? start:?];
    goto LABEL_25;
  }

  v10 = v9;
  v11 = CFDictionaryGetInt64Ranged();
  pairSetupXID = self->_pairSetupXID;
  if (pairSetupXID != v11)
  {
    v13 = *p_ucatCore;
    var0 = (*p_ucatCore)->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v13 = self->_ucatCore;
        pairSetupXID = self->_pairSetupXID;
      }

      LogPrintF(v13, "[SFSession _pairSetup:start:]", 60, "### PairSetup ignoring stale response ID %u (vs %u): %#m\n", v11, pairSetupXID);
    }

    goto LABEL_16;
  }

  [(CUPairingSession *)self->_pairSetupSession receivedData:v10];
LABEL_14:
  if (Int64Ranged)
  {
LABEL_15:
    [(SFSession *)self _pairSetupCompleted:?];
  }

LABEL_16:
}

- (void)pairSetupTryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__SFSession_pairSetupTryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_pairSetupTryPIN:(id)n
{
  nCopy = n;
  ucatCore = self->_ucatCore;
  v10 = nCopy;
  if (ucatCore->var0 > 30)
  {
    goto LABEL_7;
  }

  if (ucatCore->var0 == -1)
  {
    v8 = _LogCategory_Initialize();
    nCopy = v10;
    if (!v8)
    {
      goto LABEL_7;
    }

    ucatCore = self->_ucatCore;
  }

  v6 = IsAppleInternalBuild();
  v7 = @"*";
  if (v6)
  {
    v7 = v10;
  }

  LogPrintF(ucatCore, "[SFSession _pairSetupTryPIN:]", 30, "Try PIN '%@'\n", v7);
  nCopy = v10;
LABEL_7:
  pairSetupSession = self->_pairSetupSession;
  if (pairSetupSession)
  {
    [(CUPairingSession *)pairSetupSession tryPIN:nCopy];
  }

  else
  {
    [(SFSession *)&self->_ucatCore _pairSetupTryPIN:?];
  }
}

- (void)_pairSetupCompleted:(int)completed
{
  v3 = *&completed;
  v28 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  memset(v26, 0, sizeof(v26));
  self->_pairSetupEnded = 1;
  if (!completed)
  {
    pairSetupSession = self->_pairSetupSession;
    if (pairSetupSession)
    {
      v6 = [(CUPairingSession *)pairSetupSession deriveKeyWithSaltPtr:"ReadKeySalt" saltLen:11 infoPtr:"ReadKeyInfo" infoLen:11 keyLen:32 outputKeyPtr:__s];
      if (!v6)
      {
        v6 = [(CUPairingSession *)self->_pairSetupSession deriveKeyWithSaltPtr:"WriteKeySalt" saltLen:12 infoPtr:"WriteKeyInfo" infoLen:12 keyLen:32 outputKeyPtr:v26];
        if (!v6)
        {
          v6 = [(SFSession *)self setEncryptionReadKey:__s readKeyLen:32 writeKey:v26 writeKeyLen:32];
          if (!v6)
          {
            memset_s(__s, 0x20uLL, 0, 0x20uLL);
            memset_s(v26, 0x20uLL, 0, 0x20uLL);
            ucatCore = self->_ucatCore;
            if (ucatCore->var0 <= 30)
            {
              if (ucatCore->var0 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_10;
                }

                ucatCore = self->_ucatCore;
              }

              LogPrintF(ucatCore, "[SFSession _pairSetupCompleted:]", 30, "PairSetup client completed\n");
            }

LABEL_10:
            pairSetupCompletion = self->_pairSetupCompletion;
            p_pairSetupCompletion = &self->_pairSetupCompletion;
            v8 = pairSetupCompletion;
            if (!pairSetupCompletion)
            {
              return;
            }

            v8[2](v8, 0);
            goto LABEL_12;
          }
        }
      }

      v3 = v6;
    }

    else
    {
      v3 = 4294960534;
    }
  }

  v12 = self->_ucatCore;
  if (v12->var0 <= 60)
  {
    if (v12->var0 != -1)
    {
LABEL_18:
      LogPrintF(v12, "[SFSession _pairSetupCompleted:]", 60, "### PairSetup failed: %#m\n", v3);
      goto LABEL_20;
    }

    if (_LogCategory_Initialize())
    {
      v12 = self->_ucatCore;
      goto LABEL_18;
    }
  }

LABEL_20:
  [(CUPairingSession *)self->_pairSetupSession invalidate];
  v13 = self->_pairSetupSession;
  self->_pairSetupSession = 0;

  v15 = self->_pairSetupCompletion;
  p_pairSetupCompletion = &self->_pairSetupCompletion;
  v14 = v15;
  if (v15)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A768];
    v18 = v3;
    v24 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v20 = v19;
    v21 = @"?";
    if (v19)
    {
      v21 = v19;
    }

    v25 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v23 = [v16 errorWithDomain:v17 code:v18 userInfo:v22];
    v14[2](v14, v23);

LABEL_12:
    v11 = *p_pairSetupCompletion;
    *p_pairSetupCompletion = 0;
  }
}

- (void)pairVerifyWithFlags:(unsigned int)flags completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFSession_pairVerifyWithFlags_completion___block_invoke;
  block[3] = &unk_1E788EAE0;
  flagsCopy = flags;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_pairVerifyWithFlags:(unsigned int)flags completion:(id)completion
{
  v51[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFSession _pairVerifyWithFlags:completion:]", 30, "PairVerify start\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  v8 = 0x1E696A000;
  v9 = MEMORY[0x1E696A768];
  v10 = 0x1E696A000;
  v11 = MEMORY[0x1E696A578];
  if (!self->_pairVerifyCompletion)
  {
    goto LABEL_14;
  }

  v46 = completionCopy;
  v12 = self->_ucatCore;
  if (v12->var0 <= 30)
  {
    if (v12->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v12 = self->_ucatCore;
    }

    LogPrintF(v12, "[SFSession _pairVerifyWithFlags:completion:]", 30, "PairVerify canceled previous to start new\n");
  }

LABEL_10:
  pairVerifyCompletion = self->_pairVerifyCompletion;
  v14 = MEMORY[0x1E696ABC0];
  v15 = v9;
  v16 = *v9;
  v50 = *v11;
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"?";
  }

  v51[0] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  v21 = v16;
  v9 = v15;
  v22 = [v14 errorWithDomain:v21 code:-6723 userInfo:v20];
  pairVerifyCompletion[2](pairVerifyCompletion, v22);

  v8 = 0x1E696A000uLL;
  v10 = 0x1E696A000uLL;
  v23 = self->_pairVerifyCompletion;
  self->_pairVerifyCompletion = 0;

  completionCopy = v46;
LABEL_14:
  pairVerifySession = self->_pairVerifySession;
  if (pairVerifySession)
  {
    CFRelease(pairVerifySession);
    self->_pairVerifySession = 0;
  }

  self->_pairVerifyEnded = 0;
  self->_pairVerifyFlags = flags | 4;
  v25 = PairingSessionCreate();
  if (v25)
  {
    if (completionCopy)
    {
      v26 = *(v8 + 3008);
      v27 = *v9;
      v28 = v25;
      v48 = *v11;
      v29 = [*(v10 + 3776) stringWithUTF8String:DebugGetErrorString()];
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = @"?";
      }

      v49 = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v33 = [v26 errorWithDomain:v27 code:v28 userInfo:v32];
      completionCopy[2](completionCopy, v33);
    }
  }

  else
  {
    sessionFlags = self->_sessionFlags;
    if (sessionFlags & 4 | flags & 0x1000)
    {
      if ((sessionFlags & 8) != 0)
      {
        v35 = 1052672;
      }

      else
      {
        v35 = 4096;
      }

      self->_pairVerifyFlags |= v35 | (sessionFlags << 17) & 0x200000;
      if (self->_myAppleIDInfoClient)
      {
        PairingSessionSetMyAppleIDInfoClient();
      }

      else if (self->_myAppleID)
      {
        PairingSessionSetMyAppleID();
      }

      if (self->_peerAppleID)
      {
        PairingSessionSetPeerAppleID();
      }

      v36 = self->_peerContactIdentifier;
      v37 = v36;
      if (v36)
      {
        v47 = 0;
        v38 = SFNormalizedUserIdentifiersForContactIdentifier(v36, 0, &v47);
        v39 = v38;
        if (v47 == 1)
        {
          v40 = [v38 mutableCopy];
          validatedPhoneNumbers = [(SFAppleIDContactInfo *)self->_appleIDContactInfo validatedPhoneNumbers];
          validatedEmailAddresses = [(SFAppleIDContactInfo *)self->_appleIDContactInfo validatedEmailAddresses];
          if (validatedPhoneNumbers)
          {
            [v40 addObjectsFromArray:validatedPhoneNumbers];
          }

          if (validatedEmailAddresses)
          {
            [v40 addObjectsFromArray:validatedEmailAddresses];
          }

          v43 = [v40 copy];

          v39 = v43;
        }

        if ([v39 count])
        {
          PairingSessionSetPeerAppleIDs();
        }
      }
    }

    else if ((sessionFlags & 0x440) == 0x40)
    {
      self->_pairVerifyFlags |= 0x4000000u;
    }

    if (self->_pairVerifyACL)
    {
      PairingSessionSetACL();
    }

    PairingSessionSetFlags();
    PairingSessionSetLogging();
    v44 = _Block_copy(completionCopy);
    v45 = self->_pairVerifyCompletion;
    self->_pairVerifyCompletion = v44;

    [(SFSession *)self _pairVerify:0 start:1];
  }
}

- (void)_pairVerify:(id)verify start:(BOOL)start
{
  v13 = *MEMORY[0x1E69E9840];
  verifyCopy = verify;
  Int64Ranged = 0;
  v9 = 0;
  v10 = 0;
  if (!self->_pairVerifySession)
  {
    v7 = 0;
    v8 = -6745;
    goto LABEL_21;
  }

  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF(ucatCore, "[SFSession _pairVerify:start:]", 30, "PairVerify next\n");
  }

LABEL_6:
  if (verifyCopy)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged)
    {
      [SFSession _pairVerify:? start:?];
      goto LABEL_20;
    }

    CFDataGetTypeID();
    v7 = CFDictionaryGetTypedValue();
    if (!v7)
    {
      [SFSession _pairVerify:? start:?];
LABEL_20:
      v7 = v12;
LABEL_13:
      if (!Int64Ranged)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
  }

  [v7 bytes];
  [v7 length];
  Int64Ranged = PairingSessionExchange();
  if (Int64Ranged)
  {
    goto LABEL_13;
  }

  v8 = -6762;
LABEL_21:
  Int64Ranged = v8;
LABEL_14:
  [(SFSession *)self _pairVerifyCompleted:?];
LABEL_15:
  if (v10)
  {
    free(v10);
  }
}

- (void)_pairVerifyCompleted:(int)completed
{
  v3 = *&completed;
  v24 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  memset(v22, 0, sizeof(v22));
  self->_pairVerifyEnded = 1;
  if (!completed)
  {
    if (self->_pairVerifySession)
    {
      v5 = PairingSessionDeriveKey();
      if (!v5)
      {
        v5 = PairingSessionDeriveKey();
        if (!v5)
        {
          v5 = [(SFSession *)self setEncryptionReadKey:__s readKeyLen:32 writeKey:v22 writeKeyLen:32];
          if (!v5)
          {
            memset_s(__s, 0x20uLL, 0, 0x20uLL);
            memset_s(v22, 0x20uLL, 0, 0x20uLL);
            ucatCore = self->_ucatCore;
            if (ucatCore->var0 <= 30)
            {
              if (ucatCore->var0 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_10;
                }

                ucatCore = self->_ucatCore;
              }

              LogPrintF(ucatCore, "[SFSession _pairVerifyCompleted:]", 30, "PairVerify completed\n");
            }

LABEL_10:
            LODWORD(v3) = 0;
            v7 = 1;
            goto LABEL_11;
          }
        }
      }

      v3 = v5;
    }

    else
    {
      v3 = 4294960534;
    }
  }

  v18 = self->_ucatCore;
  if (v18->var0 <= 60)
  {
    if (v18->var0 != -1)
    {
LABEL_23:
      LogPrintF(v18, "[SFSession _pairVerifyCompleted:]", 60, "### PairVerify failed: %#m\n", v3);
      goto LABEL_25;
    }

    if (_LogCategory_Initialize())
    {
      v18 = self->_ucatCore;
      goto LABEL_23;
    }
  }

LABEL_25:
  pairVerifySession = self->_pairVerifySession;
  if (pairVerifySession)
  {
    CFRelease(pairVerifySession);
    v7 = 0;
    self->_pairVerifySession = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
  pairVerifyCompletion = self->_pairVerifyCompletion;
  if (pairVerifyCompletion)
  {
    if (v7)
    {
      pairVerifyCompletion[2](self->_pairVerifyCompletion, 0);
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A768];
      v11 = v3;
      v20 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v13 = v12;
      v14 = @"?";
      if (v12)
      {
        v14 = v12;
      }

      v21 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v16 = [v9 errorWithDomain:v10 code:v11 userInfo:v15];
      (pairVerifyCompletion)[2](pairVerifyCompletion, v16);
    }

    v17 = self->_pairVerifyCompletion;
    self->_pairVerifyCompletion = 0;
  }
}

- (void)appleIDAddProof:(id)proof dispatchQueue:(id)queue completion:(id)completion
{
  proofCopy = proof;
  queueCopy = queue;
  completionCopy = completion;
  v11 = dispatch_queue_create("AppleIDAddProof", 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__SFSession_appleIDAddProof_dispatchQueue_completion___block_invoke;
  v15[3] = &unk_1E788B750;
  v15[4] = self;
  v16 = proofCopy;
  v17 = queueCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = queueCopy;
  v14 = proofCopy;
  dispatch_async(v11, v15);
}

void __54__SFSession_appleIDAddProof_dispatchQueue_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = 0;
  [v2 _appleIDAddProof:v3 error:&v12];
  v4 = v12;
  if (v4)
  {
    v5 = *(*(a1 + 32) + 160);
    if (*v5 <= 90)
    {
      if (*v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v5 = *(*(a1 + 32) + 160);
      }

      LogPrintF(v5, "[SFSession appleIDAddProof:dispatchQueue:completion:]_block_invoke", 90, "### Add AppleID proof failed: %{error}\n", v4);
    }
  }

LABEL_6:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SFSession_appleIDAddProof_dispatchQueue_completion___block_invoke_2;
  block[3] = &unk_1E788B318;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = v4;
  v11 = v7;
  v8 = v4;
  dispatch_async(v6, block);
}

- (BOOL)_appleIDAddProof:(id)proof error:(id *)error
{
  proofCopy = proof;
  myMediumHashes = [(SDStatusMonitor *)self->_statusMonitor myMediumHashes];
  if ([myMediumHashes length])
  {
    if ([myMediumHashes length] <= 8)
    {
      v14 = proofCopy;
      v15 = [myMediumHashes mutableCopy];
      [v15 setLength:9];

      myMediumHashes = v15;
      proofCopy = v14;
    }

    v22 = [(SFSession *)self pairingDeriveKeyForIdentifier:@"AppleIDChallenge" keyLength:16];
    if (v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E6999450]);
      v59 = 0;
      v24 = [v23 copyMyCertificateDataAndReturnError:&v59];
      v25 = v59;
      v31 = v25;
      if (v24)
      {
        v56 = proofCopy;
        v58 = v25;
        v32 = [v23 copyMyValidationDataAndReturnError:&v58];
        v33 = v58;

        if (v32)
        {
          errorCopy = error;
          v55 = v22;
          v39 = v22;
          v54 = v24;
          v40 = v24;
          v41 = v32;
          v42 = objc_alloc_init(MEMORY[0x1E695DF88]);
          [v42 appendData:v39];
          [v42 appendData:v40];
          [v42 appendData:v41];
          v57 = v33;
          v43 = [v23 signData:v42 error:&v57];
          v31 = v57;

          if (v43)
          {
            proofCopy = v56;
            [v56 setObject:v40 forKeyedSubscript:{@"cert", errorCopy}];
            [v56 setObject:myMediumHashes forKeyedSubscript:@"medHash"];
            [v56 setObject:v43 forKeyedSubscript:@"sig"];
            [v56 setObject:v41 forKeyedSubscript:@"vrec"];
          }

          else
          {
            [(SFSession *)errorCopy _appleIDAddProof:v31 error:v44, v45, v46, v47, v48, v49];
            proofCopy = v56;
          }

          v24 = v54;
          v22 = v55;
          v50 = v43 != 0;
        }

        else
        {
          if (error)
          {
            SFNestedErrorF(v33, 4294960596, "Copy AppleID validate data failed", v34, v35, v36, v37, v38, v52);
            *error = v50 = 0;
          }

          else
          {
            v50 = 0;
          }

          v31 = v33;
          proofCopy = v56;
        }
      }

      else if (error)
      {
        SFNestedErrorF(v25, 4294960596, "Copy AppleID cert failed", v26, v27, v28, v29, v30, v52);
        *error = v50 = 0;
      }

      else
      {
        v50 = 0;
      }
    }

    else if (error)
    {
      SFErrorF(4294960551, "Generate challenge failed", v16, v17, v18, v19, v20, v21, v52);
      *error = v50 = 0;
    }

    else
    {
      v50 = 0;
    }
  }

  else if (error)
  {
    SFErrorF(4294960551, "No medium hashes", v8, v9, v10, v11, v12, v13, v52);
    *error = v50 = 0;
  }

  else
  {
    v50 = 0;
  }

  return v50;
}

- (void)appleIDVerifyProof:(id)proof dispatchQueue:(id)queue completion:(id)completion
{
  proofCopy = proof;
  queueCopy = queue;
  completionCopy = completion;
  v11 = dispatch_queue_create("AppleIDVerifyProof", 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__SFSession_appleIDVerifyProof_dispatchQueue_completion___block_invoke;
  v15[3] = &unk_1E788B750;
  v15[4] = self;
  v16 = proofCopy;
  v17 = queueCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = queueCopy;
  v14 = proofCopy;
  dispatch_async(v11, v15);
}

void __57__SFSession_appleIDVerifyProof_dispatchQueue_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 _appleIDVerifyProof:v3 error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = *(*(a1 + 32) + 160);
    if (*v6 <= 90)
    {
      if (*v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v6 = *(*(a1 + 32) + 160);
      }

      LogPrintF(v6, "[SFSession appleIDVerifyProof:dispatchQueue:completion:]_block_invoke", 90, "### Verify AppleID proof failed: %{error}\n", v5);
    }
  }

LABEL_6:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SFSession_appleIDVerifyProof_dispatchQueue_completion___block_invoke_2;
  block[3] = &unk_1E788C1C0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = v5;
  v12 = v8;
  block[4] = v4;
  v9 = v5;
  dispatch_async(v7, block);
}

- (id)_appleIDVerifyProof:(id)proof error:(id *)error
{
  proofCopy = proof;
  CFDataGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  if (!v13)
  {
    if (error)
    {
      v72 = "No hashes";
      v73 = 4294960591;
LABEL_25:
      SFErrorF(v73, v72, v7, v8, v9, v10, v11, v12, v74);
      *error = v70 = 0;
      goto LABEL_18;
    }

LABEL_40:
    v70 = 0;
    goto LABEL_18;
  }

  statusMonitor = self->_statusMonitor;
  if (!statusMonitor)
  {
    if (error)
    {
      v72 = "No status monitor";
      v73 = 4294960551;
      goto LABEL_25;
    }

    goto LABEL_40;
  }

  v15 = [(SDStatusMonitor *)statusMonitor contactIdentifierForMediumHashes:v13];
  v22 = v15;
  if (v15)
  {
    v81 = 0;
    v23 = SFNormalizedUserIdentifiersForContactIdentifierEx(v15, 0, &v81, 0);
    v78 = v23;
    if (v23)
    {
      v30 = v23;
      CFDataGetTypeID();
      v79 = CFDictionaryGetTypedValue();
      if (v79)
      {
        CFDataGetTypeID();
        v43 = CFDictionaryGetTypedValue();
        if (v43)
        {
          CFDataGetTypeID();
          v50 = CFDictionaryGetTypedValue();
          if (v50)
          {
            v57 = [(SFSession *)self pairingDeriveKeyForIdentifier:@"AppleIDChallenge" keyLength:16];
            if (v57)
            {
              errorCopy = error;
              v76 = v22;
              v77 = v13;
              v58 = v79;
              v59 = v50;
              v60 = objc_alloc_init(MEMORY[0x1E695DF88]);
              [v60 appendData:v57];
              [v60 appendData:v58];
              [v60 appendData:v59];
              v61 = objc_alloc_init(MEMORY[0x1E6999450]);
              [v61 setPeerAppleIDs:v30];
              [v61 setPeerCertificateData:v58];
              [v61 setPeerValidationData:v59];
              v80 = 0;
              v62 = [v61 verifyData:v60 signature:v43 error:&v80];
              v63 = v80;
              v69 = v63;
              if (v62)
              {
                v70 = v81;
              }

              else if (errorCopy)
              {
                SFNestedErrorF(v63, 4294960542, "AppleID verify failed", v64, v65, v66, v67, v68, v74);
                *errorCopy = v70 = 0;
              }

              else
              {
                v70 = 0;
              }

              v22 = v76;
              v13 = v77;
            }

            else if (error)
            {
              SFErrorF(4294960551, "Generate challenge failed", v51, v52, v53, v54, v55, v56, v74);
              *error = v70 = 0;
            }

            else
            {
              v70 = 0;
            }
          }

          else if (error)
          {
            SFErrorF(4294960591, "No validation record", v44, v45, v46, v47, v48, v49, v74);
            *error = v70 = 0;
          }

          else
          {
            v70 = 0;
          }
        }

        else if (error)
        {
          SFErrorF(4294960591, "No signature", v37, v38, v39, v40, v41, v42, v74);
          *error = v70 = 0;
        }

        else
        {
          v70 = 0;
        }
      }

      else if (error)
      {
        SFErrorF(4294960591, "No certificate", v31, v32, v33, v34, v35, v36, v74);
        *error = v70 = 0;
      }

      else
      {
        v70 = 0;
      }
    }

    else if (error)
    {
      SFErrorF(4294960596, "Normalize user IDs failed", v24, v25, v26, v27, v28, v29, v74);
      *error = v70 = 0;
    }

    else
    {
      v70 = 0;
    }
  }

  else if (error)
  {
    SFErrorF(4294960569, "Contact not found for hashes: <%@>", v16, v17, v18, v19, v20, v21, v13);
    *error = v70 = 0;
  }

  else
  {
    v70 = 0;
  }

LABEL_18:

  return v70;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [eventCopy setIdentifier:uUID];

  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__SFSession_sendEvent___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = eventCopy;
  v7 = eventCopy;
  dispatch_async(dispatchQueue, v8);
}

void __23__SFSession_sendEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 312))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionSendEvent", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [*(*(a1 + 32) + 312) remoteObjectProxy];
    [v4 sessionSendEvent:*(a1 + 40)];

    os_activity_scope_leave(&state);
    return;
  }

  v5 = *(v2 + 160);
  if (*v5 <= 60)
  {
    if (*v5 != -1)
    {
LABEL_5:
      LogPrintF(v5, "[SFSession sendEvent:]_block_invoke", 60, "### Send event failed: %#m\n", 4294960551);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(*(a1 + 32) + 160);
      goto LABEL_5;
    }
  }
}

- (void)sendRequest:(id)request
{
  requestCopy = request;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [requestCopy setIdentifier:uUID];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__SFSession_sendRequest___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v10 = requestCopy;
  v11 = uUID;
  v7 = uUID;
  v8 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

void __25__SFSession_sendRequest___block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 312))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionSendRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [*(a1[4] + 312) remoteObjectProxy];
    [v4 sessionSendRequest:a1[5]];

    [*(a1[4] + 288) setObject:a1[5] forKeyedSubscript:a1[6]];
    os_activity_scope_leave(&state);

    return;
  }

  v5 = *(v2 + 160);
  if (*v5 <= 60)
  {
    if (*v5 != -1)
    {
LABEL_5:
      LogPrintF(v5, "[SFSession sendRequest:]_block_invoke", 60, "### Send request failed: %#m\n", 4294960551);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(a1[4] + 160);
      goto LABEL_5;
    }
  }
}

- (void)sendResponse:(id)response
{
  responseCopy = response;
  identifier = [responseCopy identifier];

  if (identifier)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__SFSession_sendResponse___block_invoke;
    block[3] = &unk_1E788A658;
    block[4] = self;
    v10 = responseCopy;
    v7 = responseCopy;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v8 = FatalErrorF("Response without request identifier: %@", responseCopy);
    __26__SFSession_sendResponse___block_invoke(v8);
  }
}

void __26__SFSession_sendResponse___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 312))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionSendResponse", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [*(*(a1 + 32) + 312) remoteObjectProxy];
    [v4 sessionSendResponse:*(a1 + 40)];

    os_activity_scope_leave(&state);
    return;
  }

  v5 = *(v2 + 160);
  if (*v5 <= 60)
  {
    if (*v5 != -1)
    {
LABEL_5:
      LogPrintF(v5, "[SFSession sendResponse:]_block_invoke", 60, "### Send response failed: %#m\n", 4294960551);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(*(a1 + 32) + 160);
      goto LABEL_5;
    }
  }
}

- (void)sendFrameType:(unsigned __int8)type data:(id)data
{
  dataCopy = data;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SFSession_sendFrameType_data___block_invoke;
  block[3] = &unk_1E788F2F0;
  typeCopy = type;
  block[4] = self;
  v10 = dataCopy;
  v8 = dataCopy;
  dispatch_async(dispatchQueue, block);
}

void __32__SFSession_sendFrameType_data___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 312))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionSendFrameType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0;
    v6.opaque[1] = 0;
    os_activity_scope_enter(v3, &v6);
    v4 = [*(*(a1 + 32) + 312) remoteObjectProxy];
    [v4 sessionSendFrameType:*(a1 + 48) data:*(a1 + 40)];

    os_activity_scope_leave(&v6);
    return;
  }

  v5 = *(v2 + 160);
  if (*v5 <= 60)
  {
    if (*v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v5 = *(*(a1 + 32) + 160);
    }

    LogPrintF(v5, "[SFSession sendFrameType:data:]_block_invoke", 60, "### Send frame without activate\n");
  }
}

- (void)sendFrameType:(unsigned __int8)type object:(id)object
{
  objectCopy = object;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFSession_sendFrameType_object___block_invoke;
  block[3] = &unk_1E788F2F0;
  typeCopy = type;
  block[4] = self;
  v10 = objectCopy;
  v8 = objectCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_sendFrameType:(unsigned __int8)type object:(id)object
{
  typeCopy = type;
  objectCopy = object;
  v18 = 0;
  DataMutable = OPACKEncoderCreateDataMutable();
  if (!DataMutable)
  {
    [(SFSession *)self _sendFrameType:typeCopy object:&v18, &state];
    v8 = state.opaque[0];
    goto LABEL_17;
  }

  v8 = DataMutable;
  if (typeCopy == 29)
  {
    v17 = 0;
    v9 = NSDataCompress();
    v10 = 0;

    if (!v9)
    {
      [SFSession _sendFrameType:? object:?];
      v8 = 0;
      goto LABEL_17;
    }

    v8 = v9;
  }

  if (self->_xpcCnx)
  {
    v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionSendFrameType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy sessionSendFrameType:typeCopy data:v8];

    os_activity_scope_leave(&state);
  }

  else
  {
    sendFrameHandler = self->_sendFrameHandler;
    if (sendFrameHandler)
    {
      sendFrameHandler[2](sendFrameHandler, typeCopy, v8);
    }

    else
    {
      ucatCore = self->_ucatCore;
      if (ucatCore->var0 <= 60)
      {
        if (ucatCore->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_17;
          }

          ucatCore = self->_ucatCore;
        }

        if (typeCopy > 0x41)
        {
          v15 = "?";
        }

        else
        {
          v15 = off_1E7890E60[typeCopy];
        }

        LogPrintF(ucatCore, "[SFSession _sendFrameType:object:]", 60, "### Send %s without connection\n", v15);
      }
    }
  }

LABEL_17:
}

- (void)sendRequestWithFlags:(unsigned int)flags object:(id)object responseHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__SFSession_sendRequestWithFlags_object_responseHandler___block_invoke;
  v13[3] = &unk_1E788EAB8;
  flagsCopy = flags;
  v13[4] = self;
  v14 = objectCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = objectCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)_sendRequestWithFlags:(unsigned int)flags object:(id)object responseHandler:(id)handler
{
  v6 = *&flags;
  v18[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v9 = [object mutableCopy];
  RandomBytes();
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:0];
  [v9 setObject:v10 forKeyedSubscript:@"_xc"];
  if (!self->_requestMap)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestMap = self->_requestMap;
    self->_requestMap = v11;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v6, 0, @"_fl"}];
  v17[1] = @"_rh";
  v18[0] = v13;
  v14 = _Block_copy(handlerCopy);

  v18[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [(NSMutableDictionary *)self->_requestMap setObject:v15 forKeyedSubscript:v10];

  if (v6)
  {
    [(SFSession *)self _sendEncryptedObject:v9];
  }

  else
  {
    if ((self->_sessionFlags & 2) != 0)
    {
      v16 = 29;
    }

    else
    {
      v16 = 5;
    }

    [(SFSession *)self _sendFrameType:v16 object:v9];
  }
}

- (void)sendWithFlags:(unsigned int)flags object:(id)object
{
  flagsCopy = flags;
  objectCopy = object;
  dispatchQueue = self->_dispatchQueue;
  if (flagsCopy)
  {
    v8 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v9 = __34__SFSession_sendWithFlags_object___block_invoke;
  }

  else
  {
    v8 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v9 = __34__SFSession_sendWithFlags_object___block_invoke_2;
  }

  v8[2] = v9;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v10 = objectCopy;
  v8[5] = v10;
  dispatch_async(dispatchQueue, v8);
}

uint64_t __34__SFSession_sendWithFlags_object___block_invoke_2(uint64_t a1)
{
  if ((*(*(a1 + 32) + 140) & 2) != 0)
  {
    v1 = 29;
  }

  else
  {
    v1 = 5;
  }

  return [*(a1 + 32) _sendFrameType:v1 object:*(a1 + 40)];
}

- (void)_sendEncryptedObject:(id)object
{
  v30[2] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionSendFrameType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v30[0] = 0;
  v30[1] = 0;
  if (!self->_xpcCnx)
  {
    ucatCore = self->_ucatCore;
    p_ucatCore = &self->_ucatCore;
    v17 = ucatCore;
    var0 = ucatCore->var0;
    if (ucatCore->var0 > 60)
    {
      goto LABEL_41;
    }

    if (var0 != -1)
    {
      LogPrintF(v17, "[SFSession _sendEncryptedObject:]", 60, "### Send encrypted without connection\n");
      goto LABEL_41;
    }

    if (!_LogCategory_Initialize())
    {
      goto LABEL_41;
    }

    v24 = "### Send encrypted without connection\n";
    goto LABEL_39;
  }

  if (!self->_encryptionWriteAEAD)
  {
    v22 = self->_ucatCore;
    p_ucatCore = &self->_ucatCore;
    v21 = v22;
    v23 = v22->var0;
    if (v22->var0 > 60)
    {
      goto LABEL_41;
    }

    if (v23 != -1)
    {
      v24 = "### Send encrypted without encryption info\n";
LABEL_24:
      LogPrintF(v21, "[SFSession _sendEncryptedObject:]", 60, v24);
      goto LABEL_41;
    }

    if (!_LogCategory_Initialize())
    {
      goto LABEL_41;
    }

    v24 = "### Send encrypted without encryption info\n";
LABEL_39:
    v21 = *p_ucatCore;
    goto LABEL_24;
  }

  DataMutable = OPACKEncoderCreateDataMutable();
  if (!DataMutable)
  {
    v25 = self->_ucatCore;
    if (v25->var0 <= 60)
    {
      if (v25->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_41;
        }

        v25 = self->_ucatCore;
      }

      LogPrintF(v25, "[SFSession _sendEncryptedObject:]", 60, "### Send encrypted encode failed: %#m\n", 0);
    }

LABEL_41:
    DataMutable = 0;
    goto LABEL_17;
  }

  if ((self->_sessionFlags & 2) != 0)
  {
    v8 = NSDataCompress();
    remoteObjectProxy = 0;
    if (!v8)
    {
      v27 = self->_ucatCore;
      if (v27->var0 <= 60)
      {
        if (v27->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_16;
          }

          v27 = self->_ucatCore;
        }

        LogPrintF(v27, "[SFSession _sendEncryptedObject:]", 60, "### Send encrypted compress failed: %{error}\n", remoteObjectProxy);
      }

LABEL_16:

      goto LABEL_17;
    }

    v10 = [v8 mutableCopy];

    v7 = 28;
    DataMutable = v10;
  }

  else
  {
    v7 = 6;
  }

  v11 = DataMutable;
  [DataMutable mutableBytes];
  [DataMutable length];
  encryptionWriteNonce = self->_encryptionWriteNonce;
  v13 = CryptoAEADEncryptMessage();
  v14 = 0;
  v28 = v13;
  do
  {
    if (++encryptionWriteNonce[v14])
    {
      v16 = 1;
    }

    else
    {
      v16 = v14 == 11;
    }

    ++v14;
  }

  while (!v16);
  if (!v13)
  {
    [DataMutable appendBytes:v30 length:{16, v30, 16}];
    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy sessionSendFrameType:v7 data:DataMutable];
    goto LABEL_16;
  }

  v26 = self->_ucatCore;
  if (v26->var0 <= 60)
  {
    if (v26->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v26 = self->_ucatCore;
      v13 = v28;
    }

    LogPrintF(v26, "[SFSession _sendEncryptedObject:]", 60, "### Send encrypted without encryption info: %#m\n", v13, 16);
  }

LABEL_17:

  os_activity_scope_leave(&state);
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  if (CFDictionaryGetInt64())
  {
    [(SFSession *)self _registerRequestID:dCopy options:optionsCopy handler:handlerCopy];
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__SFSession_registerRequestID_options_handler___block_invoke;
    v12[3] = &unk_1E788B750;
    v12[4] = self;
    v13 = dCopy;
    v14 = optionsCopy;
    v15 = handlerCopy;
    dispatch_async(dispatchQueue, v12);
  }
}

- (void)_registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  dispatchQueue = self->_dispatchQueue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(dispatchQueue);
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFSession _registerRequestID:options:handler:]", 30, "RegisterRequestID '%@'\n", dCopy);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  v12 = objc_alloc_init(SFMessageSessionRequestEntry);
  [(SFMessageSessionRequestEntry *)v12 setHandler:handlerCopy];

  if (optionsCopy)
  {
    [(SFMessageSessionRequestEntry *)v12 setOptions:optionsCopy];
  }

  [(SFMessageSessionRequestEntry *)v12 setAllowUnencrypted:CFDictionaryGetInt64() != 0];
  requestHandlers = self->_requestHandlers;
  if (!requestHandlers)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = self->_requestHandlers;
    self->_requestHandlers = v14;

    requestHandlers = self->_requestHandlers;
  }

  [(NSMutableDictionary *)requestHandlers setObject:v12 forKeyedSubscript:dCopy];
}

- (void)deregisterRequestID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SFSession_deregisterRequestID___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_deregisterRequestID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    v5 = dCopy;
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFSession _deregisterRequestID:]", 30, "DeregisterRequestID '%@'\n", v5);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      v5 = dCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(NSMutableDictionary *)self->_requestHandlers setObject:0 forKeyedSubscript:dCopy];
}

- (void)sendRequestID:(id)d options:(id)options request:(id)request responseHandler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  requestCopy = request;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SFSession_sendRequestID_options_request_responseHandler___block_invoke;
  block[3] = &unk_1E7890068;
  block[4] = self;
  v20 = dCopy;
  v21 = optionsCopy;
  v22 = requestCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = requestCopy;
  v17 = optionsCopy;
  v18 = dCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_sendRequestID:(id)d options:(id)options request:(id)request responseHandler:(id)handler
{
  v24[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  optionsCopy = options;
  requestCopy = request;
  handlerCopy = handler;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 > 30)
  {
    goto LABEL_5;
  }

  if (ucatCore->var0 != -1)
  {
    goto LABEL_3;
  }

  if (_LogCategory_Initialize())
  {
    ucatCore = self->_ucatCore;
LABEL_3:
    LogPrintF(ucatCore, "-[SFSession _sendRequestID:options:request:responseHandler:]", 30, "SendRequestID '%@', %ld keys\n", dCopy, [requestCopy count]);
  }

LABEL_5:
  if (self->_encryptionWriteAEAD)
  {
    v15 = 1;
  }

  else
  {
    v15 = CFDictionaryGetInt64() == 0;
  }

  v23[0] = @"_ri";
  v23[1] = @"_ro";
  v24[0] = dCopy;
  v24[1] = requestCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__SFSession__sendRequestID_options_request_responseHandler___block_invoke;
  v19[3] = &unk_1E7890DF0;
  v19[4] = self;
  v20 = dCopy;
  v21 = handlerCopy;
  v22 = v15;
  v17 = handlerCopy;
  v18 = dCopy;
  [(SFSession *)self _sendRequestWithFlags:v15 object:v16 responseHandler:v19];
}

void __60__SFSession__sendRequestID_options_request_responseHandler___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *(*(a1 + 32) + 160);
    if (*v9 <= 60)
    {
      if (*v9 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v9 = *(*(a1 + 32) + 160);
      }

      LogPrintF(v9, "[SFSession _sendRequestID:options:request:responseHandler:]_block_invoke", 60, "### ResponseRequestID '%@' failed: %{error}\n", *(a1 + 40), v7);
    }

LABEL_12:
    (*(*(a1 + 48) + 16))();
    goto LABEL_34;
  }

  if ((a2 & 1) != 0 || (*(a1 + 56) & 1) == 0)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged)
    {
      v11 = *(*(a1 + 32) + 160);
      if (*v11 <= 60)
      {
        if (*v11 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_24;
          }

          v11 = *(*(a1 + 32) + 160);
        }

        LogPrintF(v11, "[SFSession _sendRequestID:options:request:responseHandler:]_block_invoke", 60, "### ResponseRequestID '%@' failed: %#m\n", *(a1 + 40), Int64Ranged);
      }

LABEL_24:
      v16 = *(a1 + 48);
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A768];
      v19 = Int64Ranged;
      v26 = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v12 = v20;
      v21 = @"?";
      if (v20)
      {
        v21 = v20;
      }

      v27[0] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v23 = [v17 errorWithDomain:v18 code:v19 userInfo:v22];
      (*(v16 + 16))(v16, v23, 0, 0);

      goto LABEL_33;
    }

    CFDictionaryGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    v13 = *(*(a1 + 32) + 160);
    v14 = *v13;
    if (v12)
    {
      if (v14 <= 30)
      {
        if (v14 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_30;
          }

          v13 = *(*(a1 + 32) + 160);
        }

        LogPrintF(v13, "-[SFSession _sendRequestID:options:request:responseHandler:]_block_invoke", 30, "ResponseRequestID '%@': %ld keys\n", *(a1 + 40), [v12 count]);
      }

LABEL_30:
      (*(*(a1 + 48) + 16))();
LABEL_33:

      goto LABEL_34;
    }

    if (v14 <= 60)
    {
      if (v14 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        v13 = *(*(a1 + 32) + 160);
      }

      LogPrintF(v13, "[SFSession _sendRequestID:options:request:responseHandler:]_block_invoke", 60, "### ResponseRequestID '%@' no response object\n", *(a1 + 40));
    }

LABEL_32:
    v24 = *(a1 + 48);
    v25 = NSErrorWithOSStatusF(4294960584, "NoResponseObject");
    (*(v24 + 16))(v24, v25, 0, 0);

    goto LABEL_33;
  }

  v15 = *(*(a1 + 32) + 160);
  if (*v15 <= 60)
  {
    if (*v15 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_34;
      }

      v15 = *(*(a1 + 32) + 160);
    }

    LogPrintF(v15, "[SFSession _sendRequestID:options:request:responseHandler:]_block_invoke", 60, "### Ignoring unencrypted response to requestID '%@'\n", *(a1 + 40));
  }

LABEL_34:
}

- (void)sessionBluetoothStateChanged:(int64_t)changed
{
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 30)
  {
    if (ucatCore->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      ucatCore = self->_ucatCore;
    }

    if (changed > 5)
    {
      v6 = "?";
    }

    else
    {
      v6 = off_1E7891070[changed];
    }

    LogPrintF(ucatCore, "[SFSession sessionBluetoothStateChanged:]", 30, "Bluetooth state changed: %s\n", v6);
  }

LABEL_9:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_bluetoothState = changed;
  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  if (bluetoothStateChangedHandler)
  {
    bluetoothStateChangedHandler[2](bluetoothStateChangedHandler, changed);
  }

  [(SFSession *)self _startTimeoutIfNeeded];
}

- (void)sessionError:(id)error
{
  errorCopy = error;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 50)
  {
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFSession sessionError:]", 50, "Error: %@\n", errorCopy);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  heartbeatTimer = self->_heartbeatTimer;
  if (heartbeatTimer)
  {
    v7 = heartbeatTimer;
    dispatch_source_cancel(v7);
    v8 = self->_heartbeatTimer;
    self->_heartbeatTimer = 0;
  }

  if (self->_pairSetupSession && !self->_pairSetupEnded)
  {
    v9 = NSErrorToOSStatus();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 4294960596;
    }

    [(SFSession *)self _pairSetupCompleted:v10];
  }

  if (self->_pairVerifySession && !self->_pairVerifyEnded)
  {
    v11 = NSErrorToOSStatus();
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = 4294960596;
    }

    [(SFSession *)self _pairVerifyCompleted:v12];
  }

  [(NSMutableDictionary *)self->_requestHandlers removeAllObjects];
  requestHandlers = self->_requestHandlers;
  self->_requestHandlers = 0;

  requestMap = self->_requestMap;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __26__SFSession_sessionError___block_invoke;
  v18[3] = &unk_1E7890E18;
  v18[4] = self;
  v15 = errorCopy;
  v19 = v15;
  [(NSMutableDictionary *)requestMap enumerateKeysAndObjectsUsingBlock:v18];
  [(NSMutableDictionary *)self->_requestMap removeAllObjects];
  v16 = self->_requestMap;
  self->_requestMap = 0;

  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    errorHandler[2](errorHandler, v15);
  }
}

void __26__SFSession_sessionError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 160);
  if (*v6 <= 50)
  {
    if (*v6 != -1)
    {
LABEL_3:
      LogPrintF(v6, "[SFSession sessionError:]_block_invoke", 50, "### Canceling request %@: %@\n", v9, *(a1 + 40));
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(*(a1 + 32) + 160);
      goto LABEL_3;
    }
  }

LABEL_5:
  v7 = [v5 objectForKeyedSubscript:@"_rh"];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, 0, *(a1 + 40), 0);
  }
}

- (void)sessionReceivedEvent:(id)event
{
  eventCopy = event;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 10)
  {
    v5 = eventCopy;
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFSession sessionReceivedEvent:]", 10, "Received event: %@\n", v5);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      v5 = eventCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  eventMessageHandler = self->_eventMessageHandler;
  v7 = eventCopy;
  if (eventMessageHandler)
  {
    eventMessageHandler[2](eventMessageHandler, eventCopy);
    v7 = eventCopy;
  }
}

- (void)sessionReceivedFrameType:(unsigned __int8)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_heartbeatLastTicks = mach_absolute_time();
  if (typeCopy <= 22)
  {
    if (typeCopy > 18)
    {
      if (typeCopy > 20)
      {
        if (typeCopy == 21)
        {
          goto LABEL_29;
        }
      }

      else if (typeCopy == 19)
      {
        goto LABEL_19;
      }

      self->_heartbeatWaiting = 0;
      goto LABEL_29;
    }

    if ((typeCopy - 16) < 2 || typeCopy == 5)
    {
      goto LABEL_19;
    }

    if (typeCopy == 6)
    {
LABEL_12:
      [(SFSession *)self _sessionReceivedEncryptedData:dataCopy type:typeCopy];
      goto LABEL_29;
    }
  }

  else
  {
    if (typeCopy <= 47)
    {
      if (typeCopy <= 27)
      {
        if (typeCopy == 23)
        {
          goto LABEL_29;
        }

        if (typeCopy == 24)
        {
          self->_heartbeatV2 = 1;
          [(SFSession *)self _sessionReceivedStartAck:dataCopy];
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if (typeCopy != 28)
      {
        if (typeCopy != 29)
        {
          if (typeCopy == 30)
          {
            goto LABEL_29;
          }

          goto LABEL_27;
        }

LABEL_19:
        [(SFSession *)self _sessionReceivedUnencryptedData:dataCopy type:typeCopy];
        goto LABEL_29;
      }

      goto LABEL_12;
    }

    if ((typeCopy - 64) < 2)
    {
      goto LABEL_29;
    }

    if (typeCopy == 48)
    {
      selfCopy2 = self;
      v7 = dataCopy;
      v8 = 0;
      goto LABEL_26;
    }

    if (typeCopy == 49)
    {
      selfCopy2 = self;
      v7 = dataCopy;
      v8 = 1;
LABEL_26:
      [(SFSession *)selfCopy2 sessionReceivedFragmentData:v7 last:v8];
      goto LABEL_29;
    }
  }

LABEL_27:
  receivedFrameHandler = self->_receivedFrameHandler;
  if (receivedFrameHandler)
  {
    receivedFrameHandler[2](receivedFrameHandler, typeCopy, dataCopy);
  }

LABEL_29:
}

- (void)sessionReceivedFragmentData:(id)data last:(BOOL)last
{
  dataCopy = data;
  v6 = [dataCopy length];
  if (!v6)
  {
    NSErrorWithOSStatusF(4294960553, "Fragment too small (%zu bytes)");
    v21 = LABEL_24:;
    v13 = 0;
    goto LABEL_29;
  }

  v7 = v6;
  v8 = *[dataCopy bytes];
  if (self->_fragmentLastIndex + 1 != v8)
  {
    NSErrorWithOSStatusF(4294960553, "Fragment out-of-order (%u < %u)");
    goto LABEL_24;
  }

  fragmentData = self->_fragmentData;
  if (!fragmentData)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v11 = self->_fragmentData;
    self->_fragmentData = v10;

    fragmentData = self->_fragmentData;
  }

  v12 = [dataCopy subdataWithRange:{1, v7 - 1}];
  [(NSMutableData *)fragmentData appendData:v12];

  if (!last)
  {
    ucatCore = self->_ucatCore;
    if (ucatCore->var0 <= 30)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        ucatCore = self->_ucatCore;
      }

      LogPrintF(ucatCore, "[SFSession sessionReceivedFragmentData:last:]", 30, "BLE NearbyInfo frame fragments from %@, %zu bytes so far\n", self->_peer, [(NSMutableData *)self->_fragmentData length]);
    }

LABEL_18:
    v21 = 0;
    v13 = 0;
    self->_fragmentLastIndex = v8;
    goto LABEL_19;
  }

  v13 = self->_fragmentData;
  v14 = [(NSMutableData *)v13 length];
  v15 = self->_ucatCore;
  if (v15->var0 <= 30)
  {
    if (v15->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v15 = self->_ucatCore;
    }

    LogPrintF(v15, "[SFSession sessionReceivedFragmentData:last:]", 30, "BLE NearbyInfo frame de-fragmented from %@, %'.32@ (%zu bytes)\n", self->_peer, v13, v14);
  }

LABEL_13:
  if (v14 <= 1)
  {
    NSErrorWithOSStatusF(4294960553, "Fragmented message too small (%zu bytes)");
  }

  else
  {
    bytes = [(NSMutableData *)v13 bytes];
    v18 = *bytes;
    if (((v18 - 48) & 0xEE) != 0)
    {
      if (bytes[1] == self->_serviceType)
      {
        v19 = [(NSMutableData *)v13 subdataWithRange:2, v14 - 2];

        [(SFSession *)self sessionReceivedFrameType:v18 data:v19];
        v20 = self->_fragmentData;
        self->_fragmentData = 0;

        v21 = 0;
        self->_fragmentLastIndex = 0;
        v13 = v19;
        goto LABEL_19;
      }

      NSErrorWithOSStatusF(4294960548, "Wrong fragment service type: %u not %u");
    }

    else
    {
      NSErrorWithOSStatusF(4294960564, "Can't fragment a fragment: %'.32@ (%zu bytes)", v13, v14);
    }
  }
  v21 = ;
LABEL_29:
  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = self->_ucatCore;
  if (v22->var0 <= 60)
  {
    if (v22->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_34;
      }

      v22 = self->_ucatCore;
    }

    LogPrintF(v22, "[SFSession sessionReceivedFragmentData:last:]", 60, "### Receive fragment failed: %{error}\n", v21);
  }

LABEL_34:
  v23 = self->_fragmentData;
  self->_fragmentData = 0;

  self->_fragmentLastIndex = 0;
LABEL_19:
}

- (void)_sessionReceivedEncryptedData:(id)data type:(unsigned __int8)type
{
  typeCopy = type;
  dataCopy = data;
  v7 = dataCopy;
  if (!self->_encryptionReadAEAD)
  {
    ucatCore = self->_ucatCore;
    if (ucatCore->var0 <= 60)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_41;
        }

        ucatCore = self->_ucatCore;
      }

      LogPrintF(ucatCore, "[SFSession _sessionReceivedEncryptedData:type:]", 60, "### Received encrypted without encryption info\n");
    }

LABEL_41:
    v12 = 0;
    goto LABEL_42;
  }

  v8 = [dataCopy length];
  v9 = v8;
  if (v8 <= 0xF)
  {
    v22 = self->_ucatCore;
    if (v22->var0 <= 60)
    {
      if (v22->var0 != -1)
      {
LABEL_22:
        LogPrintF(v22, "[SFSession _sessionReceivedEncryptedData:type:]", 60, "### Received encrypted too short (%zu)\n");
        goto LABEL_41;
      }

      if (_LogCategory_Initialize())
      {
        v22 = self->_ucatCore;
        goto LABEL_22;
      }
    }

    goto LABEL_41;
  }

  v10 = v8 - 16;
  bytes = [v7 bytes];
  v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v9 - 16];
  if ([v12 length] != v10)
  {
    v23 = self->_ucatCore;
    if (v23->var0 <= 60)
    {
      if (v23->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_42;
        }

        v23 = self->_ucatCore;
      }

      LogPrintF(v23, "[SFSession _sessionReceivedEncryptedData:type:]", 60, "### Received encrypted without enough memory (%zu bytes)?\n");
    }

LABEL_42:
    v17 = 0;
    goto LABEL_43;
  }

  [v12 mutableBytes];
  v29 = bytes + v10;
  v13 = CryptoAEADDecryptMessage();
  v30 = v13;
  v14 = 24;
  do
  {
    v15 = *(&self->super.isa + v14) + 1;
    *(&self->super.isa + v14) = v15;
    if (v15)
    {
      break;
    }
  }

  while (v14++ != 35);
  if (v13)
  {
    v24 = self->_ucatCore;
    if (v24->var0 <= 60)
    {
      if (v24->var0 != -1)
      {
LABEL_29:
        LogPrintF(v24, "[SFSession _sessionReceivedEncryptedData:type:]", 60, "### Received encrypted decrypt failed: %#m\n");
        goto LABEL_42;
      }

      if (_LogCategory_Initialize())
      {
        v24 = self->_ucatCore;
        goto LABEL_29;
      }
    }

    goto LABEL_42;
  }

  if (typeCopy == 28)
  {
    v17 = NSDataDecompress();
    v18 = 0;
    if (!v17)
    {
      [SFSession _sessionReceivedEncryptedData:? type:?];
      goto LABEL_43;
    }
  }

  else
  {
    v17 = v12;
  }

  v19 = OPACKDecodeData();
  if (!v19)
  {
    v25 = self->_ucatCore;
    if (v25->var0 <= 60)
    {
      if (v25->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_43;
        }

        v25 = self->_ucatCore;
      }

      LogPrintF(v25, "[SFSession _sessionReceivedEncryptedData:type:]", 60, "### Received encrypted decode failed: %#m\n", v30, 16);
    }

LABEL_43:
    v20 = 0;
    goto LABEL_16;
  }

  v20 = v19;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFSession *)self _sessionReceivedObject:v20 flags:1, v29, 16];
  }

  else
  {
    v26 = self->_ucatCore;
    if (v26->var0 <= 60)
    {
      if (v26->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v26 = self->_ucatCore;
      }

      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      LogPrintF(v26, "[SFSession _sessionReceivedEncryptedData:type:]", 60, "### Received encrypted bad type (%@)\n", v28, 16);
    }
  }

LABEL_16:
}

- (void)_sessionReceivedUnencryptedData:(id)data type:(unsigned __int8)type
{
  typeCopy = type;
  dataCopy = data;
  if (typeCopy == 29)
  {
    v7 = NSDataDecompress();
    v8 = 0;

    if (!v7)
    {
      [SFSession _sessionReceivedUnencryptedData:? type:?];
      dataCopy = 0;
      goto LABEL_15;
    }

    dataCopy = v7;
  }

  v9 = OPACKDecodeData();
  if (!v9)
  {
    ucatCore = self->_ucatCore;
    if (ucatCore->var0 <= 60)
    {
      if (ucatCore->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_33;
        }

        ucatCore = self->_ucatCore;
      }

      LogPrintF(ucatCore, "[SFSession _sessionReceivedUnencryptedData:type:]", 60, "### Received unencrypted decode failed: %#m\n", 0);
    }

LABEL_33:
    v7 = 0;
    goto LABEL_15;
  }

  v7 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SFSession *)self _sessionReceivedUnencryptedData:v7 type:dataCopy, &v13, &v14];
    dataCopy = v13;
    v7 = v14;
    goto LABEL_15;
  }

  switch(typeCopy)
  {
    case 19:
      if (self->_pairVerifySession)
      {
        [(SFSession *)self _pairVerify:v7 start:0];
      }

      else
      {
        v11 = self->_ucatCore;
        if (v11->var0 <= 50)
        {
          if (v11->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              break;
            }

            v11 = self->_ucatCore;
          }

          LogPrintF(v11, "[SFSession _sessionReceivedUnencryptedData:type:]", 50, "### PairVerify data without session?\n");
        }
      }

      break;
    case 17:
      if (self->_pairSetupSession)
      {
        [(SFSession *)self _pairSetup:v7 start:0];
      }

      else
      {
        v10 = self->_ucatCore;
        if (v10->var0 <= 50)
        {
          if (v10->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              break;
            }

            v10 = self->_ucatCore;
          }

          LogPrintF(v10, "[SFSession _sessionReceivedUnencryptedData:type:]", 50, "### PairSetup data without session?\n");
        }
      }

      break;
    case 16:
      [(SFSession *)self _serviceInitiatedPairSetup:v7];
      break;
    default:
      [(SFSession *)self _sessionReceivedObject:v7 flags:0];
      break;
  }

LABEL_15:
}

- (void)_sessionReceivedObject:(id)object flags:(unsigned int)flags
{
  v4 = *&flags;
  objectCopy = object;
  v6 = [objectCopy objectForKeyedSubscript:@"_xc"];
  if (v6)
  {
    v7 = v6;
    [(SFSession *)self _sessionReceivedResponseID:v6 object:objectCopy flags:v4];
    goto LABEL_3;
  }

  v8 = [objectCopy objectForKeyedSubscript:@"_xs"];
  if (!v8)
  {
    receivedObjectHandler = self->_receivedObjectHandler;
    if (receivedObjectHandler)
    {
      receivedObjectHandler[2](receivedObjectHandler, v4, objectCopy);
    }

    else
    {
      ucatCore = self->_ucatCore;
      if (ucatCore->var0 <= 50)
      {
        if (ucatCore->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_15;
          }

          ucatCore = self->_ucatCore;
        }

        LogPrintF(ucatCore, "[SFSession _sessionReceivedObject:flags:]", 50, "### Received object with no requestHandler\n");
      }
    }

LABEL_15:
    v7 = 0;
    goto LABEL_3;
  }

  v7 = v8;
  if (![(SFSession *)self _sessionReceivedRegisteredRequestID:objectCopy flags:v4 xidKey:@"_xs" xidValue:v8])
  {
    [(SFSession *)self _sessionReceivedRequestID:v7 object:objectCopy flags:v4];
  }

LABEL_3:
}

- (BOOL)_sessionReceivedEvent:(id)event flags:(unsigned int)flags
{
  v4 = *&flags;
  eventCopy = event;
  if (!self->_sfTRSession)
  {
    v9 = 0;
    goto LABEL_10;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged != 10)
  {
    goto LABEL_5;
  }

  if (v4)
  {
    [(SFTRSession *)self->_sfTRSession handleEvent:eventCopy flags:v4];
LABEL_5:
    v8 = 1;
    goto LABEL_6;
  }

  [SFSession _sessionReceivedEvent:? flags:?];
  v8 = v11;
LABEL_6:
  if (Int64Ranged == 10)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (BOOL)_sessionReceivedRegisteredRequestID:(id)d flags:(unsigned int)flags xidKey:(id)key xidValue:(id)value
{
  dCopy = d;
  keyCopy = key;
  valueCopy = value;
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  if (v13)
  {
    CFDictionaryGetTypeID();
    v14 = CFDictionaryGetTypedValue();
    if (v14)
    {
      v15 = [(NSMutableDictionary *)self->_requestHandlers objectForKeyedSubscript:v13];
      v16 = v15;
      if (v15)
      {
        if (flags & 1) != 0 || ([v15 allowUnencrypted])
        {
          v25 = v16;
          handler = [v16 handler];
          v18 = handler != 0;
          ucatCore = self->_ucatCore;
          var0 = ucatCore->var0;
          if (!handler)
          {
            if (var0 <= 60)
            {
              if (var0 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_30;
                }

                ucatCore = self->_ucatCore;
              }

              LogPrintF(ucatCore, "[SFSession _sessionReceivedRegisteredRequestID:flags:xidKey:xidValue:]", 60, "### RequestID '%@' no handler\n", v13);
            }

LABEL_30:

            v16 = v25;
LABEL_35:

            goto LABEL_36;
          }

          if (var0 <= 30)
          {
            if (var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_29;
              }

              ucatCore = self->_ucatCore;
            }

            LogPrintF(ucatCore, "-[SFSession _sessionReceivedRegisteredRequestID:flags:xidKey:xidValue:]", 30, "ReceivedRequestID '%@', %ld keys\n", v13, [v14 count]);
          }

LABEL_29:
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __71__SFSession__sessionReceivedRegisteredRequestID_flags_xidKey_xidValue___block_invoke;
          v26[3] = &unk_1E7890E40;
          v26[4] = self;
          v27 = v13;
          flagsCopy = flags;
          v28 = keyCopy;
          v29 = valueCopy;
          (handler)[2](handler, 0, v14, v26);

          goto LABEL_30;
        }

        v23 = self->_ucatCore;
        if (v23->var0 <= 60)
        {
          if (v23->var0 != -1)
          {
LABEL_22:
            LogPrintF(v23, "[SFSession _sessionReceivedRegisteredRequestID:flags:xidKey:xidValue:]", 60, "### Ignoring unencrypted RequestID '%@'\n", v13);
            goto LABEL_34;
          }

          if (_LogCategory_Initialize())
          {
            v23 = self->_ucatCore;
            goto LABEL_22;
          }
        }
      }

      else
      {
        v22 = self->_ucatCore;
        if (v22->var0 <= 60)
        {
          if (v22->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_34;
            }

            v22 = self->_ucatCore;
          }

          LogPrintF(v22, "[SFSession _sessionReceivedRegisteredRequestID:flags:xidKey:xidValue:]", 60, "### RequestID '%@' no entry\n", v13);
        }
      }

LABEL_34:
      v18 = 0;
      goto LABEL_35;
    }

    v21 = self->_ucatCore;
    if (v21->var0 <= 60)
    {
      if (v21->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_25;
        }

        v21 = self->_ucatCore;
      }

      LogPrintF(v21, "[SFSession _sessionReceivedRegisteredRequestID:flags:xidKey:xidValue:]", 60, "### RequestID '%@' no request object\n", v13);
    }

LABEL_25:
    v18 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v18 = 0;
LABEL_37:

  return v18;
}

void __71__SFSession__sessionReceivedRegisteredRequestID_flags_xidKey_xidValue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v10 = *(*(a1 + 32) + 160);
    if (*v10 > 60)
    {
      goto LABEL_11;
    }

    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v10 = *(*(a1 + 32) + 160);
    }

    LogPrintF(v10, "[SFSession _sessionReceivedRegisteredRequestID:flags:xidKey:xidValue:]_block_invoke", 60, "### ResponseRequestID '%@' non-nil response with error: %@\n", *(a1 + 40), v7);
LABEL_11:
    v19 = *(a1 + 32);
    v20 = *(a1 + 64);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v25[0] = @"_ro";
    v25[1] = v21;
    v26[0] = v9;
    v26[1] = v22;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v19 sendWithFlags:v20 object:v16];
    goto LABEL_12;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 64);
  v23[0] = @"er";
  v13 = MEMORY[0x1E696AD98];
  v14 = NSErrorToOSStatus();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = 4294960596;
  }

  v16 = [v13 numberWithInt:v15];
  v17 = *(a1 + 56);
  v23[1] = *(a1 + 48);
  v24[0] = v16;
  v24[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v11 sendWithFlags:v12 object:v18];

LABEL_12:
}

- (void)_sessionReceivedRequestID:(id)d object:(id)object flags:(unsigned int)flags
{
  v5 = *&flags;
  dCopy = d;
  v9 = [object mutableCopy];
  [v9 removeObjectForKey:@"_xs"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__SFSession__sessionReceivedRequestID_object_flags___block_invoke;
  aBlock[3] = &unk_1E7890570;
  aBlock[4] = self;
  v10 = dCopy;
  v15 = v10;
  v11 = _Block_copy(aBlock);
  if (![(SFSession *)self _sessionReceivedRequest:v9 flags:v5 responseHandler:v11])
  {
    receivedRequestHandler = self->_receivedRequestHandler;
    if (receivedRequestHandler)
    {
      receivedRequestHandler[2](receivedRequestHandler, v5, v9, v11);
    }

    else
    {
      ucatCore = self->_ucatCore;
      if (ucatCore->var0 <= 50)
      {
        if (ucatCore->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_8;
          }

          ucatCore = self->_ucatCore;
        }

        LogPrintF(ucatCore, "[SFSession _sessionReceivedRequestID:object:flags:]", 50, "### Received request %@ with no requestHandler\n", v10);
      }
    }
  }

LABEL_8:
}

void __52__SFSession__sessionReceivedRequestID_object_flags___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v9 = *(*(a1 + 32) + 160);
    if (*v9 > 90)
    {
      goto LABEL_11;
    }

    if (*v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v9 = *(*(a1 + 32) + 160);
    }

    LogPrintF(v9, "[SFSession _sessionReceivedRequestID:object:flags:]_block_invoke", 90, "### Response for %@ non-nil with error: %@\n", *(a1 + 40), v7);
LABEL_11:
    v16 = [v8 mutableCopy];
    [v16 setObject:*(a1 + 40) forKeyedSubscript:@"_xs"];
    [*(a1 + 32) sendWithFlags:a2 object:v16];

    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  v17[0] = @"er";
  v11 = MEMORY[0x1E696AD98];
  v12 = NSErrorToOSStatus();
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 4294960596;
  }

  v14 = [v11 numberWithInt:v13];
  v17[1] = @"_xs";
  v18[0] = v14;
  v18[1] = *(a1 + 40);
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v10 sendWithFlags:a2 object:v15];

LABEL_12:
}

- (BOOL)_sessionReceivedRequest:(id)request flags:(unsigned int)flags responseHandler:(id)handler
{
  v6 = *&flags;
  requestCopy = request;
  handlerCopy = handler;
  if (!self->_sfTRSession)
  {
    v12 = 0;
    goto LABEL_10;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged != 11)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    [(SFTRSession *)self->_sfTRSession handleRequest:requestCopy flags:v6 responseHandler:handlerCopy];
LABEL_5:
    v11 = 1;
    goto LABEL_6;
  }

  [SFSession _sessionReceivedRequest:? flags:? responseHandler:?];
  v11 = v14;
LABEL_6:
  if (Int64Ranged == 11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_10:

  return v12;
}

- (void)_sessionReceivedResponseID:(id)d object:(id)object flags:(unsigned int)flags
{
  v5 = *&flags;
  v24[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  objectCopy = object;
  v10 = [(NSMutableDictionary *)self->_requestMap objectForKeyedSubscript:dCopy];
  if (!v10)
  {
    [SFSession _sessionReceivedResponseID:? object:? flags:?];
    goto LABEL_6;
  }

  [(NSMutableDictionary *)self->_requestMap removeObjectForKey:dCopy];
  v11 = [v10 objectForKeyedSubscript:@"_rh"];
  if (!v11)
  {
    [SFSession _sessionReceivedResponseID:? object:? flags:?];
    goto LABEL_6;
  }

  v12 = v11;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if ((v5 & 1) != 0 || (Int64Ranged & 1) == 0)
  {
    v14 = [objectCopy mutableCopy];
    [v14 removeObjectForKey:@"_xc"];
    (v12)[2](v12, v5, 0, v14);

    goto LABEL_6;
  }

  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 50)
  {
    if (ucatCore->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF(ucatCore, "[SFSession _sessionReceivedResponseID:object:flags:]", 50, "### Received unencrypted response xid %@ for encrypted request\n", dCopy);
  }

LABEL_13:
  v16 = MEMORY[0x1E696ABC0];
  v17 = *MEMORY[0x1E696A768];
  v23 = *MEMORY[0x1E696A578];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v19 = v18;
  v20 = @"?";
  if (v18)
  {
    v20 = v18;
  }

  v24[0] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v22 = [v16 errorWithDomain:v17 code:-6768 userInfo:v21];
  (v12)[2](v12, 0, v22, 0);

LABEL_6:
}

- (void)_sessionReceivedStartAck:(id)ack
{
  ackCopy = ack;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SFSession__sessionReceivedStartAck___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  if (_sessionReceivedStartAck__onceToken != -1)
  {
    dispatch_once(&_sessionReceivedStartAck__onceToken, block);
  }

  v5 = OPACKDecodeData();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  ucatCore = self->_ucatCore;
  var0 = ucatCore->var0;
  if ((isKindOfClass & 1) == 0)
  {
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_29;
        }

        ucatCore = self->_ucatCore;
      }

      LogPrintF(ucatCore, "[SFSession _sessionReceivedStartAck:]", 60, "### Start ack decode failed: %#m\n", v17);
    }

LABEL_29:
    v10 = 0;
    goto LABEL_24;
  }

  if (var0 > 30)
  {
    goto LABEL_8;
  }

  if (var0 != -1)
  {
    goto LABEL_6;
  }

  if (_LogCategory_Initialize())
  {
    ucatCore = self->_ucatCore;
LABEL_6:
    LogPrintF(ucatCore, "[SFSession _sessionReceivedStartAck:]", 30, "Start ack received: %##@\n", v5);
  }

LABEL_8:
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  v10 = v9;
  if (v9)
  {
    [v9 UTF8String];
    v11 = TextToSourceVersion();
    self->_sharingSourceVersion = v11;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  else if (self->_sharingSourceVersion)
  {
    goto LABEL_16;
  }

  v12 = self->_ucatCore;
  if (v12->var0 <= 115)
  {
    if (v12->var0 != -1)
    {
LABEL_14:
      LogPrintF(v12, "[SFSession _sessionReceivedStartAck:]", 115, "Error: Sharing version %@ is not convertable to SourceVersion\n", v10);
      goto LABEL_16;
    }

    if (_LogCategory_Initialize())
    {
      v12 = self->_ucatCore;
      goto LABEL_14;
    }
  }

LABEL_16:
  sessionFlags = self->_sessionFlags;
  if ((sessionFlags & 1) != 0 && self->_sharingSourceVersion >= 0x7E57C0)
  {
    sessionFlags |= 2u;
    self->_sessionFlags = sessionFlags;
  }

  if ((sessionFlags & 0x20) != 0 && self->_sharingSourceVersion >= 0x8FE454)
  {
    self->_sessionFlags = sessionFlags | 0x40;
  }

  sessionStartedHandler = self->_sessionStartedHandler;
  if (sessionStartedHandler)
  {
    sessionStartedHandler[2]();
    v15 = self->_sessionStartedHandler;
    self->_sessionStartedHandler = 0;
  }

LABEL_24:
}

int *__38__SFSession__sessionReceivedStartAck___block_invoke(uint64_t a1)
{
  [@"1945.10.6" UTF8String];
  result = TextToSourceVersion();
  if (!result)
  {
    result = *(*(a1 + 32) + 160);
    if (*result <= 115)
    {
      if (*result != -1)
      {
        return LogPrintF(result, "[SFSession _sessionReceivedStartAck:]_block_invoke", 115, "Error: Local Sharing version %@ is not convertable to SourceVersion\n", @"1945.10.6");
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        result = *(*(a1 + 32) + 160);
        return LogPrintF(result, "[SFSession _sessionReceivedStartAck:]_block_invoke", 115, "Error: Local Sharing version %@ is not convertable to SourceVersion\n", @"1945.10.6");
      }
    }
  }

  return result;
}

- (void)sessionReceivedRequest:(id)request
{
  requestCopy = request;
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 10)
  {
    v5 = requestCopy;
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFSession sessionReceivedRequest:]", 10, "Received request: %@\n", v5);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      v5 = requestCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  requestMessageHandler = self->_requestMessageHandler;
  v7 = requestCopy;
  if (requestMessageHandler)
  {
    requestMessageHandler[2](requestMessageHandler, requestCopy);
    v7 = requestCopy;
  }
}

- (void)sessionReceivedResponse:(id)response
{
  responseCopy = response;
  identifier = [responseCopy identifier];
  ucatCore = self->_ucatCore;
  if (ucatCore->var0 <= 10)
  {
    if (ucatCore->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucatCore, "[SFSession sessionReceivedResponse:]", 10, "Received response: %@\n", responseCopy);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!identifier)
  {
    v10 = 4294960588;
LABEL_15:
    [(SFSession *)&self->_ucatCore sessionReceivedResponse:v10];
    goto LABEL_10;
  }

  v6 = [(NSMutableDictionary *)self->_requestQueue objectForKeyedSubscript:identifier];
  if (!v6)
  {
    v10 = 4294960569;
    goto LABEL_15;
  }

  v7 = v6;
  responseHandler = [v6 responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [v7 responseHandler];
    (responseHandler2)[2](responseHandler2, 0, responseCopy);
  }

  [(NSMutableDictionary *)self->_requestQueue removeObjectForKey:identifier];

LABEL_10:
}

- (SFSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = SFSession;
  v5 = [(SFSession *)&v20 init];
  if (v5)
  {
    v6 = SFMainQueue();
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v6;

    v5->_ucatCore = &gLogCategory_SFSessionCore;
    v5->_ucatCrypto = &gLogCategory_SFSessionCrypto;
    if ([coderCopy containsValueForKey:@"ident"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ident"];
      identifier = v5->_identifier;
      v5->_identifier = v8;
    }

    if ([coderCopy containsValueForKey:@"pd"])
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pd"];
      peerDevice = v5->_peerDevice;
      v5->_peerDevice = v10;
    }

    if ([coderCopy containsValueForKey:@"st"])
    {
      v12 = [coderCopy decodeIntegerForKey:@"st"];
      v5->_serviceType = v12;
      if (v12 >= 0x100)
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D940];
        v15 = _NSMethodExceptionProem();
        [v13 raise:v14 format:{@"%@: service type out-of-range: %ld", v15, v12}];
      }
    }

    if ([coderCopy containsValueForKey:@"sid"])
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
      serviceUUID = v5->_serviceUUID;
      v5->_serviceUUID = v16;
    }

    v21 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_sessionFlags = v21;
    }

    v18 = v5;
  }

  return v5;
}

- (int)setEncryptionReadKey:(const char *)key readKeyLen:(unint64_t)len writeKey:(const char *)writeKey writeKeyLen:(unint64_t)keyLen
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  encryptionReadAEAD = self->_encryptionReadAEAD;
  if (encryptionReadAEAD)
  {
    CFRelease(encryptionReadAEAD);
    self->_encryptionReadAEAD = 0;
  }

  v8 = CryptoAEADCreate();
  self->_encryptionReadAEAD = v8;
  if (v8)
  {
    *&self->_encryptionReadNonce[8] = 0;
    *self->_encryptionReadNonce = 0;
    encryptionWriteAEAD = self->_encryptionWriteAEAD;
    if (encryptionWriteAEAD)
    {
      CFRelease(encryptionWriteAEAD);
      self->_encryptionWriteAEAD = 0;
    }

    v10 = CryptoAEADCreate();
    self->_encryptionWriteAEAD = v10;
    if (v10)
    {
      *&self->_encryptionWriteNonce[8] = 0;
      *self->_encryptionWriteNonce = 0;
      ucatCore = self->_ucatCore;
      if (ucatCore->var0 <= 30)
      {
        if (ucatCore->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return 0;
          }

          ucatCore = self->_ucatCore;
        }

        LogPrintF(ucatCore, "[SFSession setEncryptionReadKey:readKeyLen:writeKey:writeKeyLen:]", 30, "Configured encryption\n");
      }
    }
  }

  return 0;
}

- (void)setLabel:(id)label
{
  v11 = 0;
  v10 = 0;
  v4 = [label copy];
  label = self->_label;
  self->_label = v4;

  ASPrintF(&v10, "%s-%s", self->_ucatCore->var4, [(NSString *)self->_label UTF8String]);
  if (v10)
  {
    v6 = OUTLINED_FUNCTION_6();
    free(v10);
    if (!v11)
    {
      ucatCore = self->_ucatCore;
      if (ucatCore && (ucatCore->var3 & 0x40000) != 0)
      {
        LogCategory_Remove();
      }

      self->_ucatCore = v6;
      ASPrintF(&v10, "%s-%s", self->_ucatCrypto->var4, [(NSString *)self->_label UTF8String]);
      if (v10)
      {
        v8 = OUTLINED_FUNCTION_6();
        free(v10);
        if (!v11)
        {
          ucatCrypto = self->_ucatCrypto;
          if (ucatCrypto)
          {
            if ((ucatCrypto->var3 & 0x40000) != 0)
            {
              LogCategory_Remove();
            }
          }

          self->_ucatCrypto = v8;
        }
      }
    }
  }
}

- (void)_activatedIfReady:(id)ready
{
  readyCopy = ready;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (readyCopy)
  {
    OUTLINED_FUNCTION_2_17();
    if (!(v9 ^ v10 | v8))
    {
      goto LABEL_5;
    }

    if (v7 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF(ucatCore, "[SFSession _activatedIfReady:]", 60, "### Activate failed: %{error}\n", readyCopy);
LABEL_5:
    activateCompletion = self->_activateCompletion;
    if (activateCompletion)
    {
      activateCompletion[2](activateCompletion, readyCopy);
      v5 = self->_activateCompletion;
    }

    else
    {
      v5 = 0;
    }

    self->_activateCompletion = 0;

    goto LABEL_9;
  }

  if (!self->_activateInProgress && self->_appleIDContactCompleted)
  {
    [(SFSession *)self _activated];
    goto LABEL_5;
  }

LABEL_9:
}

void __23__SFSession__fetchInfo__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_17();
  if (v6 ^ v7 | v5)
  {
    v8 = v3;
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*a1 + 160);
    }

    LogPrintF(v2, "[SFSession _fetchInfo]_block_invoke", 60, "### Error getting Apple ID Account: %@\n", v8);
  }
}

void __23__SFSession__fetchInfo__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_17();
  if (v4 ^ v5 | v3)
  {
    if (v2 == -1)
    {
      v6 = v1;
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v0 = *(*v6 + 160);
    }

    LogPrintF(v0, "[SFSession _fetchInfo]_block_invoke", 60, "### No contact info\n");
  }
}

void __23__SFSession__fetchInfo__block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_2_17();
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*a1 + 160);
    }

    LogPrintF(v2, "[SFSession _fetchInfo]_block_invoke", 60, "### No Apple ID Account\n");
  }
}

void __40__SFSession__serviceInitiatedPairSetup___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_17();
  if (v7 ^ v8 | v6)
  {
    if (v5 == -1)
    {
      v9 = v3;
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*a1 + 160);
      v4 = *v9;
    }

    LogPrintF(v2, "[SFSession _serviceInitiatedPairSetup:]_block_invoke", 60, "### PairSetup request no flags: %#m\n", v4);
  }
}

- (uint64_t)_pairSetup:(uint64_t)a1 start:.cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (v7 ^ v8 | v6)
  {
    v9 = v4;
    if (v5 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      result = *v2;
    }

    result = LogPrintF(result, "[SFSession _pairSetup:start:]", 60, "### PairSetup response error: %#m\n", v9);
  }

LABEL_6:
  *v1 = 0;
  return result;
}

- (uint64_t)_pairSetup:(uint64_t)a1 start:.cold.2(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (v7 ^ v8 | v6)
  {
    v9 = v4;
    if (v5 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      result = *v2;
    }

    result = LogPrintF(result, "[SFSession _pairSetup:start:]", 60, "### PairSetup response no pairing data: %#m\n", *v9);
  }

LABEL_6:
  *v1 = 0;
  return result;
}

- (uint64_t)_pairSetupTryPIN:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  OUTLINED_FUNCTION_2_17();
  if (v7 ^ v8 | v6)
  {
    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v4 = *a1;
    }

    LogPrintF(v4, "[SFSession _pairSetupTryPIN:]", 60, "### TryPIN failed: %#m\n", 4294960551);
  }

LABEL_6:

  return [a2 _pairSetupCompleted:4294960551];
}

- (uint64_t)_pairVerify:(uint64_t)a1 start:.cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (v7 ^ v8 | v6)
  {
    v9 = v4;
    if (v5 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      result = *v2;
    }

    result = LogPrintF(result, "[SFSession _pairVerify:start:]", 60, "### PairVerify response error: %#m\n", v9);
  }

LABEL_6:
  *v1 = 0;
  return result;
}

- (uint64_t)_pairVerify:(uint64_t)a1 start:.cold.2(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (v7 ^ v8 | v6)
  {
    v9 = v4;
    if (v5 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      result = *v2;
    }

    result = LogPrintF(result, "[SFSession _pairVerify:start:]", 60, "### PairVerify response no pairing data: %#m\n", *v9);
  }

LABEL_6:
  *v1 = 0;
  return result;
}

- (uint64_t)_pairVerify:(_DWORD *)a3 start:(void *)a4 .cold.3(void *a1, void *a2, _DWORD *a3, void *a4)
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  *a4 = v8;
  v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*a1 length:*a2 freeWhenDone:1];
  [v8 setObject:v9 forKeyedSubscript:@"pd"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3[69]];
  [v8 setObject:v10 forKeyedSubscript:@"pf"];

  if ((a3[35] & 0x400) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v8 setObject:v11 forKeyedSubscript:@"seFl"];
  }

  return [a3 sendFrameType:18 object:v8];
}

- (void)_appleIDAddProof:(uint64_t)a3 error:(uint64_t)a4 .cold.1(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = SFNestedErrorF(a2, 4294960580, "AppleID sign failed", a4, a5, a6, a7, a8, v9);
    *v8 = result;
  }

  return result;
}

- (void)_sendFrameType:(uint64_t)a1 object:.cold.1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_0_20(a1);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v3 = *(v2 + 160);
    }

    LogPrintF(v3, "[SFSession _sendFrameType:object:]", 60, "### Send compress failed: %{error}\n", v1);
  }

LABEL_6:
}

- (uint64_t)_sendFrameType:(uint64_t)a3 object:(void *)a4 .cold.2(uint64_t result, unsigned __int8 a2, uint64_t a3, void *a4)
{
  v5 = *(result + 160);
  if (*v5 <= 60)
  {
    if (*v5 == -1)
    {
      v8 = result;
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      v5 = *(v8 + 160);
    }

    v7 = SFNearbyBLEFrameTypeToString_0(a2);
    result = LogPrintF(v5, "[SFSession _sendFrameType:object:]", 60, "### Send %s encode failed: %#m\n", v7);
  }

LABEL_5:
  *a4 = 0;
  return result;
}

- (void)_sessionReceivedEncryptedData:(uint64_t)a1 type:.cold.1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_0_20(a1);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v3 = *(v2 + 160);
    }

    LogPrintF(v3, "[SFSession _sessionReceivedEncryptedData:type:]", 60, "### Received encrypted decompress failed: %{error}\n", v1);
  }

LABEL_6:
}

- (void)_sessionReceivedUnencryptedData:(uint64_t)a3 type:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *(a1 + 160);
  if (*v9 <= 60)
  {
    if (*v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      v9 = *(a1 + 160);
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    LogPrintF(v9, "[SFSession _sessionReceivedUnencryptedData:type:]", 60, "### Received unencrypted bad type (%@)\n", v11);
  }

LABEL_5:
  *a5 = a2;
  *a4 = a3;
}

- (void)_sessionReceivedUnencryptedData:(uint64_t)a1 type:.cold.2(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_0_20(a1);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v3 = *(v2 + 160);
    }

    LogPrintF(v3, "[SFSession _sessionReceivedUnencryptedData:type:]", 60, "### Received unencrypted decompress failed: %{error}\n", v1);
  }

LABEL_6:
}

- (uint64_t)_sessionReceivedEvent:(uint64_t)a1 flags:.cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_20(a1);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      result = *(v2 + 160);
    }

    result = LogPrintF(result, "[SFSession _sessionReceivedEvent:flags:]", 60, "### Ignoring unencrypted TouchRemote event\n");
  }

LABEL_6:
  *v1 = 0;
  return result;
}

- (uint64_t)_sessionReceivedRequest:(uint64_t)a1 flags:responseHandler:.cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_20(a1);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      result = *(v2 + 160);
    }

    result = LogPrintF(result, "[SFSession _sessionReceivedRequest:flags:responseHandler:]", 60, "### Ignoring unencrypted TouchRemote request\n");
  }

LABEL_6:
  *v1 = 0;
  return result;
}

- (uint64_t)_sessionReceivedResponseID:(uint64_t)a1 object:flags:.cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_4_9(a1);
  if (v6 ^ v7 | v5)
  {
    v8 = v3;
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      result = *(v1 + 160);
    }

    return LogPrintF(result, "[SFSession _sessionReceivedResponseID:object:flags:]", 50, "### Received response xid %@ without response handler\n", v8);
  }

  return result;
}

- (uint64_t)_sessionReceivedResponseID:(uint64_t)a1 object:flags:.cold.2(uint64_t a1)
{
  result = OUTLINED_FUNCTION_4_9(a1);
  if (v6 ^ v7 | v5)
  {
    v8 = v3;
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      result = *(v1 + 160);
    }

    return LogPrintF(result, "[SFSession _sessionReceivedResponseID:object:flags:]", 50, "### Received response xid %@ without request\n", v8);
  }

  return result;
}

- (int)sessionReceivedResponse:(int *)a1 .cold.1(int **a1, uint64_t a2)
{
  result = *a1;
  if (*result <= 50)
  {
    if (*result != -1)
    {
      return LogPrintF(result, "[SFSession sessionReceivedResponse:]", 50, "### Receive response error: %#m\n", a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      result = *a1;
      return LogPrintF(result, "[SFSession sessionReceivedResponse:]", 50, "### Receive response error: %#m\n", a2);
    }
  }

  return result;
}

@end