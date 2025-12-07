@interface TSPostMigrationFlow
- (TSPostMigrationFlow)initWithSession:(id)session sourceOSVersion:(id)version proximitySetupState:(unint64_t)state transferablePlanOnSource:(BOOL)source;
- (id)_createTargetProxFlowVC;
- (id)_createTransferCloudFlowVC;
- (id)_createTransferFlowVC;
- (id)_subFlowVcWithReconnectionCredentials:(BOOL)credentials;
- (id)nextViewControllerFrom:(id)from;
- (void)firstViewController:(id)controller;
- (void)prepareViewController:(id)controller completion:(id)completion;
- (void)startOverWithFirstViewController:(id)controller;
@end

@implementation TSPostMigrationFlow

- (TSPostMigrationFlow)initWithSession:(id)session sourceOSVersion:(id)version proximitySetupState:(unint64_t)state transferablePlanOnSource:(BOOL)source
{
  sessionCopy = session;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = TSPostMigrationFlow;
  v13 = [(TSSIMSetupFlow *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_session, session);
    objc_storeStrong(&v14->_sourceOSVersion, version);
    v14->_proximitySetupState = state;
    v14->_transferablePlanOnSource = source;
    v14->_isProxFlowShown = 0;
    v15 = objc_alloc(MEMORY[0x277CC37B0]);
    v16 = [v15 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v14->_ctClient;
    v14->_ctClient = v16;

    [(CoreTelephonyClient *)v14->_ctClient setDelegate:v14];
  }

  return v14;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  ctClient = self->_ctClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__TSPostMigrationFlow_firstViewController___block_invoke;
  v7[3] = &unk_279B442E8;
  objc_copyWeak(&v9, &location);
  v6 = controllerCopy;
  v8 = v6;
  [(CoreTelephonyClient *)ctClient isPreSharedKeyForReconnectionPresent:0 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__TSPostMigrationFlow_firstViewController___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _subFlowVcWithReconnectionCredentials:a2];
    [v6 prepareViewController:v5 completion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)nextViewControllerFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if ([fromCopy subFlowType] == 5 || (_createTransferCloudFlowVC = objc_msgSend(fromCopy, "subFlowType"), _createTransferCloudFlowVC == 10002))
  {
    _createTransferCloudFlowVC = [(TSPostMigrationFlow *)self _createTransferCloudFlowVC];
    v6 = _createTransferCloudFlowVC;
  }

  else
  {
    v6 = 0;
  }

  v7 = _TSLogDomain(_createTransferCloudFlowVC);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138413058;
    v10 = fromCopy;
    v11 = 2048;
    subFlowType = [fromCopy subFlowType];
    v13 = 2112;
    v14 = v6;
    v15 = 2080;
    v16 = "[TSPostMigrationFlow nextViewControllerFrom:]";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "current view:%@, current sub flow type: %lu, next view:%@ @%s", &v9, 0x2Au);
  }

  return v6;
}

- (void)startOverWithFirstViewController:(id)controller
{
  controllerCopy = controller;
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    topViewController2 = [(TSSIMSetupFlow *)self topViewController];
    subFlow = [topViewController2 subFlow];
    [subFlow startOverWithFirstViewController:controllerCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSPostMigrationFlow;
    [(TSSIMSetupFlow *)&v9 startOverWithFirstViewController:controllerCopy];
  }
}

- (void)prepareViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = completionCopy;
  if (controllerCopy)
  {
    [(TSSIMSetupFlow *)self setTopViewController:controllerCopy];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__TSPostMigrationFlow_prepareViewController_completion___block_invoke;
    v9[3] = &unk_279B44310;
    objc_copyWeak(&v13, &location);
    v12 = v8;
    v10 = controllerCopy;
    selfCopy = self;
    [(TSSIMSetupFlow *)self maybePrepareNextDisplayViewController:v10 completion:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __56__TSPostMigrationFlow_prepareViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!v6)
    {
      v5 = [*(a1 + 40) nextViewControllerFrom:*(a1 + 32)];
      if (v5)
      {
        [*(a1 + 40) prepareViewController:v5 completion:*(a1 + 48)];
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }

      goto LABEL_13;
    }

    if ([*(a1 + 32) subFlowType] == 5 || objc_msgSend(*(a1 + 32), "subFlowType") == 10002)
    {
      WeakRetained[97] = 1;
    }

    v4 = *(*(a1 + 48) + 16);
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);
  }

  v4();
LABEL_13:
}

