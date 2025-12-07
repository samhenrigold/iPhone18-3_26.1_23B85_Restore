@interface MSDWelcomeViewController
+ (void)needsToRun:(id)run;
- (BOOL)_bothWifiAndCellularActive;
- (MSDWelcomeViewController)init;
- (void)_checkIn;
- (void)_showCheckInErrorAlert;
- (void)_showNetworkInterfaceSelectionAlert;
- (void)_showNextView;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation MSDWelcomeViewController

+ (void)needsToRun:(id)run
{
  runCopy = run;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__MSDWelcomeViewController_needsToRun___block_invoke;
  v7[3] = &unk_2798F1C98;
  v8 = runCopy;
  selfCopy = self;
  v6 = runCopy;
  dispatch_async(v5, v7);
}

uint64_t __39__MSDWelcomeViewController_needsToRun___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D29520] sharedInstance];
  v3 = [v2 isEnrolled:0];

  v5 = defaultLogHandle(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = objc_opt_class();
    v17 = 1024;
    v18 = v3 ^ 1;
    v6 = v16;
    _os_log_impl(&dword_259BCA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ needs to run: %{BOOL}d", &v15, 0x12u);
  }

  v7 = [MEMORY[0x277D29510] sharedInstance];
  v8 = [v7 isDeviceEnrolledWithDeKOTA:0];

  v10 = defaultLogHandle(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v15 = 138543618;
    v16 = v11;
    v17 = 1024;
    v18 = v8;
    v12 = v11;
    _os_log_impl(&dword_259BCA000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ needs to enable SEP demo mode: %{BOOL}d", &v15, 0x12u);
  }

  if (v8)
  {
    v13 = [MEMORY[0x277D29520] sharedInstance];
    [v13 setSEPDemoMode:1];
  }

  return (*(*(a1 + 32) + 16))();
}

- (MSDWelcomeViewController)init
{
  v3 = [MSDSetupUILocalization localizedStringForKey:@"DEMO_SETUP_WAIT_TEXT"];
  v8.receiver = self;
  v8.super_class = MSDWelcomeViewController;
  v4 = [(OBSetupAssistantSpinnerController *)&v8 initWithSpinnerText:v3];
  if (v4)
  {
    v5 = +[MSDSetupUIController sharedInstance];
    [(MSDWelcomeViewController *)v4 setController:v5];

    [(MSDWelcomeViewController *)v4 setCurrentSSID:0];
    navigationItem = [(OBBaseWelcomeController *)v4 navigationItem];
    [navigationItem setHidesBackButton:1];
  }

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v37[2] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D29580];
  v6 = *MEMORY[0x277D29578];
  v37[0] = *MEMORY[0x277D29580];
  v37[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v34.receiver = self;
  v34.super_class = MSDWelcomeViewController;
  [(OBBaseWelcomeController *)&v34 viewDidAppear:appearCopy];
  controller = [(MSDWelcomeViewController *)self controller];
  [controller saveLocationServicesState];

  v9 = [MEMORY[0x277CBEAA8] now];
  [v9 timeIntervalSince1970];
  v11 = v10;
  controller2 = [(MSDWelcomeViewController *)self controller];
  [controller2 setAutoEnrollmentTimeStamp:v11];

  navigationController = [(MSDWelcomeViewController *)self navigationController];
  if (!navigationController || (v14 = navigationController, [(MSDWelcomeViewController *)self navigationController], v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MSDWelcomeViewController viewDidAppear:];
  }

  controller3 = [(MSDWelcomeViewController *)self controller];
  completionHandler = [(MSDWelcomeViewController *)self completionHandler];
  [controller3 setCompletionHandler:completionHandler];

  controller4 = [(MSDWelcomeViewController *)self controller];
  navigationController2 = [(MSDWelcomeViewController *)self navigationController];
  [controller4 setNavigationController:navigationController2];

  mEMORY[0x277D29520] = [MEMORY[0x277D29520] sharedInstance];
  typeOfDemoDevice = [mEMORY[0x277D29520] typeOfDemoDevice];

  if (typeOfDemoDevice == 3)
  {
    v23 = defaultLogHandle(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259BCA000, v23, OS_LOG_TYPE_DEFAULT, "Device is a FDSKU device only and does not have demo bit; entering offline mode", buf, 2u);
    }

    controller5 = [(MSDWelcomeViewController *)self controller];
    [controller5 quitToOfflineMode];
  }

  else
  {
    mEMORY[0x277D29520]2 = [MEMORY[0x277D29520] sharedInstance];
    v33 = 0;
    v26 = [mEMORY[0x277D29520]2 getCurrentNetworkInfoForKeys:v7 outError:&v33];
    controller5 = v33;

    v28 = defaultLogHandle(v27);
    v29 = v28;
    if (!v26 || controller5)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [(MSDWelcomeViewController *)controller5 viewDidAppear:v29];
      }
    }

    else
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v36 = v26;
        _os_log_impl(&dword_259BCA000, v29, OS_LOG_TYPE_DEFAULT, "Got current network info: %{public}@", buf, 0xCu);
      }

      v29 = [v26 objectForKey:v5];
      v30 = [v26 objectForKey:v6];
      if (v29)
      {
        [(MSDWelcomeViewController *)self setCurrentSSID:v29];
      }

      if (v30)
      {
        -[MSDWelcomeViewController setActiveNetworkInterface:](self, "setActiveNetworkInterface:", [v30 unsignedIntegerValue]);
      }
    }

    _bothWifiAndCellularActive = [(MSDWelcomeViewController *)self _bothWifiAndCellularActive];
    if (_bothWifiAndCellularActive)
    {
      v32 = defaultLogHandle(_bothWifiAndCellularActive);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_259BCA000, v32, OS_LOG_TYPE_DEFAULT, "Both WiFi and Cellular are active on device, prompting user to choose network configuration...", buf, 2u);
      }

      [(MSDWelcomeViewController *)self _showNetworkInterfaceSelectionAlert];
    }

    else
    {
      [(MSDWelcomeViewController *)self _checkIn];
    }
  }
}

