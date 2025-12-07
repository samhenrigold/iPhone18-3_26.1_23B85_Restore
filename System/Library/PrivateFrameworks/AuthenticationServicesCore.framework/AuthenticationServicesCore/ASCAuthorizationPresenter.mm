@interface ASCAuthorizationPresenter
- (ASCAuthorizationPresenter)init;
- (ASCAuthorizationPresenterCredentialExchangeDelegate)credentialExchangeDelegate;
- (ASCAuthorizationPresenterDelegate)delegate;
- (BOOL)_isErrorDueToNewAlertHandleRequest:(id)request;
- (BOOL)_isPresentationContextValid:(id)valid error:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_invalidateWithError:(id)error;
- (void)_performQueuedUpdatesIfNecessary;
- (void)authorizationRequestFinishedWithCredential:(id)credential error:(id)error completionHandler:(id)handler;
- (void)authorizationRequestInitiatedWithLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler;
- (void)cableClientWillAuthenticate;
- (void)cableClientWillConnect;
- (void)cancelCurrentCredentialExchangeOperation;
- (void)didIgnorePINRequest;
- (void)dismiss;
- (void)dismissWithError:(id)error;
- (void)getExportedCredentialData:(id)data;
- (void)initializeClientToViewServiceConnection;
- (void)presentAuthorizationWithContext:(id)context forProcess:(id)process completionHandler:(id)handler;
- (void)presentError:(id)error forService:(id)service completionHandler:(id)handler;
- (void)presentExportFlowForProcess:(id)process windowSceneIdentifier:(id)identifier completionHandler:(id)handler;
- (void)presentNewPINEntryInterfaceWithMinLength:(unint64_t)length;
- (void)presentPINEntryInterface;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)setTokenForImport:(id)import;
- (void)startCABLEAuthenticationWithCompletionHandler:(id)handler;
- (void)updateInterfaceForUserVisibleError:(id)error;
- (void)updateInterfaceWithLoginChoices:(id)choices;
- (void)userSelectedImportingDestinationWithBundleIdentfier:(id)identfier;
- (void)validateUserEnteredPIN:(id)n completionHandler:(id)handler;
@end

@implementation ASCAuthorizationPresenter

