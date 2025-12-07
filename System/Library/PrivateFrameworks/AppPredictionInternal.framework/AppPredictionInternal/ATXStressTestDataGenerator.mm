@interface ATXStressTestDataGenerator
- (id)_startCallIntentWithRecipientName:(id)name;
- (id)_visitWebpageNSUAForURLString:(id)string;
- (void)_updateActionFeedbackWithConfirmsAndRejects;
- (void)_updateDonationPipelineWithIntentsAndNSUAs;
- (void)clearAllDataForStressCycler;
- (void)clearAllDataForStressCyclerWithCompletion:(id)completion;
- (void)clearDataForBehavioralActionPredictions;
- (void)enumerateSampleIntentAndUserActivityATXActionsWithBlock:(id)block;
- (void)enumerateSampleIntentAndUserActivityEventsWithBlock:(id)block;
- (void)generateDataForBehavioralActionPredictions;
- (void)seedAllDataForStressCycler;
- (void)setupForStressCyclerWithCompletion:(id)completion;
@end

@implementation ATXStressTestDataGenerator

- (void)clearAllDataForStressCycler
{
  v9 = *MEMORY[0x277D85DE8];
  sel_getName(a2);
  v3 = os_transaction_create();
  v4 = __atxlog_handle_default([(ATXStressTestDataGenerator *)self clearDataForBehavioralActionPredictions]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - clearAllDataForStressCycler finished", &v7, 0xCu);
  }
}

- (void)seedAllDataForStressCycler
{
  v9 = *MEMORY[0x277D85DE8];
  sel_getName(a2);
  v3 = os_transaction_create();
  v4 = __atxlog_handle_default([(ATXStressTestDataGenerator *)self generateDataForBehavioralActionPredictions]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - seedAllDataForStressCycler finished", &v7, 0xCu);
  }
}

- (void)setupForStressCyclerWithCompletion:(id)completion
{
  completionCopy = completion;
  [(ATXStressTestDataGenerator *)self clearAllDataForStressCycler];
  [(ATXStressTestDataGenerator *)self seedAllDataForStressCycler];
  completionCopy[2](completionCopy, 0);

  xpc_transaction_exit_clean();
}

- (void)clearAllDataForStressCyclerWithCompletion:(id)completion
{
  completionCopy = completion;
  [(ATXStressTestDataGenerator *)self clearAllDataForStressCycler];
  completionCopy[2](completionCopy, 0);
}

- (void)generateDataForBehavioralActionPredictions
{
  [(ATXStressTestDataGenerator *)self _updateDonationPipelineWithIntentsAndNSUAs];

  [(ATXStressTestDataGenerator *)self _updateActionFeedbackWithConfirmsAndRejects];
}

- (void)clearDataForBehavioralActionPredictions
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_default(+[_ATXActionUtils resetActionPredictions]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%@ - BehavioralActionPredictions: cleared all action prediction data", &v5, 0xCu);
  }
}

- (void)_updateDonationPipelineWithIntentsAndNSUAs
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [ATXAppIntentMonitor alloc];
  v4 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v5 = +[_ATXAppInfoManager sharedInstance];
  v6 = +[_ATXAppLaunchSequenceManager sharedInstance];
  v7 = +[_ATXDataStore sharedInstance];
  v8 = [(ATXAppIntentMonitor *)v3 initWithAppLaunchHistogramManager:v4 appInfoManager:v5 appActionLaunchSequenceManager:v6 dataStore:v7];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__ATXStressTestDataGenerator_BehavioralActionPredictions___updateDonationPipelineWithIntentsAndNSUAs__block_invoke;
  v14[3] = &unk_27859B838;
  v9 = v8;
  v15 = v9;
  v16 = &v17;
  v10 = __atxlog_handle_default([(ATXStressTestDataGenerator *)self enumerateSampleIntentAndUserActivityEventsWithBlock:v14]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = v18[3];
    *buf = 138412546;
    v22 = v12;
    v23 = 2048;
    v24 = v13;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%@ - BehavioralActionPredictions: finished updating donation pipeline with: %lu actions", buf, 0x16u);
  }

  _Block_object_dispose(&v17, 8);
}

