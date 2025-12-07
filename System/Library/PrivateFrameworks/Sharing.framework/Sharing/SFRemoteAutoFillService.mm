@interface SFRemoteAutoFillService
- (BOOL)needsSetup;
- (SFRemoteAutoFillService)init;
- (id)description;
- (id)urlForVisualScanning;
- (int)_readyForAutoFillRequest;
- (unint64_t)discoveredDevices;
- (void)_activateWithCompletion:(id)completion;
- (void)_activated;
- (void)_bluetoothAddressChanged;
- (void)_cleanup;
- (void)_completedWithError:(id)error;
- (void)_discoveryChanged:(id)changed;
- (void)_discoveryFound:(id)found;
- (void)_discoveryLost:(id)lost;
- (void)_discoveryStart;
- (void)_serviceHandleReceivedContextRequest:(id)request handler:(id)handler;
- (void)_serviceHandleReceivedCredentialRequest:(id)request handler:(id)handler;
- (void)_serviceHandleReceivedRequest:(id)request handler:(id)handler;
- (void)_serviceHidePIN;
- (void)_serviceSessionEnded:(id)ended withError:(id)error;
- (void)_serviceSessionStarted:(id)started;
- (void)_serviceStart;
- (void)_systemMonitorStart;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)setBundleID:(id)d;
- (void)setFixedPIN:(id)n;
- (void)setShowPINHandlerEx:(id)ex;
- (void)setUrlString:(id)string;
- (void)startRequestingAutoFill;
- (void)stopRequestingAutoFill;
- (void)updateURLForVisualScanning;
@end

@implementation SFRemoteAutoFillService

- (SFRemoteAutoFillService)init
{
  v6.receiver = self;
  v6.super_class = SFRemoteAutoFillService;
  v2 = [(SFRemoteAutoFillService *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [SFRemoteAutoFillService dealloc];
    [(SFRemoteAutoFillService *)v3 description];
  }

  else
  {
    [(SFRemoteAutoFillService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFRemoteAutoFillService;
    [(SFRemoteAutoFillService *)&v5 dealloc];
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"SFRemoteAutoFillService"];
  if (self->_activateCalled)
  {
    v4 = @", activated";
  }

  else
  {
    if (!self->_invalidateCalled)
    {
      goto LABEL_6;
    }

    v4 = @", invalidated";
  }

  [v3 appendString:v4];
LABEL_6:
  if (self->_receivedUsername)
  {
    [v3 appendString:{@", username"}];
  }

  if (self->_receivedPassword)
  {
    [v3 appendString:{@", password"}];
  }

  if (self->_service)
  {
    v5 = "active";
  }

  else
  {
    v5 = "inactive";
  }

  [v3 appendFormat:@", service: %s", v5];

  return v3;
}

- (void)_cleanup
{
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  discoveredDevicesChanged = self->_discoveredDevicesChanged;
  self->_discoveredDevicesChanged = 0;

  self->_discoveryState = 0;
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  receivedCredentialsHandler = self->_receivedCredentialsHandler;
  self->_receivedCredentialsHandler = 0;

  receivedPassword = self->_receivedPassword;
  self->_receivedPassword = 0;

  receivedUsername = self->_receivedUsername;
  self->_receivedUsername = 0;

  self->_requestingAutoFill = 0;
  self->_serviceState = 0;
  systemBTAddress = self->_systemBTAddress;
  self->_systemBTAddress = 0;

  self->_systemMonitorState = 0;
  urlForVisualScanning = self->_urlForVisualScanning;
  self->_urlForVisualScanning = 0;

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  devices = self->_devices;
  self->_devices = 0;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SFRemoteAutoFillService_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  v9[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = 0;
  if (CFPrefs_GetInt64() || self->_unitTesting)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService _activateWithCompletion:];
    }

    self->_activateCalled = 1;
    v5 = _Block_copy(completionCopy);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = v5;

    [(SFRemoteAutoFillService *)self _systemMonitorStart];
    [(SFRemoteAutoFillService *)self _serviceStart];
    [(SFRemoteAutoFillService *)self _discoveryStart];
  }

  else
  {
    [(SFRemoteAutoFillService *)&v7 _activateWithCompletion:completionCopy, &v8, v9];
  }
}

- (void)_activated
{
  if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_1(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _activated]", a3, "Discovery not yet activated\n");
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFRemoteAutoFillService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFRemoteAutoFillService_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 48) & 1) == 0 && gLogCategory_SFRemoteAutoFillService <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillService != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __37__SFRemoteAutoFillService_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 48) = 1;
  [*(*(v3 + 32) + 24) invalidate];
  v4 = *(v3 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  [*(*(v3 + 32) + 80) invalidate];
  v6 = *(v3 + 32);
  v7 = *(v6 + 80);
  *(v6 + 80) = 0;

  [*(*(v3 + 32) + 96) invalidate];
  v8 = *(v3 + 32);
  v9 = *(v8 + 96);
  *(v8 + 96) = 0;

  [*(*(v3 + 32) + 112) invalidate];
  v10 = *(v3 + 32);
  v11 = *(v10 + 112);
  *(v10 + 112) = 0;

  v12 = *(v3 + 32);

  return [v12 _cleanup];
}

