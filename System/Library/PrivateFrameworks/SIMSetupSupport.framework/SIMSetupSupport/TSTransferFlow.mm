@interface TSTransferFlow
+ (void)needsToRunUsingMessageSession:(id)session transferablePlanOnSource:(BOOL)source completion:(id)completion;
- (TSTransferFlow)init;
- (TSTransferFlow)initWithSession:(id)session hasTransferablePlan:(BOOL)plan isStandaloneProximityTransfer:(BOOL)transfer transferBackPlan:(id)backPlan sourceOSVersion:(id)version isPostMigrationFlow:(BOOL)flow isUsingPreSharedKey:(BOOL)key;
- (id)_createIntroViewControllerWithIneligiblePlans:(id)plans;
- (id)_firstViewController:(id)controller;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)_maybeClearFirstViewControllerCallback;
- (void)_maybePresentFirstViewController:(id)controller firstViewControllerCallback:(id)callback;
- (void)_saveSimsetupD2dInfo:(id)info;
- (void)_updateSourceProxCardState:(BOOL)state;
- (void)dealloc;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
- (void)setCancelNavigationBarItems:(id)items;
- (void)startOverWithFirstViewController:(id)controller;
- (void)transferEventUpdate:(id)update;
- (void)userDidTapCancel;
- (void)viewControllerDidComplete:(id)complete;
@end

@implementation TSTransferFlow

- (TSTransferFlow)init
{
  v10.receiver = self;
  v10.super_class = TSTransferFlow;
  v2 = [(TSSIMSetupFlow *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:sel_userDidTapCancel];
    cancelButton = v2->_cancelButton;
    v2->_cancelButton = v3;

    v5 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v5 assertUserInPurchaseFlowStartOver:0 caller:v2];

    v6 = objc_alloc(MEMORY[0x277CC37B0]);
    v7 = [v6 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v2->_ctClient;
    v2->_ctClient = v7;

    [(CoreTelephonyClient *)v2->_ctClient setDelegate:v2];
  }

  return v2;
}

- (TSTransferFlow)initWithSession:(id)session hasTransferablePlan:(BOOL)plan isStandaloneProximityTransfer:(BOOL)transfer transferBackPlan:(id)backPlan sourceOSVersion:(id)version isPostMigrationFlow:(BOOL)flow isUsingPreSharedKey:(BOOL)key
{
  sessionCopy = session;
  backPlanCopy = backPlan;
  versionCopy = version;
  v37.receiver = self;
  v37.super_class = TSTransferFlow;
  v19 = [(TSSIMSetupFlow *)&v37 init];
  if (v19)
  {
    v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v19 action:sel_userDidTapCancel];
    cancelButton = v19->_cancelButton;
    v19->_cancelButton = v20;

    objc_storeStrong(&v19->_session, session);
    v19->_hasTransferablePlan = plan;
    v19->_isStandaloneProximityTransfer = transfer;
    v19->_isAvailableOptionsQueryCompleted = 0;
    v19->_isSourceProxCardVisible = 1;
    objc_storeStrong(&v19->_transferBackPlan, backPlan);
    objc_storeStrong(&v19->_sourceOSVersion, version);
    v19->_isPostMigrationFlow = flow;
    v19->_isUsingPreSharedKey = key;
    v22 = objc_alloc(MEMORY[0x277CC37B0]);
    v23 = [v22 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v19->_ctClient;
    v19->_ctClient = v23;

    [(CoreTelephonyClient *)v19->_ctClient setDelegate:v19];
    v25 = [[TSTransferFlowModel alloc] initWithIsStandaloneProximityTransfer:v19->_isStandaloneProximityTransfer transferBackPlan:v19->_transferBackPlan];
    model = v19->_model;
    v19->_model = v25;

    objc_initWeak(&location, v19);
    v27 = v19->_model;
    session = v19->_session;
    hasTransferablePlan = v19->_hasTransferablePlan;
    sourceOSVersion = v19->_sourceOSVersion;
    isPostMigrationFlow = v19->_isPostMigrationFlow;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __157__TSTransferFlow_initWithSession_hasTransferablePlan_isStandaloneProximityTransfer_transferBackPlan_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey___block_invoke;
    v34[3] = &unk_279B44D40;
    objc_copyWeak(&v35, &location);
    [(TSTransferFlowModel *)v27 arePlansAvailable:session transferablePlanOnSource:hasTransferablePlan bootstrapOnly:0 sourceOSVersion:sourceOSVersion isPostMigrationFlow:isPostMigrationFlow isUsingPreSharedKey:key completion:v34];
    v32 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v32 assertUserInPurchaseFlowStartOver:0 caller:v19];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v19;
}

void __157__TSTransferFlow_initWithSession_hasTransferablePlan_isStandaloneProximityTransfer_transferBackPlan_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsAvailableOptionsQueryCompleted:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _maybeClearFirstViewControllerCallback];
}

- (void)dealloc
{
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4.receiver = self;
  v4.super_class = TSTransferFlow;
  [(TSTransferFlow *)&v4 dealloc];
}

