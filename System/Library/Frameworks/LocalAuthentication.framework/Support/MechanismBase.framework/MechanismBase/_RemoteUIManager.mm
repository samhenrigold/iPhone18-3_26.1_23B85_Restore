@interface _RemoteUIManager
- (_RemoteUIManager)init;
- (_RemoteUIManager)initWithConfig:(id)config;
- (id)anonymousListener;
- (void)_activatePendingUIIfNeeded;
- (void)_activateUi;
- (void)_assignPendingRequest:(id)request reply:(id)reply;
- (void)_replyOnceToShowUi:(BOOL)ui error:(id)error;
- (void)_setupUiActivationTimeoutForParams:(id)params;
- (void)anonymousListenerForHostedController:(int64_t)controller mechanism:(id)mechanism reply:(id)reply;
- (void)checkHasPendingUIRequestsForRemoteUI:(id)i completion:(id)completion;
- (void)connectRemoteUI:(id)i requestID:(id)d reply:(id)reply;
- (void)connectionToViewServiceInvalidatedForIdentifier:(id)identifier reply:(id)reply;
- (void)didReceiveExpectedError:(id)error;
- (void)didReceiveUnexpectedError:(id)error;
- (void)didSuccessfullyFinishForRequestIdentifier:(id)identifier;
- (void)disconnectRemoteUI;
- (void)dismissRemoteUI:(id)i uiMechanism:(id)mechanism uiDisappeared:(BOOL)disappeared shouldIdle:(BOOL)idle reply:(id)reply;
- (void)prepareForHostedController:(int64_t)controller mechanism:(id)mechanism reply:(id)reply;
- (void)showUIWithParams:(id)params reply:(id)reply;
@end

@implementation _RemoteUIManager

- (_RemoteUIManager)init
{
  v3 = objc_alloc_init(RemoteUIManagerConfig);
  v4 = [(_RemoteUIManager *)self initWithConfig:v3];

  return v4;
}

- (_RemoteUIManager)initWithConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = _RemoteUIManager;
  v6 = [(_RemoteUIManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
  }

  return v7;
}

- (void)showUIWithParams:(id)params reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  replyCopy = reply;
  v9 = LALogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = paramsCopy;
    _os_log_impl(&dword_238B95000, v9, OS_LOG_TYPE_DEFAULT, "showing UI: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&self->_pendingRequest, params);
  objc_initWeak(&location, self);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __43___RemoteUIManager_showUIWithParams_reply___block_invoke;
  v20 = &unk_278A627B8;
  objc_copyWeak(&v23, &location);
  v10 = paramsCopy;
  v21 = v10;
  v11 = replyCopy;
  v22 = v11;
  v12 = MEMORY[0x23EE73C30](&v17);
  pendingUiActivationBlock = self->_pendingUiActivationBlock;
  self->_pendingUiActivationBlock = v12;

  if (self->_dismissingUi)
  {
    v14 = LALogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      dismissingUi = self->_dismissingUi;
      dismissUiCounter = self->_dismissUiCounter;
      *buf = 138543618;
      v26 = dismissingUi;
      v27 = 1024;
      v28 = dismissUiCounter;
      _os_log_impl(&dword_238B95000, v14, OS_LOG_TYPE_DEFAULT, "Won't activate UI now because %{public}@ is being dismissed (counter:%d)", buf, 0x12u);
    }
  }

  else
  {
    [(_RemoteUIManager *)self _activateUi:v17];
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)anonymousListenerForHostedController:(int64_t)controller mechanism:(id)mechanism reply:(id)reply
{
  replyCopy = reply;
  mechanismCopy = mechanism;
  v12 = [[RemoteUIParams alloc] initWithMechanism:mechanismCopy hostedRemoteController:controller];

  identifier = [(RemoteUIParams *)v12 identifier];
  v11 = [(_RemoteUIManager *)self _anonymousListenerWithIdentifier:identifier];

  replyCopy[2](replyCopy, v11);
}

- (void)prepareForHostedController:(int64_t)controller mechanism:(id)mechanism reply:(id)reply
{
  v14 = *MEMORY[0x277D85DE8];
  mechanismCopy = mechanism;
  replyCopy = reply;
  v10 = LALogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = mechanismCopy;
    _os_log_impl(&dword_238B95000, v10, OS_LOG_TYPE_DEFAULT, "preparing %{public}@ for remote view controller scenario", &v12, 0xCu);
  }

  v11 = [[RemoteUIParams alloc] initWithMechanism:mechanismCopy hostedRemoteController:controller];
  [(_RemoteUIManager *)self _assignPendingRequest:v11 reply:replyCopy];
}

