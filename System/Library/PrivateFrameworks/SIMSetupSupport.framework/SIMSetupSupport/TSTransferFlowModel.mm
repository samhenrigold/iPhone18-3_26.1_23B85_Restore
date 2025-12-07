@interface TSTransferFlowModel
+ (id)sharedInstance;
- (BOOL)shouldShowTransferredPane;
- (TSTransferFlowModel)init;
- (TSTransferFlowModel)initWithIsStandaloneProximityTransfer:(BOOL)transfer transferBackPlan:(id)plan;
- (void)arePlansAvailable:(id)available transferablePlanOnSource:(BOOL)source bootstrapOnly:(BOOL)only sourceOSVersion:(id)version isPostMigrationFlow:(BOOL)flow isUsingPreSharedKey:(BOOL)key completion:(id)completion;
- (void)bootstrap:(id)bootstrap isUsingPreSharedKey:(BOOL)key completion:(id)completion;
- (void)clearCarrierSetupItemsCache;
- (void)establishReconnectionCredentials:(id)credentials completion:(id)completion;
- (void)filterCarrierSetupItems:(id)items;
- (void)filterTransferPlans:(id)plans;
- (void)forceRecheckTransferableAndPendingInstallPlans;
- (void)getWebsheetInfo:(id)info completion:(id)completion;
- (void)requestCarrierSetups:(id)setups;
- (void)requestPendingInstallPlans:(id)plans;
- (void)requestPlans:(id)plans transferablePlanOnSource:(BOOL)source bootstrapOnly:(BOOL)only sourceOSVersion:(id)version isPostMigrationFlow:(BOOL)flow isUsingPreSharedKey:(BOOL)key completion:(id)completion;
- (void)requestTransferPlans:(id)plans;
- (void)shouldShowTransferPlans:(id)plans sourceOSVersion:(id)version isPostMigrationFlow:(BOOL)flow transferItems:(id)items completion:(id)completion;
@end

@implementation TSTransferFlowModel

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TSTransferFlowModel sharedInstance];
  }

  v3 = sharedInstance_sModel;

  return v3;
}

uint64_t __37__TSTransferFlowModel_sharedInstance__block_invoke()
{
  sharedInstance_sModel = objc_alloc_init(TSTransferFlowModel);

  return MEMORY[0x2821F96F8]();
}

- (TSTransferFlowModel)init
{
  v14.receiver = self;
  v14.super_class = TSTransferFlowModel;
  v2 = [(TSTransferFlowModel *)&v14 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    transferItems = v2->_transferItems;
    v2->_transferItems = array;

    array2 = [MEMORY[0x277CBEB18] array];
    transferPlans = v2->_transferPlans;
    v2->_transferPlans = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    requireStoreVisitItems = v2->_requireStoreVisitItems;
    v2->_requireStoreVisitItems = array3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storeVisitedMap = v2->_storeVisitedMap;
    v2->_storeVisitedMap = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    simsetupD2dInfo = v2->_simsetupD2dInfo;
    v2->_simsetupD2dInfo = dictionary2;
  }

  return v2;
}

