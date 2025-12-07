@interface TSProximityTargetTransferFlow
- (TSProximityTargetTransferFlow)initWithTransferBackPlan:(id)plan isPostMigrationFlow:(BOOL)flow;
- (id)_createTransferSubFlowVcWithSession:(id)session isPostmigrationFlow:(BOOL)flow;
- (id)_firstViewController;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)_beginAdvertising:(id)advertising;
- (void)_endAdvertising;
- (void)_handleSKEvent:(id)event;
- (void)_maybeSubmitAutoReconnectionDetails;
- (void)_startBackgroundTask;
- (void)_stopBackgroundTask;
- (void)appBackgrounded;
- (void)appForegrounded;
- (void)attemptFailed;
- (void)dealloc;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
- (void)setCancelNavigationBarItems:(id)items;
- (void)userDidTapCancel;
@end

@implementation TSProximityTargetTransferFlow

- (TSProximityTargetTransferFlow)initWithTransferBackPlan:(id)plan isPostMigrationFlow:(BOOL)flow
{
  planCopy = plan;
  v12.receiver = self;
  v12.super_class = TSProximityTargetTransferFlow;
  v8 = [(TSSIMSetupFlow *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v8 action:sel_userDidTapCancel];
    cancelButton = v8->_cancelButton;
    v8->_cancelButton = v9;

    v8->_backgroundTask = *MEMORY[0x277D767B0];
    objc_storeStrong(&v8->_transferBackPlan, plan);
    v8->_isAuthenticationCompleted = 0;
    v8->_isPostMigrationFlow = flow;
  }

  return v8;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[TSProximityTargetTransferFlow dealloc]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "end target proximity flow @%s", buf, 0xCu);
  }

  [(TSProximityTargetTransferFlow *)self _stopBackgroundTask];
  [(TSProximityTargetTransferFlow *)self _endAdvertising];
  v4.receiver = self;
  v4.super_class = TSProximityTargetTransferFlow;
  [(TSProximityTargetTransferFlow *)&v4 dealloc];
}

- (id)firstViewController
{
  v2 = _TSLogDomain(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSProximityTargetTransferFlow *)v2 firstViewController];
  }

  return 0;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TSProximityTargetTransferFlow_firstViewController___block_invoke;
  v6[3] = &unk_279B45270;
  v5 = controllerCopy;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [(TSProximityTargetTransferFlow *)self _beginAdvertising:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __53__TSProximityTargetTransferFlow_firstViewController___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _TSLogDomain(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2080;
      v12 = "[TSProximityTargetTransferFlow firstViewController:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "activate bt server failed : %@ @%s", &v9, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained _firstViewController];
    (*(v6 + 16))(v6, v8);
  }
}

- (id)_createTransferSubFlowVcWithSession:(id)session isPostmigrationFlow:(BOOL)flow
{
  flowCopy = flow;
  v17[7] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (!sessionCopy)
  {
    null = _TSLogDomain(0);
    if (os_log_type_enabled(null, OS_LOG_TYPE_ERROR))
    {
      [TSProximityTargetTransferFlow _createTransferSubFlowVcWithSession:null isPostmigrationFlow:?];
    }

    v14 = 0;
    goto LABEL_9;
  }

  v7 = [TSSubFlowViewController alloc];
  v16[0] = @"FlowTypeKey";
  v16[1] = @"MessageSessionKey";
  v17[0] = &unk_287583E08;
  v17[1] = sessionCopy;
  v16[2] = @"HasTransferablePlan";
  v16[3] = @"IsStandaloneProximityTransfer";
  v17[2] = MEMORY[0x277CBEC38];
  v17[3] = MEMORY[0x277CBEC38];
  v16[4] = @"TransferBackPlan";
  transferBackPlan = self->_transferBackPlan;
  null = transferBackPlan;
  if (!transferBackPlan)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v17[4] = null;
  v16[5] = @"IsPostMigrationFlowKey";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:flowCopy];
  v17[5] = v10;
  v16[6] = @"IsUsingPreSharedKey";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:flowCopy];
  v17[6] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  v14 = [(TSSubFlowViewController *)v7 initWithOptions:v12 navigationController:navigationController delegate:self];

  if (!transferBackPlan)
  {
LABEL_9:
  }

  return v14;
}