+ (void)needsToRunUsingMessageSession:(id)session transferablePlanOnSource:(BOOL)source completion:(id)completion
{
  sourceCopy = source;
  sessionCopy = session;
  completionCopy = completion;
  if (completionCopy)
  {
    if (+[TSUtilities hasCellularBaseband])
    {
      v9 = +[TSTransferFlowModel sharedInstance];
      [v9 clearCache];

      v10 = +[TSTransferFlowModel sharedInstance];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __84__TSTransferFlow_needsToRunUsingMessageSession_transferablePlanOnSource_completion___block_invoke;
      v11[3] = &unk_279B45618;
      v12 = completionCopy;
      [v10 arePlansAvailable:sessionCopy transferablePlanOnSource:sourceCopy bootstrapOnly:1 sourceOSVersion:0 isPostMigrationFlow:0 isUsingPreSharedKey:0 completion:v11];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (id)firstViewController
{
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [(TSTransferFlow *)v3 firstViewController];
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = [(TSTransferFlow *)self _firstViewController:self->_model];

  return v4;
}

- (id)_firstViewController:(id)controller
{
  v149 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  transferPlans = [(TSTransferFlowModel *)self->_model transferPlans];
  filteredPlansForTransferableBucket = [transferPlans filteredPlansForTransferableBucket];

  transferPlans2 = [(TSTransferFlowModel *)self->_model transferPlans];
  filteredPlansForSoftwareUpdateBucket = [transferPlans2 filteredPlansForSoftwareUpdateBucket];

  transferPlans3 = [(TSTransferFlowModel *)self->_model transferPlans];
  filteredPlansForQRCodeBucket = [transferPlans3 filteredPlansForQRCodeBucket];

  transferPlans4 = [(TSTransferFlowModel *)self->_model transferPlans];
  filteredPlansForNonInstallableBucket = [transferPlans4 filteredPlansForNonInstallableBucket];

  filteredPlansForVisitStoreBucket = [filteredPlansForTransferableBucket filteredPlansForVisitStoreBucket];
  filteredPlansForVisitStoreBucket2 = [filteredPlansForSoftwareUpdateBucket filteredPlansForVisitStoreBucket];
  v8 = _TSLogDomain(filteredPlansForVisitStoreBucket2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219522;
    *v139 = [filteredPlansForTransferableBucket count];
    *&v139[8] = 2048;
    *v140 = [filteredPlansForVisitStoreBucket count];
    *&v140[8] = 2048;
    *&v140[10] = [filteredPlansForSoftwareUpdateBucket count];
    v141 = 2048;
    v142 = [filteredPlansForVisitStoreBucket2 count];
    v143 = 2048;
    v144 = [filteredPlansForQRCodeBucket count];
    v145 = 2048;
    v146 = [filteredPlansForNonInstallableBucket count];
    v147 = 2080;
    v148 = "[TSTransferFlow _firstViewController:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "transferable:%lu (store:%lu), software update:%lu (store:%lu), qrcode:%lu, non install:%lu @%s", buf, 0x48u);
  }

  v10 = _TSLogDomain(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    pendingInstallItems = [controllerCopy pendingInstallItems];
    plans = [pendingInstallItems plans];
    v13 = [plans count];
    shouldShowCarrierSetupPane = [controllerCopy shouldShowCarrierSetupPane];
    *buf = 134218498;
    *v139 = v13;
    *&v139[8] = 1024;
    *v140 = shouldShowCarrierSetupPane;
    *&v140[4] = 2080;
    *&v140[6] = "[TSTransferFlow _firstViewController:]";
    _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "als:%lu, soda:%{BOOL}d @%s", buf, 0x1Cu);
  }

  v16 = _TSLogDomain(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    transferItems = [(TSTransferFlowModel *)self->_model transferItems];
    v18 = [transferItems count];
    requireStoreVisitItems = [(TSTransferFlowModel *)self->_model requireStoreVisitItems];
    v20 = [requireStoreVisitItems count];
    transferIneligibleItems = [(TSTransferFlowModel *)self->_model transferIneligibleItems];
    v22 = [transferIneligibleItems count];
    *buf = 134218754;
    *v139 = v18;
    *&v139[8] = 2048;
    *v140 = v20;
    *&v140[8] = 2048;
    *&v140[10] = v22;
    v141 = 2080;
    v142 = "[TSTransferFlow _firstViewController:]";
    _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "transfer plans: %lu, store visit:%lu, ineligible: %lu @%s", buf, 0x2Au);
  }

  if (+[TSUtilities isPad])
  {
    if (+[TSUtilities isGreenTeaCapable])
    {
      v23 = +[TSUtilities inBuddy];
      if (v23)
      {
        v24 = _TSLogDomain(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *v139 = "[TSTransferFlow _firstViewController:]";
          _os_log_impl(&dword_262AA8000, v24, OS_LOG_TYPE_DEFAULT, "Skip for greentea ipad in buddy @%s", buf, 0xCu);
        }

        v25 = 0;
        goto LABEL_23;
      }
    }
  }

  transferItems2 = [controllerCopy transferItems];
  transferItems = self->_transferItems;
  self->_transferItems = transferItems2;

  if ([controllerCopy shouldShowTransferredPane])
  {
    v28 = [TSTransferredViewController alloc];
    v29 = [(NSArray *)self->_transferItems objectAtIndex:0];
    v25 = [(TSTransferredViewController *)v28 initWithTransferredPlan:v29];

    [(SSVisitStoreViewController *)v25 setDelegate:self];
    [(TSSIMSetupFlow *)self setTopViewController:v25];
    goto LABEL_23;
  }

  pendingInstallItems2 = [controllerCopy pendingInstallItems];
  pendingInstallItems = self->_pendingInstallItems;
  self->_pendingInstallItems = pendingInstallItems2;

  self->_isActivationPolicyMismatch = [controllerCopy isActivationPolicyMismatch];
  self->_isDualeSIMCapablityLoss = [controllerCopy isDualeSIMCapablityLoss];
  v32 = [filteredPlansForTransferableBucket count];
  plans2 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
  v34 = [plans2 count];
  carrierSetupItems = [controllerCopy carrierSetupItems];
  plans3 = [carrierSetupItems plans];
  v37 = [plans3 count];

  v38 = v34 + v32 + v37;
  if (!v38)
  {
    if (self->_isStandaloneProximityTransfer || ![filteredPlansForQRCodeBucket count])
    {
      if ([filteredPlansForSoftwareUpdateBucket count] || self->_isStandaloneProximityTransfer)
      {
        v50 = [TSNoPlanForTransferViewController alloc];
        transferPlans5 = [(TSTransferFlowModel *)self->_model transferPlans];
        v25 = [(TSNoPlanForTransferViewController *)v50 initWithPlans:transferPlans5 showOtherOptions:0 isStartOverNeeded:self->_isStandaloneProximityTransfer];

        goto LABEL_18;
      }

      v87 = +[TSUtilities isWifiAvailable];
      v88 = +[TSCellularPlanManagerCache sharedInstance];
      planItems = [v88 planItems];
      v90 = [planItems count];

      v91 = +[TSCoreTelephonyClientCache sharedInstance];
      usingBootstrapDataService = [v91 usingBootstrapDataService];

      v94 = _TSLogDomain(v93);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        *v139 = v87;
        *&v139[4] = 1024;
        *&v139[6] = v90 != 0;
        *v140 = 1024;
        *&v140[2] = usingBootstrapDataService;
        *&v140[6] = 2080;
        *&v140[8] = "[TSTransferFlow _firstViewController:]";
        _os_log_impl(&dword_262AA8000, v94, OS_LOG_TYPE_DEFAULT, "isWiFi:%d, hasPlans:%d, usingBootstrap:%d @%s", buf, 0x1Eu);
      }

      if (v87 || v90 != 0 || ((usingBootstrapDataService ^ 1) & 1) != 0)
      {
        goto LABEL_19;
      }

      v49 = [(TSTransferFlow *)self _createIntroViewControllerWithIneligiblePlans:0];
    }

    else
    {
      v49 = [(TSTransferFlow *)self _createIntroViewControllerWithIneligiblePlans:filteredPlansForQRCodeBucket];
    }

    v25 = v49;
    if (v49)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ([filteredPlansForQRCodeBucket count])
  {
    v39 = [TSMultiPlanIntermediateViewController alloc];
    pendingInstallItems3 = [controllerCopy pendingInstallItems];
    plans4 = [pendingInstallItems3 plans];
    transferPlans6 = [controllerCopy transferPlans];
    carrierSetupItems2 = [controllerCopy carrierSetupItems];
    plans5 = [carrierSetupItems2 plans];
    BYTE1(v113) = 1;
    LOBYTE(v113) = self->_isStandaloneProximityTransfer;
    v25 = [(TSMultiPlanIntermediateViewController *)v39 initWithPendingInstallPlans:plans4 transferPlans:transferPlans6 carrierSetupPlans:plans5 showQRCodeOption:self->_isPostMigrationFlow | (v113 == 0) showOtherOptions:0 isShowingFilteredPlans:0 isStandaloneProximityFlow:v113 isHiddenPlanSelectable:?];

    goto LABEL_18;
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (![filteredPlansForTransferableBucket count])
  {
    plans6 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
    if (![plans6 count] && !objc_msgSend(controllerCopy, "shouldShowCarrierSetupPane"))
    {
LABEL_51:

      goto LABEL_52;
    }

    v55 = +[TSUtilities inBuddy];

    if (v55)
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      plans7 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
      v57 = [plans7 countByEnumeratingWithState:&v130 objects:v137 count:16];
      if (v57)
      {
        v58 = *v131;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v131 != v58)
            {
              objc_enumerationMutation(plans7);
            }

            v60 = *(*(&v130 + 1) + 8 * i);
            [array addObject:v60];
            plan = [v60 plan];
            [array2 addObject:plan];
          }

          v57 = [plans7 countByEnumeratingWithState:&v130 objects:v137 count:16];
        }

        while (v57);
      }

      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      carrierSetupItems3 = [controllerCopy carrierSetupItems];
      plans6 = [carrierSetupItems3 plans];

      v63 = [plans6 countByEnumeratingWithState:&v126 objects:v136 count:16];
      if (v63)
      {
        v64 = *v127;
        do
        {
          for (j = 0; j != v63; ++j)
          {
            if (*v127 != v64)
            {
              objc_enumerationMutation(plans6);
            }

            v66 = *(*(&v126 + 1) + 8 * j);
            [array addObject:v66];
            plan2 = [v66 plan];
            [array2 addObject:plan2];
          }

          v63 = [plans6 countByEnumeratingWithState:&v126 objects:v136 count:16];
        }

        while (v63);
      }

      goto LABEL_51;
    }
  }

