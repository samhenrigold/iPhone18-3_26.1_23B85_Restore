@interface TUIOptInFlowControllerImpl
- (TUIOptInFlowControllerDelegate)delegate;
- (TUIOptInFlowControllerImpl)initWithPresentingNavigationController:(id)controller parentViewController:(id)viewController accountManager:(id)manager stateManager:(id)stateManager;
- (void)_attemptToSetOptInWithState:(BOOL)state;
- (void)_beginIneligibleDevicesRemoteUIRequestWithCompletion:(id)completion;
- (void)_continueAttemptToSetOptInWithState:(BOOL)state;
- (void)_dismiss;
- (void)_dismissIneligibleDevicesRemoteUI;
- (void)_dismissOptOutFlow;
- (void)_dismissWithoutStateChange;
- (void)_openMessagesSettings;
- (void)_openSettingsURL:(id)l;
- (void)_openTapToRadar;
- (void)_openTrustedDeviceList;
- (void)_showErrorAlertWithError:(id)error presentingViewController:(id)controller;
- (void)_showOptInErrorForViewModel:(id)model;
- (void)_showOptInResultError:(BOOL)error error:(id)a4;
- (void)_startFlowPressed;
- (void)_verifyCDPWithCompletion:(id)completion;
- (void)_verifyMessages:(id)messages;
- (void)beginOptInFlow;
- (void)beginOptOutFlow;
- (void)dismissPendingPopupUI;
- (void)dismissRemoteUIForViewController:(id)controller error:(id)error;
- (void)performAccountChecksForFlow:(unint64_t)flow;
- (void)remoteUIDidDismiss:(id)dismiss;
- (void)remoteUIDidEndFlow:(id)flow;
- (void)remoteUIDidPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIDidReceiveHTTPResponse:(id)response;
- (void)remoteUIRequestComplete:(id)complete error:(id)error;
- (void)remoteUIWillLoadRequest:(id)request;
- (void)remoteUIWillPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)showActivityIndicatorForViewController:(id)controller;
- (void)showAppleIDErrorForFlow:(unint64_t)flow withViewModel:(id)model;
- (void)showWelcomeScreen;
@end

@implementation TUIOptInFlowControllerImpl

- (TUIOptInFlowControllerImpl)initWithPresentingNavigationController:(id)controller parentViewController:(id)viewController accountManager:(id)manager stateManager:(id)stateManager
{
  v49 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  managerCopy = manager;
  stateManagerCopy = stateManager;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl initWithPresentingNavigationController:parentViewController:accountManager:stateManager:];
  }

  v15 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v38 = "[TUIOptInFlowControllerImpl initWithPresentingNavigationController:parentViewController:accountManager:stateManager:]";
    v39 = 2114;
    v40 = controllerCopy;
    v41 = 2114;
    v42 = viewControllerCopy;
    v43 = 2114;
    v44 = managerCopy;
    v45 = 2114;
    v46 = stateManagerCopy;
    v47 = 2114;
    selfCopy = self;
    _os_log_debug_impl(&dword_26F50B000, v15, OS_LOG_TYPE_DEBUG, "%s presentingNavigationController = %{public}@, parentViewController = %{public}@, accountManager = %{public}@, stateManager = %{public}@ on %{public}@", buf, 0x3Eu);
  }

  v36.receiver = self;
  v36.super_class = TUIOptInFlowControllerImpl;
  v16 = [(TUIOptInFlowControllerImpl *)&v36 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_stateManager, stateManager);
    objc_storeStrong(&v17->_accountManager, manager);
    objc_storeStrong(&v17->_parentViewController, viewController);
    objc_storeStrong(&v17->_presentingNavigationController, controller);
    v18 = objc_alloc(MEMORY[0x277D73558]);
    v19 = [v18 initWithApplication:*MEMORY[0x277D735B0]];
    optInManager = v17->_optInManager;
    v17->_optInManager = v19;

    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    accountStore = v17->_accountStore;
    v17->_accountStore = defaultStore;

    v23 = [objc_alloc(MEMORY[0x277CED1E8]) initWithAccountStore:v17->_accountStore];
    serviceOwnersManager = v17->_serviceOwnersManager;
    v17->_serviceOwnersManager = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    devicesWithIssuesIdentifiers = v17->_devicesWithIssuesIdentifiers;
    v17->_devicesWithIssuesIdentifiers = v25;

    v27 = [[TUIAppleAccountManager alloc] initWithAccountStore:v17->_accountStore];
    appleAccountManager = v17->_appleAccountManager;
    v17->_appleAccountManager = v27;

    v29 = objc_alloc(MEMORY[0x277D18778]);
    v30 = [v29 initWithService:*MEMORY[0x277D186B0]];
    idsService = v17->_idsService;
    v17->_idsService = v30;

    v32 = objc_alloc(MEMORY[0x277D18790]);
    v33 = [v32 initWithQueue:MEMORY[0x277D85CD0]];
    idsSignInController = v17->_idsSignInController;
    v17->_idsSignInController = v33;
  }

  return v17;
}

uint64_t __118__TUIOptInFlowControllerImpl_initWithPresentingNavigationController_parentViewController_accountManager_stateManager___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)beginOptInFlow
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __44__TUIOptInFlowControllerImpl_beginOptInFlow__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)beginOptOutFlow
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __45__TUIOptInFlowControllerImpl_beginOptOutFlow__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)showWelcomeScreen
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __47__TUIOptInFlowControllerImpl_showWelcomeScreen__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __47__TUIOptInFlowControllerImpl_showWelcomeScreen__block_invoke_53(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [[TUIOBWelcomeController alloc] initWithViewModel:*(a1 + 32)];
    [WeakRetained setWelcomeController:v3];

    v4 = [WeakRetained welcomeController];
    v5 = [v4 primaryButton];
    [v5 addTarget:WeakRetained action:sel__startFlowPressed forControlEvents:64];

    v6 = [WeakRetained welcomeController];
    v7 = [v6 secondaryButton];
    [v7 addTarget:WeakRetained action:sel__dismiss forControlEvents:64];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:WeakRetained action:sel__dismiss];
    v9 = [WeakRetained welcomeController];
    v10 = [v9 navigationItem];
    [v10 setLeftBarButtonItem:v8];

    v11 = [WeakRetained presentingNavigationController];
    v12 = [WeakRetained welcomeController];
    [v11 pushViewController:v12 animated:0];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __47__TUIOptInFlowControllerImpl_showWelcomeScreen__block_invoke_53_cold_1();
    }

    v13 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[TUIOptInFlowControllerImpl showWelcomeScreen]_block_invoke";
      _os_log_impl(&dword_26F50B000, v13, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v14, 0xCu);
    }
  }
}

