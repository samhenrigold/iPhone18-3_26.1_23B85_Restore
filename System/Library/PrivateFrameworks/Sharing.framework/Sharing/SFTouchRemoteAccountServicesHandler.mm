@interface SFTouchRemoteAccountServicesHandler
- (BOOL)activateWithSession:(id)session error:(id *)error;
- (SFTouchRemoteAccountServicesHandler)initWithConfiguration:(id)configuration;
- (int64_t)_nextServiceTypeForTRAccountServices:(id)services;
- (unint64_t)_nextTRServiceTypeForTRAccountServices:(id)services;
- (void)_authenticateAccount:(id)account serviceType:(int64_t)type companionDevice:(id)device anisetteDataProvider:(id)provider completion:(id)completion;
- (void)_authenticateAccount:(id)account serviceType:(int64_t)type rawPassword:(id)password completion:(id)completion;
- (void)_authenticateGameCenterWithAuthResults:(id)results completion:(id)completion;
- (void)_authenticateWithServiceType:(unint64_t)type authResults:(id)results completion:(id)completion;
- (void)_authenticateWithServiceTypes:(id)types authResults:(id)results completion:(id)completion;
- (void)_authenticateiCloudWithAuthResults:(id)results completion:(id)completion;
- (void)_authenticateiTunesWithAuthResults:(id)results completion:(id)completion;
- (void)_handleTRCompanionAuthenticationRequest:(id)request responseHandler:(id)handler;
- (void)_handleTRProxyAuthenticationRequest:(id)request responseHandler:(id)handler;
- (void)_handleTRProxyDeviceRequest:(id)request responseHandler:(id)handler;
- (void)_saveNewAccount:(id)account completion:(id)completion;
- (void)_saveRemoteVerifiedAccount:(id)account completion:(id)completion;
- (void)invalidate;
@end

@implementation SFTouchRemoteAccountServicesHandler

- (SFTouchRemoteAccountServicesHandler)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SFTouchRemoteAccountServicesHandler;
  v5 = [(SFTouchRemoteAccountServicesHandler *)&v11 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    defaultStore = [(objc_class *)getACAccountStoreClass_1() defaultStore];
    accountStore = v5->_accountStore;
    v5->_accountStore = defaultStore;

    v5->_appleAccountSignInState = 0;
  }

  return v5;
}

- (BOOL)activateWithSession:(id)session error:(id *)error
{
  sessionCopy = session;
  hasBeenSignalled = [(BSAtomicSignal *)self->_activated hasBeenSignalled];
  if (!hasBeenSignalled)
  {
    hasBeenSignalled2 = [(BSAtomicSignal *)self->_invalidated hasBeenSignalled];
    if (hasBeenSignalled2)
    {
      if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || (hasBeenSignalled2 = _LogCategory_Initialize(), hasBeenSignalled2)))
      {
        [(SFTouchRemoteAccountServicesHandler *)hasBeenSignalled2 activateWithSession:v12 error:v13];
        if (error)
        {
          goto LABEL_11;
        }
      }

      else if (error)
      {
LABEL_11:
        NSErrorWithOSStatusF(4294896148, "Cannot activate after invalidation.");
LABEL_23:
        *error = v21 = 0;
        goto LABEL_29;
      }

LABEL_28:
      v21 = 0;
      goto LABEL_29;
    }

    if (sessionCopy)
    {
      if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30)
      {
        if (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || (hasBeenSignalled2 = _LogCategory_Initialize(), hasBeenSignalled2))
        {
          [(SFTouchRemoteAccountServicesHandler *)hasBeenSignalled2 activateWithSession:v12 error:v13];
        }
      }

      [(BSAtomicSignal *)self->_activated signal];
      objc_storeStrong(&self->_trSession, session);
      objc_initWeak(&location, self);
      trSession = self->_trSession;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __65__SFTouchRemoteAccountServicesHandler_activateWithSession_error___block_invoke;
      v27[3] = &unk_1E788ED18;
      objc_copyWeak(&v28, &location);
      [(TRSession *)trSession setRequestHandler:v27 forRequestClass:getTRSetupCompanionAuthenticationRequestClass_0()];
      v15 = self->_trSession;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __65__SFTouchRemoteAccountServicesHandler_activateWithSession_error___block_invoke_2;
      v25[3] = &unk_1E788ED18;
      objc_copyWeak(&v26, &location);
      [(TRSession *)v15 setRequestHandler:v25 forRequestClass:getTRSetupProxyDeviceRequestClass_0()];
      v16 = self->_trSession;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __65__SFTouchRemoteAccountServicesHandler_activateWithSession_error___block_invoke_3;
      v23[3] = &unk_1E788ED18;
      objc_copyWeak(&v24, &location);
      [(TRSession *)v16 setRequestHandler:v23 forRequestClass:getTRSetupProxyAuthenticationRequestClass_0(v17, v18, v19, v20)];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
      goto LABEL_17;
    }

    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || (hasBeenSignalled2 = _LogCategory_Initialize(), hasBeenSignalled2)))
    {
      [(SFTouchRemoteAccountServicesHandler *)hasBeenSignalled2 activateWithSession:v12 error:v13];
      if (!error)
      {
        goto LABEL_28;
      }
    }

    else if (!error)
    {
      goto LABEL_28;
    }

    NSErrorWithOSStatusF(4294960591, "No TRSession");
    goto LABEL_23;
  }

  if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || (hasBeenSignalled = _LogCategory_Initialize(), hasBeenSignalled))
    {
      [(SFTouchRemoteAccountServicesHandler *)hasBeenSignalled activateWithSession:v9 error:v10];
    }
  }

