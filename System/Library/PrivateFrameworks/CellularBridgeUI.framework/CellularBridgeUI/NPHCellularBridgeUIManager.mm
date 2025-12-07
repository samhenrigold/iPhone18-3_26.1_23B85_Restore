@interface NPHCellularBridgeUIManager
+ (BOOL)_isSubscriptionInUse:(id)use;
+ (id)sharedInstance;
+ (void)_presentAirplaneModeOnAlertOnViewController:(id)controller;
+ (void)_presentCellularRequiredModeAlertOnViewController:(id)controller;
+ (void)_presentErrorTitle:(id)title onViewController:(id)controller withActionTitle:(id)actionTitle actionHandler:(id)handler;
+ (void)_presentErrorTitled:(id)titled withMessage:(id)message onViewController:(id)controller;
+ (void)presentCellularError:(id)error onViewController:(id)controller;
- (BOOL)_isCarrierSetupFlowUnsupportedForServiceSubscription:(id)subscription;
- (BOOL)_isPersistentError:(id)error;
- (BOOL)_isSetupBlockingError:(id)error;
- (BOOL)allCompanionSIMsMissing;
- (BOOL)cellularPlanIsSetUp;
- (BOOL)isAnyCellularPlanActivating;
- (BOOL)isCarrierSetupFlowUnsupported;
- (BOOL)isGeminiSetup;
- (BOOL)isTinkerCrossCarrierSetup;
- (BOOL)shouldAllowUserToAddOrSetUpPlan;
- (BOOL)shouldAllowUserToTransferPlanFromDeviceWithCSN:(id)n;
- (BOOL)shouldOfferRemotePlan;
- (BOOL)shouldOfferTrialPlan;
- (NPHCellularBridgeUIManager)init;
- (NSArray)serviceSubscriptionsInUse;
- (NSArray)serviceSubscriptionsOfferingRemotePlan;
- (NSArray)serviceSubscriptionsOfferingTrialPlan;
- (NSArray)serviceSubscriptionsShouldShowAddNewRemotePlan;
- (NSArray)serviceSubscriptionsToOfferUser;
- (NSString)trialPlanType;
- (id)_activeDeviceCSNList;
- (id)_currentDeviceCSN;
- (id)_serviceSubscriptionInfoForSubscriptionContext:(id)context;
- (id)_trialPlanTypeForContext:(id)context;
- (id)carrierNameForSubscription:(id)subscription;
- (id)carrierPhoneNumberForSubscription:(id)subscription;
- (id)cellularPlanRequiringPreInstallConsent;
- (id)cellularPlans;
- (id)cellularUseErrors;
- (id)displayNameForCellularPlan:(id)plan;
- (id)formattedPhoneNumberForSubscription:(id)subscription;
- (id)lteOverrideForSubscription:(id)subscription;
- (id)simLabelForSubscription:(id)subscription;
- (id)subscriptionContextForCellularPlanItem:(id)item;
- (id)userConsentMessageForConsentType:(int64_t)type relevantPlanItem:(id)item;
- (int64_t)_minMajorWatchOSVersionForSubscription:(id)subscription;
- (int64_t)consentRequiredRelevantCellularPlanItem:(id *)item;
- (void)_ctCellularPlanInfoDidChange:(id)change;
- (void)_ctCellularRemoteProvisioningDidBecomeAvailable:(id)available;
- (void)_localPlanInfoDidChange:(id)change;
- (void)_nrPairedWatchDidBecomeActive;
- (void)_prePromptForUserConsentIfNecessary:(id)necessary;
- (void)_prePromptUserForConsentTextType:(int64_t)type relevantPlanItem:(id)item completionBlock:(id)block;
- (void)_promptForUserConsentForCarrierWebsiteIfNecessary:(id)necessary withCompletion:(id)completion;
- (void)_setUpCellularPlanDirectWithContext:(id)context onViewController:(id)controller withCompletion:(id)completion;
- (void)_setUpCellularPlanWithActivationCodeOnViewController:(id)controller withContext:(id)context withCompletion:(id)completion codelessActivationBlock:(id)block;
- (void)_updateCellularPlansWithFetch:(BOOL)fetch forCSN:(id)n;
- (void)_updateCoreTelephonyClientInfo;
- (void)_updateIsRemotePlanCapable;
- (void)_updateSIMStatusForAllSubscriptionContexts;
- (void)_updateSIMStatusForSubscriptionContext:(id)context withStatus:(id)status;
- (void)_updateServiceSubscriptionInfo:(id)info;
- (void)_updateShouldShowAddNewRemotePlan;
- (void)_updateShouldWarnAboutLTEMayImpactService;
- (void)_updateTransferableCellularPlanFromDeviceWithCSN:(id)n;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)fetchTinkerFamilyMember;
- (void)finishRemoteProvisioning;
- (void)installPendingCellularPlan:(id)plan withCompletion:(id)completion;
- (void)setUpCellularPlanOnViewController:(id)controller withContext:(id)context withCompletion:(id)completion;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)simStatusDidChange:(id)change status:(id)status;
- (void)startRemoteProvisioning;
- (void)subscriptionInfoDidChange;
- (void)transferCellularPlanOnViewController:(id)controller withCompletion:(id)completion;
- (void)updateCellularPlansWithFetch:(BOOL)fetch;
@end

@implementation NPHCellularBridgeUIManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[NPHCellularBridgeUIManager sharedInstance];
  }

  v3 = sharedInstance_sNPHCellularBridgeUIManager;

  return v3;
}

void __44__NPHCellularBridgeUIManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NPHCellularBridgeUIManager);
  v1 = sharedInstance_sNPHCellularBridgeUIManager;
  sharedInstance_sNPHCellularBridgeUIManager = v0;

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:sharedInstance_sNPHCellularBridgeUIManager selector:sel__ctCellularPlanInfoDidChange_ name:*MEMORY[0x277CF9688] object:0];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:sharedInstance_sNPHCellularBridgeUIManager selector:sel__localPlanInfoDidChange_ name:*MEMORY[0x277CF96A8] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:sharedInstance_sNPHCellularBridgeUIManager selector:sel__ctCellularRemoteProvisioningDidBecomeAvailable_ name:*MEMORY[0x277CF96B8] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = CFStringCreateWithCStringNoCopy(0, [MEMORY[0x277D37B40] watchDidBecomeActive], 0x8000100u, 0);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, sharedInstance_sNPHCellularBridgeUIManager, _NRPairedWatchDidBecomeActive, v6, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  CFRelease(v6);
}

- (NPHCellularBridgeUIManager)init
{
  v13.receiver = self;
  v13.super_class = NPHCellularBridgeUIManager;
  v2 = [(NPHCellularBridgeUIManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_outstandingPlanFlowsIdentified = 0x7FFFFFFFFFFFFFFFLL;
    v4 = objc_opt_new();
    outstandingRemotePlanItemsRequestedForCSN = v3->_outstandingRemotePlanItemsRequestedForCSN;
    v3->_outstandingRemotePlanItemsRequestedForCSN = v4;

    v6 = objc_opt_new();
    serviceSubscriptionInfoList = v3->_serviceSubscriptionInfoList;
    v3->_serviceSubscriptionInfoList = v6;

    [(NPHCellularBridgeUIManager *)v3 setTransferableRemotePlan:0];
    [(NPHCellularBridgeUIManager *)v3 setTransferableRemoteDeviceID:0];
    v8 = objc_alloc(MEMORY[0x277CC37B0]);
    v9 = dispatch_get_global_queue(0, 0);
    v10 = [v8 initWithQueue:v9];
    coreTelephonyClient = v3->_coreTelephonyClient;
    v3->_coreTelephonyClient = v10;

    [(CoreTelephonyClient *)v3->_coreTelephonyClient setDelegate:v3];
    [(NPHCellularBridgeUIManager *)v3 _updateCoreTelephonyClientInfo];
    [(NPHCellularBridgeUIManager *)v3 fetchTinkerFamilyMember];
  }

  return v3;
}

- (void)fetchTinkerFamilyMember
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[NPHCellularBridgeUIManager fetchTinkerFamilyMember]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  mEMORY[0x277CF3468] = [MEMORY[0x277CF3468] sharedInstance];
  cachedTinkerFamilyMemeber = [mEMORY[0x277CF3468] cachedTinkerFamilyMemeber];

  if (cachedTinkerFamilyMemeber)
  {
    v7 = nph_general_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[NPHCellularBridgeUIManager fetchTinkerFamilyMember]";
      v15 = 2112;
      v16 = cachedTinkerFamilyMemeber;
      _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
    }

    firstName = [cachedTinkerFamilyMemeber firstName];
    localizedCapitalizedString = [firstName localizedCapitalizedString];
    [(NPHCellularBridgeUIManager *)self setTinkerFamilyMemberFirstName:localizedCapitalizedString];
  }

  else
  {
    objc_initWeak(buf, self);
    mEMORY[0x277CF3468]2 = [MEMORY[0x277CF3468] sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__NPHCellularBridgeUIManager_fetchTinkerFamilyMember__block_invoke;
    v11[3] = &unk_278DACD40;
    objc_copyWeak(&v12, buf);
    [mEMORY[0x277CF3468]2 getActiveTinkerFamilyMemberWithCompletion:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)_updateCoreTelephonyClientInfo
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__NPHCellularBridgeUIManager__updateCoreTelephonyClientInfo__block_invoke;
  v3[3] = &unk_278DACA90;
  v3[4] = self;
  [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfo:v3];
}

void __60__NPHCellularBridgeUIManager__updateCoreTelephonyClientInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = nph_general_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[NPHCellularBridgeUIManager _updateCoreTelephonyClientInfo]_block_invoke";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s - error:%@ subscriptionInfo:%@", buf, 0x20u);
  }

  if (v6)
  {
    v9 = nph_general_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __60__NPHCellularBridgeUIManager__updateCoreTelephonyClientInfo__block_invoke_cold_1();
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__NPHCellularBridgeUIManager__updateCoreTelephonyClientInfo__block_invoke_110;
  v11[3] = &unk_278DAC898;
  v11[4] = *(a1 + 32);
  v12 = v5;
  v10 = v5;
  nph_ensure_on_main_queue(v11);
}

void __53__NPHCellularBridgeUIManager_fetchTinkerFamilyMember__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = nph_general_log(v6);
  WeakRetained = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__NPHCellularBridgeUIManager_fetchTinkerFamilyMember__block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[NPHCellularBridgeUIManager fetchTinkerFamilyMember]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_243333000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%s: %@", &v11, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = [v5 firstName];
    v10 = [v9 localizedCapitalizedString];
    [WeakRetained setTinkerFamilyMemberFirstName:v10];
  }
}

void __53__NPHCellularBridgeUIManager_fetchTinkerFamilyMember__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_updateSIMStatusForAllSubscriptionContexts
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  subscriptions = [(CTXPCServiceSubscriptionInfo *)self->_serviceSubscriptionInfo subscriptions];
  v4 = [subscriptions countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(subscriptions);
        }

        [(CoreTelephonyClient *)self->_coreTelephonyClient getSIMStatus:MEMORY[0x277D85DD0] completion:3221225472, __72__NPHCellularBridgeUIManager__updateSIMStatusForAllSubscriptionContexts__block_invoke, &unk_278DACA68, self, *(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [subscriptions countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_activeDeviceCSNList
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
  v4 = [mEMORY[0x277D37B50] getDevicesExcluding:4];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    v10 = *MEMORY[0x277D37B60];
    *&v7 = 138412546;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 valueForProperty:{v10, v16, v17}];
        v14 = nph_general_log(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v16;
          v22 = v13;
          v23 = 2112;
          v24 = v12;
          _os_log_impl(&dword_243333000, v14, OS_LOG_TYPE_DEFAULT, "CSN:%@ device:%@", buf, 0x16u);
        }

        if (v13)
        {
          [v2 addObject:v13];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v8);
  }

  return v2;
}