uint64_t __47__TUIOptInFlowControllerImpl_showWelcomeScreen__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)showActivityIndicatorForViewController:(id)controller
{
  v3 = MEMORY[0x277D750E8];
  controllerCopy = controller;
  v7 = [[v3 alloc] initWithActivityIndicatorStyle:100];
  [v7 setHidesWhenStopped:1];
  [v7 startAnimating];
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v7];
  navigationItem = [controllerCopy navigationItem];

  [navigationItem setRightBarButtonItem:v5];
}

- (void)dismissPendingPopupUI
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __51__TUIOptInFlowControllerImpl_dismissPendingPopupUI__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __51__TUIOptInFlowControllerImpl_dismissPendingPopupUI__block_invoke_65(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained stateManager];
    v4 = [v3 isVerifyCDPRunning];

    if ((v4 & 1) == 0)
    {
      [v2 _dismissWithoutStateChange];
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __51__TUIOptInFlowControllerImpl_dismissPendingPopupUI__block_invoke_65_cold_1();
    }

    v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[TUIOptInFlowControllerImpl dismissPendingPopupUI]_block_invoke";
      _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v6, 0xCu);
    }
  }
}

uint64_t __51__TUIOptInFlowControllerImpl_dismissPendingPopupUI__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_dismissWithoutStateChange
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __56__TUIOptInFlowControllerImpl__dismissWithoutStateChange__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_dismiss
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __38__TUIOptInFlowControllerImpl__dismiss__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_dismissOptOutFlow
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __48__TUIOptInFlowControllerImpl__dismissOptOutFlow__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_startFlowPressed
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __47__TUIOptInFlowControllerImpl__startFlowPressed__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)performAccountChecksForFlow:(unint64_t)flow
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl performAccountChecksForFlow:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInFlowControllerImpl performAccountChecksForFlow:];
  }

  if (self->_welcomeController)
  {
    topViewController = [(UINavigationController *)self->_presentingNavigationController topViewController];
    [(TUIOptInFlowControllerImpl *)self showActivityIndicatorForViewController:topViewController];

    primaryButton = [(TUIOBWelcomeController *)self->_welcomeController primaryButton];
    [primaryButton setEnabled:0];

    secondaryButton = [(TUIOBWelcomeController *)self->_welcomeController secondaryButton];
    [secondaryButton setEnabled:0];
  }

  [(TUIKTStateManager *)self->_stateManager setIsVerifyCDPRunning:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_78;
  v8[3] = &unk_279DDAB78;
  v8[4] = self;
  v8[5] = flow;
  [(TUIOptInFlowControllerImpl *)self _verifyCDPWithCompletion:v8];
}

uint64_t __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_78(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = (a1 + 32);
  v7 = [*(a1 + 32) stateManager];
  [v7 setIsVerifyCDPRunning:0];

  if (!a2)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_78_cold_1();
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_78_cold_2();
    }

    v9 = [v5 domain];
    if ([v9 isEqualToString:*MEMORY[0x277CFD418]])
    {
      if ([v5 code] == -5307)
      {
LABEL_19:

LABEL_20:
        v13 = [*v6 delegate];
        [v13 optInFlowResultWithStateUpdate];

        goto LABEL_21;
      }

      v10 = [v5 code];

      if (v10 == 5095)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v11 = *v6;
    v9 = [*v6 welcomeController];
    if (v9)
    {
      [v11 _showErrorAlertWithError:v5 presentingViewController:v9];
    }

    else
    {
      v12 = [*v6 parentViewController];
      [v11 _showErrorAlertWithError:v5 presentingViewController:v12];
    }

    goto LABEL_19;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_78_cold_3();
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_78_cold_4();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_81;
  v14[3] = &unk_279DDAB50;
  v8 = *(a1 + 32);
  v16 = *(a1 + 40);
  v14[4] = v8;
  v15 = v5;
  [v8 _verifyMessages:v14];

LABEL_21:
}

uint64_t __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_81(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 48);
  v3 = *(a1 + 48);
  if (a2 || v3 != 1)
  {
    if (a2 == 3 && v3 == 1 && (v6 = (a1 + 32), [*(a1 + 32) _idsAccount], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "aida_dsid"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*v6, "_appleAccount"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "aa_personID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqualToString:", v10), v10, v9, v8, v7, (v11 & 1) == 0))
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_81_cold_1();
      }

      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_81_cold_2();
      }

      v20 = [[TUIOBMismatchedAppleIDViewModel alloc] initWithFlow:*v4];
      [*v6 showAppleIDErrorForFlow:*v4 withViewModel:v20];
    }

    else
    {
      v12 = [*(a1 + 40) domain];
      v13 = [v12 isEqual:*MEMORY[0x277D735E0]];

      if (v13)
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v16 = [v14 welcomeController];
        v22 = v16;
        if (v16)
        {
          [v14 _showErrorAlertWithError:v15 presentingViewController:v16];
        }

        else
        {
          v21 = [*(a1 + 32) parentViewController];
          [v14 _showErrorAlertWithError:v15 presentingViewController:v21];
        }
      }

      else if ((*v4 - 1) > 1)
      {
        if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
        {
          __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_81_cold_3();
        }

        if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_81_cold_4();
        }
      }

      else
      {
        if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
        {
          __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_81_cold_5();
        }

        v17 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 32);
          v19 = *(a1 + 48);
          *buf = 138543618;
          v24 = v18;
          v25 = 1024;
          v26 = v19;
          _os_log_impl(&dword_26F50B000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ attempting to set opt in state (%d)...", buf, 0x12u);
        }

        [*(a1 + 32) _attemptToSetOptInWithState:*(a1 + 48) == 1];
      }
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_81_cold_6();
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_81_cold_7();
    }

    v5 = [[TUIOBMissingAppleIDViewModel alloc] initWithFlow:*(a1 + 48)];
    [*(a1 + 32) showAppleIDErrorForFlow:*(a1 + 48) withViewModel:v5];
  }
}

uint64_t __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_2_82()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_86()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_90()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_93()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_97()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)showAppleIDErrorForFlow:(unint64_t)flow withViewModel:(id)model
{
  modelCopy = model;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl showAppleIDErrorForFlow:withViewModel:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInFlowControllerImpl showAppleIDErrorForFlow:withViewModel:];
  }

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__TUIOptInFlowControllerImpl_showAppleIDErrorForFlow_withViewModel___block_invoke_103;
  v8[3] = &unk_279DDABA0;
  objc_copyWeak(v10, &location);
  v9 = modelCopy;
  v10[1] = flow;
  v7 = modelCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