- (ASCAuthorizationPresenter)init
{
  v9.receiver = self;
  v9.super_class = ASCAuthorizationPresenter;
  v2 = [(ASCAuthorizationPresenter *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AuthenticationServicesCore.AuthorizationPresenterInvalidationQueue", 0);
    invalidationQueue = v2->_invalidationQueue;
    v2->_invalidationQueue = v3;

    v5 = dispatch_queue_create("com.apple.AuthenticationServicesCore.AuthorizationPresenterInterfaceUpdateQueue", 0);
    interfaceUpdateQueue = v2->_interfaceUpdateQueue;
    v2->_interfaceUpdateQueue = v5;

    v7 = v2;
  }

  return v2;
}

- (void)presentAuthorizationWithContext:(id)context forProcess:(id)process completionHandler:(id)handler
{
  v50[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  processCopy = process;
  handlerCopy = handler;
  v46 = 0;
  v11 = [(ASCAuthorizationPresenter *)self _isPresentationContextValid:contextCopy error:&v46];
  v12 = v46;
  if (v11)
  {
    v45 = v12;
    v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:contextCopy requiringSecureCoding:1 error:&v45];
    v14 = v45;

    if (v13)
    {
      v17 = _Block_copy(handlerCopy);
      credentialResultHandler = self->_credentialResultHandler;
      self->_credentialResultHandler = v17;

      anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
      remoteListener = self->_remoteListener;
      self->_remoteListener = anonymousListener;

      [(NSXPCListener *)self->_remoteListener setDelegate:self];
      [(NSXPCListener *)self->_remoteListener resume];
      v49 = @"ASCAuthorizationPresentationContextData";
      v50[0] = v13;
      v43 = v13;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      v22 = objc_alloc(MEMORY[0x1E69D42A0]);
      v23 = [v22 initWithServiceName:authenticationServicesViewServiceBundleIdentifier viewControllerClassName:@"ASViewServiceViewController"];
      v24 = objc_opt_new();
      endpoint = [(NSXPCListener *)self->_remoteListener endpoint];
      _endpoint = [endpoint _endpoint];
      [v24 setXpcEndpoint:_endpoint];

      [v24 setUserInfo:v21];
      v44 = v23;
      v27 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v23 configurationContext:v24];
      remoteAlertHandle = self->_remoteAlertHandle;
      self->_remoteAlertHandle = v27;

      v29 = objc_opt_respondsToSelector();
      v30 = self->_remoteAlertHandle;
      if (v29)
      {
        [(SBSRemoteAlertHandle *)v30 registerObserver:self];
      }

      else
      {
        [(SBSRemoteAlertHandle *)v30 addObserver:self];
      }

      v32 = MKBGetDeviceLockState();
      v13 = v43;
      if (v32 && v32 != 3)
      {
        v38 = WBS_LOG_CHANNEL_PREFIXAuthorization(v32, v33);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [ASCAuthorizationPresenter presentAuthorizationWithContext:forProcess:completionHandler:];
        }

        v39 = MEMORY[0x1E696ABC0];
        v47 = *MEMORY[0x1E696A588];
        v48 = @"Device must be unlocked to perform request.";
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:{1, v21}];
        v40 = [v39 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v34];
        [(ASCAuthorizationPresenter *)self _invalidateWithError:v40];

        v21 = v42;
      }

      else
      {
        v34 = objc_opt_new();
        if (processCopy)
        {
          v35 = [MEMORY[0x1E69D42D8] predicateForProcess:processCopy];
          [contextCopy windowSceneIdentifier];
          v36 = v41 = v21;
          [v35 setScenePersistentIdentifier:v36];

          v37 = [objc_alloc(MEMORY[0x1E69D42C0]) initWithTargetPredicate:v35];
          [v34 setPresentationTarget:v37];

          v21 = v41;
        }

        [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v34];
      }
    }

    else
    {
      v31 = WBS_LOG_CHANNEL_PREFIXAuthorization(v15, v16);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [ASCAuthorizationPresenter presentAuthorizationWithContext:v31 forProcess:? completionHandler:?];
      }

      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
    v14 = v12;
  }
}

- (void)presentError:(id)error forService:(id)service completionHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__ASCAuthorizationPresenter_presentError_forService_completionHandler___block_invoke;
  v10[3] = &unk_1E8160138;
  v11 = serviceCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = serviceCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __71__ASCAuthorizationPresenter_presentError_forService_completionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = _WBSLocalizedString();
  alertHeader = [v2 stringWithFormat:v3, *(a1 + 32)];

  v4 = [MEMORY[0x1E69C8860] currentDevice];
  v5 = [v4 deviceClass];

  if (v5 == 3)
  {
    v6 = MEMORY[0x1E696AEC0];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = MEMORY[0x1E696AEC0];
LABEL_5:
    v7 = _WBSLocalizedString();
    v8 = [v6 stringWithFormat:v7, *(a1 + 32)];

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = _WBSLocalizedString();
  CFUserNotificationDisplayAlert(0.0, 2uLL, 0, 0, 0, alertHeader, v8, v9, 0, 0, 0);
  (*(*(a1 + 40) + 16))();
}

- (void)updateInterfaceWithLoginChoices:(id)choices
{
  choicesCopy = choices;
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ASCAuthorizationPresenter_updateInterfaceWithLoginChoices___block_invoke;
  v7[3] = &unk_1E815FD28;
  v7[4] = self;
  v8 = choicesCopy;
  v6 = choicesCopy;
  dispatch_async(interfaceUpdateQueue, v7);
}

void __61__ASCAuthorizationPresenter_updateInterfaceWithLoginChoices___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  if (v3)
  {
    [v3 updateInterfaceWithLoginChoices:v1];
  }

  else
  {
    objc_storeStrong((v2 + 64), v1);
  }
}

- (void)presentPINEntryInterface
{
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ASCAuthorizationPresenter_presentPINEntryInterface__block_invoke;
  block[3] = &unk_1E815F9D0;
  block[4] = self;
  dispatch_async(interfaceUpdateQueue, block);
}

