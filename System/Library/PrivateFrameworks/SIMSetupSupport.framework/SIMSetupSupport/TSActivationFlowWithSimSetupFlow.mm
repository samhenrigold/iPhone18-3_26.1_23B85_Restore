@interface TSActivationFlowWithSimSetupFlow
- (id)_createFirstViewController:(id)controller;
- (id)firstViewController;
- (id)initRequireSetup:(BOOL)setup transferBackPlan:(id)plan;
- (id)nextViewControllerFrom:(id)from;
- (void)_filterCarrierSetupItems:(id)items;
- (void)_maybePresentFirstViewController:(id)controller firstViewControllerCallback:(id)callback;
- (void)_maybeShowPreinstallConsentOnViewController:(id)controller planItems:(id)items;
- (void)_requestCarrierSetupsWithCompletion:(id)completion;
- (void)_requestCrossPlatformTransferPlanListWithCompletion:(id)completion;
- (void)_requestPendingInstallItemsWithCompletion:(id)completion;
- (void)_requestPlansWithCompletion:(id)completion;
- (void)_requestTransferPlanListWithCompletion:(id)completion;
- (void)_sendSIMSetupReadyNotification;
- (void)_userDidTapCancel;
- (void)accountCancelled;
- (void)accountPendingRelease;
- (void)dealloc;
- (void)didPurchasePlanSuccessfullyWithEid:(id)eid imei:(id)imei meid:(id)meid iccid:(id)iccid alternateSDMP:(id)p state:(id)state;
- (void)didTransferPlanSuccessfullyWithEid:(id)eid imei:(id)imei meid:(id)meid iccid:(id)iccid srcIccid:(id)srcIccid alternateSDMP:(id)p state:(id)state;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
- (void)getWebsheetInfo:(id)info completion:(id)completion;
- (void)planItemsUpdated:(id)updated planListError:(id)error;
- (void)setCancelNavigationBarItems:(id)items;
- (void)startOverWithFirstViewController:(id)controller;
- (void)viewControllerDidComplete:(id)complete;
@end

@implementation TSActivationFlowWithSimSetupFlow

- (id)initRequireSetup:(BOOL)setup transferBackPlan:(id)plan
{
  planCopy = plan;
  v25.receiver = self;
  v25.super_class = TSActivationFlowWithSimSetupFlow;
  v8 = [(TSSIMSetupFlow *)&v25 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v8 action:sel__userDidTapCancel];
    cancelButton = v8->_cancelButton;
    v8->_cancelButton = v9;

    v8->_requireSetup = setup;
    v8->_isPreinstallingViewControllerActive = 1;
    v8->_userConsentType = 0;
    array = [MEMORY[0x277CBEB18] array];
    transferItems = v8->_transferItems;
    v8->_transferItems = array;

    array2 = [MEMORY[0x277CBEB18] array];
    transferPlans = v8->_transferPlans;
    v8->_transferPlans = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    transferIneligibleViaCloudItems = v8->_transferIneligibleViaCloudItems;
    v8->_transferIneligibleViaCloudItems = array3;

    v8->_signupConsentResponse = 0;
    objc_storeStrong(&v8->_transferBackPlan, plan);
    phoneNumber = [planCopy phoneNumber];
    transferBackPlanPhoneNumber = v8->_transferBackPlanPhoneNumber;
    v8->_transferBackPlanPhoneNumber = phoneNumber;

    v19 = objc_alloc(MEMORY[0x277CC37B0]);
    v20 = [v19 initWithQueue:MEMORY[0x277D85CD0]];
    client = v8->_client;
    v8->_client = v20;

    v22 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v22 assertUserInPurchaseFlowStartOver:0 caller:v8];

    v23 = +[TSCellularPlanManagerCache sharedInstance];
    [v23 setDelegate:v8];
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4 = +[TSCellularPlanManagerCache sharedInstance];
  [v4 resetDelegate:self];

  v5.receiver = self;
  v5.super_class = TSActivationFlowWithSimSetupFlow;
  [(TSActivationFlowWithSimSetupFlow *)&v5 dealloc];
}

- (id)firstViewController
{
  v2 = _TSLogDomain(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSActivationFlowWithSimSetupFlow *)v2 firstViewController:v3];
  }

  return 0;
}

- (void)_sendSIMSetupReadyNotification
{
  if (objc_opt_respondsToSelector())
  {
    client = self->_client;

    [(CoreTelephonyClient *)client performSelector:sel_setUpeSIMLaunched_ withObject:&__block_literal_global_11];
  }
}

void __66__TSActivationFlowWithSimSetupFlow__sendSIMSetupReadyNotification__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _TSLogDomain(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__TSActivationFlowWithSimSetupFlow__sendSIMSetupReadyNotification__block_invoke_cold_1();
    }
  }
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke;
    v10[3] = &unk_279B451D0;
    objc_copyWeak(&v12, &location);
    v11 = controllerCopy;
    v5 = MEMORY[0x2667315D0](v10);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_2;
    v7[3] = &unk_279B44C58;
    objc_copyWeak(&v9, &location);
    v6 = v5;
    v8 = v6;
    [(TSActivationFlowWithSimSetupFlow *)self _requestPlansWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    [(TSActivationFlowWithSimSetupFlow *)self _sendSIMSetupReadyNotification];
  }
}

void __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendSIMSetupReadyNotification];

  (*(*(a1 + 32) + 16))();
}

void __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _filterCarrierSetupItems:WeakRetained[16]];
    v4 = +[TSCellularPlanManagerCache sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_40;
    v13[3] = &unk_279B45180;
    objc_copyWeak(&v15, (a1 + 40));
    v14 = *(a1 + 32);
    [v4 planItemsWithCompletion:v13];

    objc_destroyWeak(&v15);
  }

  else
  {
    v5 = _TSLogDomain(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_2_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _createFirstViewController:v3];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_41;
    v15[3] = &unk_279B44528;
    objc_copyWeak(&v18, (a1 + 40));
    v16 = v3;
    v17 = *(a1 + 32);
    [v5 _maybePresentFirstViewController:v6 firstViewControllerCallback:v15];

    objc_destroyWeak(&v18);
  }

  else
  {
    v7 = _TSLogDomain(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_40_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_41(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _maybeShowPreinstallConsentOnViewController:v4 planItems:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

- (void)_maybePresentFirstViewController:(id)controller firstViewControllerCallback:(id)callback
{
  controllerCopy = controller;
  callbackCopy = callback;
  v8 = callbackCopy;
  if (controllerCopy)
  {
    [(TSSIMSetupFlow *)self setTopViewController:controllerCopy];
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __97__TSActivationFlowWithSimSetupFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke;
    v17[3] = &unk_279B451F8;
    objc_copyWeak(&v20, &location);
    v19 = v8;
    v18 = controllerCopy;
    [(TSSIMSetupFlow *)self maybePrepareNextDisplayViewController:v18 completion:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = _TSLogDomain(callbackCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v9 _maybePresentFirstViewController:v10 firstViewControllerCallback:v11, v12, v13, v14, v15, v16];
    }

    v8[2](v8, 0);
  }
}

void __97__TSActivationFlowWithSimSetupFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = _TSLogDomain(WeakRetained);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412802;
        v21 = objc_opt_class();
        v22 = 2048;
        v23 = v3;
        v24 = 2080;
        v25 = "[TSActivationFlowWithSimSetupFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "present first view : %@(%p) @%s", &v20, 0x20u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v7 = [WeakRetained nextViewControllerFrom:*(a1 + 32)];
      v8 = _TSLogDomain(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = *(a1 + 32);
        v20 = 138413314;
        v21 = v9;
        v22 = 2048;
        v23 = v10;
        v24 = 2112;
        v25 = objc_opt_class();
        v26 = 2048;
        v27 = v7;
        v28 = 2080;
        v29 = "[TSActivationFlowWithSimSetupFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "cur : %@(%p), next: %@(%p) @%s", &v20, 0x34u);
      }

      if (v7)
      {
        [v5 _maybePresentFirstViewController:v7 firstViewControllerCallback:*(a1 + 40)];
      }

      else
      {
        v12 = _TSLogDomain(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __97__TSActivationFlowWithSimSetupFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
        }

        (*(*(a1 + 40) + 16))();
      }
    }
  }
}