- (void)startRequestingAutoFill
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A768];
  selfCopy = self;
  *a2 = *MEMORY[0x1E696A578];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v9 = v8;
  v10 = @"?";
  if (v8)
  {
    v10 = v8;
  }

  *a3 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a2 count:1];
  v12 = [v5 errorWithDomain:v6 code:selfCopy userInfo:v11];
  LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService startRequestingAutoFill]", 60, "### StartRequestingAutoFill error: %@", v12);
}

- (void)stopRequestingAutoFill
{
  selfCopy = self;
  if (gLogCategory_SFRemoteAutoFillService <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFRemoteAutoFillService *)self stopRequestingAutoFill];
    }
  }

  peer = [(SFSession *)selfCopy->_session peer];
  if (peer)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [(SFRemoteAutoFillService *)peer stopRequestingAutoFill];
    }

    [(SFService *)selfCopy->_service sendToPeer:peer flags:0 object:&unk_1F1D7D290];
  }

  [(SFService *)selfCopy->_service setNeedsSetup:0];
  selfCopy->_requestingAutoFill = 0;
}

- (id)urlForVisualScanning
{
  [(SFRemoteAutoFillService *)self updateURLForVisualScanning];
  urlForVisualScanning = self->_urlForVisualScanning;

  return urlForVisualScanning;
}

- (void)updateURLForVisualScanning
{
  absoluteString = [self absoluteString];
  LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService updateURLForVisualScanning]", 30, "Updating url for visual scanning: %@\n", absoluteString);
}

uint64_t __53__SFRemoteAutoFillService_updateURLForVisualScanning__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 264);
  if (result)
  {
    return (*(result + 16))(result, *(v1 + 128));
  }

  return result;
}

- (unint64_t)discoveredDevices
{
  result = self->_devices;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (void)setBundleID:(id)d
{
  dCopy = d;
  needsSetup = [(SFService *)self->_service needsSetup];
  if (needsSetup)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 60)
    {
      if (gLogCategory_SFRemoteAutoFillService != -1 || (needsSetup = _LogCategory_Initialize(), needsSetup))
      {
        [(SFRemoteAutoFillService *)needsSetup setBundleID:v7, v8];
      }
    }

    if (self->_errorHandler)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__SFRemoteAutoFillService_setBundleID___block_invoke;
      block[3] = &unk_1E788B198;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_bundleID, d);
    objc_sync_exit(selfCopy);
  }
}

void __39__SFRemoteAutoFillService_setBundleID___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 208);
  v2 = NSErrorWithOSStatusF(4294960587, "### Attempting to change bundleID during active request.");
  (*(v1 + 16))(v1, v2);
}

- (void)setFixedPIN:(id)n
{
  nCopy = n;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_fixedPIN, n);
  service = selfCopy->_service;
  if (service)
  {
    [(SFService *)service setFixedPIN:selfCopy->_fixedPIN];
  }

  [(SFRemoteAutoFillService *)selfCopy updateURLForVisualScanning];
  objc_sync_exit(selfCopy);
}

- (void)setShowPINHandlerEx:(id)ex
{
  aBlock = ex;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = _Block_copy(aBlock);
  showPINHandlerEx = selfCopy->_showPINHandlerEx;
  selfCopy->_showPINHandlerEx = v5;

  service = selfCopy->_service;
  if (service)
  {
    [(SFService *)service setShowPINHandlerEx:selfCopy->_showPINHandlerEx];
  }

  objc_sync_exit(selfCopy);
}

