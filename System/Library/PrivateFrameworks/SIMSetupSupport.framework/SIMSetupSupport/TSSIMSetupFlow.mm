@interface TSSIMSetupFlow
+ (TSSIMSetupFlow)flowWithOptions:(id)options;
+ (id)_flowWithOptions:(id)options;
+ (id)createTSRemotePlanWebsheetContext:(id)context;
+ (void)needsToRun:(id)run;
+ (void)needsToRunUsingMessageSession:(id)session completion:(id)completion;
+ (void)needsToRunUsingMessageSession:(id)session transferablePlanOnSource:(BOOL)source completion:(id)completion;
- (BOOL)_needCustomizeBackAction:(id)action;
- (BOOL)_startOver:(id)over;
- (BOOL)handleStartOverWithEntryPoint:(id)point navigationController:(id)controller completion:(id)completion;
- (TSSIMSetupDelegate)delegate;
- (TSSIMSetupFlow)init;
- (TSSIMSetupFlow)parentFlow;
- (TSSetupFlowItem)nextViewController;
- (TSSetupFlowItem)topViewController;
- (UINavigationController)navigationController;
- (UIViewController)dismissingViewController;
- (id)firstViewControllerForDisplay;
- (id)rootFlow;
- (id)rootViewController;
- (void)_maybeClearSubFlow;
- (void)_maybeClearSubFlowViewController:(id)controller;
- (void)_maybeSetNavigationController:(id)controller;
- (void)_notifyFlowCompletion:(unint64_t)completion;
- (void)_popAllSIMSetupFlowViewControllers:(id)controllers;
- (void)_pushStartOverViewController:(id)controller from:(id)from;
- (void)addSubFlowViewController:(id)controller;
- (void)appBackgrounded;
- (void)appForegrounded;
- (void)attemptFailed;
- (void)cancelNextPane;
- (void)firstViewController:(id)controller;
- (void)maybePrepareNextDisplayViewController:(id)controller completion:(id)completion;
- (void)maybeRegisterDismissHandler:(id)handler;
- (void)navigateToNextPaneFrom:(id)from navigationController:(id)controller;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)receivedResponse;
- (void)receivedResponseWithVC:(id)c;
- (void)restartWith:(id)with;
- (void)rootViewController;
- (void)setIdleTimerDisabled:(BOOL)disabled;
- (void)setTopViewController:(id)controller;
- (void)showFirstViewControllerWithHostController:(id)controller completion:(id)completion;
- (void)showLoadFailureAlert:(id)alert error:(id)error;
- (void)startOverWithFirstViewController:(id)controller;
- (void)userDidTapCancel;
- (void)viewControllerDidComplete:(id)complete;
- (void)waitForResponse:(id)response;
@end

@implementation TSSIMSetupFlow

- (void)setTopViewController:(id)controller
{
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if ([controllerCopy conformsToProtocol:&unk_28758ABD0])
  {
    [controllerCopy setDelegate:self];
  }

  objc_storeWeak(&self->_topViewController, controllerCopy);
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  if (WeakRetained)
  {
    v6 = 0;
  }

  else
  {
    v6 = controllerCopy;
  }

  firstViewControllerInstance = self->_firstViewControllerInstance;
  self->_firstViewControllerInstance = v6;

  v9 = _TSLogDomain(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = controllerCopy;
    v16 = 2112;
    selfCopy = self;
    v18 = 2080;
    v19 = "[TSSIMSetupFlow setTopViewController:]";
    _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "inject back button action for : %@, handler: %@ @%s", &v14, 0x20u);
  }

  if (_os_feature_enabled_impl())
  {
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"BACK" value:&stru_28753DF48 table:@"Localizable"];
  }

  v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v10 style:0 target:self action:sel_restartWith_];
  navigationItem = [controllerCopy navigationItem];
  [navigationItem setBackBarButtonItem:v12];
}

- (TSSetupFlowItem)topViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_topViewController);

  return WeakRetained;
}

+ (void)needsToRun:(id)run
{
  if (run)
  {
    (*(run + 2))(run, 0);
  }
}

+ (void)needsToRunUsingMessageSession:(id)session completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

+ (void)needsToRunUsingMessageSession:(id)session transferablePlanOnSource:(BOOL)source completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

+ (id)createTSRemotePlanWebsheetContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc_init(TSRemotePlanWebsheetContext);
  v5 = [contextCopy objectForKeyedSubscript:@"CarrierNameKey"];
  [(TSRemotePlanWebsheetContext *)v4 setCarrierName:v5];

  v6 = [contextCopy objectForKeyedSubscript:@"SubscriptionContextKey"];
  [(TSRemotePlanWebsheetContext *)v4 setSubscriptionContext:v6];

  v7 = [contextCopy valueForKey:@"FlowTypeKey"];
  -[TSRemotePlanWebsheetContext setFlowType:](v4, "setFlowType:", [v7 intValue]);

  v8 = [contextCopy objectForKeyedSubscript:@"Iccid"];
  if (v8)
  {
    v9 = [contextCopy objectForKeyedSubscript:@"Iccid"];
    [(TSRemotePlanWebsheetContext *)v4 setIccid:v9];
  }

  else
  {
    [(TSRemotePlanWebsheetContext *)v4 setIccid:&stru_28753DF48];
  }

  [(TSRemotePlanWebsheetContext *)v4 setUseLiveID:0];
  v10 = [contextCopy objectForKeyedSubscript:@"WebsheetURLKey"];
  [(TSRemotePlanWebsheetContext *)v4 setUrl:v10];

  v11 = [contextCopy objectForKeyedSubscript:@"WebsheetPostdataKey"];
  [(TSRemotePlanWebsheetContext *)v4 setPostdata:v11];

  v12 = [contextCopy valueForKey:@"LiveIdEnabledKey"];
  v13 = v12;
  if (v12)
  {
    -[TSRemotePlanWebsheetContext setUseLiveID:](v4, "setUseLiveID:", [v12 BOOLValue]);
  }

  return v4;
}

