@interface SFShareAudioService
- (SFShareAudioService)init;
- (void)_handleSessionEnded:(id)ended error:(id)error;
- (void)_handleSessionStarted:(id)started;
- (void)_handleShareAudioFoundDevice:(id)device;
- (void)_handleShareAudioPairingCompleted:(id)completed error:(id)error;
- (void)_handleShareAudioRequest2:(id)request2 contact:(id)contact responseHandler:(id)handler;
- (void)_handleShareAudioRequest:(id)request responseHandler:(id)handler;
- (void)_handleShareAudioResponse:(int)response error:(id)error;
- (void)_handleShareAudioSearchTimeout;
- (void)_invalidate;
- (void)_sfServiceStart;
- (void)activate;
- (void)invalidate;
- (void)xpcPerformAction:(int)action completion:(id)completion;
@end

@implementation SFShareAudioService

- (SFShareAudioService)init
{
  v7.receiver = self;
  v7.super_class = SFShareAudioService;
  v2 = [(SFShareAudioService *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SFShareAudioService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __31__SFShareAudioService_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFShareAudioService <= 30)
  {
    if (gLogCategory_SFShareAudioService != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __31__SFShareAudioService_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _sfServiceStart];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFShareAudioService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__33__SFShareAudioService_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if ((*(result[4] + 24) & 1) == 0)
  {
    v4 = result;
    if (gLogCategory_SFShareAudioService <= 30)
    {
      if (gLogCategory_SFShareAudioService != -1 || (result = _LogCategory_Initialize(), result))
      {
        __33__SFShareAudioService_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    *(v4[4] + 24) = 1;
    v5 = v4[4];

    return [v5 _invalidate];
  }

  return result;
}

- (void)_invalidate
{
  if (!self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    [(SFShareAudioService *)self _handleSessionEnded:self->_sfSession error:0];
    [(SFService *)self->_sfService invalidate];
    sfService = self->_sfService;
    self->_sfService = 0;

    if (gLogCategory_SFShareAudioService <= 30)
    {
      if (gLogCategory_SFShareAudioService != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        [(SFShareAudioService *)v4 _invalidate];
      }
    }
  }
}

- (void)_sfServiceStart
{
  selfCopy = self;
  if (gLogCategory_SFShareAudioService <= 30)
  {
    if (gLogCategory_SFShareAudioService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFShareAudioService *)self _sfServiceStart];
    }
  }

  [(SFService *)selfCopy->_sfService invalidate];
  v4 = objc_alloc_init(SFService);
  sfService = selfCopy->_sfService;
  selfCopy->_sfService = v4;
  v6 = v4;

  [(SFService *)v6 setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFService *)v6 setFixedPIN:@"public"];
  [(SFService *)v6 setIdentifier:@"com.apple.sharing.ShareAudio"];
  [(SFService *)v6 setLabel:@"ShareAudio"];
  [(SFService *)v6 setSessionFlags:2305];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__SFShareAudioService__sfServiceStart__block_invoke;
  v9[3] = &unk_1E78910A8;
  v9[4] = v6;
  v9[5] = selfCopy;
  [(SFService *)v6 setSessionStartedHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SFShareAudioService__sfServiceStart__block_invoke_2;
  v8[3] = &unk_1E78910D0;
  v8[4] = v6;
  v8[5] = selfCopy;
  [(SFService *)v6 setSessionEndedHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__SFShareAudioService__sfServiceStart__block_invoke_3;
  v7[3] = &unk_1E788B520;
  v7[4] = v6;
  v7[5] = selfCopy;
  [(SFService *)v6 activateWithCompletion:v7];
}

void *__38__SFShareAudioService__sfServiceStart__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[7])
  {
    return [result _handleSessionStarted:a2];
  }

  return result;
}

void *__38__SFShareAudioService__sfServiceStart__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[7])
  {
    return [result _handleSessionEnded:a2 error:a3];
  }

  return result;
}

void __38__SFShareAudioService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 56))
  {
    if (v3)
    {
      v8 = v3;
      if (gLogCategory_SFShareAudioService <= 90 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
      {
        __38__SFShareAudioService__sfServiceStart__block_invoke_3_cold_1(v8);
      }

      [*(*(a1 + 40) + 56) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 56);
      *(v6 + 56) = 0;

      goto LABEL_7;
    }

    if (gLogCategory_SFShareAudioService <= 30)
    {
      v8 = 0;
      if (gLogCategory_SFShareAudioService != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        __38__SFShareAudioService__sfServiceStart__block_invoke_3_cold_2(v3, v5, v4);
LABEL_7:
        v5 = v8;
      }
    }
  }
}