void __101__ATXStressTestDataGenerator_BehavioralActionPredictions___updateDonationPipelineWithIntentsAndNSUAs__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 startDate];
  v6 = [v4 endDate];
  LODWORD(v7) = 1.0;
  [v3 updateActionPredictionPipelineForIntentEvent:v4 weight:v5 appSessionStartDate:v6 appSessionEndDate:v7];

  ++*(*(*(a1 + 40) + 8) + 24);
}

- (void)_updateActionFeedbackWithConfirmsAndRejects
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[_ATXDataStore sharedInstance];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __102__ATXStressTestDataGenerator_BehavioralActionPredictions___updateActionFeedbackWithConfirmsAndRejects__block_invoke;
  v9[3] = &unk_27859B860;
  v10 = &unk_283A57E90;
  v4 = v3;
  v11 = v4;
  v12 = &v13;
  v5 = __atxlog_handle_default([(ATXStressTestDataGenerator *)self enumerateSampleIntentAndUserActivityATXActionsWithBlock:v9]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v14[3];
    *buf = 138412546;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - BehavioralActionPredictions: finished updating action feedback %lu times", buf, 0x16u);
  }

  _Block_object_dispose(&v13, 8);
}

void __102__ATXStressTestDataGenerator_BehavioralActionPredictions___updateActionFeedbackWithConfirmsAndRejects__block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 32);
  v28 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v28)
  {
    v27 = *v36;
    v4 = off_278594000;
    v34 = a1;
    do
    {
      v5 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v5;
        v30 = [*(*(&v35 + 1) + 8 * v5) unsignedIntValue];
        v6 = 3;
        do
        {
          v33 = v6;
          v7 = arc4random_uniform(0xFFFFFFFF) == -1;
          v8 = arc4random_uniform(0xFFFFFFFF) == -1;
          v31 = *(a1 + 40);
          v32 = v8;
          v9 = v4[204];
          v10 = [v3 actionKey];
          v11 = [(__objc2_class *)v9 getActionTypeFromActionKey:v10];
          v12 = [v3 bundleId];
          v13 = [v3 slotSet];
          v14 = [v3 actionUUID];
          v15 = objc_opt_new();
          LOBYTE(v24) = v30;
          [v31 recordConfirms:2 rejects:v11 forFeedbackType:v12 forActionType:v3 bundleId:v13 action:v14 slotSet:1.0 actionUUID:0.0 date:v15 consumerSubType:v24 geohash:v7 coarseGeohash:v8];

          v16 = *(v34 + 40);
          v17 = [v3 actionKey];
          v18 = [_ATXActionUtils getActionTypeFromActionKey:v17];
          v19 = [v3 bundleId];
          v20 = [v3 slotSet];
          v21 = [v3 actionUUID];
          v22 = objc_opt_new();
          LOBYTE(v25) = v30;
          v23 = v16;
          a1 = v34;
          v4 = off_278594000;
          [v23 recordConfirms:2 rejects:v18 forFeedbackType:v19 forActionType:v3 bundleId:v20 action:v21 slotSet:0.0 actionUUID:1.0 date:v22 consumerSubType:v25 geohash:v7 coarseGeohash:v32];

          *(*(*(v34 + 48) + 8) + 24) += 2;
          v6 = v33 - 1;
        }

        while (v33 != 1);
        v5 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v28);
  }
}

- (id)_visitWebpageNSUAForURLString:(id)string
{
  v3 = MEMORY[0x277CC1EF0];
  stringCopy = string;
  v5 = [v3 alloc];
  v6 = [v5 initWithActivityType:*MEMORY[0x277CCA850]];
  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:stringCopy];
  [v6 setWebpageURL:v7];

  stringCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SC DEBUG: %@", stringCopy];
  [v6 setTitle:stringCopy];

  [v6 setEligibleForPrediction:1];

  return v6;
}

- (id)_startCallIntentWithRecipientName:(id)name
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD3E98];
  nameCopy = name;
  v5 = [[v3 alloc] initWithValue:nameCopy type:0];
  v6 = objc_alloc(MEMORY[0x277CD3E90]);
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SC DEBUG: %@", nameCopy];

  v8 = [v6 initWithPersonHandle:v5 nameComponents:0 displayName:nameCopy image:0 contactIdentifier:0 customIdentifier:0];
  v9 = objc_alloc(MEMORY[0x277CD41A8]);
  v13[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v9 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:1 destinationType:1 contacts:v10 callCapability:1];

  return v11;
}