- (id)nextViewControllerFrom:(id)from
{
  v137[2] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if ([TSUtilities isRegulatoryRestrictionActive:self->_planInstallError])
  {
    self->_isPreinstallingViewControllerActive = 0;
    v5 = [TSSubFlowViewController alloc];
    v136[0] = @"FlowTypeKey";
    v136[1] = @"SkipActivatingPane";
    v137[0] = &unk_287583AA8;
    v137[1] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:2];
    navigationController = [(TSSIMSetupFlow *)self navigationController];
    v8 = [(TSSubFlowViewController *)v5 initWithOptions:v6 navigationController:navigationController delegate:self];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__TSActivationFlowWithSimSetupFlow_nextViewControllerFrom___block_invoke;
    block[3] = &unk_279B44578;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    goto LABEL_59;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    confirmationCode = fromCopy;
    filteredPlansForQRCodeBucket = [(NSMutableArray *)self->_transferPlans filteredPlansForQRCodeBucket];
    if (![confirmationCode isTransferListCellTapped])
    {
      if (![confirmationCode isScanButtonTapped])
      {
        if ([confirmationCode isOtherButtonTapped])
        {
          v35 = +[TSUtilities transferOptions];
          if (!+[TSUtilities isPad]|| v35)
          {
            v36 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:v35 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:filteredPlansForQRCodeBucket];
          }

          else
          {
            v36 = [[SSCellularPlanScanViewController alloc] initWithBackButton:0];
          }

          v8 = v36;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_26;
      }

      v132[0] = @"FlowTypeKey";
      v132[1] = @"IsFirstViewKey";
      v133[0] = &unk_287583AC0;
      v133[1] = MEMORY[0x277CBEC28];
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:2];
      filteredPlansForTransferableBucket = [v22 mutableCopy];

      if ([filteredPlansForQRCodeBucket count])
      {
        [filteredPlansForTransferableBucket setObject:filteredPlansForQRCodeBucket forKeyedSubscript:@"Plans"];
      }

      v23 = [TSSubFlowViewController alloc];
      navigationController2 = [(TSSIMSetupFlow *)self navigationController];
      v8 = [(TSSubFlowViewController *)v23 initWithOptions:filteredPlansForTransferableBucket navigationController:navigationController2 delegate:self];

LABEL_25:
LABEL_26:

LABEL_58:
      goto LABEL_59;
    }

    v105 = confirmationCode;
    v107 = fromCopy;
    filteredPlansForTransferableBucket = [(NSMutableArray *)self->_transferPlans filteredPlansForTransferableBucket];
    filteredPlansForVisitStoreBucket = [filteredPlansForTransferableBucket filteredPlansForVisitStoreBucket];
    v13 = [filteredPlansForTransferableBucket filteredPlansForHiddenInCloudBucket:0];
    v103 = [filteredPlansForTransferableBucket filteredPlansForHiddenInCloudBucket:1];
    plans = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
    v15 = [plans count];
    v104 = v13;
    v16 = [v13 count] + v15;
    plans2 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
    v18 = [plans2 count];

    if (v16 + v18)
    {
      v28 = [TSTransferListViewController alloc];
      BYTE2(v102) = !self->_isFlexPolicyOn;
      LOWORD(v102) = 1;
      v8 = [TSTransferListViewController initWithTransferPlans:v28 confirmCellularPlanTransfer:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" isActivationPolicyMismatch:self->_transferPlans isDualeSIMCapabilityLoss:1 pendingInstallItems:self->_isActivationPolicyMismatch carrierSetupItems:self->_isDualeSIMCapabilityLoss showOtherOptions:self->_pendingInstallPlans isStandaloneProximityFlow:self->_carrierSetupItems allowsMultiSelection:v102];
      fromCopy = v107;
      v19 = filteredPlansForVisitStoreBucket;
    }

    else
    {
      v19 = filteredPlansForVisitStoreBucket;
      if (![filteredPlansForVisitStoreBucket count])
      {
        v29 = v103;
        confirmationCode = v105;
        if ([v103 count])
        {
          v46 = [TSSubFlowViewController alloc];
          v134[0] = @"FlowTypeKey";
          v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
          v134[1] = @"IsClientKey";
          v135[0] = v47;
          v135[1] = MEMORY[0x277CBEC28];
          v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:2];
          navigationController3 = [(TSSIMSetupFlow *)self navigationController];
          v8 = [(TSSubFlowViewController *)v46 initWithOptions:v48 navigationController:navigationController3 delegate:self];
        }

        else
        {
          v52 = _TSLogDomain(0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            [(TSActivationFlowWithSimSetupFlow *)v52 nextViewControllerFrom:v53, v54, v55, v56, v57, v58, v59];
          }

          v8 = 0;
        }

        fromCopy = v107;
        goto LABEL_24;
      }

      v8 = [[SSVisitStoreViewController alloc] initWithPlans:filteredPlansForVisitStoreBucket showOtherOption:1];
      fromCopy = v107;
    }

    confirmationCode = v105;
    v29 = v103;
LABEL_24:

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([fromCopy isOtherButtonTapped])
    {
      v20 = +[TSUtilities transferOptions];
      if (!+[TSUtilities isPad]|| v20)
      {
        v21 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:v20 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:0];
      }

      else
      {
        v21 = [[SSCellularPlanScanViewController alloc] initWithBackButton:0];
      }

      goto LABEL_40;
    }

    v30 = [TSSubFlowViewController alloc];
    v130[0] = @"FlowTypeKey";
    confirmationCode = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
    v130[1] = @"IsClientKey";
    v131[0] = confirmationCode;
    v131[1] = MEMORY[0x277CBEC28];
    v31 = MEMORY[0x277CBEAC0];
    v32 = v131;
    v33 = v130;
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    confirmationCode = fromCopy;
    selectedPlan = [confirmationCode selectedPlan];
    if (![confirmationCode isOtherButtonTapped])
    {
      if (([confirmationCode isSkipButtonTapped] & 1) == 0 && (!selectedPlan || objc_msgSend(selectedPlan, "transferCapability") != 8))
      {
        crossPlatformTransferPlanSelected = [confirmationCode crossPlatformTransferPlanSelected];
        if (!crossPlatformTransferPlanSelected)
        {
          self->_isPreinstallingViewControllerActive = 0;
          if ([confirmationCode showSIMSetup])
          {
            self->_requireSetup = 1;
          }

          v63 = [TSSubFlowViewController alloc];
          v126[0] = @"FlowTypeKey";
          v126[1] = @"SkipActivatingPane";
          v64 = MEMORY[0x277CBEC38];
          v127[0] = &unk_287583AA8;
          v127[1] = MEMORY[0x277CBEC38];
          v126[2] = @"DelayStartActivatingTimer";
          installingTransferPlan = [confirmationCode installingTransferPlan];
          v66 = &unk_287583AF0;
          if (installingTransferPlan)
          {
            v66 = &unk_287583AD8;
          }

          v127[2] = v66;
          v126[3] = @"TransferBackPlan";
          transferBackPlan = self->_transferBackPlan;
          v108 = transferBackPlan;
          if (!transferBackPlan)
          {
            transferBackPlan = [MEMORY[0x277CBEB68] null];
          }

          v106 = transferBackPlan;
          v127[3] = transferBackPlan;
          v126[4] = @"PlanSetupTypeKey";
          installingTransferPlan2 = [confirmationCode installingTransferPlan];
          v69 = &unk_287583B20;
          if (installingTransferPlan2)
          {
            v69 = &unk_287583B08;
          }

          v127[4] = v69;
          v126[5] = @"CarrierNameKey";
          carrierNameForSelectedItem = [confirmationCode carrierNameForSelectedItem];
          v71 = fromCopy;
          if (carrierNameForSelectedItem)
          {
            [confirmationCode carrierNameForSelectedItem];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
          }
          v86 = ;
          v127[5] = v86;
          v127[6] = v64;
          v126[6] = @"MaybeShowConfirmationCodePaneKey";
          v126[7] = @"Plan";
          selectedPlan2 = [confirmationCode selectedPlan];
          v127[7] = selectedPlan2;
          v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:8];
          navigationController4 = [(TSSIMSetupFlow *)self navigationController];
          v8 = [(TSSubFlowViewController *)v63 initWithOptions:v88 navigationController:navigationController4 delegate:self];

          if (!v108)
          {
          }

          fromCopy = v71;
          goto LABEL_57;
        }

        v40 = _TSLogDomain(crossPlatformTransferPlanSelected);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v129 = "[TSActivationFlowWithSimSetupFlow nextViewControllerFrom:]";
          _os_log_impl(&dword_262AA8000, v40, OS_LOG_TYPE_DEFAULT, "Cross platform transfer plan is selected! @%s", buf, 0xCu);
        }
      }

      v8 = 0;
