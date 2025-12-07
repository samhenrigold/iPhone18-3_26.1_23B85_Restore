@interface NTNewsModuleDescriptorsOperation
- (BOOL)validateOperation;
- (void)_continueOperationWithTodayData:(id)data;
- (void)_donateTodayConfigDataToNewsd:(id)newsd;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation NTNewsModuleDescriptorsOperation

- (BOOL)validateOperation
{
  contentContext = [(NTTodayModuleDescriptorsOperation *)self contentContext];

  if (!contentContext && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsModuleDescriptorsOperation validateOperation];
  }

  privateDataStorage = [(NTTodayModuleDescriptorsOperation *)self privateDataStorage];

  if (!privateDataStorage && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsModuleDescriptorsOperation validateOperation];
  }

  descriptorsCompletion = [(NTTodayModuleDescriptorsOperation *)self descriptorsCompletion];

  if (!descriptorsCompletion && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsModuleDescriptorsOperation validateOperation];
  }

  if (contentContext)
  {
    v6 = privateDataStorage == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6 && descriptorsCompletion != 0;
}

- (void)performOperation
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    *buf = 138543362;
    v9 = shortOperationDescription;
    _os_log_impl(&dword_25BF21000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch private data", buf, 0xCu);
  }

  privateDataStorage = [(NTTodayModuleDescriptorsOperation *)self privateDataStorage];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__NTNewsModuleDescriptorsOperation_performOperation__block_invoke;
  v7[3] = &unk_279983A10;
  v7[4] = self;
  [privateDataStorage readPrivateDataSyncWithAccessor:v7];
}

void __52__NTNewsModuleDescriptorsOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 shortOperationDescription];
    v8 = [v3 bundleSubscription];
    if ([v8 isSubscribed])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [v3 rankedAllSubscribedTagIDs];
    v11 = [v10 count];
    v12 = [v3 localNewsTagID];
    v13 = v12;
    v14 = @"<nil>";
    *v15 = 138544130;
    *&v15[4] = v7;
    if (v12)
    {
      v14 = v12;
    }

    *&v15[12] = 2114;
    *&v15[14] = v9;
    v16 = 2048;
    v17 = v11;
    v18 = 2114;
    v19 = v14;
    _os_log_impl(&dword_25BF21000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ did fetch private data, isBundleSubscribed=%{public}@, followedTagIDs=%lu, localNewsTagID=%{public}@", v15, 0x2Au);
  }

  [*(a1 + 32) _continueOperationWithTodayData:{v3, *v15, *&v15[8]}];
}