LABEL_17:
  v21 = 1;
LABEL_29:

  return v21;
}

void __65__SFTouchRemoteAccountServicesHandler_activateWithSession_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTRCompanionAuthenticationRequest:v7 responseHandler:v5];
}

void __65__SFTouchRemoteAccountServicesHandler_activateWithSession_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTRProxyDeviceRequest:v7 responseHandler:v5];
}

void __65__SFTouchRemoteAccountServicesHandler_activateWithSession_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTRProxyAuthenticationRequest:v7 responseHandler:v5];
}

- (void)invalidate
{
  if (([(BSAtomicSignal *)self->_invalidated hasBeenSignalled]& 1) == 0)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 50 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      [SFTouchRemoteAccountServicesHandler invalidate];
    }

    invalidated = self->_invalidated;

    [(BSAtomicSignal *)invalidated signal];
  }
}

- (void)_handleTRCompanionAuthenticationRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if ([(BSAtomicSignal *)self->_invalidated hasBeenSignalled])
  {
    account = NSErrorWithOSStatusF(4294896148, "Invalidated handler.");
    handlerCopy[2](handlerCopy, account, 0);
  }

  else
  {
    account = [requestCopy account];
    if (account)
    {
      targetedAccountServices = [requestCopy targetedAccountServices];
      if (targetedAccountServices)
      {
        companionDevice = [requestCopy companionDevice];
        if (companionDevice)
        {
          if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
          {
            [SFTouchRemoteAccountServicesHandler _handleTRCompanionAuthenticationRequest:account responseHandler:targetedAccountServices];
          }

          objc_initWeak(&location, self);
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke;
          v12[3] = &unk_1E788ED68;
          objc_copyWeak(&v17, &location);
          v16 = handlerCopy;
          v13 = targetedAccountServices;
          v14 = account;
          v15 = companionDevice;
          [(SFTouchRemoteAccountServicesHandler *)self _saveRemoteVerifiedAccount:v14 completion:v12];

          objc_destroyWeak(&v17);
          objc_destroyWeak(&location);
        }

        else
        {
          v11 = NSErrorWithOSStatusF(4294960591, "No companion device");
          if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
          {
            [SFTouchRemoteAccountServicesHandler _handleTRCompanionAuthenticationRequest:v11 responseHandler:?];
          }

          handlerCopy[2](handlerCopy, v11, 0);
        }
      }

      else
      {
        companionDevice = NSErrorWithOSStatusF(4294960591, "No services");
        if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
        {
          [SFTouchRemoteAccountServicesHandler _handleTRCompanionAuthenticationRequest:companionDevice responseHandler:?];
        }

        handlerCopy[2](handlerCopy, companionDevice, 0);
      }
    }

    else
    {
      targetedAccountServices = NSErrorWithOSStatusF(4294960591, "No account");
      if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
      {
        [SFTouchRemoteAccountServicesHandler _handleTRCompanionAuthenticationRequest:targetedAccountServices responseHandler:?];
      }

      handlerCopy[2](handlerCopy, targetedAccountServices, 0);
    }
  }
}