uint64_t __68__TUIOptInFlowControllerImpl_showAppleIDErrorForFlow_withViewModel___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __68__TUIOptInFlowControllerImpl_showAppleIDErrorForFlow_withViewModel___block_invoke_103(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [[TUIOBWelcomeController alloc] initWithViewModel:*(a1 + 32)];
    v4 = [(TUIOBWelcomeController *)v3 primaryButton];
    [v4 addTarget:WeakRetained action:sel__openMessagesSettings forControlEvents:64];

    v5 = *(a1 + 48);
    if (v5 == 1)
    {
      v6 = &selRef__dismiss;
    }

    else
    {
      if (v5 != 2)
      {
LABEL_11:
        v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:WeakRetained action:sel__dismiss];
        v10 = [(OBBaseWelcomeController *)v3 navigationItem];
        [v10 setLeftBarButtonItem:v9];

        if (*(a1 + 48) == 2)
        {
          v11 = [WeakRetained delegate];
          [v11 presentOptInNavigationController];
        }

        v12 = [WeakRetained presentingNavigationController];
        [v12 pushViewController:v3 animated:1];

        goto LABEL_14;
      }

      v6 = &selRef__dismissOptOutFlow;
    }

    v8 = [(TUIOBWelcomeController *)v3 secondaryButton];
    [v8 addTarget:WeakRetained action:*v6 forControlEvents:64];

    goto LABEL_11;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __68__TUIOptInFlowControllerImpl_showAppleIDErrorForFlow_withViewModel___block_invoke_103_cold_1();
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "[TUIOptInFlowControllerImpl showAppleIDErrorForFlow:withViewModel:]_block_invoke";
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v13, 0xCu);
  }

LABEL_14:
}

uint64_t __68__TUIOptInFlowControllerImpl_showAppleIDErrorForFlow_withViewModel___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_showOptInErrorForViewModel:(id)model
{
  modelCopy = model;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl _showOptInErrorForViewModel:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInFlowControllerImpl _showOptInErrorForViewModel:];
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TUIOptInFlowControllerImpl__showOptInErrorForViewModel___block_invoke_112;
  block[3] = &unk_279DDA9E8;
  objc_copyWeak(&v8, &location);
  v7 = modelCopy;
  v5 = modelCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __58__TUIOptInFlowControllerImpl__showOptInErrorForViewModel___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __58__TUIOptInFlowControllerImpl__showOptInErrorForViewModel___block_invoke_112(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [[TUIOBWelcomeController alloc] initWithViewModel:*(a1 + 32)];
    v4 = [(TUIOBWelcomeController *)v3 primaryButton];
    [v4 addTarget:WeakRetained action:sel__dismiss forControlEvents:64];

    v5 = [(TUIOBWelcomeController *)v3 secondaryButton];
    [v5 addTarget:WeakRetained action:sel__openTrustedDeviceList forControlEvents:64];

    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:WeakRetained action:sel__dismiss];
    v7 = [(OBBaseWelcomeController *)v3 navigationItem];
    [v7 setLeftBarButtonItem:v6];

    if ([MEMORY[0x277CE4560] isInternalBuild])
    {
      v8 = [MEMORY[0x277D37650] linkButton];
      [v8 addTarget:WeakRetained action:sel__openTapToRadar forControlEvents:64];
      [v8 setTitle:@"[INTERNAL] Tap-To-Radar" forState:0];
      v9 = [(TUIOBWelcomeController *)v3 buttonTray];
      [v9 addButton:v8];
    }

    v10 = [WeakRetained presentingNavigationController];
    [v10 pushViewController:v3 animated:1];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __58__TUIOptInFlowControllerImpl__showOptInErrorForViewModel___block_invoke_112_cold_1();
    }

    v11 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[TUIOptInFlowControllerImpl _showOptInErrorForViewModel:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v11, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v12, 0xCu);
    }
  }
}

uint64_t __58__TUIOptInFlowControllerImpl__showOptInErrorForViewModel___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_openMessagesSettings
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __51__TUIOptInFlowControllerImpl__openMessagesSettings__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_openTrustedDeviceList
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __52__TUIOptInFlowControllerImpl__openTrustedDeviceList__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_openSettingsURL:(id)l
{
  lCopy = l;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl _openSettingsURL:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInFlowControllerImpl _openSettingsURL:];
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TUIOptInFlowControllerImpl__openSettingsURL___block_invoke_131;
  block[3] = &unk_279DDA9E8;
  objc_copyWeak(&v8, &location);
  v7 = lCopy;
  v5 = lCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __47__TUIOptInFlowControllerImpl__openSettingsURL___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __47__TUIOptInFlowControllerImpl__openSettingsURL___block_invoke_131(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained delegate];
    [v4 optInFlowResultWithStateUpdate];

    v5 = [v3 presentingNavigationController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__TUIOptInFlowControllerImpl__openSettingsURL___block_invoke_134;
    v7[3] = &unk_279DDABC8;
    v8 = *(a1 + 32);
    [v5 dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __47__TUIOptInFlowControllerImpl__openSettingsURL___block_invoke_131_cold_1();
    }

    v6 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[TUIOptInFlowControllerImpl _openSettingsURL:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v6, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }
}

uint64_t __47__TUIOptInFlowControllerImpl__openSettingsURL___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __47__TUIOptInFlowControllerImpl__openSettingsURL___block_invoke_134(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 openSensitiveURL:*(a1 + 32) withOptions:0];
}

- (void)dismissRemoteUIForViewController:(id)controller error:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke;
  v10[3] = &unk_279DDABF0;
  objc_copyWeak(&v13, &location);
  v11 = controllerCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = controllerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] presentedViewController];

    if (v3)
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_cold_1();
      }

      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_cold_2();
      }

      v4 = a1[4];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_141;
      v12[3] = &unk_279DDABC8;
      v12[4] = WeakRetained;
      [v4 dismissViewControllerAnimated:1 completion:v12];
    }

    else
    {
      v6 = [WeakRetained welcomeController];
      if (v6)
      {
        v7 = v6;
        v8 = [a1[5] domain];
        if ([v8 isEqualToString:*MEMORY[0x277CFD418]])
        {
          v9 = [a1[5] code];

          if (v9 == -5307)
          {
            v10 = [WeakRetained welcomeController];
            v11[0] = MEMORY[0x277D85DD0];
            v11[1] = 3221225472;
            v11[2] = __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_145;
            v11[3] = &unk_279DDABC8;
            v11[4] = WeakRetained;
            [v10 dismissViewControllerAnimated:1 completion:v11];
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_cold_3();
    }

    v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[TUIOptInFlowControllerImpl dismissRemoteUIForViewController:error:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }
}

uint64_t __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_138()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_141(uint64_t a1)
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_141_cold_1();
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_141_cold_2();
  }
}

uint64_t __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_2_142()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_145(uint64_t a1)
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_145_cold_1();
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_145_cold_2();
  }
}