LABEL_52:
  if (+[TSUtilities isPad](TSUtilities, "isPad") || !+[TSUtilities inBuddy](TSUtilities, "inBuddy") || [array2 count] < 2)
  {
    v73 = [filteredPlansForNonInstallableBucket count];
    if ((v73 + v38 + [filteredPlansForSoftwareUpdateBucket count]) < 2)
    {
      pendingInstallItems4 = [controllerCopy pendingInstallItems];
      plans8 = [pendingInstallItems4 plans];
      v76 = [plans8 count] == 1;

      if (v76)
      {
        v77 = [TSSinglePlanTransferViewController alloc];
        pendingInstallItems5 = [controllerCopy pendingInstallItems];
        plans9 = [pendingInstallItems5 plans];
        v80 = [plans9 objectAtIndexedSubscript:0];
        v25 = [(TSSinglePlanTransferViewController *)v77 initWithPendingInstallPlan:v80];

        goto LABEL_66;
      }

      if ([filteredPlansForVisitStoreBucket count] != 1)
      {
        if ([filteredPlansForTransferableBucket count] == 1)
        {
          v95 = [(NSArray *)self->_transferItems objectAtIndexedSubscript:0];
          v96 = [v95 objectForKeyedSubscript:@"planItem"];

          v115 = [TSSinglePlanTransferViewController alloc];
          v97 = [(NSArray *)self->_transferItems objectAtIndexedSubscript:0];
          isPhysical = [v96 isPhysical];
          isTransferIneligiblePlan = [v96 isTransferIneligiblePlan];
          v100 = +[TSUtilities inBuddy];
          isStandaloneProximityTransfer = self->_isStandaloneProximityTransfer;
          phoneNumber = [self->_transferBackPlan phoneNumber];
          LOBYTE(v114) = 0;
          LOBYTE(v113) = isStandaloneProximityTransfer;
          v25 = [(TSSinglePlanTransferViewController *)v115 initWithTransferPlan:v97 isPhysical:isPhysical isIneligible:isTransferIneligiblePlan inBuddy:v100 confirmCellularPlanTransfer:0 showOtherOptions:0 isStandaloneProximityFlow:v113 transferBackPhoneNumber:phoneNumber isShowingFilteredPlans:v114];
        }

        else
        {
          carrierSetupItems4 = [controllerCopy carrierSetupItems];
          plans10 = [carrierSetupItems4 plans];
          v105 = [plans10 count] == 1;

          if (v105)
          {
            v106 = [TSBuddyMLViewController alloc];
            carrierSetupItems5 = [controllerCopy carrierSetupItems];
            plans11 = [carrierSetupItems5 plans];
            v109 = [plans11 objectAtIndexedSubscript:0];
            plan3 = [v109 plan];
            websheetUrl = [controllerCopy websheetUrl];
            postdata = [controllerCopy postdata];
            v25 = [(TSBuddyMLViewController *)v106 initWithCTPlan:plan3 websheetURL:websheetUrl postdata:postdata];

            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __39__TSTransferFlow__firstViewController___block_invoke_218;
            block[3] = &unk_279B44578;
            block[4] = self;
            dispatch_async(MEMORY[0x277D85CD0], block);
          }

          else
          {
            v25 = 0;
          }
        }

        goto LABEL_66;
      }
    }

    else if ([filteredPlansForVisitStoreBucket count] != v38)
    {
      v81 = [TSMultiPlanIntermediateViewController alloc];
      pendingInstallItems6 = [controllerCopy pendingInstallItems];
      plans12 = [pendingInstallItems6 plans];
      transferPlans7 = [controllerCopy transferPlans];
      carrierSetupItems6 = [controllerCopy carrierSetupItems];
      plans13 = [carrierSetupItems6 plans];
      BYTE1(v113) = 1;
      LOBYTE(v113) = self->_isStandaloneProximityTransfer;
      v25 = [(TSMultiPlanIntermediateViewController *)v81 initWithPendingInstallPlans:plans12 transferPlans:transferPlans7 carrierSetupPlans:plans13 showQRCodeOption:self->_isPostMigrationFlow | (v113 == 0) showOtherOptions:0 isShowingFilteredPlans:0 isStandaloneProximityFlow:v113 isHiddenPlanSelectable:?];

      goto LABEL_66;
    }

    v25 = [[SSVisitStoreViewController alloc] initWithPlans:filteredPlansForVisitStoreBucket showOtherOption:0];
    goto LABEL_66;
  }

  v68 = [TSSubFlowViewController alloc];
  v134[0] = @"FlowTypeKey";
  v134[1] = @"Plans";
  v135[0] = &unk_287583BB0;
  v135[1] = array;
  v134[2] = @"ConfirmCellularPlanTransfer";
  v135[2] = MEMORY[0x277CBEC28];
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:3];
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  v25 = [(TSSubFlowViewController *)v68 initWithOptions:v69 navigationController:navigationController delegate:self];

  objc_initWeak(buf, self);
  ctClient = self->_ctClient;
  v72 = [objc_alloc(MEMORY[0x277CC36F0]) initWithPlans:array2];
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = __39__TSTransferFlow__firstViewController___block_invoke;
  v124[3] = &unk_279B44828;
  objc_copyWeak(&v125, buf);
  [(CoreTelephonyClient *)ctClient installMultiplePlans:v72 completionHandler:v124];

  objc_destroyWeak(&v125);
  objc_destroyWeak(buf);