void *__53__ASCAuthorizationPresenter_presentPINEntryInterface__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 48);
  if (result)
  {
    return [result presentPINEntryInterface];
  }

  *(v1 + 72) = 1;
  return result;
}

- (void)presentNewPINEntryInterfaceWithMinLength:(unint64_t)length
{
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__ASCAuthorizationPresenter_presentNewPINEntryInterfaceWithMinLength___block_invoke;
  v4[3] = &unk_1E8160070;
  v4[4] = self;
  v4[5] = length;
  dispatch_async(interfaceUpdateQueue, v4);
}

void *__70__ASCAuthorizationPresenter_presentNewPINEntryInterfaceWithMinLength___block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 48))
  {
    return [*(v1 + 48) presentNewPINEntryInterfaceWithMinLength:result[5]];
  }

  *(v1 + 73) = 1;
  *(result[4] + 80) = result[5];
  return result;
}

- (void)updateInterfaceForUserVisibleError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"com.apple.AuthenticationServicesCore.AuthorizationError"];

  if (v6)
  {
    code = [errorCopy code];
    if ((code - 4) < 4 || code == 13)
    {
      [(ASCViewServiceProtocol *)self->_viewServiceProxy updateInterfaceForUserVisibleError:errorCopy];
    }

    else
    {
      v12 = WBS_LOG_CHANNEL_PREFIXAuthorization(code, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ASCAuthorizationPresenter updateInterfaceForUserVisibleError:v12];
      }
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXAuthorization(v7, v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ASCAuthorizationPresenter updateInterfaceForUserVisibleError:v11];
    }
  }
}

- (void)dismiss
{
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASCAuthorizationPresenter_dismiss__block_invoke;
  block[3] = &unk_1E815F9D0;
  block[4] = self;
  dispatch_async(interfaceUpdateQueue, block);
}

- (void)dismissWithError:(id)error
{
  errorCopy = error;
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__ASCAuthorizationPresenter_dismissWithError___block_invoke;
  v7[3] = &unk_1E815FD28;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(interfaceUpdateQueue, v7);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    *location = 0u;
    v25 = 0u;
  }

  HasEntitlement = WBSAuditTokenHasEntitlement();
  v11 = HasEntitlement;
  if (HasEntitlement)
  {
    objc_storeStrong(&self->_viewServiceConnection, connection);
    v12 = +[ASCAuthorizationPresenterHostInterface xpcInterface];
    [(NSXPCConnection *)self->_viewServiceConnection setExportedInterface:v12];

    [(NSXPCConnection *)self->_viewServiceConnection setExportedObject:self];
    v13 = +[ASCViewServiceInterface xpcInterface];
    [(NSXPCConnection *)self->_viewServiceConnection setRemoteObjectInterface:v13];

    objc_initWeak(location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __64__ASCAuthorizationPresenter_listener_shouldAcceptNewConnection___block_invoke;
    v22[3] = &unk_1E8160160;
    objc_copyWeak(&v23, location);
    [(NSXPCConnection *)self->_viewServiceConnection setInvalidationHandler:v22];
    [(NSXPCConnection *)self->_viewServiceConnection resume];
    v14 = [(NSXPCConnection *)self->_viewServiceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
    viewServiceProxy = self->_viewServiceProxy;
    self->_viewServiceProxy = v14;

    _performQueuedUpdatesIfNecessary = [(ASCAuthorizationPresenter *)self _performQueuedUpdatesIfNecessary];
    v18 = WBS_LOG_CHANNEL_PREFIXServiceLifecycle(_performQueuedUpdatesIfNecessary, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1C20AD000, v18, OS_LOG_TYPE_DEFAULT, "Accepting connection", v21, 2u);
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXAuthorization(HasEntitlement, v10);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ASCAuthorizationPresenter listener:shouldAcceptNewConnection:];
    }

    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
  }

  return v11;
}

void __64__ASCAuthorizationPresenter_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[13] & 1) == 0)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 15);
    [v2 cancelCurrentOperation];

    WeakRetained = v3;
  }
}

void __64__ASCAuthorizationPresenter_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__ASCAuthorizationPresenter_listener_shouldAcceptNewConnection___block_invoke_2_cold_1();
  }
}