LABEL_57:

      goto LABEL_58;
    }

    v26 = +[TSUtilities transferOptions];
    if (!+[TSUtilities isPad]|| v26)
    {
      v27 = -[TSCellularPlanIntroViewController initWithShowTransferOption:requireDelayBluetoothConnection:showQrCodeOption:transferIneligiblePlans:]([TSCellularPlanIntroViewController alloc], "initWithShowTransferOption:requireDelayBluetoothConnection:showQrCodeOption:transferIneligiblePlans:", v26, [confirmationCode requireDelayBluetoothConnection], 1, 0);
    }

    else
    {
      v27 = [[SSCellularPlanScanViewController alloc] initWithBackButton:0];
    }

LABEL_56:
    v8 = v27;
    goto LABEL_57;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    confirmationCode = fromCopy;
    if ([confirmationCode isOtherButtonTapped])
    {
      v37 = +[TSUtilities transferOptions];
      if (!+[TSUtilities isPad]|| v37)
      {
        v38 = -[TSCellularPlanIntroViewController initWithShowTransferOption:requireDelayBluetoothConnection:showQrCodeOption:transferIneligiblePlans:]([TSCellularPlanIntroViewController alloc], "initWithShowTransferOption:requireDelayBluetoothConnection:showQrCodeOption:transferIneligiblePlans:", v37, [confirmationCode requireDelayBluetoothConnection], 1, 0);
      }

      else
      {
        v38 = [[SSCellularPlanScanViewController alloc] initWithBackButton:0];
      }

      goto LABEL_74;
    }

    if (([confirmationCode isCarrierDirectAuthItemSelected] & 1) == 0)
    {
      if (_os_feature_enabled_impl() && ([confirmationCode selectedPlans], v60 = objc_claimAutoreleasedReturnValue(), v60, v60))
      {
        self->_isPreinstallingViewControllerActive = 0;
        v61 = [TSSubFlowViewController alloc];
        v125[0] = &unk_287583AA8;
        v124[0] = @"FlowTypeKey";
        v124[1] = @"Plans";
        selectedPlan = [confirmationCode selectedPlans];
        v124[2] = @"ConfirmCellularPlanTransfer";
        v125[1] = selectedPlan;
        v125[2] = MEMORY[0x277CBEC38];
        null = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:3];
        navigationController5 = [(TSSIMSetupFlow *)self navigationController];
        v8 = [(TSSubFlowViewController *)v61 initWithOptions:null navigationController:navigationController5 delegate:self];
      }

      else
      {
        if ([confirmationCode isCarrierSetupItemSelected])
        {
          v72 = [TSBuddyMLViewController alloc];
          plans3 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
          v74 = [plans3 objectAtIndexedSubscript:0];
          plan = [v74 plan];
          v8 = [(TSBuddyMLViewController *)v72 initWithCTPlan:plan inBuddy:0];

          goto LABEL_58;
        }

        self->_isPreinstallingViewControllerActive = 0;
        if ([confirmationCode showSIMSetup])
        {
          self->_requireSetup = 1;
        }

        v80 = [TSSubFlowViewController alloc];
        v122[0] = @"FlowTypeKey";
        v122[1] = @"SkipActivatingPane";
        v81 = MEMORY[0x277CBEC38];
        v123[0] = &unk_287583AA8;
        v123[1] = MEMORY[0x277CBEC38];
        v122[2] = @"DelayStartActivatingTimer";
        installingTransferPlan3 = [confirmationCode installingTransferPlan];
        v83 = &unk_287583AF0;
        if (installingTransferPlan3)
        {
          v83 = &unk_287583AD8;
        }

        v123[2] = v83;
        v122[3] = @"PlanSetupTypeKey";
        installingTransferPlan4 = [confirmationCode installingTransferPlan];
        v85 = &unk_287583B20;
        if (installingTransferPlan4)
        {
          v85 = &unk_287583B08;
        }

        v123[3] = v85;
        v122[4] = @"CarrierNameKey";
        selectedPlan = [confirmationCode carrierNameForSelectedItem];
        if (selectedPlan)
        {
          [confirmationCode carrierNameForSelectedItem];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        null = ;
        v122[5] = @"MaybeShowConfirmationCodePaneKey";
        v123[4] = null;
        v123[5] = v81;
        navigationController5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:6];
        navigationController6 = [(TSSIMSetupFlow *)self navigationController];
        v8 = [(TSSubFlowViewController *)v80 initWithOptions:navigationController5 navigationController:navigationController6 delegate:self];
      }

      goto LABEL_29;
    }

LABEL_65:
    v8 = 0;
    goto LABEL_58;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = [TSSubFlowViewController alloc];
    v120[0] = @"FlowTypeKey";
    v120[1] = @"SkipActivatingPane";
    v121[0] = &unk_287583AA8;
    v121[1] = MEMORY[0x277CBEC28];
    v42 = MEMORY[0x277CBEAC0];
    v43 = v121;
    v44 = v120;
    v45 = 2;
LABEL_52:
    confirmationCode = [v42 dictionaryWithObjects:v43 forKeys:v44 count:v45];
    selectedPlan = [(TSSIMSetupFlow *)self navigationController];
    v27 = [(TSSubFlowViewController *)v41 initWithOptions:confirmationCode navigationController:selectedPlan delegate:self];
    goto LABEL_56;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    confirmationCode = fromCopy;
    if ([confirmationCode confirmationCodeRequired])
    {
      v51 = [SSConfirmationCodeViewController alloc];
      selectedPlan = [confirmationCode fauxCardData];
      v27 = [(SSConfirmationCodeViewController *)v51 initWithCardData:selectedPlan];
      goto LABEL_56;
    }

    if (self->_confirmationCodeRequired)
    {
      v8 = [[SSConfirmationCodeViewController alloc] initAsMidOperationWithCarrierName:self->_name];
      self->_confirmationCodeRequired = 0;
      goto LABEL_58;
    }

    if ([confirmationCode isEnterManuallyTapped])
    {
      v94 = SSCardManualEntryViewController;
LABEL_120:
      v38 = objc_alloc_init(v94);
      goto LABEL_74;
    }

    if ([confirmationCode transferViaQRCode])
    {
      goto LABEL_65;
    }

    v38 = [[TSCellularPlanUserConsentViewController alloc] initWithName:self->_name consentType:4 requireAdditionalConsent:self->_userConsentType != 0];
    goto LABEL_74;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    confirmationCode = fromCopy;
    if (![confirmationCode needShowTransferIntroPane])
    {
      if ([confirmationCode isProximityTransferButtonTapped])
      {
        v90 = [TSSubFlowViewController alloc];
        v118[0] = @"FlowTypeKey";
        selectedPlan = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
        v119[0] = selectedPlan;
        v119[1] = MEMORY[0x277CBEC28];
        v118[1] = @"IsClientKey";
        v118[2] = @"TransferBackPlan";
        v91 = self->_transferBackPlan;
        null = v91;
        if (!v91)
        {
          null = [MEMORY[0x277CBEB68] null];
        }

        v119[2] = null;
        v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:3];
        navigationController7 = [(TSSIMSetupFlow *)self navigationController];
        v8 = [(TSSubFlowViewController *)v90 initWithOptions:v92 navigationController:navigationController7 delegate:self];

        if (v91)
        {
          goto LABEL_57;
        }

        goto LABEL_29;
      }

      if ([confirmationCode isScanButtonTapped])
      {
        v30 = [TSSubFlowViewController alloc];
        v116[0] = @"FlowTypeKey";
        v116[1] = @"IsFirstViewKey";
        v117[0] = &unk_287583AC0;
        v117[1] = MEMORY[0x277CBEC28];
        v31 = MEMORY[0x277CBEAC0];
        v32 = v117;
        v33 = v116;
      }

      else
      {
        if (![confirmationCode isCrossPlatformButtonTapped])
        {
          if (![confirmationCode isTravelEduButtonTapped])
          {
            goto LABEL_65;
          }

          v94 = TSTravelModeIntroViewController;
          goto LABEL_120;
        }

        v30 = [TSSubFlowViewController alloc];
        v114[0] = @"FlowTypeKey";
        v114[1] = @"IsSourceKey";
        v115[0] = &unk_287583B38;
        v115[1] = MEMORY[0x277CBEC28];
        v31 = MEMORY[0x277CBEAC0];
        v32 = v115;
        v33 = v114;
      }

