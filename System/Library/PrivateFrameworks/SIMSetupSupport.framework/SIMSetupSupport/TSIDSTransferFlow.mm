@interface TSIDSTransferFlow
- (TSIDSTransferFlow)init;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)firstViewController:(id)controller;
- (void)handleTransferringWatchdogExpiry;
- (void)launchSecureIntentUI:(id)i descriptors:(id)descriptors isLocalConvertFlow:(BOOL)flow isSecureIntentRequired:(BOOL)required isDtoEvaluationRequired:(BOOL)evaluationRequired completion:(id)completion;
- (void)transferEventUpdate:(id)update;
@end

@implementation TSIDSTransferFlow

- (TSIDSTransferFlow)init
{
  v8.receiver = self;
  v8.super_class = TSIDSTransferFlow;
  v2 = [(TSSIMSetupFlow *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
    client = v2->_client;
    v2->_client = v4;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
  }

  v7.receiver = v2;
  v7.super_class = TSIDSTransferFlow;
  return [(TSSIMSetupFlow *)&v7 init];
}

- (id)firstViewController
{
  v3 = [TSIDSSimTransferringViewController alloc];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"PRXCARD_TRANSFERRING_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"PRXCARD_TRANSFERRING_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
  v8 = [(TSIDSSimTransferringViewController *)v3 initWithTitle:v5 subtitle:v7];

  [(TSIDSSimTransferringViewController *)v8 setDelegate:self];
  [(TSSIMSetupFlow *)self setTopViewController:v8];
  if (!self->_transferringWatchDogTimer)
  {
    v9 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_handleTransferringWatchdogExpiry selector:0 userInfo:0 repeats:120.0];
    transferringWatchDogTimer = self->_transferringWatchDogTimer;
    self->_transferringWatchDogTimer = v9;
  }

  return v8;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  firstViewController = [(TSIDSTransferFlow *)self firstViewController];
  (*(controller + 2))(controllerCopy, firstViewController);
}

- (id)nextViewControllerFrom:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 || ([fromCopy isSecureIntentFailed])
    {
      v7 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  secureIntentProxCard = [(TSIDSTransferFlow *)self secureIntentProxCard];

  if (!secureIntentProxCard)
  {
LABEL_7:
    secureIntentProxCard2 = [[TSPRXSIMTransferCompleteViewController alloc] initWithoutTargetSyncAndSelectedPlansCount:self->_selectedTransferPlansCount];
    goto LABEL_8;
  }

  secureIntentProxCard2 = [(TSIDSTransferFlow *)self secureIntentProxCard];
LABEL_8:
  v7 = secureIntentProxCard2;
LABEL_9:

  return v7;
}

- (void)handleTransferringWatchdogExpiry
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TSIDSTransferFlow handleTransferringWatchdogExpiry]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "handle 2 min transferring watchdog timer expired @%s", &v7, 0xCu);
  }

  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    topViewController2 = [(TSSIMSetupFlow *)self topViewController];
    [(TSSIMSetupFlow *)self viewControllerDidComplete:topViewController2];
  }
}

- (void)launchSecureIntentUI:(id)i descriptors:(id)descriptors isLocalConvertFlow:(BOOL)flow isSecureIntentRequired:(BOOL)required isDtoEvaluationRequired:(BOOL)evaluationRequired completion:(id)completion
{
  evaluationRequiredCopy = evaluationRequired;
  requiredCopy = required;
  flowCopy = flow;
  v26 = *MEMORY[0x277D85DE8];
  iCopy = i;
  descriptorsCopy = descriptors;
  completionCopy = completion;
  v17 = [TSUtilities isSecureIntentUIRequired:iCopy];
  if ((v17 & 1) == 0)
  {
    v18 = _TSLogDomain(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[TSIDSTransferFlow launchSecureIntentUI:descriptors:isLocalConvertFlow:isSecureIntentRequired:isDtoEvaluationRequired:completion:]";
      _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "secure intent gesture is not required. skip @%s", buf, 0xCu);
    }

    requiredCopy = 0;
  }

  v19 = [[TSSecureIntentGestureViewController alloc] initWithExternalizedContext:iCopy descriptors:descriptorsCopy isLocalConvertFlow:flowCopy isSecureIntentRequired:requiredCopy isDtoEvaluationRequired:evaluationRequiredCopy];
  objc_initWeak(buf, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __131__TSIDSTransferFlow_launchSecureIntentUI_descriptors_isLocalConvertFlow_isSecureIntentRequired_isDtoEvaluationRequired_completion___block_invoke;
  v21[3] = &unk_279B44D90;
  objc_copyWeak(&v23, buf);
  v20 = v19;
  v22 = v20;
  [(TSSecureIntentGestureViewController *)v20 prepare:v21];
  completionCopy[2](completionCopy, 1);

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

void __131__TSIDSTransferFlow_launchSecureIntentUI_descriptors_isLocalConvertFlow_isSecureIntentRequired_isDtoEvaluationRequired_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setSecureIntentProxCard:v3];

    v6 = objc_loadWeakRetained((a1 + 40));
    v5 = [v6 topViewController];
    [v6 viewControllerDidComplete:v5];
  }
}

- (void)transferEventUpdate:(id)update
{
  v18 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = _TSLogDomain(updateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = updateCopy;
    v16 = 2080;
    v17 = "[TSIDSTransferFlow transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "transfer event : %@ @%s", &v14, 0x16u);
  }

  v6 = [updateCopy objectForKey:@"kSelectedTransferPlansCount"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_selectedTransferPlansCount = [v6 unsignedIntValue];
    }
  }

  v7 = [updateCopy objectForKey:@"kTransferInformationSent"];

  if (v7)
  {
    [(CoreTelephonyClient *)self->_client setDelegate:0];
    topViewController = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      topViewController2 = [(TSSIMSetupFlow *)self topViewController];
      [(TSSIMSetupFlow *)self viewControllerDidComplete:topViewController2];
    }
  }

  v11 = [updateCopy objectForKey:@"UpdateProxCardVisibility"];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v11 BOOLValue];
      if (bOOLValue)
      {
        topViewController3 = _TSLogDomain(bOOLValue);
        if (os_log_type_enabled(topViewController3, OS_LOG_TYPE_ERROR))
        {
          [TSIDSTransferFlow transferEventUpdate:topViewController3];
        }
      }

      else
      {
        topViewController3 = [(TSSIMSetupFlow *)self topViewController];
        [(TSSIMSetupFlow *)self viewControllerDidComplete:topViewController3];
      }
    }
  }
}

- (void)transferEventUpdate:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSIDSTransferFlow transferEventUpdate:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Unexpected transferEventUpdate for resuming prox card @%s", &v1, 0xCu);
}

@end