- (void)setUrlString:(id)string
{
  stringCopy = string;
  needsSetup = [(SFService *)self->_service needsSetup];
  if (needsSetup)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 60)
    {
      if (gLogCategory_SFRemoteAutoFillService != -1 || (needsSetup = _LogCategory_Initialize(), needsSetup))
      {
        [(SFRemoteAutoFillService *)needsSetup setUrlString:v7, v8];
      }
    }

    if (self->_errorHandler)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__SFRemoteAutoFillService_setUrlString___block_invoke;
      block[3] = &unk_1E788B198;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_urlString, string);
    objc_sync_exit(selfCopy);
  }
}

void __40__SFRemoteAutoFillService_setUrlString___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 208);
  v2 = NSErrorWithOSStatusF(4294960587, "### Attempting to change urlString during active request.");
  (*(v1 + 16))(v1, v2);
}

- (void)_completedWithError:(id)error
{
  errorCopy = error;
  v8 = errorCopy;
  if (errorCopy)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 60)
    {
      if (gLogCategory_SFRemoteAutoFillService != -1 || (v5 = _LogCategory_Initialize(), errorCopy = v8, v5))
      {
        [SFRemoteAutoFillService _completedWithError:errorCopy];
        errorCopy = v8;
      }
    }

    errorHandler = self->_errorHandler;
    if (errorHandler)
    {
      errorHandler[2](errorHandler, errorCopy);
      errorCopy = v8;
    }
  }

  receivedCredentialsHandler = self->_receivedCredentialsHandler;
  if (receivedCredentialsHandler)
  {
    (receivedCredentialsHandler)[2](receivedCredentialsHandler, self->_receivedUsername, self->_receivedPassword, v8);
    errorCopy = v8;
  }
}

- (void)_discoveryStart
{
  if (!self->_discovery)
  {
    v15[5] = v6;
    v15[6] = v5;
    v15[11] = v3;
    v15[12] = v4;
    selfCopy = self;
    if (gLogCategory_SFRemoteAutoFillService <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillService != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFRemoteAutoFillService *)self _discoveryStart];
      }
    }

    selfCopy->_discoveryState = 1;
    v8 = objc_alloc_init(SFDeviceDiscovery);
    discovery = selfCopy->_discovery;
    selfCopy->_discovery = v8;

    [(SFDeviceDiscovery *)selfCopy->_discovery setChangeFlags:13];
    [(SFDeviceDiscovery *)selfCopy->_discovery setDiscoveryFlags:8208];
    [(SFDeviceDiscovery *)selfCopy->_discovery setDispatchQueue:selfCopy->_dispatchQueue];
    [(SFDeviceDiscovery *)selfCopy->_discovery setFastScanMode:1];
    [(SFDeviceDiscovery *)selfCopy->_discovery setPurpose:@"SFRemoteAutoFillService"];
    [(SFDeviceDiscovery *)selfCopy->_discovery setRssiThreshold:-60];
    [(SFDeviceDiscovery *)selfCopy->_discovery setScanRate:40];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42__SFRemoteAutoFillService__discoveryStart__block_invoke;
    v15[3] = &unk_1E788C9B0;
    v15[4] = selfCopy;
    [(SFDeviceDiscovery *)selfCopy->_discovery setDeviceFoundHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__SFRemoteAutoFillService__discoveryStart__block_invoke_2;
    v14[3] = &unk_1E788C9B0;
    v14[4] = selfCopy;
    [(SFDeviceDiscovery *)selfCopy->_discovery setDeviceLostHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__SFRemoteAutoFillService__discoveryStart__block_invoke_3;
    v13[3] = &unk_1E788C9D8;
    v13[4] = selfCopy;
    [(SFDeviceDiscovery *)selfCopy->_discovery setDeviceChangedHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__SFRemoteAutoFillService__discoveryStart__block_invoke_4;
    v12[3] = &unk_1E788B198;
    v12[4] = selfCopy;
    [(SFDeviceDiscovery *)selfCopy->_discovery setInterruptionHandler:v12];
    [(SFDeviceDiscovery *)selfCopy->_discovery setInvalidationHandler:&__block_literal_global_15];
    v10 = selfCopy->_discovery;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__SFRemoteAutoFillService__discoveryStart__block_invoke_6;
    v11[3] = &unk_1E788B238;
    v11[4] = selfCopy;
    [(SFDeviceDiscovery *)v10 activateWithCompletion:v11];
  }
}

void __42__SFRemoteAutoFillService__discoveryStart__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFRemoteAutoFillService <= 60)
  {
    if (gLogCategory_SFRemoteAutoFillService != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __42__SFRemoteAutoFillService__discoveryStart__block_invoke_4_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);
  v5 = NSErrorWithOSStatusF(4294960534, "Discovery interrupted");
  [v4 _completedWithError:v5];
}

