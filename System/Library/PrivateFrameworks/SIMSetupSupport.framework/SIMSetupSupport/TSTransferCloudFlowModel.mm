@interface TSTransferCloudFlowModel
- (TSTransferCloudFlowModel)init;
- (void)arePlansAvailable:(id)available;
- (void)clearCarrierSetupItemsCache;
- (void)filterCarrierSetupItems:(id)items;
- (void)filterTransferPlans:(id)plans;
- (void)getWebsheetInfo:(id)info completion:(id)completion;
- (void)loadSimSetupInfo;
- (void)requestCarrierSetups:(id)setups;
- (void)requestCrossPlatformTransferPlanListWithCompletion:(id)completion;
- (void)requestPlansWithCompletion:(id)completion;
- (void)requestTransferPlans:(id)plans;
@end

@implementation TSTransferCloudFlowModel

- (TSTransferCloudFlowModel)init
{
  v14.receiver = self;
  v14.super_class = TSTransferCloudFlowModel;
  v2 = [(TSTransferCloudFlowModel *)&v14 init];
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

    array4 = [MEMORY[0x277CBEB18] array];
    transferableHiddenInCloudFlowItems = v2->_transferableHiddenInCloudFlowItems;
    v2->_transferableHiddenInCloudFlowItems = array4;

    [(TSTransferCloudFlowModel *)v2 loadSimSetupInfo];
  }

  return v2;
}

- (void)loadSimSetupInfo
{
  v3 = +[TSCoreTelephonyClientCache sharedInstance];
  v5 = [v3 loadSimSetupInfo:@"simsetupD2dInfo"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v5 valueForKey:@"d2dDone"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_isD2dDone = [v4 BOOLValue];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)arePlansAvailable:(id)available
{
  availableCopy = available;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__TSTransferCloudFlowModel_arePlansAvailable___block_invoke;
  v6[3] = &unk_279B45640;
  objc_copyWeak(&v8, &location);
  v5 = availableCopy;
  v6[4] = self;
  v7 = v5;
  [(TSTransferCloudFlowModel *)self requestPlansWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __46__TSTransferCloudFlowModel_arePlansAvailable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v18 = _TSLogDomain(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __46__TSTransferCloudFlowModel_arePlansAvailable___block_invoke_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    goto LABEL_10;
  }

  v4 = *(a1 + 32);
  v5 = [WeakRetained carrierSetupItems];
  [v4 filterCarrierSetupItems:v5];

  v6 = [v3 transferItems];
  if (v6)
  {
    v7 = v6;
    v8 = [v3 transferItems];
    v9 = [v8 count];

    if (v9)
    {
      goto LABEL_16;
    }
  }

  v10 = [v3 carrierSetupItems];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 carrierSetupItems];
    v13 = [v12 plans];
    if (v13)
    {
      v14 = v13;
      v15 = [v3 carrierSetupItems];
      v16 = [v15 plans];
      v17 = [v16 count];

      if (v17)
      {
LABEL_16:
        v26 = *(*(a1 + 40) + 16);
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v27 = [v3 crossPlatformTransferItems];
  if (v27)
  {
    v18 = v27;
    v28 = [v3 crossPlatformTransferItems];
    v29 = [v28 plans];
    if (v29)
    {
      v30 = v29;
      v31 = [v3 crossPlatformTransferItems];
      v32 = [v31 plans];
      v33 = [v32 count];

      if (v33)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

LABEL_10:
  }

LABEL_11:
  v26 = *(*(a1 + 40) + 16);
LABEL_17:
  v26();
}

- (void)requestPlansWithCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x2667315D0](completionCopy);
  v6 = dispatch_group_create();
  queryGroup = self->_queryGroup;
  self->_queryGroup = v6;

  v8 = +[TSUtilities isWifiAvailable];
  v9 = +[TSCoreTelephonyClientCache sharedInstance];
  usingBootstrapDataService = [v9 usingBootstrapDataService];

  dispatch_group_enter(self->_queryGroup);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke;
  v25[3] = &unk_279B44400;
  objc_copyWeak(&v26, &location);
  [(TSTransferCloudFlowModel *)self requestCrossPlatformTransferPlanListWithCompletion:v25];
  objc_destroyWeak(&v26);
  if (v8 || (usingBootstrapDataService & 1) == 0)
  {
    dispatch_group_enter(self->_queryGroup);
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

    if (aa_primaryAppleAccount)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_35;
      v23[3] = &unk_279B44400;
      objc_copyWeak(&v24, &location);
      [(TSTransferCloudFlowModel *)self requestTransferPlans:v23];
      objc_destroyWeak(&v24);
    }

    else
    {
      *&self->_needOfferProximityTransferOption = 257;
      v16 = _TSLogDomain(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = "[TSTransferCloudFlowModel requestPlansWithCompletion:]";
        _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "Device not sign in to the iCloud @%s", buf, 0xCu);
      }

      dispatch_group_leave(self->_queryGroup);
    }

    if (!+[TSUtilities isPad])
    {
      dispatch_group_enter(self->_queryGroup);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_36;
      v21[3] = &unk_279B44400;
      objc_copyWeak(&v22, &location);
      [(TSTransferCloudFlowModel *)self requestCarrierSetups:v21];
      objc_destroyWeak(&v22);
    }
  }

  else
  {
    v15 = _TSLogDomain(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[TSTransferCloudFlowModel requestPlansWithCompletion:]";
      _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "Cannot query transfer plans and carrier setup items on bootstrap @%s", buf, 0xCu);
    }
  }

  v17 = self->_queryGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_37;
  block[3] = &unk_279B44938;
  v20 = v5;
  v18 = v5;
  dispatch_group_notify(v17, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&location);
}