uint64_t __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_2_146()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_verifyCDPWithCompletion:(id)completion
{
  completionCopy = completion;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl _verifyCDPWithCompletion:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInFlowControllerImpl _verifyCDPWithCompletion:];
  }

  welcomeController = [(TUIOptInFlowControllerImpl *)self welcomeController];
  if (welcomeController)
  {
    [(TUIOptInFlowControllerImpl *)self presentingNavigationController];
  }

  else
  {
    [(TUIOptInFlowControllerImpl *)self parentViewController];
  }
  v6 = ;

  v7 = objc_alloc(MEMORY[0x277CFDAE8]);
  mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
  primaryAccountAltDSID = [mEMORY[0x277CFD480] primaryAccountAltDSID];
  v10 = [v7 initWithAltDSID:primaryAccountAltDSID];

  [v10 setSecurityUpgradeContext:*MEMORY[0x277CF00A0]];
  [v10 setDeviceToDeviceEncryptionUpgradeUIStyle:1];
  [v10 setDeviceToDeviceEncryptionUpgradeType:0];
  [v10 setForceInlinePresentation:1];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"DEVICE_VERIFICATION_SPECIFIER_TITLE" value:&stru_287F92480 table:@"Localizable"];
  [v10 setFeatureName:v12];

  [v10 setPresentingViewController:v6];
  v13 = [objc_alloc(MEMORY[0x277CECA70]) initWithFlowContext:v10 withPresentingViewController:v6];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = +[TUIUtils isHSA2];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__TUIOptInFlowControllerImpl__verifyCDPWithCompletion___block_invoke_162;
  v16[3] = &unk_279DDAC40;
  objc_copyWeak(&v20, &location);
  v14 = completionCopy;
  v18 = v14;
  v19 = v22;
  v15 = v6;
  v17 = v15;
  [v13 verifyAndRepairManateeWithCompletion:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(v22, 8);
}

uint64_t __55__TUIOptInFlowControllerImpl__verifyCDPWithCompletion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __55__TUIOptInFlowControllerImpl__verifyCDPWithCompletion___block_invoke_162(uint64_t a1, int a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __55__TUIOptInFlowControllerImpl__verifyCDPWithCompletion___block_invoke_162_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[TUIOptInFlowControllerImpl _verifyCDPWithCompletion:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", buf, 0xCu);
    }
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __55__TUIOptInFlowControllerImpl__verifyCDPWithCompletion___block_invoke_162_cold_2();
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
  if (!os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    if (WeakRetained)
    {
      goto LABEL_10;
    }

LABEL_19:
    v15 = *(a1 + 40);
    v16 = [MEMORY[0x277D735A0] errorWithDomain:*MEMORY[0x277D735F0] code:-120 description:@"object deallocated"];
    (*(v15 + 16))(v15, 0, v16);

    goto LABEL_20;
  }

  *buf = 136315906;
  v23 = "[TUIOptInFlowControllerImpl _verifyCDPWithCompletion:]_block_invoke_2";
  v24 = 1024;
  v25 = a2;
  v26 = 2114;
  v27 = v5;
  v28 = 2114;
  v29 = WeakRetained;
  _os_log_debug_impl(&dword_26F50B000, v8, OS_LOG_TYPE_DEBUG, "%s isVerified = %d, error = %{public}@ on %{public}@", buf, 0x26u);
  if (!WeakRetained)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (a2)
  {
    v9 = [WeakRetained welcomeController];

    if (v9)
    {
      v10 = [WeakRetained presentingNavigationController];
      v11 = [v10 topViewController];
      [WeakRetained showActivityIndicatorForViewController:v11];
    }

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v13 = [WeakRetained optInManager];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __55__TUIOptInFlowControllerImpl__verifyCDPWithCompletion___block_invoke_172;
      v17[3] = &unk_279DDAC18;
      v14 = *(a1 + 40);
      v21 = a2;
      v20 = v14;
      v17[4] = WeakRetained;
      v18 = *(a1 + 32);
      v19 = v5;
      [v13 waitForIDSRegistration:1 complete:v17];

      goto LABEL_20;
    }

    v12 = *(*(a1 + 40) + 16);
  }

  else
  {
    [WeakRetained dismissRemoteUIForViewController:*(a1 + 32) error:v5];
    v12 = *(*(a1 + 40) + 16);
  }

  v12();
LABEL_20:
}

uint64_t __55__TUIOptInFlowControllerImpl__verifyCDPWithCompletion___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __55__TUIOptInFlowControllerImpl__verifyCDPWithCompletion___block_invoke_165()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __55__TUIOptInFlowControllerImpl__verifyCDPWithCompletion___block_invoke_172(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __55__TUIOptInFlowControllerImpl__verifyCDPWithCompletion___block_invoke_172_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "waitForIDSRegistration error after verifying CDP %{public}@", &v6, 0xCu);
    }

    v5 = *(*(a1 + 56) + 16);
  }

  else
  {
    [*(a1 + 32) dismissRemoteUIForViewController:*(a1 + 40) error:*(a1 + 48)];
    v5 = *(*(a1 + 56) + 16);
  }

  v5();
}

uint64_t __55__TUIOptInFlowControllerImpl__verifyCDPWithCompletion___block_invoke_2_173()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_attemptToSetOptInWithState:(BOOL)state
{
  stateCopy = state;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl _attemptToSetOptInWithState:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInFlowControllerImpl _attemptToSetOptInWithState:];
    if (stateCopy)
    {
      goto LABEL_5;
    }
  }

  else if (stateCopy)
  {
LABEL_5:
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_179;
    v5[3] = &unk_279DDAC90;
    objc_copyWeak(&v6, &location);
    v7 = stateCopy;
    [(TUIOptInFlowControllerImpl *)self _beginIneligibleDevicesRemoteUIRequestWithCompletion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
    return;
  }

  [(TUIOptInFlowControllerImpl *)self _continueAttemptToSetOptInWithState:0];
}

uint64_t __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_179(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [MEMORY[0x277D73588] logger];
    [v7 logResultForEvent:@"KTIneligibleDevicesUI" hardFailure:1 result:v5];

    if (a2)
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_179_cold_3();
      }

      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_179_cold_4();
      }
    }

    else
    {
      [WeakRetained _dismissIneligibleDevicesRemoteUI];
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_179_cold_1();
      }

      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_179_cold_2();
      }

      objc_initWeak(buf, WeakRetained);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_189;
      block[3] = &unk_279DDAC68;
      objc_copyWeak(&v11, buf);
      v12 = *(a1 + 40);
      v10 = v5;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_179_cold_5();
    }

    v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[TUIOptInFlowControllerImpl _attemptToSetOptInWithState:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v8, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }
}