uint64_t __42__SFRemoteAutoFillService__discoveryStart__block_invoke_5(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFRemoteAutoFillService <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillService != -1)
    {
      return __42__SFRemoteAutoFillService__discoveryStart__block_invoke_5_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __42__SFRemoteAutoFillService__discoveryStart__block_invoke_5_cold_1(result, a2, a3);
    }
  }

  return result;
}

void __42__SFRemoteAutoFillService__discoveryStart__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (!v3)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillService != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __42__SFRemoteAutoFillService__discoveryStart__block_invoke_6_cold_3(v3, v4, v5);
      }
    }

    v6 = *(a1 + 32);
    v7 = 4;
    goto LABEL_11;
  }

  if (*(*(a1 + 32) + 136) == 1)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 50)
    {
      if (gLogCategory_SFRemoteAutoFillService != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __42__SFRemoteAutoFillService__discoveryStart__block_invoke_6_cold_2(v3, v4, v5);
      }
    }

    v6 = *(a1 + 32);
    v7 = 2;
LABEL_11:
    *(v6 + 32) = v7;
    [*(a1 + 32) _activated];
    goto LABEL_16;
  }

  if (gLogCategory_SFRemoteAutoFillService <= 60 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __42__SFRemoteAutoFillService__discoveryStart__block_invoke_6_cold_1(v10);
  }

  *(*(a1 + 32) + 32) = 3;
  v8 = *(a1 + 32);
  v9 = NSErrorWithOSStatusF(4294960534, "### Discovery failed to activate");
  [v8 _completedWithError:v9];

LABEL_16:
}

- (void)_serviceStart
{
  if (!self->_service)
  {
    v16[5] = v6;
    v16[6] = v5;
    v16[11] = v3;
    v16[12] = v4;
    selfCopy = self;
    if (gLogCategory_SFRemoteAutoFillService <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillService != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFRemoteAutoFillService *)self _serviceStart];
      }
    }

    selfCopy->_serviceState = 1;
    v8 = objc_alloc_init(SFService);
    service = selfCopy->_service;
    selfCopy->_service = v8;

    [(SFService *)selfCopy->_service setAdvertiseRate:50];
    [(SFService *)selfCopy->_service setDeviceActionType:19];
    [(SFService *)selfCopy->_service setDispatchQueue:selfCopy->_dispatchQueue];
    [(SFService *)selfCopy->_service setFixedPIN:selfCopy->_fixedPIN];
    [(SFService *)selfCopy->_service setIdentifier:@"com.apple.sharing.RemoteAutoFill"];
    [(SFService *)selfCopy->_service setLabel:@"SFRemoteAutoFillService"];
    [(SFService *)selfCopy->_service setNeedsSetup:0];
    [(SFService *)selfCopy->_service setPinType:1];
    [(SFService *)selfCopy->_service setSessionFlags:20];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40__SFRemoteAutoFillService__serviceStart__block_invoke;
    v16[3] = &unk_1E788B198;
    v16[4] = selfCopy;
    [(SFService *)selfCopy->_service setHidePINHandler:v16];
    [(SFService *)selfCopy->_service setInvalidationHandler:&__block_literal_global_218];
    if (selfCopy->_showPINHandlerEx)
    {
      [(SFService *)selfCopy->_service setShowPINHandlerEx:?];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __40__SFRemoteAutoFillService__serviceStart__block_invoke_3;
    v15[3] = &unk_1E788B198;
    v15[4] = selfCopy;
    [(SFService *)selfCopy->_service setInterruptionHandler:v15];
    [(SFService *)selfCopy->_service setPeerDisconnectedHandler:&__block_literal_global_223];
    [(SFService *)selfCopy->_service setReceivedObjectHandler:&__block_literal_global_227];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__SFRemoteAutoFillService__serviceStart__block_invoke_6;
    v14[3] = &unk_1E788CA40;
    v14[4] = selfCopy;
    [(SFService *)selfCopy->_service setReceivedRequestHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__SFRemoteAutoFillService__serviceStart__block_invoke_7;
    v13[3] = &unk_1E788CA68;
    v13[4] = selfCopy;
    [(SFService *)selfCopy->_service setSessionStartedHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__SFRemoteAutoFillService__serviceStart__block_invoke_8;
    v12[3] = &unk_1E788CA90;
    v12[4] = selfCopy;
    [(SFService *)selfCopy->_service setSessionEndedHandler:v12];
    [(SFService *)selfCopy->_service setSessionSecuredHandler:&__block_literal_global_234];
    v10 = selfCopy->_service;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__SFRemoteAutoFillService__serviceStart__block_invoke_10;
    v11[3] = &unk_1E788B238;
    v11[4] = selfCopy;
    [(SFService *)v10 activateWithCompletion:v11];
  }
}

uint64_t __40__SFRemoteAutoFillService__serviceStart__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFRemoteAutoFillService <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillService != -1)
    {
      return __40__SFRemoteAutoFillService__serviceStart__block_invoke_2_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __40__SFRemoteAutoFillService__serviceStart__block_invoke_2_cold_1(result, a2, a3);
    }
  }

  return result;
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSErrorWithOSStatusF(4294960534, "### SFService interrupted");
  [v1 _completedWithError:v2];
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_SFRemoteAutoFillService <= 50 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceStart]_block_invoke_4", 50, "Peer disconnected %@: %{error}\n", v5, v4);
  }
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v5 = a4;
  if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceStart]_block_invoke_5", 30, "Received object: %@ from session: %@", v5, v6);
  }
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __40__SFRemoteAutoFillService__serviceStart__block_invoke_8_cold_1(v6, v5);
  }

  [*(a1 + 32) _serviceSessionEnded:v6 withError:v5];
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFRemoteAutoFillService <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFRemoteAutoFillService != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __40__SFRemoteAutoFillService__serviceStart__block_invoke_9_cold_1(v3);
      v3 = v5;
    }
  }
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (!v3)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillService != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __40__SFRemoteAutoFillService__serviceStart__block_invoke_10_cold_3(v3, v4, v5);
      }
    }

    v6 = *(a1 + 32);
    v7 = 4;
    goto LABEL_11;
  }

  if (*(*(a1 + 32) + 136) == 1)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 50)
    {
      if (gLogCategory_SFRemoteAutoFillService != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __40__SFRemoteAutoFillService__serviceStart__block_invoke_10_cold_2(v3, v4, v5);
      }
    }

    v6 = *(a1 + 32);
    v7 = 2;