void __72__NPHCellularBridgeUIManager__updateSIMStatusForAllSubscriptionContexts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = nph_general_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[NPHCellularBridgeUIManager _updateSIMStatusForAllSubscriptionContexts]_block_invoke";
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s - status:%@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__NPHCellularBridgeUIManager__updateSIMStatusForAllSubscriptionContexts__block_invoke_108;
  v10[3] = &unk_278DACA40;
  v11 = v6;
  v12 = *(a1 + 32);
  v13 = v5;
  v8 = v5;
  v9 = v6;
  nph_ensure_on_main_queue(v10);
}

uint64_t __72__NPHCellularBridgeUIManager__updateSIMStatusForAllSubscriptionContexts__block_invoke_108(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = nph_general_log(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __72__NPHCellularBridgeUIManager__updateSIMStatusForAllSubscriptionContexts__block_invoke_108_cold_1();
    }
  }

  return [*(a1 + 40) _updateSIMStatusForSubscriptionContext:*(a1 + 48) withStatus:*(a1 + 56)];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = NPHCellularBridgeUIManager;
  [(NPHCellularBridgeUIManager *)&v4 dealloc];
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  v20 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  statusCopy = status;
  v8 = nph_general_log(statusCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[NPHCellularBridgeUIManager simStatusDidChange:status:]";
    v16 = 2112;
    v17 = changeCopy;
    v18 = 2112;
    v19 = statusCopy;
    _os_log_impl(&dword_243333000, v8, OS_LOG_TYPE_DEFAULT, "%s context:%@ status:%@", buf, 0x20u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__NPHCellularBridgeUIManager_simStatusDidChange_status___block_invoke;
  v11[3] = &unk_278DAC8E8;
  v11[4] = self;
  v12 = changeCopy;
  v13 = statusCopy;
  v9 = statusCopy;
  v10 = changeCopy;
  nph_ensure_on_main_queue(v11);
}

- (void)subscriptionInfoDidChange
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[NPHCellularBridgeUIManager subscriptionInfoDidChange]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(NPHCellularBridgeUIManager *)self _updateCoreTelephonyClientInfo];
}

- (void)activeSubscriptionsDidChange
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[NPHCellularBridgeUIManager activeSubscriptionsDidChange]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(NPHCellularBridgeUIManager *)self _updateCoreTelephonyClientInfo];
}

- (void)_updateSIMStatusForSubscriptionContext:(id)context withStatus:(id)status
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  statusCopy = status;
  v8 = nph_general_log(statusCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315650;
    v22 = "[NPHCellularBridgeUIManager _updateSIMStatusForSubscriptionContext:withStatus:]";
    v23 = 2112;
    v24 = contextCopy;
    v25 = 2112;
    v26 = statusCopy;
    _os_log_impl(&dword_243333000, v8, OS_LOG_TYPE_DEFAULT, "%s context:%@ status:%@", &v21, 0x20u);
  }

  if (!contextCopy)
  {
    v10 = nph_general_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager _updateSIMStatusForSubscriptionContext:withStatus:];
    }
  }

  v11 = [(NPHCellularBridgeUIManager *)self _serviceSubscriptionInfoForSubscriptionContext:contextCopy];
  sIMStatus = [v11 SIMStatus];
  v13 = [sIMStatus isEqualToString:statusCopy];

  if ((v13 & 1) == 0)
  {
    v14 = [statusCopy copy];
    [v11 setSIMStatus:v14];

    v16 = nph_general_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sIMStatus2 = [v11 SIMStatus];
      v21 = 136315394;
      v22 = "[NPHCellularBridgeUIManager _updateSIMStatusForSubscriptionContext:withStatus:]";
      v23 = 2112;
      v24 = sIMStatus2;
      _os_log_impl(&dword_243333000, v16, OS_LOG_TYPE_DEFAULT, "%s - serviceSubscriptionInfo.SIMStatus:%@", &v21, 0x16u);
    }

    v19 = nph_general_log(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[NPHCellularBridgeUIManager _updateSIMStatusForSubscriptionContext:withStatus:]";
      _os_log_impl(&dword_243333000, v19, OS_LOG_TYPE_DEFAULT, "%s - posting NPHCellularPlanInfoDidChangeNotification 4", &v21, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:NPHCellularPlanInfoDidChangeNotification object:self userInfo:0];
  }
}

- (void)_localPlanInfoDidChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = nph_general_log(changeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[NPHCellularBridgeUIManager _localPlanInfoDidChange:]";
    v8 = 2112;
    v9 = changeCopy;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v6, 0x16u);
  }

  [(NPHCellularBridgeUIManager *)self _updateCoreTelephonyClientInfo];
}

- (id)_currentDeviceCSN
{
  v11 = *MEMORY[0x277D85DE8];
  activeDevice = [MEMORY[0x277D37B48] activeDevice];
  v3 = nph_general_log(activeDevice);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[NPHCellularBridgeUIManager _currentDeviceCSN]";
    v9 = 2112;
    v10 = activeDevice;
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s device:%@", &v7, 0x16u);
  }

  v4 = [activeDevice valueForProperty:*MEMORY[0x277D37B60]];
  v5 = nph_general_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[NPHCellularBridgeUIManager _currentDeviceCSN]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s CSN:%@", &v7, 0x16u);
  }

  return v4;
}

- (void)_setUpCellularPlanDirectWithContext:(id)context onViewController:(id)controller withCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  controllerCopy = controller;
  completionCopy = completion;
  v11 = nph_general_log(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[NPHCellularBridgeUIManager _setUpCellularPlanDirectWithContext:onViewController:withCompletion:]";
    _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__NPHCellularBridgeUIManager__setUpCellularPlanDirectWithContext_onViewController_withCompletion___block_invoke;
  v15[3] = &unk_278DACAE0;
  objc_copyWeak(&v20, buf);
  v12 = contextCopy;
  v16 = v12;
  v13 = controllerCopy;
  v17 = v13;
  v14 = completionCopy;
  selfCopy = self;
  v19 = v14;
  [(NPHCellularBridgeUIManager *)self _prePromptForUserConsentIfNecessary:v15];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __98__NPHCellularBridgeUIManager__setUpCellularPlanDirectWithContext_onViewController_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__NPHCellularBridgeUIManager__setUpCellularPlanDirectWithContext_onViewController_withCompletion___block_invoke_2;
  v11[3] = &unk_278DACAB8;
  objc_copyWeak(v14, (a1 + 64));
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  *&v10 = v6;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14[1] = a2;
  [WeakRetained _promptForUserConsentForCarrierWebsiteIfNecessary:v5 withCompletion:v11];

  objc_destroyWeak(v14);
}

void __98__NPHCellularBridgeUIManager__setUpCellularPlanDirectWithContext_onViewController_withCompletion___block_invoke_2(uint64_t a1, int a2)
{
  v24[5] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained setHostViewController:v3];

    v5 = *(a1 + 56);
    v6 = objc_loadWeakRetained((a1 + 64));
    [v6 setHostCompletionBlock:v5];

    v7 = objc_loadWeakRetained((a1 + 64));
    v8 = [v7 _serviceSubscriptionInfoForSubscriptionContext:*(a1 + 40)];

    v23[0] = @"FlowTypeKey";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:7];
    v24[0] = v9;
    v23[1] = @"CarrierNameKey";
    v10 = [*(a1 + 48) carrierNameForSubscription:*(a1 + 40)];
    v11 = *(a1 + 40);
    v24[1] = v10;
    v24[2] = v11;
    v23[2] = @"SubscriptionContextKey";
    v23[3] = @"UserResponse";
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
    v24[3] = v12;
    v23[4] = @"LiveIdEnabledKey";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v8, "planFlows") >> 6) & 1}];
    v24[4] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];

    v15 = [MEMORY[0x277D49528] flowWithOptions:v14];
    v16 = objc_loadWeakRetained((a1 + 64));
    [v16 setFlow:v15];

    v17 = objc_loadWeakRetained((a1 + 64));
    v18 = [v17 flow];
    v19 = [v18 firstViewController];

    v20 = objc_loadWeakRetained((a1 + 64));
    v21 = [v20 flow];
    [v21 setDelegate:*(a1 + 48)];

    v22 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v19];
    [*(a1 + 32) presentViewController:v22 animated:1 completion:0];
  }
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = nph_general_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[NPHCellularBridgeUIManager simSetupFlowCompleted:]";
    v9 = 2048;
    completedCopy = completed;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s: %lu", &v7, 0x16u);
  }

  if ((IsCurrentDevicePairing() & 1) == 0)
  {
    hostViewController = [(NPHCellularBridgeUIManager *)self hostViewController];
    [hostViewController dismissViewControllerAnimated:1 completion:0];
  }

  [(NPHCellularBridgeUIManager *)self setFlow:0];
}

- (void)_setUpCellularPlanWithActivationCodeOnViewController:(id)controller withContext:(id)context withCompletion:(id)completion codelessActivationBlock:(id)block
{
  controllerCopy = controller;
  contextCopy = context;
  completionCopy = completion;
  blockCopy = block;
  v13 = +[NPHCellularBridgeUIManager sharedInstance];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __134__NPHCellularBridgeUIManager__setUpCellularPlanWithActivationCodeOnViewController_withContext_withCompletion_codelessActivationBlock___block_invoke;
  v18[3] = &unk_278DACB08;
  v21 = completionCopy;
  v22 = blockCopy;
  v19 = contextCopy;
  v20 = controllerCopy;
  v14 = controllerCopy;
  v15 = contextCopy;
  v16 = blockCopy;
  v17 = completionCopy;
  [v13 _prePromptForUserConsentIfNecessary:v18];
}

void __134__NPHCellularBridgeUIManager__setUpCellularPlanWithActivationCodeOnViewController_withContext_withCompletion_codelessActivationBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = nph_general_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[NPHCellularBridgeUIManager _setUpCellularPlanWithActivationCodeOnViewController:withContext:withCompletion:codelessActivationBlock:]_block_invoke";
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v5 = objc_alloc_init(NPHBSCellularFauxCardViewController);
  [(NPHBSCellularFauxCardViewController *)v5 setCompletion:*(a1 + 48)];
  [(NPHBSCellularFauxCardViewController *)v5 setCodelessActivationBlock:*(a1 + 56)];
  [(NPHBSCellularFauxCardViewController *)v5 setUserConsentResponse:a2];
  [(NPHBSCellularFauxCardViewController *)v5 setSubscriptionContext:*(a1 + 32)];
  v6 = objc_alloc_init(NPHBSCellularFauxCardNavigationController);
  [(NPHBSCellularFauxCardNavigationController *)v6 pushViewController:v5 animated:0];
  [(NPHBSCellularFauxCardNavigationController *)v6 setModalPresentationStyle:5];
  [*(a1 + 40) presentViewController:v6 animated:1 completion:0];
}

- (void)installPendingCellularPlan:(id)plan withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x277CF96D8];
  planCopy = plan;
  sharedManager = [v6 sharedManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__NPHCellularBridgeUIManager_installPendingCellularPlan_withCompletion___block_invoke;
  v10[3] = &unk_278DACB58;
  v11 = completionCopy;
  v9 = completionCopy;
  [sharedManager installPendingRemotePlan:planCopy completion:v10];
}

void __72__NPHCellularBridgeUIManager_installPendingCellularPlan_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = nph_general_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __72__NPHCellularBridgeUIManager_installPendingCellularPlan_withCompletion___block_invoke_cold_1();
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__NPHCellularBridgeUIManager_installPendingCellularPlan_withCompletion___block_invoke_137;
  v8[3] = &unk_278DACB30;
  v6 = *(a1 + 32);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  nph_ensure_on_main_queue(v8);
}