uint64_t __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_183()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_186()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_189(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _showOptInResultError:*(a1 + 48) error:*(a1 + 32)];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_189_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[TUIOptInFlowControllerImpl _attemptToSetOptInWithState:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v5, 0xCu);
    }
  }
}

uint64_t __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_2_190()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_continueAttemptToSetOptInWithState:(BOOL)state
{
  stateCopy = state;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl _continueAttemptToSetOptInWithState:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInFlowControllerImpl _continueAttemptToSetOptInWithState:];
  }

  objc_initWeak(&location, self);
  optInManager = self->_optInManager;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195;
  v6[3] = &unk_279DDACB8;
  objc_copyWeak(&v7, &location);
  v8 = stateCopy;
  [(KTOptInManager *)optInManager setOptInState:stateCopy detailedCompletionBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195(uint64_t a1, __CFString *a2, void *a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v33 = a4;
  val = objc_loadWeakRetained((a1 + 32));
  v32 = v7;
  if (val)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195_cold_1();
    }

    v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v47 = val;
      v48 = 2048;
      v49 = a2;
      v50 = 2114;
      v51 = v7;
      v52 = 2114;
      v53 = v33;
      _os_log_impl(&dword_26F50B000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ setOptInState result = %ld, loggableDatas = %{public}@, error = %{public}@", buf, 0x2Au);
    }

    v9 = [val devicesWithIssuesIdentifiers];
    [v9 removeAllObjects];

    if (v33)
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195_cold_2();
      }

      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195_cold_3();
      }

      if (![TUIUtils isNetworkError:v33])
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v10 = v7;
        v11 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v11)
        {
          v12 = *v42;
          do
          {
            v13 = 0;
            do
            {
              if (*v42 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v41 + 1) + 8 * v13);
              if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
              {
                __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195_cold_4();
              }

              v15 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
              if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543618;
                v47 = val;
                v48 = 2114;
                v49 = v14;
                _os_log_debug_impl(&dword_26F50B000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@", buf, 0x16u);
              }

              if (![(__CFString *)v14 result])
              {
                if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195_cold_5();
                }

                v16 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
                if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  v19 = v16;
                  v20 = [(__CFString *)v14 deviceID];
                  v21 = [v20 kt_hexString];
                  v22 = [(__CFString *)v14 failure];
                  *buf = 138543874;
                  v47 = val;
                  v48 = 2114;
                  v49 = v21;
                  v50 = 2114;
                  v51 = v22;
                  _os_log_error_impl(&dword_26F50B000, v19, OS_LOG_TYPE_ERROR, "%{public}@ KTResultFailed on deviceId %{public}@, failure = %{public}@", buf, 0x20u);
                }

                v17 = [val devicesWithIssuesIdentifiers];
                v18 = [(__CFString *)v14 deviceID];
                [v17 addObject:v18];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v11);
        }
      }

      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195_cold_6();
      }

      v23 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195_cold_7(val, v23);
      }

      objc_initWeak(buf, val);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_213;
      block[3] = &unk_279DDAC68;
      objc_copyWeak(&v39, buf);
      v40 = *(v31 + 40);
      v24 = v33;
      v38 = v24;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v25 = [MEMORY[0x277D73588] logger];
      [v25 logResultForEvent:@"KTOptIn" hardFailure:1 result:v24];

      objc_destroyWeak(&v39);
      objc_destroyWeak(buf);
    }

    else
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195_cold_8();
      }

      v27 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEFAULT))
      {
        v28 = @"NO";
        if (*(v31 + 40))
        {
          v28 = @"YES";
        }

        *buf = 138543618;
        v47 = val;
        v48 = 2114;
        v49 = v28;
        _os_log_impl(&dword_26F50B000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully set new opt in state: %{public}@", buf, 0x16u);
      }

      v29 = [val delegate];
      [v29 optInFlowResultWithStateUpdate];

      v30 = [val welcomeController];
      LOBYTE(v29) = v30 == 0;

      if ((v29 & 1) == 0)
      {
        objc_initWeak(buf, val);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_226;
        v35[3] = &unk_279DDAB28;
        objc_copyWeak(&v36, buf);
        dispatch_async(MEMORY[0x277D85CD0], v35);
        objc_destroyWeak(&v36);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195_cold_9();
    }

    v26 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v47 = "[TUIOptInFlowControllerImpl _continueAttemptToSetOptInWithState:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v26, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }
}

uint64_t __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_198()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_201()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_204()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_207()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_210()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_213(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _showOptInResultError:*(a1 + 48) error:*(a1 + 32)];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_213_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[TUIOptInFlowControllerImpl _continueAttemptToSetOptInWithState:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v5, 0xCu);
    }
  }
}

uint64_t __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_2_214()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_217()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_226(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained welcomeController];
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_226_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[TUIOptInFlowControllerImpl _continueAttemptToSetOptInWithState:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v5, 0xCu);
    }
  }
}

uint64_t __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_2_227()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_showOptInResultError:(BOOL)error error:(id)a4
{
  errorCopy = error;
  v6 = a4;
  if (!errorCopy)
  {
LABEL_10:
    welcomeController = [(TUIOptInFlowControllerImpl *)self welcomeController];
    if (welcomeController)
    {
      [(TUIOptInFlowControllerImpl *)self _showErrorAlertWithError:v6 presentingViewController:welcomeController];
    }

    else
    {
      parentViewController = [(TUIOptInFlowControllerImpl *)self parentViewController];
      [(TUIOptInFlowControllerImpl *)self _showErrorAlertWithError:v6 presentingViewController:parentViewController];
    }

    goto LABEL_13;
  }

  if (![(NSMutableArray *)self->_devicesWithIssuesIdentifiers count])
  {
    if ([TUIUtils isMismatchedAccountError:v6])
    {
      welcomeController = [[TUIOBMissingAppleIDViewModel alloc] initWithFlow:1];
      [(TUIOptInFlowControllerImpl *)self showAppleIDErrorForFlow:1 withViewModel:welcomeController];
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl _showOptInResultError:error:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInFlowControllerImpl _showOptInResultError:error:];
  }

  welcomeController = [[TUIOBUpdateDevicesViewModel alloc] initWithAccountManager:self->_accountManager devicesWithIssuesIdentifiers:self->_devicesWithIssuesIdentifiers];
  [(TUIOptInFlowControllerImpl *)self _showOptInErrorForViewModel:welcomeController];
LABEL_13:

  delegate = [(TUIOptInFlowControllerImpl *)self delegate];
  [delegate optInFlowResultWithStateUpdate];
}