LABEL_66:

LABEL_18:
  if (!v25)
  {
LABEL_19:
    v45 = self->_ctClient;
    self->_ctClient = 0;

    v25 = 0;
  }

LABEL_20:
  v46 = _TSLogDomain([(TSTransferFlow *)self _saveSimsetupD2dInfo:controllerCopy]);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = objc_opt_class();
    *buf = 138412546;
    *v139 = v47;
    *&v139[8] = 2080;
    *v140 = "[TSTransferFlow _firstViewController:]";
    _os_log_impl(&dword_262AA8000, v46, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", buf, 0x16u);
  }

  [(TSSIMSetupFlow *)self setTopViewController:v25];
LABEL_23:

  return v25;
}

void __39__TSTransferFlow__firstViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = _TSLogDomain(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __39__TSTransferFlow__firstViewController___block_invoke_cold_1();
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"transfer.failed" object:v3];
  }
}

- (id)_createIntroViewControllerWithIneligiblePlans:(id)plans
{
  v3 = self->_session == 0;
  plansCopy = plans;
  v5 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:v3 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:plansCopy];

  return v5;
}

- (void)firstViewController:(id)controller
{
  v4 = MEMORY[0x2667315D0](controller, a2);
  firstViewControllerCallback = self->_firstViewControllerCallback;
  self->_firstViewControllerCallback = v4;

  if (self->_isAvailableOptionsQueryCompleted)
  {

    [(TSTransferFlow *)self _maybeClearFirstViewControllerCallback];
  }
}

- (void)_maybeClearFirstViewControllerCallback
{
  if (self->_firstViewControllerCallback)
  {
    model = [(TSTransferFlow *)self model];
    v4 = [(TSTransferFlow *)self _firstViewController:model];

    [(TSTransferFlow *)self _maybePresentFirstViewController:v4 firstViewControllerCallback:self->_firstViewControllerCallback];
  }
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
    v17[2] = __79__TSTransferFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke;
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
      [(TSTransferFlow *)v9 _maybePresentFirstViewController:v10 firstViewControllerCallback:v11, v12, v13, v14, v15, v16];
    }

    v8[2](v8, 0);
  }
}

void __79__TSTransferFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke(uint64_t a1, void *a2)
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
        v25 = "[TSTransferFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
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
        v29 = "[TSTransferFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
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
          __79__TSTransferFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
        }

        (*(*(a1 + 40) + 16))();
      }
    }
  }
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
    objc_initWeak(&location, self);
    v9 = +[TSCellularPlanManagerCache sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__TSTransferFlow_startOverWithFirstViewController___block_invoke;
    v10[3] = &unk_279B44CD0;
    objc_copyWeak(&v12, &location);
    v11 = controllerCopy;
    [v9 hasInstallingPlanOrUserPlan:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __51__TSTransferFlow_startOverWithFirstViewController___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (v3 = objc_loadWeakRetained((a1 + 40)), v4 = [v3 isStandaloneProximityTransfer], v3, v4))
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained model];
    [v7 clearCache];

    v18 = objc_loadWeakRetained((a1 + 40));
    v8 = [v18 model];
    v17 = objc_loadWeakRetained((a1 + 40));
    v9 = [v17 session];
    v16 = objc_loadWeakRetained((a1 + 40));
    v19 = [v16 hasTransferablePlan];
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 sourceOSVersion];
    v12 = objc_loadWeakRetained((a1 + 40));
    v13 = [v12 isPostMigrationFlow];
    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = [v14 isUsingPreSharedKey];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __51__TSTransferFlow_startOverWithFirstViewController___block_invoke_2;
    v20[3] = &unk_279B44CD0;
    objc_copyWeak(&v22, (a1 + 40));
    v21 = *(a1 + 32);
    [v8 arePlansAvailable:v9 transferablePlanOnSource:v19 bootstrapOnly:0 sourceOSVersion:v11 isPostMigrationFlow:v13 isUsingPreSharedKey:v15 completion:v20];

    objc_destroyWeak(&v22);
  }
}