- (BOOL)_isPresentationContextValid:(id)valid error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  validCopy = valid;
  if (([validCopy requestTypes] & 0x200) != 0)
  {
    if ([validCopy requestTypes] != 512)
    {
      if (!error)
      {
LABEL_12:
        v8 = 0;
        goto LABEL_13;
      }

      v9 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A588];
      v18[0] = @"Account Registration requests cannot be used with other types of requests.";
      v10 = MEMORY[0x1E695DF20];
      v11 = v18;
      v12 = &v17;
LABEL_11:
      v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
      *error = [v9 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v13];

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  cableAuthenticatorURL = [validCopy cableAuthenticatorURL];

  if (cableAuthenticatorURL || ![validCopy isRegistrationRequest])
  {
LABEL_8:
    v8 = 1;
    goto LABEL_13;
  }

  requestTypes = [validCopy requestTypes];
  v8 = (requestTypes & 0xFFFFFFFFFFFFFFABLL) == 0;
  if (error && (requestTypes & 0xFFFFFFFFFFFFFFABLL) != 0)
  {
    v9 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A588];
    v16 = @"Registration requests cannot be used with other types of requests.";
    v10 = MEMORY[0x1E695DF20];
    v11 = &v16;
    v12 = &v15;
    goto LABEL_11;
  }

LABEL_13:

  return v8;
}

- (void)_performQueuedUpdatesIfNecessary
{
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__ASCAuthorizationPresenter__performQueuedUpdatesIfNecessary__block_invoke;
  block[3] = &unk_1E815F9D0;
  block[4] = self;
  dispatch_async(interfaceUpdateQueue, block);
}

void __61__ASCAuthorizationPresenter__performQueuedUpdatesIfNecessary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64))
  {
    [*(v2 + 48) updateInterfaceWithLoginChoices:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    *(v3 + 64) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 72) == 1)
  {
    [*(v2 + 48) presentPINEntryInterface];
    *(*(a1 + 32) + 72) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 73) == 1)
  {
    [*(v2 + 48) presentNewPINEntryInterfaceWithMinLength:*(v2 + 80)];
    *(*(a1 + 32) + 73) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 88) == 1)
  {
    [*(v2 + 48) cableClientWillConnect];
    *(*(a1 + 32) + 88) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 89) == 1)
  {
    [*(v2 + 48) cableClientWillAuthenticate];
    *(*(a1 + 32) + 89) = 0;
  }
}

- (void)_invalidateWithError:(id)error
{
  errorCopy = error;
  invalidationQueue = self->_invalidationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__ASCAuthorizationPresenter__invalidateWithError___block_invoke;
  v7[3] = &unk_1E815FD28;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(invalidationQueue, v7);
}

void __50__ASCAuthorizationPresenter__invalidateWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (v3)
  {
    v4 = 96;
LABEL_7:
    (*(v3 + 16))(v3, 0, *(a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(v6 + v4);
    *(v6 + v4) = 0;

    return;
  }

  if ((*(v2 + 104) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 120));
    [WeakRetained cancelCurrentOperation];

    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 16;
    goto LABEL_7;
  }
}

- (void)cableClientWillConnect
{
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ASCAuthorizationPresenter_cableClientWillConnect__block_invoke;
  block[3] = &unk_1E815F9D0;
  block[4] = self;
  dispatch_async(interfaceUpdateQueue, block);
}

void *__51__ASCAuthorizationPresenter_cableClientWillConnect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 48);
  if (result)
  {
    return [result cableClientWillConnect];
  }

  *(v1 + 88) = 1;
  return result;
}

- (void)cableClientWillAuthenticate
{
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ASCAuthorizationPresenter_cableClientWillAuthenticate__block_invoke;
  block[3] = &unk_1E815F9D0;
  block[4] = self;
  dispatch_async(interfaceUpdateQueue, block);
}