LABEL_28:
      selectedPlan = [v31 dictionaryWithObjects:v32 forKeys:v33 count:2];
      null = [(TSSIMSetupFlow *)self navigationController];
      v8 = [(TSSubFlowViewController *)v30 initWithOptions:selectedPlan navigationController:null delegate:self];
LABEL_29:

      goto LABEL_57;
    }

    v38 = [[SSTransferIntroViewController alloc] initWithItems:self->_transferIneligibleViaCloudItems];
LABEL_74:
    v8 = v38;
    goto LABEL_58;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([fromCopy isTransferButtonTapped])
    {
      v76 = [TSSubFlowViewController alloc];
      v112[0] = @"FlowTypeKey";
      confirmationCode = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
      v113[0] = confirmationCode;
      v113[1] = MEMORY[0x277CBEC28];
      v112[1] = @"IsClientKey";
      v112[2] = @"TransferBackPlan";
      v77 = self->_transferBackPlan;
      selectedPlan = v77;
      if (!v77)
      {
        selectedPlan = [MEMORY[0x277CBEB68] null];
      }

      v113[2] = selectedPlan;
      v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:3];
      navigationController8 = [(TSSIMSetupFlow *)self navigationController];
      v8 = [(TSSubFlowViewController *)v76 initWithOptions:v78 navigationController:navigationController8 delegate:self];

      if (v77)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    goto LABEL_150;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_confirmationCodeRequired)
    {
      v8 = [[SSConfirmationCodeViewController alloc] initAsMidOperationWithCarrierName:self->_name];
      self->_confirmationCodeRequired = 0;
      goto LABEL_59;
    }

    v96 = [TSCellularPlanUserConsentViewController alloc];
    name = self->_name;
    v98 = self->_userConsentType != 0;
    userConsentType = 4;
LABEL_134:
    v21 = [(TSCellularPlanUserConsentViewController *)v96 initWithName:name consentType:userConsentType requireAdditionalConsent:v98];
LABEL_40:
    v8 = v21;
    goto LABEL_59;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    confirmationCode = [fromCopy confirmationCode];
    v38 = [[TSCellularPlanUserConsentViewController alloc] initWithConfirmationCode:self->_name consentType:4 requireAdditionalConsent:self->_userConsentType != 0 confirmationCode:confirmationCode acceptButtonTapped:0];
    goto LABEL_74;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([fromCopy consentType] != 4 || (self->_userConsentType & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v41 = [TSSubFlowViewController alloc];
      v110[0] = @"FlowTypeKey";
      v110[1] = @"SkipActivatingPane";
      v111[0] = &unk_287583AA8;
      v111[1] = MEMORY[0x277CBEC38];
      v110[2] = @"PlanSetupTypeKey";
      v111[2] = &unk_287583B50;
      v42 = MEMORY[0x277CBEAC0];
      v43 = v111;
      v44 = v110;
      v45 = 3;
      goto LABEL_52;
    }

    v96 = [TSCellularPlanUserConsentViewController alloc];
    name = self->_name;
    userConsentType = self->_userConsentType;
    v98 = 0;
    goto LABEL_134;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_150:
    v8 = 0;
    goto LABEL_59;
  }

  v100 = fromCopy;
  if (([v100 subFlowType] == 16 || objc_msgSend(v100, "subFlowType") == 22) && objc_msgSend(v100, "isOfferFallbackFlow"))
  {
    [v100 setIsOfferFallbackFlow:0];
    v101 = 0;
    if (_os_feature_enabled_impl())
    {
      v101 = +[TSUtilities isPad]^ 1;
    }

    v8 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:v101 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:0];
  }

  else
  {
    v8 = 0;
  }

LABEL_59:

  return v8;
}

void __59__TSActivationFlowWithSimSetupFlow_nextViewControllerFrom___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"transfer.failed" object:*(*(a1 + 32) + 104)];
}

- (void)viewControllerDidComplete:(id)complete
{
  completeCopy = complete;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = completeCopy;
  if ([v5 subFlowType] != 2 || (objc_msgSend(v5, "navigationController"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "viewControllers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "indexOfObject:", v5), v7, v6, !v8))
  {

LABEL_6:
    v14.receiver = self;
    v14.super_class = TSActivationFlowWithSimSetupFlow;
    [(TSSIMSetupFlow *)&v14 viewControllerDidComplete:completeCopy];
    goto LABEL_7;
  }

  navigationController = [v5 navigationController];
  viewControllers = [navigationController viewControllers];
  v11 = [viewControllers objectAtIndex:v8 - 1];

  navigationController2 = [v5 navigationController];
  v13 = [navigationController2 popToViewController:v11 animated:1];

  v15.receiver = self;
  v15.super_class = TSActivationFlowWithSimSetupFlow;
  [(TSSIMSetupFlow *)&v15 viewControllerDidComplete:v11];

LABEL_7:
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

- (void)planItemsUpdated:(id)updated planListError:(id)error
{
  v61 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  errorCopy = error;
  v8 = errorCopy;
  if (self->_planInstallError)
  {
    topViewController = _TSLogDomain(errorCopy);
    if (os_log_type_enabled(topViewController, OS_LOG_TYPE_ERROR))
    {
      [TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:];
    }

    goto LABEL_4;
  }

  if (errorCopy)
  {
    v10 = _TSLogDomain(errorCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:];
    }

    domain = [v8 domain];
    if ([domain isEqualToString:*MEMORY[0x277CF9680]])
    {
      code = [v8 code];

      if (code == 19)
      {
        self->_confirmationCodeRequired = 1;
        goto LABEL_5;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_planInstallError, error);
    if (![TSUtilities isRegulatoryRestrictionActive:v8])
    {
      topViewController = [TSUtilities getErrorTitleDetail:v8 forCarrier:self->_name];
      v34 = MEMORY[0x277D75110];
      v35 = [topViewController objectForKeyedSubscript:@"ErrorHeader"];
      v36 = [topViewController objectForKeyedSubscript:@"ErrorDetail"];
      v37 = [v34 alertControllerWithTitle:v35 message:v36 preferredStyle:1];

      v38 = MEMORY[0x277D750F8];
      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v40 = [v39 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __67__TSActivationFlowWithSimSetupFlow_planItemsUpdated_planListError___block_invoke;
      v55[3] = &unk_279B44B38;
      v55[4] = self;
      v41 = [v38 actionWithTitle:v40 style:1 handler:v55];
      [v37 addAction:v41];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__TSActivationFlowWithSimSetupFlow_planItemsUpdated_planListError___block_invoke_2;
      block[3] = &unk_279B44490;
      block[4] = self;
      v54 = v37;
      v42 = v37;
      dispatch_async(MEMORY[0x277D85CD0], block);

      goto LABEL_4;
    }

LABEL_41:
    topViewController = [(TSSIMSetupFlow *)self topViewController];
    [(TSActivationFlowWithSimSetupFlow *)self viewControllerDidComplete:topViewController];
LABEL_4:

    goto LABEL_5;
  }

  if (updatedCopy)
  {
    if (self->_isPreinstallingViewControllerActive)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v13 = [updatedCopy countByEnumeratingWithState:&v49 objects:v60 count:16];
      if (v13)
      {
        v14 = v13;
        v47 = 208;
        v48 = 0;
        v15 = 0;
        v16 = 0;
        v17 = *v50;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v50 != v17)
            {
              objc_enumerationMutation(updatedCopy);
            }

            v19 = *(*(&v49 + 1) + 8 * i);
            if ([v19 isInstalling])
            {
              plan = [v19 plan];
              status = [plan status];

              if (status != 6)
              {
                carrierName = [v19 carrierName];
                v23 = [carrierName copy];
                name = self->_name;
                self->_name = v23;

                iccid = [v19 iccid];
                v16 = [iccid length] != 0;

                v27 = _TSLogDomain(v26);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = self->_name;
                  *buf = 138412546;
                  v57 = v28;
                  v58 = 2080;
                  v59 = "[TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:]";
                  _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, "installing [%@] @%s", buf, 0x16u);
                }
              }
            }

            if (([v19 isSelected] & 1) != 0 || objc_msgSend(v19, "isInstalling"))
            {
              ++v15;
            }
          }

          v14 = [updatedCopy countByEnumeratingWithState:&v49 objects:v60 count:16];
        }

        while (v14);
        if (v15 >= 2)
        {
          self->_requireSetup = 1;
        }

        v8 = v48;
        if (v16)
        {
          v29 = +[TSCellularPlanManagerCache sharedInstance];
          v30 = [v29 calculateInstallConsentTextTypeFor:updatedCopy];

          if (v30 > 2)
          {
            if ((v30 - 3) >= 3)
            {
              goto LABEL_48;
            }
          }

          else if (v30)
          {
            if (v30 == 1)
            {
              v32 = _TSLogDomain(v31);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v57 = "[TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:]";
                _os_log_impl(&dword_262AA8000, v32, OS_LOG_TYPE_DEFAULT, "disable not allowed @%s", buf, 0xCu);
              }

              v33 = 3;
              goto LABEL_47;
            }

            if (v30 == 2)
            {
              v32 = _TSLogDomain(v31);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v57 = "[TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:]";
                _os_log_impl(&dword_262AA8000, v32, OS_LOG_TYPE_DEFAULT, "delete not allowed @%s", buf, 0xCu);
              }

              v33 = 2;
LABEL_47:

              self->_userConsentType = v33;
            }

LABEL_48:
            if (*(&self->super.super.isa + v47) != 1)
            {
              goto LABEL_5;
            }

            *(&self->super.super.isa + v47) = 0;
            topViewController2 = [(TSSIMSetupFlow *)self topViewController];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_41;
            }

            v46 = _TSLogDomain(v45);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v57 = "[TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:]";
              _os_log_impl(&dword_262AA8000, v46, OS_LOG_TYPE_DEFAULT, "Ignore installing event for BuddyML @%s", buf, 0xCu);
            }

            goto LABEL_5;
          }

          v32 = _TSLogDomain(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v57 = "[TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:]";
            _os_log_impl(&dword_262AA8000, v32, OS_LOG_TYPE_DEFAULT, "Invalid consent @%s", buf, 0xCu);
          }

          v33 = 0;
          goto LABEL_47;
        }
      }
    }
  }

