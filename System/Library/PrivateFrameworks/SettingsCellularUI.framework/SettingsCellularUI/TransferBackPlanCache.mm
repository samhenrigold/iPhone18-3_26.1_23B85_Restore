@interface TransferBackPlanCache
- (BOOL)_canLaunchSIMSetupFlow;
- (TransferBackPlanCache)initWithDelegate:(id)delegate navigationController:(id)controller transferBackPlan:(id)plan;
- (UINavigationController)navigationController;
- (id)getLogger;
- (void)_handleActivateExpiry;
- (void)_prepareSIMSetupFlow;
- (void)_presentViewController:(id)controller;
- (void)_showWifiAlert;
- (void)_useLine:(BOOL)line forPlan:(id)plan;
- (void)cellularPlanChanged:(id)changed;
- (void)dealloc;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)transferBack:(id)back;
@end

@implementation TransferBackPlanCache

- (TransferBackPlanCache)initWithDelegate:(id)delegate navigationController:(id)controller transferBackPlan:(id)plan
{
  delegateCopy = delegate;
  controllerCopy = controller;
  planCopy = plan;
  v16.receiver = self;
  v16.super_class = TransferBackPlanCache;
  v12 = [(TransferBackPlanCache *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transferBackItem, plan);
    objc_storeStrong(&v13->_delegate, delegate);
    objc_storeWeak(&v13->_navigationController, controllerCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel_cellularPlanChanged_ name:@"PSUICellularPlanChanged" object:0];

    [(TransferBackPlanCache *)v13 transferBack:planCopy];
  }

  return v13;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  getLogger = [(TransferBackPlanCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    flow = self->_flow;
    *buf = 138412290;
    v8 = flow;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "release SS flow : %@", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = TransferBackPlanCache;
  [(TransferBackPlanCache *)&v6 dealloc];
}

- (void)transferBack:(id)back
{
  v29 = *MEMORY[0x277D85DE8];
  backCopy = back;
  objc_storeStrong(&self->_transferBackItem, back);
  v5 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  planItems = [v6 planItems];

  v8 = [planItems countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(planItems);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        iccid = [v12 iccid];

        if (iccid)
        {
          getLogger = [(TransferBackPlanCache *)self getLogger];
          if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
          {
            iccid2 = [v12 iccid];
            *buf = 138412290;
            v27 = iccid2;
            _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "existed iccid : %@", buf, 0xCu);
          }

          iccid3 = [v12 iccid];
          [v5 addObject:iccid3];
        }
      }

      v9 = [planItems countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  v17 = [v5 copy];
  existedIccids = self->_existedIccids;
  self->_existedIccids = v17;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TransferBackPlanCache *)self _useLine:1 forPlan:backCopy];
    if ([(TransferBackPlanCache *)self _canLaunchSIMSetupFlow])
    {
      v19 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__handleActivateExpiry selector:0 userInfo:0 repeats:30.0];
      activateTimer = self->_activateTimer;
      self->_activateTimer = v19;
    }
  }

  [(TransferBackPlanCache *)self _prepareSIMSetupFlow];
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  v10 = *MEMORY[0x277D85DE8];
  getLogger = [(TransferBackPlanCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    completedCopy = completed;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "finish SS flow : %lu", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TransferBackPlanCache_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BA9FE0;
  objc_copyWeak(v7, buf);
  v7[1] = completed;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v7);
  objc_destroyWeak(buf);
}

void __47__TransferBackPlanCache_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained navigationController];
    v5 = [v4 topViewController];
    v6 = [v5 presentedViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];

    [v3 setFlow:0];
    v7 = *(a1 + 48);
    if (v7 != 2)
    {
      if (v7 == 1)
      {
        v8 = [*(a1 + 32) getLogger];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "transfer back canceled", buf, 2u);
        }

        v9 = [v3 delegate];
        v10 = [v3 transferBackItem];
        [v9 transferBackCanceled:v10];
        goto LABEL_13;
      }

      v13 = [*(a1 + 32) getLogger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "transfer back failed, abort", v14, 2u);
      }

      v9 = [v3 delegate];
      v10 = [v3 transferBackItem];
      v12 = [v3 transferError];
      [v9 transferBackFailed:v10 error:v12];
LABEL_12:

LABEL_13:
      goto LABEL_14;
    }

    v11 = [v3 transferToItem];

    if (v11)
    {
      v9 = [v3 delegate];
      v10 = [v3 transferBackItem];
      v12 = [v3 transferToItem];
      [v9 transferBackSuccessFrom:v10 to:v12];
      goto LABEL_12;
    }
  }

LABEL_14:
}

- (BOOL)_canLaunchSIMSetupFlow
{
  phoneNumber = [self->_transferBackItem phoneNumber];
  v4 = [phoneNumber length];

  result = 0;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [self->_transferBackItem type] == 2)
    {
      return 1;
    }
  }

  return result;
}