uint64_t __58__TUIOptInFlowControllerImpl__showOptInResultError_error___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_beginIneligibleDevicesRemoteUIRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x277CF02F0] bagForAltDSID:0];
  contactKeyVerificationIneligibleDevicesURL = [v5 contactKeyVerificationIneligibleDevicesURL];

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl _beginIneligibleDevicesRemoteUIRequestWithCompletion:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [(TUIOptInFlowControllerImpl *)v7 _beginIneligibleDevicesRemoteUIRequestWithCompletion:contactKeyVerificationIneligibleDevicesURL, self];
    if (contactKeyVerificationIneligibleDevicesURL)
    {
      goto LABEL_5;
    }

LABEL_7:
    v12 = [MEMORY[0x277D735A0] errorWithDomain:*MEMORY[0x277D735F0] code:-120 description:@"no ineligible devices remote UI URL"];
    completionCopy[2](completionCopy, 0, v12);
    goto LABEL_8;
  }

  if (!contactKeyVerificationIneligibleDevicesURL)
  {
    goto LABEL_7;
  }

LABEL_5:
  *&self->_ineligibleDevicesRemoteUICanceled = 0;
  v8 = [objc_alloc(MEMORY[0x277CECA58]) initWithAccountManager:self->_accountManager presenter:self->_presentingNavigationController];
  ineligibleDevicesRemoteUIPresenter = self->_ineligibleDevicesRemoteUIPresenter;
  self->_ineligibleDevicesRemoteUIPresenter = v8;

  [(AAUIGrandSlamRemoteUIPresenter *)self->_ineligibleDevicesRemoteUIPresenter setDelegate:self];
  v10 = objc_alloc_init(MEMORY[0x277CBAB50]);
  [v10 setURL:contactKeyVerificationIneligibleDevicesURL];
  [v10 setHTTPMethod:@"GET"];
  objc_initWeak(&location, self);
  v11 = self->_ineligibleDevicesRemoteUIPresenter;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_245;
  v13[3] = &unk_279DDAD30;
  objc_copyWeak(&v16, &location);
  v15 = completionCopy;
  v12 = v10;
  v14 = v12;
  [(AAUIGrandSlamRemoteUIPresenter *)v11 loadRequest:v12 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
LABEL_8:
}

uint64_t __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_245(id *a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_245_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[TUIOptInFlowControllerImpl _beginIneligibleDevicesRemoteUIRequestWithCompletion:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", buf, 0xCu);
    }
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_245_cold_2();
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
  if (!os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    if (WeakRetained)
    {
      goto LABEL_10;
    }

LABEL_14:
    v10 = a1[5];
    v11 = [MEMORY[0x277D735A0] errorWithDomain:*MEMORY[0x277D735F0] code:-120 description:@"object deallocated"];
    v10[2](v10, 0, v11);

    goto LABEL_15;
  }

  *buf = 136315906;
  v17 = "[TUIOptInFlowControllerImpl _beginIneligibleDevicesRemoteUIRequestWithCompletion:]_block_invoke_2";
  v18 = 1024;
  v19 = a2;
  v20 = 2114;
  v21 = v5;
  v22 = 2114;
  v23 = WeakRetained;
  _os_log_debug_impl(&dword_26F50B000, v8, OS_LOG_TYPE_DEBUG, "%s ineligible devices remote UI: loadRequest result = %d, error = %{public}@ on %{public}@", buf, 0x26u);
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ([TUIUtils isAuthError:v5])
  {
    objc_initWeak(buf, WeakRetained);
    v9 = [WeakRetained appleAccountManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_251;
    v12[3] = &unk_279DDAD08;
    objc_copyWeak(&v15, buf);
    v14 = a1[5];
    v13 = a1[4];
    [v9 silentRenewAppleAccountWithCompletionHandler:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    (*(a1[5] + 2))();
  }

LABEL_15:
}

uint64_t __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_248()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_251(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_251_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[TUIOptInFlowControllerImpl _beginIneligibleDevicesRemoteUIRequestWithCompletion:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", buf, 0xCu);
    }
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_251_cold_2();
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v17 = "[TUIOptInFlowControllerImpl _beginIneligibleDevicesRemoteUIRequestWithCompletion:]_block_invoke_2";
    v18 = 2048;
    v19 = a2;
    v20 = 2114;
    v21 = v5;
    v22 = 2114;
    v23 = WeakRetained;
    _os_log_debug_impl(&dword_26F50B000, v8, OS_LOG_TYPE_DEBUG, "%s ineligible devices remote UI: silent renew result = %ld, error = %{public}@ on %{public}@", buf, 0x2Au);
    if (WeakRetained)
    {
      goto LABEL_10;
    }

LABEL_12:
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277D735A0] errorWithDomain:*MEMORY[0x277D735F0] code:-120 description:@"object deallocated"];
    (*(v11 + 16))(v11, 0, v12);

    goto LABEL_13;
  }

  if (!WeakRetained)
  {
    goto LABEL_12;
  }

LABEL_10:
  objc_initWeak(buf, WeakRetained);
  v9 = [WeakRetained ineligibleDevicesRemoteUIPresenter];
  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_258;
  v13[3] = &unk_279DDACE0;
  objc_copyWeak(&v15, buf);
  v14 = *(a1 + 40);
  [v9 loadRequest:v10 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
LABEL_13:
}