LABEL_11:
    *(v6 + 88) = v7;
    [*(a1 + 32) _activated];
    goto LABEL_16;
  }

  if (gLogCategory_SFRemoteAutoFillService <= 90 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __40__SFRemoteAutoFillService__serviceStart__block_invoke_10_cold_1(v10);
  }

  *(*(a1 + 32) + 88) = 3;
  v8 = *(a1 + 32);
  v9 = NSErrorWithOSStatusF(4294960534, "### SFService failed to activate");
  [v8 _completedWithError:v9];

LABEL_16:
}

- (void)_serviceHandleReceivedContextRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (gLogCategory_SFRemoteAutoFillService <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillService != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
    {
      [(SFRemoteAutoFillService *)handlerCopy _serviceHandleReceivedContextRequest:v7 handler:v8];
    }
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  appIconData = self->_appIconData;
  if (appIconData)
  {
    [v10 setObject:appIconData forKeyedSubscript:@"aid"];
  }

  associatedDomains = self->_associatedDomains;
  if (associatedDomains)
  {
    [v11 setObject:associatedDomains forKeyedSubscript:@"ass"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v11 setObject:bundleID forKeyedSubscript:@"bid"];
  }

  localizedAppName = self->_localizedAppName;
  if (localizedAppName)
  {
    [v11 setObject:localizedAppName forKeyedSubscript:@"lan"];
  }

  unlocalizedAppName = self->_unlocalizedAppName;
  if (unlocalizedAppName)
  {
    [v11 setObject:unlocalizedAppName forKeyedSubscript:@"uan"];
  }

  urlString = self->_urlString;
  if (urlString)
  {
    [v11 setObject:urlString forKeyedSubscript:@"url"];
  }

  if (self->_bundleID || self->_urlString)
  {
    v18 = 0;
  }

  else
  {
    v18 = NSErrorWithOSStatusF(4294960569, "### No bundleID nor URL string");
  }

  (v9)[2](v9, 1, v18, v11);
}

- (void)_serviceHandleReceivedCredentialRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (gLogCategory_SFRemoteAutoFillService <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillService != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
    {
      [(SFRemoteAutoFillService *)handlerCopy _serviceHandleReceivedCredentialRequest:v7 handler:v8];
    }
  }

  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if (v11)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService _serviceHandleReceivedCredentialRequest:v11 handler:v10];
    }

    objc_storeStrong(&self->_receivedUsername, v11);
  }

  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();

  if (v12)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService _serviceHandleReceivedCredentialRequest:v12 handler:v13];
    }

    objc_storeStrong(&self->_receivedPassword, v12);
  }

  if (self->_receivedUsername || self->_receivedPassword)
  {
    v14 = 0;
  }

  else
  {
    v14 = NSErrorWithOSStatusF(4294960585, "### Credential message without username or password?");
  }

  (v9)[2](v9, 1, v14, MEMORY[0x1E695E0F8]);
  [(SFRemoteAutoFillService *)self _completedWithError:v14];
}

- (void)_serviceHandleReceivedRequest:(id)request handler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v16 = 0;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFRemoteAutoFillService <= 50 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillService _serviceHandleReceivedRequest:Int64Ranged handler:?];
  }

  if (Int64Ranged == 3)
  {
    [(SFRemoteAutoFillService *)self _serviceHandleReceivedCredentialRequest:requestCopy handler:handlerCopy];
  }

  else if (Int64Ranged == 1)
  {
    [(SFRemoteAutoFillService *)self _serviceHandleReceivedContextRequest:requestCopy handler:handlerCopy];
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillService <= 60 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [(SFRemoteAutoFillService *)Int64Ranged _serviceHandleReceivedRequest:Int64Ranged handler:?];
    }

    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A768];
    v17 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v11;
    v13 = @"?";
    if (v11)
    {
      v13 = v11;
    }

    v18[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v15 = [v9 errorWithDomain:v10 code:-6735 userInfo:v14];
    (*(handlerCopy + 2))(handlerCopy, 0, v15, 0);
  }
}

- (void)_serviceHidePIN
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  hidePINHandler = self->_hidePINHandler;
  if (hidePINHandler)
  {
    v6 = *(hidePINHandler + 16);

    v6();
  }

  else if (gLogCategory_SFRemoteAutoFillService <= 60)
  {
    if (gLogCategory_SFRemoteAutoFillService != -1 || (hidePINHandler = _LogCategory_Initialize(), hidePINHandler))
    {
      [(SFRemoteAutoFillService *)hidePINHandler _serviceHidePIN];
    }
  }
}

- (void)_serviceSessionEnded:(id)ended withError:(id)error
{
  endedCopy = ended;
  errorCopy = error;
  v7 = endedCopy;
  if (self->_session == endedCopy)
  {
    if (endedCopy)
    {
      if (gLogCategory_SFRemoteAutoFillService <= 30)
      {
        if (gLogCategory_SFRemoteAutoFillService != -1 || (v8 = _LogCategory_Initialize(), v7 = endedCopy, v8))
        {
          [SFRemoteAutoFillService _serviceSessionEnded:v7 withError:errorCopy];
        }
      }
    }

    sessionEndedHandler = self->_sessionEndedHandler;
    if (sessionEndedHandler)
    {
      peer = [(SFSession *)endedCopy peer];
      sessionEndedHandler[2](sessionEndedHandler, peer);
    }

    session = self->_session;
    self->_session = 0;

    if (self->_requestingAutoFill)
    {
      [(SFService *)self->_service setNeedsSetup:1];
    }
  }
}

- (void)_serviceSessionStarted:(id)started
{
  startedCopy = started;
  v6 = startedCopy;
  if (self->_session)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 60)
    {
      v10 = startedCopy;
      if (gLogCategory_SFRemoteAutoFillService != -1 || (v7 = _LogCategory_Initialize(), v6 = v10, v7))
      {
        [(SFRemoteAutoFillService *)v6 _serviceSessionStarted:?];
LABEL_13:
        v6 = v10;
      }
    }
  }

  else
  {
    v10 = startedCopy;
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService _serviceSessionStarted:v10];
    }

    objc_storeStrong(&self->_session, started);
    sessionStartedHandler = self->_sessionStartedHandler;
    if (sessionStartedHandler)
    {
      peer = [v10 peer];
      sessionStartedHandler[2](sessionStartedHandler, peer);
    }

    v6 = v10;
    if (self->_requestingAutoFill)
    {
      [(SFService *)self->_service setNeedsSetup:0];
      goto LABEL_13;
    }
  }
}