- (TSTransferFlowModel)initWithIsStandaloneProximityTransfer:(BOOL)transfer transferBackPlan:(id)plan
{
  planCopy = plan;
  v8 = [(TSTransferFlowModel *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_isStandaloneProximityTransfer = transfer;
    objc_storeStrong(&v8->_transferBackPlan, plan);
  }

  return v9;
}

- (void)arePlansAvailable:(id)available transferablePlanOnSource:(BOOL)source bootstrapOnly:(BOOL)only sourceOSVersion:(id)version isPostMigrationFlow:(BOOL)flow isUsingPreSharedKey:(BOOL)key completion:(id)completion
{
  keyCopy = key;
  flowCopy = flow;
  onlyCopy = only;
  sourceCopy = source;
  availableCopy = available;
  versionCopy = version;
  completionCopy = completion;
  v18 = completionCopy;
  if (availableCopy)
  {
    self->_isProximityFlow = 1;
  }

  v19 = MEMORY[0x2667315D0](completionCopy);
  requestCompletion = self->_requestCompletion;
  self->_requestCompletion = v19;

  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __147__TSTransferFlowModel_arePlansAvailable_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke;
  v22[3] = &unk_279B45578;
  objc_copyWeak(&v24, &location);
  v21 = v18;
  v23 = v21;
  v25 = onlyCopy;
  [(TSTransferFlowModel *)self requestPlans:availableCopy transferablePlanOnSource:sourceCopy bootstrapOnly:onlyCopy sourceOSVersion:versionCopy isPostMigrationFlow:flowCopy isUsingPreSharedKey:keyCopy completion:v22];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __147__TSTransferFlowModel_arePlansAvailable_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 48) == 1)
    {
      v12 = _TSLogDomain(WeakRetained);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315138;
        v33 = "[TSTransferFlowModel arePlansAvailable:transferablePlanOnSource:bootstrapOnly:sourceOSVersion:isPostMigrationFlow:isUsingPreSharedKey:completion:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "Clear pending install plans & transfer plans flag @%s", &v32, 0xCu);
      }

      v11[8] = 0;
      v11[17] = 0;
    }

    if (v7 && [v7 count] || v8 && (objc_msgSend(v8, "plans"), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, objc_msgSend(v8, "plans"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v14, v16) || v9 && (objc_msgSend(v9, "plans"), (v17 = objc_claimAutoreleasedReturnValue()) != 0) && (v18 = v17, objc_msgSend(v9, "plans"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "count"), v19, v18, v20))
    {
      v21 = [v11 requestCompletion];
      v22 = v21[2];
    }

    else
    {
      v31 = [MEMORY[0x277CF96D8] sharedManager];
      [v31 getSupportedFlowTypes];

      v21 = [v11 requestCompletion];
      v22 = v21[2];
    }

    v22();
  }

  else
  {
    v23 = _TSLogDomain(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __147__TSTransferFlowModel_arePlansAvailable_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_cold_1(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)bootstrap:(id)bootstrap isUsingPreSharedKey:(BOOL)key completion:(id)completion
{
  if (!self->_isBootstrapTriggerred)
  {
    self->_isBootstrapTriggerred = 1;
    if (key)
    {
      v7 = 6;
    }

    else if (self->_isStandaloneProximityTransfer)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    completionCopy = completion;
    bootstrapCopy = bootstrap;
    v10 = +[TSCoreTelephonyClientCache sharedInstance];
    [v10 bootstrapPlanTransferUsingMessageSession:bootstrapCopy flowType:v7 completion:completionCopy];
  }
}

- (void)filterTransferPlans:(id)plans
{
  v84 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  [(NSMutableArray *)self->_transferItems removeAllObjects];
  removeAllObjects = [(NSMutableArray *)self->_transferPlans removeAllObjects];
  if (plansCopy)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v53 = plansCopy;
    obj = [plansCopy devices];
    v56 = [obj countByEnumeratingWithState:&v67 objects:v83 count:16];
    if (v56)
    {
      v55 = *v68;
      do
      {
        v6 = 0;
        do
        {
          if (*v68 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v57 = v6;
          v7 = *(*(&v67 + 1) + 8 * v6);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v58 = v7;
          remoteDisplayPlans = [v7 remoteDisplayPlans];
          v9 = [remoteDisplayPlans countByEnumeratingWithState:&v63 objects:v82 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v64;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v64 != v11)
                {
                  objc_enumerationMutation(remoteDisplayPlans);
                }

                v13 = *(*(&v63 + 1) + 8 * i);
                if ([v13 isNotEligibleActivationPolicyMismatchPlan])
                {
                  [(TSTransferFlowModel *)self setIsActivationPolicyMismatch:1];
                }

                plan = [v13 plan];

                if (!plan)
                {
                  v30 = _TSLogDomain(v15);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    [(TSTransferFlowModel *)v80 filterTransferPlans:v30];
                  }

                  goto LABEL_40;
                }

                plan2 = [v13 plan];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if ((isKindOfClass & 1) == 0)
                {
                  v30 = _TSLogDomain(v18);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    plan3 = [v13 plan];
                    *buf = 138412546;
                    v73 = plan3;
                    v74 = 2080;
                    v75 = "[TSTransferFlowModel filterTransferPlans:]";
                    _os_log_error_impl(&dword_262AA8000, v30, OS_LOG_TYPE_ERROR, "[E]%@ is not a CTRemotePlan @%s", buf, 0x16u);
                  }

                  goto LABEL_40;
                }

                transferBackPlan = self->_transferBackPlan;
                if (transferBackPlan)
                {
                  phoneNumber = [transferBackPlan phoneNumber];
                  phoneNumber2 = [v13 phoneNumber];
                  v22 = [phoneNumber isEqualToPhoneNumber:phoneNumber2];

                  if (!v22)
                  {
                    continue;
                  }

                  v24 = _TSLogDomain(v23);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    phoneNumber3 = [self->_transferBackPlan phoneNumber];
                    *buf = 138412546;
                    v73 = phoneNumber3;
                    v74 = 2080;
                    v75 = "[TSTransferFlowModel filterTransferPlans:]";
                    _os_log_impl(&dword_262AA8000, v24, OS_LOG_TYPE_DEFAULT, "find plan with same phone number : %@ @%s", buf, 0x16u);
                  }
                }

                [(NSMutableArray *)self->_transferPlans addObject:v13];
                if (([v13 isTransferablePlan] & 1) == 0)
                {
                  transferIneligibleItems = self->_transferIneligibleItems;
                  if (!transferIneligibleItems)
                  {
                    array = [MEMORY[0x277CBEB18] array];
                    v28 = self->_transferIneligibleItems;
                    self->_transferIneligibleItems = array;

                    transferIneligibleItems = self->_transferIneligibleItems;
                  }

                  self->_needOfferQRCodeOption = 1;
                  [(NSMutableArray *)transferIneligibleItems addObject:v13];
                }

                if (![v13 requireVisitStoreOnce] || !objc_msgSend(v13, "isTransferablePlan"))
                {
                  goto LABEL_39;
                }

                v29 = [TSUtilities getStoreVisitStatusForPlan:v13 cache:self->_storeVisitedMap];
                v30 = v29;
                if (!v29)
                {
                  goto LABEL_37;
                }

                if (([v29 BOOLValue]& 1) == 0)
                {
                  v31 = +[TSUtilities inBuddy];
                  if (v31)
                  {
                    v32 = _TSLogDomain(v31);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      identifier = [v13 identifier];
                      *buf = 138412546;
                      v73 = identifier;
                      v74 = 2080;
                      v75 = "[TSTransferFlowModel filterTransferPlans:]";
                      _os_log_impl(&dword_262AA8000, v32, OS_LOG_TYPE_DEFAULT, "user explicitly mentioned he/she has not visited store, plan (%@) is not able to transfer for now. @%s", buf, 0x16u);
                    }

                    goto LABEL_40;
                  }

LABEL_37:
                  [(NSMutableArray *)self->_requireStoreVisitItems addObject:v13];
                }

LABEL_39:
                v78[0] = @"planItem";
                v78[1] = @"deviceInfo";
                v79[0] = v13;
                v79[1] = v58;
                v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
                [(NSMutableArray *)self->_transferItems addObject:v30];
LABEL_40:
              }

              v10 = [remoteDisplayPlans countByEnumeratingWithState:&v63 objects:v82 count:16];
            }

            while (v10);
          }

          v6 = v57 + 1;
        }

        while (v57 + 1 != v56);
        v56 = [obj countByEnumeratingWithState:&v67 objects:v83 count:16];
      }

      while (v56);
    }

    v36 = _TSLogDomain(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(NSMutableArray *)self->_transferItems count];
      transferItems = self->_transferItems;
      *buf = 134218498;
      v73 = v37;
      v74 = 2112;
      v75 = transferItems;
      v76 = 2080;
      v77 = "[TSTransferFlowModel filterTransferPlans:]";
      _os_log_impl(&dword_262AA8000, v36, OS_LOG_TYPE_DEFAULT, "transfer plans [%lu] : %@ @%s", buf, 0x20u);
    }

    plansCopy = v53;
    if ([(NSMutableArray *)self->_transferItems count]!= 1)
    {
      goto LABEL_53;
    }

    v39 = [(NSMutableArray *)self->_transferItems objectAtIndex:0];
    v40 = [v39 objectForKeyedSubscript:@"planItem"];
    transferCapability = [v40 transferCapability];
    v42 = transferCapability;
    if (transferCapability <= 6 && ((1 << transferCapability) & 0x68) != 0)
    {
      self->_showTransferredPane = 1;
    }

    if (v42 > 6 || ((1 << v42) & 0x68) == 0)
    {
LABEL_53:
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v43 = self->_transferItems;
      v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v59 objects:v71 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v60;
        do
        {
          v47 = 0;
          do
          {
            if (*v60 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = [*(*(&v59 + 1) + 8 * v47) objectForKeyedSubscript:@"planItem"];
            transferCapability2 = [v48 transferCapability];
            if (transferCapability2 > 0x14 || ((1 << transferCapability2) & 0x1FF683) == 0 && (transferCapability2 != 8 || !+[TSUtilities inBuddy](TSUtilities, "inBuddy")) || self->_isStandaloneProximityTransfer && [v48 isTransferIneligiblePlan])
            {

              goto LABEL_74;
            }

            ++v47;
          }

          while (v45 != v47);
          v50 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v59 objects:v71 count:16];
          v45 = v50;
        }

        while (v50);
      }

      v52 = _TSLogDomain(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        [TSTransferFlowModel filterTransferPlans:v52];
      }

      [(NSMutableArray *)self->_transferItems removeAllObjects];
    }
  }

  else
  {
    v43 = _TSLogDomain(removeAllObjects);
    if (os_log_type_enabled(&v43->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v73 = "[TSTransferFlowModel filterTransferPlans:]";
      _os_log_impl(&dword_262AA8000, &v43->super.super, OS_LOG_TYPE_DEFAULT, "no remote plans @%s", buf, 0xCu);
    }

LABEL_74:
  }
}