- (void)_continueOperationWithTodayData:(id)data
{
  v85 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contentRequest = [(NTTodayModuleDescriptorsOperation *)self contentRequest];
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x3032000000;
  v78[3] = __Block_byref_object_copy__1;
  v78[4] = __Block_byref_object_dispose__1;
  v79 = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = __Block_byref_object_copy__1;
  v76[4] = __Block_byref_object_dispose__1;
  v77 = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = __Block_byref_object_copy__1;
  v74[4] = __Block_byref_object_dispose__1;
  v75 = 0;
  contentContext = [(NTTodayModuleDescriptorsOperation *)self contentContext];
  appConfigurationManager = [contentContext appConfigurationManager];
  possiblyUnfetchedAppConfiguration = [appConfigurationManager possiblyUnfetchedAppConfiguration];
  userSegmentationInWidgetAllowed = [possiblyUnfetchedAppConfiguration userSegmentationInWidgetAllowed];

  v9 = NewsCoreUserDefaults();
  v10 = [v9 BOOLForKey:*MEMORY[0x277D30D18]];

  LODWORD(v9) = v10 & userSegmentationInWidgetAllowed;
  v11 = dispatch_group_create();
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    dispatch_group_enter(v11);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    bundleSubscription = [dataCopy bundleSubscription];
    isSubscribed = [bundleSubscription isSubscribed];
    v15 = @"free";
    if (isSubscribed)
    {
      v15 = @"premium";
    }

    v47 = v15;

    [dictionary setObject:v47 forKeyedSubscript:@"configType"];
    possiblyUnfetchedAppConfiguration2 = [appConfigurationManager possiblyUnfetchedAppConfiguration];
    articleEmbeddingsEnabled = [possiblyUnfetchedAppConfiguration2 articleEmbeddingsEnabled];

    if (articleEmbeddingsEnabled)
    {
      [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"articleEmbeddingsEnabled"];
    }

    possiblyUnfetchedAppConfiguration3 = [appConfigurationManager possiblyUnfetchedAppConfiguration];
    widgetFetchOfTodayFeedLiteConfigEnabled = [possiblyUnfetchedAppConfiguration3 widgetFetchOfTodayFeedLiteConfigEnabled];

    if (widgetFetchOfTodayFeedLiteConfigEnabled && ![contentRequest moduleDescriptorType])
    {
      bundleSubscription2 = [dataCopy bundleSubscription];
      v43 = [bundleSubscription2 unprotectedSubscriptionState] < 2;

      v20 = v43;
    }

    else
    {
      v20 = 0;
    }

    v21 = *MEMORY[0x277D30B40];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v20;
      shortOperationDescription = [(FCOperation *)self shortOperationDescription];
      v22 = @" not";
      if (v20)
      {
        v22 = &stru_286D90198;
      }

      v44 = v22;
      v23 = @"NO";
      if (widgetFetchOfTodayFeedLiteConfigEnabled)
      {
        v23 = @"YES";
      }

      v24 = v23;
      moduleDescriptorType = [contentRequest moduleDescriptorType];
      bundleSubscription3 = [dataCopy bundleSubscription];
      unprotectedSubscriptionState = [bundleSubscription3 unprotectedSubscriptionState];
      *buf = 138544386;
      *&buf[4] = shortOperationDescription;
      *&buf[12] = 2114;
      *&buf[14] = v44;
      *&buf[22] = 2114;
      v82 = v24;
      LOWORD(v83) = 1024;
      *(&v83 + 2) = moduleDescriptorType;
      HIWORD(v83) = 2048;
      v84 = unprotectedSubscriptionState;
      _os_log_impl(&dword_25BF21000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ will%{public}@ fetch todayLiteConfig, enabledInConfig=%{public}@, descriptorType=%d, subscriptionState=%lu", buf, 0x30u);

      v20 = v46;
    }

    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke;
    v68[3] = &unk_279983A60;
    v68[4] = self;
    v71 = v74;
    v72 = v78;
    v73 = v76;
    v69 = v11;
    v70 = appConfigurationManager;
    [v70 fetchAppWidgetConfigurationWithTodayLiteConfig:v20 additionalFields:dictionary completion:v68];
  }

  else
  {
    dispatch_group_enter(v11);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_2;
    aBlock[3] = &unk_279983A38;
    v66 = v74;
    v67 = v78;
    v65 = v11;
    v28 = _Block_copy(aBlock);
    if ([(NTTodayModuleDescriptorsOperation *)self requireRefreshedAppConfig])
    {
      [(NTNewsModuleDescriptorsOperation *)self qualityOfService];
      v29 = FCDispatchQueueForQualityOfService();
      [appConfigurationManager refreshAppConfigurationIfNeededWithCompletionQueue:v29 refreshCompletion:v28];
    }

    else
    {
      [appConfigurationManager fetchAppConfigurationIfNeededWithCompletion:v28];
    }

    dictionary = v65;
  }

  tagID = [contentRequest tagID];
  if (tagID)
  {
    tagID2 = [contentRequest tagID];
    v80 = tagID2;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  }

  else
  {
    v32 = MEMORY[0x277CBEBF8];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v82 = __Block_byref_object_copy__1;
  v83 = __Block_byref_object_dispose__1;
  v84 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__1;
  v62[4] = __Block_byref_object_dispose__1;
  v63 = 0;
  contentContext2 = [(NTTodayModuleDescriptorsOperation *)self contentContext];
  tagController = [contentContext2 tagController];

  dispatch_group_enter(v11);
  qualityOfService = [(NTNewsModuleDescriptorsOperation *)self qualityOfService];
  [(NTNewsModuleDescriptorsOperation *)self qualityOfService];
  v36 = FCDispatchQueueForQualityOfService();
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_3;
  v58[3] = &unk_279983A88;
  v60 = buf;
  v61 = v62;
  v37 = v11;
  v59 = v37;
  [tagController fetchTagsForTagIDs:v32 qualityOfService:qualityOfService callbackQueue:v36 completionHandler:v58];

  [(NTNewsModuleDescriptorsOperation *)self qualityOfService];
  v38 = FCDispatchQueueForQualityOfService();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_4;
  block[3] = &unk_279983B78;
  block[4] = self;
  v50 = dataCopy;
  v51 = contentContext;
  v52 = contentRequest;
  v53 = v74;
  v54 = buf;
  v55 = v62;
  v56 = v78;
  v57 = v76;
  v39 = contentRequest;
  v40 = contentContext;
  v41 = dataCopy;
  dispatch_group_notify(v37, v38, block);

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v74, 8);
  _Block_object_dispose(v76, 8);

  _Block_object_dispose(v78, 8);
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = v13;
    v16 = [v14 shortOperationDescription];
    *buf = 138543618;
    v28 = v16;
    v29 = 2048;
    v30 = [v11 length];
    _os_log_impl(&dword_25BF21000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ fetched todayLiteConfig of length %lu", buf, 0x16u);
  }

  [*(a1 + 32) _donateTodayConfigDataToNewsd:v11];
  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v12;
  v19 = v12;

  if (v19)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_84;
    v24[3] = &unk_279983A38;
    v26 = *(a1 + 56);
    v20 = *(a1 + 48);
    v25 = *(a1 + 40);
    [v20 fetchAppConfigurationIfNeededWithCompletion:v24];
  }

  else
  {
    v21 = [v9 copy];
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 40));
  }
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v9 copy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v9 copy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = a1[4];

  dispatch_group_leave(v12);
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_4(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = *(a1 + 32);

    [v2 finishedPerformingOperationWithError:?];
  }

  else
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = [MEMORY[0x277CBEB18] array];
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x3032000000;
    v52[3] = __Block_byref_object_copy__1;
    v52[4] = __Block_byref_object_dispose__1;
    v53 = 0;
    v6 = NTSharedLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [*(a1 + 40) purchasedTagIDs];
      v10 = [*(a1 + 40) bundleSubscription];
      *buf = 138543874;
      v55 = v8;
      v56 = 2114;
      v57 = v9;
      v58 = 2114;
      v59 = v10;
      _os_log_impl(&dword_25BF21000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ created access checker with %{public}@ and %{public}@", buf, 0x20u);
    }

    v11 = objc_alloc(MEMORY[0x277D311B8]);
    v12 = *(a1 + 40);
    v13 = [*(a1 + 48) configurationManager];
    v14 = [v11 initWithPurchaseProvider:v12 bundleSubscriptionProvider:v12 configurationManager:v13];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_91;
    aBlock[3] = &unk_279983AB0;
    aBlock[4] = *(a1 + 32);
    v15 = v14;
    v48 = v15;
    v16 = v5;
    v49 = v16;
    v17 = v3;
    v50 = v17;
    v18 = v4;
    v51 = v18;
    v19 = _Block_copy(aBlock);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_95;
    v40[3] = &unk_279983B28;
    v40[4] = *(a1 + 32);
    v41 = *(a1 + 56);
    v45 = *(a1 + 72);
    v20 = v18;
    v42 = v20;
    v21 = v17;
    v43 = v21;
    v22 = v16;
    v44 = v22;
    v46 = v52;
    v23 = _Block_copy(v40);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_3_100;
    v31[3] = &unk_279983B50;
    v38 = *(a1 + 88);
    v32 = *(a1 + 40);
    v24 = v21;
    v39 = v52;
    v25 = *(a1 + 32);
    v33 = v24;
    v34 = v25;
    v26 = v22;
    v35 = v26;
    v27 = v20;
    v36 = v27;
    v37 = *(a1 + 56);
    v28 = _Block_copy(v31);
    if (*(*(*(a1 + 96) + 8) + 40))
    {
      v29 = objc_opt_new();
      [v29 setPurpose:*MEMORY[0x277D30BD8]];
      [v29 setConfiguration:*(*(*(a1 + 88) + 8) + 40)];
      [v29 setWidgetConfiguration:*(*(*(a1 + 96) + 8) + 40)];
      [v29 setContext:*(a1 + 48)];
    }

    else
    {
      v29 = objc_opt_new();
      [v29 setPurpose:*MEMORY[0x277D30BD8]];
      [v29 setConfiguration:*(*(*(a1 + 88) + 8) + 40)];
      [v29 setContext:*(a1 + 48)];
      v30 = [*(*(*(a1 + 88) + 8) + 40) widgetConfigID];
      [v29 setWidgetConfigID:v30];
    }

    [v29 setDefaultConfigCompletionHandler:v19];
    [v29 setSingleTagConfigCompletionHandler:v23];
    [v29 setCompletionBlock:v28];
    [*(a1 + 32) associateChildOperation:v29];
    [v29 start];

    _Block_object_dispose(v52, 8);
  }
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_91(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = NTSharedLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v20 = 138543874;
    v21 = v12;
    v22 = 2114;
    v23 = v7;
    v24 = 2048;
    v25 = v8;
    _os_log_impl(&dword_25BF21000, v10, OS_LOG_TYPE_INFO, "%{public}@ fetched default config %{public}@ heldRecordsByType %p", &v20, 0x20u);
  }

  v13 = *(a1 + 40);
  v14 = [v8 objectForKeyedSubscript:&unk_286D9EDE0];
  [v7 nt_resolveFallbacksWithPaidAccessChecker:v13 heldArticleRecords:v14];

  v15 = [MEMORY[0x277D35548] nt_defaultModule];
  [*(a1 + 48) addObject:v15];
  v16 = [v15 availableContents];
  v17 = [v16 fc_onlyObject];
  v18 = [v17 request];
  v19 = [v18 identifier];

  [*(a1 + 56) fc_safelySetObject:v7 forKey:v19];
  [*(a1 + 64) fc_safelySetObjectAllowingNil:v9 forKey:v19];
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_95(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = NTSharedLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138543874;
    v35 = v12;
    v36 = 2114;
    v37 = v7;
    v38 = 2048;
    v39 = v8;
    _os_log_impl(&dword_25BF21000, v10, OS_LOG_TYPE_INFO, "%{public}@ fetched single tag config %{public}@ heldRecordsByType %p", buf, 0x20u);
  }

  v13 = *(a1 + 40);
  if (!v13 || [v13 moduleDescriptorType] != 1)
  {
    goto LABEL_11;
  }

  v14 = [*(a1 + 40) identifier];
  v15 = [*(a1 + 40) tagID];
  v16 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:v15];
  if (!v16)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_96;
    v30[3] = &unk_279983AD8;
    v33 = *(a1 + 80);
    v31 = *(a1 + 48);
    v32 = v14;
    v20 = v14;
    __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_96(v30);