uint64_t __72__NPHCellularBridgeUIManager_installPendingCellularPlan_withCompletion___block_invoke_137(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (BOOL)shouldAllowUserToTransferPlanFromDeviceWithCSN:(id)n
{
  v18 = *MEMORY[0x277D85DE8];
  nCopy = n;
  v5 = nph_general_log(nCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[NPHCellularBridgeUIManager shouldAllowUserToTransferPlanFromDeviceWithCSN:]";
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v14, 0xCu);
  }

  [(NPHCellularBridgeUIManager *)self _updateTransferableCellularPlanFromDeviceWithCSN:nCopy];
  transferableRemoteDeviceID = [(NPHCellularBridgeUIManager *)self transferableRemoteDeviceID];
  if (transferableRemoteDeviceID)
  {
    transferableRemotePlan = [(NPHCellularBridgeUIManager *)self transferableRemotePlan];
    v8 = transferableRemotePlan != 0;
  }

  else
  {
    v8 = 0;
  }

  v10 = nph_general_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    integerValue = [v11 integerValue];
    v14 = 136315394;
    v15 = "[NPHCellularBridgeUIManager shouldAllowUserToTransferPlanFromDeviceWithCSN:]";
    v16 = 2048;
    v17 = integerValue;
    _os_log_impl(&dword_243333000, v10, OS_LOG_TYPE_DEFAULT, "%s: %ld", &v14, 0x16u);
  }

  return v8;
}

- (void)_updateTransferableCellularPlanFromDeviceWithCSN:(id)n
{
  v67[1] = *MEMORY[0x277D85DE8];
  nCopy = n;
  v5 = nph_general_log(nCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v58 = "[NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:]";
    v59 = 2112;
    v60 = nCopy;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s CSN: %@", buf, 0x16u);
  }

  if ([nCopy length])
  {
    _currentDeviceCSN = [(NPHCellularBridgeUIManager *)self _currentDeviceCSN];
    v7 = [nCopy isEqualToString:_currentDeviceCSN];

    if (v7)
    {
      v9 = nph_general_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:];
      }

      v10 = 0;
      goto LABEL_13;
    }

    coreTelephonyClient = self->_coreTelephonyClient;
    v56 = 0;
    v9 = [(CoreTelephonyClient *)coreTelephonyClient getRemoteDeviceForTransferWithEID:nCopy error:&v56];
    v10 = v56;
    if (v9)
    {
      v67[0] = v9;
      devices = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
      goto LABEL_12;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v11 = self->_coreTelephonyClient;
  v55 = 0;
  v9 = [(CoreTelephonyClient *)v11 getRemoteDevicesForTransferOrError:&v55];
  v10 = v55;
  if (!v9)
  {
    goto LABEL_13;
  }

  devices = [v9 devices];
LABEL_12:
  v14 = devices;
LABEL_14:

  v16 = nph_general_log(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v14 count];
    *buf = 136315394;
    v58 = "[NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:]";
    v59 = 2048;
    v60 = v17;
    _os_log_impl(&dword_243333000, v16, OS_LOG_TYPE_DEFAULT, "%s - paired watches count:%ld", buf, 0x16u);
  }

  if (v10)
  {
    v19 = nph_general_log(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:];
    }

    goto LABEL_20;
  }

  if (![v14 count])
  {
LABEL_20:
    [(NPHCellularBridgeUIManager *)self setTransferableRemotePlan:0];
    [(NPHCellularBridgeUIManager *)self setTransferableRemoteDeviceID:0];
    goto LABEL_52;
  }

  v41 = nCopy;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v40 = v14;
  obj = v14;
  v44 = [obj countByEnumeratingWithState:&v51 objects:v66 count:16];
  if (!v44)
  {
    goto LABEL_49;
  }

  v20 = 0;
  v43 = *v52;
  do
  {
    v21 = 0;
    do
    {
      if (*v52 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v45 = v21;
      v22 = *(*(&v51 + 1) + 8 * v21);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      remotePlans = [v22 remotePlans];
      v23 = [remotePlans countByEnumeratingWithState:&v47 objects:v65 count:16];
      if (!v23)
      {
        goto LABEL_47;
      }

      v24 = v23;
      v25 = *v48;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(remotePlans);
          }

          v27 = *(*(&v47 + 1) + 8 * i);
          transferAttributes = [v27 transferAttributes];
          if ([transferAttributes transferCapability] == 2)
          {
          }

          else
          {
            transferAttributes2 = [v27 transferAttributes];
            transferCapability = [transferAttributes2 transferCapability];

            if (transferCapability != 4)
            {
              deviceID = nph_general_log(v29);
              if (os_log_type_enabled(deviceID, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v58 = "[NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:]";
                v59 = 2112;
                v60 = v27;
                _os_log_error_impl(&dword_243333000, deviceID, OS_LOG_TYPE_ERROR, "%s - Non-Transferable Plan:%@", buf, 0x16u);
              }

              goto LABEL_41;
            }
          }

          v32 = nph_general_log(v29);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v58 = "[NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:]";
            v59 = 2112;
            v60 = v27;
            _os_log_impl(&dword_243333000, v32, OS_LOG_TYPE_DEFAULT, "%s - Transferable Plan:%@", buf, 0x16u);
          }

          if (v20 >= 1)
          {
            v35 = nph_general_log(v33);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [(NPHCellularBridgeUIManager *)v63 _updateTransferableCellularPlanFromDeviceWithCSN:v35];
            }

            [(NPHCellularBridgeUIManager *)self setTransferableRemotePlan:0];
            [(NPHCellularBridgeUIManager *)self setTransferableRemoteDeviceID:0];
            ++v20;
            goto LABEL_47;
          }

          [(NPHCellularBridgeUIManager *)self setTransferableRemotePlan:v27];
          deviceID = [v22 deviceID];
          [(NPHCellularBridgeUIManager *)self setTransferableRemoteDeviceID:deviceID];
          ++v20;
LABEL_41:
        }

        v24 = [remotePlans countByEnumeratingWithState:&v47 objects:v65 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }

LABEL_47:

      v21 = v45 + 1;
    }

    while (v45 + 1 != v44);
    v44 = [obj countByEnumeratingWithState:&v51 objects:v66 count:16];
  }

  while (v44);
LABEL_49:

  v37 = nph_general_log(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    transferableRemotePlan = [(NPHCellularBridgeUIManager *)self transferableRemotePlan];
    transferableRemoteDeviceID = [(NPHCellularBridgeUIManager *)self transferableRemoteDeviceID];
    *buf = 136315650;
    v58 = "[NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:]";
    v59 = 2112;
    v60 = transferableRemotePlan;
    v61 = 2112;
    v62 = transferableRemoteDeviceID;
    _os_log_impl(&dword_243333000, v37, OS_LOG_TYPE_DEFAULT, "%s - TransferableRemote Plan: %@ DeviceID: %@", buf, 0x20u);
  }

  v10 = 0;
  nCopy = v41;
  v14 = v40;
LABEL_52:
}

- (void)setUpCellularPlanOnViewController:(id)controller withContext:(id)context withCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  contextCopy = context;
  completionCopy = completion;
  v12 = nph_general_log(completionCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[NPHCellularBridgeUIManager setUpCellularPlanOnViewController:withContext:withCompletion:]";
    _os_log_impl(&dword_243333000, v12, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_storeStrong(&self->_hostViewController, controller);
  self->_hostCompletionBlock = completionCopy;
  if (contextCopy)
  {
    v14 = [(NPHCellularBridgeUIManager *)self _serviceSubscriptionInfoForSubscriptionContext:contextCopy];
    if ([(NPHCellularBridgeUIManager *)self allCompanionSIMsMissing])
    {
      v15 = [MEMORY[0x277CCA9B8] NPHCellularErrorWithCode:2 forSubscriptionContext:contextCopy];
      [objc_opt_class() presentCellularError:v15 onViewController:controllerCopy];
    }

    else if ([(NPHCellularBridgeUIManager *)self _isCarrierSetupFlowUnsupportedForServiceSubscription:v14])
    {
      v16 = [MEMORY[0x277CCA9B8] NPHCellularErrorWithCode:3 forSubscriptionContext:contextCopy];
      [objc_opt_class() presentCellularError:v16 onViewController:controllerCopy];
    }

    else if (([v14 planFlows]& 1) != 0)
    {
      [(NPHCellularBridgeUIManager *)self _setUpCellularPlanDirectWithContext:contextCopy onViewController:controllerCopy withCompletion:completionCopy];
    }

    else if (([v14 planFlows]& 2) != 0)
    {
      [(NPHCellularBridgeUIManager *)self _setUpCellularPlanWithActivationCodeOnViewController:controllerCopy withContext:contextCopy withCompletion:completionCopy codelessActivationBlock:0];
    }

    else
    {
      objc_initWeak(buf, self);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __91__NPHCellularBridgeUIManager_setUpCellularPlanOnViewController_withContext_withCompletion___block_invoke;
      v17[3] = &unk_278DACB80;
      objc_copyWeak(&v21, buf);
      v18 = contextCopy;
      v19 = controllerCopy;
      v20 = completionCopy;
      [(NPHCellularBridgeUIManager *)self _setUpCellularPlanWithActivationCodeOnViewController:v19 withContext:v18 withCompletion:v20 codelessActivationBlock:v17];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v14 = nph_general_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager setUpCellularPlanOnViewController:withContext:withCompletion:];
    }
  }
}

void __91__NPHCellularBridgeUIManager_setUpCellularPlanOnViewController_withContext_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setUpCellularPlanDirectWithContext:*(a1 + 32) onViewController:*(a1 + 40) withCompletion:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)transferCellularPlanOnViewController:(id)controller withCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  v9 = nph_general_log(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[NPHCellularBridgeUIManager transferCellularPlanOnViewController:withCompletion:]";
    _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_storeStrong(&self->_hostViewController, controller);
  self->_hostCompletionBlock = completionCopy;
  transferableRemotePlan = [(NPHCellularBridgeUIManager *)self transferableRemotePlan];
  if (transferableRemotePlan && (v11 = transferableRemotePlan, [(NPHCellularBridgeUIManager *)self transferableRemoteDeviceID], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    transferableRemotePlan2 = [(NPHCellularBridgeUIManager *)self transferableRemotePlan];
    planID = [transferableRemotePlan2 planID];
    transferableRemoteDeviceID = [(NPHCellularBridgeUIManager *)self transferableRemoteDeviceID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__NPHCellularBridgeUIManager_transferCellularPlanOnViewController_withCompletion___block_invoke;
    v18[3] = &unk_278DACBA8;
    v18[4] = self;
    v19 = completionCopy;
    [(CoreTelephonyClient *)coreTelephonyClient transferRemotePlan:planID fromDevice:transferableRemoteDeviceID completion:v18];

    v17 = v19;
  }

  else
  {
    v17 = nph_general_log(transferableRemotePlan);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager transferCellularPlanOnViewController:v17 withCompletion:?];
    }
  }
}

void __82__NPHCellularBridgeUIManager_transferCellularPlanOnViewController_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nph_general_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __82__NPHCellularBridgeUIManager_transferCellularPlanOnViewController_withCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  if (!v4)
  {
    [*(a1 + 32) setTransferableRemotePlan:0];
    [*(a1 + 32) setTransferableRemoteDeviceID:0];
  }
}

- (void)_prePromptForUserConsentIfNecessary:(id)necessary
{
  v13 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  v5 = [MEMORY[0x277CF96D8] calculateInstallConsentTextTypeFor:self->_proxyPlanItems];
  v6 = nph_general_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[NPHCellularBridgeUIManager _prePromptForUserConsentIfNecessary:]";
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_243333000, v6, OS_LOG_TYPE_DEFAULT, "%s - consentTextType:%ld", &v9, 0x16u);
  }

  if (v5 == 5)
  {
    if ([(NSArray *)self->_proxyPlanItems count]!= 1)
    {
      goto LABEL_5;
    }

    selfCopy2 = self;
    v8 = 5;
LABEL_9:
    [(NPHCellularBridgeUIManager *)selfCopy2 _prePromptUserForConsentTextType:v8 relevantPlanItem:0 completionBlock:necessaryCopy];
    goto LABEL_10;
  }

  if (v5 == 4)
  {
    selfCopy2 = self;
    v8 = 4;
    goto LABEL_9;
  }

