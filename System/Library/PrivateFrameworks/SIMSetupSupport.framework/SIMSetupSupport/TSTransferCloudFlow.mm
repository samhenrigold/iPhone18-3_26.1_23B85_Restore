@interface TSTransferCloudFlow
- (TSTransferCloudFlow)initWithProximitySetupState:(unint64_t)state proxPlansFiltered:(BOOL)filtered;
- (id)_createIntroViewController:(BOOL)controller showQrCodeOption:(BOOL)option;
- (id)_firstViewController;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)_maybePresentFirstViewController:(id)controller firstViewControllerCallback:(id)callback;
- (void)_updateSourceProxCardState:(BOOL)state;
- (void)dealloc;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
- (void)setCancelNavigationBarItems:(id)items;
- (void)startOverWithFirstViewController:(id)controller;
- (void)userDidTapCancel;
@end

@implementation TSTransferCloudFlow

- (TSTransferCloudFlow)initWithProximitySetupState:(unint64_t)state proxPlansFiltered:(BOOL)filtered
{
  v13.receiver = self;
  v13.super_class = TSTransferCloudFlow;
  v6 = [(TSSIMSetupFlow *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(TSTransferCloudFlowModel);
    model = v6->_model;
    v6->_model = v7;

    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v6 action:sel_userDidTapCancel];
    cancelButton = v6->_cancelButton;
    v6->_cancelButton = v9;

    v6->_proximitySetupState = state;
    v6->_proxPlansFiltered = filtered;
    v11 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v11 assertUserInPurchaseFlowStartOver:0 caller:v6];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4.receiver = self;
  v4.super_class = TSTransferCloudFlow;
  [(TSTransferCloudFlow *)&v4 dealloc];
}

- (id)firstViewController
{
  v2 = _TSLogDomain(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [(TSTransferCloudFlow *)v2 firstViewController];
  }

  return 0;
}

