@interface MSDSetupUIController
+ (MSDSetupUIController)sharedInstance;
- (BOOL)hasSecureCookie;
- (void)_restoreLocationServicesState;
- (void)_setupComplete:(BOOL)complete;
- (void)_startEACSWithReason:(id)reason eraseDataPlan:(BOOL)plan;
- (void)disconnectWiFi;
- (void)enableLocationServices;
- (void)markAsNotDemoAndEraseDataPlan:(BOOL)plan;
- (void)popTopmostViewController;
- (void)pushViewController:(id)controller andRemoveTopmostView:(BOOL)view;
- (void)quitToCustomerFlow;
- (void)quitToHomeScreen;
- (void)quitToOfflineMode;
- (void)saveLocationServicesState;
- (void)setCompletionHandler:(id)handler;
- (void)setHelpMenuRowSelection:(id)selection;
- (void)setupCompleteWithStoreID:(id)d;
@end

@implementation MSDSetupUIController

+ (MSDSetupUIController)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[MSDSetupUIController sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __38__MSDSetupUIController_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(MSDSetupUIController);

  return MEMORY[0x2821F96F8]();
}

- (void)pushViewController:(id)controller andRemoveTopmostView:(BOOL)view
{
  controllerCopy = controller;
  navigationController = [(MSDSetupUIController *)self navigationController];
  topViewController = [navigationController topViewController];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__MSDSetupUIController_pushViewController_andRemoveTopmostView___block_invoke;
  v11[3] = &unk_2798F1DD8;
  v11[4] = self;
  v12 = controllerCopy;
  viewCopy = view;
  v13 = topViewController;
  v9 = topViewController;
  v10 = controllerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __64__MSDSetupUIController_pushViewController_andRemoveTopmostView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__MSDSetupUIController_pushViewController_andRemoveTopmostView___block_invoke_2;
  v6[3] = &unk_2798F1DB0;
  v9 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v2 pushViewController:v3 completion:v6];
}

void __64__MSDSetupUIController_pushViewController_andRemoveTopmostView___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v2 = defaultLogHandle(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = objc_opt_class();
      v3 = v9;
      _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Removing top most view: %{public}@", &v8, 0xCu);
    }

    v4 = [*(a1 + 40) navigationController];
    v5 = [v4 viewControllers];
    v6 = [v5 mutableCopy];

    [v6 removeObject:*(a1 + 32)];
    v7 = [*(a1 + 40) navigationController];
    [v7 setViewControllers:v6];
  }
}

- (void)popTopmostViewController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MSDSetupUIController_popTopmostViewController__block_invoke;
  block[3] = &unk_2798F1C48;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__MSDSetupUIController_popTopmostViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)setCompletionHandler:(id)handler
{
  self->_completionHandler = MEMORY[0x259CB1050](handler, a2);

  MEMORY[0x2821F96F8]();
}

- (void)setupCompleteWithStoreID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = defaultLogHandle(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = dCopy;
    _os_log_impl(&dword_259BCA000, v5, OS_LOG_TYPE_DEFAULT, "MobileStoreDemo setup UI complete with store ID: %@", buf, 0xCu);
  }

  if (dCopy)
  {
    v12 = *MEMORY[0x277D29550];
    v13 = dCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = defaultLogHandle(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_259BCA000, v8, OS_LOG_TYPE_DEFAULT, "Starting demod with options: %{public}@", buf, 0xCu);
  }

  mEMORY[0x277D29520] = [MEMORY[0x277D29520] sharedInstance];
  [mEMORY[0x277D29520] sendAutoEnrollmentResult:dCopy withStoreId:self->_helpMenuUserTapped withHelpMenuRowSelection:self->_autoEnrollmentTimeStamp];

  mEMORY[0x277D29520]2 = [MEMORY[0x277D29520] sharedInstance];
  v11 = [mEMORY[0x277D29520]2 prepareWithOptions:v7];

  [(MSDSetupUIController *)self _setupComplete:v11];
}

- (void)quitToCustomerFlow
{
  v3 = defaultLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "MobileStoreDemo setup UI exit, proceed to customer Buddy flow", v4, 2u);
  }

  [(MSDSetupUIController *)self _setupComplete:0];
}