void __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[1]);
  }

  else
  {
    v3 = _TSLogDomain(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_35(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[1]);
  }

  else
  {
    v3 = _TSLogDomain(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[1]);
  }

  else
  {
    v3 = _TSLogDomain(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

- (void)requestTransferPlans:(id)plans
{
  plansCopy = plans;
  if (plansCopy)
  {
    objc_initWeak(&location, self);
    v5 = +[TSCoreTelephonyClientCache sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke;
    v14[3] = &unk_279B44E30;
    objc_copyWeak(&v16, &location);
    v15 = plansCopy;
    [v5 bootstrapPlanTransferUsingMessageSession:0 flowType:3 completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = _TSLogDomain(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(TSTransferCloudFlowModel *)v6 requestTransferPlans:v7, v8, v9, v10, v11, v12, v13];
    }
  }
}

void __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!v3)
    {
      v7 = +[TSCoreTelephonyClientCache sharedInstance];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_38;
      v8[3] = &unk_279B45248;
      objc_copyWeak(&v10, (a1 + 40));
      v9 = *(a1 + 32);
      [v7 transferPlanListWithCompletion:v8];

      objc_destroyWeak(&v10);
      goto LABEL_8;
    }

    v6 = _TSLogDomain(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_cold_1();
    }

    [v5 setNeedOfferProximityTransferOption:1];
    [v5 setNeedOfferQRCodeOption:1];
  }

  (*(*(a1 + 32) + 16))();
LABEL_8:
}

void __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
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
        __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_38_cold_1();
      }

      [v11 setNeedOfferProximityTransferOption:1];
      [v11 setNeedOfferQRCodeOption:1];
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
                      v39 = "[TSTransferCloudFlowModel requestTransferPlans:]_block_invoke";
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
      __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_38_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)filterTransferPlans:(id)plans
{
  v116 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  [(NSMutableArray *)self->_transferItems removeAllObjects];
  removeAllObjects = [(NSMutableArray *)self->_transferPlans removeAllObjects];
  if (!plansCopy)
  {
    v44 = _TSLogDomain(removeAllObjects);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v103 = "[TSTransferCloudFlowModel filterTransferPlans:]";
      _os_log_impl(&dword_262AA8000, v44, OS_LOG_TYPE_DEFAULT, "no remote plans @%s", buf, 0xCu);
    }

    goto LABEL_110;
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v76 = plansCopy;
  devices = [plansCopy devices];
  v82 = [devices countByEnumeratingWithState:&v97 objects:v115 count:16];
  if (!v82)
  {

    goto LABEL_61;
  }

  v7 = 0;
  obj = devices;
  v80 = *v98;
  do
  {
    v8 = 0;
    do
    {
      if (*v98 != v80)
      {
        objc_enumerationMutation(obj);
      }

      v84 = v8;
      v9 = *(*(&v97 + 1) + 8 * v8);
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v87 = v9;
      remoteDisplayPlans = [v9 remoteDisplayPlans];
      v11 = [remoteDisplayPlans countByEnumeratingWithState:&v93 objects:v114 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v94;
        do
        {
          v14 = 0;
          do
          {
            if (*v94 != v13)
            {
              objc_enumerationMutation(remoteDisplayPlans);
            }

            v15 = *(*(&v93 + 1) + 8 * v14);
            if ([v15 isNotEligibleActivationPolicyMismatchPlan])
            {
              [(TSTransferCloudFlowModel *)self setIsActivationPolicyMismatch:1];
            }

            plan = [v15 plan];

            if (plan)
            {
              plan2 = [v15 plan];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                [(NSMutableArray *)self->_transferPlans addObject:v15];
                plan3 = [v15 plan];
                transferAttributes = [plan3 transferAttributes];
                transferCapability = [transferAttributes transferCapability];

                if (transferCapability <= 6 && ((1 << transferCapability) & 0x68) != 0)
                {
LABEL_20:
                  v7 = 1;
                  goto LABEL_25;
                }

                isTransferablePlan = [v15 isTransferablePlan];
                if ((isTransferablePlan & 1) == 0)
                {
                  if (!self->_transferIneligibleItems)
                  {
                    array = [MEMORY[0x277CBEB18] array];
                    transferIneligibleItems = self->_transferIneligibleItems;
                    self->_transferIneligibleItems = array;
                  }

                  v28 = _TSLogDomain(isTransferablePlan);
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v103 = v15;
                    v104 = 2080;
                    v105 = "[TSTransferCloudFlowModel filterTransferPlans:]";
                    _os_log_debug_impl(&dword_262AA8000, v28, OS_LOG_TYPE_DEBUG, "[Db] ineligible plan: %@, offer qrcode @%s", buf, 0x16u);
                  }

                  self->_needOfferQRCodeOption = 1;
                  [(NSMutableArray *)self->_transferIneligibleItems addObject:v15];
                }

                if ([v15 requireVisitStoreOnce] && objc_msgSend(v15, "isTransferablePlan"))
                {
                  v29 = [TSUtilities getStoreVisitStatusForPlan:v15 cache:self->_storeVisitedMap];
                  v30 = v29;
                  if (v29)
                  {
                    bOOLValue = [v29 BOOLValue];
                    if ((bOOLValue & 1) == 0)
                    {
                      v32 = _TSLogDomain(bOOLValue);
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                      {
                        identifier = [v15 identifier];
                        *buf = 138412546;
                        v103 = identifier;
                        v104 = 2080;
                        v105 = "[TSTransferCloudFlowModel filterTransferPlans:]";
                        _os_log_impl(&dword_262AA8000, v32, OS_LOG_TYPE_DEFAULT, "user explicitly notify having not visited store, plan (%@) is not able to transfer for now. @%s", buf, 0x16u);
                      }

                      goto LABEL_20;
                    }
                  }

                  else
                  {
                    v35 = _TSLogDomain(0);
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412546;
                      v103 = v15;
                      v104 = 2080;
                      v105 = "[TSTransferCloudFlowModel filterTransferPlans:]";
                      _os_log_debug_impl(&dword_262AA8000, v35, OS_LOG_TYPE_DEBUG, "[Db] visit store plan : %@ @%s", buf, 0x16u);
                    }

                    [(NSMutableArray *)self->_requireStoreVisitItems addObject:v15];
                  }
                }

                if ([v15 isPlanHiddenRequiredForCloudFlow])
                {
                  isTransferablePlan2 = [v15 isTransferablePlan];
                  if (isTransferablePlan2)
                  {
                    v37 = _TSLogDomain(isTransferablePlan2);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                    {
                      [(TSTransferCloudFlowModel *)v110 filterTransferPlans:v37];
                    }

                    self->_needOfferProximityTransferOption = 1;
                    transferableHiddenInCloudFlowItems = self->_transferableHiddenInCloudFlowItems;
                    if (!transferableHiddenInCloudFlowItems)
                    {
                      array2 = [MEMORY[0x277CBEB18] array];
                      v40 = self->_transferableHiddenInCloudFlowItems;
                      self->_transferableHiddenInCloudFlowItems = array2;

                      transferableHiddenInCloudFlowItems = self->_transferableHiddenInCloudFlowItems;
                    }

                    [(NSMutableArray *)transferableHiddenInCloudFlowItems addObject:v15];
                  }
                }

                else
                {
                  v108[0] = @"planItem";
                  v108[1] = @"deviceInfo";
                  v109[0] = v15;
                  v109[1] = v87;
                  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
                  [(NSMutableArray *)self->_transferItems addObject:v41];
                }

                goto LABEL_20;
              }

              plan3 = _TSLogDomain(v20);
              if (os_log_type_enabled(plan3, OS_LOG_TYPE_ERROR))
              {
                plan4 = [v15 plan];
                *buf = 138412546;
                v103 = plan4;
                v104 = 2080;
                v105 = "[TSTransferCloudFlowModel filterTransferPlans:]";
                _os_log_error_impl(&dword_262AA8000, plan3, OS_LOG_TYPE_ERROR, "[E]%@ is not a CTRemotePlan @%s", buf, 0x16u);
              }
            }

            else
            {
              plan3 = _TSLogDomain(v17);
              if (os_log_type_enabled(plan3, OS_LOG_TYPE_ERROR))
              {
                [(TSTransferCloudFlowModel *)v112 filterTransferPlans:plan3];
              }
            }

LABEL_25:

            ++v14;
          }

          while (v12 != v14);
          v42 = [remoteDisplayPlans countByEnumeratingWithState:&v93 objects:v114 count:16];
          v12 = v42;
        }

        while (v42);
      }

      v8 = v84 + 1;
    }

    while (v84 + 1 != v82);
    v82 = [obj countByEnumeratingWithState:&v97 objects:v115 count:16];
  }

  while (v82);

  if ((v7 & 1) == 0)
  {
LABEL_61:
    self->_needOfferQRCodeOption = 1;
  }

  v45 = _TSLogDomain(v43);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [(NSMutableArray *)self->_transferItems count];
    transferItems = self->_transferItems;
    *buf = 134218498;
    v103 = v46;
    v104 = 2112;
    v105 = transferItems;
    v106 = 2080;
    v107 = "[TSTransferCloudFlowModel filterTransferPlans:]";
    _os_log_impl(&dword_262AA8000, v45, OS_LOG_TYPE_DEFAULT, "transfer plans [%lu] : %@ @%s", buf, 0x20u);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v48 = self->_transferItems;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v89 objects:v101 count:16];
  if (!v49)
  {
    goto LABEL_106;
  }

  v50 = v49;
  v51 = *v90;
  v88 = v48;
  v85 = *v90;
  while (2)
  {
    v52 = 0;
    while (2)
    {
      if (*v90 != v51)
      {
        objc_enumerationMutation(v48);
      }

      v53 = [*(*(&v89 + 1) + 8 * v52) objectForKeyedSubscript:@"planItem"];
      plan5 = [v53 plan];
      transferAttributes2 = [plan5 transferAttributes];
      if (![transferAttributes2 transferCapability])
      {
        goto LABEL_88;
      }

      transferAttributes3 = [plan5 transferAttributes];
      if ([transferAttributes3 transferCapability] == 1)
      {
        goto LABEL_87;
      }

      transferAttributes4 = [plan5 transferAttributes];
      if ([transferAttributes4 transferCapability] == 13)
      {
        goto LABEL_86;
      }

      transferAttributes5 = [plan5 transferAttributes];
      if ([transferAttributes5 transferCapability] == 9)
      {
        goto LABEL_85;
      }

      v86 = transferAttributes5;
      transferAttributes6 = [plan5 transferAttributes];
      if ([transferAttributes6 transferCapability] == 7)
      {
        goto LABEL_84;
      }

      transferAttributes7 = [plan5 transferAttributes];
      if ([transferAttributes7 transferCapability] == 12)
      {
        goto LABEL_83;
      }

      v83 = transferAttributes7;
      transferAttributes8 = [plan5 transferAttributes];
      if ([transferAttributes8 transferCapability] == 8)
      {
        goto LABEL_82;
      }

      v81 = transferAttributes8;
      transferAttributes9 = [plan5 transferAttributes];
      if ([transferAttributes9 transferCapability] == 14)
      {
        goto LABEL_81;
      }

      obja = transferAttributes9;
      transferAttributes10 = [plan5 transferAttributes];
      if ([transferAttributes10 transferCapability] == 15)
      {
        goto LABEL_80;
      }

      v77 = transferAttributes10;
      transferAttributes11 = [plan5 transferAttributes];
      if ([transferAttributes11 transferCapability] == 16)
      {

        transferAttributes10 = v77;
LABEL_80:

        transferAttributes9 = obja;
LABEL_81:

        transferAttributes8 = v81;
LABEL_82:

        transferAttributes7 = v83;
LABEL_83:

        v51 = v85;
LABEL_84:

        transferAttributes5 = v86;
LABEL_85:

        v48 = v88;
LABEL_86:

LABEL_87:
LABEL_88:
      }

      else
      {
        v75 = transferAttributes11;
        transferAttributes12 = [plan5 transferAttributes];
        if ([transferAttributes12 transferCapability] == 17)
        {
          v72 = 0;
        }

        else
        {
          transferAttributes13 = [plan5 transferAttributes];
          if ([transferAttributes13 transferCapability] == 18)
          {
            v65 = 0;
          }

          else
          {
            transferAttributes14 = [plan5 transferAttributes];
            if ([transferAttributes14 transferCapability] == 19)
            {
              v65 = 0;
            }

            else
            {
              transferAttributes15 = [plan5 transferAttributes];
              if ([transferAttributes15 transferCapability] == 10)
              {
                v65 = 0;
              }

              else
              {
                transferAttributes16 = [plan5 transferAttributes];
                v65 = [transferAttributes16 transferCapability] != 20;
              }
            }
          }

          v72 = v65;
        }

        v48 = v88;
        v51 = v85;
        if (v72)
        {

          goto LABEL_109;
        }
      }

      if (v50 != ++v52)
      {
        continue;
      }

      break;
    }

    v66 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v89 objects:v101 count:16];
    v50 = v66;
    if (v66)
    {
      continue;
    }

    break;
  }