LABEL_5:
}

void __67__TSActivationFlowWithSimSetupFlow_planItemsUpdated_planListError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)didPurchasePlanSuccessfullyWithEid:(id)eid imei:(id)imei meid:(id)meid iccid:(id)iccid alternateSDMP:(id)p state:(id)state
{
  eidCopy = eid;
  iccidCopy = iccid;
  pCopy = p;
  stateCopy = state;
  v15 = stateCopy;
  if (eidCopy)
  {
    v16 = +[TSCellularPlanManagerCache sharedInstance];
    [v16 didPurchasePlanForEid:eidCopy iccid:iccidCopy smdpURL:pCopy state:v15];
  }

  else
  {
    v16 = _TSLogDomain(stateCopy);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v16 didPurchasePlanSuccessfullyWithEid:v17 imei:v18 meid:v19 iccid:v20 alternateSDMP:v21 state:v22, v23];
    }
  }
}

- (void)didTransferPlanSuccessfullyWithEid:(id)eid imei:(id)imei meid:(id)meid iccid:(id)iccid srcIccid:(id)srcIccid alternateSDMP:(id)p state:(id)state
{
  stateCopy = state;
  pCopy = p;
  srcIccidCopy = srcIccid;
  iccidCopy = iccid;
  eidCopy = eid;
  v18 = +[TSCellularPlanManagerCache sharedInstance];
  [v18 didTransferPlanForEid:eidCopy iccid:iccidCopy srcIccid:srcIccidCopy smdpURL:pCopy state:stateCopy];
}

- (void)accountCancelled
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow accountCancelled]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, self, a3, "[E]Not implemented @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)accountPendingRelease
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow accountPendingRelease]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, self, a3, "[E]Not implemented @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (id)_createFirstViewController:(id)controller
{
  v83 = *MEMORY[0x277D85DE8];
  filteredPlansForTransferableBucket = [(NSMutableArray *)self->_transferPlans filteredPlansForTransferableBucket];
  v52 = [filteredPlansForTransferableBucket filteredPlansForHiddenInCloudBucket:0];
  v56 = [filteredPlansForTransferableBucket filteredPlansForHiddenInCloudBucket:1];
  filteredPlansForSoftwareUpdateBucket = [(NSMutableArray *)self->_transferPlans filteredPlansForSoftwareUpdateBucket];
  filteredPlansForQRCodeBucket = [(NSMutableArray *)self->_transferPlans filteredPlansForQRCodeBucket];
  filteredPlansForNonInstallableBucket = [(NSMutableArray *)self->_transferPlans filteredPlansForNonInstallableBucket];
  filteredPlansForVisitStoreBucket = [filteredPlansForTransferableBucket filteredPlansForVisitStoreBucket];
  v58 = filteredPlansForSoftwareUpdateBucket;
  filteredPlansForVisitStoreBucket2 = [filteredPlansForSoftwareUpdateBucket filteredPlansForVisitStoreBucket];
  v6 = _TSLogDomain(filteredPlansForVisitStoreBucket2);
  v55 = filteredPlansForTransferableBucket;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219778;
    v68 = [filteredPlansForTransferableBucket count];
    v69 = 2048;
    v70 = [filteredPlansForVisitStoreBucket count];
    v71 = 2048;
    v72 = [v56 count];
    v73 = 2048;
    v74 = [filteredPlansForSoftwareUpdateBucket count];
    v75 = 2048;
    v76 = [filteredPlansForVisitStoreBucket2 count];
    v77 = 2048;
    v78 = [filteredPlansForQRCodeBucket count];
    v79 = 2048;
    v80 = [filteredPlansForNonInstallableBucket count];
    v81 = 2080;
    v82 = "[TSActivationFlowWithSimSetupFlow _createFirstViewController:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "transferable:%lu (store:%lu, hidden:%lu), software update:%lu (store:%lu), qrcode:%lu, non install:%lu @%s", buf, 0x52u);
  }

  v7 = [filteredPlansForTransferableBucket count];
  plans = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
  v9 = [plans count];
  plans2 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
  v11 = [plans2 count];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v12 = self->_transferPlans;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v61;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v61 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(*(&v60 + 1) + 8 * i) transferCapability] == 20)
        {
          v17 = 1;
          goto LABEL_13;
        }
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_13:

  v18 = +[TSUtilities transferOptions];
  if (v17)
  {
    v19 = objc_alloc_init(SSeSIMCountRestrictionWarningViewController);
    goto LABEL_22;
  }

  if (self->_transferBackPlan)
  {
    if ([(NSMutableArray *)self->_transferItems count]== 1)
    {
      v20 = [(NSMutableArray *)self->_transferItems objectAtIndexedSubscript:0];
      v21 = [v20 objectForKeyedSubscript:@"planItem"];

      v22 = [TSSinglePlanTransferViewController alloc];
      v23 = [(NSMutableArray *)self->_transferItems objectAtIndexedSubscript:0];
      LOBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      v24 = -[TSSinglePlanTransferViewController initWithTransferPlan:isPhysical:isIneligible:inBuddy:confirmCellularPlanTransfer:showOtherOptions:isStandaloneProximityFlow:transferBackPhoneNumber:isShowingFilteredPlans:](v22, "initWithTransferPlan:isPhysical:isIneligible:inBuddy:confirmCellularPlanTransfer:showOtherOptions:isStandaloneProximityFlow:transferBackPhoneNumber:isShowingFilteredPlans:", v23, [v21 isPhysical], objc_msgSend(v21, "isTransferIneligiblePlan"), 0, 1, 1, v50, self->_transferBackPlanPhoneNumber, v51);

LABEL_23:
      v31 = v55;
      v26 = v52;
      goto LABEL_24;
    }

    v19 = [[TSCellularPlanIntroViewController alloc] initWithTransferBackPlan:self->_transferBackPlan];
LABEL_22:
    v24 = v19;
    goto LABEL_23;
  }

  v25 = v9 + v7 + v11;
  if (!v25)
  {
    v33 = v18;
    plans3 = [(CTDisplayPlanList *)self->_crossPlatformTransferItems plans];
    v35 = [plans3 count];

    v26 = v52;
    if (v35 == 1)
    {
      v36 = [TSSinglePlanTransferViewController alloc];
      plans4 = [(CTDisplayPlanList *)self->_crossPlatformTransferItems plans];
      v37 = [plans4 objectAtIndexedSubscript:0];
      v38 = [(TSSinglePlanTransferViewController *)v36 initWithCrossPlatformTransferPlan:v37];
LABEL_40:
      v24 = v38;

      goto LABEL_41;
    }

    if ([filteredPlansForQRCodeBucket count])
    {
      v64[0] = @"FlowTypeKey";
      v64[1] = @"IsFirstViewKey";
      v65[0] = &unk_287583AC0;
      v65[1] = MEMORY[0x277CBEC38];
      v64[2] = @"Plans";
      v65[2] = self->_transferPlans;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:3];
      plans4 = [v41 mutableCopy];

      v24 = [[TSSubFlowViewController alloc] initWithOptions:plans4 navigationController:0 delegate:self];
      goto LABEL_41;
    }

    if ([filteredPlansForSoftwareUpdateBucket count])
    {
      v40 = [[TSNoPlanForTransferViewController alloc] initWithPlans:self->_transferPlans showOtherOptions:1];
    }

    else if (v33 | !+[TSUtilities isPad])
    {
      v40 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:v33 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:0];
    }

    else
    {
      v40 = [[SSCellularPlanScanViewController alloc] initWithBackButton:0];
    }