- (void)_prepareSIMSetupFlow
{
  v13[2] = *MEMORY[0x277D85DE8];
  if ([(TransferBackPlanCache *)self _canLaunchSIMSetupFlow])
  {
    v3 = MEMORY[0x277D49530];
    v12[0] = *MEMORY[0x277D49548];
    v12[1] = @"TransferBackPlan";
    transferBackItem = self->_transferBackItem;
    v13[0] = &unk_287748FC0;
    v13[1] = transferBackItem;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v6 = [v3 flowWithOptions:v5];
    flow = self->_flow;
    self->_flow = v6;

    [(TSSIMSetupFlow *)self->_flow setDelegate:self];
    objc_initWeak(&location, self);
    v8 = self->_flow;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__TransferBackPlanCache__prepareSIMSetupFlow__block_invoke;
    v9[3] = &unk_279BA9EC8;
    objc_copyWeak(&v10, &location);
    v9[4] = self;
    [(TSSIMSetupFlow *)v8 firstViewController:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __45__TransferBackPlanCache__prepareSIMSetupFlow__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained isPlanReactivated] & 1) == 0)
    {
      v6 = [v5 activateTimer];

      if (v6)
      {
        [v5 setRootViewController:v3];
      }

      else
      {
        [v5 _presentViewController:v3];
      }
    }
  }

  else
  {
    v7 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2658DE000, v7, OS_LOG_TYPE_ERROR, "invalid PSUIReActivateSIMSpecifier", v8, 2u);
    }
  }
}

- (void)_useLine:(BOOL)line forPlan:(id)plan
{
  lineCopy = line;
  v16 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  getLogger = [(TransferBackPlanCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"deselected";
    if (lineCopy)
    {
      v8 = @"selected";
    }

    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = planCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%@ plan %@", &v12, 0x16u);
  }

  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v10 = [mEMORY[0x277CF96D8] didSelectPlanItem:planCopy isEnable:lineCopy];

  if (v10)
  {
    getLogger2 = [(TransferBackPlanCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = planCopy;
      v14 = 2112;
      v15 = v10;
      _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "Failed to select plan: %@, error: %@", &v12, 0x16u);
    }
  }
}

- (void)_handleActivateExpiry
{
  [(NSTimer *)self->_activateTimer invalidate];
  activateTimer = self->_activateTimer;
  self->_activateTimer = 0;

  if (!self->_isPlanReactivated)
  {
    [(TransferBackPlanCache *)self _useLine:0 forPlan:self->_transferBackItem];
    if (self->_rootViewController)
    {
      [(TransferBackPlanCache *)self _presentViewController:?];
      rootViewController = self->_rootViewController;
      self->_rootViewController = 0;
    }
  }
}

- (void)_presentViewController:(id)controller
{
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = +[PSUIDeviceWiFiState sharedInstance];
  if ([v5 isConnectedOverWiFi])
  {
    goto LABEL_4;
  }

  v6 = +[PSUIDeviceCellularState sharedInstance];
  if ([v6 isConnectedOverCellular])
  {

LABEL_4:
LABEL_5:
    getLogger = [(TransferBackPlanCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_navigationController);
      topViewController = [WeakRetained topViewController];
      v16 = 138412546;
      v17 = controllerCopy;
      v18 = 2112;
      v19 = topViewController;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "present %@. current top view controller : %@", &v16, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = controllerCopy;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:controllerCopy];
      [v10 setModalPresentationStyle:2];
    }

    v11 = objc_loadWeakRetained(&self->_navigationController);
    topViewController2 = [v11 topViewController];
    [topViewController2 presentViewController:v10 animated:1 completion:0];

    goto LABEL_11;
  }

  v13 = +[PSUIDeviceEthernetState sharedInstance];
  isConnectedOverEthernet = [v13 isConnectedOverEthernet];

  if (isConnectedOverEthernet)
  {
    goto LABEL_5;
  }

  getLogger2 = [(TransferBackPlanCache *)self getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Data connectivity is not available to set up eSIM(s)", &v16, 2u);
  }

  [(TransferBackPlanCache *)self _showWifiAlert];
LABEL_11:
}

- (void)_showWifiAlert
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NOT_CONNECTED_TO_INTERNET" value:&stru_287733598 table:@"Gemini-Gemini"];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  LODWORD(v3) = [currentDevice sf_isiPhone];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v3)
  {
    v8 = @"TURN_ON_WIFI_TO_SETUP_ESIM";
  }

  else
  {
    v8 = @"TURN_ON_WIFI_TO_SETUP_ESIM_IPAD";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_287733598 table:@"Gemini-Gemini"];

  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v9 preferredStyle:1];
  objc_initWeak(&location, self);
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  v22 = v4;
  if ([currentDevice2 sf_isChinaRegionCellularDevice])
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v12 localizedStringForKey:@"CHOOSE_WLAN" value:&stru_287733598 table:@"Gemini-Gemini"];
  }

  else
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v12 localizedStringForKey:@"CHOOSE_WIFI" value:&stru_287733598 table:@"Gemini-Gemini"];
  }
  v13 = ;

  v14 = MEMORY[0x277D750F8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __39__TransferBackPlanCache__showWifiAlert__block_invoke;
  v25[3] = &unk_279BA9E48;
  objc_copyWeak(&v26, &location);
  v15 = [v14 actionWithTitle:v13 style:0 handler:v25];
  [v10 addAction:v15];
  v16 = MEMORY[0x277D750F8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Gemini-Gemini"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __39__TransferBackPlanCache__showWifiAlert__block_invoke_2;
  v23[3] = &unk_279BAA010;
  v23[4] = self;
  objc_copyWeak(&v24, &location);
  v19 = [v16 actionWithTitle:v18 style:1 handler:v23];

  [v10 addAction:v19];
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);
  topViewController = [WeakRetained topViewController];
  [topViewController presentViewController:v10 animated:1 completion:0];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&location);
}