uint64_t __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_2_252()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_255()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_258(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_258_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[TUIOptInFlowControllerImpl _beginIneligibleDevicesRemoteUIRequestWithCompletion:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", &v9, 0xCu);
    }
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_258_cold_2();
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315906;
    v10 = "[TUIOptInFlowControllerImpl _beginIneligibleDevicesRemoteUIRequestWithCompletion:]_block_invoke_2";
    v11 = 1024;
    v12 = a2;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = WeakRetained;
    _os_log_debug_impl(&dword_26F50B000, v8, OS_LOG_TYPE_DEBUG, "%s ineligible devices remote UI: retry loadRequest result = %d, error = %{public}@ on %{public}@", &v9, 0x26u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_2_259()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __83__TUIOptInFlowControllerImpl__beginIneligibleDevicesRemoteUIRequestWithCompletion___block_invoke_262()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_dismissIneligibleDevicesRemoteUI
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __63__TUIOptInFlowControllerImpl__dismissIneligibleDevicesRemoteUI__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_showErrorAlertWithError:(id)error presentingViewController:(id)controller
{
  errorCopy = error;
  controllerCopy = controller;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl _showErrorAlertWithError:presentingViewController:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    [TUIOptInFlowControllerImpl _showErrorAlertWithError:presentingViewController:];
  }

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__TUIOptInFlowControllerImpl__showErrorAlertWithError_presentingViewController___block_invoke_270;
  v10[3] = &unk_279DDABF0;
  objc_copyWeak(&v13, &location);
  v11 = errorCopy;
  v12 = controllerCopy;
  v8 = controllerCopy;
  v9 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __80__TUIOptInFlowControllerImpl__showErrorAlertWithError_presentingViewController___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __80__TUIOptInFlowControllerImpl__showErrorAlertWithError_presentingViewController___block_invoke_270(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [TUIUtils isNetworkError:*(a1 + 32)];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    if (v3)
    {
      v6 = [v4 localizedStringForKey:@"CONTACT_KEY_VERIFICATION_NOT_AVAILABLE" value:&stru_287F92480 table:@"Localizable"];

      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"CHECK_YOUR_NETWORK_CONNECTION" value:&stru_287F92480 table:@"Localizable"];
    }

    else
    {
      v6 = [v4 localizedStringForKey:@"DEVICE_VERIFICATION_OPTIN_ERROR" value:&stru_287F92480 table:@"Localizable"];

      if (![MEMORY[0x277CE4560] isInternalBuild] || (v10 = *(a1 + 32)) == 0)
      {
        v12 = 0;
        goto LABEL_13;
      }

      v11 = MEMORY[0x277CCACA8];
      v7 = [v10 description];
      v8 = [v11 stringWithFormat:@"%@", v7];
    }

    v12 = v8;

LABEL_13:
    v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v12 preferredStyle:1];
    v14 = MEMORY[0x277D750F8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"DISMISS" value:&stru_287F92480 table:@"Localizable"];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__TUIOptInFlowControllerImpl__showErrorAlertWithError_presentingViewController___block_invoke_291;
    v22[3] = &unk_279DDAD58;
    v23 = *(a1 + 40);
    v17 = [v14 actionWithTitle:v16 style:1 handler:v22];
    [v13 addAction:v17];

    if ([MEMORY[0x277CE4560] isInternalBuild])
    {
      v18 = MEMORY[0x277D750F8];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __80__TUIOptInFlowControllerImpl__showErrorAlertWithError_presentingViewController___block_invoke_2_296;
      v20[3] = &unk_279DDAD80;
      v20[4] = WeakRetained;
      v21 = *(a1 + 40);
      v19 = [v18 actionWithTitle:@"[INTERNAL] Tap-to-Radar" style:0 handler:v20];
      [v13 addAction:v19];
    }

    [*(a1 + 40) presentViewController:v13 animated:1 completion:0];

    goto LABEL_16;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __80__TUIOptInFlowControllerImpl__showErrorAlertWithError_presentingViewController___block_invoke_270_cold_1();
  }

  v9 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v25 = "[TUIOptInFlowControllerImpl _showErrorAlertWithError:presentingViewController:]_block_invoke";
    _os_log_impl(&dword_26F50B000, v9, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
  }

LABEL_16:
}

uint64_t __80__TUIOptInFlowControllerImpl__showErrorAlertWithError_presentingViewController___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __80__TUIOptInFlowControllerImpl__showErrorAlertWithError_presentingViewController___block_invoke_2_296(uint64_t a1)
{
  [*(a1 + 32) _openTapToRadar];
  v2 = *(a1 + 40);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_openTapToRadar
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t __45__TUIOptInFlowControllerImpl__openTapToRadar__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __45__TUIOptInFlowControllerImpl__openTapToRadar__block_invoke_299()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __45__TUIOptInFlowControllerImpl__openTapToRadar__block_invoke_312(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 kt_hexString];
  [v2 addObject:v3];
}

uint64_t __45__TUIOptInFlowControllerImpl__openTapToRadar__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __45__TUIOptInFlowControllerImpl__openTapToRadar__block_invoke_322()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_verifyMessages:(id)messages
{
  messagesCopy = messages;
  if (([(IDSSignInController *)self->_idsSignInController isiMessageEnabled]& 1) == 0)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      [TUIOptInFlowControllerImpl _verifyMessages:];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      [TUIOptInFlowControllerImpl _verifyMessages:];
    }

    goto LABEL_12;
  }

  aliases = [(IDSService *)self->_idsService aliases];
  v6 = [aliases count];

  if (!v6)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      [TUIOptInFlowControllerImpl _verifyMessages:];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      [TUIOptInFlowControllerImpl _verifyMessages:];
    }

LABEL_12:
    messagesCopy[2](messagesCopy, 0);
    goto LABEL_13;
  }

  idsSignInController = self->_idsSignInController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_330;
  v8[3] = &unk_279DDADF8;
  v8[4] = self;
  v9 = messagesCopy;
  [(IDSSignInController *)idsSignInController statusOfUsersOnService:1 withCompletion:v8];

LABEL_13:
}

uint64_t __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_327()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_330(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a2 serviceUserInfos];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 type] == 1 && objc_msgSend(v8, "status") == 3)
        {
          if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
          {
            __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_330_cold_3();
          }

          if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
          {
            __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_330_cold_4();
          }

          v9 = 3;
          goto LABEL_28;
        }

        if (_os_feature_enabled_impl() && ![v8 type] && objc_msgSend(v8, "status") == 3)
        {
          if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
          {
            __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_330_cold_1();
          }

          if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
          {
            __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_330_cold_2();
          }

          v9 = 1;
          goto LABEL_24;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_24:

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_330_cold_5();
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_330_cold_6();
  }

LABEL_28:
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_342;
  v10[3] = &unk_279DDADD0;
  v11 = *(a1 + 40);
  v12 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_335()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_339()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)remoteUIRequestComplete:(id)complete error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl remoteUIRequestComplete:error:];
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315906;
    v13 = "[TUIOptInFlowControllerImpl remoteUIRequestComplete:error:]";
    v14 = 2114;
    v15 = completeCopy;
    v16 = 2114;
    v17 = errorCopy;
    v18 = 2114;
    selfCopy = self;
    _os_log_debug_impl(&dword_26F50B000, v8, OS_LOG_TYPE_DEBUG, "%s ineligible devices remote UI: request = %{public}@, error = %{public}@ on %{public}@", &v12, 0x2Au);
    if (!errorCopy)
    {
      goto LABEL_9;
    }
  }

  else if (!errorCopy)
  {
    goto LABEL_9;
  }

  welcomeController = [(TUIOptInFlowControllerImpl *)self welcomeController];
  if (welcomeController)
  {
    [(TUIOptInFlowControllerImpl *)self _showErrorAlertWithError:errorCopy presentingViewController:welcomeController];
  }

  else
  {
    parentViewController = [(TUIOptInFlowControllerImpl *)self parentViewController];
    [(TUIOptInFlowControllerImpl *)self _showErrorAlertWithError:errorCopy presentingViewController:parentViewController];
  }

  delegate = [(TUIOptInFlowControllerImpl *)self delegate];
  [delegate optInFlowResultWithStateUpdate];

LABEL_9:
}