LABEL_50:
    v24 = v40;
    goto LABEL_42;
  }

  v26 = v52;
  if (![filteredPlansForQRCodeBucket count])
  {
    v39 = [filteredPlansForNonInstallableBucket count] + v25;
    if ((v39 + [filteredPlansForSoftwareUpdateBucket count]) >= 2)
    {
      if ([filteredPlansForVisitStoreBucket count] != v25)
      {
        goto LABEL_20;
      }

      goto LABEL_31;
    }

    plans5 = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
    v43 = [plans5 count];

    if (v43 == 1)
    {
      v44 = [TSSinglePlanTransferViewController alloc];
      plans4 = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
      v37 = [plans4 objectAtIndexedSubscript:0];
      v38 = [(TSSinglePlanTransferViewController *)v44 initWithPendingInstallPlan:v37];
      goto LABEL_40;
    }

    if ([v52 count] == 1)
    {
      v45 = [(NSMutableArray *)self->_transferItems objectAtIndexedSubscript:0];
      plans4 = [v45 objectForKeyedSubscript:@"planItem"];

      v46 = [TSSinglePlanTransferViewController alloc];
      v37 = [(NSMutableArray *)self->_transferItems objectAtIndexedSubscript:0];
      LOBYTE(v50) = 0;
      v38 = -[TSSinglePlanTransferViewController initWithTransferPlan:isPhysical:isIneligible:inBuddy:confirmCellularPlanTransfer:showOtherOptions:isShowingFilteredPlans:](v46, "initWithTransferPlan:isPhysical:isIneligible:inBuddy:confirmCellularPlanTransfer:showOtherOptions:isShowingFilteredPlans:", v37, [plans4 isPhysical], objc_msgSend(plans4, "isTransferIneligiblePlan"), 0, 1, 1, v50);
      goto LABEL_40;
    }

    if ([filteredPlansForVisitStoreBucket count] == 1)
    {
LABEL_31:
      v40 = [[SSVisitStoreViewController alloc] initWithPlans:filteredPlansForVisitStoreBucket showOtherOption:1];
      goto LABEL_50;
    }

    if ([v56 count] == 1)
    {
      goto LABEL_20;
    }

    plans6 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
    v48 = [plans6 count];

    if (v48 != 1)
    {
      v24 = 0;
      goto LABEL_42;
    }

    v49 = [TSTransferListViewController alloc];
    BYTE2(v50) = !self->_isFlexPolicyOn;
    LOWORD(v50) = 1;
    v40 = [TSTransferListViewController initWithTransferPlans:v49 confirmCellularPlanTransfer:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" isActivationPolicyMismatch:self->_transferPlans isDualeSIMCapabilityLoss:1 pendingInstallItems:self->_isActivationPolicyMismatch carrierSetupItems:self->_isDualeSIMCapabilityLoss showOtherOptions:self->_pendingInstallPlans isStandaloneProximityFlow:self->_carrierSetupItems allowsMultiSelection:v50];
    goto LABEL_50;
  }

LABEL_20:
  v27 = [TSMultiPlanIntermediateViewController alloc];
  plans4 = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
  transferPlans = self->_transferPlans;
  plans7 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
  LOWORD(v50) = 0;
  v24 = [(TSMultiPlanIntermediateViewController *)v27 initWithPendingInstallPlans:plans4 transferPlans:transferPlans carrierSetupPlans:plans7 showQRCodeOption:1 showOtherOptions:1 isShowingFilteredPlans:0 isStandaloneProximityFlow:v50 isHiddenPlanSelectable:?];

LABEL_41:
LABEL_42:
  v31 = v55;
LABEL_24:

  return v24;
}

- (void)_maybeShowPreinstallConsentOnViewController:(id)controller planItems:(id)items
{
  controllerCopy = controller;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__TSActivationFlowWithSimSetupFlow__maybeShowPreinstallConsentOnViewController_planItems___block_invoke;
  v13[3] = &unk_279B45220;
  v13[4] = self;
  v7 = controllerCopy;
  v14 = v7;
  v8 = [TSUtilities preinstallPPRAlertControllerWithItems:items completion:v13];
  if (v8)
  {
    v9 = dispatch_time(0, 250000000);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__TSActivationFlowWithSimSetupFlow__maybeShowPreinstallConsentOnViewController_planItems___block_invoke_2;
    v10[3] = &unk_279B44490;
    v11 = v7;
    v12 = v8;
    dispatch_after(v9, MEMORY[0x277D85CD0], v10);
  }
}

void *__90__TSActivationFlowWithSimSetupFlow__maybeShowPreinstallConsentOnViewController_planItems___block_invoke(void *result, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 4);
      v3 = 2;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 4);
      v3 = 1;
    }

    *(v2 + 192) = v3;
    return [*(result + 5) didChangeValueForKey:@"userConsentAllowed"];
  }

  if (!a2)
  {
    *(*(result + 4) + 192) = 0;
    return [*(result + 5) didChangeValueForKey:@"userConsentAllowed"];
  }

  if (a2 == 1)
  {
    return [*(result + 4) userDidTapCancel];
  }

  return result;
}

- (void)_requestPlansWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x2667315D0](completionCopy);
    v6 = dispatch_group_create();
    queryGroup = self->_queryGroup;
    self->_queryGroup = v6;

    dispatch_group_enter(self->_queryGroup);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke;
    v26[3] = &unk_279B44400;
    objc_copyWeak(&v27, &location);
    [(TSActivationFlowWithSimSetupFlow *)self _requestTransferPlanListWithCompletion:v26];
    objc_destroyWeak(&v27);
    if (!self->_transferBackPlan)
    {
      if (!+[TSUtilities isPad])
      {
        dispatch_group_enter(self->_queryGroup);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_103;
        v24[3] = &unk_279B44400;
        objc_copyWeak(&v25, &location);
        [(TSActivationFlowWithSimSetupFlow *)self _requestCarrierSetupsWithCompletion:v24];
        objc_destroyWeak(&v25);
      }

      if (!self->_transferBackPlan)
      {
        if ([(TSActivationFlowWithSimSetupFlow *)self _showPendingInstallItems])
        {
          dispatch_group_enter(self->_queryGroup);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_104;
          v22[3] = &unk_279B44400;
          objc_copyWeak(&v23, &location);
          [(TSActivationFlowWithSimSetupFlow *)self _requestPendingInstallItemsWithCompletion:v22];
          objc_destroyWeak(&v23);
        }

        if (!self->_transferBackPlan)
        {
          dispatch_group_enter(self->_queryGroup);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_105;
          v20[3] = &unk_279B44400;
          objc_copyWeak(&v21, &location);
          [(TSActivationFlowWithSimSetupFlow *)self _requestCrossPlatformTransferPlanListWithCompletion:v20];
          objc_destroyWeak(&v21);
        }
      }
    }

    v8 = self->_queryGroup;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_106;
    v18[3] = &unk_279B44938;
    v19 = v5;
    v9 = v5;
    dispatch_group_notify(v8, MEMORY[0x277D85CD0], v18);

    objc_destroyWeak(&location);
  }

  else
  {
    v10 = _TSLogDomain(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v10 _requestPlansWithCompletion:v11, v12, v13, v14, v15, v16, v17];
    }
  }
}