- (void)connectionToViewServiceInvalidatedForIdentifier:(id)identifier reply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = LALogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = identifierCopy;
    _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_DEFAULT, "connectionToViewServiceInvalidatedForIdentifier: %@", &v16, 0xCu);
  }

  v9 = [MEMORY[0x277CD47F0] silentInternalErrorWithMessage:@"UI service connection invalidated."];
  if (identifierCopy && (-[RemoteUIParams identifier](self->_request, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [identifierCopy isEqualToString:v10], v10, (v11 & 1) == 0))
  {
    v12 = LALogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(RemoteUIParams *)self->_request identifier];
      v16 = 138412546;
      v17 = identifier;
      v18 = 2112;
      v19 = identifierCopy;
      _os_log_impl(&dword_238B95000, v12, OS_LOG_TYPE_DEFAULT, "Current request identifier: %@ is different from the connection identifier: %@", &v16, 0x16u);
    }
  }

  else if (self->_pendingShowUiReply)
  {
    [(_RemoteUIManager *)self _replyOnceToShowUi:0 error:v9];
  }

  else
  {
    uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];
    [uiMechanism uiFailureWithError:v9];

    request = self->_request;
    self->_request = 0;
  }

  replyCopy[2](replyCopy);
}

- (void)dismissRemoteUI:(id)i uiMechanism:(id)mechanism uiDisappeared:(BOOL)disappeared shouldIdle:(BOOL)idle reply:(id)reply
{
  idleCopy = idle;
  disappearedCopy = disappeared;
  v61 = *MEMORY[0x277D85DE8];
  iCopy = i;
  mechanismCopy = mechanism;
  replyCopy = reply;
  v16 = replyCopy;
  v40 = mechanismCopy;
  if (iCopy)
  {
    v17 = self->_dismissUiCounter + 1;
    self->_dismissUiCounter = v17;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __79___RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke;
    v50[3] = &unk_278A627E0;
    v50[4] = self;
    v18 = iCopy;
    v51 = v18;
    v54 = v17;
    v19 = mechanismCopy;
    v52 = v19;
    v38 = v16;
    v53 = v16;
    v39 = MEMORY[0x23EE73C30](v50);
    v20 = LALogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];
      *buf = 138543874;
      v56 = v18;
      v57 = 2114;
      v58 = uiMechanism;
      v59 = 1024;
      v60 = v17;
      _os_log_impl(&dword_238B95000, v20, OS_LOG_TYPE_DEFAULT, "Dismissing %{public}@ that belongs to %{public}@, index:%d", buf, 0x1Cu);
    }

    objc_storeStrong(&self->_dismissingUi, i);
    if (disappearedCopy)
    {
      (v39)[2](v39, @"immediate reply, UI is already down");
    }

    else
    {
      self->_ignoreDeactivation = 1;
      objc_initWeak(buf, self);
      if (idleCopy)
      {
        request = [v19 request];
        payload = [request payload];
        v28 = [payload objectForKeyedSubscript:*MEMORY[0x277D23ED8]];

        endpoint = [v28 endpoint];
      }

      else
      {
        endpoint = 0;
      }

      activator = [(RemoteUIManagerConfig *)self->_config activator];
      request2 = [v19 request];
      v32 = [activator hasInvalidatedUIForRequest:{objc_msgSend(request2, "identifier")}];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __79___RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke_98;
      v46[3] = &unk_278A62830;
      objc_copyWeak(&v49, buf);
      v33 = v39;
      v48 = v33;
      v34 = v18;
      v47 = v34;
      [v34 dismissRemoteUIWithIdleEndpoint:endpoint wasInvalidated:v32 completionHandler:v46];

      [(RemoteUIManagerConfig *)self->_config deactivateTimeout];
      v36 = dispatch_time(0, (v35 * 1000000000.0));
      queue = [(RemoteUIManagerConfig *)self->_config queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79___RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke_3;
      block[3] = &unk_278A62858;
      objc_copyWeak(&v44, buf);
      v45 = v17;
      v43 = v33;
      v42 = v34;
      dispatch_after(v36, queue, block);

      objc_destroyWeak(&v44);
      objc_destroyWeak(&v49);

      objc_destroyWeak(buf);
    }

    v25 = v38;
  }

  else
  {
    v22 = replyCopy;
    if (self->_pendingShowUiReply)
    {
      self->_uiDismissedBeforeConnection = 1;
    }

    activator2 = [(RemoteUIManagerConfig *)self->_config activator];
    request3 = [mechanismCopy request];
    [activator2 invalidateUIForRequest:{objc_msgSend(request3, "identifier")}];

    v25 = v22;
    if (v22)
    {
      v22[2](v22);
    }
  }
}