void __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v3)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 56) + 16))();
  }

  v5 = [WeakRetained _nextServiceTypeForTRAccountServices:*(a1 + 32)];
  if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
  {
    __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_cold_2(v5);
  }

  v6 = objc_alloc(getTRAnisetteDataProviderClass_0());
  v7 = [WeakRetained trSession];
  v8 = [v6 initWithSession:v7];

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2;
  v11[3] = &unk_1E788ED40;
  objc_copyWeak(v14, (a1 + 64));
  v14[1] = v5;
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  [WeakRetained _authenticateAccount:v9 serviceType:v5 companionDevice:v10 anisetteDataProvider:v8 completion:v11];

  objc_destroyWeak(v14);
}

void __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v5 || v6)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 60 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2_cold_1(a1, v6);
    }

    v9 = objc_alloc_init(getTRSetupAuthenticationResponseClass_0());
    [v9 setUnauthenticatedAccountServices:*(a1 + 32)];
    [v9 setError:v6];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3;
    v10[3] = &unk_1E788B6D8;
    v8 = *(a1 + 32);
    v11 = *(a1 + 40);
    [WeakRetained _authenticateWithServiceTypes:v8 authResults:v5 completion:v10];
  }
}

void __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v6 = v3;
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90)
    {
      if (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || (v7 = _LogCategory_Initialize(), v6 = v10, v7))
      {
        __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3_cold_1(v6);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30)
    {
      if (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3_cold_2(v3, v4, v5);
      }
    }

    v8 = objc_alloc_init(getTRSetupAuthenticationResponseClass_0());
    v9 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    [v8 setUnauthenticatedAccountServices:v9];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_handleTRProxyDeviceRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
    {
      [(SFTouchRemoteAccountServicesHandler *)handlerCopy _handleTRProxyDeviceRequest:v7 responseHandler:v8];
    }
  }

  if ([(BSAtomicSignal *)self->_invalidated hasBeenSignalled])
  {
    currentDevice = NSErrorWithOSStatusF(4294896148, "Invalidated handler.");
    (v9)[2](v9, currentDevice, 0);
  }

  else
  {
    currentDevice = [(objc_class *)getAKDeviceClass_0() currentDevice];
    v11 = [currentDevice setLinkType:3];
    v12 = objc_alloc_init(getTRSetupProxyDeviceResponseClass_0(v11));
    [v12 setProxyDevice:currentDevice];
    (v9)[2](v9, 0, v12);
  }
}

- (void)_handleTRProxyAuthenticationRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if ([(BSAtomicSignal *)self->_invalidated hasBeenSignalled])
  {
    account = NSErrorWithOSStatusF(4294896148, "Invalidated handler.");
    handlerCopy[2](handlerCopy, account, 0);
  }

  else
  {
    account = [requestCopy account];
    if (account)
    {
      rawPassword = [requestCopy rawPassword];
      if (rawPassword)
      {
        targetedAccountServices = [requestCopy targetedAccountServices];
        if (targetedAccountServices)
        {
          if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
          {
            [SFTouchRemoteAccountServicesHandler _handleTRProxyAuthenticationRequest:account responseHandler:targetedAccountServices];
          }

          [account _aa_setRawPassword:rawPassword];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke;
          v12[3] = &unk_1E788C6B0;
          v16 = handlerCopy;
          v12[4] = self;
          v13 = targetedAccountServices;
          v14 = account;
          v15 = rawPassword;
          [(SFTouchRemoteAccountServicesHandler *)self _saveRemoteVerifiedAccount:v14 completion:v12];
        }

        else
        {
          v11 = NSErrorWithOSStatusF(4294960591, "No services");
          if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
          {
            [SFTouchRemoteAccountServicesHandler _handleTRProxyAuthenticationRequest:v11 responseHandler:?];
          }

          handlerCopy[2](handlerCopy, v11, 0);
        }
      }

      else
      {
        targetedAccountServices = NSErrorWithOSStatusF(4294960591, "No password");
        if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
        {
          [SFTouchRemoteAccountServicesHandler _handleTRProxyAuthenticationRequest:targetedAccountServices responseHandler:?];
        }

        handlerCopy[2](handlerCopy, targetedAccountServices, 0);
      }
    }

    else
    {
      rawPassword = NSErrorWithOSStatusF(4294960591, "No account");
      if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
      {
        [SFTouchRemoteAccountServicesHandler _handleTRProxyAuthenticationRequest:rawPassword responseHandler:?];
      }

      handlerCopy[2](handlerCopy, rawPassword, 0);
    }
  }
}