LABEL_106:

  v68 = _TSLogDomain(v67);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    [TSTransferCloudFlowModel filterTransferPlans:v68];
  }

  [(NSMutableArray *)self->_transferItems removeAllObjects];
LABEL_109:
  plansCopy = v76;
LABEL_110:
}

- (void)requestCarrierSetups:(id)setups
{
  setupsCopy = setups;
  if (setupsCopy)
  {
    objc_initWeak(&location, self);
    v5 = +[TSCoreTelephonyClientCache sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__TSTransferCloudFlowModel_requestCarrierSetups___block_invoke;
    v14[3] = &unk_279B452E8;
    objc_copyWeak(&v16, &location);
    v14[4] = self;
    v15 = setupsCopy;
    [v5 getCarrierSetupWithCompletion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = _TSLogDomain(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(TSTransferCloudFlowModel *)v6 requestCarrierSetups:v7, v8, v9, v10, v11, v12, v13];
    }
  }
}

void __49__TSTransferCloudFlowModel_requestCarrierSetups___block_invoke(uint64_t a1, void *a2)
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
      v14 = "[TSTransferCloudFlowModel requestCarrierSetups:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "Carrier setup %@ @%s", buf, 0x16u);
    }

    objc_storeStrong(v6 + 8, a2);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__TSTransferCloudFlowModel_requestCarrierSetups___block_invoke_44;
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