void __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[25]);
  }

  else
  {
    v3 = _TSLogDomain(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_103(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[25]);
  }

  else
  {
    v3 = _TSLogDomain(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_104(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[25]);
  }

  else
  {
    v3 = _TSLogDomain(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_105(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[25]);
  }

  else
  {
    v3 = _TSLogDomain(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

- (void)_requestTransferPlanListWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x2667315D0](completionCopy);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke;
    v16[3] = &unk_279B45270;
    v7 = v5;
    v17 = v7;
    objc_copyWeak(&v18, &location);
    [v6 bootstrapPlanTransferUsingMessageSession:0 flowType:3 completion:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = _TSLogDomain(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v8 _requestTransferPlanListWithCompletion:v9, v10, v11, v12, v13, v14, v15];
    }
  }
}

void __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _TSLogDomain(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke_108;
    v7[3] = &unk_279B45248;
    objc_copyWeak(&v9, (a1 + 40));
    v8 = *(a1 + 32);
    [v6 transferPlanListWithCompletion:v7];

    objc_destroyWeak(&v9);
  }
}

void __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke_108(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  v41 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  v42 = v9;
  if (!v9)
  {
    if (!v8)
    {
      v12 = _TSLogDomain(WeakRetained);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v57 = "[TSActivationFlowWithSimSetupFlow _requestTransferPlanListWithCompletion:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "empty transfer plans @%s", buf, 0xCu);
      }

      goto LABEL_4;
    }

    if (!WeakRetained)
    {
      goto LABEL_5;
    }

    [WeakRetained setIsFlexPolicyOn:a4];
    [v11[29] removeAllObjects];
    v13 = [v11 transferPlans];
    [v13 removeAllObjects];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v39 = v8;
    obj = [v8 devices];
    v40 = 1;
    v46 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (!v46)
    {
LABEL_38:

      v34 = +[TSUtilities isPad];
      if ((v34 & 1) == 0 && (v40 & 1) == 0)
      {
        v35 = +[TSCoreTelephonyClientCache sharedInstance];
        v36 = [v35 deviceSupportsHydra];

        if ((v36 & 1) == 0)
        {
          *(v11 + 99) = 1;
        }
      }

      v12 = _TSLogDomain(v34);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(v11 + 98);
        v38 = v11[29];
        *buf = 67109634;
        *v57 = v37;
        *&v57[4] = 2112;
        *&v57[6] = v38;
        *&v57[14] = 2080;
        *&v57[16] = "[TSActivationFlowWithSimSetupFlow _requestTransferPlanListWithCompletion:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "isActivationPolicyMismatch: %d, transfer plans: %@ @%s", buf, 0x1Cu);
      }

      v8 = v39;
      goto LABEL_4;
    }

    v43 = 0;
    v45 = *v53;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v53 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v47 = v14;
      v15 = *(*(&v52 + 1) + 8 * v14);
      if (objc_opt_respondsToSelector())
      {
        v16 = [v15 performSelector:sel_isMultiESimEnabled];
        v43 = v16 != 0;
        v17 = _TSLogDomain(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v15 deviceName];
          *buf = 138412546;
          *v57 = v18;
          *&v57[8] = 2080;
          *&v57[10] = "[TSActivationFlowWithSimSetupFlow _requestTransferPlanListWithCompletion:]_block_invoke";
          _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "remote device:%@ use dual eSIM config @%s", buf, 0x16u);
        }
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v19 = [v15 remoteDisplayPlans];
      v20 = [v19 countByEnumeratingWithState:&v48 objects:v60 count:16];
      if (v20)
      {
        break;
      }

LABEL_35:

      v14 = v47 + 1;
      if (v47 + 1 == v46)
      {
        v46 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (!v46)
        {
          v40 = !v43;
          goto LABEL_38;
        }

        goto LABEL_10;
      }
    }

    v21 = v20;
    v22 = *v49;
LABEL_19:
    v23 = 0;
    while (1)
    {
      if (*v49 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v48 + 1) + 8 * v23);
      v25 = [v11 transferBackPlan];

      if (!v25)
      {
        goto LABEL_28;
      }

      if ([v24 isTransferablePlan])
      {
        v26 = [v11 transferBackPlanPhoneNumber];
        v27 = [v24 phoneNumber];
        v28 = [v26 isEqualToPhoneNumber:v27];

        if (v28)
        {
          break;
        }
      }

LABEL_33:
      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v48 objects:v60 count:16];
        if (!v21)
        {
          goto LABEL_35;
        }

        goto LABEL_19;
      }
    }

    v30 = _TSLogDomain(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v11 transferBackPlanPhoneNumber];
      *buf = 138412546;
      *v57 = v31;
      *&v57[8] = 2080;
      *&v57[10] = "[TSActivationFlowWithSimSetupFlow _requestTransferPlanListWithCompletion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v30, OS_LOG_TYPE_DEFAULT, "find plan with same phone number : %@ @%s", buf, 0x16u);
    }

LABEL_28:
    v32 = [v11 transferPlans];
    [v32 addObject:v24];

    if ([v24 isPlanHiddenRequiredForCloudFlow])
    {
      v33 = [v11 transferIneligibleViaCloudItems];
      [v33 addObject:v24];
    }

    else
    {
      v58[0] = @"planItem";
      v58[1] = @"deviceInfo";
      v59[0] = v24;
      v59[1] = v15;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
      [v11[29] addObject:v33];
      if ([v24 isNotEligibleActivationPolicyMismatchPlan])
      {
        *(v11 + 98) = 1;
      }
    }

    goto LABEL_33;
  }

  v12 = _TSLogDomain(WeakRetained);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke_108_cold_1();
  }

LABEL_4:

LABEL_5:
  (*(*(v41 + 32) + 16))();
}

- (void)_requestCrossPlatformTransferPlanListWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x2667315D0](completionCopy);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    getCoreTelephonyClient = [v6 getCoreTelephonyClient];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__TSActivationFlowWithSimSetupFlow__requestCrossPlatformTransferPlanListWithCompletion___block_invoke;
    v17[3] = &unk_279B45298;
    objc_copyWeak(&v19, &location);
    v8 = v5;
    v18 = v8;
    [getCoreTelephonyClient plansPendingCrossPlatformTransferWithCompletion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = _TSLogDomain(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v9 _requestCrossPlatformTransferPlanListWithCompletion:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __88__TSActivationFlowWithSimSetupFlow__requestCrossPlatformTransferPlanListWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = _TSLogDomain(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __88__TSActivationFlowWithSimSetupFlow__requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_1();
      }
    }

    v10 = _TSLogDomain(WeakRetained);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v5;
      v22 = 2080;
      v23 = "[TSActivationFlowWithSimSetupFlow _requestCrossPlatformTransferPlanListWithCompletion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "Cross platform transfer items %@ @%s", &v20, 0x16u);
    }

    v11 = v5;
    v12 = v8[17];
    v8[17] = v11;
  }

  else
  {
    v12 = _TSLogDomain(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __88__TSActivationFlowWithSimSetupFlow__requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_requestPendingInstallItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x2667315D0](completionCopy);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__TSActivationFlowWithSimSetupFlow__requestPendingInstallItemsWithCompletion___block_invoke;
    v16[3] = &unk_279B452C0;
    objc_copyWeak(&v18, &location);
    v7 = v5;
    v17 = v7;
    [v6 pendingInstallItemsWithCompletion:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = _TSLogDomain(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v8 _requestPendingInstallItemsWithCompletion:v9, v10, v11, v12, v13, v14, v15];
    }
  }
}

void __78__TSActivationFlowWithSimSetupFlow__requestPendingInstallItemsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 15, a2);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_requestCarrierSetupsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x2667315D0](completionCopy);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__TSActivationFlowWithSimSetupFlow__requestCarrierSetupsWithCompletion___block_invoke;
    v16[3] = &unk_279B452E8;
    objc_copyWeak(&v18, &location);
    v7 = v5;
    v16[4] = self;
    v17 = v7;
    [v6 getCarrierSetupWithCompletion:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = _TSLogDomain(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v8 _requestCarrierSetupsWithCompletion:v9, v10, v11, v12, v13, v14, v15];
    }
  }
}