void __39__TransferBackPlanCache__showWifiAlert__block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:51 userInfo:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 transferBackItem];
  [v3 transferBackFailed:v5 error:v8];

  v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v7 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=WIFI"];
  [v6 openSensitiveURL:v7 withOptions:0];
}

void __39__TransferBackPlanCache__showWifiAlert__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "user canceled setting up eSIM", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 transferBackItem];
  [v4 transferBackCanceled:v6];
}

- (id)getLogger
{
  v2 = MEMORY[0x277D4D830];
  v3 = MEMORY[0x277CCACA8];
  iccid = [self->_transferBackItem iccid];
  v5 = [v3 stringWithFormat:@"reactivate.sim.model.%@", iccid];
  v6 = [v2 loggerWithCategory:v5];

  return v6;
}

- (void)cellularPlanChanged:(id)changed
{
  v39 = *MEMORY[0x277D85DE8];
  if (!self->_transferBackItem)
  {
    return;
  }

  getLogger = [(TransferBackPlanCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = @"PSUICellularPlanChanged";
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "received notification %@", buf, 0xCu);
  }

  v5 = +[PSUICellularPlanManagerCache sharedInstance];
  planItems = [v5 planItems];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = planItems;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = v8;
  v10 = *v33;
LABEL_6:
  v11 = 0;
  while (1)
  {
    if (*v33 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v32 + 1) + 8 * v11);
    existedIccids = self->_existedIccids;
    iccid = [(__CFString *)v12 iccid];
    LODWORD(existedIccids) = [(NSArray *)existedIccids hasIccid:iccid];

    if (!existedIccids)
    {
      goto LABEL_12;
    }

    iccid2 = [(__CFString *)v12 iccid];
    iccid3 = [self->_transferBackItem iccid];
    v17 = [iccid2 isEqualToString:iccid3];

    if (v17)
    {
      break;
    }

LABEL_21:
    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v9)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }
  }

  if ([(__CFString *)v12 transferredStatus])
  {
LABEL_12:
    if ([(__CFString *)v12 isInstalling])
    {
      iccid4 = [(__CFString *)v12 iccid];

      if (iccid4)
      {
        iccid5 = [(__CFString *)v12 iccid];
        installingIccid = self->_installingIccid;
        self->_installingIccid = iccid5;
      }
    }

    else
    {
      plan = [(__CFString *)v12 plan];
      status = [plan status];

      if (!status)
      {
        v23 = self->_installingIccid;
        iccid6 = [(__CFString *)v12 iccid];
        LODWORD(v23) = [(NSString *)v23 isEqualToString:iccid6];

        if (v23)
        {
          if (([(__CFString *)v12 isSelected]& 1) == 0 && !self->_flow)
          {
            getLogger2 = [(TransferBackPlanCache *)self getLogger];
            if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v38 = v12;
              _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "transfer disabled item back as new item: %@. enable it.", buf, 0xCu);
            }

            [(TransferBackPlanCache *)self _useLine:1 forPlan:v12];
            goto LABEL_29;
          }

          phoneNumber = [(__CFString *)v12 phoneNumber];
          phoneNumber2 = [self->_transferBackItem phoneNumber];
          v27 = [phoneNumber isEqualToPhoneNumber:phoneNumber2];

          if (v27)
          {
            if ([(__CFString *)v12 type])
            {
              getLogger3 = [(TransferBackPlanCache *)self getLogger];
              if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "yeah, the phone number transferred back", buf, 2u);
              }

              objc_storeStrong(&self->_transferToItem, v12);
              if (self->_flow)
              {
                goto LABEL_29;
              }

LABEL_28:
              [(PSUIReActivateSIMSpecifierModelDelegate *)self->_delegate transferBackSuccessFrom:self->_transferBackItem to:v12];
              goto LABEL_29;
            }
          }
        }
      }
    }

    goto LABEL_21;
  }

  getLogger4 = [(TransferBackPlanCache *)self getLogger];
  if (os_log_type_enabled(getLogger4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger4, OS_LOG_TYPE_DEFAULT, "the plan is activated back", buf, 2u);
  }

  [(NSTimer *)self->_activateTimer invalidate];
  activateTimer = self->_activateTimer;
  self->_activateTimer = 0;

  self->_isPlanReactivated = 1;
  if (!self->_flow || self->_rootViewController)
  {
    goto LABEL_28;
  }

LABEL_29:
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end