- (void)quitToOfflineMode
{
  v3 = defaultLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "MobileStoreDemo setup UI exit, proceed to offline mode", v6, 2u);
  }

  mEMORY[0x277D29520] = [MEMORY[0x277D29520] sharedInstance];
  v5 = [mEMORY[0x277D29520] enterOfflineModeWithOptions:0 error:0];

  [(MSDSetupUIController *)self _setupComplete:v5];
}

- (BOOL)hasSecureCookie
{
  v10 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D29520] = [MEMORY[0x277D29520] sharedInstance];
  typeOfDemoDevice = [mEMORY[0x277D29520] typeOfDemoDevice];

  v6 = typeOfDemoDevice == 5 || typeOfDemoDevice == 3;
  v7 = defaultLogHandle(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_259BCA000, v7, OS_LOG_TYPE_DEFAULT, "Device has secure cookie: %d", v9, 8u);
  }

  return v6;
}

- (void)quitToHomeScreen
{
  v3 = defaultLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "MobileStoreDemo setup UI exit, proceed to home screen", v4, 2u);
  }

  [(MSDSetupUIController *)self _setupComplete:1];
}

- (void)setHelpMenuRowSelection:(id)selection
{
  self->_helpMenuUserTapped = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:selection requiringSecureCoding:0 error:0];

  MEMORY[0x2821F96F8]();
}

- (void)markAsNotDemoAndEraseDataPlan:(BOOL)plan
{
  planCopy = plan;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = dispatch_semaphore_create(0);
  if (os_variant_has_internal_content() && (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 skipMarkAsNotDemo], v5, v6))
  {
    v20 = defaultLogHandle(v7);
    [MSDSetupUIController markAsNotDemoAndEraseDataPlan:v20];
  }

  else
  {
    mEMORY[0x277D29520] = [MEMORY[0x277D29520] sharedInstance];
    typeOfDemoDevice = [mEMORY[0x277D29520] typeOfDemoDevice];

    if (typeOfDemoDevice == 5)
    {
      mEMORY[0x277D29520]2 = [MEMORY[0x277D29520] sharedInstance];
      v12 = +[MSDLanguageAndRegionManager sharedInstance];
      getCurrentDeviceLanguage = [v12 getCurrentDeviceLanguage];
      v14 = +[MSDLanguageAndRegionManager sharedInstance];
      getCurrentDeviceRegion = [v14 getCurrentDeviceRegion];
      [mEMORY[0x277D29520]2 sendAutoEnrollmentAbortEvent:getCurrentDeviceLanguage countryCode:getCurrentDeviceRegion];
    }

    v16 = defaultLogHandle(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259BCA000, v16, OS_LOG_TYPE_DEFAULT, "Requesting device to be marked as not demo", buf, 2u);
    }

    mEMORY[0x277D29520]3 = [MEMORY[0x277D29520] sharedInstance];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__MSDSetupUIController_markAsNotDemoAndEraseDataPlan___block_invoke;
    v21[3] = &unk_2798F1E00;
    v21[4] = &v23;
    [mEMORY[0x277D29520]3 markAsNotDemoWithCompletion:v21];

    v19 = defaultLogHandle(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259BCA000, v19, OS_LOG_TYPE_DEFAULT, "Waiting for mark as demo to complete...", buf, 2u);
    }

    dispatch_semaphore_wait(v24[5], 0xFFFFFFFFFFFFFFFFLL);
  }

  [(MSDSetupUIController *)self _startEACSWithReason:@"Not a Demo Device Erase" eraseDataPlan:planCopy];
  _Block_object_dispose(&v23, 8);
}

void __54__MSDSetupUIController_markAsNotDemoAndEraseDataPlan___block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = defaultLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "MarkAsNotDemo returned success: %d; error: %{public}@", v7, 0x12u);
  }

  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
}

- (void)disconnectWiFi
{
  mEMORY[0x277D29520] = [MEMORY[0x277D29520] sharedInstance];
  [mEMORY[0x277D29520] disconnectAndForgetWiFi:0];
}

- (void)enableLocationServices
{
  v2 = defaultLogHandle(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Enabling location services...", v3, 2u);
  }

  [MEMORY[0x277CBFC10] setLocationServicesEnabled:1];
}