LABEL_5:
  necessaryCopy[2](necessaryCopy, 0);
LABEL_10:
}

- (void)_prePromptUserForConsentTextType:(int64_t)type relevantPlanItem:(id)item completionBlock:(id)block
{
  blockCopy = block;
  v9 = [(NPHCellularBridgeUIManager *)self userConsentMessageForConsentType:type relevantPlanItem:item];
  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v9 preferredStyle:0];
  [v10 setModalPresentationStyle:2];
  v11 = MEMORY[0x277D750F8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CONSENT_DELETE_ACTION" value:&stru_285611AE0 table:0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __96__NPHCellularBridgeUIManager__prePromptUserForConsentTextType_relevantPlanItem_completionBlock___block_invoke;
  v29[3] = &unk_278DACBD0;
  v14 = blockCopy;
  v30 = v14;
  v15 = [v11 actionWithTitle:v13 style:2 handler:v29];

  [v10 addAction:v15];
  if (type == 5)
  {
    v16 = MEMORY[0x277D750F8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"CONSENT_KEEP_ACTION" value:&stru_285611AE0 table:0];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __96__NPHCellularBridgeUIManager__prePromptUserForConsentTextType_relevantPlanItem_completionBlock___block_invoke_2;
    v27 = &unk_278DACBD0;
    v28 = v14;
    v19 = [v16 actionWithTitle:v18 style:0 handler:&v24];

    [v10 addAction:{v19, v24, v25, v26, v27}];
  }

  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"CONSENT_CANCEL" value:&stru_285611AE0 table:0];
  v23 = [v20 actionWithTitle:v22 style:1 handler:&__block_literal_global_159];

  [v10 addAction:v23];
  [(UIViewController *)self->_hostViewController presentViewController:v10 animated:1 completion:0];
}

- (id)userConsentMessageForConsentType:(int64_t)type relevantPlanItem:(id)item
{
  v46 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = itemCopy;
  v8 = 0;
  v9 = 1;
  if (type > 3)
  {
    if (type == 4)
    {
      v9 = 0;
      v10 = 0;
      v8 = @"CONSENT_CURRENT_PLAN_CANNOT_BE_DISABLED";
      goto LABEL_14;
    }

    if (type == 5)
    {
      v10 = 0;
      v8 = @"CONSENT_CURRENT_PLAN_CANNOT_BE_DELETED";
      goto LABEL_14;
    }

    v10 = 1;
    if (type != 7)
    {
      goto LABEL_14;
    }

LABEL_9:
    v10 = 0;
    v8 = @"CONSENT_NEW_PLAN_INSTALL";
    goto LABEL_14;
  }

  if (type == 1)
  {
    v10 = 0;
    v8 = @"CONSENT_NEW_PLAN_CANNOT_BE_DISABLED";
    goto LABEL_14;
  }

  if (type == 2)
  {
    v10 = 0;
    v8 = @"CONSENT_NEW_PLAN_CANNOT_BE_DELETED";
    goto LABEL_14;
  }

  v10 = 1;
  if (type == 3)
  {
    goto LABEL_9;
  }

LABEL_14:
  v11 = nph_general_log(itemCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v41 = "[NPHCellularBridgeUIManager userConsentMessageForConsentType:relevantPlanItem:]";
    v42 = 2048;
    typeCopy = type;
    v44 = 2112;
    v45 = v8;
    _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "%s - consentType:%ld consentMessageKey:%@", buf, 0x20u);
  }

  if (v10)
  {
    v8 = 0;
    v12 = 0;
    goto LABEL_40;
  }

  if ([(__CFString *)v8 isEqualToString:@"CONSENT_NEW_PLAN_INSTALL"])
  {
    v13 = MGGetBoolAnswer();
    v14 = @"WIFI";
    if (v13)
    {
      v14 = @"WLAN";
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v8, v14];
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:v15 value:&stru_285611AE0 table:0];
    tinkerFamilyMemberFirstName = [(NPHCellularBridgeUIManager *)self tinkerFamilyMemberFirstName];
    v12 = [v16 stringWithFormat:v18, tinkerFamilyMemberFirstName];

    if (type != 7)
    {
      goto LABEL_39;
    }

    v20 = [v12 mutableCopy];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"CONSENT_NEW_PLAN_INSTALL_911_INFO" value:&stru_285611AE0 table:0];
    [(__CFString *)v20 appendFormat:@"\n\n%@", v22];

    v23 = [(__CFString *)v20 copy];
  }

  else
  {
    plan = [v7 plan];
    carrierName = [plan carrierName];

    if (carrierName)
    {
      v26 = carrierName;
    }

    else
    {
      v26 = &stru_285611AE0;
    }

    v15 = v26;

    selectedCellularPlan = [(NPHCellularBridgeUIManager *)self selectedCellularPlan];
    plan2 = [selectedCellularPlan plan];
    carrierName2 = [plan2 carrierName];

    if (carrierName2)
    {
      v30 = carrierName2;
    }

    else
    {
      v30 = &stru_285611AE0;
    }

    v20 = v30;

    v31 = [(__CFString *)v15 length];
    v32 = [(__CFString *)v20 length];
    if (v31)
    {
      v33 = v9;
    }

    else
    {
      v33 = 0;
    }

    v34 = (v31 != 0) & ~v9;
    if (!v32)
    {
      v34 = 0;
    }

    if ((v34 & 1) == 0 && (v33 & 1) == 0)
    {
      v8 = [(__CFString *)v8 stringByAppendingString:@"_NO_NAME"];
    }

    v35 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = [v12 localizedStringForKey:v8 value:&stru_285611AE0 table:0];
    v39[0] = v15;
    v39[1] = v20;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v23 = [v35 stringWithPositionalSpecifiersFormat:v36 arguments:v37];
  }

  v12 = v23;
LABEL_39:

LABEL_40:

  return v12;
}

- (void)updateCellularPlansWithFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  v30 = *MEMORY[0x277D85DE8];
  v5 = nph_general_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[NPHCellularBridgeUIManager updateCellularPlansWithFetch:]";
    v25 = 1024;
    *v26 = fetchCopy;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s - fetch:%d", buf, 0x12u);
  }

  _activeDeviceCSNList = [(NPHCellularBridgeUIManager *)self _activeDeviceCSNList];
  v7 = nph_general_log(_activeDeviceCSNList);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[NPHCellularBridgeUIManager updateCellularPlansWithFetch:]";
    v25 = 2112;
    *v26 = _activeDeviceCSNList;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s - pairedDeviceCSNs:%@", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = _activeDeviceCSNList;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v20;
    *&v10 = 136315906;
    v18 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [(NSMutableSet *)self->_outstandingRemotePlanItemsRequestedForCSN containsObject:v14, v18, v19];
        if (!v15 || fetchCopy)
        {
          [(NSMutableSet *)self->_outstandingRemotePlanItemsRequestedForCSN addObject:v14];
          [(NPHCellularBridgeUIManager *)self _updateCellularPlansWithFetch:fetchCopy forCSN:v14];
        }

        else
        {
          v16 = nph_general_log(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            outstandingRemotePlanItemsRequestedForCSN = self->_outstandingRemotePlanItemsRequestedForCSN;
            *buf = v18;
            v24 = "[NPHCellularBridgeUIManager updateCellularPlansWithFetch:]";
            v25 = 1024;
            *v26 = 0;
            *&v26[4] = 2112;
            *&v26[6] = outstandingRemotePlanItemsRequestedForCSN;
            v27 = 2112;
            v28 = v14;
            _os_log_impl(&dword_243333000, v16, OS_LOG_TYPE_DEFAULT, "%s IGNORING request for updateCellularPlansWithFetch: fetch:%d _outstandingRemotePlanItemsRequestedForCSN:%@ CSN:%@", buf, 0x26u);
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v11);
  }
}

- (void)_updateCellularPlansWithFetch:(BOOL)fetch forCSN:(id)n
{
  fetchCopy = fetch;
  v18 = *MEMORY[0x277D85DE8];
  nCopy = n;
  v7 = nph_general_log(nCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[NPHCellularBridgeUIManager _updateCellularPlansWithFetch:forCSN:]";
    v14 = 1024;
    v15 = fetchCopy;
    v16 = 2112;
    v17 = nCopy;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s - fetch:%d CSN:%@", buf, 0x1Cu);
  }

  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke;
  v10[3] = &unk_278DACC38;
  v10[4] = self;
  v11 = nCopy;
  v9 = nCopy;
  [mEMORY[0x277CF96D8] remotePlanItemsWithUpdateFetch:fetchCopy withCSN:v9 completion:v10];
}

void __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke_2;
  v10[3] = &unk_278DACA40;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v5;
  v9 = v6;
  nph_ensure_on_main_queue(v10);
}

void __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = nph_general_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136315650;
    v25 = "[NPHCellularBridgeUIManager _updateCellularPlansWithFetch:forCSN:]_block_invoke_2";
    v26 = 2112;
    v27 = v3;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_243333000, v2, OS_LOG_TYPE_DEFAULT, "%s - error:%@ items:%@", buf, 0x20u);
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(*(a1 + 48) + 48);
  v8 = *(a1 + 32);
  [v7 removeObject:v6];
  if (!v5)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v9 = [MEMORY[0x277CCA9B8] NPHCellularSanitizedError:v8 forSubscriptionContext:0];

  if (v9)
  {
    v11 = nph_general_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke_2_cold_1();
    }

    v22 = NPHCellularPlanInfoError;
    v23 = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 sortedArrayUsingComparator:&__block_literal_global_202];
  v14 = *(a1 + 48);
  v15 = *(v14 + 32);
  *(v14 + 32) = v13;

  v17 = nph_general_log(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[NPHCellularBridgeUIManager _updateCellularPlansWithFetch:forCSN:]_block_invoke_2";
    _os_log_impl(&dword_243333000, v17, OS_LOG_TYPE_DEFAULT, "%s - posting NPHCellularPlanInfoDidChangeNotification 1", buf, 0xCu);
  }

  v19 = nph_general_log(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(*(a1 + 48) + 32);
    *buf = 136315394;
    v25 = "[NPHCellularBridgeUIManager _updateCellularPlansWithFetch:forCSN:]_block_invoke";
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&dword_243333000, v19, OS_LOG_TYPE_DEFAULT, "%s - posting _proxyPlanItems:%@", buf, 0x16u);
  }

  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  [v21 postNotificationName:NPHCellularPlanInfoDidChangeNotification object:*(a1 + 48) userInfo:v12];

  [*(a1 + 48) _updateShouldShowAddNewRemotePlan];
  [*(a1 + 48) _updateIsRemotePlanCapable];
  [*(a1 + 48) _updateShouldWarnAboutLTEMayImpactService];
}

uint64_t __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke_199(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)_serviceSubscriptionInfoForSubscriptionContext:(id)context
{
  contextCopy = context;
  serviceSubscriptionInfoList = self->_serviceSubscriptionInfoList;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
  v7 = [(NSMutableDictionary *)serviceSubscriptionInfoList objectForKeyedSubscript:v6];

  serviceSubscriptionContext = [v7 serviceSubscriptionContext];
  v9 = [serviceSubscriptionContext isEqual:contextCopy];

  if ((v9 & 1) == 0)
  {
    v10 = objc_opt_new();

    [v10 setShouldOfferRemotePlan:1];
    [v10 setServiceSubscriptionContext:contextCopy];
    v11 = self->_serviceSubscriptionInfoList;
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

    v7 = v10;
  }

  return v7;
}