+ (TSSIMSetupFlow)flowWithOptions:(id)options
{
  v11 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = +[TSUtilities hasCellularBaseband];
  if (v4)
  {
    v5 = [TSSIMSetupFlow _flowWithOptions:optionsCopy];
    if (v5)
    {
      v6 = [optionsCopy valueForKey:@"FlowTypeKey"];
      [v5 setFlowType:{objc_msgSend(v6, "intValue")}];
    }
  }

  else
  {
    v7 = _TSLogDomain(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "+[TSSIMSetupFlow flowWithOptions:]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "no cellular support!!! @%s", &v9, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)_flowWithOptions:(id)options
{
  v156 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = _TSLogDomain(optionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v153 = optionsCopy;
    v154 = 2080;
    v155 = "+[TSSIMSetupFlow _flowWithOptions:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "%@ @%s", buf, 0x16u);
  }

  v6 = [optionsCopy valueForKey:@"FlowTypeKey"];
  intValue = [v6 intValue];

  v8 = 0;
  switch(intValue)
  {
    case 1:
      v11 = [optionsCopy valueForKey:@"ConfirmationCodeRequiredKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v11 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v12 = [[TSUserResponseFlow alloc] initWithConfirmationCodeRequired:bOOLValue];
      goto LABEL_189;
    case 2:
      v32 = [optionsCopy objectForKeyedSubscript:@"Plan"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v34 = [TSWebsheetSignupFlow alloc];
        v35 = [optionsCopy objectForKeyedSubscript:@"Plan"];
        v36 = [(TSWebsheetSignupFlow *)v34 initWithPlan:v35];
LABEL_141:
        v8 = v36;

        goto LABEL_191;
      }

      v89 = [optionsCopy objectForKeyedSubscript:@"Iccid"];
      objc_opt_class();
      v90 = objc_opt_isKindOfClass();

      if (v90)
      {
        v91 = [TSWebsheetSignupFlow alloc];
        v35 = [optionsCopy objectForKeyedSubscript:@"Iccid"];
        v36 = [(TSWebsheetSignupFlow *)v91 initWithIccid:v35];
        goto LABEL_141;
      }

      v108 = [optionsCopy valueForKey:@"WebsheetURLKey"];
      objc_opt_class();
      v109 = objc_opt_isKindOfClass();

      if ((v109 & 1) == 0)
      {
LABEL_177:
        v8 = 0;
        goto LABEL_191;
      }

      v110 = [optionsCopy valueForKey:@"RequestTypeKey"];
      v11 = v110;
      if (v110)
      {
        unsignedIntegerValue = [v110 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = 0;
      }

      v130 = [optionsCopy valueForKey:@"SkipIntroPaneForWebsheetFlow"];
      v19 = v130;
      if (v130)
      {
        bOOLValue2 = [v130 BOOLValue];
      }

      else
      {
        bOOLValue2 = 0;
      }

      v132 = [TSWebsheetSignupFlow alloc];
      v133 = [optionsCopy valueForKey:@"WebsheetURLKey"];
      v134 = [optionsCopy valueForKey:@"WebsheetPostdataKey"];
      v8 = [(TSWebsheetSignupFlow *)v132 initWithRequestType:unsignedIntegerValue skipIntroPaneForWebsheetFlow:bOOLValue2 websheetURL:v133 postdata:v134];

LABEL_173:
      goto LABEL_190;
    case 3:
      v11 = [optionsCopy valueForKey:@"RequireSetupKey-DEBUG"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue3 = [v11 BOOLValue];
      }

      else
      {
        bOOLValue3 = 0;
      }

      v19 = [optionsCopy objectForKeyedSubscript:@"TransferBackPlan"];
      null = [MEMORY[0x277CBEB68] null];

      if (v19 == null)
      {

        v19 = 0;
      }

      v22 = [[TSActivationFlowWithSimSetupFlow alloc] initRequireSetup:bOOLValue3 transferBackPlan:v19];
      goto LABEL_132;
    case 4:
      v11 = [optionsCopy valueForKey:@"RequireSetupKey-DEBUG"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v11 BOOLValue] ^ 1;
      }

      else
      {
        v24 = 1;
      }

      v19 = [optionsCopy valueForKey:@"SetupNewIccidKey"];
      v66 = [optionsCopy valueForKey:@"ForceDualSIMSetup"];
      v72 = -[TSSetupAssistantSIMSetupFlow initWithIccid:showAddPlan:forceDualSIMSetup:allowDismiss:]([TSSetupAssistantSIMSetupFlow alloc], "initWithIccid:showAddPlan:forceDualSIMSetup:allowDismiss:", v19, v24, [v66 BOOLValue], 1);
      goto LABEL_171;
    case 5:
      v44 = [optionsCopy objectForKeyedSubscript:@"MessageSessionKey"];
      v45 = [optionsCopy objectForKeyedSubscript:@"HasTransferablePlan"];
      bOOLValue4 = [v45 BOOLValue];

      v47 = [optionsCopy objectForKeyedSubscript:@"IsStandaloneProximityTransfer"];
      bOOLValue5 = [v47 BOOLValue];

      v19 = [optionsCopy objectForKeyedSubscript:@"TransferBackPlan"];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v19 == null2)
      {

        v19 = 0;
      }

      v50 = [optionsCopy valueForKey:@"SourceOSVersion"];
      objc_opt_class();
      v144 = bOOLValue5;
      v142 = v44;
      if (objc_opt_isKindOfClass())
      {
        v51 = [optionsCopy valueForKey:@"SourceOSVersion"];
      }

      else
      {
        v51 = 0;
      }

      v92 = [optionsCopy objectForKeyedSubscript:@"IsPostMigrationFlowKey"];
      if (v92 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        bOOLValue6 = [v92 BOOLValue];
      }

      else
      {
        bOOLValue6 = 0;
      }

      v94 = [optionsCopy objectForKeyedSubscript:@"IsUsingPreSharedKey"];
      if (v94 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        bOOLValue7 = [v94 BOOLValue];
      }

      else
      {
        bOOLValue7 = 0;
      }

      LOBYTE(v138) = bOOLValue7;
      v11 = v142;
      v8 = [[TSTransferFlow alloc] initWithSession:v142 hasTransferablePlan:bOOLValue4 isStandaloneProximityTransfer:v144 transferBackPlan:v19 sourceOSVersion:v51 isPostMigrationFlow:bOOLValue6 isUsingPreSharedKey:v138];

      goto LABEL_173;
    case 6:
    case 28:
      v9 = [[TSIdentityShareFlow alloc] initWithOptions:optionsCopy];
      goto LABEL_81;
    case 7:
    case 8:
      v13 = [TSRemotePlanSignUpFlow alloc];
      v11 = [self createTSRemotePlanWebsheetContext:optionsCopy];
      v12 = [(TSRemotePlanSignUpFlow *)v13 initWithRemotePlanWebsheetContext:v11];
      goto LABEL_189;
    case 9:
      v11 = [optionsCopy objectForKeyedSubscript:@"CarrierNameKey"];
      v19 = [optionsCopy objectForKeyedSubscript:@"PhoneNumberKey"];
      v22 = [[TSOnDeviceConversionFlow alloc] initWithPhoneNumber:v19 carrierName:v11];
      goto LABEL_132;
    case 10:
      v11 = [optionsCopy objectForKeyedSubscript:@"ExternalizedContextKey"];
      v19 = [optionsCopy objectForKeyedSubscript:@"PlanDescriptorKey"];
      v38 = [optionsCopy objectForKeyedSubscript:@"LocalConversionOngoing"];
      bOOLValue8 = [v38 BOOLValue];

      v40 = [optionsCopy objectForKeyedSubscript:@"SecureIntentRequired"];
      bOOLValue9 = [v40 BOOLValue];

      v42 = [optionsCopy objectForKeyedSubscript:@"DtoEvaluationRequired"];
      bOOLValue10 = [v42 BOOLValue];

      v22 = [[TSAuthFlow alloc] initWithExternalizedContext:v11 descriptors:v19 isLocalConvertFlow:bOOLValue8 isSecureIntentRequired:bOOLValue9 isDtoEvaluationRequired:bOOLValue10];
      goto LABEL_132;
    case 11:
      v11 = [optionsCopy objectForKeyedSubscript:@"Iccid"];
      v12 = [[TSTransferQRCodeFlow alloc] initWithIccid:v11];
      goto LABEL_189;
    case 12:
      v73 = [optionsCopy valueForKey:@"WaitForServiceKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue11 = [v73 BOOLValue];
      }

      else
      {
        bOOLValue11 = 0;
      }

      v98 = [optionsCopy valueForKey:@"FallbackToActivationCodeKey"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue12 = [v98 BOOLValue];
      }

      else
      {
        bOOLValue12 = 0;
      }

      v35 = [optionsCopy valueForKey:@"IgnoreTransportKey"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue13 = [v35 BOOLValue];
      }

      else
      {
        bOOLValue13 = 0;
      }

      v36 = [[TSManagedDeviceInstallFlow alloc] initWith:bOOLValue11 fallbackToActivationCode:bOOLValue12 ignoreTransport:bOOLValue13];
      goto LABEL_141;
    case 13:
      goto LABEL_94;
    case 14:
      v58 = [optionsCopy valueForKey:@"IsSourceKey"];
      v11 = v58;
      if (!v58 || (objc_opt_class(), v58 = objc_opt_isKindOfClass(), (v58 & 1) == 0))
      {
        v79 = _TSLogDomain(v58);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          +[TSSIMSetupFlow _flowWithOptions:];
        }

        goto LABEL_90;
      }

      if (![v11 BOOLValue])
      {
        v115 = TSCrossPlatformTargetAuthFlow;
        goto LABEL_188;
      }

      v19 = [optionsCopy valueForKey:@"MigrationAuthCode"];
      if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {

        v19 = 0;
      }

      v22 = [[TSCrossPlatformSourceAuthFlow alloc] initWithCode:v19];
      goto LABEL_132;
    case 15:
      goto LABEL_191;
    case 16:
      v11 = [optionsCopy objectForKeyedSubscript:@"Plans"];
      v52 = [optionsCopy objectForKeyedSubscript:@"ConfirmCellularPlanTransfer"];
      bOOLValue14 = [v52 BOOLValue];

      v54 = [optionsCopy objectForKeyedSubscript:@"CrossPlatformTransferKey"];
      bOOLValue15 = [v54 BOOLValue];

      v56 = [optionsCopy objectForKeyedSubscript:@"MessageSessionKey"];
      objc_opt_class();
      v57 = objc_opt_isKindOfClass();

      if (v57)
      {
        v19 = [optionsCopy objectForKeyedSubscript:@"MessageSessionKey"];
      }

      else
      {
        v19 = 0;
      }

      v96 = [optionsCopy objectForKeyedSubscript:@"SourceOSVersion"];
      objc_opt_class();
      v97 = objc_opt_isKindOfClass();

      if (v97)
      {
        v66 = [optionsCopy objectForKeyedSubscript:@"SourceOSVersion"];
      }

      else
      {
        v66 = 0;
      }

      if (v11)
      {
        v72 = [[TSCellularPlanActivatingFlow alloc] initWithSelectedPlans:v11 confirmCellularPlanTransfer:bOOLValue14 isForCrossPlatformTransfer:bOOLValue15 session:v19 sourceOsVersion:v66];
        goto LABEL_171;
      }

      v107 = [optionsCopy objectForKeyedSubscript:@"IccidToEnable"];
      if ([v107 length])
      {
        v8 = [[TSCellularPlanActivatingFlow alloc] initWithEnablingPlanIccid:v107];
      }

      else
      {
        v117 = [optionsCopy objectForKeyedSubscript:@"SkipActivatingPane"];
        bOOLValue16 = [v117 BOOLValue];

        v118 = [optionsCopy objectForKeyedSubscript:@"DelayStartActivatingTimer"];
        if (v118)
        {
          v119 = [optionsCopy objectForKeyedSubscript:@"DelayStartActivatingTimer"];
          intValue2 = [v119 intValue];
        }

        else
        {
          intValue2 = 1;
        }

        v120 = [optionsCopy valueForKey:@"PlanSetupTypeKey"];
        if (v120)
        {
          v121 = [optionsCopy valueForKey:@"PlanSetupTypeKey"];
          intValue3 = [v121 intValue];
        }

        else
        {
          intValue3 = 2;
        }

        v122 = [optionsCopy objectForKeyedSubscript:@"TransferBackPlan"];
        null3 = [MEMORY[0x277CBEB68] null];

        if (v122 == null3)
        {

          v122 = 0;
        }

        v124 = [optionsCopy objectForKeyedSubscript:@"CarrierNameKey"];
        null4 = [MEMORY[0x277CBEB68] null];

        if (v124 == null4)
        {

          v124 = 0;
        }

        v126 = [optionsCopy objectForKeyedSubscript:@"MaybeShowConfirmationCodePaneKey"];
        HIDWORD(v140) = [v126 BOOLValue];

        v127 = [optionsCopy objectForKeyedSubscript:@"LocalConversionOngoing"];
        bOOLValue17 = [v127 BOOLValue];

        v129 = [optionsCopy objectForKeyedSubscript:@"Plan"];
        LOBYTE(v140) = bOOLValue17;
        LOBYTE(v139) = bOOLValue15;
        v8 = [[TSCellularPlanActivatingFlow alloc] initWithSkipActivatingPane:bOOLValue16 timerType:intValue2 transferBackPlan:v122 setupType:intValue3 carrierName:v124 maybeShowConfirmationCodePane:HIDWORD(v140) plan:v129 isForCrossPlatformTransfer:v139 session:v19 sourceOsVersion:v66 isLocalConvert:v140];
      }

      goto LABEL_220;
    case 17:
      v11 = [optionsCopy objectForKeyedSubscript:@"HostViewController"];
      v21 = [TSCarrierSignupFlow alloc];
      if (v11)
      {
        v19 = [optionsCopy objectForKeyedSubscript:@"Plan"];
        v22 = [(TSCarrierSignupFlow *)v21 initWithPlan:v19 queriableFirstViewController:1 hostViewController:v11];
      }

      else
      {
        v19 = [optionsCopy valueForKey:@"Plan"];
        v22 = [(TSCarrierSignupFlow *)v21 initWithPlan:v19];
      }

      goto LABEL_132;
    case 18:
      v60 = [optionsCopy objectForKeyedSubscript:@"CarrierNameKey"];
      v11 = v60;
      if (!v60 || (v60 = [v60 length]) == 0)
      {
        v61 = _TSLogDomain(v60);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          +[TSSIMSetupFlow _flowWithOptions:];
        }
      }

      v19 = [optionsCopy valueForKey:@"RequireSetupKey-DEBUG"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue18 = [v19 BOOLValue];
      }

      else
      {
        bOOLValue18 = 0;
      }

      v84 = [TSSIMSetupPublicApiInstallFlow alloc];
      v85 = v11;
      v86 = bOOLValue18;
      v87 = 0;
      goto LABEL_131;
    case 19:
      v17 = [optionsCopy objectForKeyedSubscript:@"CarrierNameKey"];
      v11 = v17;
      if (!v17 || (v17 = [v17 length]) == 0)
      {
        v18 = _TSLogDomain(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          +[TSSIMSetupFlow _flowWithOptions:];
        }
      }

      v19 = [optionsCopy valueForKey:@"RequireSetupKey-DEBUG"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue19 = [v19 BOOLValue];
      }

      else
      {
        bOOLValue19 = 0;
      }

      v84 = [TSSIMSetupPublicApiInstallFlow alloc];
      v85 = v11;
      v86 = bOOLValue19;
      v87 = 1;
LABEL_131:
      v22 = [(TSSIMSetupPublicApiInstallFlow *)v84 initWithAppName:v85 requireSetup:v86 skipGeneralInstallConsent:v87];
      goto LABEL_132;
    case 20:
      v23 = TSIDSTransferFlow;
      goto LABEL_80;
    case 21:
      v23 = TSRecommendedCarrierAppsFlow;
      goto LABEL_80;
    case 22:
      v29 = [optionsCopy objectForKeyedSubscript:@"IsFirstViewKey"];
      bOOLValue20 = [v29 BOOLValue];

      v11 = [optionsCopy objectForKeyedSubscript:@"Plans"];
      null5 = [MEMORY[0x277CBEB68] null];

      if (v11 == null5)
      {

        v11 = 0;
      }

      v12 = [[TSQRCodeScanFlow alloc] initWithBackButton:bOOLValue20 ^ 1u plans:v11];
      goto LABEL_189;
    case 23:
      v63 = [optionsCopy objectForKeyedSubscript:@"TravelOptionsKey"];
      v11 = [v63 mutableCopy];

      v151[0] = @"showRoamingOption";
      v151[1] = @"showLocalPlanOption";
      v151[2] = @"showPurchaseOption";
      v151[3] = @"roamingInfo";
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];
      v64 = [optionsCopy objectForKeyedSubscript:@"TravelOptionsKey"];
      allKeys = [v64 allKeys];

      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v66 = allKeys;
      v67 = [v66 countByEnumeratingWithState:&v146 objects:v150 count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v147;
        do
        {
          for (i = 0; i != v68; ++i)
          {
            if (*v147 != v69)
            {
              objc_enumerationMutation(v66);
            }

            v71 = *(*(&v146 + 1) + 8 * i);
            if (([v19 containsObject:v71]& 1) == 0)
            {
              [v11 removeObjectForKey:v71];
            }
          }

          v68 = [v66 countByEnumeratingWithState:&v146 objects:v150 count:16];
        }

        while (v68);
      }

      v72 = [[TSTravelEducationFlow alloc] initWithOptions:v11];
      goto LABEL_171;
    case 24:
      v25 = [optionsCopy valueForKey:@"IsFromDataTransferSession"];
      bOOLValue21 = [v25 BOOLValue];

      v27 = [optionsCopy valueForKey:@"IsSourceKey"];
      v11 = v27;
      if (v27)
      {
        objc_opt_class();
        v27 = objc_opt_isKindOfClass();
        if (v27)
        {
          if ([v11 BOOLValue])
          {
            v12 = [[TSCrossPlatformSourceTransferFlow alloc] init:bOOLValue21];
          }

          else
          {
            v115 = TSCrossPlatformTargetTransferFlow;
LABEL_188:
            v12 = objc_alloc_init(v115);
          }

          goto LABEL_189;
        }
      }

      v78 = _TSLogDomain(v27);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        +[TSSIMSetupFlow _flowWithOptions:];
      }

LABEL_90:
      v8 = 0;
      goto LABEL_190;
    case 25:
      v11 = [optionsCopy valueForKey:@"TravelOptionsKey"];
      v12 = [[TSTravelModeFlow alloc] initWithOptions:v11];
      goto LABEL_189;
    case 26:
      v75 = _os_feature_enabled_impl();
      if ((v75 & 1) == 0)
      {
        v101 = _TSLogDomain(v75);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v153 = "+[TSSIMSetupFlow _flowWithOptions:]";
          _os_log_impl(&dword_262AA8000, v101, OS_LOG_TYPE_DEFAULT, "BuddyPostMigrationFlow feature disabled @%s", buf, 0xCu);
        }

        goto LABEL_177;
      }

      v23 = TSSourceAutoReconnectTransferFlow;