- (id)_firstViewController
{
  selfCopy = self;
  v94 = *MEMORY[0x277D85DE8];
  transferPlans = [(TSTransferCloudFlowModel *)self->_model transferPlans];
  filteredPlansForTransferableBucket = [transferPlans filteredPlansForTransferableBucket];

  v72 = [filteredPlansForTransferableBucket filteredPlansForHiddenInCloudBucket:0];
  v75 = [filteredPlansForTransferableBucket filteredPlansForHiddenInCloudBucket:1];
  transferPlans2 = [(TSTransferCloudFlowModel *)selfCopy->_model transferPlans];
  filteredPlansForSoftwareUpdateBucket = [transferPlans2 filteredPlansForSoftwareUpdateBucket];

  transferPlans3 = [(TSTransferCloudFlowModel *)selfCopy->_model transferPlans];
  filteredPlansForQRCodeBucket = [transferPlans3 filteredPlansForQRCodeBucket];

  transferPlans4 = [(TSTransferCloudFlowModel *)selfCopy->_model transferPlans];
  filteredPlansForNonInstallableBucket = [transferPlans4 filteredPlansForNonInstallableBucket];

  filteredPlansForVisitStoreBucket = [filteredPlansForTransferableBucket filteredPlansForVisitStoreBucket];
  v78 = filteredPlansForSoftwareUpdateBucket;
  filteredPlansForVisitStoreBucket2 = [filteredPlansForSoftwareUpdateBucket filteredPlansForVisitStoreBucket];
  v10 = _TSLogDomain(filteredPlansForVisitStoreBucket2);
  v79 = selfCopy;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219778;
    *v81 = [filteredPlansForTransferableBucket count];
    *&v81[8] = 2048;
    *&v81[10] = [filteredPlansForVisitStoreBucket count];
    v82 = 2048;
    v83 = [v75 count];
    v84 = 2048;
    v85 = [filteredPlansForSoftwareUpdateBucket count];
    v86 = 2048;
    v87 = [filteredPlansForVisitStoreBucket2 count];
    v88 = 2048;
    v89 = [filteredPlansForQRCodeBucket count];
    v90 = 2048;
    v91 = [filteredPlansForNonInstallableBucket count];
    v92 = 2080;
    v93 = "[TSTransferCloudFlow _firstViewController]";
    _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "transferable:%lu (store:%lu, hidden:%lu), software update:%lu (store:%lu), qrcode:%lu, non install:%lu @%s", buf, 0x52u);
  }

  v12 = _TSLogDomain(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    shouldShowCarrierSetupPane = [(TSTransferCloudFlowModel *)selfCopy->_model shouldShowCarrierSetupPane];
    *buf = 67109378;
    *v81 = shouldShowCarrierSetupPane;
    *&v81[4] = 2080;
    *&v81[6] = "[TSTransferCloudFlow _firstViewController]";
    _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "soda : %{BOOL}d @%s", buf, 0x12u);
  }

  v15 = _TSLogDomain(v14);
  v73 = filteredPlansForQRCodeBucket;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    transferItems = [(TSTransferCloudFlowModel *)selfCopy->_model transferItems];
    v17 = [transferItems count];
    requireStoreVisitItems = [(TSTransferCloudFlowModel *)selfCopy->_model requireStoreVisitItems];
    v19 = [requireStoreVisitItems count];
    [(TSTransferCloudFlowModel *)v79->_model transferableHiddenInCloudFlowItems];
    v21 = v20 = filteredPlansForTransferableBucket;
    v22 = [v21 count];
    transferIneligibleItems = [(TSTransferCloudFlowModel *)v79->_model transferIneligibleItems];
    v24 = [transferIneligibleItems count];
    *buf = 134219010;
    *v81 = v17;
    *&v81[8] = 2048;
    *&v81[10] = v19;
    selfCopy = v79;
    v82 = 2048;
    v83 = v22;
    v84 = 2048;
    v85 = v24;
    v86 = 2080;
    v87 = "[TSTransferCloudFlow _firstViewController]";
    _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "transfer plans: %lu, store visit:%lu, hidden: %lu, ineligible: %lu @%s", buf, 0x34u);

    filteredPlansForTransferableBucket = v20;
    filteredPlansForQRCodeBucket = v73;
  }

  v25 = [filteredPlansForTransferableBucket count];
  carrierSetupItems = [(TSTransferCloudFlowModel *)selfCopy->_model carrierSetupItems];
  plans = [carrierSetupItems plans];
  v28 = [plans count];

  if (!+[TSUtilities isPad](TSUtilities, "isPad") || !+[TSUtilities isGreenTeaCapable](TSUtilities, "isGreenTeaCapable") || (v29 = +[TSUtilities inBuddy], !v29))
  {
    transferItems2 = [(TSTransferCloudFlowModel *)selfCopy->_model transferItems];
    crossPlatformTransferItems = [(TSTransferCloudFlowModel *)selfCopy->_model crossPlatformTransferItems];
    plans2 = [crossPlatformTransferItems plans];
    v35 = [plans2 count];

    if (v35 == 1)
    {
      v37 = _TSLogDomain(v36);
      v32 = v72;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v81 = "[TSTransferCloudFlow _firstViewController]";
        _os_log_impl(&dword_262AA8000, v37, OS_LOG_TYPE_DEFAULT, "Skip showing cross-platform VC. @%s", buf, 0xCu);
      }

      v31 = 0;
LABEL_43:

      filteredPlansForQRCodeBucket = v73;
      goto LABEL_44;
    }

    v38 = v28 + v25;
    v39 = [filteredPlansForQRCodeBucket count];
    if (v38)
    {
      v32 = v72;
      if (v39)
      {
        goto LABEL_19;
      }

      v48 = [filteredPlansForNonInstallableBucket count];
      v49 = v48 + [v78 count] + v38;
      v50 = [filteredPlansForVisitStoreBucket count];
      if (v49 >= 2)
      {
        if (v50 != v38)
        {
          goto LABEL_19;
        }

        goto LABEL_29;
      }

      if (v50 == 1)
      {
LABEL_29:
        v31 = [[SSVisitStoreViewController alloc] initWithPlans:filteredPlansForVisitStoreBucket showOtherOption:0];
        v41 = v79;
        goto LABEL_41;
      }

      if ([v72 count] == 1 && -[NSObject count](transferItems2, "count"))
      {
        v53 = [transferItems2 objectAtIndexedSubscript:0];
        transferPlans5 = [v53 objectForKeyedSubscript:@"planItem"];

        v54 = [TSSinglePlanTransferViewController alloc];
        carrierSetupItems2 = [transferItems2 objectAtIndexedSubscript:0];
        isPhysical = [transferPlans5 isPhysical];
        isTransferIneligiblePlan = [transferPlans5 isTransferIneligiblePlan];
        v41 = v79;
        LOBYTE(v71) = v79->_proxPlansFiltered;
        v31 = [(TSSinglePlanTransferViewController *)v54 initWithTransferPlan:carrierSetupItems2 isPhysical:isPhysical isIneligible:isTransferIneligiblePlan inBuddy:1 confirmCellularPlanTransfer:1 showOtherOptions:1 isShowingFilteredPlans:v71];
        goto LABEL_20;
      }

      if ([v75 count] == 1)
      {
LABEL_19:
        v40 = [TSMultiPlanIntermediateViewController alloc];
        v41 = v79;
        transferPlans5 = [(TSTransferCloudFlowModel *)v79->_model transferPlans];
        carrierSetupItems2 = [(TSTransferCloudFlowModel *)v79->_model carrierSetupItems];
        plans3 = [carrierSetupItems2 plans];
        LOWORD(v71) = 0;
        v31 = [(TSMultiPlanIntermediateViewController *)v40 initWithPendingInstallPlans:0 transferPlans:transferPlans5 carrierSetupPlans:plans3 showQRCodeOption:1 showOtherOptions:0 isShowingFilteredPlans:v79->_proxPlansFiltered isStandaloneProximityFlow:v71 isHiddenPlanSelectable:?];

LABEL_20:
        goto LABEL_41;
      }

      v41 = v79;
      carrierSetupItems3 = [(TSTransferCloudFlowModel *)v79->_model carrierSetupItems];
      plans4 = [carrierSetupItems3 plans];
      v60 = [plans4 count];

      if (v60 == 1)
      {
        v61 = [TSBuddyMLViewController alloc];
        carrierSetupItems4 = [(TSTransferCloudFlowModel *)v79->_model carrierSetupItems];
        plans5 = [carrierSetupItems4 plans];
        v64 = [plans5 objectAtIndexedSubscript:0];
        plan = [v64 plan];
        websheetUrl = [(TSTransferCloudFlowModel *)v79->_model websheetUrl];
        [(TSTransferCloudFlowModel *)v79->_model postdata];
        v68 = v67 = filteredPlansForTransferableBucket;
        v31 = [(TSBuddyMLViewController *)v61 initWithCTPlan:plan websheetURL:websheetUrl postdata:v68];

        filteredPlansForTransferableBucket = v67;
        v32 = v72;

        [(TSTransferCloudFlow *)v79 _updateSourceProxCardState:0];
        goto LABEL_41;
      }

      goto LABEL_47;
    }

    if (v39)
    {
      v45 = [TSCellularPlanIntroViewController alloc];
      v41 = v79;
      needOfferProximityTransferOption = [(TSTransferCloudFlowModel *)v79->_model needOfferProximityTransferOption];
      transferPlans6 = [(TSTransferCloudFlowModel *)v79->_model transferPlans];
      v31 = [(TSCellularPlanIntroViewController *)v45 initWithShowTransferOption:needOfferProximityTransferOption requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:transferPlans6];
    }

    else if ([v78 count])
    {
      v51 = [TSNoPlanForTransferViewController alloc];
      v41 = v79;
      transferPlans7 = [(TSTransferCloudFlowModel *)v79->_model transferPlans];
      v31 = [(TSNoPlanForTransferViewController *)v51 initWithPlans:transferPlans7 showOtherOptions:0];
    }

    else
    {
      v57 = +[TSUtilities areAnyPlansOnDevice];
      v41 = v79;
      if (v79->_proximitySetupState == 1)
      {
        v32 = v72;
        if (!v79->_proxPlansFiltered && !v57)
        {
          v31 = [(TSTransferCloudFlow *)v79 _createIntroViewController:0 showQrCodeOption:[(TSTransferCloudFlowModel *)v79->_model needOfferQRCodeOption]];
          goto LABEL_41;
        }

LABEL_47:
        v31 = 0;
LABEL_41:
        v37 = _TSLogDomain([(SSVisitStoreViewController *)v31 setDelegate:v41]);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v69 = objc_opt_class();
          *buf = 138412546;
          *v81 = v69;
          *&v81[8] = 2080;
          *&v81[10] = "[TSTransferCloudFlow _firstViewController]";
          _os_log_impl(&dword_262AA8000, v37, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", buf, 0x16u);
        }

        goto LABEL_43;
      }

      v31 = 0;
    }

    v32 = v72;
    goto LABEL_41;
  }

  transferItems2 = _TSLogDomain(v29);
  if (os_log_type_enabled(transferItems2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v81 = "[TSTransferCloudFlow _firstViewController]";
    _os_log_impl(&dword_262AA8000, transferItems2, OS_LOG_TYPE_DEFAULT, "Skip for greentea ipad in buddy @%s", buf, 0xCu);
  }

  v31 = 0;
  v32 = v72;
LABEL_44:

  return v31;
}