- (void)_activatePendingUIIfNeeded
{
  if (self->_pendingUiActivationBlock)
  {
    uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];
    if ([uiMechanism isRunning])
    {

LABEL_6:
      objc_initWeak(&location, self);
      queue = [(RemoteUIManagerConfig *)self->_config queue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __46___RemoteUIManager__activatePendingUIIfNeeded__block_invoke;
      v13[3] = &unk_278A626F0;
      objc_copyWeak(&v14, &location);
      dispatch_async(queue, v13);

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
      return;
    }

    uiMechanism2 = [(RemoteUIParams *)self->_pendingRequest uiMechanism];
    uiMechanism3 = [(RemoteUIParams *)self->_request uiMechanism];
    v6 = uiMechanism3;
    if (uiMechanism2 == uiMechanism3)
    {
    }

    else
    {
      uiMechanism4 = [(RemoteUIParams *)self->_pendingRequest uiMechanism];
      isRunning = [uiMechanism4 isRunning];

      if (isRunning)
      {
        goto LABEL_6;
      }
    }

    v10 = LALogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_RemoteUIManager *)v10 _activatePendingUIIfNeeded];
    }

    pendingUiActivationBlock = self->_pendingUiActivationBlock;
    self->_pendingUiActivationBlock = 0;

    pendingRequest = self->_pendingRequest;
    self->_pendingRequest = 0;
  }
}

- (void)_activateUi
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[_RemoteUIManager _activateUi]";
  v4 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_238B95000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v2, 0x16u);
}

- (void)_assignPendingRequest:(id)request reply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  replyCopy = reply;
  v8 = LALogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    uiMechanism = [(RemoteUIParams *)requestCopy uiMechanism];
    v19 = 138543362;
    v20 = uiMechanism;
    _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_INFO, "%{public}@ is waiting to connect with the remote UI", &v19, 0xCu);
  }

  v10 = MEMORY[0x277CD47F0];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"UI interrupted by another authentication"];
  v12 = [v10 errorWithCode:-4 message:v11];

  pendingShowUiReply = self->_pendingShowUiReply;
  if (pendingShowUiReply)
  {
    pendingShowUiReply[2](pendingShowUiReply, 0, v12);
  }

  else
  {
    uiMechanism2 = [(RemoteUIParams *)self->_request uiMechanism];
    [uiMechanism2 failAuthenticationWithError:v12];
  }

  request = self->_request;
  self->_request = requestCopy;
  v16 = requestCopy;

  v17 = MEMORY[0x23EE73C30](replyCopy);
  v18 = self->_pendingShowUiReply;
  self->_pendingShowUiReply = v17;

  self->_uiDismissedBeforeConnection = 0;
  ++self->_showUiCounter;
}

- (void)_setupUiActivationTimeoutForParams:(id)params
{
  v17 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  showUiCounter = self->_showUiCounter;
  objc_initWeak(&location, self);
  [(RemoteUIManagerConfig *)self->_config effectiveActivateTimeoutForParams:paramsCopy];
  v7 = v6;
  v8 = LALogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v7;
    _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_DEFAULT, "Setting up activation watchdog with %.2f seconds timeout", buf, 0xCu);
  }

  v9 = dispatch_time(0, (*&v7 * 1000000000.0));
  queue = [(RemoteUIManagerConfig *)self->_config queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55___RemoteUIManager__setupUiActivationTimeoutForParams___block_invoke;
  v11[3] = &unk_278A62880;
  objc_copyWeak(v12, &location);
  v13 = showUiCounter;
  v12[1] = v7;
  dispatch_after(v9, queue, v11);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

- (void)_replyOnceToShowUi:(BOOL)ui error:(id)error
{
  uiCopy = ui;
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (self->_pendingShowUiReply && ([MEMORY[0x277D24060] error:errorCopy hasCode:*MEMORY[0x277D23E88] subcode:*MEMORY[0x277D23EC8]] & 1) == 0)
  {
    v7 = LALogForCategory();
    if ([MEMORY[0x277CD47F0] error:errorCopy hasCode:-1000])
    {
      v8 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v8 = OS_LOG_TYPE_INFO;
    }

    if (os_log_type_enabled(v7, v8))
    {
      v9 = @"success";
      if (!uiCopy)
      {
        v9 = errorCopy;
      }

      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_238B95000, v7, v8, "showUI result: %{public}@", &v12, 0xCu);
    }

    (*(self->_pendingShowUiReply + 2))();
    pendingShowUiReply = self->_pendingShowUiReply;
    self->_pendingShowUiReply = 0;

    if (!uiCopy)
    {
      request = self->_request;
      self->_request = 0;
    }
  }
}