LABEL_80:
      v9 = objc_alloc_init(v23);
LABEL_81:
      v8 = v9;
      goto LABEL_191;
    case 27:
      v14 = _os_feature_enabled_impl();
      if (v14)
      {
        v15 = [optionsCopy valueForKey:@"ProximitySetupStateKey"];
        v11 = v15;
        if (v15)
        {
          unsignedIntegerValue2 = [v15 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue2 = 0;
        }

        v19 = [optionsCopy objectForKeyedSubscript:@"MessageSessionKey"];
        v66 = [optionsCopy valueForKey:@"HasTransferablePlan"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue22 = [v66 BOOLValue];
        }

        else
        {
          bOOLValue22 = 0;
        }

        v113 = [optionsCopy valueForKey:@"SourceOSVersion"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v114 = [optionsCopy valueForKey:@"SourceOSVersion"];
        }

        else
        {
          v114 = 0;
        }

        v8 = [[TSPostMigrationFlow alloc] initWithSession:v19 sourceOSVersion:v114 proximitySetupState:unsignedIntegerValue2 transferablePlanOnSource:bOOLValue22];

        goto LABEL_172;
      }

      v80 = _TSLogDomain(v14);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v153 = "+[TSSIMSetupFlow _flowWithOptions:]";
        _os_log_impl(&dword_262AA8000, v80, OS_LOG_TYPE_DEFAULT, "BuddyPostMigrationFlow feature disabled. Creating TSTransferCloudFlow @%s", buf, 0xCu);
      }