- (void)_handleSessionStarted:(id)started
{
  startedCopy = started;
  sfSession = self->_sfSession;
  if (sfSession)
  {
    [gLogCategory_SFShareAudioService _handleSessionStarted:sfSession, startedCopy];
  }

  else
  {
    if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioService _handleSessionStarted:startedCopy];
    }

    [startedCopy setStatusMonitor:self->_statusMonitor];
    objc_storeStrong(&self->_sfSession, started);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__SFShareAudioService__handleSessionStarted___block_invoke;
    v7[3] = &unk_1E788B4F8;
    v7[4] = self;
    [startedCopy registerRequestID:@"_shAu" options:&unk_1F1D7D768 handler:v7];
  }
}

- (void)_handleSessionEnded:(id)ended error:(id)error
{
  endedCopy = ended;
  errorCopy = error;
  sfSession = self->_sfSession;
  if (sfSession == endedCopy)
  {
    if (endedCopy)
    {
      if (gLogCategory_SFShareAudioService <= 30)
      {
        if (gLogCategory_SFShareAudioService != -1 || (v9 = _LogCategory_Initialize(), sfSession = self->_sfSession, v9))
        {
          peer = [(SFSession *)sfSession peer];
          LogPrintF(&gLogCategory_SFShareAudioService, "[SFShareAudioService _handleSessionEnded:error:]", 30, "Session end: peer %@, %{error}\n", peer, errorCopy);

          sfSession = self->_sfSession;
        }
      }
    }

    self->_sfSession = 0;

    [(SFBluetoothPairingSession *)self->_pairingSession invalidate];
    pairingSession = self->_pairingSession;
    self->_pairingSession = 0;

    [(SFProxCardSessionClient *)self->_proxCardSessionClient invalidate];
    proxCardSessionClient = self->_proxCardSessionClient;
    self->_proxCardSessionClient = 0;

    searchTimer = self->_searchTimer;
    if (searchTimer)
    {
      v13 = searchTimer;
      dispatch_source_cancel(v13);
      v14 = self->_searchTimer;
      self->_searchTimer = 0;
    }

    [(CUBluetoothClient *)self->_searchBTClient invalidate];
    searchBTClient = self->_searchBTClient;
    self->_searchBTClient = 0;

    v16 = _Block_copy(self->_responseHandler);
    if (v16)
    {
      v17 = NSErrorF();
      if (gLogCategory_SFShareAudioService < 91 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
      {
        [SFShareAudioService _handleSessionEnded:v17 error:?];
      }

      (*(v16 + 2))(v16, v17, 0, 0);
      responseHandler = self->_responseHandler;
      self->_responseHandler = 0;
    }
  }
}

- (void)_handleShareAudioRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioService _handleShareAudioRequest:requestCopy responseHandler:?];
  }

  sfSession = self->_sfSession;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__SFShareAudioService__handleShareAudioRequest_responseHandler___block_invoke;
  v13[3] = &unk_1E78910F8;
  v13[4] = sfSession;
  v13[5] = self;
  v14 = requestCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = requestCopy;
  v12 = sfSession;
  [(SFSession *)v12 appleIDVerifyProof:v11 dispatchQueue:dispatchQueue completion:v13];
}

void __64__SFShareAudioService__handleShareAudioRequest_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 64))
  {
    if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      __64__SFShareAudioService__handleShareAudioRequest_responseHandler___block_invoke_cold_1(v6, v5);
    }

    [*(a1 + 40) _handleShareAudioRequest2:*(a1 + 48) contact:v6 responseHandler:*(a1 + 56)];
  }
}