- (BOOL)shouldShowTransferredPane
{
  if (self->_showTransferredPane)
  {
    plans = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
    if ([plans count])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = ![(TSTransferFlowModel *)self shouldShowCarrierSetupPane];
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)establishReconnectionCredentials:(id)credentials completion:(id)completion
{
  completionCopy = completion;
  credentialsCopy = credentials;
  v8 = +[TSCoreTelephonyClientCache sharedInstance];
  getCoreTelephonyClient = [v8 getCoreTelephonyClient];
  [getCoreTelephonyClient establishReconnectionCredentialsUsingMessageSession:credentialsCopy completion:completionCopy];
}

- (void)requestTransferPlans:(id)plans
{
  plansCopy = plans;
  v5 = plansCopy;
  if (self->_areTransferPlansReady)
  {
    (*(plansCopy + 2))(plansCopy);
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__TSTransferFlowModel_requestTransferPlans___block_invoke;
    v7[3] = &unk_279B45248;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    [v6 transferPlanListWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __44__TSTransferFlowModel_requestTransferPlans___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained setIsFlexPolicyOn:a4];
    if (v9)
    {
      v13 = _TSLogDomain(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __44__TSTransferFlowModel_requestTransferPlans___block_invoke_cold_1();
      }

      v11[16] = [v9 code] == 61;
      v11[19] = 1;
    }

    else if (v8)
    {
      if (!+[TSUtilities isPad])
      {
        v22 = +[TSCoreTelephonyClientCache sharedInstance];
        v23 = [v22 deviceSupportsHydra];

        if ((v23 & 1) == 0)
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v24 = [v8 devices];
          v25 = [v24 countByEnumeratingWithState:&v34 objects:v40 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v35;
            v28 = &off_279B46000;
            while (2)
            {
              v29 = 0;
              v30 = v28[233];
              do
              {
                if (*v35 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v31 = *(*(&v34 + 1) + 8 * v29);
                if (objc_opt_respondsToSelector())
                {
                  v32 = [v31 performSelector:v30];
                  if (v32)
                  {
                    v33 = _TSLogDomain(v32);
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v39 = "[TSTransferFlowModel requestTransferPlans:]_block_invoke";
                      _os_log_impl(&dword_262AA8000, v33, OS_LOG_TYPE_DEFAULT, "remote has dual eSIM config @%s", buf, 0xCu);
                    }

                    [v11 setIsDualeSIMCapablityLoss:1];
                    goto LABEL_25;
                  }
                }

                ++v29;
              }

              while (v26 != v29);
              v26 = [v24 countByEnumeratingWithState:&v34 objects:v40 count:16];
              v28 = &off_279B46000;
              if (v26)
              {
                continue;
              }

              break;
            }
          }

LABEL_25:
        }
      }

      [v11 filterTransferPlans:v8];
    }
  }

  else
  {
    v14 = _TSLogDomain(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __44__TSTransferFlowModel_requestTransferPlans___block_invoke_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestPendingInstallPlans:(id)plans
{
  v15 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  v5 = plansCopy;
  if (self->_hasPendingInstallPlansQueried)
  {
    goto LABEL_4;
  }

  if (self->_isStandaloneProximityTransfer)
  {
    self->_hasPendingInstallPlansQueried = 1;
LABEL_4:
    (*(plansCopy + 2))(plansCopy);
    goto LABEL_8;
  }

  inited = objc_initWeak(&location, self);
  v7 = _TSLogDomain(inited);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[TSTransferFlowModel requestPendingInstallPlans:]";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "_requestPendingInstallItems @%s", buf, 0xCu);
  }

  v8 = +[TSCoreTelephonyClientCache sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__TSTransferFlowModel_requestPendingInstallPlans___block_invoke;
  v9[3] = &unk_279B452C0;
  objc_copyWeak(&v11, &location);
  v10 = v5;
  [v8 pendingInstallItemsWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
LABEL_8:
}

void __50__TSTransferFlowModel_requestPendingInstallPlans___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = _TSLogDomain(WeakRetained);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2080;
      v11 = "[TSTransferFlowModel requestPendingInstallPlans:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "pending plans: %@ @%s", &v8, 0x16u);
    }

    objc_storeStrong(v6 + 7, a2);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)filterCarrierSetupItems:(id)items
{
  v30 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v6 = itemsCopy;
  if (itemsCopy)
  {
    if (self->_areTransferPlansReady)
    {
      plans = [itemsCopy plans];
      v8 = [plans count];

      if (v8)
      {
        transferPlans = self->_transferPlans;
        plans2 = [v6 plans];
        [(NSMutableArray *)transferPlans filteredPlansWithoutSODATether:plans2];

        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if ([TSFlowHelper hasTransferablePlanWithSameCarrierName:v6 transferablePlans:self->_transferItems inBuddy:1 matchingSODACarrierWebsheetTransferPlanIndex:v11])
        {
          [(TSTransferFlowModel *)self clearCarrierSetupItemsCache];
        }

        else
        {
          objc_storeStrong(&self->_carrierSetupItems, items);
          v20 = v11;
          v12 = [TSFlowHelper sortIndexesInDescending:v11];
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
                  v28 = "[TSTransferFlowModel filterCarrierSetupItems:]";
                  _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "Transferrable plan %@ will be removed from the list @%s", buf, 0x16u);
                }

                [(NSMutableArray *)self->_transferItems removeObjectAtIndex:unsignedIntegerValue];
              }

              v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v14);
          }

          if ([(NSMutableArray *)self->_transferItems count])
          {
            [(TSTransferFlowModel *)self clearCarrierSetupItemsCache];
          }

          v11 = v20;
        }
      }
    }
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
        [(TSTransferFlowModel *)v12 getWebsheetInfo:v13 completion:v14, v15, v16, v17, v18, v19];
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
      v27[2] = __50__TSTransferFlowModel_getWebsheetInfo_completion___block_invoke;
      v27[3] = &unk_279B45310;
      objc_copyWeak(&v29, location);
      v28 = v8;
      [v22 getWebsheetInfoForPlan:plan inBuddy:1 completion:v27];

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
      *(location + 4) = "[TSTransferFlowModel getWebsheetInfo:completion:]";
      _os_log_impl(&dword_262AA8000, v26, OS_LOG_TYPE_DEFAULT, "No carrier setup items @%s", location, 0xCu);
    }

    v8[2](v8);
  }
}