LABEL_94:
      v81 = [optionsCopy valueForKey:@"ProximitySetupStateKey"];
      v11 = v81;
      if (v81)
      {
        unsignedIntegerValue3 = [v81 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue3 = 0;
      }

      v19 = [optionsCopy valueForKey:@"ProxPlansFilteredKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue23 = [v19 BOOLValue];
      }

      else
      {
        bOOLValue23 = 0;
      }

      v22 = [[TSTransferCloudFlow alloc] initWithProximitySetupState:unsignedIntegerValue3 proxPlansFiltered:bOOLValue23];
      goto LABEL_132;
    case 29:
      if (!_os_feature_enabled_impl())
      {
        goto LABEL_177;
      }

      v59 = [optionsCopy valueForKey:@"IsSourceKey"];
      v11 = v59;
      if (v59 && (objc_opt_class(), v59 = objc_opt_isKindOfClass(), (v59 & 1) != 0))
      {
        v19 = [optionsCopy objectForKeyedSubscript:@"TSUserInfoRetainReference"];
        v22 = -[TSBootstrapCrossPlatformTransferFlow initWithRetainedObject:isSource:]([TSBootstrapCrossPlatformTransferFlow alloc], "initWithRetainedObject:isSource:", v19, [v11 BOOLValue]);
LABEL_132:
        v8 = v22;
      }

      else
      {
        v19 = _TSLogDomain(v59);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          +[TSSIMSetupFlow _flowWithOptions:];
        }

        v8 = 0;
      }

      goto LABEL_173;
    default:
      if (intValue == 10002)
      {
        v11 = [optionsCopy valueForKey:@"IsClientKey"];
        objc_opt_class();
        bOOLValue24 = objc_opt_isKindOfClass();
        if (bOOLValue24)
        {
          bOOLValue24 = [v11 BOOLValue];
          v77 = bOOLValue24;
        }

        else
        {
          v77 = 0;
        }

        v102 = _TSLogDomain(bOOLValue24);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          v103 = "no";
          if (v77)
          {
            v103 = "yes";
          }

          *buf = 136315394;
          v153 = v103;
          v154 = 2080;
          v155 = "+[TSSIMSetupFlow _flowWithOptions:]";
          _os_log_impl(&dword_262AA8000, v102, OS_LOG_TYPE_DEFAULT, "client ? %s @%s", buf, 0x16u);
        }

        if (v77)
        {
          v19 = [optionsCopy objectForKey:@"ResumeTransferProxCardKey"];
          if (v19)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v19 BOOLValue])
              {
                v66 = [optionsCopy objectForKey:@"SupportsSyncTransferResults"];
                if (v66 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  bOOLValue25 = [v66 BOOLValue];
                }

                else
                {
                  bOOLValue25 = 0;
                }

                v107 = [optionsCopy objectForKey:@"IsPreSharedKeyPresent"];
                if (v107 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  bOOLValue26 = [v107 BOOLValue];
                }

                else
                {
                  bOOLValue26 = 0;
                }

                v136 = [optionsCopy objectForKey:@"kSelectedTransferPlansCount"];
                if (v136 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  intValue4 = [v136 intValue];
                }

                else
                {
                  intValue4 = 0;
                }

                v8 = [[TSProximitySourceTransferFlow alloc] initForResumptionWithSelectedTransferPlans:intValue4 targetUICapability:bOOLValue25 isPreSharedKeyPresent:bOOLValue26];

LABEL_220:
                goto LABEL_172;
              }
            }
          }

          v66 = [optionsCopy objectForKeyedSubscript:@"PeerDeviceKey"];
          v72 = [[TSProximitySourceTransferFlow alloc] initWithPeerDevice:v66];
        }

        else
        {
          v19 = [optionsCopy objectForKeyedSubscript:@"TransferBackPlan"];
          null6 = [MEMORY[0x277CBEB68] null];

          if (v19 == null6)
          {

            v19 = 0;
          }

          v66 = [optionsCopy objectForKeyedSubscript:@"IsPostMigrationFlowKey"];
          if (v66 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            bOOLValue27 = [v66 BOOLValue];
          }

          else
          {
            bOOLValue27 = 0;
          }

          v72 = [[TSProximityTargetTransferFlow alloc] initWithTransferBackPlan:v19 isPostMigrationFlow:bOOLValue27];
        }

LABEL_171:
        v8 = v72;
LABEL_172:

        goto LABEL_173;
      }

      if (intValue != 10003)
      {
        goto LABEL_191;
      }

      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v10 initWithDomain:*MEMORY[0x277CF9680] code:46 userInfo:0];
      v12 = [[TSActivationPolicyMismatchFlow alloc] initWithPlanItemError:v11];
LABEL_189:
      v8 = v12;
LABEL_190:

LABEL_191:

      return v8;
  }
}

- (TSSIMSetupFlow)init
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = TSSIMSetupFlow;
  v2 = [(TSSIMSetupFlow *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_isFlowFinished = 0;
    v4 = _TSLogDomain(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      _useCustomBackButtonAction = [MEMORY[0x277D75780] _useCustomBackButtonAction];
      *buf = 67109378;
      v13 = _useCustomBackButtonAction;
      v14 = 2080;
      v15 = "[TSSIMSetupFlow init]";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "use custom button action : %d @%s", buf, 0x12u);
    }

    [MEMORY[0x277D75780] _setUseCustomBackButtonAction:1];
    v6 = objc_opt_new();
    backOptions = v3->_backOptions;
    v3->_backOptions = v6;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_appForegrounded name:*MEMORY[0x277D76758] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_appBackgrounded name:*MEMORY[0x277D76660] object:0];
  }

  return v3;
}

- (void)firstViewController:(id)controller
{
  if (controller)
  {
    (*(controller + 2))(controller, 0);
  }
}

- (void)showFirstViewControllerWithHostController:(id)controller completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (id)firstViewControllerForDisplay
{
  p_isa = &self->super.isa;
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_topViewController);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(p_isa + 2);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v7 = objc_loadWeakRetained(p_isa + 2);
        subFlow = [v7 subFlow];
        p_isa = [subFlow firstViewControllerForDisplay];
      }

      else
      {
        v9 = _TSLogDomain(v6);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_loadWeakRetained(p_isa + 2);
          v12 = 138412802;
          v13 = v10;
          v14 = 2112;
          v15 = p_isa;
          v16 = 2080;
          v17 = "[TSSIMSetupFlow firstViewControllerForDisplay]";
          _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "root view controller %@ for flow %@ @%s", &v12, 0x20u);
        }

        p_isa = objc_loadWeakRetained(p_isa + 2);
      }
    }

    else
    {
      p_isa = 0;
    }
  }

  return p_isa;
}

- (void)_maybeSetNavigationController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  if (controllerCopy)
  {
    if (!WeakRetained)
    {
      selfCopy = self;
      if (selfCopy)
      {
        v6 = selfCopy;
        do
        {
          [v6 setNavigationController:controllerCopy];
          parentFlow = [v6 parentFlow];

          v6 = parentFlow;
        }

        while (parentFlow);
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)rootViewController
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  if (!WeakRetained)
  {
    firstViewControllerForDisplay = [(TSSIMSetupFlow *)self firstViewControllerForDisplay];
    v5 = _TSLogDomain(firstViewControllerForDisplay);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412802;
      v19 = firstViewControllerForDisplay;
      v20 = 2112;
      selfCopy2 = self;
      v22 = 2080;
      v23 = "[TSSIMSetupFlow rootViewController]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "first view controller %@ for root flow %@ @%s", &v18, 0x20u);
    }

    navigationController = [firstViewControllerForDisplay navigationController];

    if (!navigationController)
    {
      goto LABEL_16;
    }

    flow = [firstViewControllerForDisplay flow];
    navigationController2 = [firstViewControllerForDisplay navigationController];
    [flow _maybeSetNavigationController:navigationController2];
  }

  v9 = objc_loadWeakRetained(&self->_navigationController);
  viewControllers = [v9 viewControllers];

  v11 = [viewControllers count];
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      firstViewControllerForDisplay = [viewControllers objectAtIndex:v12];
      flow2 = [firstViewControllerForDisplay flow];
      if (flow2)
      {
        if (objc_opt_respondsToSelector())
        {
          rootFlow = [flow2 rootFlow];

          if (rootFlow == self)
          {
            break;
          }
        }
      }

      ++v12;
      v11 = [viewControllers count];
      if (v12 >= v11)
      {
        goto LABEL_12;
      }
    }

    v17 = _TSLogDomain(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412802;
      v19 = firstViewControllerForDisplay;
      v20 = 2112;
      selfCopy2 = self;
      v22 = 2080;
      v23 = "[TSSIMSetupFlow rootViewController]";
      _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "root view controller %@ for flow %@ @%s", &v18, 0x20u);
    }
  }

  else
  {
LABEL_12:
    flow2 = _TSLogDomain(v11);
    if (os_log_type_enabled(flow2, OS_LOG_TYPE_ERROR))
    {
      [(TSSIMSetupFlow *)self rootViewController];
    }

    firstViewControllerForDisplay = 0;
  }

LABEL_16:

  return firstViewControllerForDisplay;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v7 = *MEMORY[0x277D85DE8];
  if (!self->_isFlowFinished)
  {
    v4 = _TSLogDomain(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[TSSIMSetupFlow presentationControllerDidDismiss:]";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "user swipe down to dismiss flow. quit @%s", &v5, 0xCu);
    }

    [(TSSIMSetupFlow *)self userDidTapCancel];
  }
}

- (void)restartWith:(id)with
{
  v42 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v5 = _TSLogDomain(withCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TSSIMSetupFlow restartWith:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = withCopy;
    v7 = _TSLogDomain(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(TSSIMSetupFlow *)v6 restartWith:v7];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  if (!WeakRetained)
  {
    firstViewControllerForDisplay = [(TSSIMSetupFlow *)self firstViewControllerForDisplay];
    navigationController = [firstViewControllerForDisplay navigationController];
    [(TSSIMSetupFlow *)self _maybeSetNavigationController:navigationController];
  }

  v11 = objc_loadWeakRetained(&self->_navigationController);
  topViewController = [v11 topViewController];

  v13 = objc_loadWeakRetained(&self->_navigationController);
  viewControllers = [v13 viewControllers];
  v15 = [viewControllers count];

  if (v15 < 2)
  {
    v20 = 0;
  }

  else
  {
    v16 = objc_loadWeakRetained(&self->_navigationController);
    viewControllers2 = [v16 viewControllers];
    v18 = objc_loadWeakRetained(&self->_navigationController);
    viewControllers3 = [v18 viewControllers];
    v20 = [viewControllers2 objectAtIndex:{objc_msgSend(viewControllers3, "count") - 2}];
  }

  rootViewController = [(TSSIMSetupFlow *)self rootViewController];

  if (topViewController != rootViewController || !v20)
  {
    v26 = [(TSSIMSetupFlow *)self _needCustomizeBackAction:topViewController];
    if (v26)
    {
      subFlowViewControllers = self->_subFlowViewControllers;
      self->_subFlowViewControllers = 0;
      v28 = subFlowViewControllers;

      [(TSSIMSetupFlow *)self _startOver:topViewController];
      goto LABEL_30;
    }

    v29 = _TSLogDomain(v26);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412802;
      v37 = topViewController;
      v38 = 2112;
      v39 = v20;
      v40 = 2080;
      v41 = "[TSSIMSetupFlow restartWith:]";
      _os_log_impl(&dword_262AA8000, v29, OS_LOG_TYPE_DEFAULT, "normal back from : %@ -> %@ @%s", &v36, 0x20u);
    }

    if (!v20)
    {
      [(TSSIMSetupFlow *)self _notifyFlowCompletion:1];
      goto LABEL_30;
    }

    v30 = objc_loadWeakRetained(&self->_navigationController);
    v31 = [v30 popToViewController:v20 animated:1];

    v32 = [v20 conformsToProtocol:&unk_28758ABD0];
    if (v32)
    {
      v33 = objc_storeWeak(&self->_topViewController, v20);
      v34 = objc_opt_respondsToSelector();

      if ((v34 & 1) == 0)
      {
LABEL_29:
        [(TSSIMSetupFlow *)self _maybeClearSubFlowViewController:topViewController];
        goto LABEL_30;
      }

      v35 = objc_loadWeakRetained(&self->_topViewController);
      [v35 backToCurrentTopPane];
    }

    else
    {
      v35 = _TSLogDomain(v32);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [TSSIMSetupFlow restartWith:];
      }
    }

    goto LABEL_29;
  }

  v23 = _TSLogDomain(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138412802;
    v37 = topViewController;
    v38 = 2112;
    v39 = v20;
    v40 = 2080;
    v41 = "[TSSIMSetupFlow restartWith:]";
    _os_log_impl(&dword_262AA8000, v23, OS_LOG_TYPE_DEFAULT, "normal back from : %@ -> %@ @%s", &v36, 0x20u);
  }

  v24 = objc_loadWeakRetained(&self->_navigationController);
  v25 = [v24 popToViewController:v20 animated:1];