- (void)firstViewController:(id)controller
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (controllerCopy)
  {
    if ([(TSTransferCloudFlowModel *)self->_model isD2dDone])
    {
      controllerCopy[2](controllerCopy, 0);
    }

    else if (+[TSUtilities isPad]&& (v5 = _os_feature_enabled_impl(), (v5 & 1) == 0))
    {
      v14 = _TSLogDomain(v5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "[TSTransferCloudFlow firstViewController:]";
        _os_log_impl(&dword_262AA8000, v14, OS_LOG_TYPE_DEFAULT, "Skip transfer cloud flow on iPad @%s", buf, 0xCu);
      }

      controllerCopy[2](controllerCopy, 0);
    }

    else
    {
      v6 = +[TSCellularPlanManagerCache sharedInstance];
      planItems = [v6 planItems];

      if ((_os_feature_enabled_impl() & 1) != 0 || (v8 = [planItems count]) == 0)
      {
        v10 = _os_feature_enabled_impl();
        if (v10)
        {
          objc_initWeak(buf, self);
          model = self->_model;
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __43__TSTransferCloudFlow_firstViewController___block_invoke;
          v15[3] = &unk_279B44CD0;
          objc_copyWeak(&v17, buf);
          v16 = controllerCopy;
          [(TSTransferCloudFlowModel *)model arePlansAvailable:v15];

          objc_destroyWeak(&v17);
          objc_destroyWeak(buf);
        }

        else
        {
          v12 = _TSLogDomain(v10);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v19 = "[TSTransferCloudFlow firstViewController:]";
            _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "SIMSetupSupport/MagnoliaOverCloudInBuddy is disabled @%s", buf, 0xCu);
          }

          _firstViewController = [(TSTransferCloudFlow *)self _firstViewController];
          (controllerCopy)[2](controllerCopy, _firstViewController);
        }
      }

      else
      {
        v9 = _TSLogDomain(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v19 = [planItems count];
          v20 = 2080;
          v21 = "[TSTransferCloudFlow firstViewController:]";
          _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "Skip transfer cloud flow when user profiles: %zd @%s", buf, 0x16u);
        }

        controllerCopy[2](controllerCopy, 0);
      }
    }
  }
}