- (void)_handleShareAudioRequest2:(id)request2 contact:(id)contact responseHandler:(id)handler
{
  request2Copy = request2;
  contactCopy = contact;
  handlerCopy = handler;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__18;
  v36 = __Block_byref_object_dispose__18;
  v37 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7891120;
  v31 = &v32;
  v11 = handlerCopy;
  v30 = v11;
  v12 = _Block_copy(aBlock);
  if (self->_responseHandler)
  {
    v22 = NSErrorF();
    v23 = v33[5];
    v33[5] = v22;
  }

  else
  {
    v28 = 0;
    CFStringGetTypeID();
    v13 = CFDictionaryGetTypedValue();
    if (v13)
    {
      objc_storeStrong(&self->_guestDeviceAddress, v13);
      v14 = _Block_copy(v11);
      responseHandler = self->_responseHandler;
      self->_responseHandler = v14;

      if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFShareAudioService, "[SFShareAudioService _handleShareAudioRequest2:contact:responseHandler:]", 30, "ShareAudio ask start\n");
      }

      [(SFProxCardSessionClient *)self->_proxCardSessionClient invalidate];
      v16 = objc_alloc_init(SFProxCardSessionClient);
      objc_storeStrong(&self->_proxCardSessionClient, v16);
      [(SFProxCardSessionClient *)v16 setDelegate:self];
      [(SFProxCardSessionClient *)v16 setDispatchQueue:self->_dispatchQueue];
      [(SFProxCardSessionClient *)v16 setViewControllerClassName:@"ShareAudioAcceptMainController"];
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      CFStringGetTypeID();
      [v17 setObject:CFDictionaryGetTypedValue() forKeyedSubscript:@"deviceName"];
      v18 = contactCopy;
      if (v18)
      {
        v39 = 0;
        v40 = &v39;
        v41 = 0x2050000000;
        v19 = getCNContactFormatterClass_softClass;
        v42 = getCNContactFormatterClass_softClass;
        if (!getCNContactFormatterClass_softClass)
        {
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __getCNContactFormatterClass_block_invoke;
          v38[3] = &unk_1E788A938;
          v38[4] = &v39;
          __getCNContactFormatterClass_block_invoke(v38);
          v19 = v40[3];
        }

        v20 = v19;
        _Block_object_dispose(&v39, 8);
        v21 = [v19 stringFromContact:v18 style:0];
        [v17 setObject:v21 forKeyedSubscript:@"username"];
      }

      [(SFProxCardSessionClient *)v16 setUserInfo:v17];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_2;
      v27[3] = &unk_1E788B520;
      v27[4] = v16;
      v27[5] = self;
      [(SFProxCardSessionClient *)v16 setErrorHandler:v27];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_3;
      v26[3] = &unk_1E788A658;
      v26[4] = v16;
      v26[5] = self;
      [(SFProxCardSessionClient *)v16 setInvalidationHandler:v26];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_4;
      v25[3] = &unk_1E788B520;
      v25[4] = v16;
      v25[5] = self;
      [(SFProxCardSessionClient *)v16 activateWithCompletion:v25];
    }

    else
    {
      v24 = NSErrorF();
      v16 = v33[5];
      v33[5] = v24;
    }
  }

  v12[2](v12);

  _Block_object_dispose(&v32, 8);
}

uint64_t __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_SFShareAudioService <= 90)
  {
    if (gLogCategory_SFShareAudioService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&gLogCategory_SFShareAudioService, "[SFShareAudioService _handleShareAudioRequest2:contact:responseHandler:]_block_invoke", 90, "### ShareAudio request failed: %{error}\n", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

void __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 40))
  {
    v15 = v3;
    if (gLogCategory_SFShareAudioService <= 90)
    {
      if (gLogCategory_SFShareAudioService != -1 || (v11 = _LogCategory_Initialize(), v10 = v15, v11))
      {
        __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_2_cold_1(v10);
        v10 = v15;
      }
    }

    v12 = *(a1 + 40);
    if (v10)
    {
      [v12 _handleShareAudioResponse:0 error:v15];
    }

    else
    {
      v13 = SFErrorF(4294960596, "Unknown error", v4, v5, v6, v7, v8, v9, v14);
      [v12 _handleShareAudioResponse:0 error:v13];
    }

    v10 = v15;
  }
}

void __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 40))
  {
    v9 = a1;
    if (gLogCategory_SFShareAudioService <= 30)
    {
      if (gLogCategory_SFShareAudioService != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_3_cold_1(a1, a2, a3);
      }
    }

    v10 = *(v9 + 40);
    v12 = SFErrorF(4294896148, "Invalidated", a3, a4, a5, a6, a7, a8, v11);
    [v10 _handleShareAudioResponse:0 error:v12];
  }
}

void __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 40))
  {
    v6 = v3;
    if (gLogCategory_SFShareAudioService > 30 || gLogCategory_SFShareAudioService == -1 && (v5 = _LogCategory_Initialize(), v4 = v6, !v5))
    {
      if (!v4)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_4_cold_1(v4);
    v4 = v6;
    if (v6)
    {
LABEL_6:
      [*(a1 + 40) _handleShareAudioResponse:0 error:v6];
      v4 = v6;
    }
  }

LABEL_7:
}