void __72__TSActivationFlowWithSimSetupFlow__requestCarrierSetupsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = _TSLogDomain(WeakRetained);
  v7 = v6;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v4;
      v20 = 2080;
      v21 = "[TSActivationFlowWithSimSetupFlow _requestCarrierSetupsWithCompletion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "Carrier setup %@ @%s", buf, 0x16u);
    }

    objc_storeStrong(WeakRetained + 16, a2);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__TSActivationFlowWithSimSetupFlow__requestCarrierSetupsWithCompletion___block_invoke_114;
    v16[3] = &unk_279B44938;
    v8 = *(a1 + 32);
    v17 = *(a1 + 40);
    [v8 getWebsheetInfo:v4 completion:v16];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__TSActivationFlowWithSimSetupFlow__requestCarrierSetupsWithCompletion___block_invoke_cold_1(v7, v9, v10, v11, v12, v13, v14, v15);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)getWebsheetInfo:(id)info completion:(id)completion
{
  location[3] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  v8 = completionCopy;
  if (infoCopy)
  {
    objc_initWeak(location, self);
    plans = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
    v10 = [plans count] > 1;

    if (v10)
    {
      v12 = _TSLogDomain(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(TSActivationFlowWithSimSetupFlow *)v12 getWebsheetInfo:v13 completion:v14, v15, v16, v17, v18, v19];
      }
    }

    plans2 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
    v21 = [plans2 count] == 0;

    if (!v21)
    {
      v22 = +[TSCoreTelephonyClientCache sharedInstance];
      plans3 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
      v24 = [plans3 objectAtIndexedSubscript:0];
      plan = [v24 plan];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__TSActivationFlowWithSimSetupFlow_getWebsheetInfo_completion___block_invoke;
      v27[3] = &unk_279B45310;
      objc_copyWeak(&v29, location);
      v28 = v8;
      [v22 getWebsheetInfoForPlan:plan inBuddy:0 completion:v27];

      objc_destroyWeak(&v29);
    }

    objc_destroyWeak(location);
  }

  else
  {
    v26 = _TSLogDomain(completionCopy);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[TSActivationFlowWithSimSetupFlow getWebsheetInfo:completion:]";
      _os_log_impl(&dword_262AA8000, v26, OS_LOG_TYPE_DEFAULT, "No carrier setup items @%s", location, 0xCu);
    }

    v8[2](v8);
  }
}

void __63__TSActivationFlowWithSimSetupFlow_getWebsheetInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 19, a2);
    objc_storeStrong(v9 + 20, a3);
  }

  else
  {
    v10 = _TSLogDomain(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __63__TSActivationFlowWithSimSetupFlow_getWebsheetInfo_completion___block_invoke_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_filterCarrierSetupItems:(id)items
{
  v30 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  plans = [itemsCopy plans];
  v7 = [plans count];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    transferPlans = self->_transferPlans;
    plans2 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
    [(NSMutableArray *)transferPlans filteredPlansWithoutSODATether:plans2];

    if ([TSFlowHelper hasTransferablePlanWithSameCarrierName:itemsCopy transferablePlans:self->_transferItems inBuddy:0 matchingSODACarrierWebsheetTransferPlanIndex:v8])
    {
      carrierSetupItems = self->_carrierSetupItems;
      self->_carrierSetupItems = 0;
    }

    else
    {
      objc_storeStrong(&self->_carrierSetupItems, items);
      v20 = v8;
      v12 = [TSFlowHelper sortIndexesInDescending:v8];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            unsignedIntegerValue = [*(*(&v21 + 1) + 8 * i) unsignedIntegerValue];
            v18 = _TSLogDomain(unsignedIntegerValue);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [(NSMutableArray *)self->_transferItems objectAtIndex:unsignedIntegerValue];
              *buf = 138412546;
              v26 = v19;
              v27 = 2080;
              v28 = "[TSActivationFlowWithSimSetupFlow _filterCarrierSetupItems:]";
              _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "Plan %@ will be removed from transfer list @%s", buf, 0x16u);
            }

            [(NSMutableArray *)self->_transferItems removeObjectAtIndex:unsignedIntegerValue];
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v14);
      }

      v8 = v20;
    }
  }
}

- (void)_userDidTapCancel
{
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  topViewController2 = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
LABEL_5:
    v17 = +[TSCoreTelephonyClientCache sharedInstance];
    v16 = objc_alloc(MEMORY[0x277CC3720]);
    v15 = [TSUtilities transferablePlans:self->_transferItems];
    plans = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
    v6 = [plans count];
    v7 = [TSUtilities odaPlans:self->_transferItems];
    v8 = [TSUtilities transferablePlanCarriers:self->_transferItems];
    plans2 = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
    v10 = [TSUtilities alsPlanCarriers:plans2];
    v11 = [TSUtilities odaPlanCarriers:self->_transferItems];
    v12 = [v16 initWithInBuddy:0 transferablePlans:v15 selectedTransferablePlans:0 alsPlans:v6 selectedAlsPlans:0 odaPlans:v7 transferPlanCarriers:v8 selectedTransferPlanCarriers:&stru_28753DF48 alsPlanCarriers:v10 selectedAlsPlanCarriers:&stru_28753DF48 odaPlanCarriers:v11 selectedOdaPlanCarriers:&stru_28753DF48 sourceDevicesCount:+[TSUtilities sourceDevicesCount:](TSUtilities selectedSourceDevicesCount:{"sourceDevicesCount:", self->_transferItems), 0}];
    [v17 submitSimSetupUsage:v12];

    goto LABEL_6;
  }

  topViewController3 = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_5;
  }

LABEL_6:

  [(TSSIMSetupFlow *)self userDidTapCancel];
}

- (void)startOverWithFirstViewController:(id)controller
{
  controllerCopy = controller;
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  topViewController = [navigationController topViewController];
  navigationController2 = [(TSSIMSetupFlow *)self navigationController];
  LOBYTE(self) = [(TSSIMSetupFlow *)self handleStartOverWithEntryPoint:topViewController navigationController:navigationController2 completion:controllerCopy];

  if ((self & 1) == 0)
  {
    controllerCopy[2](controllerCopy, 0);
  }
}

- (void)firstViewController
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow firstViewController]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, self, a3, "[E](UIViewController *)firstViewController is deprecated, please use (void)firstViewController:(void (^)(UIViewController *))completion @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __66__TSActivationFlowWithSimSetupFlow__sendSIMSetupReadyNotification__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_2_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow firstViewController:]_block_invoke_2";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_40_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow firstViewController:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_maybePresentFirstViewController:(uint64_t)a3 firstViewControllerCallback:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow _maybePresentFirstViewController:firstViewControllerCallback:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]nothing to present @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __97__TSActivationFlowWithSimSetupFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]nothing to present!!! @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)nextViewControllerFrom:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow nextViewControllerFrom:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]unexpected @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)planItemsUpdated:planListError:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)didPurchasePlanSuccessfullyWithEid:(uint64_t)a3 imei:(uint64_t)a4 meid:(uint64_t)a5 iccid:(uint64_t)a6 alternateSDMP:(uint64_t)a7 state:(uint64_t)a8 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow didPurchasePlanSuccessfullyWithEid:imei:meid:iccid:alternateSDMP:state:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]No EID, not implemented @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_requestPlansWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow _requestPlansWithCompletion:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid completion @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow _requestPlansWithCompletion:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_requestTransferPlanListWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow _requestTransferPlanListWithCompletion:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid completion @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke_108_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_requestCrossPlatformTransferPlanListWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow _requestCrossPlatformTransferPlanListWithCompletion:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid completion @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __88__TSActivationFlowWithSimSetupFlow__requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __88__TSActivationFlowWithSimSetupFlow__requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow _requestCrossPlatformTransferPlanListWithCompletion:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_requestPendingInstallItemsWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow _requestPendingInstallItemsWithCompletion:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid completion @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_requestCarrierSetupsWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow _requestCarrierSetupsWithCompletion:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid completion @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __72__TSActivationFlowWithSimSetupFlow__requestCarrierSetupsWithCompletion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow _requestCarrierSetupsWithCompletion:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getWebsheetInfo:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow getWebsheetInfo:completion:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Wrong number of carrier setup items on server @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __63__TSActivationFlowWithSimSetupFlow_getWebsheetInfo_completion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSActivationFlowWithSimSetupFlow getWebsheetInfo:completion:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end