LABEL_30:
}

- (BOOL)_needCustomizeBackAction:(id)action
{
  v16 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = actionCopy;
  if (!self)
  {
    v6 = _TSLogDomain(actionCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      *v15 = "[TSSIMSetupFlow _needCustomizeBackAction:]";
      v8 = "[I] self is nil @%s";
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
      v11 = 12;
LABEL_13:
      _os_log_impl(&dword_262AA8000, v9, v10, v8, &v14, v11);
    }

LABEL_14:
    LOBYTE(isStartOverRequiredOnBackButtonTapped) = 0;
    goto LABEL_15;
  }

  if (self->_isFlowFinished)
  {
    v6 = _TSLogDomain(actionCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      *v15 = "[TSSIMSetupFlow _needCustomizeBackAction:]";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "back tapped after flow end. @%s", &v14, 0xCu);
    }

    LOBYTE(isStartOverRequiredOnBackButtonTapped) = 1;
    goto LABEL_15;
  }

  v12 = objc_opt_respondsToSelector();
  if ((v12 & 1) == 0)
  {
    v6 = _TSLogDomain(v12);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      *v15 = v5;
      *&v15[8] = 2080;
      *&v15[10] = "[TSSIMSetupFlow _needCustomizeBackAction:]";
      v8 = "%@ doesnot require customized back @%s";
      v9 = v6;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 22;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  isStartOverRequiredOnBackButtonTapped = [v5 isStartOverRequiredOnBackButtonTapped];
  v6 = _TSLogDomain(isStartOverRequiredOnBackButtonTapped);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109378;
    *v15 = isStartOverRequiredOnBackButtonTapped;
    *&v15[4] = 2080;
    *&v15[6] = "[TSSIMSetupFlow _needCustomizeBackAction:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "is start over required : %d @%s", &v14, 0x12u);
  }

LABEL_15:

  return isStartOverRequiredOnBackButtonTapped;
}

- (BOOL)_startOver:(id)over
{
  v21 = *MEMORY[0x277D85DE8];
  overCopy = over;
  [(TSSIMSetupFlow *)self waitForResponse:overCopy];
  parentFlow = [(TSSIMSetupFlow *)self parentFlow];

  if (parentFlow)
  {
    parentFlow2 = [(TSSIMSetupFlow *)self parentFlow];
    v7 = [parentFlow2 _startOver:overCopy];
  }

  else
  {
    inited = objc_initWeak(&location, self);
    v9 = _TSLogDomain(inited);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v17 = 2112;
      v18 = overCopy;
      v19 = 2080;
      v20 = "[TSSIMSetupFlow _startOver:]";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "check start over vc for root flow : %@, vc : %@ @%s", buf, 0x20u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __29__TSSIMSetupFlow__startOver___block_invoke;
    v11[3] = &unk_279B44250;
    v11[4] = self;
    objc_copyWeak(&v13, &location);
    v12 = overCopy;
    dispatch_async(MEMORY[0x277D85CD0], v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    v7 = 1;
  }

  return v7;
}

void __29__TSSIMSetupFlow__startOver___block_invoke(id *a1)
{
  v2 = a1[4];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __29__TSSIMSetupFlow__startOver___block_invoke_2;
    v6[3] = &unk_279B443B0;
    objc_copyWeak(&v9, a1 + 6);
    v4 = a1[5];
    v5 = a1[4];
    v7 = v4;
    v8 = v5;
    [WeakRetained startOverWithFirstViewController:v6];

    objc_destroyWeak(&v9);
  }
}

void __29__TSSIMSetupFlow__startOver___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__TSSIMSetupFlow__startOver___block_invoke_3;
  v5[3] = &unk_279B44A70;
  objc_copyWeak(&v9, (a1 + 48));
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v9);
}

void __29__TSSIMSetupFlow__startOver___block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained receivedResponseWithVC:*(a1 + 32)];

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(a1 + 40);
      v7 = [v6 subFlow];
      v8 = [v7 firstViewControllerForDisplay];

      if (!v8)
      {
        v19 = _TSLogDomain(v9);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __29__TSSIMSetupFlow__startOver___block_invoke_3_cold_1();
        }

        v18 = objc_loadWeakRetained((a1 + 56));
        [v18 _popAllSIMSetupFlowViewControllers:*(a1 + 32)];
        goto LABEL_12;
      }

      v10 = objc_loadWeakRetained((a1 + 56));
      v11 = [v6 subFlow];
      [v11 setParentFlow:v10];

      v12 = objc_loadWeakRetained((a1 + 56));
      [v12 addSubFlowViewController:v6];

      v6 = v8;
    }

    else
    {
      v6 = v5;
    }

    v15 = objc_loadWeakRetained((a1 + 56));
    [v15 _pushStartOverViewController:v6 from:*(a1 + 32)];

    v17 = _TSLogDomain(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[TSSIMSetupFlow _startOver:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "assert in purchase with startOver @%s", &v20, 0xCu);
    }

    v18 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v18 assertUserInPurchaseFlowStartOver:1 caller:*(a1 + 48)];
LABEL_12:

    goto LABEL_13;
  }

  v13 = _TSLogDomain(v3);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_loadWeakRetained((a1 + 56));
    v20 = 138412546;
    v21 = v14;
    v22 = 2080;
    v23 = "[TSSIMSetupFlow _startOver:]_block_invoke_3";
    _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "cannot start over, pop all views for flow : %@ @%s", &v20, 0x16u);
  }

  v6 = objc_loadWeakRetained((a1 + 56));
  [v6 _popAllSIMSetupFlowViewControllers:*(a1 + 32)];
LABEL_13:
}

- (void)_popAllSIMSetupFlowViewControllers:(id)controllers
{
  v27 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  rootViewController = [(TSSIMSetupFlow *)self rootViewController];
  if (rootViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);
    viewControllers = [WeakRetained viewControllers];
    v8 = [viewControllers indexOfObject:rootViewController];

    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v8)
    {
      v14 = objc_loadWeakRetained(&self->_navigationController);
      viewControllers2 = [v14 viewControllers];
      v16 = [viewControllers2 objectAtIndex:v8 - 1];

      v18 = _TSLogDomain(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412802;
        v22 = controllersCopy;
        v23 = 2112;
        v24 = v16;
        v25 = 2080;
        v26 = "[TSSIMSetupFlow _popAllSIMSetupFlowViewControllers:]";
        _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "pop all. from %@ to %@ @%s", &v21, 0x20u);
      }

      v19 = objc_loadWeakRetained(&self->_navigationController);
      v20 = [v19 popToViewController:v16 animated:1];
    }

    else
    {
      v10 = _TSLogDomain(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315138;
        v22 = "[TSSIMSetupFlow _popAllSIMSetupFlowViewControllers:]";
        _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "no previous view controller, cancel SS flow @%s", &v21, 0xCu);
      }

      [(TSSIMSetupFlow *)self userDidTapCancel];
    }
  }

  else
  {
    v11 = _TSLogDomain(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TSSIMSetupFlow _popAllSIMSetupFlowViewControllers:];
    }

    v12 = objc_loadWeakRetained(&self->_navigationController);
    v13 = [v12 popViewControllerAnimated:1];
  }
}