void __43__TSTransferCloudFlow_firstViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _firstViewController];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _maybePresentFirstViewController:v4 firstViewControllerCallback:*(a1 + 32)];
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
    v17[2] = __84__TSTransferCloudFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke;
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
      [(TSTransferCloudFlow *)v9 _maybePresentFirstViewController:v10 firstViewControllerCallback:v11, v12, v13, v14, v15, v16];
    }

    v8[2](v8, 0);
  }
}

void __84__TSTransferCloudFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke(uint64_t a1, void *a2)
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
        v25 = "[TSTransferCloudFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
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
        v29 = "[TSTransferCloudFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
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
          __84__TSTransferCloudFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
        }

        (*(*(a1 + 40) + 16))();
      }
    }
  }
}

- (id)_createIntroViewController:(BOOL)controller showQrCodeOption:(BOOL)option
{
  optionCopy = option;
  controllerCopy = controller;
  needOfferProximityTransferOption = [(TSTransferCloudFlowModel *)self->_model needOfferProximityTransferOption];
  transferPlans = [(TSTransferCloudFlowModel *)self->_model transferPlans];
  filteredPlansForNonInstallableBucket = [transferPlans filteredPlansForNonInstallableBucket];

  if (optionCopy)
  {
    transferIneligibleItems = [(TSTransferCloudFlowModel *)self->_model transferIneligibleItems];
    v11 = [transferIneligibleItems count];
    LOBYTE(v11) = v11 == [filteredPlansForNonInstallableBucket count];

    needOfferProximityTransferOption |= v11;
  }

  v12 = [TSCellularPlanIntroViewController alloc];
  transferIneligibleItems2 = [(TSTransferCloudFlowModel *)self->_model transferIneligibleItems];
  v14 = [(TSCellularPlanIntroViewController *)v12 initWithShowTransferOption:needOfferProximityTransferOption & 1 requireDelayBluetoothConnection:controllerCopy showQrCodeOption:optionCopy transferIneligiblePlans:transferIneligibleItems2];

  return v14;
}