void __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 64) + 16))();
  }

  v4 = [*(a1 + 32) _nextServiceTypeForTRAccountServices:*(a1 + 40)];
  if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
  {
    __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_cold_2(v4);
  }

  objc_initWeak(&location, *(a1 + 32));
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2;
  v8[3] = &unk_1E788ED90;
  objc_copyWeak(v11, &location);
  v11[1] = v4;
  v10 = *(a1 + 64);
  v9 = *(a1 + 40);
  [v5 _authenticateAccount:v6 serviceType:v4 rawPassword:v7 completion:v8];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v5 || v6)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2_cold_1(a1, v6);
    }

    v9 = *(a1 + 40);
    if (v6)
    {
      (*(v9 + 16))(v9, v6, 0);
    }

    else
    {
      v10 = NSErrorWithOSStatusF(4294960596, "Auth account failed no error");
      (*(v9 + 16))(v9, v10, 0);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3;
    v11[3] = &unk_1E788B6D8;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    [WeakRetained _authenticateWithServiceTypes:v8 authResults:v5 completion:v11];
  }
}

void __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v6 = v3;
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90)
    {
      if (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || (v7 = _LogCategory_Initialize(), v6 = v10, v7))
      {
        __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3_cold_1(v6);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30)
    {
      if (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3_cold_2(v3, v4, v5);
      }
    }

    v8 = objc_alloc_init(getTRSetupAuthenticationResponseClass_0());
    v9 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    [v8 setUnauthenticatedAccountServices:v9];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_saveRemoteVerifiedAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  accountStore = self->_accountStore;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v11 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:identifier];

  [accountCopy setAccountType:v11];
  [accountCopy _setObjectID:0];
  [accountCopy markAllPropertiesDirty];
  v12 = self->_accountStore;
  credential = [accountCopy credential];
  v19 = 0;
  [(ACAccountStore *)v12 setCredential:credential forAccount:accountCopy serviceID:0 error:&v19];
  v14 = v19;

  if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
  {
    [SFTouchRemoteAccountServicesHandler _saveRemoteVerifiedAccount:v14 completion:?];
  }

  v15 = self->_accountStore;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__SFTouchRemoteAccountServicesHandler__saveRemoteVerifiedAccount_completion___block_invoke;
  v17[3] = &unk_1E788C7A0;
  v18 = completionCopy;
  v16 = completionCopy;
  [(ACAccountStore *)v15 saveVerifiedAccount:accountCopy withCompletionHandler:v17];
}