void __51__TSTransferFlow_startOverWithFirstViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__TSTransferFlow_startOverWithFirstViewController___block_invoke_3;
  v3[3] = &unk_279B44C30;
  v4 = *(a1 + 32);
  [WeakRetained firstViewController:v3];
}

- (id)nextViewControllerFrom:(id)from
{
  v133[10] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transferPlans = [(TSTransferFlowModel *)self->_model transferPlans];
    v6 = [transferPlans count];

    if (v6 == 1)
    {
      v7 = [(NSArray *)self->_transferItems objectAtIndexedSubscript:0];
      transferPlans2 = [v7 objectForKeyedSubscript:@"planItem"];

      v9 = [TSSinglePlanTransferViewController alloc];
      selectedPlan = [(NSArray *)self->_transferItems objectAtIndexedSubscript:0];
      isPhysical = [transferPlans2 isPhysical];
      isTransferIneligiblePlan = [transferPlans2 isTransferIneligiblePlan];
      v13 = +[TSUtilities inBuddy];
      isStandaloneProximityTransfer = self->_isStandaloneProximityTransfer;
      phoneNumber = [self->_transferBackPlan phoneNumber];
      LOBYTE(v104) = 0;
      LOBYTE(v103) = isStandaloneProximityTransfer;
      v16 = [(TSSinglePlanTransferViewController *)v9 initWithTransferPlan:selectedPlan isPhysical:isPhysical isIneligible:isTransferIneligiblePlan inBuddy:v13 confirmCellularPlanTransfer:0 showOtherOptions:0 isStandaloneProximityFlow:v103 transferBackPhoneNumber:phoneNumber isShowingFilteredPlans:v104];

      goto LABEL_32;
    }

    v26 = [TSTransferListViewController alloc];
    transferPlans2 = [(TSTransferFlowModel *)self->_model transferPlans];
    isActivationPolicyMismatch = self->_isActivationPolicyMismatch;
    isDualeSIMCapablityLoss = self->_isDualeSIMCapablityLoss;
    pendingInstallItems = [(TSTransferFlowModel *)self->_model pendingInstallItems];
    carrierSetupItems = [(TSTransferFlowModel *)self->_model carrierSetupItems];
    v31 = self->_isStandaloneProximityTransfer;
    BYTE2(v103) = ![(TSTransferFlowModel *)self->_model isFlexPolicyOn];
    BYTE1(v103) = v31;
    LOBYTE(v103) = 0;
    v16 = [TSTransferListViewController initWithTransferPlans:v26 confirmCellularPlanTransfer:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" isActivationPolicyMismatch:transferPlans2 isDualeSIMCapabilityLoss:0 pendingInstallItems:isActivationPolicyMismatch carrierSetupItems:isDualeSIMCapablityLoss showOtherOptions:pendingInstallItems isStandaloneProximityFlow:carrierSetupItems allowsMultiSelection:v103];

LABEL_33:
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transferPlans2 = fromCopy;
    selectedPlan = [transferPlans2 selectedPlan];
    if (![(TSTransferFlowModel *)self->_model shouldShowCarrierSetupPane])
    {
      if (!selectedPlan || [selectedPlan transferCapability] != 8)
      {
        if ([transferPlans2 isOtherButtonTapped])
        {
          v16 = [(TSTransferFlow *)self _createIntroViewControllerWithIneligiblePlans:0];
          goto LABEL_32;
        }

        if (([transferPlans2 isSkipButtonTapped] & 1) == 0)
        {
          v61 = [TSSubFlowViewController alloc];
          v132[0] = @"FlowTypeKey";
          v132[1] = @"SkipActivatingPane";
          v62 = MEMORY[0x277CBEC38];
          v133[0] = &unk_287583BB0;
          v133[1] = MEMORY[0x277CBEC38];
          v132[2] = @"DelayStartActivatingTimer";
          installingTransferPlan = [transferPlans2 installingTransferPlan];
          v64 = &unk_287583BE0;
          if (installingTransferPlan)
          {
            v64 = &unk_287583BC8;
          }

          v133[2] = v64;
          v132[3] = @"TransferBackPlan";
          transferBackPlan = self->_transferBackPlan;
          v112 = transferBackPlan;
          if (!transferBackPlan)
          {
            transferBackPlan = [MEMORY[0x277CBEB68] null];
          }

          v105 = transferBackPlan;
          v133[3] = transferBackPlan;
          v132[4] = @"PlanSetupTypeKey";
          installingTransferPlan2 = [transferPlans2 installingTransferPlan];
          v67 = &unk_287583C10;
          if (installingTransferPlan2)
          {
            v67 = &unk_287583BF8;
          }

          v133[4] = v67;
          v132[5] = @"CarrierNameKey";
          carrierNameForSelectedItem = [transferPlans2 carrierNameForSelectedItem];
          if (carrierNameForSelectedItem)
          {
            [transferPlans2 carrierNameForSelectedItem];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
          }

          v109 = v117 = selectedPlan;
          v133[5] = v109;
          v133[6] = v62;
          v132[6] = @"MaybeShowConfirmationCodePaneKey";
          v132[7] = @"Plan";
          selectedPlan2 = [transferPlans2 selectedPlan];
          v133[7] = selectedPlan2;
          v132[8] = @"MessageSessionKey";
          session = self->_session;
          null = session;
          if (!session)
          {
            null = [MEMORY[0x277CBEB68] null];
          }

          v133[8] = null;
          v132[9] = @"SourceOSVersion";
          sourceOSVersion = self->_sourceOSVersion;
          null2 = sourceOSVersion;
          if (!sourceOSVersion)
          {
            null2 = [MEMORY[0x277CBEB68] null];
          }

          v133[9] = null2;
          v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:10];
          navigationController = [(TSSIMSetupFlow *)self navigationController];
          v16 = [(TSSubFlowViewController *)v61 initWithOptions:v89 navigationController:navigationController delegate:self];

          if (!sourceOSVersion)
          {
          }

          if (!session)
          {
          }

          selectedPlan = v117;
          if (!v112)
          {
          }

          goto LABEL_32;
        }
      }

      v16 = 0;
      goto LABEL_32;
    }

    v17 = [TSBuddyMLViewController alloc];
    [(TSTransferFlowModel *)self->_model carrierSetupItems];
    v114 = transferPlans2;
    v18 = fromCopy;
    v20 = v19 = selectedPlan;
    plans = [v20 plans];
    v22 = [plans objectAtIndexedSubscript:0];
    plan = [v22 plan];
    websheetUrl = [(TSTransferFlowModel *)self->_model websheetUrl];
    postdata = [(TSTransferFlowModel *)self->_model postdata];
    v16 = [(TSBuddyMLViewController *)v17 initWithCTPlan:plan websheetURL:websheetUrl postdata:postdata];

    selectedPlan = v19;
    fromCopy = v18;
    transferPlans2 = v114;
LABEL_32:

    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transferPlans2 = fromCopy;
    if ([transferPlans2 isTransferListCellTapped])
    {
      v115 = transferPlans2;
      transferPlans3 = [(TSTransferFlowModel *)self->_model transferPlans];
      filteredPlansForTransferableBucket = [transferPlans3 filteredPlansForTransferableBucket];

      filteredPlansForVisitStoreBucket = [filteredPlansForTransferableBucket filteredPlansForVisitStoreBucket];
      transferPlans4 = [(TSTransferFlowModel *)self->_model transferPlans];
      filteredPlansForSoftwareUpdateBucket = [transferPlans4 filteredPlansForSoftwareUpdateBucket];

      v111 = filteredPlansForTransferableBucket;
      v37 = [filteredPlansForTransferableBucket count];
      plans2 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
      v39 = [plans2 count] + v37;
      carrierSetupItems2 = [(TSTransferFlowModel *)self->_model carrierSetupItems];
      plans3 = [carrierSetupItems2 plans];
      v42 = [plans3 count];

      if (v39 + v42)
      {
        if (![filteredPlansForVisitStoreBucket count])
        {
          v107 = [TSTransferListViewController alloc];
          transferPlans5 = [(TSTransferFlowModel *)self->_model transferPlans];
          v106 = self->_isActivationPolicyMismatch;
          v76 = self->_isDualeSIMCapablityLoss;
          pendingInstallItems = self->_pendingInstallItems;
          carrierSetupItems3 = [(TSTransferFlowModel *)self->_model carrierSetupItems];
          v79 = self->_isStandaloneProximityTransfer;
          BYTE2(v103) = ![(TSTransferFlowModel *)self->_model isFlexPolicyOn];
          BYTE1(v103) = v79;
          LOBYTE(v103) = 0;
          v16 = [TSTransferListViewController initWithTransferPlans:v107 confirmCellularPlanTransfer:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" isActivationPolicyMismatch:transferPlans5 isDualeSIMCapabilityLoss:0 pendingInstallItems:v106 carrierSetupItems:v76 showOtherOptions:pendingInstallItems isStandaloneProximityFlow:carrierSetupItems3 allowsMultiSelection:v103];

          goto LABEL_69;
        }

        v16 = [[SSVisitStoreViewController alloc] initWithPlans:filteredPlansForVisitStoreBucket showOtherOption:0];
      }

      else
      {
        if ([filteredPlansForSoftwareUpdateBucket count])
        {
          v43 = [TSNoPlanForTransferViewController alloc];
          transferPlans5 = [(TSTransferFlowModel *)self->_model transferPlans];
          v16 = [(TSNoPlanForTransferViewController *)v43 initWithPlans:transferPlans5 showOtherOptions:0 isStartOverNeeded:self->_isStandaloneProximityTransfer];
LABEL_69:

          goto LABEL_70;
        }

        v16 = 0;
      }

LABEL_70:
      transferPlans2 = v115;

      v80 = v111;
LABEL_71:

      goto LABEL_33;
    }

    if ([transferPlans2 isScanButtonTapped])
    {
      transferIneligibleItems = [(TSTransferFlowModel *)self->_model transferIneligibleItems];
      filteredPlansForQRCodeBucket = [transferIneligibleItems filteredPlansForQRCodeBucket];

      v130[0] = @"FlowTypeKey";
      v130[1] = @"IsFirstViewKey";
      v131[0] = &unk_287583C28;
      v131[1] = MEMORY[0x277CBEC28];
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:2];
      plans4 = [v47 mutableCopy];

      if ([filteredPlansForQRCodeBucket count])
      {
        [plans4 setObject:filteredPlansForQRCodeBucket forKeyedSubscript:@"Plans"];
      }

      v49 = [TSSubFlowViewController alloc];
      goto LABEL_24;
    }

    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transferPlans2 = fromCopy;
    if ([transferPlans2 isOtherButtonTapped])
    {
      v16 = [(TSTransferFlow *)self _createIntroViewControllerWithIneligiblePlans:0];
      goto LABEL_33;
    }

    if (([transferPlans2 isCarrierDirectAuthItemSelected] & 1) == 0)
    {
      if (_os_feature_enabled_impl() && ([transferPlans2 selectedPlans], v68 = objc_claimAutoreleasedReturnValue(), v68, v68))
      {
        v69 = [TSSubFlowViewController alloc];
        v129[0] = &unk_287583BB0;
        v128[0] = @"FlowTypeKey";
        v128[1] = @"Plans";
        selectedPlans = [transferPlans2 selectedPlans];
        v129[1] = selectedPlans;
        v129[2] = MEMORY[0x277CBEC28];
        v128[2] = @"ConfirmCellularPlanTransfer";
        v128[3] = @"MessageSessionKey";
        v70 = self->_session;
        null3 = v70;
        if (!v70)
        {
          null3 = [MEMORY[0x277CBEB68] null];
        }

        v129[3] = null3;
        v128[4] = @"SourceOSVersion";
        v72 = self->_sourceOSVersion;
        null4 = v72;
        if (!v72)
        {
          null4 = [MEMORY[0x277CBEB68] null];
        }

        v129[4] = null4;
        v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:5];
        navigationController2 = [(TSSIMSetupFlow *)self navigationController];
        v16 = [(TSSubFlowViewController *)v69 initWithOptions:v74 navigationController:navigationController2 delegate:self];

        if (!v72)
        {
        }

        if (!v70)
        {
        }
      }

      else
      {
        if ([transferPlans2 isCarrierSetupItemSelected])
        {
          v81 = [TSBuddyMLViewController alloc];
          filteredPlansForQRCodeBucket = [(TSTransferFlowModel *)self->_model carrierSetupItems];
          plans4 = [filteredPlansForQRCodeBucket plans];
          navigationController5 = [plans4 objectAtIndexedSubscript:0];
          plan2 = [navigationController5 plan];
          websheetUrl2 = [(TSTransferFlowModel *)self->_model websheetUrl];
          postdata2 = [(TSTransferFlowModel *)self->_model postdata];
          v16 = [(TSBuddyMLViewController *)v81 initWithCTPlan:plan2 websheetURL:websheetUrl2 postdata:postdata2];

          goto LABEL_25;
        }

        v91 = [TSSubFlowViewController alloc];
        v126[0] = @"FlowTypeKey";
        v126[1] = @"SkipActivatingPane";
        v92 = MEMORY[0x277CBEC38];
        v127[0] = &unk_287583BB0;
        v127[1] = MEMORY[0x277CBEC38];
        v126[2] = @"DelayStartActivatingTimer";
        installingTransferPlan3 = [transferPlans2 installingTransferPlan];
        v94 = &unk_287583BE0;
        if (installingTransferPlan3)
        {
          v94 = &unk_287583BC8;
        }

        v127[2] = v94;
        v126[3] = @"PlanSetupTypeKey";
        installingTransferPlan4 = [transferPlans2 installingTransferPlan];
        v96 = &unk_287583C10;
        if (installingTransferPlan4)
        {
          v96 = &unk_287583BF8;
        }

        v127[3] = v96;
        v126[4] = @"CarrierNameKey";
        selectedPlans = [transferPlans2 carrierNameForSelectedItem];
        if (selectedPlans)
        {
          [transferPlans2 carrierNameForSelectedItem];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v113 = ;
        v127[4] = v113;
        v127[5] = v92;
        v126[5] = @"MaybeShowConfirmationCodePaneKey";
        v126[6] = @"MessageSessionKey";
        v97 = self->_session;
        null5 = v97;
        if (!v97)
        {
          null5 = [MEMORY[0x277CBEB68] null];
        }

        v127[6] = null5;
        v126[7] = @"SourceOSVersion";
        v99 = self->_sourceOSVersion;
        null6 = v99;
        if (!v99)
        {
          null6 = [MEMORY[0x277CBEB68] null];
        }

        v127[7] = null6;
        v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:8];
        navigationController3 = [(TSSIMSetupFlow *)self navigationController];
        v16 = [(TSSubFlowViewController *)v91 initWithOptions:v101 navigationController:navigationController3 delegate:self];

        if (!v99)
        {
        }

        if (!v97)
        {
        }
      }

      v80 = selectedPlans;
      goto LABEL_71;
    }

    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = [TSSubFlowViewController alloc];
    v124[0] = @"FlowTypeKey";
    v124[1] = @"SkipActivatingPane";
    v125[0] = &unk_287583BB0;
    v125[1] = MEMORY[0x277CBEC28];
    v124[2] = @"PlanSetupTypeKey";
    v125[2] = &unk_287583C40;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:3];
    navigationController4 = [(TSSIMSetupFlow *)self navigationController];
    v16 = [(TSSubFlowViewController *)v51 initWithOptions:v52 navigationController:navigationController4 delegate:self];

    if (!self->_isSourceProxCardVisible)
    {
      [(TSTransferFlow *)self _updateSourceProxCardState:1];
    }