LABEL_12:
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v7 configByResolvingWithTag:v16];
  if (v18)
  {
    v19 = [MEMORY[0x277D35548] nt_moduleWithTagID:v15];
    [*(a1 + 56) setObject:v18 forKeyedSubscript:v14];
    [*(a1 + 64) addObject:v19];
  }

  else
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_2_99;
    v26 = &unk_279983B00;
    v27 = *(a1 + 48);
    v28 = v14;
    v29 = v9;
    __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_2_99(&v23);

    v19 = v27;
  }

  if (v18)
  {
LABEL_11:
    v21 = [v8 copy];
    v22 = *(*(a1 + 88) + 8);
    v15 = *(v22 + 40);
    *(v22 + 40) = v21;
    goto LABEL_12;
  }

LABEL_13:
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_96(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NewsToday" code:1 userInfo:0];
  }

  v4 = v3;
  [*(a1 + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_2_99(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 32);

    [v2 setObject:? forKeyedSubscript:?];
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NewsToday" code:2 userInfo:0];
    [*(a1 + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }
}

void __68__NTNewsModuleDescriptorsOperation__continueOperationWithTodayData___block_invoke_3_100(uint64_t a1)
{
  v5 = [[NTNewsModuleDescriptorsOperationPrefetchedContent alloc] initWithAppConfiguration:*(*(*(a1 + 80) + 8) + 40) privateData:*(a1 + 32) todayConfigsByRequestID:*(a1 + 40) prefetchedHeldRecordsByType:*(*(*(a1 + 88) + 8) + 40)];
  [*(a1 + 48) setResultTodayModuleDescriptors:*(a1 + 56)];
  [*(a1 + 48) setPrefetchedContent:v5];
  v2 = *(a1 + 64);
  v3 = [*(a1 + 72) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  [*(a1 + 48) finishedPerformingOperationWithError:v4];
}

- (void)_donateTodayConfigDataToNewsd:(id)newsd
{
  v14 = *MEMORY[0x277D85DE8];
  newsdCopy = newsd;
  if ([newsdCopy length])
  {
    ++_donateTodayConfigDataToNewsd__connectionIdentifier;
    v5 = *MEMORY[0x277D30B40];
    if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      shortOperationDescription = [(FCOperation *)self shortOperationDescription];
      *buf = 138543362;
      v13 = shortOperationDescription;
      _os_log_impl(&dword_25BF21000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will donate Today Feed config data to newsd", buf, 0xCu);
    }

    mEMORY[0x277D31418] = [MEMORY[0x277D31418] sharedInstance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__NTNewsModuleDescriptorsOperation__donateTodayConfigDataToNewsd___block_invoke_105;
    v9[3] = &unk_279983BA0;
    v10 = newsdCopy;
    selfCopy = self;
    [mEMORY[0x277D31418] withTodayFeedService:v9];
  }
}

void __66__NTNewsModuleDescriptorsOperation__donateTodayConfigDataToNewsd___block_invoke_105(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a2 adoptFeedConfigData:*(a1 + 32)];
  v3 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = v3;
    v6 = [v4 shortOperationDescription];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_25BF21000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ finished donating Today Feed config data to newsd", &v7, 0xCu);
  }
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  descriptorsCompletion = [(NTTodayModuleDescriptorsOperation *)self descriptorsCompletion];
  resultTodayModuleDescriptors = [(NTNewsModuleDescriptorsOperation *)self resultTodayModuleDescriptors];
  prefetchedContent = [(NTNewsModuleDescriptorsOperation *)self prefetchedContent];
  descriptorsCompletion[2](descriptorsCompletion, resultTodayModuleDescriptors, prefetchedContent, errorCopy);
}

- (void)validateOperation
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"module descriptors operation requires completion"];
  v6 = 136315906;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6);
}

@end