- (void)_pushStartOverViewController:(id)controller from:(id)from
{
  v31 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  fromCopy = from;
  v8 = _TSLogDomain(fromCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    v26 = fromCopy;
    v27 = 2112;
    v28 = controllerCopy;
    v29 = 2080;
    v30 = "[TSSIMSetupFlow _pushStartOverViewController:from:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "start over - back from %@ to %@ @%s", &v25, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_navigationController);
  viewControllers = [WeakRetained viewControllers];
  v11 = [viewControllers mutableCopy];

  rootViewController = [(TSSIMSetupFlow *)self rootViewController];
  v13 = rootViewController;
  if (rootViewController)
  {
    rootViewController = [v11 indexOfObject:rootViewController];
    v14 = rootViewController;
    if (rootViewController != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    v15 = _TSLogDomain(0x7FFFFFFFFFFFFFFFLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [TSSIMSetupFlow _pushStartOverViewController:v15 from:?];
    }
  }

  v14 = 0;
LABEL_9:
  v16 = _TSLogDomain(rootViewController);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = v11;
    v27 = 2080;
    v28 = "[TSSIMSetupFlow _pushStartOverViewController:from:]";
    _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "before shrink. view controllers : %@ @%s", &v25, 0x16u);
  }

  v17 = _TSLogDomain([v11 insertObject:controllerCopy atIndex:v14]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = v11;
    v27 = 2080;
    v28 = "[TSSIMSetupFlow _pushStartOverViewController:from:]";
    _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "after insert: vcs:%@ @%s", &v25, 0x16u);
  }

  v18 = objc_loadWeakRetained(&self->_navigationController);
  [v18 setViewControllers:v11 animated:0];

  v19 = objc_loadWeakRetained(&self->_navigationController);
  v20 = [v19 popToViewController:controllerCopy animated:1];

  v22 = _TSLogDomain(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_loadWeakRetained(&self->_navigationController);
    viewControllers2 = [v23 viewControllers];
    v25 = 138412546;
    v26 = viewControllers2;
    v27 = 2080;
    v28 = "[TSSIMSetupFlow _pushStartOverViewController:from:]";
    _os_log_impl(&dword_262AA8000, v22, OS_LOG_TYPE_DEFAULT, "after pop to new root. view controllers : %@ @%s", &v25, 0x16u);
  }

  [(TSSIMSetupFlow *)self setIsFlowFinished:0];
}

- (void)startOverWithFirstViewController:(id)controller
{
  controllerCopy = controller;
  v5 = _TSLogDomain(controllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(TSSIMSetupFlow *)self startOverWithFirstViewController:v5];
  }

  controllerCopy[2](controllerCopy, 0);
}

- (BOOL)handleStartOverWithEntryPoint:(id)point navigationController:(id)controller completion:(id)completion
{
  pointCopy = point;
  controllerCopy = controller;
  completionCopy = completion;
  if (completionCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = 1;
    if ([pointCopy entryPoint] == 1)
    {
      v12 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:1 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:0];
      [(TSSIMSetupFlow *)self setTopViewController:v12];
      completionCopy[2](completionCopy, v12);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)navigateToNextPaneFrom:(id)from navigationController:(id)controller
{
  fromCopy = from;
  controllerCopy = controller;
  if (controllerCopy || (v8 = objc_loadWeakRetained(&self->_navigationController), v8, v8))
  {
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);

    if (WeakRetained)
    {
      if (controllerCopy)
      {
LABEL_5:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke;
        block[3] = &unk_279B44688;
        v15 = fromCopy;
        selfCopy = self;
        v17 = controllerCopy;
        v11 = controllerCopy;
        dispatch_async(MEMORY[0x277D85CD0], block);

        goto LABEL_6;
      }
    }

    else
    {
      [(TSSIMSetupFlow *)self _maybeSetNavigationController:controllerCopy];
      firstViewControllerInstance = self->_firstViewControllerInstance;
      self->_firstViewControllerInstance = 0;

      if (controllerCopy)
      {
        goto LABEL_5;
      }
    }

    controllerCopy = objc_loadWeakRetained(&self->_navigationController);
    goto LABEL_5;
  }

  v13 = _TSLogDomain(v9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [TSSIMSetupFlow navigateToNextPaneFrom:v13 navigationController:?];
  }

  [(TSSIMSetupFlow *)self _notifyFlowCompletion:3];
LABEL_6:
}

void __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dismissingViewController];

  if (v2 == v3)
  {
    v5 = _TSLogDomain(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) setDismissingViewController:*(a1 + 32)];
    v5 = [*(a1 + 40) nextViewControllerFrom:*(a1 + 32)];
    v6 = _TSLogDomain([*(a1 + 40) setNextViewController:v5]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = objc_opt_class();
      v10 = v9;
      v11 = objc_opt_class();
      v12 = *(a1 + 40);
      *buf = 138413570;
      v33 = v7;
      v34 = 2112;
      v35 = v9;
      v36 = 2048;
      v37 = v5;
      v38 = 2112;
      v39 = v11;
      v40 = 2048;
      v41 = v12;
      v42 = 2080;
      v43 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "current view: %@ next view: %@<%p>, flow: %@<%p> @%s", buf, 0x3Eu);
    }

    if (v5)
    {
      if ([v5 conformsToProtocol:&unk_28758ABD0])
      {
        [v5 setDelegate:*(a1 + 40)];
      }

      if (objc_opt_respondsToSelector())
      {
        v13 = [*(a1 + 48) topViewController];
        [*(a1 + 40) waitForResponse:v13];
        v14 = (objc_opt_respondsToSelector() & 1) != 0 && [v13 performSelector:sel_userInteractionEnabled] != 0;
        v22 = [v13 view];
        [v22 setUserInteractionEnabled:v14];

        objc_initWeak(buf, *(a1 + 40));
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_181;
        v26[3] = &unk_279B44AC0;
        objc_copyWeak(&v31, buf);
        v5 = v5;
        v27 = v5;
        v23 = v13;
        v24 = *(a1 + 40);
        v28 = v23;
        v29 = v24;
        v30 = *(a1 + 48);
        [v5 prepare:v26];

        objc_destroyWeak(&v31);
        objc_destroyWeak(buf);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 40) setTopViewController:v5];
          [*(a1 + 40) setDismissingViewController:0];
          [*(a1 + 40) setNextViewController:0];
        }

        else if (([*(a1 + 40) isMemberOfClass:objc_opt_class()] & 1) == 0)
        {
          v15 = _TSLogDomain([*(a1 + 48) pushViewController:v5 animated:1]);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = objc_opt_class();
            v17 = [*(a1 + 40) topViewController];
            v18 = objc_opt_class();
            v19 = [*(a1 + 40) topViewController];
            *buf = 138413314;
            v33 = v16;
            v34 = 2048;
            v35 = v5;
            v36 = 2112;
            v37 = v18;
            v38 = 2048;
            v39 = v19;
            v40 = 2080;
            v41 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]_block_invoke";
            _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "push %@(%p) onto %@(%p) @%s", buf, 0x34u);
          }

          v21 = *(a1 + 40);
          v20 = (a1 + 40);
          [v21 setTopViewController:v5];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_184;
          v25[3] = &unk_279B44578;
          v25[4] = *v20;
          dispatch_async(MEMORY[0x277D85CD0], v25);
          [*v20 setNextViewController:0];
        }
      }
    }

    else
    {
      [*(a1 + 40) _notifyFlowCompletion:2];
    }
  }
}

void __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_181(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_2;
  block[3] = &unk_279B44A98;
  objc_copyWeak(&v12, (a1 + 64));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13 = a2;
  v8 = *(a1 + 48);
  v6 = *(&v8 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained nextViewController];
  v4 = *(a1 + 32);

  if (v3 != v4)
  {
    v6 = _TSLogDomain(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained((a1 + 64));
      v8 = [v7 nextViewController];
      v9 = objc_opt_class();
      v10 = objc_loadWeakRetained((a1 + 64));
      v11 = [v10 nextViewController];
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      *buf = 138413314;
      v39 = v9;
      v40 = 2048;
      v41 = v11;
      v42 = 2112;
      v43 = v12;
      v44 = 2048;
      v45 = v13;
      v46 = 2080;
      v47 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]_block_invoke_2";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "next vc mismatch. expect:%@(%p), real:%@(%p) @%s", buf, 0x34u);
    }

    return;
  }

  v14 = objc_loadWeakRetained((a1 + 64));
  [v14 receivedResponseWithVC:*(a1 + 40)];

  v15 = [*(a1 + 40) view];
  [v15 setUserInteractionEnabled:1];

  if (*(a1 + 72) == 1)
  {
    if ([*(a1 + 48) isMemberOfClass:objc_opt_class()])
    {
      return;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = *(a1 + 32);
      v17 = objc_loadWeakRetained((a1 + 64));
      [v17 addSubFlowViewController:v16];

      v18 = [v16 subFlow];
      v19 = [v18 firstViewControllerForDisplay];

      if (v19)
      {
        v21 = _TSLogDomain([*(a1 + 56) pushViewController:v19 animated:1]);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = objc_opt_class();
          v23 = objc_loadWeakRetained((a1 + 64));
          v24 = [v23 topViewController];
          v25 = objc_opt_class();
          v26 = objc_loadWeakRetained((a1 + 64));
          v27 = [v26 topViewController];
          *buf = 138413314;
          v39 = v22;
          v40 = 2048;
          v41 = v19;
          v42 = 2112;
          v43 = v25;
          v44 = 2048;
          v45 = v27;
          v46 = 2080;
          v47 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]_block_invoke";
          _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "push %@(%p) onto %@(%p) @%s", buf, 0x34u);
        }
      }

      else
      {
        v21 = _TSLogDomain(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v39 = [v16 subFlowType];
          v40 = 2080;
          v41 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]_block_invoke";
          _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "sub flow doesnot follow 1st VC paradigm : %lu @%s", buf, 0x16u);
        }
      }
    }

    else
    {
      v16 = _TSLogDomain([*(a1 + 56) pushViewController:*(a1 + 32) animated:1]);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        v33 = *(a1 + 32);
        v34 = objc_loadWeakRetained((a1 + 64));
        [v34 setTopViewController:v33];

        v35 = objc_loadWeakRetained((a1 + 64));
        [v35 setDismissingViewController:0];

        v36 = objc_loadWeakRetained((a1 + 64));
        [v36 setNextViewController:0];

        return;
      }

      v28 = objc_opt_class();
      v29 = *(a1 + 32);
      v19 = objc_loadWeakRetained((a1 + 64));
      v21 = [v19 topViewController];
      v30 = objc_opt_class();
      v31 = objc_loadWeakRetained((a1 + 64));
      v32 = [v31 topViewController];
      *buf = 138413314;
      v39 = v28;
      v40 = 2048;
      v41 = v29;
      v42 = 2112;
      v43 = v30;
      v44 = 2048;
      v45 = v32;
      v46 = 2080;
      v47 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "push %@(%p) onto %@(%p) @%s", buf, 0x34u);
    }

    goto LABEL_20;
  }

  v37 = objc_loadWeakRetained((a1 + 64));
  [v37 navigateToNextPaneFrom:*(a1 + 32) navigationController:*(a1 + 56)];
}