- (void)startOverWithFirstViewController:(id)controller
{
  controllerCopy = controller;
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  topViewController = [navigationController topViewController];
  navigationController2 = [(TSSIMSetupFlow *)self navigationController];
  v8 = [(TSSIMSetupFlow *)self handleStartOverWithEntryPoint:topViewController navigationController:navigationController2 completion:controllerCopy];

  if (!v8)
  {
    v9 = +[TSCellularPlanManagerCache sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__TSTransferCloudFlow_startOverWithFirstViewController___block_invoke;
    v10[3] = &unk_279B45668;
    v10[4] = self;
    v11 = controllerCopy;
    [v9 hasInstallingPlanOrUserPlan:v10];
  }
}

void __56__TSTransferCloudFlow_startOverWithFirstViewController___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__TSTransferCloudFlow_startOverWithFirstViewController___block_invoke_2;
    v6[3] = &unk_279B44C30;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v5 firstViewController:v6];
  }
}

- (id)nextViewControllerFrom:(id)from
{
  v113[2] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [TSSubFlowViewController alloc];
    v112[0] = @"FlowTypeKey";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
    v112[1] = @"IsClientKey";
    v113[0] = v6;
    v113[1] = MEMORY[0x277CBEC28];
    v7 = MEMORY[0x277CBEAC0];
    v8 = v113;
    v9 = v112;
LABEL_3:
    v10 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:2];
    navigationController = [(TSSIMSetupFlow *)self navigationController];
    v12 = [(TSSubFlowViewController *)v5 initWithOptions:v10 navigationController:navigationController delegate:self];

    goto LABEL_74;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = fromCopy;
    if ([v13 isOtherButtonTapped])
    {
LABEL_6:
      v12 = -[TSTransferCloudFlow _createIntroViewController:showQrCodeOption:](self, "_createIntroViewController:showQrCodeOption:", [v13 requireDelayBluetoothConnection], 1);
LABEL_73:

      goto LABEL_74;
    }

    if (([v13 isSkipButtonTapped] & 1) == 0)
    {
      v23 = [TSSubFlowViewController alloc];
      v110[0] = @"FlowTypeKey";
      v110[1] = @"SkipActivatingPane";
      v111[0] = &unk_287583C70;
      v111[1] = MEMORY[0x277CBEC38];
      v110[2] = @"DelayStartActivatingTimer";
      installingTransferPlan = [v13 installingTransferPlan];
      v25 = &unk_287583CA0;
      if (installingTransferPlan)
      {
        v25 = &unk_287583C88;
      }

      v111[2] = v25;
      v110[3] = @"PlanSetupTypeKey";
      installingTransferPlan2 = [v13 installingTransferPlan];
      v27 = &unk_287583CD0;
      if (installingTransferPlan2)
      {
        v27 = &unk_287583CB8;
      }

      v111[3] = v27;
      v110[4] = @"Plan";
      selectedPlan = [v13 selectedPlan];
      v111[4] = selectedPlan;
      v29 = MEMORY[0x277CBEAC0];
      v30 = v111;
      v31 = v110;
      v32 = 5;
      goto LABEL_18;
    }