void __77__SFTouchRemoteAccountServicesHandler__saveRemoteVerifiedAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = v5;
  v6 = [v5 domain];
  if ([v6 isEqual:*MEMORY[0x1E6959978]])
  {
    v7 = [v9 code];

    if (v7 == 5)
    {
      v5 = v9;
LABEL_7:

LABEL_8:
      v8 = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = v9;
  if (!v9)
  {
    v8 = NSErrorWithOSStatusF(4294960596, "SaveVerifiedAccount failed no error");
  }

LABEL_12:
  v10 = v8;
  (*(*(a1 + 32) + 16))();
}

- (void)_authenticateAccount:(id)account serviceType:(int64_t)type companionDevice:(id)device anisetteDataProvider:(id)provider completion:(id)completion
{
  v11 = getAKAppleIDAuthenticationContextClass_0;
  completionCopy = completion;
  providerCopy = provider;
  deviceCopy = device;
  accountCopy = account;
  v18 = objc_alloc_init(v11());
  [v18 _setProxyingForApp:1];
  [v18 setAnisetteDataProvider:providerCopy];

  [v18 setAuthenticationType:1];
  [v18 setCompanionDevice:deviceCopy];

  [v18 setIsUsernameEditable:0];
  [v18 setServiceType:type];
  [v18 setShouldAllowAppleIDCreation:0];
  [v18 setShouldUpdatePersistentServiceTokens:1];
  username = [accountCopy username];

  [v18 setUsername:username];
  v17 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass_0());
  [v17 authenticateWithContext:v18 completion:completionCopy];
}

- (void)_authenticateAccount:(id)account serviceType:(int64_t)type rawPassword:(id)password completion:(id)completion
{
  v9 = getAKAppleIDAuthenticationContextClass_0;
  completionCopy = completion;
  passwordCopy = password;
  accountCopy = account;
  v15 = objc_alloc_init(v9());
  [v15 _setProxyingForApp:1];
  [v15 _setPassword:passwordCopy];

  [v15 setAuthenticationType:1];
  [v15 setIsUsernameEditable:0];
  [v15 setServiceType:type];
  [v15 setShouldAllowAppleIDCreation:0];
  [v15 setShouldUpdatePersistentServiceTokens:1];
  username = [accountCopy username];

  [v15 setUsername:username];
  v14 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass_0());
  [v14 authenticateWithContext:v15 completion:completionCopy];
}

- (void)_authenticateWithServiceTypes:(id)types authResults:(id)results completion:(id)completion
{
  typesCopy = types;
  resultsCopy = results;
  completionCopy = completion;
  v11 = [typesCopy count];
  if (v11)
  {
    v14 = [(SFTouchRemoteAccountServicesHandler *)self _nextTRServiceTypeForTRAccountServices:typesCopy];
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      [SFTouchRemoteAccountServicesHandler _authenticateWithServiceTypes:v14 authResults:? completion:?];
    }

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__SFTouchRemoteAccountServicesHandler__authenticateWithServiceTypes_authResults_completion___block_invoke;
    v15[3] = &unk_1E788EDB8;
    objc_copyWeak(v19, &location);
    v19[1] = v14;
    v18 = completionCopy;
    v16 = typesCopy;
    v17 = resultsCopy;
    [(SFTouchRemoteAccountServicesHandler *)self _authenticateWithServiceType:v14 authResults:v17 completion:v15];

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }

  else
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30)
    {
      if (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        [SFTouchRemoteAccountServicesHandler _authenticateWithServiceTypes:v11 authResults:v12 completion:v13];
      }
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __92__SFTouchRemoteAccountServicesHandler__authenticateWithServiceTypes_authResults_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v6)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __92__SFTouchRemoteAccountServicesHandler__authenticateWithServiceTypes_authResults_completion___block_invoke_cold_1(a1, v6);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [*(a1 + 32) mutableCopy];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
    [v4 removeObject:v5];

    [WeakRetained _authenticateWithServiceTypes:v4 authResults:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)_authenticateWithServiceType:(unint64_t)type authResults:(id)results completion:(id)completion
{
  resultsCopy = results;
  completionCopy = completion;
  supportedTRAccountServices = [(SFTouchRemoteAccountServicesHandlerConfiguration *)self->_configuration supportedTRAccountServices];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v11 = [supportedTRAccountServices containsObject:v10];

  if (!v11)
  {
LABEL_6:
    v12 = NSErrorWithOSStatusF(4294960561, "Unsupported TRAccountService %d", type);
    completionCopy[2](completionCopy, v12);

    goto LABEL_7;
  }

  switch(type)
  {
    case 3uLL:
      [(SFTouchRemoteAccountServicesHandler *)self _authenticateGameCenterWithAuthResults:resultsCopy completion:completionCopy];
      break;
    case 2uLL:
      [(SFTouchRemoteAccountServicesHandler *)self _authenticateiTunesWithAuthResults:resultsCopy completion:completionCopy];
      break;
    case 1uLL:
      [(SFTouchRemoteAccountServicesHandler *)self _authenticateiCloudWithAuthResults:resultsCopy completion:completionCopy];
      break;
    default:
      goto LABEL_6;
  }

LABEL_7:
}