void *__56__ASCAuthorizationPresenter_cableClientWillAuthenticate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 48);
  if (result)
  {
    return [result cableClientWillAuthenticate];
  }

  *(v1 + 89) = 1;
  return result;
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v4 = WBS_LOG_CHANNEL_PREFIXAuthorization(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [ASCAuthorizationPresenter remoteAlertHandleDidDeactivate:];
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:2 userInfo:0];
  [(ASCAuthorizationPresenter *)self _invalidateWithError:v5];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  v6 = [(ASCAuthorizationPresenter *)self _isErrorDueToNewAlertHandleRequest:errorCopy];
  v7 = v6;
  v9 = WBS_LOG_CHANNEL_PREFIXAuthorization(v6, v8);
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      v11 = 2;
      _os_log_impl(&dword_1C20AD000, v10, OS_LOG_TYPE_INFO, "Alert handle deactivated by new request.", v13, 2u);
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASCAuthorizationPresenter remoteAlertHandle:v10 didInvalidateWithError:?];
    }

    v11 = 1;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:v11 userInfo:0];
  [(ASCAuthorizationPresenter *)self _invalidateWithError:v12];
}

- (BOOL)_isErrorDueToNewAlertHandleRequest:(id)request
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69D4468];
  v8[0] = &unk_1F41ABC10;
  v3 = MEMORY[0x1E695DF20];
  requestCopy = request;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  LOBYTE(v3) = [requestCopy safari_matchesErrorDomainsAndCodes:v5];

  return v3;
}

- (void)authorizationRequestInitiatedWithLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  choiceCopy = choice;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationPresenter:self credentialRequestedForLoginChoice:choiceCopy authenticatedContext:contextCopy completionHandler:handlerCopy];
}

- (void)authorizationRequestFinishedWithCredential:(id)credential error:(id)error completionHandler:(id)handler
{
  credentialCopy = credential;
  errorCopy = error;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationPresenter:self didFinishWithCredential:credentialCopy error:errorCopy];

  credentialResultHandler = self->_credentialResultHandler;
  if (credentialResultHandler)
  {
    credentialResultHandler[2](credentialResultHandler, credentialCopy, errorCopy);
    v12 = self->_credentialResultHandler;
    self->_credentialResultHandler = 0;
  }

  handlerCopy[2](handlerCopy);
}

- (void)validateUserEnteredPIN:(id)n completionHandler:(id)handler
{
  handlerCopy = handler;
  nCopy = n;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationPresenter:self validateUserEnteredPIN:nCopy completionHandler:handlerCopy];
}

- (void)didIgnorePINRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationPresenterDidIgnorePINRequest:self];
}

- (void)initializeClientToViewServiceConnection
{
  v2 = WBS_LOG_CHANNEL_PREFIXServiceLifecycle(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C20AD000, v2, OS_LOG_TYPE_DEFAULT, "Connection initialized", v3, 2u);
  }
}

- (void)startCABLEAuthenticationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationPresenter:self startCABLEAuthenticationWithCompletionHandler:handlerCopy];
}