LABEL_72:
    v12 = 0;
    goto LABEL_73;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = fromCopy;
    if (![v13 isTransferListCellTapped])
    {
      if (![v13 isScanButtonTapped])
      {
        goto LABEL_72;
      }

      transferIneligibleItems = [(TSTransferCloudFlowModel *)self->_model transferIneligibleItems];
      filteredPlansForQRCodeBucket = [transferIneligibleItems filteredPlansForQRCodeBucket];

      v106[0] = @"FlowTypeKey";
      v106[1] = @"IsFirstViewKey";
      v107[0] = &unk_287583CE8;
      v107[1] = MEMORY[0x277CBEC28];
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
      v22 = [v38 mutableCopy];

      if ([filteredPlansForQRCodeBucket count])
      {
        [v22 setObject:filteredPlansForQRCodeBucket forKeyedSubscript:@"Plans"];
      }

      v39 = [TSSubFlowViewController alloc];
      navigationController2 = [(TSSIMSetupFlow *)self navigationController];
      v41 = v39;
      v17 = navigationController2;
      v12 = [(TSSubFlowViewController *)v41 initWithOptions:v22 navigationController:navigationController2 delegate:self];
      goto LABEL_34;
    }

    transferPlans = [(TSTransferCloudFlowModel *)self->_model transferPlans];
    filteredPlansForTransferableBucket = [transferPlans filteredPlansForTransferableBucket];

    filteredPlansForVisitStoreBucket = [filteredPlansForTransferableBucket filteredPlansForVisitStoreBucket];
    v17 = [filteredPlansForTransferableBucket filteredPlansForHiddenInCloudBucket:0];
    v91 = filteredPlansForTransferableBucket;
    v90 = [filteredPlansForTransferableBucket filteredPlansForHiddenInCloudBucket:1];
    v18 = [v17 count];
    carrierSetupItems = [(TSTransferCloudFlowModel *)self->_model carrierSetupItems];
    plans = [carrierSetupItems plans];
    v21 = [plans count];

    if (v18 + v21)
    {
      v45 = [TSTransferListViewController alloc];
      transferPlans2 = [(TSTransferCloudFlowModel *)self->_model transferPlans];
      isActivationPolicyMismatch = [(TSTransferCloudFlowModel *)self->_model isActivationPolicyMismatch];
      isDualeSIMCapablityLoss = [(TSTransferCloudFlowModel *)self->_model isDualeSIMCapablityLoss];
      [(TSTransferCloudFlowModel *)self->_model carrierSetupItems];
      v50 = v49 = v17;
      BYTE2(v89) = ![(TSTransferCloudFlowModel *)self->_model isFlexPolicyOn];
      LOWORD(v89) = 0;
      v12 = [TSTransferListViewController initWithTransferPlans:v45 confirmCellularPlanTransfer:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" isActivationPolicyMismatch:transferPlans2 isDualeSIMCapabilityLoss:1 pendingInstallItems:isActivationPolicyMismatch carrierSetupItems:isDualeSIMCapablityLoss showOtherOptions:0 isStandaloneProximityFlow:v50 allowsMultiSelection:v89];

      v17 = v49;
      v22 = filteredPlansForVisitStoreBucket;
    }

    else
    {
      v22 = filteredPlansForVisitStoreBucket;
      if (![filteredPlansForVisitStoreBucket count])
      {
        v51 = v90;
        if ([v90 count])
        {
          v64 = v17;
          v65 = [TSSubFlowViewController alloc];
          v108[0] = @"FlowTypeKey";
          v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
          v108[1] = @"IsClientKey";
          v109[0] = v66;
          v109[1] = MEMORY[0x277CBEC28];
          v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
          navigationController3 = [(TSSIMSetupFlow *)self navigationController];
          v69 = v65;
          v17 = v64;
          v12 = [(TSSubFlowViewController *)v69 initWithOptions:v67 navigationController:navigationController3 delegate:self];

          v22 = filteredPlansForVisitStoreBucket;
        }

        else
        {
          v74 = _TSLogDomain(0);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            [(TSTransferCloudFlow *)v74 nextViewControllerFrom:v75, v76, v77, v78, v79, v80, v81];
          }

          v12 = 0;
        }

        filteredPlansForQRCodeBucket = v91;
        goto LABEL_33;
      }

      v12 = [[SSVisitStoreViewController alloc] initWithPlans:filteredPlansForVisitStoreBucket showOtherOption:0];
    }

    v51 = v90;
    filteredPlansForQRCodeBucket = v91;
LABEL_33:

LABEL_34:
LABEL_35:

    goto LABEL_73;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = fromCopy;
    if ([v13 isOtherButtonTapped])
    {
      goto LABEL_6;
    }

    if (_os_feature_enabled_impl())
    {
      selectedPlans = [v13 selectedPlans];

      if (selectedPlans)
      {
        v23 = [TSSubFlowViewController alloc];
        v105[0] = &unk_287583C70;
        v104[0] = @"FlowTypeKey";
        v104[1] = @"Plans";
        selectedPlan = [v13 selectedPlans];
        v104[2] = @"ConfirmCellularPlanTransfer";
        v105[1] = selectedPlan;
        v105[2] = MEMORY[0x277CBEC38];
        v29 = MEMORY[0x277CBEAC0];
        v30 = v105;
        v31 = v104;
        v32 = 3;
LABEL_18:
        navigationController5 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
        navigationController4 = [(TSSIMSetupFlow *)self navigationController];
        v12 = [(TSSubFlowViewController *)v23 initWithOptions:navigationController5 navigationController:navigationController4 delegate:self];

LABEL_45:
        goto LABEL_73;
      }
    }

    v55 = [TSSubFlowViewController alloc];
    v102[0] = @"FlowTypeKey";
    v102[1] = @"SkipActivatingPane";
    v103[0] = &unk_287583C70;
    v103[1] = MEMORY[0x277CBEC38];
    v102[2] = @"DelayStartActivatingTimer";
    installingTransferPlan3 = [v13 installingTransferPlan];
    v57 = &unk_287583CA0;
    if (installingTransferPlan3)
    {
      v57 = &unk_287583C88;
    }

    v103[2] = v57;
    v102[3] = @"PlanSetupTypeKey";
    installingTransferPlan4 = [v13 installingTransferPlan];
    v59 = &unk_287583CD0;
    if (installingTransferPlan4)
    {
      v59 = &unk_287583CB8;
    }

    v103[3] = v59;
    v60 = MEMORY[0x277CBEAC0];
    v61 = v103;
    v62 = v102;
    v63 = 4;