- (id)nextViewControllerFrom:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && self->_isAuthenticationCompleted)
    {
      templateSession = [(SSProximityDevice *)self->_btServer templateSession];
      v5 = [(TSProximityTargetTransferFlow *)self _createTransferSubFlowVcWithSession:templateSession isPostmigrationFlow:self->_isPostMigrationFlow];

      if (v5)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

  if (![(NSString *)self->_pin length]|| (v5 = [[TSProximityPINCodeViewController alloc] initWithPIN:self->_pin]) == 0)
  {
LABEL_10:
    [(TSProximityTargetTransferFlow *)self _endAdvertising];
    [(TSProximityTargetTransferFlow *)self _stopBackgroundTask];
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (void)userDidTapCancel
{
  [(TSProximityTargetTransferFlow *)self _endAdvertising];
  v3.receiver = self;
  v3.super_class = TSProximityTargetTransferFlow;
  [(TSSIMSetupFlow *)&v3 userDidTapCancel];
}

- (void)attemptFailed
{
  [(TSProximityTargetTransferFlow *)self _endAdvertising];
  v3.receiver = self;
  v3.super_class = TSProximityTargetTransferFlow;
  [(TSSIMSetupFlow *)&v3 attemptFailed];
}

- (void)appForegrounded
{
  v6.receiver = self;
  v6.super_class = TSProximityTargetTransferFlow;
  [(TSSIMSetupFlow *)&v6 appForegrounded];
  if (![(TSSIMSetupFlow *)self isFlowFinished]&& !self->_btServer)
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __48__TSProximityTargetTransferFlow_appForegrounded__block_invoke;
    v3[3] = &unk_279B44828;
    objc_copyWeak(&v4, &location);
    [(TSProximityTargetTransferFlow *)self _beginAdvertising:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __48__TSProximityTargetTransferFlow_appForegrounded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _TSLogDomain(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __48__TSProximityTargetTransferFlow_appForegrounded__block_invoke_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _endAdvertising];

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 attemptFailed];
  }
}

- (void)appBackgrounded
{
  v5.receiver = self;
  v5.super_class = TSProximityTargetTransferFlow;
  [(TSSIMSetupFlow *)&v5 appBackgrounded];
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(TSProximityTargetTransferFlow *)self _endAdvertising];
  }
}

- (void)_beginAdvertising:(id)advertising
{
  v17 = *MEMORY[0x277D85DE8];
  advertisingCopy = advertising;
  v5 = [SSProximityDevice alloc];
  v6 = [(SSProximityDevice *)v5 initWithQueue:MEMORY[0x277D85CD0] endpoint:2 remoteInfo:0];
  btServer = self->_btServer;
  self->_btServer = v6;

  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __51__TSProximityTargetTransferFlow__beginAdvertising___block_invoke;
  v12 = &unk_279B45A38;
  objc_copyWeak(&v13, &location);
  v8 = _TSLogDomain([(SSProximityDevice *)self->_btServer setEventHandler:&v9]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[TSProximityTargetTransferFlow _beginAdvertising:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "activate server @%s", buf, 0xCu);
  }

  self->_waitingStartTime = CFAbsoluteTimeGetCurrent();
  [(SSProximityDevice *)self->_btServer activateUsingPreSharedKey:self->_isPostMigrationFlow completion:advertisingCopy, v9, v10, v11, v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __51__TSProximityTargetTransferFlow__beginAdvertising___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSKEvent:v3];
}

- (void)_endAdvertising
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TSProximityTargetTransferFlow _endAdvertising]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "invalidate server @%s", &v5, 0xCu);
  }

  [(SSProximityDevice *)self->_btServer invalidate:0];
  [(SSProximityDevice *)self->_btServer setEventHandler:0];
  btServer = self->_btServer;
  self->_btServer = 0;
}

- (void)_handleSKEvent:(id)event
{
  *&v27[13] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = _TSLogDomain(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    v25 = eventCopy;
    v26 = 2080;
    *v27 = "[TSProximityTargetTransferFlow _handleSKEvent:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "receive SKEvent:%@ @%s", &v24, 0x16u);
  }

  eventType = [eventCopy eventType];
  if (eventType == 140)
  {
    error = [eventCopy error];

    if (!error && !self->_isAuthenticationCompleted)
    {
      self->_isAuthenticationCompleted = 1;
      topViewController = [(TSSIMSetupFlow *)self topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        topViewController2 = [(TSSIMSetupFlow *)self topViewController];
        [topViewController2 connectionEstablished];
      }

      [(TSProximityTargetTransferFlow *)self _maybeSubmitAutoReconnectionDetails];
      topViewController3 = [(TSSIMSetupFlow *)self topViewController];
      [(TSSIMSetupFlow *)self viewControllerDidComplete:topViewController3];
      goto LABEL_22;
    }
  }

  else if (eventType == 110)
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();
    if (v7)
    {
      topViewController3 = eventCopy;
      v9 = _TSLogDomain(topViewController3);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        password = [topViewController3 password];
        passwordType = [topViewController3 passwordType];
        v24 = 138412802;
        v25 = password;
        v26 = 1024;
        *v27 = passwordType;
        v27[2] = 2080;
        *&v27[3] = "[TSProximityTargetTransferFlow _handleSKEvent:]";
        _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "pairing code:%@, type:%d @%s", &v24, 0x1Cu);
      }

      password2 = [topViewController3 password];
      pin = self->_pin;
      self->_pin = password2;

      topViewController4 = [(TSSIMSetupFlow *)self topViewController];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      topViewController5 = [(TSSIMSetupFlow *)self topViewController];
      topViewController6 = topViewController5;
      if (v15)
      {
        [topViewController5 updatePIN:self->_pin];
      }

      else
      {
        objc_opt_class();
        v22 = objc_opt_isKindOfClass();

        if (v22)
        {
          topViewController6 = [(TSSIMSetupFlow *)self topViewController];
          [(TSSIMSetupFlow *)self viewControllerDidComplete:topViewController6];
        }

        else
        {
          topViewController6 = _TSLogDomain(v23);
          if (os_log_type_enabled(topViewController6, OS_LOG_TYPE_ERROR))
          {
            [(TSProximityTargetTransferFlow *)self _handleSKEvent:topViewController6];
          }
        }
      }
    }

    else
    {
      topViewController3 = _TSLogDomain(v7);
      if (os_log_type_enabled(topViewController3, OS_LOG_TYPE_ERROR))
      {
        [(TSProximityTargetTransferFlow *)eventCopy _handleSKEvent:topViewController3];
      }
    }