- (void)filterCarrierSetupItems:(id)items
{
  v30 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  transferPlans = self->_transferPlans;
  plans = [itemsCopy plans];
  [(NSMutableArray *)transferPlans filteredPlansWithoutSODATether:plans];

  if (itemsCopy)
  {
    plans2 = [itemsCopy plans];
    v9 = [plans2 count];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([TSFlowHelper hasTransferablePlanWithSameCarrierName:itemsCopy transferablePlans:self->_transferItems inBuddy:1 matchingSODACarrierWebsheetTransferPlanIndex:v10])
      {
        [(TSTransferCloudFlowModel *)self clearCarrierSetupItemsCache];
      }

      else
      {
        objc_storeStrong(&self->_carrierSetupItems, items);
      }

      v11 = [TSFlowHelper getAccountMemberTransferablePlanWithSameCarrierName:itemsCopy transferablePlans:self->_transferItems];

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
              v28 = "[TSTransferCloudFlowModel filterCarrierSetupItems:]";
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
        [(TSTransferCloudFlowModel *)self clearCarrierSetupItemsCache];
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
        [(TSTransferCloudFlowModel *)v12 getWebsheetInfo:v13 completion:v14, v15, v16, v17, v18, v19];
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
      v27[2] = __55__TSTransferCloudFlowModel_getWebsheetInfo_completion___block_invoke;
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
      *(location + 4) = "[TSTransferCloudFlowModel getWebsheetInfo:completion:]";
      _os_log_impl(&dword_262AA8000, v26, OS_LOG_TYPE_DEFAULT, "No carrier setup items @%s", location, 0xCu);
    }

    v8[2](v8);
  }
}