LABEL_44:
    selectedPlan = [v60 dictionaryWithObjects:v61 forKeys:v62 count:v63];
    navigationController5 = [(TSSIMSetupFlow *)self navigationController];
    v12 = [(TSSubFlowViewController *)v55 initWithOptions:selectedPlan navigationController:navigationController5 delegate:self];
    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = [TSSubFlowViewController alloc];
    v100[0] = @"FlowTypeKey";
    v100[1] = @"SkipActivatingPane";
    v101[0] = &unk_287583C70;
    v101[1] = MEMORY[0x277CBEC28];
    v100[2] = @"PlanSetupTypeKey";
    v101[2] = &unk_287583D00;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:3];
    navigationController6 = [(TSSIMSetupFlow *)self navigationController];
    v12 = [(TSSubFlowViewController *)v42 initWithOptions:v43 navigationController:navigationController6 delegate:self];

    if (!self->_isSourceProxCardVisible)
    {
      [(TSTransferCloudFlow *)self _updateSourceProxCardState:1];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = fromCopy;
      if ([v13 needShowTransferIntroPane])
      {
        v52 = [SSTransferIntroViewController alloc];
        transferableHiddenInCloudFlowItems = [(TSTransferCloudFlowModel *)self->_model transferableHiddenInCloudFlowItems];
        v54 = [(SSTransferIntroViewController *)v52 initWithItems:transferableHiddenInCloudFlowItems];
      }

      else
      {
        if (![v13 isProximityTransferButtonTapped])
        {
          if ([v13 isScanButtonTapped])
          {
            v96[0] = @"FlowTypeKey";
            v96[1] = @"IsFirstViewKey";
            v97[0] = &unk_287583CE8;
            v97[1] = MEMORY[0x277CBEC28];
            v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];
            filteredPlansForQRCodeBucket = [v82 mutableCopy];

            transferPlans3 = [(TSTransferCloudFlowModel *)self->_model transferPlans];
            v84 = [transferPlans3 count];

            if (v84)
            {
              transferPlans4 = [(TSTransferCloudFlowModel *)self->_model transferPlans];
              [filteredPlansForQRCodeBucket setObject:transferPlans4 forKeyedSubscript:@"Plans"];
            }

            v86 = [TSSubFlowViewController alloc];
            navigationController7 = [(TSSIMSetupFlow *)self navigationController];
            v12 = [(TSSubFlowViewController *)v86 initWithOptions:filteredPlansForQRCodeBucket navigationController:navigationController7 delegate:self];

            goto LABEL_35;
          }

          if (+[TSUtilities inBuddy](TSUtilities, "inBuddy") || ![v13 isCrossPlatformButtonTapped])
          {
            goto LABEL_72;
          }

          v55 = [TSSubFlowViewController alloc];
          v94[0] = @"FlowTypeKey";
          v94[1] = @"IsSourceKey";
          v95[0] = &unk_287583D18;
          v95[1] = MEMORY[0x277CBEC28];
          v60 = MEMORY[0x277CBEAC0];
          v61 = v95;
          v62 = v94;
          v63 = 2;
          goto LABEL_44;
        }

        requireStoreVisitItems = [(TSTransferCloudFlowModel *)self->_model requireStoreVisitItems];
        v71 = [requireStoreVisitItems count];

        if (!v71)
        {
          v23 = [TSSubFlowViewController alloc];
          v98[0] = @"FlowTypeKey";
          selectedPlan = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
          v98[1] = @"IsClientKey";
          v99[0] = selectedPlan;
          v99[1] = MEMORY[0x277CBEC28];
          v29 = MEMORY[0x277CBEAC0];
          v30 = v99;
          v31 = v98;
          v32 = 2;
          goto LABEL_18;
        }

        v72 = [SSVisitStoreViewController alloc];
        transferableHiddenInCloudFlowItems = [(TSTransferCloudFlowModel *)self->_model requireStoreVisitItems];
        v54 = [(SSVisitStoreViewController *)v72 initWithPlans:transferableHiddenInCloudFlowItems showOtherOption:0];
      }

      v12 = v54;

      goto LABEL_73;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([fromCopy isTransferButtonTapped])
      {
        v5 = [TSSubFlowViewController alloc];
        v92[0] = @"FlowTypeKey";
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
        v92[1] = @"IsClientKey";
        v93[0] = v6;
        v93[1] = MEMORY[0x277CBEC28];
        v7 = MEMORY[0x277CBEAC0];
        v8 = v93;
        v9 = v92;
        goto LABEL_3;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v73 = fromCopy;
        if ([v73 isOfferFallbackFlow])
        {
          [v73 setIsOfferFallbackFlow:0];
          v12 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:1 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:0];
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_74;
      }
    }

    v12 = 0;
  }