uint64_t __60__TUIOptInFlowControllerImpl_remoteUIRequestComplete_error___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)remoteUIWillLoadRequest:(id)request
{
  requestCopy = request;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl remoteUIWillLoadRequest:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInFlowControllerImpl remoteUIWillLoadRequest:];
  }

  v5 = [requestCopy URL];
  path = [v5 path];
  v7 = [path hasSuffix:@"/cancel"];

  if (v7)
  {
    self->_ineligibleDevicesRemoteUICanceled = 1;
  }
}

uint64_t __54__TUIOptInFlowControllerImpl_remoteUIWillLoadRequest___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)remoteUIDidEndFlow:(id)flow
{
  flowCopy = flow;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl remoteUIDidEndFlow:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInFlowControllerImpl remoteUIDidEndFlow:];
  }
}

uint64_t __49__TUIOptInFlowControllerImpl_remoteUIDidEndFlow___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)remoteUIWillPresentObjectModel:(id)model modally:(BOOL)modally
{
  modallyCopy = modally;
  v16 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl remoteUIWillPresentObjectModel:modally:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315906;
    v9 = "[TUIOptInFlowControllerImpl remoteUIWillPresentObjectModel:modally:]";
    v10 = 2114;
    v11 = modelCopy;
    v12 = 1024;
    v13 = modallyCopy;
    v14 = 2114;
    selfCopy = self;
    _os_log_debug_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "%s ineligible devices remote UI: objectModel = %{public}@, isModal = %d on %{public}@", &v8, 0x26u);
  }
}

uint64_t __69__TUIOptInFlowControllerImpl_remoteUIWillPresentObjectModel_modally___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)remoteUIDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl remoteUIDidDismiss:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInFlowControllerImpl remoteUIDidDismiss:];
  }

  if (self->_ineligibleDevicesRemoteUICanceled)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      [TUIOptInFlowControllerImpl remoteUIDidDismiss:];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      [TUIOptInFlowControllerImpl remoteUIDidDismiss:];
    }

    [(TUIOptInFlowControllerImpl *)self _dismiss];
  }

  else if (self->_ineligibleDevicesRemoteUIPresented)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      [TUIOptInFlowControllerImpl remoteUIDidDismiss:];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      [TUIOptInFlowControllerImpl remoteUIDidDismiss:];
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
    {
      [TUIOptInFlowControllerImpl remoteUIDidDismiss:];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      [TUIOptInFlowControllerImpl remoteUIDidDismiss:];
    }

    [(TUIOptInFlowControllerImpl *)self _continueAttemptToSetOptInWithState:1];
  }
}

uint64_t __49__TUIOptInFlowControllerImpl_remoteUIDidDismiss___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIOptInFlowControllerImpl_remoteUIDidDismiss___block_invoke_357()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIOptInFlowControllerImpl_remoteUIDidDismiss___block_invoke_360()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__TUIOptInFlowControllerImpl_remoteUIDidDismiss___block_invoke_363()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)remoteUIDidReceiveHTTPResponse:(id)response
{
  responseCopy = response;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl remoteUIDidReceiveHTTPResponse:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInFlowControllerImpl remoteUIDidReceiveHTTPResponse:];
  }
}

uint64_t __61__TUIOptInFlowControllerImpl_remoteUIDidReceiveHTTPResponse___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)remoteUIDidPresentObjectModel:(id)model modally:(BOOL)modally
{
  modallyCopy = modally;
  v16 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_1 != -1)
  {
    [TUIOptInFlowControllerImpl remoteUIDidPresentObjectModel:modally:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315906;
    v9 = "[TUIOptInFlowControllerImpl remoteUIDidPresentObjectModel:modally:]";
    v10 = 2114;
    v11 = modelCopy;
    v12 = 1024;
    v13 = modallyCopy;
    v14 = 2114;
    selfCopy = self;
    _os_log_debug_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "%s ineligible devices remote UI: objectModel = %{public}@, isModal = %d on %{public}@", &v8, 0x26u);
  }

  self->_ineligibleDevicesRemoteUIPresented = 1;
}

uint64_t __68__TUIOptInFlowControllerImpl_remoteUIDidPresentObjectModel_modally___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (TUIOptInFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performAccountChecksForFlow:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_78_cold_2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_78_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_81_cold_2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_81_cold_4()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
}

void __58__TUIOptInFlowControllerImpl_performAccountChecksForFlow___block_invoke_81_cold_7()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)showAppleIDErrorForFlow:withViewModel:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_showOptInErrorForViewModel:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

- (void)_openSettingsURL:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

void __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_141_cold_2()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __69__TUIOptInFlowControllerImpl_dismissRemoteUIForViewController_error___block_invoke_145_cold_2()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_verifyCDPWithCompletion:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

- (void)_attemptToSetOptInWithState:.cold.2()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_179_cold_2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void __58__TUIOptInFlowControllerImpl__attemptToSetOptInWithState___block_invoke_179_cold_4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_continueAttemptToSetOptInWithState:.cold.2()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195_cold_3()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
}

void __66__TUIOptInFlowControllerImpl__continueAttemptToSetOptInWithState___block_invoke_195_cold_7(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 devicesWithIssuesIdentifiers];
  v5 = 138543618;
  v6 = a1;
  v7 = 2048;
  v8 = [v4 count];
  _os_log_debug_impl(&dword_26F50B000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ devices with issues count: %ld", &v5, 0x16u);
}

- (void)_showOptInResultError:error:.cold.2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_beginIneligibleDevicesRemoteUIRequestWithCompletion:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 absoluteString];
  v8[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v9 = v7;
  v10 = a3;
  _os_log_debug_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEBUG, "%s ineligible devices remote UI URL = '%{public}@' on %{public}@", v8, 0x20u);
}

- (void)_showErrorAlertWithError:presentingViewController:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x20u);
}

- (void)_verifyMessages:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_verifyMessages:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_330_cold_2()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  v6 = 136315394;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s success on %{public}@", v2, v3, v4, v5, v6);
}

void __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_330_cold_4()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  v6 = 136315394;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s success on %{public}@", v2, v3, v4, v5, v6);
}

void __46__TUIOptInFlowControllerImpl__verifyMessages___block_invoke_330_cold_6()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)remoteUIWillLoadRequest:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)remoteUIDidEndFlow:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)remoteUIDidDismiss:.cold.4()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s ineligible devices remote UI: no ineligible devices found => continue opt in on %{public}@", v2, v3, v4, v5, v6);
}

- (void)remoteUIDidDismiss:.cold.6()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s ineligible devices remote UI: Remove Devices in Settings pressed on %{public}@", v2, v3, v4, v5, v6);
}

- (void)remoteUIDidDismiss:.cold.8()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s ineligible devices remote UI: OK pressed on %{public}@", v2, v3, v4, v5, v6);
}

- (void)remoteUIDidReceiveHTTPResponse:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end