- (void)_updateShouldShowAddNewRemotePlan
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_outstandingPlanFlowsIdentified == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_outstandingPlanFlowsIdentified = 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  obj = [(CTXPCServiceSubscriptionInfo *)self->_serviceSubscriptionInfo subscriptions];
  v3 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        ++self->_outstandingPlanFlowsIdentified;
        mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __63__NPHCellularBridgeUIManager__updateShouldShowAddNewRemotePlan__block_invoke;
        v10[3] = &unk_278DACC88;
        v10[4] = self;
        v10[5] = v7;
        [mEMORY[0x277CF96D8] shouldShowAddNewRemotePlanWithContext:v7 completion:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __63__NPHCellularBridgeUIManager__updateShouldShowAddNewRemotePlan__block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__NPHCellularBridgeUIManager__updateShouldShowAddNewRemotePlan__block_invoke_2;
  v13[3] = &unk_278DACC60;
  v14 = *(a1 + 32);
  v18 = a2;
  v16 = v9;
  v17 = a3;
  v15 = v10;
  v11 = v9;
  v12 = v10;
  nph_ensure_on_main_queue(v13);
}

void __63__NPHCellularBridgeUIManager__updateShouldShowAddNewRemotePlan__block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 40);
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = nph_general_log(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __63__NPHCellularBridgeUIManager__updateShouldShowAddNewRemotePlan__block_invoke_2_cold_1();
    }

    v2 = *(a1 + 40);
  }

  v4 = [*(a1 + 32) _serviceSubscriptionInfoForSubscriptionContext:v2];
  v5 = *(a1 + 72);
  v6 = *(a1 + 64);
  v7 = nph_general_log(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    *buf = 136315906;
    v30 = "[NPHCellularBridgeUIManager _updateShouldShowAddNewRemotePlan]_block_invoke";
    v31 = 1024;
    *v32 = v5;
    *&v32[4] = 2048;
    *&v32[6] = v6;
    *&v32[14] = 2112;
    *&v32[16] = v8;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s - shouldShowAddNewRemotePlan:%d option:%lu shouldShowAddError:%@", buf, 0x26u);
  }

  if (v5 == [v4 shouldShowAddNewRemotePlan])
  {
    if ([v4 planFlows] == v6)
    {
      v9 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    [v4 setShouldShowAddNewRemotePlan:v5];
    [v4 planFlows];
  }

  [v4 setPlanFlows:v6];
  if ([v4 shouldShowAddNewRemotePlan])
  {
    v10 = ([v4 planFlows] >> 2) & 1;
  }

  else
  {
    v10 = 0;
  }

  [v4 setShouldOfferTrialPlan:v10];
  if ([v4 shouldShowAddNewRemotePlan])
  {
    v11 = ([v4 planFlows] >> 3) & 1;
  }

  else
  {
    v11 = 0;
  }

  [v4 setShouldOfferSignupCompletion:v11];
  if ([v4 shouldOfferTrialPlan])
  {
    v12 = [*(a1 + 56) copy];
    [v4 setTrialPlanType:v12];
  }

  else
  {
    v13 = [v4 setTrialPlanType:0];
  }

  v14 = nph_general_log(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v4 shouldOfferTrialPlan];
    v16 = [v4 shouldOfferSignupCompletion];
    v17 = [v4 trialPlanType];
    *buf = 136315906;
    v30 = "[NPHCellularBridgeUIManager _updateShouldShowAddNewRemotePlan]_block_invoke";
    v31 = 1024;
    *v32 = v15;
    *&v32[4] = 1024;
    *&v32[6] = v16;
    *&v32[10] = 2112;
    *&v32[12] = v17;
    _os_log_impl(&dword_243333000, v14, OS_LOG_TYPE_DEFAULT, "%s - shouldOfferTrialPlan:%d shouldOfferSignupCompletion:%d trialPlanType:%@", buf, 0x22u);
  }

  v9 = 1;
LABEL_23:
  v18 = [MEMORY[0x277CCA9B8] NPHCellularSanitizedError:*(a1 + 48) forSubscriptionContext:*(a1 + 40)];
  v19 = nph_general_log(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "[NPHCellularBridgeUIManager _updateShouldShowAddNewRemotePlan]_block_invoke";
    v31 = 2112;
    *v32 = v18;
    _os_log_impl(&dword_243333000, v19, OS_LOG_TYPE_DEFAULT, "%s - sanitizedShouldShowAddError:%@", buf, 0x16u);
  }

  v20 = [*(a1 + 32) _isPersistentError:v18];
  if (!v18 || v20)
  {
    v23 = [v4 persistentError];
    v24 = v18 | v23;

    if (v24)
    {
      v21 = [v4 setPersistentError:v18];
    }

    else if (!v9)
    {
      goto LABEL_35;
    }

    v22 = 0;
  }

  else
  {
    v27 = NPHCellularPlanInfoError;
    v28 = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v22 = v21;
  }

  v25 = nph_general_log(v21);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[NPHCellularBridgeUIManager _updateShouldShowAddNewRemotePlan]_block_invoke";
    _os_log_impl(&dword_243333000, v25, OS_LOG_TYPE_DEFAULT, "%s - posting NPHCellularPlanInfoDidChangeNotification 2", buf, 0xCu);
  }

  v26 = [MEMORY[0x277CCAB98] defaultCenter];
  [v26 postNotificationName:NPHCellularPlanInfoDidChangeNotification object:*(a1 + 32) userInfo:v22];

LABEL_35:
}

- (void)_updateIsRemotePlanCapable
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[NPHCellularBridgeUIManager _updateIsRemotePlanCapable]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = [(CTXPCServiceSubscriptionInfo *)self->_serviceSubscriptionInfo subscriptions];
  v4 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __56__NPHCellularBridgeUIManager__updateIsRemotePlanCapable__block_invoke;
        v11[3] = &unk_278DACCD8;
        v11[4] = v8;
        v11[5] = self;
        [mEMORY[0x277CF96D8] isRemotePlanCapableWithContext:v8 completion:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

void __56__NPHCellularBridgeUIManager__updateIsRemotePlanCapable__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__NPHCellularBridgeUIManager__updateIsRemotePlanCapable__block_invoke_2;
  v2[3] = &unk_278DACCB0;
  v3 = *(a1 + 32);
  v4 = a2;
  nph_ensure_on_main_queue(v2);
}

void __56__NPHCellularBridgeUIManager__updateIsRemotePlanCapable__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = nph_general_log(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __56__NPHCellularBridgeUIManager__updateIsRemotePlanCapable__block_invoke_2_cold_1();
    }

    v2 = *(a1 + 32);
  }

  v4 = [*(a1 + 40) _serviceSubscriptionInfoForSubscriptionContext:v2];
  v5 = nph_general_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 shouldOfferRemotePlan];
    v7 = *(a1 + 48);
    v14 = 136315650;
    v15 = "[NPHCellularBridgeUIManager _updateIsRemotePlanCapable]_block_invoke";
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s from:%d to :%d", &v14, 0x18u);
  }

  v8 = *(a1 + 48);
  if (v8 != [v4 shouldOfferRemotePlan])
  {
    v9 = nph_general_log([v4 setShouldOfferRemotePlan:*(a1 + 48)]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 shouldOfferRemotePlan];
      v14 = 136315394;
      v15 = "[NPHCellularBridgeUIManager _updateIsRemotePlanCapable]_block_invoke";
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "%s - shouldOfferRemotePlan:%d", &v14, 0x12u);
    }

    v12 = nph_general_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[NPHCellularBridgeUIManager _updateIsRemotePlanCapable]_block_invoke";
      _os_log_impl(&dword_243333000, v12, OS_LOG_TYPE_DEFAULT, "%s - posting NPHCellularPlanInfoDidChangeNotification 3", &v14, 0xCu);
    }

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 postNotificationName:NPHCellularPlanInfoDidChangeNotification object:*(a1 + 40) userInfo:0];
  }
}

- (void)_updateShouldWarnAboutLTEMayImpactService
{
  v18 = *MEMORY[0x277D85DE8];
  CTSUServerConnectionRef(self, a2);
  MayImpactService = _CTServerConnectionShouldWarnDisabledLteMayImpactService();
  v4 = MayImpactService;
  v5 = HIDWORD(MayImpactService);
  v6 = nph_general_log(MayImpactService);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v11 = "[NPHCellularBridgeUIManager _updateShouldWarnAboutLTEMayImpactService]";
    v12 = 1024;
    v13 = 0;
    v14 = 1024;
    v15 = v4;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&dword_243333000, v6, OS_LOG_TYPE_DEFAULT, "%s - _CTServerConnectionShouldWarnDisabledLteMayImpactService:%d error.domain:%d, error.error:%d", buf, 0x1Eu);
  }

  if (v4)
  {
    defaultCenter = nph_general_log(v7);
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager _updateShouldWarnAboutLTEMayImpactService];
    }
  }

  else
  {
    if (!self->LTEMayImpactService)
    {
      return;
    }

    self->LTEMayImpactService = 0;
    v9 = nph_general_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[NPHCellularBridgeUIManager _updateShouldWarnAboutLTEMayImpactService]";
      _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "%s - posting NPHCellularPlanInfoDidChangeNotification 4", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:NPHCellularPlanInfoDidChangeNotification object:self userInfo:0];
  }
}

- (NSArray)serviceSubscriptionsToOfferUser
{
  v40 = *MEMORY[0x277D85DE8];
  v30 = objc_opt_new();
  v3 = nph_general_log(v30);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    serviceSubscriptionInfoList = self->_serviceSubscriptionInfoList;
    *buf = 136315394;
    v37 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
    v38 = 2112;
    v39 = serviceSubscriptionInfoList;
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s - _serviceSubscriptionInfoList:%@", buf, 0x16u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  allValues = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v6 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v11 = nph_general_log(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v37 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
          v38 = 2112;
          v39 = v10;
          _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "%s - serviceSubscriptionInfo:%@", buf, 0x16u);
        }

        if ([(NSMutableDictionary *)v10 shouldShowAddNewRemotePlan])
        {
          persistentError = [(NSMutableDictionary *)v10 persistentError];
          if ([(NPHCellularBridgeUIManager *)self _isSetupBlockingError:persistentError])
          {
          }

          else
          {
            if ([objc_opt_class() _isSubscriptionInUse:v10])
            {

LABEL_27:
              v25 = nph_general_log(v23);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v37 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
                v38 = 2112;
                v39 = v10;
                _os_log_impl(&dword_243333000, v25, OS_LOG_TYPE_DEFAULT, "%s - offer:%@", buf, 0x16u);
              }

              serviceSubscriptionContext = [(NSMutableDictionary *)v10 serviceSubscriptionContext];
              [(NSMutableDictionary *)v30 addObject:serviceSubscriptionContext];
LABEL_30:

              goto LABEL_31;
            }

            v24 = +[NPHSharedUtilities isActiveDeviceTinker];

            if (v24)
            {
              goto LABEL_27;
            }
          }
        }

        shouldShowAddNewRemotePlan = [(NSMutableDictionary *)v10 shouldShowAddNewRemotePlan];
        if ((shouldShowAddNewRemotePlan & 1) == 0)
        {
          v14 = nph_general_log(shouldShowAddNewRemotePlan);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            shouldShowAddNewRemotePlan2 = [(NSMutableDictionary *)v10 shouldShowAddNewRemotePlan];
            *buf = 136315394;
            v37 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
            v38 = 1024;
            LODWORD(v39) = shouldShowAddNewRemotePlan2;
            _os_log_impl(&dword_243333000, v14, OS_LOG_TYPE_DEFAULT, "%s - REJECTED: shouldShowAddNewRemotePlan:%d", buf, 0x12u);
          }
        }

        persistentError2 = [(NSMutableDictionary *)v10 persistentError];
        v17 = [(NPHCellularBridgeUIManager *)self _isSetupBlockingError:persistentError2];

        if (v17)
        {
          v19 = nph_general_log(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            persistentError3 = [(NSMutableDictionary *)v10 persistentError];
            *buf = 136315394;
            v37 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
            v38 = 2112;
            v39 = persistentError3;
            _os_log_impl(&dword_243333000, v19, OS_LOG_TYPE_DEFAULT, "%s - REJECTED: persistent error:%@", buf, 0x16u);
          }
        }

        v6 = [objc_opt_class() _isSubscriptionInUse:v10];
        if ((v6 & 1) == 0)
        {
          serviceSubscriptionContext = nph_general_log(v6);
          if (os_log_type_enabled(serviceSubscriptionContext, OS_LOG_TYPE_DEFAULT))
          {
            sIMStatus = [(NSMutableDictionary *)v10 SIMStatus];
            *buf = 136315394;
            v37 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
            v38 = 2112;
            v39 = sIMStatus;
            _os_log_impl(&dword_243333000, serviceSubscriptionContext, OS_LOG_TYPE_DEFAULT, "%s - REJECTED: not in use:%@", buf, 0x16u);
          }

          goto LABEL_30;
        }