- (id)_subFlowVcWithReconnectionCredentials:(BOOL)credentials
{
  credentialsCopy = credentials;
  v18 = *MEMORY[0x277D85DE8];
  v5 = +[TSCoreTelephonyClientCache sharedInstance];
  usingBootstrapDataService = [v5 usingBootstrapDataService];

  v7 = +[TSUtilities isWifiAvailable];
  v8 = v7;
  v9 = _TSLogDomain(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v16) = 67109634;
    DWORD1(v16) = usingBootstrapDataService;
    WORD4(v16) = 1024;
    *(&v16 + 10) = v8;
    HIWORD(v16) = 2080;
    v17 = "[TSPostMigrationFlow _subFlowVcWithReconnectionCredentials:]";
    _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "Using bootstrap: %d, on wifi:%d @%s", &v16, 0x18u);
  }

  sourceOSVersion = self->_sourceOSVersion;
  if (!sourceOSVersion)
  {
    goto LABEL_14;
  }

  v11 = [TSUtilities compareProductVersion:sourceOSVersion toProductVersion:@"26.0"];
  if (v11 == -1)
  {
    goto LABEL_14;
  }

  if (!(v8 & 1 | ((usingBootstrapDataService & 1) == 0)))
  {
    v13 = _TSLogDomain(v11);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      goto LABEL_14;
    }

    LODWORD(v16) = 136315138;
    *(&v16 + 4) = "[TSPostMigrationFlow _subFlowVcWithReconnectionCredentials:]";
    v14 = "Using bootstrap @%s";
LABEL_12:
    _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
    goto LABEL_13;
  }

  if (!self->_transferablePlanOnSource)
  {
LABEL_14:
    _createTransferCloudFlowVC = [(TSPostMigrationFlow *)self _createTransferCloudFlowVC];
    goto LABEL_15;
  }

  if (self->_session)
  {
    if (credentialsCopy)
    {
      [(CoreTelephonyClient *)self->_ctClient clearReconnectionCredentials:&__block_literal_global_0];
      _createTransferCloudFlowVC = [(TSPostMigrationFlow *)self _createTransferFlowVC];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!credentialsCopy)
  {
    v13 = _TSLogDomain(v11);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    LODWORD(v16) = 136315138;
    *(&v16 + 4) = "[TSPostMigrationFlow _subFlowVcWithReconnectionCredentials:]";
    v14 = "No reconnection credentials @%s";
    goto LABEL_12;
  }

  _createTransferCloudFlowVC = [(TSPostMigrationFlow *)self _createTargetProxFlowVC];
LABEL_15:

  return _createTransferCloudFlowVC;
}

- (id)_createTransferCloudFlowVC
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = [TSSubFlowViewController alloc];
  v11[0] = &unk_2875837D8;
  v10[0] = @"FlowTypeKey";
  v10[1] = @"ProximitySetupStateKey";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_proximitySetupState];
  v11[1] = v4;
  v10[2] = @"ProxPlansFilteredKey";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isProxFlowShown];
  v11[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  v8 = [(TSSubFlowViewController *)v3 initWithOptions:v6 navigationController:navigationController delegate:self];

  return v8;
}

- (id)_createTransferFlowVC
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = [TSSubFlowViewController alloc];
  v11[0] = @"FlowTypeKey";
  v11[1] = @"MessageSessionKey";
  session = self->_session;
  v12[0] = &unk_2875837F0;
  v12[1] = session;
  v11[2] = @"HasTransferablePlan";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_transferablePlanOnSource];
  v12[2] = v5;
  v12[3] = MEMORY[0x277CBEC28];
  v11[3] = @"IsStandaloneProximityTransfer";
  v11[4] = @"TransferBackPlan";
  null = [MEMORY[0x277CBEB68] null];
  v11[5] = @"IsPostMigrationFlowKey";
  v12[4] = null;
  v12[5] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:6];
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  v9 = [(TSSubFlowViewController *)v3 initWithOptions:v7 navigationController:navigationController delegate:self];

  return v9;
}

- (id)_createTargetProxFlowVC
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = [TSSubFlowViewController alloc];
  v10[0] = @"FlowTypeKey";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
  v11[0] = v4;
  v11[1] = MEMORY[0x277CBEC28];
  v10[1] = @"IsClientKey";
  v10[2] = @"TransferBackPlan";
  null = [MEMORY[0x277CBEB68] null];
  v10[3] = @"IsPostMigrationFlowKey";
  v11[2] = null;
  v11[3] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  v8 = [(TSSubFlowViewController *)v3 initWithOptions:v6 navigationController:navigationController delegate:self];

  return v8;
}

@end