- (void)_authenticateiCloudWithAuthResults:(id)results completion:(id)completion
{
  resultsCopy = results;
  completionCopy = completion;
  getAKAuthenticationAlternateDSIDKey_0(completionCopy);
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  getAKAuthenticationUsernameKey_0(v8);
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  getAKAuthenticationPasswordKey_0(v9);
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  isPrimaryAppleAccount = [(SFTouchRemoteAccountServicesHandlerConfiguration *)self->_configuration isPrimaryAppleAccount];
  accountStore = self->_accountStore;
  if (isPrimaryAppleAccount)
  {
    [(ACAccountStore *)accountStore aa_primaryAppleAccount];
  }

  else
  {
    [(ACAccountStore *)accountStore aa_appleAccountWithAltDSID:v8];
  }
  v13 = ;
  v14 = v13;
  v15 = 1;
  if (v13)
  {
    v15 = 2;
  }

  self->_appleAccountSignInState = v15;
  if (v13)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      [SFTouchRemoteAccountServicesHandler _authenticateiCloudWithAuthResults:v14 completion:v9];
    }

    [v14 setAuthenticated:0];
    [v14 aa_setPassword:v10];
    v16 = self->_accountStore;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke;
    v32[3] = &unk_1E788C660;
    v33 = v14;
    v34 = v9;
    v35 = completionCopy;
    [(ACAccountStore *)v16 verifyCredentialsForAccount:v33 saveWhenAuthorized:1 withHandler:v32];

    v17 = v33;
  }

  else
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      [SFTouchRemoteAccountServicesHandler _authenticateiCloudWithAuthResults:v9 completion:?];
    }

    v18 = objc_alloc(MEMORY[0x1E6959A28]);
    aa_appleAccountType = [(ACAccountStore *)self->_accountStore aa_appleAccountType];
    v20 = [v18 initWithAccountType:aa_appleAccountType];

    [v20 setUsername:v9];
    v21 = [MEMORY[0x1E6959A30] credentialWithPassword:v10];
    [v20 setCredential:v21];

    isPrimaryAppleAccount2 = [(SFTouchRemoteAccountServicesHandlerConfiguration *)self->_configuration isPrimaryAppleAccount];
    v23 = &getAAAccountClassPrimary;
    if (!isPrimaryAppleAccount2)
    {
      v23 = &getAAAccountClassFull;
    }

    v24 = (*v23)();
    [v20 aa_setAccountClass:v24];

    objc_initWeak(&location, self);
    v25 = self->_accountStore;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_2;
    v26[3] = &unk_1E788EDE0;
    objc_copyWeak(&v30, &location);
    v27 = v9;
    v29 = completionCopy;
    v17 = v20;
    v28 = v17;
    [(ACAccountStore *)v25 aa_registerAppleAccount:v17 withCompletion:v26];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