LABEL_31:
        ++v9;
      }

      while (v7 != v9);
      v6 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
      v7 = v6;
    }

    while (v6);
  }

  v27 = nph_general_log(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
    v38 = 2112;
    v39 = v30;
    _os_log_impl(&dword_243333000, v27, OS_LOG_TYPE_DEFAULT, "%s - serviceSubscriptionsToOfferUser:%@", buf, 0x16u);
  }

  v28 = [(NSMutableDictionary *)v30 copy];

  return v28;
}

- (BOOL)isGeminiSetup
{
  serviceSubscriptionsInUse = [(NPHCellularBridgeUIManager *)self serviceSubscriptionsInUse];
  v3 = [serviceSubscriptionsInUse count] > 1;

  return v3;
}

- (BOOL)isTinkerCrossCarrierSetup
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = +[NPHSharedUtilities isActiveDeviceTinker];
  if (v3)
  {
    cellularPlanRequiringPreInstallConsent = [(NPHCellularBridgeUIManager *)self cellularPlanRequiringPreInstallConsent];
    v5 = cellularPlanRequiringPreInstallConsent != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = nph_general_log(v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[NPHCellularBridgeUIManager isTinkerCrossCarrierSetup]";
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_243333000, v6, OS_LOG_TYPE_DEFAULT, "%s: %d", &v8, 0x12u);
  }

  return v5;
}

+ (BOOL)_isSubscriptionInUse:(id)use
{
  useCopy = use;
  sIMStatus = [useCopy SIMStatus];
  if ([sIMStatus isEqualToString:*MEMORY[0x277CC3F00]])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[NPHCellularBridgeUIManager sharedInstance];
    if ([v6 isTinkerCrossCarrierSetup])
    {
      sIMStatus2 = [useCopy SIMStatus];
      v5 = [sIMStatus2 isEqualToString:*MEMORY[0x277CC3ED8]];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSArray)serviceSubscriptionsInUse
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v5 = [allValues countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([objc_opt_class() _isSubscriptionInUse:v9])
        {
          serviceSubscriptionContext = [v9 serviceSubscriptionContext];
          [v3 addObject:serviceSubscriptionContext];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v6);
  }

  v12 = nph_general_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[NPHCellularBridgeUIManager serviceSubscriptionsInUse]";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_243333000, v12, OS_LOG_TYPE_DEFAULT, "%s serviceSubscriptionsInUse:%@", buf, 0x16u);
  }

  v13 = [v3 copy];

  return v13;
}

- (NSArray)serviceSubscriptionsShouldShowAddNewRemotePlan
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v5 = [allValues countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 shouldShowAddNewRemotePlan] && objc_msgSend(objc_opt_class(), "_isSubscriptionInUse:", v9))
        {
          serviceSubscriptionContext = [v9 serviceSubscriptionContext];
          [v3 addObject:serviceSubscriptionContext];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v6);
  }

  v12 = nph_general_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[NPHCellularBridgeUIManager serviceSubscriptionsShouldShowAddNewRemotePlan]";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_243333000, v12, OS_LOG_TYPE_DEFAULT, "%s serviceSubscriptionsShouldShowAddNewRemotePlan:%@", buf, 0x16u);
  }

  v13 = [v3 copy];

  return v13;
}

- (NSArray)serviceSubscriptionsOfferingRemotePlan
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = nph_general_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    serviceSubscriptionInfoList = self->_serviceSubscriptionInfoList;
    *buf = 136315394;
    v23 = "[NPHCellularBridgeUIManager serviceSubscriptionsOfferingRemotePlan]";
    v24 = 2112;
    v25 = serviceSubscriptionInfoList;
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s _serviceSubscriptionInfoList:%@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v7 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([objc_opt_class() _isSubscriptionInUse:v11] && objc_msgSend(v11, "shouldOfferRemotePlan"))
        {
          serviceSubscriptionContext = [v11 serviceSubscriptionContext];
          [(NSMutableDictionary *)v3 addObject:serviceSubscriptionContext];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = nph_general_log(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[NPHCellularBridgeUIManager serviceSubscriptionsOfferingRemotePlan]";
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_243333000, v14, OS_LOG_TYPE_DEFAULT, "%s serviceSubscriptionsOfferingRemotePlan:%@", buf, 0x16u);
  }

  v15 = [(NSMutableDictionary *)v3 copy];

  return v15;
}

- (BOOL)shouldOfferRemotePlan
{
  if (![(NSMutableDictionary *)self->_serviceSubscriptionInfoList count])
  {
    return 1;
  }

  serviceSubscriptionsOfferingRemotePlan = [(NPHCellularBridgeUIManager *)self serviceSubscriptionsOfferingRemotePlan];
  v4 = [serviceSubscriptionsOfferingRemotePlan count] != 0;

  return v4;
}

- (NSArray)serviceSubscriptionsOfferingTrialPlan
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v5 = [allValues countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([objc_opt_class() _isSubscriptionInUse:v9] && objc_msgSend(v9, "shouldOfferTrialPlan"))
        {
          serviceSubscriptionContext = [v9 serviceSubscriptionContext];
          [v3 addObject:serviceSubscriptionContext];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v6);
  }

  v12 = nph_general_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[NPHCellularBridgeUIManager serviceSubscriptionsOfferingTrialPlan]";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_243333000, v12, OS_LOG_TYPE_DEFAULT, "%s serviceSubscriptionsOfferingTrialPlan:%@", buf, 0x16u);
  }

  v13 = [v3 copy];

  return v13;
}

- (BOOL)shouldOfferTrialPlan
{
  serviceSubscriptionsOfferingTrialPlan = [(NPHCellularBridgeUIManager *)self serviceSubscriptionsOfferingTrialPlan];
  v3 = [serviceSubscriptionsOfferingTrialPlan count] != 0;

  return v3;
}

- (id)cellularPlans
{
  v2 = [(NSArray *)self->_proxyPlanItems copy];

  return v2;
}

- (id)cellularPlanRequiringPreInstallConsent
{
  v10 = *MEMORY[0x277D85DE8];
  if (+[NPHSharedUtilities isActiveDeviceTinker])
  {
    v3 = [(NSArray *)self->_proxyPlanItems firstObjectPassingTest:&__block_literal_global_213];
    v4 = nph_general_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[NPHCellularBridgeUIManager cellularPlanRequiringPreInstallConsent]";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s cellularPlanRequiringConsent:%@", &v6, 0x16u);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL __68__NPHCellularBridgeUIManager_cellularPlanRequiringPreInstallConsent__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = nph_general_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 plan];
    v8 = 136315394;
    v9 = "[NPHCellularBridgeUIManager cellularPlanRequiringPreInstallConsent]_block_invoke";
    v10 = 1024;
    v11 = [v4 status];
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s planItem.status:%d", &v8, 0x12u);
  }

  v5 = [v2 plan];
  v6 = [v5 status] == 12;

  return v6;
}

- (BOOL)cellularPlanIsSetUp
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_proxyPlanItems;
  isSelected2 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v21 count:16];
  v4 = isSelected2;
  if (isSelected2)
  {
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = nph_general_log(isSelected2);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          isSelected = [v7 isSelected];
          *buf = 136315650;
          v16 = "[NPHCellularBridgeUIManager cellularPlanIsSetUp]";
          v17 = 1024;
          v18 = isSelected;
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&dword_243333000, v8, OS_LOG_TYPE_DEFAULT, "%s planItem.isSelected:%d planItem:%@", buf, 0x1Cu);
        }

        isSelected2 = [v7 isSelected];
        if (isSelected2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_13;
        }

        ++v6;
      }

      while (v4 != v6);
      isSelected2 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v21 count:16];
      v4 = isSelected2;
      if (isSelected2)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v4;
}

- (BOOL)isAnyCellularPlanActivating
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(NPHCellularBridgeUIManager *)self cellularPlans];
  v2 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * v5);
        v7 = nph_general_log(v2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          plan = [v6 plan];
          status = [plan status];
          *buf = 136315650;
          v25 = "[NPHCellularBridgeUIManager isAnyCellularPlanActivating]";
          v26 = 1024;
          v27 = status;
          v28 = 2112;
          v29 = v6;
          _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s planItem.status:%d planItem:%@", buf, 0x1Cu);
        }

        plan2 = [v6 plan];
        if ([plan2 status] == 2)
        {
          goto LABEL_22;
        }

        plan3 = [v6 plan];
        if ([plan3 status] == 11)
        {
          goto LABEL_21;
        }

        plan4 = [v6 plan];
        if ([plan4 status] == 6)
        {
          goto LABEL_20;
        }

        plan5 = [v6 plan];
        if ([plan5 status] == 7)
        {
          goto LABEL_19;
        }

        plan6 = [v6 plan];
        if ([plan6 status] == 9)
        {

LABEL_19:
LABEL_20:

LABEL_21:
LABEL_22:

LABEL_23:
          v17 = 1;
          goto LABEL_24;
        }

        plan7 = [v6 plan];
        status2 = [plan7 status];

        if (status2 == 13)
        {
          goto LABEL_23;
        }

        ++v5;
      }

      while (v3 != v5);
      v2 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
      v3 = v2;
      v17 = 0;
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_24:

  return v17;
}

- (int64_t)consentRequiredRelevantCellularPlanItem:(id *)item
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(NSArray *)self->_proxyPlanItems firstObjectPassingTest:&__block_literal_global_215];
  v6 = v5;
  if (!v5 || ([v5 plan], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "status"), v7, v8 != 7))
  {
    v11 = 0;
    goto LABEL_16;
  }

  v9 = [(NSArray *)self->_proxyPlanItems firstObjectPassingTest:&__block_literal_global_217];
  v10 = [(NSArray *)self->_proxyPlanItems firstObjectPassingTest:&__block_literal_global_219];
  v11 = [MEMORY[0x277CF96D8] calculateInstallConsentTextTypeFor:self->_proxyPlanItems];
  v12 = 0;
  if (v11 > 3)
  {
    v13 = v6;
    if (v11 != 7)
    {
      if (v11 == 5)
      {
        v13 = v9;
      }

      else
      {
        v13 = v10;
        if (v11 != 4)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    v13 = v6;
    if ((v11 - 1) >= 3)
    {
      goto LABEL_13;
    }
  }

  v12 = v13;
LABEL_13:
  if (item)
  {
    v12 = v12;
    *item = v12;
  }

LABEL_16:
  v14 = nph_general_log(v5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[NPHCellularBridgeUIManager consentRequiredRelevantCellularPlanItem:]";
    v18 = 2048;
    v19 = v11;
    _os_log_impl(&dword_243333000, v14, OS_LOG_TYPE_DEFAULT, "%s - consentRequiredType:%ld", &v16, 0x16u);
  }

  return v11;
}

uint64_t __70__NPHCellularBridgeUIManager_consentRequiredRelevantCellularPlanItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 plan];
  v3 = [v2 isDeleteNotAllowed];

  return v3;
}