- (BOOL)_bothWifiAndCellularActive
{
  if (([(MSDWelcomeViewController *)self activeNetworkInterface]& 1) != 0)
  {
    return ([(MSDWelcomeViewController *)self activeNetworkInterface]>> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_checkIn
{
  has_internal_content = os_variant_has_internal_content();
  if (!has_internal_content)
  {
LABEL_14:
    v13 = defaultLogHandle(has_internal_content);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259BCA000, v13, OS_LOG_TYPE_DEFAULT, "Checking In with Demo Unit ...", buf, 2u);
    }

    mEMORY[0x277D29520] = [MEMORY[0x277D29520] sharedInstance];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __36__MSDWelcomeViewController__checkIn__block_invoke;
    v15[3] = &unk_2798F1CE8;
    v15[4] = self;
    [mEMORY[0x277D29520] checkInWithCompletion:v15];

    return;
  }

  v4 = +[MSDTestPreferences sharedInstance];
  storePickerUIMode = [v4 storePickerUIMode];

  v6 = +[MSDTestPreferences sharedInstance];
  disassociateWiFiBeforeCheckIn = [v6 disassociateWiFiBeforeCheckIn];

  if (storePickerUIMode != 1)
  {
    if (!storePickerUIMode)
    {
      v8 = defaultLogHandle(has_internal_content);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_259BCA000, v8, OS_LOG_TYPE_DEFAULT, "Skipping CheckIn and calling demod...", buf, 2u);
      }

      controller = [(MSDWelcomeViewController *)self controller];
      [controller setupCompleteWithStoreID:0];

      return;
    }

    if (disassociateWiFiBeforeCheckIn)
    {
      v11 = defaultLogHandle(has_internal_content);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_259BCA000, v11, OS_LOG_TYPE_DEFAULT, "Disconnecting WiFi...", buf, 2u);
      }

      controller2 = [(MSDWelcomeViewController *)self controller];
      [controller2 disconnectWiFi];
    }

    goto LABEL_14;
  }

  v10 = defaultLogHandle(has_internal_content);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259BCA000, v10, OS_LOG_TYPE_DEFAULT, "Showing store picker UI...", buf, 2u);
  }

  [(MSDWelcomeViewController *)self _showNextView];
}