- (void)addSubFlowViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__TSSIMSetupFlow_addSubFlowViewController___block_invoke;
    block[3] = &unk_279B443D8;
    objc_copyWeak(&v7, &location);
    v6 = controllerCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __43__TSSIMSetupFlow_addSubFlowViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained subFlowViewControllers];

  if (!v3)
  {
    v4 = objc_opt_new();
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 setSubFlowViewControllers:v4];
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v6 = [v7 subFlowViewControllers];
  [v6 addObject:*(a1 + 32)];
}

- (void)_maybeClearSubFlowViewController:(id)controller
{
  v31 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    flow = [controllerCopy flow];
    if (flow)
    {
      WeakRetained = objc_loadWeakRetained(&self->_navigationController);
      viewControllers = [WeakRetained viewControllers];

      if (viewControllers)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = objc_loadWeakRetained(&self->_navigationController);
        viewControllers2 = [v9 viewControllers];

        v11 = [viewControllers2 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          while (2)
          {
            v14 = 0;
            do
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(viewControllers2);
              }

              v15 = *(*(&v22 + 1) + 8 * v14);
              if (v15 != v5)
              {
                flow2 = [v15 flow];

                if (flow == flow2)
                {

                  goto LABEL_17;
                }
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [viewControllers2 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v18 = _TSLogDomain(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v27 = flow;
          v28 = 2080;
          v29 = "[TSSIMSetupFlow _maybeClearSubFlowViewController:]";
          _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "flow is moved out. let's clean it : %@ @%s", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __51__TSSIMSetupFlow__maybeClearSubFlowViewController___block_invoke;
        v19[3] = &unk_279B443D8;
        objc_copyWeak(&v21, buf);
        v20 = flow;
        dispatch_async(MEMORY[0x277D85CD0], v19);

        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
      }
    }

LABEL_17:
  }
}

void __51__TSSIMSetupFlow__maybeClearSubFlowViewController___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained subFlowViewControllers];

  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v17 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v16 + 1) + 8 * v7);
      v9 = *(a1 + 32);
      v10 = [v8 subFlow];

      if (v9 == v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v8;

    if (!v11)
    {
      return;
    }

    v13 = _TSLogDomain(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v11;
      v22 = 2080;
      v23 = "[TSSIMSetupFlow _maybeClearSubFlowViewController:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "clear subflow vc : %@ @%s", buf, 0x16u);
    }

    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = [v14 subFlowViewControllers];
    [v15 removeObject:v11];
  }

  else
  {
LABEL_9:
    v11 = v3;
  }
}

- (void)maybePrepareNextDisplayViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = controllerCopy;
    }

    else
    {
      v8 = 0;
    }

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__TSSIMSetupFlow_maybePrepareNextDisplayViewController_completion___block_invoke;
    v10[3] = &unk_279B44B10;
    v13 = completionCopy;
    v9 = v8;
    v11 = v9;
    v12 = controllerCopy;
    objc_copyWeak(&v14, &location);
    [v12 prepare:v10];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, controllerCopy);
  }
}

void __67__TSSIMSetupFlow_maybePrepareNextDisplayViewController_completion___block_invoke(id *a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__TSSIMSetupFlow_maybePrepareNextDisplayViewController_completion___block_invoke_2;
  block[3] = &unk_279B44AE8;
  v8 = a2;
  v6 = a1[6];
  v4 = a1[4];
  v5 = a1[5];
  objc_copyWeak(&v7, a1 + 7);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v7);
}

void __67__TSSIMSetupFlow_maybePrepareNextDisplayViewController_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = [v2 subFlow];
      v6 = [v3 firstViewControllerForDisplay];

      if (v6)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 56));
        [WeakRetained addSubFlowViewController:*(a1 + 32)];
      }

      (*(*(a1 + 48) + 16))();

      return;
    }

    v5 = *(*(a1 + 48) + 16);
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);
  }

  v5();
}

- (void)_maybeClearSubFlow
{
  v13 = *MEMORY[0x277D85DE8];
  nextViewController = [(TSSIMSetupFlow *)self nextViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = _TSLogDomain(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[TSSIMSetupFlow _maybeClearSubFlow]";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "clear nextVC @%s", &v11, 0xCu);
    }

    nextViewController2 = [(TSSIMSetupFlow *)self nextViewController];
    [(TSSIMSetupFlow *)self setNextViewController:0];
    subFlow = [nextViewController2 subFlow];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      subFlow2 = [nextViewController2 subFlow];
      [subFlow2 performSelector:sel_cancelFlow];
    }

    [nextViewController2 setSubFlow:0];
  }
}

- (void)_notifyFlowCompletion:(unint64_t)completion
{
  self->_isFlowFinished = 1;
  firstViewControllerInstance = self->_firstViewControllerInstance;
  self->_firstViewControllerInstance = 0;

  v7 = _TSLogDomain(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [TSSIMSetupFlow _notifyFlowCompletion:];
  }

  [(TSSIMSetupFlow *)self setDismissingViewController:0];
  [(NSMutableDictionary *)self->_backOptions removeAllObjects];
  delegate = [(TSSIMSetupFlow *)self delegate];

  if (!delegate)
  {
    v10 = _TSLogDomain(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TSSIMSetupFlow _notifyFlowCompletion:];
    }
  }

  delegate2 = [(TSSIMSetupFlow *)self delegate];
  v12 = objc_opt_respondsToSelector();

  delegate3 = [(TSSIMSetupFlow *)self delegate];
  v14 = delegate3;
  if (v12)
  {
    [delegate3 simSetupFlowCompleted:completion];
  }

  else
  {
    [delegate3 simSetupFlowCompleted];
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentFlow);
  if (!WeakRetained)
  {
    v16 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v16 deassertUserInPurchaseFlowWithForce:1 caller:self];
  }

  [(TSSIMSetupFlow *)self flowCompleted:completion];
}

- (void)viewControllerDidComplete:(id)complete
{
  completeCopy = complete;
  navigationController = [completeCopy navigationController];
  [(TSSIMSetupFlow *)self navigateToNextPaneFrom:completeCopy navigationController:navigationController];
}

- (void)userDidTapCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_topViewController);
  presentedViewController = [WeakRetained presentedViewController];

  if (presentedViewController)
  {
    v5 = objc_loadWeakRetained(&self->_topViewController);
    presentedViewController2 = [v5 presentedViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__TSSIMSetupFlow_userDidTapCancel__block_invoke;
    v7[3] = &unk_279B44578;
    v7[4] = self;
    [presentedViewController2 dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    [(TSSIMSetupFlow *)self _maybeClearSubFlow];

    [(TSSIMSetupFlow *)self _notifyFlowCompletion:1];
  }
}

- (void)waitForResponse:(id)response
{
  responseCopy = response;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![responseCopy performSelector:sel_customizeSpinner])
  {
    v4 = +[TSNavigationBarSpinnerManager sharedManager];
    navigationItem = [responseCopy navigationItem];
    [v4 startSpinnerInNavigationItem:navigationItem withIdentifier:@"waiting"];
  }

  view = [responseCopy view];
  [view setUserInteractionEnabled:0];

  v7 = objc_alloc_init(ViewControllerBackOption);
  navigationItem2 = [responseCopy navigationItem];
  hidesBackButton = [navigationItem2 hidesBackButton];

  if (hidesBackButton)
  {
    [(ViewControllerBackOption *)v7 setHidesBackButton:1];
    navigationItem3 = [responseCopy navigationItem];
    leftBarButtonItems = [navigationItem3 leftBarButtonItems];
    [(ViewControllerBackOption *)v7 setLeftBarButtonItems:leftBarButtonItems];

    navigationItem4 = [responseCopy navigationItem];
    [navigationItem4 setLeftBarButtonItem:0 animated:0];
  }

  else
  {
    [(ViewControllerBackOption *)v7 setHidesBackButton:0];
    navigationItem4 = [responseCopy navigationItem];
    [navigationItem4 setHidesBackButton:1];
  }

  responseCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", responseCopy];
  v14 = [(NSMutableDictionary *)self->_backOptions objectForKeyedSubscript:responseCopy];

  if (!v14)
  {
    [(NSMutableDictionary *)self->_backOptions setObject:v7 forKeyedSubscript:responseCopy];
  }
}

- (void)receivedResponse
{
  v2 = +[TSNavigationBarSpinnerManager sharedManager];
  [v2 stopSpinnerForIdentifier:@"waiting"];
}