uint64_t __70__NPHCellularBridgeUIManager_consentRequiredRelevantCellularPlanItem___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 plan];
  v3 = [v2 isDisableNotAllowed];

  return v3;
}

- (void)_ctCellularPlanInfoDidChange:(id)change
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = nph_general_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[NPHCellularBridgeUIManager _ctCellularPlanInfoDidChange:]";
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(NPHCellularBridgeUIManager *)self updateCellularPlansWithFetch:0];
}

- (void)_ctCellularRemoteProvisioningDidBecomeAvailable:(id)available
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = nph_general_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[NPHCellularBridgeUIManager _ctCellularRemoteProvisioningDidBecomeAvailable:]";
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(NPHCellularBridgeUIManager *)self updateCellularPlansWithFetch:1];
}

- (void)_nrPairedWatchDidBecomeActive
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[NPHCellularBridgeUIManager _nrPairedWatchDidBecomeActive]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(NPHCellularBridgeUIManager *)self fetchTinkerFamilyMember];
  [(NPHCellularBridgeUIManager *)self updateCellularPlansWithFetch:1];
}

- (void)_updateServiceSubscriptionInfo:(id)info
{
  v11 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = nph_general_log(infoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[NPHCellularBridgeUIManager _updateServiceSubscriptionInfo:]";
    v9 = 2112;
    v10 = infoCopy;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s info:%@", &v7, 0x16u);
  }

  serviceSubscriptionInfo = self->_serviceSubscriptionInfo;
  self->_serviceSubscriptionInfo = infoCopy;

  [(NPHCellularBridgeUIManager *)self _updateSIMStatusForAllSubscriptionContexts];
  [(NPHCellularBridgeUIManager *)self updateCellularPlansWithFetch:0];
}

- (void)startRemoteProvisioning
{
  v14 = *MEMORY[0x277D85DE8];
  _activeDeviceCSNList = [(NPHCellularBridgeUIManager *)self _activeDeviceCSNList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [_activeDeviceCSNList countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(_activeDeviceCSNList);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
        [mEMORY[0x277CF96D8] startRemoteProvisioningForCSN:v7 completion:&__block_literal_global_221];

        ++v6;
      }

      while (v4 != v6);
      v4 = [_activeDeviceCSNList countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void __53__NPHCellularBridgeUIManager_startRemoteProvisioning__block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[NPHCellularBridgeUIManager startRemoteProvisioning]_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s - startRemoteProvisioningWithCompletion success:%d", &v4, 0x12u);
  }
}

- (void)finishRemoteProvisioning
{
  v14 = *MEMORY[0x277D85DE8];
  _activeDeviceCSNList = [(NPHCellularBridgeUIManager *)self _activeDeviceCSNList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [_activeDeviceCSNList countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(_activeDeviceCSNList);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
        [mEMORY[0x277CF96D8] finishRemoteProvisioningForCSN:v7 completion:&__block_literal_global_223];

        ++v6;
      }

      while (v4 != v6);
      v4 = [_activeDeviceCSNList countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void __54__NPHCellularBridgeUIManager_finishRemoteProvisioning__block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[NPHCellularBridgeUIManager finishRemoteProvisioning]_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s - finishRemoteProvisioningWithCompletion success:%d", &v4, 0x12u);
  }
}

- (id)subscriptionContextForCellularPlanItem:(id)item
{
  v19 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subscriptions = [(CTXPCServiceSubscriptionInfo *)self->_serviceSubscriptionInfo subscriptions];
  v6 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(subscriptions);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        companionSlotUuid = [itemCopy companionSlotUuid];
        uuid = [v9 uuid];
        v12 = [companionSlotUuid isEqual:uuid];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)displayNameForCellularPlan:(id)plan
{
  v23 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  if ([(NPHCellularBridgeUIManager *)self isGeminiSetup])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    serviceSubscriptionsInUse = [(NPHCellularBridgeUIManager *)self serviceSubscriptionsInUse];
    v6 = [serviceSubscriptionsInUse countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(serviceSubscriptionsInUse);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          companionSlotUuid = [planCopy companionSlotUuid];
          uuid = [v10 uuid];
          v13 = [companionSlotUuid isEqual:uuid];

          if (v13)
          {
            v14 = [(NPHCellularBridgeUIManager *)self simLabelForSubscription:v10];
            goto LABEL_13;
          }
        }

        v7 = [serviceSubscriptionsInUse countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_13:
  }

  else
  {
    v14 = 0;
  }

  if (![v14 length])
  {
    plan = [planCopy plan];
    carrierName = [plan carrierName];

    v14 = carrierName;
  }

  return v14;
}

- (id)carrierNameForSubscription:(id)subscription
{
  v4 = MEMORY[0x277CC3620];
  subscriptionCopy = subscription;
  v6 = [[v4 alloc] initWithBundleType:1];
  coreTelephonyClient = self->_coreTelephonyClient;
  v13 = 0;
  v8 = [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValue:subscriptionCopy key:@"CarrierName" bundleType:v6 error:&v13];

  v9 = v13;
  v10 = v9;
  if (v9)
  {
    v11 = nph_general_log(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager carrierNameForSubscription:];
    }
  }

  return v8;
}

- (id)carrierPhoneNumberForSubscription:(id)subscription
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CC3620];
  subscriptionCopy = subscription;
  v6 = [[v4 alloc] initWithBundleType:1];
  coreTelephonyClient = self->_coreTelephonyClient;
  v14 = 0;
  v8 = [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValue:subscriptionCopy key:@"WatchCustomerServicePhoneNumber" bundleType:v6 error:&v14];

  v9 = v14;
  v10 = nph_general_log(v9);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager carrierPhoneNumberForSubscription:];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[NPHCellularBridgeUIManager carrierPhoneNumberForSubscription:]";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "%s - %@", buf, 0x16u);
    }

    v11 = TUHomeCountryCode();
    v12 = TUFormattedPhoneNumber();

    v8 = v12;
  }

  return v8;
}

- (id)formattedPhoneNumberForSubscription:(id)subscription
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v11 = 0;
  v4 = [(CoreTelephonyClient *)coreTelephonyClient getPhoneNumber:subscription error:&v11];
  v5 = v11;
  v6 = v5;
  if (v5)
  {
    number = nph_general_log(v5);
    if (os_log_type_enabled(number, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager formattedPhoneNumberForSubscription:];
    }

    v8 = 0;
  }

  else
  {
    number = [v4 number];
    v9 = TUHomeCountryCode();
    v8 = TUFormattedPhoneNumber();
  }

  return v8;
}

- (id)lteOverrideForSubscription:(id)subscription
{
  v4 = MEMORY[0x277CC3620];
  subscriptionCopy = subscription;
  v6 = [[v4 alloc] initWithBundleType:1];
  coreTelephonyClient = self->_coreTelephonyClient;
  v13 = 0;
  v8 = [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValueWithDefault:subscriptionCopy key:@"DataIndicatorOverrideForLTE" bundleType:v6 error:&v13];

  v9 = v13;
  v10 = v9;
  if (v9)
  {
    v11 = nph_general_log(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager lteOverrideForSubscription:];
    }
  }

  if (![(__CFString *)v8 length])
  {

    v8 = @"LTE";
  }

  return v8;
}

- (id)simLabelForSubscription:(id)subscription
{
  v17 = *MEMORY[0x277D85DE8];
  coreTelephonyClient = self->_coreTelephonyClient;
  v10 = 0;
  v4 = [(CoreTelephonyClient *)coreTelephonyClient getSimLabel:subscription error:&v10];
  v5 = v10;
  text = [v4 text];

  v8 = nph_general_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[NPHCellularBridgeUIManager simLabelForSubscription:]";
    v13 = 2112;
    v14 = text;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_243333000, v8, OS_LOG_TYPE_DEFAULT, "%s - Label: %@ Error: %@", buf, 0x20u);
  }

  return text;
}

- (NSString)trialPlanType
{
  serviceSubscriptionsInUse = [(NPHCellularBridgeUIManager *)self serviceSubscriptionsInUse];
  firstObject = [serviceSubscriptionsInUse firstObject];
  v5 = [(NPHCellularBridgeUIManager *)self _trialPlanTypeForContext:firstObject];

  return v5;
}

- (id)_trialPlanTypeForContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = nph_general_log(contextCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[NPHCellularBridgeUIManager _trialPlanTypeForContext:]";
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s - subscriptionContext: %@", &v11, 0x16u);
  }

  v6 = [(NPHCellularBridgeUIManager *)self _serviceSubscriptionInfoForSubscriptionContext:contextCopy];
  v7 = nph_general_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[NPHCellularBridgeUIManager _trialPlanTypeForContext:]";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s - serviceSubscriptionInfo: %@", &v11, 0x16u);
  }

  trialPlanType = [v6 trialPlanType];
  v9 = nph_general_log(trialPlanType);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[NPHCellularBridgeUIManager _trialPlanTypeForContext:]";
    v13 = 2112;
    v14 = trialPlanType;
    _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "%s - trialPlanType: %@", &v11, 0x16u);
  }

  return trialPlanType;
}

- (int64_t)_minMajorWatchOSVersionForSubscription:(id)subscription
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CC3620];
  subscriptionCopy = subscription;
  v6 = [[v4 alloc] initWithBundleType:1];
  coreTelephonyClient = self->_coreTelephonyClient;
  v17 = 0;
  v8 = [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValueWithDefault:subscriptionCopy key:@"RemoteCardProvisioningSettings" bundleType:v6 error:&v17];

  v9 = v17;
  NSLog(&stru_285612000.isa, v8);
  v10 = [v8 objectForKeyedSubscript:@"MinCompatibleWatchOS"];
  v11 = nph_general_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[NPHCellularBridgeUIManager _minMajorWatchOSVersionForSubscription:]";
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_INFO, "%s - copyCarrierBundleValue for minWatchOSVersion:%@ error:%@", buf, 0x20u);
  }

  if ([v10 length])
  {
    v12 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
    v13 = [v10 componentsSeparatedByCharactersInSet:v12];

    v14 = [v13 objectAtIndexedSubscript:0];
    integerValue = [v14 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (BOOL)shouldAllowUserToAddOrSetUpPlan
{
  serviceSubscriptionsToOfferUser = [(NPHCellularBridgeUIManager *)self serviceSubscriptionsToOfferUser];
  v3 = [serviceSubscriptionsToOfferUser count] != 0;

  return v3;
}

- (BOOL)_isSetupBlockingError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:NPHCellularErrorDomain];

  if (!v5)
  {
    domain2 = [errorCopy domain];
    v9 = [domain2 isEqualToString:*MEMORY[0x277CF9680]];

    if (!v9)
    {
      v7 = 0;
      goto LABEL_11;
    }

    if ([errorCopy code] != 21 && objc_msgSend(errorCopy, "code") != 27 && objc_msgSend(errorCopy, "code") != 14)
    {
      v6 = 32;
      goto LABEL_4;
    }

LABEL_9:
    v7 = 1;
    goto LABEL_11;
  }

  if ([errorCopy code] == 3)
  {
    goto LABEL_9;
  }

  v6 = 2;
LABEL_4:
  v7 = [errorCopy code] == v6;
LABEL_11:

  return v7;
}