- (void)_handleShareAudioResponse:(int)response error:(id)error
{
  errorCopy = error;
  if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioService _handleShareAudioResponse:response error:errorCopy];
  }

  if (response == 2)
  {
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    searchTimer = self->_searchTimer;
    self->_searchTimer = v7;

    v9 = self->_searchTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __55__SFShareAudioService__handleShareAudioResponse_error___block_invoke;
    handler[3] = &unk_1E788B198;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    CUDispatchTimerSet();
    dispatch_activate(self->_searchTimer);
    if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioService _handleShareAudioResponse:error:];
    }

    v10 = objc_alloc_init(MEMORY[0x1E6999460]);
    searchBTClient = self->_searchBTClient;
    self->_searchBTClient = v10;
    v12 = v10;

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __55__SFShareAudioService__handleShareAudioResponse_error___block_invoke_2;
    v22[3] = &unk_1E7891148;
    v22[4] = v12;
    v22[5] = self;
    [(CUBluetoothClient *)v12 setDeviceConnectedHandler:v22];
    [(CUBluetoothClient *)v12 activate];
  }

  else
  {
    v12 = _Block_copy(self->_responseHandler);
    if (v12)
    {
      responseHandler = self->_responseHandler;
      self->_responseHandler = 0;

      if (errorCopy)
      {
        (*(v12 + 2))(v12, errorCopy, 0, 0);
      }

      else
      {
        v20 = SFErrorF(301031, "User cancelled", v14, v15, v16, v17, v18, v19, v21);
        (*(v12 + 2))(v12, v20, 0, 0);
      }
    }
  }
}

void __55__SFShareAudioService__handleShareAudioResponse_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 72))
  {
    v6 = v3;
    v5 = [v3 deviceFlags];
    v4 = v6;
    if (v5)
    {
      [*(a1 + 40) _handleShareAudioFoundDevice:v6];
      v4 = v6;
    }
  }
}

- (void)_handleShareAudioFoundDevice:(id)device
{
  deviceCopy = device;
  searchTimer = self->_searchTimer;
  if (searchTimer)
  {
    v6 = searchTimer;
    dispatch_source_cancel(v6);
    v7 = self->_searchTimer;
    self->_searchTimer = 0;
  }

  [(CUBluetoothClient *)self->_searchBTClient invalidate];
  searchBTClient = self->_searchBTClient;
  self->_searchBTClient = 0;

  addressString = [deviceCopy addressString];
  objc_storeStrong(&self->_headphonesAddress, addressString);
  v10 = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"ShareAudio" keyLength:16];
  if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFShareAudioService, "[SFShareAudioService _handleShareAudioFoundDevice:]", 30, "Configure device start: DA %@, GA %@, GK %{mask}, %@\n", addressString, self->_guestDeviceAddress, v10, deviceCopy);
  }

  v11 = objc_alloc_init(SFBluetoothPairingSession);
  pairingSession = self->_pairingSession;
  self->_pairingSession = v11;
  v13 = v11;

  [(SFBluetoothPairingSession *)v13 setDeviceAddress:addressString];
  [(SFBluetoothPairingSession *)v13 setGuestAddress:self->_guestDeviceAddress];
  [(SFBluetoothPairingSession *)v13 setGuestKey:v10];
  [(SFBluetoothPairingSession *)v13 setGuestMode:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__SFShareAudioService__handleShareAudioFoundDevice___block_invoke;
  v15[3] = &unk_1E7891170;
  v15[4] = v13;
  v15[5] = self;
  v16 = deviceCopy;
  v14 = deviceCopy;
  [(SFBluetoothPairingSession *)v13 setCompletionHandler:v15];
  [(SFBluetoothPairingSession *)v13 activate];
}

id *__52__SFShareAudioService__handleShareAudioFoundDevice___block_invoke(id *result, uint64_t a2)
{
  if (result[4] == *(result[5] + 4))
  {
    return [result[5] _handleShareAudioPairingCompleted:result[6] error:a2];
  }

  return result;
}