void __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!v8 || v5)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_cold_2(a1, v5);
    }

    v6 = *(a1 + 48);
    if (v5)
    {
      (*(v6 + 16))(v6, v5);
    }

    else
    {
      v7 = NSErrorWithOSStatusF(4294960596, "VerifyCredentialsForAccount failed no error");
      (*(v6 + 16))(v6, v7);
    }
  }

  else
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_cold_1(v8, a1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = v11;
  v7 = WeakRetained;
  if (v11 || (a2 & 1) == 0)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90)
    {
      if (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || (v8 = _LogCategory_Initialize(), v6 = v11, v8))
      {
        LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _authenticateiCloudWithAuthResults:completion:]_block_invoke_2", 90, "### Register new account failed for '%.3@...': %{error}\n", *(a1 + 32), v6);
        v6 = v11;
      }
    }

    v9 = *(a1 + 48);
    if (v6)
    {
      (*(v9 + 16))(v9);
    }

    else
    {
      v10 = NSErrorWithOSStatusF(4294960596, "RegisterAppleAccount failed no error");
      (*(v9 + 16))(v9, v10);
    }
  }

  else
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_2_cold_1(a1);
    }

    [v7 _saveNewAccount:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)_saveNewAccount:(id)account completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  [accountCopy setAuthenticated:0];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([accountCopy aa_isPrimaryEmailVerified])
  {
    selfCopy = self;
    v23 = completionCopy;
    v24 = accountCopy;
    v9 = [(ACAccountStore *)self->_accountStore dataclassActionsForAccountSave:accountCopy];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v25 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v14 = [v9 objectForKeyedSubscript:v13];
          v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v29;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v29 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v28 + 1) + 8 * j);
                if ([v19 type])
                {
                  [v8 setObject:v19 forKeyedSubscript:v13];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v16);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v11);
    }

    completionCopy = v23;
    accountCopy = v24;
    self = selfCopy;
  }

  accountStore = self->_accountStore;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __66__SFTouchRemoteAccountServicesHandler__saveNewAccount_completion___block_invoke;
  v26[3] = &unk_1E788C7A0;
  v27 = completionCopy;
  v21 = completionCopy;
  [(ACAccountStore *)accountStore saveAccount:accountCopy withDataclassActions:v8 completion:v26];
}

void __66__SFTouchRemoteAccountServicesHandler__saveNewAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5 || (a2 & 1) == 0)
  {
    if (v5)
    {
      (*(v6 + 16))(v6, v5);
    }

    else
    {
      v7 = NSErrorWithOSStatusF(4294960596, "SaveNewAccount failed no error");
      (*(v6 + 16))(v6, v7);
    }
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }
}

- (void)_authenticateiTunesWithAuthResults:(id)results completion:(id)completion
{
  completionCopy = completion;
  resultsCopy = results;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();

  contextForSignIn = [(objc_class *)getSSMutableAuthenticationContextClass_0() contextForSignIn];
  [contextForSignIn setAccountName:v9];
  [contextForSignIn setAllowsRetry:0];
  [contextForSignIn setAltDSID:v8];
  [contextForSignIn setCanSetActiveAccount:0];
  [contextForSignIn setPasswordEquivalentToken:v10];
  [contextForSignIn setPromptStyle:1];
  [contextForSignIn setShouldSuppressDialogs:{-[SFTouchRemoteAccountServicesHandlerConfiguration shouldSuppressStoreSignInDialogs](self->_configuration, "shouldSuppressStoreSignInDialogs")}];
  v12 = [contextForSignIn setShouldIgnoreAccountConversion:{-[SFTouchRemoteAccountServicesHandlerConfiguration shouldIgnoreStoreAccountConversion](self->_configuration, "shouldIgnoreStoreAccountConversion")}];
  defaultStore = [getSSAccountStoreClass_0(v12) defaultStore];
  v14 = [objc_alloc(getSSAuthenticateRequestClass_0()) initWithAuthenticationContext:contextForSignIn];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__SFTouchRemoteAccountServicesHandler__authenticateiTunesWithAuthResults_completion___block_invoke;
  v17[3] = &unk_1E788EE08;
  v18 = defaultStore;
  v19 = completionCopy;
  v17[4] = self;
  v15 = defaultStore;
  v16 = completionCopy;
  [v14 startWithAuthenticateResponseBlock:v17];
}

void __85__SFTouchRemoteAccountServicesHandler__authenticateiTunesWithAuthResults_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 authenticatedAccount];
  if (v5)
  {
    if ([*(*(a1 + 32) + 40) shouldActivateStoreAccount])
    {
      [v5 setActive:1];
    }

    [*(a1 + 40) saveAccount:v5 error:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(a1 + 48);
    if (v8)
    {
      (*(v6 + 16))(v6);
    }

    else
    {
      v7 = NSErrorWithOSStatusF(4294960596, "iTunes no authenticated account");
      (*(v6 + 16))(v6, v7);
    }
  }
}