- (void)connectRemoteUI:(id)i requestID:(id)d reply:(id)reply
{
  iCopy = i;
  dCopy = d;
  replyCopy = reply;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __52___RemoteUIManager_connectRemoteUI_requestID_reply___block_invoke;
  v25[3] = &unk_278A628A8;
  v11 = iCopy;
  v26 = v11;
  v12 = replyCopy;
  v27 = v12;
  v13 = MEMORY[0x23EE73C30](v25);
  uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];

  if (!uiMechanism)
  {
    v16 = MEMORY[0x277CD47F0];
    v17 = @"No pending UI mechanism.";
LABEL_7:
    v18 = [v16 errorWithCode:-1000 message:v17];
    (v13)[2](v13, 0, 0, v18);

    goto LABEL_9;
  }

  if (!self->_pendingShowUiReply)
  {
    v16 = MEMORY[0x277CD47F0];
    v17 = @"UI mechanism already connected.";
    goto LABEL_7;
  }

  if (self->_uiDismissedBeforeConnection)
  {
    v15 = [MEMORY[0x277CD47F0] errorWithCode:-1000 message:@"UI was already dismissed from server side."];
    (v13)[2](v13, 0, 0, v15);
    [(_RemoteUIManager *)self _replyOnceToShowUi:0 error:v15];
  }

  else
  {
    objc_initWeak(&location, self);
    uiMechanism2 = [(RemoteUIParams *)self->_request uiMechanism];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __52___RemoteUIManager_connectRemoteUI_requestID_reply___block_invoke_131;
    v20[3] = &unk_278A628D0;
    objc_copyWeak(&v23, &location);
    v22 = v13;
    v21 = v11;
    [uiMechanism2 connectRemoteUI:v21 requestID:dCopy reply:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

LABEL_9:
}

- (void)disconnectRemoteUI
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];
    v6 = 138543362;
    v7 = uiMechanism;
    _os_log_impl(&dword_238B95000, v3, OS_LOG_TYPE_DEFAULT, "Disconnecting %{public}@ from remote UI.", &v6, 0xCu);
  }

  uiMechanism2 = [(RemoteUIParams *)self->_request uiMechanism];
  [uiMechanism2 disconnectRemoteUI];
}

- (void)checkHasPendingUIRequestsForRemoteUI:(id)i completion:(id)completion
{
  iCopy = i;
  completionCopy = completion;
  uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];
  isRunning = [uiMechanism isRunning];

  if (isRunning)
  {
    remoteUI = [(RemoteUIParams *)self->_request remoteUI];

    if (remoteUI == iCopy)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 2 * (self->_pendingRequest != 0);
  }

  completionCopy[2](completionCopy, v10);
}

- (id)anonymousListener
{
  identifier = [(RemoteUIParams *)self->_request identifier];
  v4 = [(_RemoteUIManager *)self _anonymousListenerWithIdentifier:identifier];

  return v4;
}

- (void)didReceiveExpectedError:(id)error
{
  v8 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (self->_ignoreDeactivation)
  {
    v5 = LALogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = errorCopy;
      _os_log_impl(&dword_238B95000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring expected deactivation with error: %@", &v6, 0xCu);
    }

    self->_ignoreDeactivation = 0;
  }

  else
  {
    [(_RemoteUIManager *)self _replyOnceToShowUi:0 error:errorCopy];
  }
}

- (void)didReceiveUnexpectedError:(id)error
{
  if (self->_pendingShowUiReply)
  {
    errorCopy = error;
    [(_RemoteUIManager *)self _replyOnceToShowUi:0 error:?];
  }

  else
  {
    request = self->_request;
    errorCopy2 = error;
    errorCopy = [(RemoteUIParams *)request uiMechanism];
    [errorCopy failAuthenticationWithError:errorCopy2];
  }
}

- (void)didSuccessfullyFinishForRequestIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  ignoreDeactivation = self->_ignoreDeactivation;
  v6 = LALogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (ignoreDeactivation)
  {
    if (v7)
    {
      v12 = 138543362;
      v13 = identifierCopy;
      _os_log_impl(&dword_238B95000, v6, OS_LOG_TYPE_DEFAULT, "Activator did successfully finish request identifier: %{public}@ but waiting for UI to be dismissed", &v12, 0xCu);
    }

    self->_ignoreDeactivation = 0;
  }

  else
  {
    if (v7)
    {
      v12 = 138543362;
      v13 = identifierCopy;
      _os_log_impl(&dword_238B95000, v6, OS_LOG_TYPE_DEFAULT, "Activator did successfully finish request identifier: %{public}@", &v12, 0xCu);
    }

    identifier = [(RemoteUIParams *)self->_request identifier];
    v9 = [identifierCopy isEqualToString:identifier];

    if (v9)
    {
      uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];
      [uiMechanism disconnectRemoteUI];

      request = self->_request;
      self->_request = 0;
    }

    [(_RemoteUIManager *)self _activatePendingUIIfNeeded];
  }
}

@end