- (void)_systemMonitorStart
{
  if (!self->_systemMonitor)
  {
    v11[5] = v5;
    v11[6] = v4;
    v11[9] = v2;
    v11[10] = v3;
    self->_systemMonitorState = 1;
    v7 = objc_alloc_init(MEMORY[0x1E6999540]);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v7;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke;
    v11[3] = &unk_1E788B198;
    v11[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setBluetoothAddressChangedHandler:v11];
    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    [(CUSystemMonitor *)self->_systemMonitor setInvalidationHandler:&__block_literal_global_282];
    v9 = self->_systemMonitor;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_3;
    v10[3] = &unk_1E788B198;
    v10[4] = self;
    [(CUSystemMonitor *)v9 activateWithCompletion:v10];
  }
}

uint64_t __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFRemoteAutoFillService <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillService != -1)
    {
      return __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_2_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_2_cold_1(result, a2, a3);
    }
  }

  return result;
}

uint64_t __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFRemoteAutoFillService <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillService != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_3_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 120) = 4;
  v4 = [*(*(v3 + 32) + 112) bluetoothAddressData];
  v5 = *(v3 + 32);
  v6 = *(v5 + 104);
  *(v5 + 104) = v4;

  v10 = *(*(v3 + 32) + 104);
  if (v10)
  {
    if (gLogCategory_SFRemoteAutoFillService > 10)
    {
      goto LABEL_13;
    }

    if (gLogCategory_SFRemoteAutoFillService != -1)
    {
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      v10 = *(*(v3 + 32) + 104);
LABEL_7:
      LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _systemMonitorStart]_block_invoke_3", 10, "BT address: %@", v10);
    }
  }

  else if (gLogCategory_SFRemoteAutoFillService <= 60)
  {
    if (gLogCategory_SFRemoteAutoFillService != -1 || (v7 = _LogCategory_Initialize(), v7))
    {
      __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_3_cold_2(v7, v8, v9);
    }
  }

LABEL_13:
  [*(v3 + 32) updateURLForVisualScanning];
  v11 = *(v3 + 32);

  return [v11 _activated];
}

- (BOOL)needsSetup
{
  service = self->_service;
  if (service)
  {
    LOBYTE(service) = [(SFService *)service needsSetup];
  }

  return service;
}

- (int)_readyForAutoFillRequest
{
  if (!self->_activateCalled)
  {
    return -6709;
  }

  if (self->_invalidateCalled)
  {
    return -6724;
  }

  discoveryState = self->_discoveryState;
  v3 = discoveryState == 4 || discoveryState == 2;
  if (v3 && self->_discovery)
  {
    serviceState = self->_serviceState;
    v5 = serviceState == 4 || serviceState == 2;
    if (v5 && self->_service)
    {
      return 0;
    }

    if (gLogCategory_SFRemoteAutoFillService <= 60 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _readyForAutoFillRequest]", 60, "### Service not ready to request AutoFill\n");
    }
  }

  else if (gLogCategory_SFRemoteAutoFillService <= 60 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _readyForAutoFillRequest]", 60, "### Discovery not ready to request AutoFill\n");
  }

  return -6745;
}

- (void)_discoveryFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_discovery && identifier && [foundCopy deviceActionType] == 22)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 10 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _discoveryFound:]", 10, "Found device: %@\n", foundCopy);
    }

    devices = self->_devices;
    if (!devices)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = self->_devices;
      self->_devices = v6;

      devices = self->_devices;
    }

    [(NSMutableDictionary *)devices setObject:foundCopy forKeyedSubscript:identifier];
    if (self->_discoveredDevicesChanged)
    {
      [(NSMutableDictionary *)self->_devices count];
      v8 = OUTLINED_FUNCTION_3_5();
      v9(v8);
    }
  }
}

- (void)_discoveryLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (identifier && self->_discovery && [lostCopy deviceActionType] == 22)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 10 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _discoveryLost:]", 10, "Lost device: %@\n", lostCopy);
    }

    [(NSMutableDictionary *)self->_devices removeObjectForKey:identifier];
    if (self->_discoveredDevicesChanged)
    {
      [(NSMutableDictionary *)self->_devices count];
      v5 = OUTLINED_FUNCTION_3_5();
      v6(v5);
    }
  }
}