- (void)_authenticateGameCenterWithAuthResults:(id)results completion:(id)completion
{
  completionCopy = completion;
  v6 = NSErrorWithOSStatusF(4294960596, "GameCenter authentication not available");
  (*(completion + 2))(completionCopy, v6);
}

- (int64_t)_nextServiceTypeForTRAccountServices:(id)services
{
  servicesCopy = services;
  if ([servicesCopy containsObject:&unk_1F1D7CE08])
  {
    v4 = 1;
  }

  else if ([servicesCopy containsObject:&unk_1F1D7CE20])
  {
    v4 = 2;
  }

  else if ([servicesCopy containsObject:&unk_1F1D7CE38])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_nextTRServiceTypeForTRAccountServices:(id)services
{
  servicesCopy = services;
  if ([servicesCopy containsObject:&unk_1F1D7CE08])
  {
    v4 = 1;
  }

  else if ([servicesCopy containsObject:&unk_1F1D7CE20])
  {
    v4 = 2;
  }

  else if ([servicesCopy containsObject:&unk_1F1D7CE38])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleTRCompanionAuthenticationRequest:(void *)a1 responseHandler:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 username];
  LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _handleTRCompanionAuthenticationRequest:responseHandler:]", 30, "Companion auth start: %##@, %@\n", a2, v3);
}

uint64_t __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_cold_2(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1E788EE28[a1 - 1];
  }

  return LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _handleTRCompanionAuthenticationRequest:responseHandler:]_block_invoke", 30, "Companion auth account start: %s\n", v1);
}

uint64_t __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56) - 1;
  if (v4 > 5)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E788EE28[v4];
  }

  return LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _handleTRCompanionAuthenticationRequest:responseHandler:]_block_invoke_2", 60, "### Companion auth account failed: %s, %{error}\n", v5, a2, v2, v3);
}

- (void)_handleTRProxyAuthenticationRequest:(void *)a1 responseHandler:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 username];
  LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _handleTRProxyAuthenticationRequest:responseHandler:]", 30, "Proxy auth start: %##@, %@\n", a2, v3);
}

uint64_t __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_cold_2(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1E788EE28[a1 - 1];
  }

  return LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _handleTRProxyAuthenticationRequest:responseHandler:]_block_invoke", 30, "Proxy auth account start: %s\n", v1);
}

uint64_t __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56) - 1;
  if (v4 > 5)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E788EE28[v4];
  }

  return LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _handleTRProxyAuthenticationRequest:responseHandler:]_block_invoke_2", 90, "### Proxy auth account failed: %s, %{error}\n", v5, a2, v2, v3);
}

- (uint64_t)_authenticateWithServiceTypes:(uint64_t)a1 authResults:completion:.cold.1(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1E788EE58[a1 - 1];
  }

  return LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _authenticateWithServiceTypes:authResults:completion:]", 30, "Auth service type %s\n", v1);
}

uint64_t __92__SFTouchRemoteAccountServicesHandler__authenticateWithServiceTypes_authResults_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64) - 1;
  if (v4 > 2)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E788EE58[v4];
  }

  return LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _authenticateWithServiceTypes:authResults:completion:]_block_invoke", 90, "### Auth service type %s failed: %{error}\n", v5, a2, v2, v3);
}

- (void)_authenticateiCloudWithAuthResults:(void *)a1 completion:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 username];
  LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _authenticateiCloudWithAuthResults:completion:]", 30, "Updating existing account credentials for '%.3@...' (%.3@...)\n", v3, a2);
}

void __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 username];
  LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _authenticateiCloudWithAuthResults:completion:]_block_invoke", 30, "Updated existing account credentials for '%.3@...' (%.3@...)\n", v3, *(a2 + 40));
}

void __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) username];
  LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _authenticateiCloudWithAuthResults:completion:]_block_invoke", 90, "### Update existing account credentials failed for '%.3@...' (%.3@...): %{error}\n", v4, *(a1 + 40), a2);
}

void __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) username];
  LogPrintF(&gLogCategory_SFTouchRemoteAccountServicesHandler, "[SFTouchRemoteAccountServicesHandler _authenticateiCloudWithAuthResults:completion:]_block_invoke_2", 30, "Registered new account '%.3@...'\n", v1);
}

@end