void __36__MSDWelcomeViewController__checkIn__block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MSDWelcomeViewController__checkIn__block_invoke_2;
  block[3] = &unk_2798F1CC0;
  v13 = a2;
  v14 = a3;
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __36__MSDWelcomeViewController__checkIn__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = defaultLogHandle(a1);
  v5 = v4;
  if (v3)
  {
    __36__MSDWelcomeViewController__checkIn__block_invoke_2_cold_1(v4, v2, a1);
    return;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 49);
    v17 = 67109376;
    v18 = v6;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_259BCA000, v5, OS_LOG_TYPE_DEFAULT, "Device eligibility for demo: %d; showUI: %d", &v17, 0xEu);
  }

  if (*(a1 + 48) != 1)
  {
    v10 = defaultLogHandle(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) controller];
      v12 = [v11 hasSecureCookie];
      v17 = 67109120;
      v18 = v12;
      _os_log_impl(&dword_259BCA000, v10, OS_LOG_TYPE_DEFAULT, "Device is not eligible; hasSecureCookie=%d", &v17, 8u);
    }

    v13 = [*(a1 + 40) controller];
    v14 = [v13 hasSecureCookie];

    v15 = [*(a1 + 40) controller];
    v16 = v15;
    if (v14)
    {
      [v15 quitToOfflineMode];
    }

    else
    {
      [v15 quitToCustomerFlow];
    }

    goto LABEL_15;
  }

  if (*(a1 + 49) != 1)
  {
    v16 = [*(a1 + 40) controller];
    [v16 setupCompleteWithStoreID:0];
LABEL_15:

    return;
  }

  v9 = defaultLogHandle(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_259BCA000, v9, OS_LOG_TYPE_DEFAULT, "Showing store picker UI...", &v17, 2u);
  }

  [*(a1 + 40) _showNextView];
}

- (void)_showCheckInErrorAlert
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSDWelcomeViewController__showCheckInErrorAlert__block_invoke;
  block[3] = &unk_2798F1C48;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__MSDWelcomeViewController__showCheckInErrorAlert__block_invoke(uint64_t a1)
{
  v2 = [MSDSetupUILocalization localizedStringForKey:@"CHECK_IN_ERROR_TITLE"];
  v3 = [MSDSetupUILocalization localizedStringForKey:@"CHOOSE_NETWORK_OPTION"];
  v4 = [MSDSetupUILocalization localizedStringForKey:@"COMPLETE_SETUP_OPTION"];
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:v2 message:0 preferredStyle:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__MSDWelcomeViewController__showCheckInErrorAlert__block_invoke_2;
  v9[3] = &unk_2798F1D10;
  v9[4] = *(a1 + 32);
  v6 = [MEMORY[0x277D750F8] actionWithTitle:v3 style:0 handler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__MSDWelcomeViewController__showCheckInErrorAlert__block_invoke_27;
  v8[3] = &unk_2798F1D10;
  v8[4] = *(a1 + 32);
  v7 = [MEMORY[0x277D750F8] actionWithTitle:v4 style:1 handler:v8];
  [v5 addAction:v6];
  [v5 addAction:v7];
  [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
}

void __50__MSDWelcomeViewController__showCheckInErrorAlert__block_invoke_2(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Back to wifi pane to choose different network", v4, 2u);
  }

  v3 = [*(a1 + 32) controller];
  [v3 popTopmostViewController];
}

void __50__MSDWelcomeViewController__showCheckInErrorAlert__block_invoke_27(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Completing setup and quitting store picker UI...", v7, 2u);
  }

  v3 = [*(a1 + 32) controller];
  v4 = [v3 hasSecureCookie];

  v5 = [*(a1 + 32) controller];
  v6 = v5;
  if (v4)
  {
    [v5 quitToOfflineMode];
  }

  else
  {
    [v5 quitToHomeScreen];
  }
}