void __55__TSTransferCloudFlowModel_getWebsheetInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 10, a2);
    objc_storeStrong(v9 + 11, a3);
  }

  else
  {
    v10 = _TSLogDomain(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __55__TSTransferCloudFlowModel_getWebsheetInfo_completion___block_invoke_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestCrossPlatformTransferPlanListWithCompletion:(id)completion
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
    v17[2] = __79__TSTransferCloudFlowModel_requestCrossPlatformTransferPlanListWithCompletion___block_invoke;
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
      [(TSTransferCloudFlowModel *)v9 requestCrossPlatformTransferPlanListWithCompletion:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __79__TSTransferCloudFlowModel_requestCrossPlatformTransferPlanListWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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
        __79__TSTransferCloudFlowModel_requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_1();
      }
    }

    v10 = _TSLogDomain(WeakRetained);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v5;
      v22 = 2080;
      v23 = "[TSTransferCloudFlowModel requestCrossPlatformTransferPlanListWithCompletion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "Cross platform transfer items %@ @%s", &v20, 0x16u);
    }

    v11 = v5;
    v12 = v8[9];
    v8[9] = v11;
  }

  else
  {
    v12 = _TSLogDomain(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __79__TSTransferCloudFlowModel_requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)clearCarrierSetupItemsCache
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TSTransferCloudFlowModel clearCarrierSetupItemsCache]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Clear carrier setup items cache @%s", &v7, 0xCu);
  }

  carrierSetupItems = self->_carrierSetupItems;
  self->_carrierSetupItems = 0;

  websheetUrl = self->_websheetUrl;
  self->_websheetUrl = 0;

  postdata = self->_postdata;
  self->_postdata = 0;
}