LABEL_34:
    if (v16)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transferPlans2 = fromCopy;
    if ([transferPlans2 isScanButtonTapped])
    {
      v122[0] = @"FlowTypeKey";
      v122[1] = @"IsFirstViewKey";
      v123[0] = &unk_287583C28;
      v123[1] = MEMORY[0x277CBEC28];
      v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];
      filteredPlansForQRCodeBucket = [v56 mutableCopy];

      transferPlans6 = [(TSTransferFlowModel *)self->_model transferPlans];
      v58 = [transferPlans6 count];

      if (v58)
      {
        transferPlans7 = [(TSTransferFlowModel *)self->_model transferPlans];
        [filteredPlansForQRCodeBucket setObject:transferPlans7 forKeyedSubscript:@"Plans"];
      }

      v60 = [TSSubFlowViewController alloc];
    }

    else
    {
      if ([transferPlans2 isProximityTransferButtonTapped])
      {
        v49 = [TSSubFlowViewController alloc];
        v120[0] = @"FlowTypeKey";
        filteredPlansForQRCodeBucket = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
        v120[1] = @"IsClientKey";
        v121[0] = filteredPlansForQRCodeBucket;
        v121[1] = MEMORY[0x277CBEC28];
        plans4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];
LABEL_24:
        navigationController5 = [(TSSIMSetupFlow *)self navigationController];
        v16 = [(TSSubFlowViewController *)v49 initWithOptions:plans4 navigationController:navigationController5 delegate:self];
LABEL_25:

LABEL_26:
        goto LABEL_33;
      }

      if (+[TSUtilities inBuddy](TSUtilities, "inBuddy") || ![transferPlans2 isCrossPlatformButtonTapped])
      {
LABEL_42:
        v16 = 0;
        goto LABEL_33;
      }

      v60 = [TSSubFlowViewController alloc];
      v118[0] = @"FlowTypeKey";
      v118[1] = @"IsSourceKey";
      v119[0] = &unk_287583C58;
      v119[1] = MEMORY[0x277CBEC28];
      filteredPlansForQRCodeBucket = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:2];
    }

    plans4 = [(TSSIMSetupFlow *)self navigationController];
    v16 = [(TSSubFlowViewController *)v60 initWithOptions:filteredPlansForQRCodeBucket navigationController:plans4 delegate:self];
    goto LABEL_26;
  }