- (void)_showNetworkInterfaceSelectionAlert
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke;
  block[3] = &unk_2798F1C48;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke(uint64_t a1)
{
  v2 = [MSDSetupUILocalization localizedStringForKey:@"NETWORK_CONFIG_TITLE"];
  v3 = [*(a1 + 32) currentSSID];
  v4 = [MSDSetupUILocalization localizedStringForKey:@"NETWORK_CONFIG_DESCRIPTION" withStringArgument:v3];

  v5 = [MSDSetupUILocalization localizedStringForKey:@"USE_CELLULAR_OPTION"];
  v6 = [MSDSetupUILocalization localizedStringForKey:@"CHOOSE_NETWORK_OPTION"];
  if (MGGetBoolAnswer())
  {
    v7 = @"USE_WLAN_AND_CELLUAR_OPTION";
  }

  else
  {
    v7 = @"USE_WIFI_AND_CELLUAR_OPTION";
  }

  v8 = [MSDSetupUILocalization localizedStringForKey:v7];
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v2 message:v4 preferredStyle:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke_2;
  v15[3] = &unk_2798F1D10;
  v15[4] = *(a1 + 32);
  v10 = [MEMORY[0x277D750F8] actionWithTitle:v5 style:0 handler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke_46;
  v14[3] = &unk_2798F1D10;
  v14[4] = *(a1 + 32);
  v11 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke_47;
  v13[3] = &unk_2798F1D10;
  v13[4] = *(a1 + 32);
  v12 = [MEMORY[0x277D750F8] actionWithTitle:v6 style:0 handler:v13];
  [v9 addAction:v10];
  [v9 addAction:v11];
  [v9 addAction:v12];
  [v9 setPreferredAction:v12];
  [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
}

void __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Using Cellular Only", buf, 2u);
  }

  v3 = [MEMORY[0x277D29520] sharedInstance];
  v7 = 0;
  [v3 disconnectAndForgetWiFi:&v7];
  v4 = v7;

  v6 = defaultLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "Disconnect and forget wifi completed with error: %{public}@", buf, 0xCu);
  }

  [*(a1 + 32) _checkIn];
}

uint64_t __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke_46(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Using WiFi + Cellular", v4, 2u);
  }

  return [*(a1 + 32) _checkIn];
}

void __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke_47(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Back to wifi pane to choose different network", v4, 2u);
  }

  v3 = [*(a1 + 32) controller];
  [v3 popTopmostViewController];
}

- (void)_showNextView
{
  v4 = objc_alloc_init(MSDDemoSetupViewController);
  controller = [(MSDWelcomeViewController *)self controller];
  [controller pushViewController:v4 andRemoveTopmostView:0];
}

- (void)viewDidAppear:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_259BCA000, a2, OS_LOG_TYPE_ERROR, "Failed to get current network info with error: %{public}@", &v2, 0xCu);
}

uint64_t __36__MSDWelcomeViewController__checkIn__block_invoke_2_cold_1(NSObject *a1, uint64_t *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7 = *a2;
    v8 = 138543362;
    v9 = v7;
    _os_log_error_impl(&dword_259BCA000, a1, OS_LOG_TYPE_ERROR, "CheckIn returned error: %{public}@", &v8, 0xCu);
  }

  return [*(a3 + 40) _showCheckInErrorAlert];
}

@end