void __46__TSTransferCloudFlowModel_arePlansAvailable___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferCloudFlowModel arePlansAvailable:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __55__TSTransferCloudFlowModel_requestPlansWithCompletion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferCloudFlowModel requestPlansWithCompletion:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid self @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)requestTransferPlans:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferCloudFlowModel requestTransferPlans:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid completion @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __49__TSTransferCloudFlowModel_requestTransferPlans___block_invoke_38_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferCloudFlowModel requestTransferPlans:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)filterTransferPlans:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[TSTransferCloudFlowModel filterTransferPlans:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] transferable plan cannot proceed via cloud flow @%s", buf, 0xCu);
}

- (void)filterTransferPlans:(os_log_t)log .cold.2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[TSTransferCloudFlowModel filterTransferPlans:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid CTRemotePlan @%s", buf, 0xCu);
}

- (void)filterTransferPlans:(os_log_t)log .cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSTransferCloudFlowModel filterTransferPlans:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] no eligible plan to transfer in buddy @%s", &v1, 0xCu);
}

- (void)requestCarrierSetups:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferCloudFlowModel requestCarrierSetups:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid completion @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getWebsheetInfo:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferCloudFlowModel getWebsheetInfo:completion:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Wrong number of carrier setup items on server @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __55__TSTransferCloudFlowModel_getWebsheetInfo_completion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferCloudFlowModel getWebsheetInfo:completion:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)requestCrossPlatformTransferPlanListWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferCloudFlowModel requestCrossPlatformTransferPlanListWithCompletion:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid completion @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __79__TSTransferCloudFlowModel_requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSTransferCloudFlowModel requestCrossPlatformTransferPlanListWithCompletion:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end