LABEL_35:
  ctClient = self->_ctClient;
  self->_ctClient = 0;

  v16 = 0;
LABEL_36:

  return v16;
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
    v14.super_class = TSTransferFlow;
    [(TSSIMSetupFlow *)&v14 viewControllerDidComplete:completeCopy];
    goto LABEL_7;
  }

  navigationController = [v5 navigationController];
  viewControllers = [navigationController viewControllers];
  v11 = [viewControllers objectAtIndex:v8 - 1];

  navigationController2 = [v5 navigationController];
  v13 = [navigationController2 popToViewController:v11 animated:1];

  v15.receiver = self;
  v15.super_class = TSTransferFlow;
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

- (void)transferEventUpdate:(id)update
{
  v11 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = _TSLogDomain(updateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = updateCopy;
    v9 = 2080;
    v10 = "[TSTransferFlow transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "transfer event : %@ @%s", &v7, 0x16u);
  }

  v6 = [updateCopy objectForKey:@"UpdateProxCardVisibility"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TSTransferFlow _updateSourceProxCardState:](self, "_updateSourceProxCardState:", [v6 BOOLValue]);
    }
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

  v6 = +[TSCoreTelephonyClientCache sharedInstance];
  v19 = objc_alloc(MEMORY[0x277CC3720]);
  transferItems = [(TSTransferFlowModel *)self->_model transferItems];
  v17 = [TSUtilities transferablePlans:transferItems];
  pendingInstallItems = [(TSTransferFlowModel *)self->_model pendingInstallItems];
  plans = [pendingInstallItems plans];
  v16 = [plans count];
  transferItems2 = [(TSTransferFlowModel *)self->_model transferItems];
  v15 = [TSUtilities odaPlans:transferItems2];
  transferItems3 = [(TSTransferFlowModel *)self->_model transferItems];
  v7 = [TSUtilities transferablePlanCarriers:transferItems3];
  pendingInstallItems2 = [(TSTransferFlowModel *)self->_model pendingInstallItems];
  plans2 = [pendingInstallItems2 plans];
  v10 = [TSUtilities alsPlanCarriers:plans2];
  transferItems4 = [(TSTransferFlowModel *)self->_model transferItems];
  v12 = [TSUtilities odaPlanCarriers:transferItems4];
  transferItems5 = [(TSTransferFlowModel *)self->_model transferItems];
  v14 = [v19 initWithInBuddy:0 transferablePlans:v17 selectedTransferablePlans:0 alsPlans:v16 selectedAlsPlans:0 odaPlans:v15 transferPlanCarriers:v7 selectedTransferPlanCarriers:&stru_28753DF48 alsPlanCarriers:v10 selectedAlsPlanCarriers:&stru_28753DF48 odaPlanCarriers:v12 selectedOdaPlanCarriers:&stru_28753DF48 sourceDevicesCount:+[TSUtilities sourceDevicesCount:](TSUtilities selectedSourceDevicesCount:{"sourceDevicesCount:", transferItems5), 0}];
  [v6 submitSimSetupUsage:v14];