- (void)enumerateSampleIntentAndUserActivityATXActionsWithBlock:(id)block
{
  v49 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v37 = +[_ATXAppIconState sharedInstance];
  allAppsKnownToSpringBoard = [v37 allAppsKnownToSpringBoard];
  v6 = [allAppsKnownToSpringBoard subarrayWithRange:{0, 30}];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v6;
  v40 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v40)
  {
    v39 = *v45;
    v7 = 0x277CCA000uLL;
    v8 = 0x277CCA000uLL;
    v9 = 0x277CEB000uLL;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v10;
        v43 = *(*(&v44 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        for (i = 0; i != 5; ++i)
        {
          v12 = v7;
          v13 = objc_alloc(*(v7 + 3240));
          [*(v8 + 2992) numberWithUnsignedInteger:i];
          v15 = v14 = v8;
          v16 = [v13 initWithFormat:@"https://www.example%@.com", v15];

          v17 = [(ATXStressTestDataGenerator *)self _visitWebpageNSUAForURLString:v16];
          selfCopy = self;
          v19 = objc_alloc(*(v9 + 712));
          v20 = v9;
          v21 = objc_opt_new();
          LOBYTE(v36) = 0;
          v22 = [v19 initWithNSUserActivity:v17 actionUUID:v21 bundleId:v43 contentAttributeSet:0 itemIdentifier:0 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v36 title:v16 subtitle:v16];

          v23 = objc_autoreleasePoolPush();
          blockCopy[2](blockCopy, v22);
          v24 = v23;
          v9 = v20;
          objc_autoreleasePoolPop(v24);

          self = selfCopy;
          v8 = v14;

          v7 = v12;
        }

        for (j = 0; j != 5; ++j)
        {
          v26 = objc_alloc(*(v7 + 3240));
          v27 = [*(v8 + 2992) numberWithUnsignedInteger:j];
          v28 = [v26 initWithFormat:@"Contact Name: %@", v27];

          v29 = [(ATXStressTestDataGenerator *)self _startCallIntentWithRecipientName:v28];
          v30 = objc_alloc(*(v9 + 712));
          v31 = objc_opt_new();
          LOBYTE(v35) = 0;
          v32 = [v30 initWithIntent:v29 actionUUID:v31 bundleId:v43 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v35 title:v28 subtitle:v28];

          v33 = objc_autoreleasePoolPush();
          blockCopy[2](blockCopy, v32);
          v34 = v33;
          v9 = v20;
          objc_autoreleasePoolPop(v34);

          self = selfCopy;
          v8 = v14;

          v7 = v12;
        }

        objc_autoreleasePoolPop(context);
        v10 = v42 + 1;
      }

      while (v42 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v40);
  }
}

- (void)enumerateSampleIntentAndUserActivityEventsWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __111__ATXStressTestDataGenerator_BehavioralActionPredictions__enumerateSampleIntentAndUserActivityEventsWithBlock___block_invoke;
  v6[3] = &unk_27859B888;
  v7 = blockCopy;
  v5 = blockCopy;
  [(ATXStressTestDataGenerator *)self enumerateSampleIntentAndUserActivityATXActionsWithBlock:v6];
}

void __111__ATXStressTestDataGenerator_BehavioralActionPredictions__enumerateSampleIntentAndUserActivityEventsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v4 = objc_opt_new();
  v5 = [v3 initWithStartDate:v4 duration:20.0];

  v6 = [v16 intent];

  if (v6)
  {
    v7 = [v16 intent];
    v8 = [v7 _className];
  }

  else
  {
    v9 = [v16 userActivity];

    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = MEMORY[0x277CEB2C8];
    v7 = [v16 userActivity];
    v11 = [v7 activityType];
    v8 = [v10 getNSUATypefromActivityType:v11];
  }

  if (v8)
  {
    v12 = objc_alloc(MEMORY[0x277CEB5D8]);
    v13 = [v16 bundleId];
    v14 = [v12 initWithBundleId:v13 intentType:v8 dateInterval:v5 action:v16];

    v15 = objc_autoreleasePoolPush();
    (*(*(a1 + 32) + 16))();
    objc_autoreleasePoolPop(v15);
  }

LABEL_7:
}

@end