- (void)saveLocationServicesState
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSDSetupUIController_saveLocationServicesState__block_invoke;
  block[3] = &unk_2798F1C48;
  block[4] = self;
  if (saveLocationServicesState_onceToken != -1)
  {
    dispatch_once(&saveLocationServicesState_onceToken, block);
  }
}

void __49__MSDSetupUIController_saveLocationServicesState__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setOriginalLocationServicesState:{objc_msgSend(*(a1 + 32), "hasSecureCookie")}];
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_time(0, 30000000000);
  v4 = defaultLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "Saving original Location Services state...", buf, 2u);
  }

  v5 = dispatch_get_global_queue(21, 0);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __49__MSDSetupUIController_saveLocationServicesState__block_invoke_25;
  v13 = &unk_2798F1D60;
  v14 = *(a1 + 32);
  v6 = v2;
  v15 = v6;
  dispatch_async(v5, &v10);

  v7 = dispatch_semaphore_wait(v6, v3);
  if (v7)
  {
    v8 = defaultLogHandle(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) originalLocationServicesState];
      *buf = 67109376;
      v17 = 30;
      v18 = 1024;
      v19 = v9;
      _os_log_impl(&dword_259BCA000, v8, OS_LOG_TYPE_DEFAULT, "Timed out waiting for location services state after %ds; assume Location Services is %{BOOL}d", buf, 0xEu);
    }
  }
}

intptr_t __49__MSDSetupUIController_saveLocationServicesState__block_invoke_25(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle([*(a1 + 32) setOriginalLocationServicesState:{objc_msgSend(MEMORY[0x277CBFC10], "locationServicesEnabled:", 0)}]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) originalLocationServicesState];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Saved original Location Services state as %{BOOL}d", v5, 8u);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_setupComplete:(BOOL)complete
{
  [(MSDSetupUIController *)self _restoreLocationServicesState];
  completionHandler = [(MSDSetupUIController *)self completionHandler];

  if (completionHandler)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__MSDSetupUIController__setupComplete___block_invoke;
    block[3] = &unk_2798F1E28;
    completeCopy = complete;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v7 = defaultLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_259BCA000, v7, OS_LOG_TYPE_DEFAULT, "No completion handler provided", v8, 2u);
    }
  }
}

void __39__MSDSetupUIController__setupComplete___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Calling MobileStoreDemoSetupUI completion handler with success=%{BOOL}d", v5, 8u);
  }

  v4 = [*(a1 + 32) completionHandler];
  v4[2](v4, *(a1 + 40));
}

- (void)_startEACSWithReason:(id)reason eraseDataPlan:(BOOL)plan
{
  planCopy = plan;
  reasonCopy = reason;
  v6 = defaultLogHandle(reasonCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "Starting Erase Content and Settings...", v10, 2u);
  }

  v7 = objc_alloc_init(MEMORY[0x277D072B0]);
  [v7 setEraseDataPlan:planCopy];
  v8 = [objc_alloc(MEMORY[0x277D072B8]) initWithMode:4 options:v7 reason:reasonCopy];

  mEMORY[0x277D072C0] = [MEMORY[0x277D072C0] sharedInstance];
  [mEMORY[0x277D072C0] resetWithRequest:v8 completion:&__block_literal_global_31];
}

void __59__MSDSetupUIController__startEACSWithReason_eraseDataPlan___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = defaultLogHandle(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 138543362;
      v9 = v2;
      v5 = "Request to erase all content and settings failed =  %{public}@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v8) = 0;
    v5 = "Reset was successful";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }
}

- (void)_restoreLocationServicesState
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = [(MSDSetupUIController *)self originalLocationServicesState];
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "Restoring Location Services state to %{BOOL}d", v4, 8u);
  }

  [MEMORY[0x277CBFC10] setLocationServicesEnabled:{-[MSDSetupUIController originalLocationServicesState](self, "originalLocationServicesState")}];
}

- (void)markAsNotDemoAndEraseDataPlan:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_259BCA000, a1, OS_LOG_TYPE_DEFAULT, "Skipping making the device as not demo...", v2, 2u);
  }
}

@end