LABEL_5:
  if (!self->_isSourceProxCardVisible)
  {
    [(TSTransferFlow *)self _updateSourceProxCardState:1];
  }

  v24.receiver = self;
  v24.super_class = TSTransferFlow;
  [(TSSIMSetupFlow *)&v24 userDidTapCancel];
}

- (void)_updateSourceProxCardState:(BOOL)state
{
  stateCopy = state;
  v16 = *MEMORY[0x277D85DE8];
  rootFlow = [(TSSIMSetupFlow *)self rootFlow];
  delegate = [rootFlow delegate];

  v8 = _TSLogDomain(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = delegate;
    v14 = 2080;
    v15 = "[TSTransferFlow _updateSourceProxCardState:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "root flow delegate: %@ @%s", &v12, 0x16u);
  }

  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    v10 = _TSLogDomain(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"hiding";
      if (stateCopy)
      {
        v11 = @"showing";
      }

      v12 = 138412546;
      v13 = v11;
      v14 = 2080;
      v15 = "[TSTransferFlow _updateSourceProxCardState:]";
      _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "%@ prox card on source device @%s", &v12, 0x16u);
    }

    self->_isSourceProxCardVisible = stateCopy;
    [(__CFString *)delegate updateSourceProxCardState:stateCopy];
  }
}

- (void)_saveSimsetupD2dInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy isProximityFlow] && (objc_msgSend(infoCopy, "isStandaloneProximityTransfer") & 1) == 0)
  {
    simsetupD2dInfo = [(TSTransferFlowModel *)self->_model simsetupD2dInfo];
    [simsetupD2dInfo setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"d2dDone"];
    v5 = +[TSCoreTelephonyClientCache sharedInstance];
    simsetupD2dInfo2 = [(TSTransferFlowModel *)self->_model simsetupD2dInfo];
    [v5 saveSimSetupInfo:@"simsetupD2dInfo" info:simsetupD2dInfo2];
  }
}

- (void)firstViewController
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSTransferFlow firstViewController]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]unimplemented, please use async version @%s", &v1, 0xCu);
}

void __39__TSTransferFlow__firstViewController___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "[TSTransferFlow _firstViewController:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]installMultiplePlans failed with error: %@ @%s", v1, 0x16u);
}

- (void)_maybePresentFirstViewController:(uint64_t)a3 firstViewControllerCallback:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferFlow _maybePresentFirstViewController:firstViewControllerCallback:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]nothing to present @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __79__TSTransferFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]nothing to present!!! @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end