- (void)receivedResponseWithVC:(id)c
{
  cCopy = c;
  cCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", cCopy];
  v5 = [(NSMutableDictionary *)self->_backOptions objectForKeyedSubscript:cCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_backOptions objectForKeyedSubscript:cCopy];
    v7 = v6;
    if (v6)
    {
      if (([v6 hidesBackButton] & 1) == 0)
      {
        navigationItem = [cCopy navigationItem];
        [navigationItem setHidesBackButton:0];
        goto LABEL_7;
      }

      leftBarButtonItems = [v7 leftBarButtonItems];

      if (leftBarButtonItems)
      {
        navigationItem = [cCopy navigationItem];
        leftBarButtonItems2 = [v7 leftBarButtonItems];
        [navigationItem setLeftBarButtonItems:leftBarButtonItems2 animated:0];

LABEL_7:
      }
    }

    [(NSMutableDictionary *)self->_backOptions removeObjectForKey:cCopy];
  }

  view = [cCopy view];
  [view setUserInteractionEnabled:1];

  v12 = +[TSNavigationBarSpinnerManager sharedManager];
  navigationItem2 = [cCopy navigationItem];
  [v12 stopSpinnerInNavigationItem:navigationItem2 withIdentifier:@"waiting"];
}

- (void)attemptFailed
{
  [(TSSIMSetupFlow *)self _maybeClearSubFlow];

  [(TSSIMSetupFlow *)self _notifyFlowCompletion:3];
}

- (void)cancelNextPane
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TSSIMSetupFlow cancelNextPane]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "cancel next pane @%s", &v7, 0xCu);
  }

  [(TSSIMSetupFlow *)self setDismissingViewController:0];
  nextViewController = [(TSSIMSetupFlow *)self nextViewController];
  [nextViewController setDelegate:0];

  [(TSSIMSetupFlow *)self _maybeClearSubFlow];
  [(TSSIMSetupFlow *)self setNextViewController:0];
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  view = [topViewController view];
  [view setUserInteractionEnabled:1];
}

- (void)maybeRegisterDismissHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!+[TSUtilities inBuddy])
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentFlow);

    if (!WeakRetained)
    {
      navigationController = [handlerCopy navigationController];

      if (!navigationController)
      {
        navigationController4 = _TSLogDomain(v7);
        if (os_log_type_enabled(navigationController4, OS_LOG_TYPE_ERROR))
        {
          [TSSIMSetupFlow maybeRegisterDismissHandler:];
        }

        goto LABEL_14;
      }

      navigationController2 = [handlerCopy navigationController];
      presentationController = [navigationController2 presentationController];
      delegate = [presentationController delegate];

      if (!delegate)
      {
        v20 = _TSLogDomain(v11);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          navigationController3 = [handlerCopy navigationController];
          presentationController2 = [navigationController3 presentationController];
          v23 = 138412802;
          v24 = presentationController2;
          v25 = 2112;
          selfCopy2 = self;
          v27 = 2080;
          v28 = "[TSSIMSetupFlow maybeRegisterDismissHandler:]";
          _os_log_impl(&dword_262AA8000, v20, OS_LOG_TYPE_DEFAULT, "register UIAdaptivePresentationControllerDelegate for %@. self = %@ @%s", &v23, 0x20u);
        }

        navigationController4 = [handlerCopy navigationController];
        presentationController3 = [navigationController4 presentationController];
        [presentationController3 setDelegate:self];
        goto LABEL_13;
      }

      navigationController5 = [handlerCopy navigationController];
      presentationController4 = [navigationController5 presentationController];
      delegate2 = [presentationController4 delegate];

      if (delegate2 != self)
      {
        navigationController4 = _TSLogDomain(v15);
        if (!os_log_type_enabled(navigationController4, OS_LOG_TYPE_DEFAULT))
        {
LABEL_14:

          goto LABEL_15;
        }

        presentationController3 = [handlerCopy navigationController];
        v17PresentationController = [presentationController3 presentationController];
        delegate3 = [v17PresentationController delegate];
        v23 = 138412802;
        v24 = delegate3;
        v25 = 2112;
        selfCopy2 = self;
        v27 = 2080;
        v28 = "[TSSIMSetupFlow maybeRegisterDismissHandler:]";
        _os_log_impl(&dword_262AA8000, navigationController4, OS_LOG_TYPE_DEFAULT, "UIAdaptivePresentationControllerDelegate:%@ is not self:%@ @%s", &v23, 0x20u);

LABEL_13:
        goto LABEL_14;
      }
    }
  }

LABEL_15:
}

- (void)appForegrounded
{
  v8 = *MEMORY[0x277D85DE8];
  isBootstrapAssertionRequired = [(TSSIMSetupFlow *)self isBootstrapAssertionRequired];
  if (isBootstrapAssertionRequired)
  {
    v4 = _TSLogDomain(isBootstrapAssertionRequired);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[TSSIMSetupFlow appForegrounded]";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_INFO, "[I] app in foreground, assert bootstrap @%s", &v6, 0xCu);
    }

    v5 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v5 assertUserInPurchaseFlowStartOver:0 caller:self];
  }
}

- (void)appBackgrounded
{
  v8 = *MEMORY[0x277D85DE8];
  isBootstrapAssertionRequired = [(TSSIMSetupFlow *)self isBootstrapAssertionRequired];
  if (isBootstrapAssertionRequired)
  {
    v4 = _TSLogDomain(isBootstrapAssertionRequired);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[TSSIMSetupFlow appBackgrounded]";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_INFO, "[I] app in background, deassert bootstrap @%s", &v6, 0xCu);
    }

    v5 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v5 deassertUserInPurchaseFlowWithForce:1 caller:self];
  }
}

- (void)showLoadFailureAlert:(id)alert error:(id)error
{
  alertCopy = alert;
  errorCopy = error;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__TSSIMSetupFlow_showLoadFailureAlert_error___block_invoke;
  block[3] = &unk_279B44688;
  v11 = errorCopy;
  selfCopy = self;
  v13 = alertCopy;
  v8 = alertCopy;
  v9 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __45__TSSIMSetupFlow_showLoadFailureAlert_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3 && [v3 code] == 68)
  {
    v4 = +[TSUtilities isGreenTeaCapable];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    if (v4)
    {
      v7 = @"NOT_CONNECTED_TO_WLAN";
    }

    else
    {
      v7 = @"NOT_CONNECTED_TO_WIFI";
    }

    v8 = [v5 localizedStringForKey:v7 value:&stru_28753DF48 table:@"Localizable"];

    if (+[TSUtilities isGreenTeaCapable])
    {
      v9 = @"TURN_ON_WLAN_TO_PURCHASE_PLAN";
    }

    else
    {
      v9 = @"TURN_ON_WIFI_TO_PURCHASE_PLAN";
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v10 localizedStringForKey:@"Connection Failed" value:&stru_28753DF48 table:@"Localizable"];

    v9 = @"The connection to the server was lost.  Please try again later.";
  }

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v9 value:&stru_28753DF48 table:@"Localizable"];

  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v12 preferredStyle:1];
  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__TSSIMSetupFlow_showLoadFailureAlert_error___block_invoke_2;
  v18[3] = &unk_279B44B38;
  v18[4] = *(a1 + 40);
  v17 = [v14 actionWithTitle:v16 style:0 handler:v18];
  [v13 addAction:v17];

  [*(a1 + 48) presentViewController:v13 animated:1 completion:0];
}

- (id)rootFlow
{
  selfCopy = self;
  parentFlow = [(TSSIMSetupFlow *)selfCopy parentFlow];

  if (parentFlow)
  {
    do
    {
      parentFlow2 = [(TSSIMSetupFlow *)selfCopy parentFlow];

      v5ParentFlow = [(TSSIMSetupFlow *)parentFlow2 parentFlow];

      selfCopy = parentFlow2;
    }

    while (v5ParentFlow);
  }

  else
  {
    parentFlow2 = selfCopy;
  }

  v7 = _TSLogDomain(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [TSSIMSetupFlow rootFlow];
  }

  return parentFlow2;
}

- (void)setIdleTimerDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  rootFlow = [(TSSIMSetupFlow *)self rootFlow];
  delegate = [rootFlow delegate];
  v6 = [delegate conformsToProtocol:&unk_2875CC048];

  if (v6)
  {
    delegate2 = [rootFlow delegate];
    [delegate2 setIdleTimerDisabled:disabledCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__TSSIMSetupFlow_setIdleTimerDisabled___block_invoke;
    block[3] = &__block_descriptor_33_e5_v8__0l;
    v9 = disabledCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __39__TSSIMSetupFlow_setIdleTimerDisabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 setIdleTimerDisabled:v1];
}

- (TSSIMSetupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TSSIMSetupFlow)parentFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_parentFlow);

  return WeakRetained;
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

- (UIViewController)dismissingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissingViewController);

  return WeakRetained;
}

- (TSSetupFlowItem)nextViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_nextViewController);

  return WeakRetained;
}

+ (void)_flowWithOptions:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)rootViewController
{
  v11 = *MEMORY[0x277D85DE8];
  rootFlow = [self rootFlow];
  v5 = 138412802;
  selfCopy = self;
  v7 = 2112;
  v8 = rootFlow;
  v9 = 2080;
  v10 = "[TSSIMSetupFlow rootViewController]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]root vc not find. flow - %@, root - %@ @%s", &v5, 0x20u);
}

- (void)restartWith:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 target];
  OUTLINED_FUNCTION_0();
  v5 = "[TSSIMSetupFlow restartWith:]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db] vc:%@ @%s", v4, 0x16u);
}

- (void)restartWith:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __29__TSSIMSetupFlow__startOver___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_pushStartOverViewController:(os_log_t)log from:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSSIMSetupFlow _pushStartOverViewController:from:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]cannot found old root view controller index @%s", &v1, 0xCu);
}

- (void)startOverWithFirstViewController:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v4 = "[TSSIMSetupFlow startOverWithFirstViewController:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]%@ doesnot support start over @%s", v3, 0x16u);
}

- (void)navigateToNextPaneFrom:(os_log_t)log navigationController:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]missing navigation controller, UI transition will not work @%s", &v1, 0xCu);
}

- (void)_notifyFlowCompletion:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end