LABEL_22:
  }
}

- (void)setCancelNavigationBarItems:(id)items
{
  itemsCopy = items;
  v5 = +[TSUtilities isPad];
  navigationItem = [itemsCopy navigationItem];
  v7 = navigationItem;
  cancelButton = self->_cancelButton;
  if (v5)
  {
    [navigationItem setRightBarButtonItem:cancelButton];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:cancelButton];
  }

  navigationItem2 = [itemsCopy navigationItem];

  [navigationItem2 setHidesBackButton:1 animated:0];
}

- (id)_firstViewController
{
  v13 = *MEMORY[0x277D85DE8];
  [(TSProximityTargetTransferFlow *)self _startBackgroundTask];
  if (self->_isPostMigrationFlow)
  {
    v3 = objc_alloc_init(TSTargetReconnectWaitingViewController);
  }

  else
  {
    v4 = [TSProximityWaitingViewController alloc];
    btServer = self->_btServer;
    phoneNumber = [self->_transferBackPlan phoneNumber];
    v3 = [(TSProximityWaitingViewController *)v4 initWithBTServer:btServer transferBackPhoneNumber:phoneNumber];
  }

  [(TSTargetReconnectWaitingViewController *)v3 setDelegate:self];
  v7 = _TSLogDomain([(TSSIMSetupFlow *)self setTopViewController:v3]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v3;
    v11 = 2080;
    v12 = "[TSProximityTargetTransferFlow _firstViewController]";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "first view controller : %@ @%s", &v9, 0x16u);
  }

  return v3;
}

- (void)_startBackgroundTask
{
  if (*MEMORY[0x277D767B0] == self->_backgroundTask)
  {
    objc_initWeak(&location, self);
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__TSProximityTargetTransferFlow__startBackgroundTask__block_invoke;
    v4[3] = &unk_279B44400;
    objc_copyWeak(&v5, &location);
    self->_backgroundTask = [mEMORY[0x277D75128] beginBackgroundTaskWithExpirationHandler:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __53__TSProximityTargetTransferFlow__startBackgroundTask__block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TSProximityTargetTransferFlow _startBackgroundTask]_block_invoke";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "background task expired @%s", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopBackgroundTask];
}

- (void)_stopBackgroundTask
{
  v2 = *MEMORY[0x277D767B0];
  if (*MEMORY[0x277D767B0] != self->_backgroundTask)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] endBackgroundTask:self->_backgroundTask];

    self->_backgroundTask = v2;
  }
}

- (void)_maybeSubmitAutoReconnectionDetails
{
  if (self->_isPostMigrationFlow)
  {
    v3 = CFAbsoluteTimeGetCurrent() - self->_waitingStartTime;
    v5 = +[TSCoreTelephonyClientCache sharedInstance];
    v4 = [objc_alloc(MEMORY[0x277CC3608]) initWithSuccess:1 skipped:0 duration:v3];
    [v5 submitAutoReconnectionDetails:v4];
  }
}

- (void)firstViewController
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSProximityTargetTransferFlow firstViewController]";
}

- (void)_createTransferSubFlowVcWithSession:(os_log_t)log isPostmigrationFlow:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSProximityTargetTransferFlow _createTransferSubFlowVcWithSession:isPostmigrationFlow:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid template session @%s", &v1, 0xCu);
}

void __48__TSProximityTargetTransferFlow_appForegrounded__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "[TSProximityTargetTransferFlow appForegrounded]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]bt advertising failed : %@ @%s", v1, 0x16u);
}

- (void)_handleSKEvent:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4[0] = 67109634;
  v4[1] = [a1 eventType];
  v5 = 2112;
  v6 = a1;
  v7 = 2080;
  v8 = "[TSProximityTargetTransferFlow _handleSKEvent:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]invalid SKEvent class for event : %d : %@ @%s", v4, 0x1Cu);
}

- (void)_handleSKEvent:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 topViewController];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v5 = "[TSProximityTargetTransferFlow _handleSKEvent:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]unexpect top view controller : %@ @%s", v4, 0x16u);
}

@end