LABEL_74:

  return v12;
}

- (void)setCancelNavigationBarItems:(id)items
{
  itemsCopy = items;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  navigationItem = [itemsCopy navigationItem];
  navigationItem2 = navigationItem;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [navigationItem setRightBarButtonItem:self->_cancelButton];
  }

  else
  {
    [navigationItem setHidesBackButton:1 animated:0];

    navigationItem2 = [itemsCopy navigationItem];
    [navigationItem2 setLeftBarButtonItem:self->_cancelButton];
  }
}

- (void)userDidTapCancel
{
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    topViewController2 = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v16 = +[TSCoreTelephonyClientCache sharedInstance];
  v15 = objc_alloc(MEMORY[0x277CC3720]);
  transferItems = [(TSTransferCloudFlowModel *)self->_model transferItems];
  v14 = [TSUtilities transferablePlans:transferItems];
  transferItems2 = [(TSTransferCloudFlowModel *)self->_model transferItems];
  v7 = [TSUtilities odaPlans:transferItems2];
  transferItems3 = [(TSTransferCloudFlowModel *)self->_model transferItems];
  v9 = [TSUtilities transferablePlanCarriers:transferItems3];
  transferItems4 = [(TSTransferCloudFlowModel *)self->_model transferItems];
  v11 = [TSUtilities odaPlanCarriers:transferItems4];
  transferItems5 = [(TSTransferCloudFlowModel *)self->_model transferItems];
  v13 = [v15 initWithInBuddy:0 transferablePlans:v14 selectedTransferablePlans:0 alsPlans:0 selectedAlsPlans:0 odaPlans:v7 transferPlanCarriers:v9 selectedTransferPlanCarriers:&stru_28753DF48 alsPlanCarriers:&stru_28753DF48 selectedAlsPlanCarriers:&stru_28753DF48 odaPlanCarriers:v11 selectedOdaPlanCarriers:&stru_28753DF48 sourceDevicesCount:+[TSUtilities sourceDevicesCount:](TSUtilities selectedSourceDevicesCount:{"sourceDevicesCount:", transferItems5), 0}];
  [v16 submitSimSetupUsage:v13];

LABEL_5:
  if (!self->_isSourceProxCardVisible)
  {
    [(TSTransferCloudFlow *)self _updateSourceProxCardState:1];
  }

  v18.receiver = self;
  v18.super_class = TSTransferCloudFlow;
  [(TSSIMSetupFlow *)&v18 userDidTapCancel];
}

- (void)_updateSourceProxCardState:(BOOL)state
{
  stateCopy = state;
  v15 = *MEMORY[0x277D85DE8];
  delegate = [(TSSIMSetupFlow *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = _TSLogDomain(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"hiding";
      if (stateCopy)
      {
        v9 = @"showing";
      }

      v11 = 138412546;
      v12 = v9;
      v13 = 2080;
      v14 = "[TSTransferCloudFlow _updateSourceProxCardState:]";
      _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "%@ prox card on source device @%s", &v11, 0x16u);
    }

    self->_isSourceProxCardVisible = stateCopy;
    delegate2 = [(TSSIMSetupFlow *)self delegate];
    [delegate2 updateSourceProxCardState:stateCopy];
  }
}

- (void)firstViewController
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSTransferCloudFlow firstViewController]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]unimplemented, please use async version @%s", &v1, 0xCu);
}

- (void)_maybePresentFirstViewController:(uint64_t)a3 firstViewControllerCallback:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferCloudFlow _maybePresentFirstViewController:firstViewControllerCallback:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]nothing to present @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __84__TSTransferCloudFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferCloudFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]nothing to present!!! @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)nextViewControllerFrom:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferCloudFlow nextViewControllerFrom:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]unexpected @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end