- (void)_handleShareAudioPairingCompleted:(id)completed error:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  [(SFBluetoothPairingSession *)self->_pairingSession invalidate];
  pairingSession = self->_pairingSession;
  self->_pairingSession = 0;

  v9 = _Block_copy(self->_responseHandler);
  if (v9)
  {
    responseHandler = self->_responseHandler;
    self->_responseHandler = 0;

    if (errorCopy)
    {
      if (gLogCategory_SFShareAudioService <= 90 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
      {
        [SFShareAudioService _handleShareAudioPairingCompleted:errorCopy error:?];
      }

      (*(v9 + 2))(v9, errorCopy, 0, 0);
    }

    else
    {
      v17 = self->_sfSession;
      if (v17)
      {
        v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
        colorCode = [completedCopy colorCode];
        if (colorCode)
        {
          v20 = [MEMORY[0x1E696AD98] numberWithInt:colorCode];
          [v18 setObject:v20 forKeyedSubscript:@"colorCode"];
        }

        productIdentifier = [completedCopy productIdentifier];
        if (productIdentifier)
        {
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:productIdentifier];
          [v18 setObject:v22 forKeyedSubscript:@"productID"];
        }

        dispatchQueue = self->_dispatchQueue;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __63__SFShareAudioService__handleShareAudioPairingCompleted_error___block_invoke;
        v25[3] = &unk_1E7891198;
        v25[4] = v17;
        v25[5] = self;
        v25[6] = v18;
        v25[7] = v9;
        [(SFSession *)v17 appleIDAddProof:v18 dispatchQueue:dispatchQueue completion:v25];
      }

      else
      {
        v24 = SFErrorF(4294960596, "No session", v11, v12, v13, v14, v15, v16, v25[0]);
        if (gLogCategory_SFShareAudioService <= 90 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
        {
          [SFShareAudioService _handleShareAudioPairingCompleted:v24 error:?];
        }

        (*(v9 + 2))(v9, v24, 0, 0);
      }
    }
  }
}

void __63__SFShareAudioService__handleShareAudioPairingCompleted_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 64))
  {
    v4 = v3;
    if (v3 && gLogCategory_SFShareAudioService <= 90 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      __63__SFShareAudioService__handleShareAudioPairingCompleted_error___block_invoke_cold_1(v4);
    }

    [*(a1 + 48) setObject:*(*(a1 + 40) + 16) forKeyedSubscript:@"btAd"];
    if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      __63__SFShareAudioService__handleShareAudioPairingCompleted_error___block_invoke_cold_2((a1 + 48));
    }

    (*(*(a1 + 56) + 16))();
    v3 = v4;
  }
}

- (void)_handleShareAudioSearchTimeout
{
  if (gLogCategory_SFShareAudioService <= 90 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioService _handleShareAudioSearchTimeout];
  }

  searchTimer = self->_searchTimer;
  if (searchTimer)
  {
    v4 = searchTimer;
    dispatch_source_cancel(v4);
    v5 = self->_searchTimer;
    self->_searchTimer = 0;
  }

  [(CUBluetoothClient *)self->_searchBTClient invalidate];
  searchBTClient = self->_searchBTClient;
  self->_searchBTClient = 0;

  v7 = _Block_copy(self->_responseHandler);
  if (v7)
  {
    responseHandler = self->_responseHandler;
    self->_responseHandler = 0;
    v10 = v7;

    v9 = NSErrorF();
    (*(v10 + 2))(v10, v9, 0, 0);

    v7 = v10;
  }
}

- (void)xpcPerformAction:(int)action completion:(id)completion
{
  v4 = *&action;
  dispatchQueue = self->_dispatchQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(dispatchQueue);
  if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioService xpcPerformAction:v4 completion:?];
  }

  [(SFShareAudioService *)self _handleShareAudioResponse:v4 error:0];
  completionCopy[2](completionCopy, 0);
}

- (void)_handleSessionStarted:(void *)a3 .cold.1(int a1, void **a2, void *a3, void *a4)
{
  if (a1 <= 60)
  {
    if (a1 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      a3 = *a2;
    }

    v7 = [a3 peer];
    v5 = [a4 peer];
    LogPrintF(&gLogCategory_SFShareAudioService, "[SFShareAudioService _handleSessionStarted:]", 60, "### Ignoring session when already active: existing peer %@, new peer %@\n", v7, v5);
  }
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFShareAudioService, "[SFShareAudioService _handleSessionStarted:]", 30, "Session start: peer %@\n", v1);
}

void __64__SFShareAudioService__handleShareAudioRequest_responseHandler___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  LogPrintF(&gLogCategory_SFShareAudioService, "[SFShareAudioService _handleShareAudioRequest:responseHandler:]_block_invoke", 30, "ShareAudio request proof result: ContactID %@, %{error}\n", v3, a2);
}

- (uint64_t)_handleShareAudioResponse:(unsigned int)a1 error:(uint64_t)a2 .cold.1(unsigned int a1, uint64_t a2)
{
  if (a1 > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E78911D0[a1];
  }

  return LogPrintF(&gLogCategory_SFShareAudioService, "[SFShareAudioService _handleShareAudioResponse:error:]", 30, "ShareAudio ask response: %s, %{error}\n", v4, a2, v2, v3);
}

- (uint64_t)xpcPerformAction:(unsigned int)a1 completion:.cold.1(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1E78911D0[a1];
  }

  return LogPrintF(&gLogCategory_SFShareAudioService, "[SFShareAudioService xpcPerformAction:completion:]", 30, "ShareAudio ask action request: %s\n", v1);
}

@end