- (id)cellularUseErrors
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if ([(NPHCellularBridgeUIManager *)self allCompanionSIMsMissing]&& ![(NPHCellularBridgeUIManager *)self cellularPlanIsSetUp])
  {
    v16 = [MEMORY[0x277CCA9B8] NPHCellularErrorWithCode:2 forSubscriptionContext:0];
    [v3 addObject:v16];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allValues = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
    v5 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v19 + 1) + 8 * v8);
          persistentError = [v9 persistentError];
          if (persistentError)
          {
            [v3 addObject:persistentError];
          }

          else
          {
            proxyPlanItems = self->_proxyPlanItems;
            if (proxyPlanItems && ![(NSArray *)proxyPlanItems count]&& [(NPHCellularBridgeUIManager *)self _isCarrierSetupFlowUnsupportedForServiceSubscription:v9])
            {
              v12 = MEMORY[0x277CCA9B8];
              serviceSubscriptionContext = [v9 serviceSubscriptionContext];
              v14 = [v12 NPHCellularErrorWithCode:3 forSubscriptionContext:serviceSubscriptionContext];
              [v3 addObject:v14];
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v15 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
        v6 = v15;
      }

      while (v15);
    }
  }

  v17 = [v3 copy];

  return v17;
}

- (BOOL)_isPersistentError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CF9680]])
  {
    v5 = [errorCopy code] == 14 || objc_msgSend(errorCopy, "code") == 20 || objc_msgSend(errorCopy, "code") == 27 || objc_msgSend(errorCopy, "code") == 21 || objc_msgSend(errorCopy, "code") == 32 || objc_msgSend(errorCopy, "code") == 22;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)allCompanionSIMsMissing
{
  allValues = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v3 = [allValues hasObjectPassingTest:&__block_literal_global_254];

  return v3 ^ 1;
}

uint64_t __53__NPHCellularBridgeUIManager_allCompanionSIMsMissing__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 SIMStatus];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v2 SIMStatus];
    v6 = [v5 isEqualToString:*MEMORY[0x277CC3ED8]] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_isCarrierSetupFlowUnsupportedForServiceSubscription:(id)subscription
{
  outstandingPlanFlowsIdentified = self->_outstandingPlanFlowsIdentified;
  subscriptionCopy = subscription;
  v5 = outstandingPlanFlowsIdentified | [subscriptionCopy planFlows];
  sIMStatus = [subscriptionCopy SIMStatus];

  LOBYTE(subscriptionCopy) = [sIMStatus isEqualToString:*MEMORY[0x277CC3F00]];
  return (v5 == 0) & subscriptionCopy;
}

- (BOOL)isCarrierSetupFlowUnsupported
{
  allValues = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__NPHCellularBridgeUIManager_isCarrierSetupFlowUnsupported__block_invoke;
  v6[3] = &unk_278DACD88;
  v6[4] = self;
  v4 = [allValues firstObjectPassingTest:v6];

  return v4 == 0;
}

+ (void)_presentErrorTitled:(id)titled withMessage:(id)message onViewController:(id)controller
{
  v22 = *MEMORY[0x277D85DE8];
  titledCopy = titled;
  messageCopy = message;
  controllerCopy = controller;
  v10 = nph_general_log(controllerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "+[NPHCellularBridgeUIManager _presentErrorTitled:withMessage:onViewController:]";
    v18 = 2112;
    v19 = titledCopy;
    v20 = 2112;
    v21 = messageCopy;
    _os_log_impl(&dword_243333000, v10, OS_LOG_TYPE_DEFAULT, "%s - title: %@  message: %@", &v16, 0x20u);
  }

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:titledCopy message:messageCopy preferredStyle:1];
  [v11 setModalPresentationStyle:2];
  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"ERROR_OK" value:&stru_285611AE0 table:0];
  v15 = [v12 actionWithTitle:v14 style:0 handler:0];

  [v11 addAction:v15];
  [controllerCopy presentViewController:v11 animated:1 completion:0];
}

+ (void)presentCellularError:(id)error onViewController:(id)controller
{
  errorCopy = error;
  controllerCopy = controller;
  v8 = nph_general_log(controllerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[NPHCellularBridgeUIManager presentCellularError:onViewController:];
  }

  domain = [errorCopy domain];
  v10 = *MEMORY[0x277CF9680];
  if ([domain isEqualToString:*MEMORY[0x277CF9680]])
  {
    code = [errorCopy code];

    if (code == 16)
    {
      v12 = [errorCopy description];
      BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();

      goto LABEL_23;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:v10])
  {
    code2 = [errorCopy code];

    if (code2 == 28)
    {
      [self _presentAirplaneModeOnAlertOnViewController:controllerCopy];
      goto LABEL_23;
    }
  }

  else
  {
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqualToString:v10])
  {
    code3 = [errorCopy code];

    if (code3 == 29)
    {
      [self _presentCellularRequiredModeAlertOnViewController:controllerCopy];
      goto LABEL_23;
    }
  }

  else
  {
  }

  domain4 = [errorCopy domain];
  if ([domain4 isEqualToString:@"NPHCellularDataUsageErrorDomain"])
  {
    code4 = [errorCopy code];

    if (code4 == 35)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"ERROR_TRY_AGAIN_TITLE" value:&stru_285611AE0 table:0];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"ERROR_TRY_AGAIN_MESSAGE" value:&stru_285611AE0 table:0];
      [self _presentErrorTitled:v20 withMessage:v22 onViewController:controllerCopy];

      goto LABEL_23;
    }
  }

  else
  {
  }

  userInfo = [errorCopy userInfo];
  v24 = [userInfo objectForKeyedSubscript:NPHCellularErrorTitleKey];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v27 localizedStringForKey:@"ERROR_GENERIC_TITLE" value:&stru_285611AE0 table:0];
  }

  userInfo2 = [errorCopy userInfo];
  v29 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA450]];

  [self _presentErrorTitled:v26 withMessage:v29 onViewController:controllerCopy];
LABEL_23:
}

+ (void)_presentAirplaneModeOnAlertOnViewController:(id)controller
{
  v12 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = nph_general_log(controllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "+[NPHCellularBridgeUIManager _presentAirplaneModeOnAlertOnViewController:]";
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v7 = [v6 localizedStringForKey:@"AIRPLANE_MODE_ERROR_TITLE" value:&stru_285611AE0 table:0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v9 = [v8 localizedStringForKey:@"AIRPLANE_MODE_TURN_OFF_ACTION" value:&stru_285611AE0 table:0];
  [self _presentErrorTitle:v7 onViewController:controllerCopy withActionTitle:v9 actionHandler:&__block_literal_global_274];
}

void __74__NPHCellularBridgeUIManager__presentAirplaneModeOnAlertOnViewController___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = nph_general_log(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[NPHCellularBridgeUIManager _presentAirplaneModeOnAlertOnViewController:]_block_invoke";
    _os_log_impl(&dword_243333000, v1, OS_LOG_TYPE_DEFAULT, "%s - turning off airplane mode", &v3, 0xCu);
  }

  v2 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  [v2 setAirplaneMode:0];
}

+ (void)_presentCellularRequiredModeAlertOnViewController:(id)controller
{
  v12 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = nph_general_log(controllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "+[NPHCellularBridgeUIManager _presentCellularRequiredModeAlertOnViewController:]";
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v7 = [v6 localizedStringForKey:@"CELLULAR_DATA_ERROR_TITLE" value:&stru_285611AE0 table:0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v9 = [v8 localizedStringForKey:@"CELLULAR_DATA_TURN_ON_ACTION" value:&stru_285611AE0 table:0];
  [self _presentErrorTitle:v7 onViewController:controllerCopy withActionTitle:v9 actionHandler:&__block_literal_global_283];
}

uint64_t __80__NPHCellularBridgeUIManager__presentCellularRequiredModeAlertOnViewController___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = nph_general_log(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[NPHCellularBridgeUIManager _presentCellularRequiredModeAlertOnViewController:]_block_invoke";
    _os_log_impl(&dword_243333000, v1, OS_LOG_TYPE_DEFAULT, "%s - turning on cellular data", &v5, 0xCu);
  }

  CTSUServerConnectionRef(v2, v3);
  return _CTServerConnectionSetCellularDataIsEnabled();
}

+ (void)_presentErrorTitle:(id)title onViewController:(id)controller withActionTitle:(id)actionTitle actionHandler:(id)handler
{
  handlerCopy = handler;
  actionTitleCopy = actionTitle;
  controllerCopy = controller;
  titleCopy = title;
  v14 = nph_general_log(titleCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    +[NPHCellularBridgeUIManager _presentErrorTitle:onViewController:withActionTitle:actionHandler:];
  }

  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:titleCopy message:0 preferredStyle:1];

  [v15 setModalPresentationStyle:2];
  v16 = [MEMORY[0x277D750F8] actionWithTitle:actionTitleCopy style:0 handler:handlerCopy];

  [v15 addAction:v16];
  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v19 = [v18 localizedStringForKey:@"CELLULAR_ERROR_CLOSE_ACTION" value:&stru_285611AE0 table:0];
  v20 = [v17 actionWithTitle:v19 style:1 handler:0];

  [v15 addAction:v20];
  [controllerCopy presentViewController:v15 animated:1 completion:0];
}

- (void)_promptForUserConsentForCarrierWebsiteIfNecessary:(id)necessary withCompletion:(id)completion
{
  necessaryCopy = necessary;
  completionCopy = completion;
  v8 = [(NPHCellularBridgeUIManager *)self _serviceSubscriptionInfoForSubscriptionContext:necessaryCopy];
  if (([v8 planFlows] & 0x40) != 0)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"WEB_CONSENT_TITLE" value:&stru_285611AE0 table:0];
    v12 = [(NPHCellularBridgeUIManager *)self carrierNameForSubscription:necessaryCopy];
    v26 = [v9 stringWithFormat:v11, v12];

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v13 localizedStringForKey:@"WEB_CONSENT_MESSAGE" value:&stru_285611AE0 table:0];

    v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v26 message:v25 preferredStyle:1];
    v15 = MEMORY[0x277D750F8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"WEB_CONSENT_CONTINUE" value:&stru_285611AE0 table:0];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __95__NPHCellularBridgeUIManager__promptForUserConsentForCarrierWebsiteIfNecessary_withCompletion___block_invoke;
    v31[3] = &unk_278DACBD0;
    v18 = completionCopy;
    v32 = v18;
    v19 = [v15 actionWithTitle:v17 style:0 handler:v31];

    [v14 addAction:v19];
    v20 = MEMORY[0x277D750F8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"WEB_CONSENT_CANCEL" value:&stru_285611AE0 table:0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __95__NPHCellularBridgeUIManager__promptForUserConsentForCarrierWebsiteIfNecessary_withCompletion___block_invoke_2;
    v29[3] = &unk_278DACBD0;
    v30 = v18;
    v23 = [v20 actionWithTitle:v22 style:1 handler:v29];

    [v14 addAction:v23];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __95__NPHCellularBridgeUIManager__promptForUserConsentForCarrierWebsiteIfNecessary_withCompletion___block_invoke_3;
    v27[3] = &unk_278DAC898;
    v27[4] = self;
    v28 = v14;
    v24 = v14;
    nph_ensure_on_main_queue(v27);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __60__NPHCellularBridgeUIManager__updateCoreTelephonyClientInfo__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __72__NPHCellularBridgeUIManager_installPendingCellularPlan_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_updateTransferableCellularPlanFromDeviceWithCSN:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_updateTransferableCellularPlanFromDeviceWithCSN:(os_log_t)log .cold.3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:]";
  _os_log_error_impl(&dword_243333000, log, OS_LOG_TYPE_ERROR, "%s - count of transferable plan is more than 1", buf, 0xCu);
}

- (void)transferCellularPlanOnViewController:(void *)a1 withCompletion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 transferableRemotePlan];
  v5 = [a1 transferableRemoteDeviceID];
  v6 = 136315650;
  v7 = "[NPHCellularBridgeUIManager transferCellularPlanOnViewController:withCompletion:]";
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  _os_log_error_impl(&dword_243333000, a2, OS_LOG_TYPE_ERROR, "%s - Unable to transfer: %@ %@", &v6, 0x20u);
}

void __82__NPHCellularBridgeUIManager_transferCellularPlanOnViewController_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)carrierNameForSubscription:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)carrierPhoneNumberForSubscription:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)formattedPhoneNumberForSubscription:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)lteOverrideForSubscription:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)presentCellularError:onViewController:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end