- (void)_discoveryChanged:(id)changed
{
  changedCopy = changed;
  identifier = [changedCopy identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (identifier && self->_discovery && [changedCopy deviceActionType] == 22)
  {
    [(NSMutableDictionary *)self->_devices setObject:changedCopy forKeyedSubscript:identifier];
  }
}

- (void)_bluetoothAddressChanged
{
  systemMonitor = self->_systemMonitor;
  if (systemMonitor)
  {
    bluetoothAddressData = [(CUSystemMonitor *)systemMonitor bluetoothAddressData];
    systemBTAddress = self->_systemBTAddress;
    self->_systemBTAddress = bluetoothAddressData;

    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _bluetoothAddressChanged]", 30, "BT address changed: %@\n", self->_systemBTAddress);
    }

    [(SFRemoteAutoFillService *)self updateURLForVisualScanning];
  }
}

- (void)_activateWithCompletion:(void *)a3 .cold.1(_DWORD *a1, uint64_t a2, void *a3, __CFString **a4)
{
  if (gLogCategory_SFRemoteAutoFillService <= 50 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _activateWithCompletion:]", 50, "### Disabled via default\n");
  }

  *a1 = -6735;
  if (a2)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A768];
    *a3 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v11 = v10;
    v12 = @"?";
    if (v10)
    {
      v12 = v10;
    }

    *a4 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a4 forKeys:a3 count:1];
    v14 = [v8 errorWithDomain:v9 code:-6735 userInfo:v13];
    (*(a2 + 16))(a2, v14);
  }
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_8_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 peer];
  LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceStart]_block_invoke_8", 30, "Session ended with %@: %{error}\n", v3, a2);
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_9_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceStart]_block_invoke_9", 30, "Session secured with %@\n", v1);
}

- (uint64_t)_serviceHandleReceivedCredentialRequest:(__CFString *)a1 handler:(uint64_t)a2 .cold.2(__CFString *a1, uint64_t a2)
{
  v3 = IsAppleInternalBuild();
  v4 = @"*";
  if (v3)
  {
    v4 = a1;
  }

  return LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceHandleReceivedCredentialRequest:handler:]", 30, "Received username: %@\n", v4);
}

- (uint64_t)_serviceHandleReceivedCredentialRequest:(__CFString *)a1 handler:(uint64_t)a2 .cold.3(__CFString *a1, uint64_t a2)
{
  v3 = IsAppleInternalBuild();
  v4 = @"*";
  if (v3)
  {
    v4 = a1;
  }

  return LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceHandleReceivedCredentialRequest:handler:]", 30, "Received password: %@\n", v4);
}

- (uint64_t)_serviceHandleReceivedRequest:(uint64_t)a3 handler:.cold.1(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceHandleReceivedRequest:handler:]", 90, "### No request opcode %#m\n", a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      a3 = *a2;
      return LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceHandleReceivedRequest:handler:]", 90, "### No request opcode %#m\n", a3);
    }
  }

  return result;
}

- (uint64_t)_serviceHandleReceivedRequest:(unsigned __int8)a1 handler:(char)a2 .cold.2(unsigned __int8 a1, char a2)
{
  if (a1 > 5u)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1E788CAD0[a2 & 7];
  }

  return LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceHandleReceivedRequest:handler:]", 50, "Received object. %s\n", v2);
}

- (uint64_t)_serviceHandleReceivedRequest:(uint64_t)a3 handler:.cold.3(unsigned __int8 a1, char a2, uint64_t a3)
{
  if (a1 > 5u)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1E788CB00[a2 & 7];
  }

  return LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceHandleReceivedRequest:handler:]", 60, "Unsupported opCode: %s (%ld)", v3, a3);
}

- (void)_serviceSessionEnded:(void *)a1 withError:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 peer];
  LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceSessionEnded:withError:]", 30, "Session ended with %@, error: %@\n", v3, a2);
}

- (void)_serviceSessionStarted:(void *)a1 .cold.1(void *a1, id *a2)
{
  v4 = [a1 peer];
  v3 = [*a2 peer];
  LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceSessionStarted:]", 60, "### Ignoring session from %@ when active with %@\n", v4, v3);
}

- (void)_serviceSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFRemoteAutoFillService, "[SFRemoteAutoFillService _serviceSessionStarted:]", 30, "Session started with %@\n", v1);
}

@end