void __50__TSTransferFlowModel_getWebsheetInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 9, a2);
    objc_storeStrong(v9 + 10, a3);
  }

  else
  {
    v10 = _TSLogDomain(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __50__TSTransferFlowModel_getWebsheetInfo_completion___block_invoke_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestCarrierSetups:(id)setups
{
  setupsCopy = setups;
  v5 = setupsCopy;
  if (self->_hasCarrierSetupItemsQueried)
  {
    (*(setupsCopy + 2))(setupsCopy);
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__TSTransferFlowModel_requestCarrierSetups___block_invoke;
    v7[3] = &unk_279B452E8;
    objc_copyWeak(&v9, &location);
    v7[4] = self;
    v8 = v5;
    [v6 getCarrierSetupWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __44__TSTransferFlowModel_requestCarrierSetups___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = _TSLogDomain(WeakRetained);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v4;
      v13 = 2080;
      v14 = "[TSTransferFlowModel requestCarrierSetups:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "Carrier setup %@ @%s", buf, 0x16u);
    }

    objc_storeStrong(v6 + 8, a2);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__TSTransferFlowModel_requestCarrierSetups___block_invoke_46;
    v9[3] = &unk_279B44938;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v8 getWebsheetInfo:v4 completion:v9];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)clearCarrierSetupItemsCache
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TSTransferFlowModel clearCarrierSetupItemsCache]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Clear carrier setup items cache @%s", &v7, 0xCu);
  }

  carrierSetupItems = self->_carrierSetupItems;
  self->_carrierSetupItems = 0;

  websheetUrl = self->_websheetUrl;
  self->_websheetUrl = 0;

  postdata = self->_postdata;
  self->_postdata = 0;
}