- (void)presentExportFlowForProcess:(id)process windowSceneIdentifier:(id)identifier completionHandler:(id)handler
{
  v52[1] = *MEMORY[0x1E69E9840];
  processCopy = process;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = objc_msgSend_auditToken(processCopy);
  v12 = v11;
  if (v11)
  {
    objc_msgSend_realToken(v11);
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v13 = WBSApplicationIdentifierFromAuditToken();

  v46 = 0;
  v14 = [v13 safari_bundleIdentifierFromApplicationIdentifier:&v46];
  v15 = v46;
  v17 = v15;
  if (v14)
  {
    v44 = v15;
    v45 = identifierCopy;
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    remoteListener = self->_remoteListener;
    self->_remoteListener = anonymousListener;

    [(NSXPCListener *)self->_remoteListener setDelegate:self];
    [(NSXPCListener *)self->_remoteListener resume];
    v20 = _Block_copy(handlerCopy);
    presentExportFlowResultHandler = self->_presentExportFlowResultHandler;
    self->_presentExportFlowResultHandler = v20;

    v51 = @"ASCAuthorizationCredentialExchangeExporterBundleID";
    v52[0] = v14;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v23 = objc_alloc(MEMORY[0x1E69D42A0]);
    v24 = [v23 initWithServiceName:authenticationServicesViewServiceBundleIdentifier viewControllerClassName:@"ASViewServiceViewController"];
    v25 = objc_opt_new();
    endpoint = [(NSXPCListener *)self->_remoteListener endpoint];
    _endpoint = [endpoint _endpoint];
    [v25 setXpcEndpoint:_endpoint];

    v43 = v22;
    [v25 setUserInfo:v22];
    v28 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v24 configurationContext:v25];
    remoteAlertHandle = self->_remoteAlertHandle;
    self->_remoteAlertHandle = v28;

    v30 = objc_opt_respondsToSelector();
    v31 = self->_remoteAlertHandle;
    if (v30)
    {
      [(SBSRemoteAlertHandle *)v31 registerObserver:self];
    }

    else
    {
      [(SBSRemoteAlertHandle *)v31 addObserver:self];
    }

    v33 = MKBGetDeviceLockState();
    if (v33 && v33 != 3)
    {
      v40 = WBS_LOG_CHANNEL_PREFIXAuthorization(v33, v34);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [ASCAuthorizationPresenter presentExportFlowForProcess:windowSceneIdentifier:completionHandler:];
      }

      v41 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A588];
      v50 = @"Device must be unlocked to perform request.";
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v35 = [v41 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v42];

      (*(handlerCopy + 2))(handlerCopy, 0, v35);
      [(ASCAuthorizationPresenter *)self _invalidateWithError:v35];
    }

    else
    {
      v35 = objc_opt_new();
      if (processCopy)
      {
        v36 = [MEMORY[0x1E69D42D8] predicateForProcess:processCopy];
        [v36 setScenePersistentIdentifier:v45];
        v37 = [objc_alloc(MEMORY[0x1E69D42C0]) initWithTargetPredicate:v36];
        [v35 setPresentationTarget:v37];
      }

      [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v35];
      v38 = _Block_copy(handlerCopy);
      v39 = self->_presentExportFlowResultHandler;
      self->_presentExportFlowResultHandler = v38;
    }

    identifierCopy = v45;

    v17 = v44;
  }

  else
  {
    v32 = WBS_LOG_CHANNEL_PREFIXAuthorization(v15, v16);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ASCAuthorizationPresenter presentExportFlowForProcess:windowSceneIdentifier:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v17);
  }
}

- (void)userSelectedImportingDestinationWithBundleIdentfier:(id)identfier
{
  presentExportFlowResultHandler = self->_presentExportFlowResultHandler;
  if (presentExportFlowResultHandler)
  {
    presentExportFlowResultHandler[2](presentExportFlowResultHandler, identfier, 0);
    v5 = self->_presentExportFlowResultHandler;
    self->_presentExportFlowResultHandler = 0;
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAuthorization(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ASCAuthorizationPresenter userSelectedImportingDestinationWithBundleIdentfier:];
    }
  }
}

- (void)setTokenForImport:(id)import
{
  self->_exportDidComplete = 1;
  importCopy = import;
  WeakRetained = objc_loadWeakRetained(&self->_credentialExchangeDelegate);
  [WeakRetained setTokenForImport:importCopy];
}

- (void)getExportedCredentialData:(id)data
{
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_credentialExchangeDelegate);
  [WeakRetained getExportedCredentialData:dataCopy];
}

- (void)cancelCurrentCredentialExchangeOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_credentialExchangeDelegate);
  [WeakRetained cancelCurrentOperation];
}

- (ASCAuthorizationPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ASCAuthorizationPresenterCredentialExchangeDelegate)credentialExchangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_credentialExchangeDelegate);

  return WeakRetained;
}

- (void)presentAuthorizationWithContext:(void *)a1 forProcess:completionHandler:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Failed to get context data for presentation with error: %{private}@", v6, v7, v8, v9);
}

- (void)updateInterfaceForUserVisibleError:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() domain];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Asked to present unsupported error: %{public}@.", v6, v7, v8, v9);
}

- (void)updateInterfaceForUserVisibleError:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_1() code];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v3, v4, "Asked to display error with unrecognized code: %ld", v5, v6, v7, v8);
}

- (void)remoteAlertHandle:(void *)a1 didInvalidateWithError:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Alert handle invalidated with error: %{public}@", v6, v7, v8, v9);
}

@end