- (void)forceRecheckTransferableAndPendingInstallPlans
{
  self->_areTransferPlansReady = 0;
  self->_hasPendingInstallPlansQueried = 0;
  self->_hasCarrierSetupItemsQueried = 0;
}

- (void)shouldShowTransferPlans:(id)plans sourceOSVersion:(id)version isPostMigrationFlow:(BOOL)flow transferItems:(id)items completion:(id)completion
{
  flowCopy = flow;
  v46 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  versionCopy = version;
  itemsCopy = items;
  completionCopy = completion;
  v16 = _os_feature_enabled_impl();
  if ((v16 & 1) == 0)
  {
    v25 = _TSLogDomain(v16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v43 = "[TSTransferFlowModel shouldShowTransferPlans:sourceOSVersion:isPostMigrationFlow:transferItems:completion:]";
      _os_log_impl(&dword_262AA8000, v25, OS_LOG_TYPE_DEFAULT, "BuddyPostMigrationFlow feature disabled @%s", buf, 0xCu);
    }

    goto LABEL_14;
  }

  selfCopy = self;
  v34 = itemsCopy;
  v35 = versionCopy;
  v17 = plansCopy;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = itemsCopy;
  v19 = [v18 countByEnumeratingWithState:&v38 objects:buf count:16];
  if (!v19)
  {
LABEL_10:

LABEL_16:
    completionCopy[2](completionCopy, 1);
    plansCopy = v17;
LABEL_17:
    itemsCopy = v34;
    versionCopy = v35;
    goto LABEL_18;
  }

  v20 = v19;
  v21 = *v39;
LABEL_4:
  v22 = 0;
  while (1)
  {
    if (*v39 != v21)
    {
      objc_enumerationMutation(v18);
    }

    v23 = [*(*(&v38 + 1) + 8 * v22) objectForKeyedSubscript:{@"planItem", selfCopy}];
    isTransferablePlan = [v23 isTransferablePlan];

    if (isTransferablePlan)
    {
      break;
    }

    if (v20 == ++v22)
    {
      v20 = [v18 countByEnumeratingWithState:&v38 objects:buf count:16];
      if (v20)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  if (selfCopy->_isStandaloneProximityTransfer)
  {
    goto LABEL_16;
  }

  plansCopy = v17;
  itemsCopy = v34;
  versionCopy = v35;
  if (flowCopy || !v35 || [TSUtilities compareProductVersion:v35 toProductVersion:@"26.0"]== -1)
  {
LABEL_14:
    completionCopy[2](completionCopy, 1);
    goto LABEL_18;
  }

  v26 = +[TSCoreTelephonyClientCache sharedInstance];
  usingBootstrapDataService = [v26 usingBootstrapDataService];

  v28 = +[TSUtilities isWifiAvailable];
  v29 = v28;
  v30 = _TSLogDomain(v28);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v43 = usingBootstrapDataService;
    *&v43[4] = 1024;
    *&v43[6] = v29;
    v44 = 2080;
    v45 = "[TSTransferFlowModel shouldShowTransferPlans:sourceOSVersion:isPostMigrationFlow:transferItems:completion:]";
    _os_log_impl(&dword_262AA8000, v30, OS_LOG_TYPE_DEFAULT, "Using bootstrap: %d, on wifi:%d @%s", buf, 0x18u);
  }

  if (!(v29 & 1 | ((usingBootstrapDataService & 1) == 0)))
  {
    completionCopy[2](completionCopy, 1);
    goto LABEL_17;
  }

  v32 = _TSLogDomain(v31);
  itemsCopy = v34;
  versionCopy = v35;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v43 = "[TSTransferFlowModel shouldShowTransferPlans:sourceOSVersion:isPostMigrationFlow:transferItems:completion:]";
    _os_log_impl(&dword_262AA8000, v32, OS_LOG_TYPE_DEFAULT, "Establishing reconnection credentials @%s", buf, 0xCu);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __108__TSTransferFlowModel_shouldShowTransferPlans_sourceOSVersion_isPostMigrationFlow_transferItems_completion___block_invoke;
  v36[3] = &unk_279B44DB8;
  v37 = completionCopy;
  [(TSTransferFlowModel *)selfCopy establishReconnectionCredentials:v17 completion:v36];

LABEL_18:
}

- (void)requestPlans:(id)plans transferablePlanOnSource:(BOOL)source bootstrapOnly:(BOOL)only sourceOSVersion:(id)version isPostMigrationFlow:(BOOL)flow isUsingPreSharedKey:(BOOL)key completion:(id)completion
{
  keyCopy = key;
  sourceCopy = source;
  v50 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  versionCopy = version;
  completionCopy = completion;
  if ([(TSTransferFlowModel *)self arePlansRequested])
  {
    completionCopy[2](completionCopy, self->_transferItems, self->_pendingInstallItems, self->_carrierSetupItems);
  }

  else
  {
    objc_initWeak(&location, self);
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = __Block_byref_object_copy_;
    v45[4] = __Block_byref_object_dispose_;
    v46 = MEMORY[0x2667315D0](completionCopy);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke;
    v39[3] = &unk_279B455C8;
    v42 = v45;
    v39[4] = self;
    objc_copyWeak(&v43, &location);
    v18 = plansCopy;
    v40 = v18;
    v41 = versionCopy;
    flowCopy = flow;
    v19 = MEMORY[0x2667315D0](v39);
    v20 = v19;
    if (!self->_transferItems)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      transferItems = self->_transferItems;
      self->_transferItems = v21;
    }

    if (self->_isProximityFlow && sourceCopy && !self->_areTransferPlansReady)
    {
      if (self->_isBootstrapComplete)
      {
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_3;
        v36[3] = &unk_279B44C58;
        objc_copyWeak(&v38, &location);
        v37 = v20;
        [(TSTransferFlowModel *)self requestTransferPlans:v36];

        objc_destroyWeak(&v38);
      }

      else
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_4;
        v32[3] = &unk_279B455F0;
        objc_copyWeak(&v34, &location);
        v33 = v20;
        onlyCopy = only;
        [(TSTransferFlowModel *)self bootstrap:v18 isUsingPreSharedKey:keyCopy completion:v32];

        objc_destroyWeak(&v34);
      }
    }

    else
    {
      self->_areTransferPlansReady = 1;
    }

    if (self->_hasCarrierSetupItemsQueried || (v19 = +[TSUtilities isPad], (v19 & 1) != 0))
    {
      v23 = _TSLogDomain(v19);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v49 = "[TSTransferFlowModel requestPlans:transferablePlanOnSource:bootstrapOnly:sourceOSVersion:isPostMigrationFlow:isUsingPreSharedKey:completion:]";
        _os_log_impl(&dword_262AA8000, v23, OS_LOG_TYPE_DEFAULT, "Skip querying SODA plans on iPad! @%s", buf, 0xCu);
      }

      self->_hasCarrierSetupItemsQueried = 1;
    }

    else
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_6;
      v29[3] = &unk_279B44C58;
      objc_copyWeak(&v31, &location);
      v30 = v20;
      [(TSTransferFlowModel *)self requestCarrierSetups:v29];

      objc_destroyWeak(&v31);
    }

    if (only || flow)
    {
      v25 = _TSLogDomain(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v49 = "[TSTransferFlowModel requestPlans:transferablePlanOnSource:bootstrapOnly:sourceOSVersion:isPostMigrationFlow:isUsingPreSharedKey:completion:]";
        _os_log_impl(&dword_262AA8000, v25, OS_LOG_TYPE_DEFAULT, "Skip querying pending install plans! @%s", buf, 0xCu);
      }

      self->_hasPendingInstallPlansQueried = 1;
      if ([(TSTransferFlowModel *)self arePlansRequested])
      {
        completionCopy[2](completionCopy, self->_transferItems, self->_pendingInstallItems, self->_carrierSetupItems);
      }
    }

    else
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_51;
      v26[3] = &unk_279B44C58;
      objc_copyWeak(&v28, &location);
      v27 = v20;
      [(TSTransferFlowModel *)self requestPendingInstallPlans:v26];

      objc_destroyWeak(&v28);
    }

    objc_destroyWeak(&v43);
    _Block_object_dispose(v45, 8);

    objc_destroyWeak(&location);
  }
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [*(a1 + 32) filterCarrierSetupItems:v9];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 72);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_2;
    v14[3] = &unk_279B455A0;
    v19 = *(a1 + 56);
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v18 = WeakRetained;
    [WeakRetained shouldShowTransferPlans:v11 sourceOSVersion:v12 isPostMigrationFlow:v13 transferItems:v15 completion:v14];
  }
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_2(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = *(a1 + 56);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    v5 = *(a1 + 56);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    v7 = *(a1 + 56);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v9 = *(a1 + 56);
    v10 = *(v9 + 32);
    *(v9 + 32) = 0;
  }

  (*(*(*(*(a1 + 64) + 8) + 40) + 16))();
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[17] = 1;
    if ([WeakRetained arePlansRequested])
    {
      v3 = *(a1 + 32);
      v4 = [v7 transferItems];
      v5 = [v7 pendingInstallItems];
      v6 = [v7 carrierSetupItems];
      (*(v3 + 16))(v3, v4, v5, v6);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3 || *(a1 + 48) == 1)
    {
      WeakRetained[17] = 1;
      WeakRetained[10] = 1;
      WeakRetained[19] = 1;
      if ([WeakRetained arePlansRequested])
      {
        v6 = *(a1 + 32);
        v7 = [v5 transferItems];
        v8 = [v5 pendingInstallItems];
        v9 = [v5 carrierSetupItems];
        (*(v6 + 16))(v6, v7, v8, v9);
      }
    }

    else
    {
      WeakRetained[10] = 1;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_5;
      v10[3] = &unk_279B44C58;
      objc_copyWeak(&v12, (a1 + 40));
      v11 = *(a1 + 32);
      [v5 requestTransferPlans:v10];

      objc_destroyWeak(&v12);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[17] = 1;
    if ([WeakRetained arePlansRequested])
    {
      v3 = *(a1 + 32);
      v4 = [v7 transferItems];
      v5 = [v7 pendingInstallItems];
      v6 = [v7 carrierSetupItems];
      (*(v3 + 16))(v3, v4, v5, v6);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[11] = 1;
    if ([WeakRetained arePlansRequested])
    {
      v3 = *(a1 + 32);
      v4 = [v7 transferItems];
      v5 = [v7 pendingInstallItems];
      v6 = [v7 carrierSetupItems];
      (*(v3 + 16))(v3, v4, v5, v6);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __142__TSTransferFlowModel_requestPlans_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_51(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[8] = 1;
    if ([WeakRetained arePlansRequested])
    {
      v3 = *(a1 + 32);
      v4 = [v7 transferItems];
      v5 = [v7 pendingInstallItems];
      v6 = [v7 carrierSetupItems];
      (*(v3 + 16))(v3, v4, v5, v6);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __147__TSTransferFlowModel_arePlansAvailable_transferablePlanOnSource_bootstrapOnly_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey_completion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferFlowModel arePlansAvailable:transferablePlanOnSource:bootstrapOnly:sourceOSVersion:isPostMigrationFlow:isUsingPreSharedKey:completion:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)filterTransferPlans:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[TSTransferFlowModel filterTransferPlans:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid CTRemotePlan @%s", buf, 0xCu);
}

- (void)filterTransferPlans:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSTransferFlowModel filterTransferPlans:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] no eligible plan to transfer in buddy @%s", &v1, 0xCu);
}

void __44__TSTransferFlowModel_requestTransferPlans___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "[TSTransferFlowModel requestTransferPlans:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]error: %@ @%s", v1, 0x16u);
}

void __44__TSTransferFlowModel_requestTransferPlans___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferFlowModel requestTransferPlans:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getWebsheetInfo:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferFlowModel getWebsheetInfo:completion:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Wrong number of carrier setup items on server @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __50__TSTransferFlowModel_getWebsheetInfo_completion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferFlowModel getWebsheetInfo:completion:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end