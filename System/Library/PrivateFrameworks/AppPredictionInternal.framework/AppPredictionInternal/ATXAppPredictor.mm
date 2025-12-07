@interface ATXAppPredictor
@end

@implementation ATXAppPredictor

float __77___ATXAppPredictor__copyValidScoreInputsFromPredictionItem_toPredictionItem___block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = *(*(a1 + 32) + 4 * a2 + 16);
  if (v2 != -31337.0)
  {
    *&v2 = ATXSetInput(*(a1 + 40), a2, v2);
  }

  return *&v2;
}

void __65___ATXAppPredictor_scoreAppsWithFeaturesUsingCoreML_scoreLogger___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 score];
  v8 = v7;
  v9 = __atxlog_handle_app_prediction(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __65___ATXAppPredictor_scoreAppsWithFeaturesUsingCoreML_scoreLogger___block_invoke_cold_1();
  }

  v10 = v8;
  *(a2 + 3328) = v10;
  v11 = +[_ATXGlobals sharedInstance];
  [v11 appPredictionMediumConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3332) = v8 >= v12;

  v13 = +[_ATXGlobals sharedInstance];
  [v13 appPredictionHighConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3333) = v8 >= v14;

  if (*(a1 + 32))
  {
    v15 = [v5 intermediateValues];
    if (v15)
    {
      v16 = [v5 intermediateValues];
      v17 = [v16 mutableCopy];
    }

    else
    {
      v17 = [MEMORY[0x277CBEB38] dictionary];
    }

    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    [v17 setObject:v18 forKeyedSubscript:@"TotalScore"];

    v19 = *(a1 + 32);
    v20 = [v5 inputs];
    [v19 logInputs:v20 subscores:v17 forBundleId:*a2];
  }
}

void __84___ATXAppPredictor_scoreActionsWithFeaturesUsingCoreML_consumerSubType_scoreLogger___block_invoke(uint64_t a1, float *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 score];
  v8 = v7;
  v9 = __atxlog_handle_action_prediction(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v21 = *a2;
    v22 = *(a1 + 32);
    v23 = 134218498;
    v24 = v8;
    v25 = 2112;
    v26 = v21;
    v27 = 2112;
    v28 = v22;
    _os_log_debug_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEBUG, "Got a score of %f for %@ by model %@", &v23, 0x20u);
  }

  v10 = v8;
  a2[832] = v10;
  v11 = +[_ATXGlobals sharedInstance];
  [v11 actionPredictionMediumConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3332) = v8 >= v12;

  v13 = +[_ATXGlobals sharedInstance];
  [v13 actionPredictionHighConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3333) = v8 >= v14;

  if (*(a1 + 40))
  {
    v15 = [v5 intermediateValues];
    if (v15)
    {
      v16 = [v5 intermediateValues];
      v17 = [v16 mutableCopy];
    }

    else
    {
      v17 = [MEMORY[0x277CBEB38] dictionary];
    }

    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    [v17 setObject:v18 forKeyedSubscript:@"TotalScore"];

    v19 = *(a1 + 40);
    v20 = [v5 inputs];
    [v19 logInputs:v20 subscores:v17 forBundleId:*a2];
  }
}

void __52___ATXAppPredictor_scoreAppWithFeaturesUsingCoreML___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 score];
  v8 = v7;
  v9 = __atxlog_handle_app_prediction(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __65___ATXAppPredictor_scoreAppsWithFeaturesUsingCoreML_scoreLogger___block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
  v10 = +[_ATXGlobals sharedInstance];
  [v10 appPredictionMediumConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3332) = v8 >= v11;

  v12 = +[_ATXGlobals sharedInstance];
  [v12 appPredictionHighConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3333) = v8 >= v13;
}

void __71___ATXAppPredictor_scoreActionWithFeaturesUsingCoreML_consumerSubType___block_invoke(uint64_t a1, uint64_t *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 score];
  v8 = v7;
  v9 = __atxlog_handle_action_prediction(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = *a2;
    v15 = *(a1 + 32);
    v16 = 134218498;
    v17 = v8;
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    _os_log_debug_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEBUG, "Got a score of %f for %@ by model %@", &v16, 0x20u);
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;
  v10 = +[_ATXGlobals sharedInstance];
  [v10 actionPredictionMediumConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3332) = v8 >= v11;

  v12 = +[_ATXGlobals sharedInstance];
  [v12 actionPredictionHighConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3333) = v8 >= v13;
}

float __119___ATXAppPredictor__getPredictionForItems_clipBundleIdsToRank_consumerSubType_intent_scoreLogger_context_featureCache___block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = *(*(*(a1 + 64) + 8) + 48);
  if (0x13A524387AC82261 * ((*(*(*(a1 + 64) + 8) + 56) - v2) >> 3) <= a2 || ([*(a1 + 32) _predictionScoreAndUpdateConfidenceForItem:v2 + 3336 * a2 interpreter:*(a1 + 40) consumerSubType:*(a1 + 72) scoreLogger:*(a1 + 48) intentType:*(a1 + 56)], v6 = *(*(*(a1 + 64) + 8) + 48), 0x13A524387AC82261 * ((*(*(*(a1 + 64) + 8) + 56) - v6) >> 3) <= a2))
  {
    std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
  }

  result = v5;
  *(v6 + 3336 * a2 + 3328) = result;
  return result;
}

void __49___ATXAppPredictor_inputScoresForPredictionItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 4 * a2 + 16);
  v4 = [_ATXScoreTypes stringForScoreInput:a2];
  [v2 setScore:v3 forKey:?];
}

uint64_t __32___ATXAppPredictor_initInternal__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initAppLaunchAndInstallMonitors];
  [*(a1 + 32) _initDependencies];
  v2 = *(a1 + 32);

  return [v2 _initFeaturizers];
}

void __36___ATXAppPredictor__updateFromAsset__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 192) abGroupIdentifierForConsumerSubType:a2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CEB2B8] abGroupNilString];
  }

  v6 = v5;

  [*(a1 + 40) addObject:v6];
}

void __52___ATXAppPredictor__initAppLaunchAndInstallMonitors__block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 136));
  if ((v1 & 1) == 0)
  {
    v3 = +[_ATXAppInfoManager sharedInstance];
    v4 = objc_opt_new();
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v7 = objc_alloc_init(ATXPredictionContextBuilder);
    v8 = *(a1 + 32);
    v9 = *(v8 + 72);
    *(v8 + 72) = v7;

    v10 = [_ATXAppLaunchMonitor alloc];
    v11 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v12 = +[_ATXAppLaunchSequenceManager sharedInstance];
    v13 = *(*(a1 + 32) + 56);
    v14 = objc_opt_new();
    v15 = objc_opt_new();
    v16 = *(*(a1 + 32) + 72);
    v17 = objc_opt_new();
    v18 = [(_ATXAppLaunchMonitor *)v10 initWithAppInfoManager:v3 appLaunchHistogramManager:v11 appLaunchSequenceManager:v12 appDailyDose:v13 appInFocusStream:v14 displayOnIntervalStream:v15 contextBuilder:v16 tracker:v17];
    v19 = *(a1 + 32);
    v20 = *(v19 + 80);
    *(v19 + 80) = v18;

    v21 = __atxlog_handle_app_prediction([*(*(a1 + 32) + 80) start]);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __52___ATXAppPredictor__initAppLaunchAndInstallMonitors__block_invoke_cold_1();
    }

    v22 = +[ATXAppLaunchLogger sharedInstance];
    v23 = *(a1 + 32);
    v24 = *(v23 + 104);
    *(v23 + 104) = v22;

    v25 = objc_opt_new();
    v26 = *(a1 + 32);
    v27 = *(v26 + 48);
    *(v26 + 48) = v25;

    v28 = [ATXAppIntentMonitor alloc];
    v29 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v30 = +[_ATXAppLaunchSequenceManager sharedInstance];
    v31 = +[_ATXDataStore sharedInstance];
    v32 = [(ATXAppIntentMonitor *)v28 initWithAppLaunchHistogramManager:v29 appInfoManager:v3 appActionLaunchSequenceManager:v30 dataStore:v31];
    v33 = *(a1 + 32);
    v34 = *(v33 + 88);
    *(v33 + 88) = v32;

    v35 = __atxlog_handle_default([*(*(a1 + 32) + 88) start]);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      __52___ATXAppPredictor__initAppLaunchAndInstallMonitors__block_invoke_cold_2();
    }

    objc_storeStrong((*(a1 + 32) + 176), v3);
    v36 = [[_ATXAppInstallMonitor alloc] initWithAppInfoManager:*(*(a1 + 32) + 176)];
    v37 = *(a1 + 32);
    v38 = *(v37 + 96);
    *(v37 + 96) = v36;

    [*(*(a1 + 32) + 96) start];
    v39 = [[_ATXRecentInstallCache alloc] initTrackingAppsMoreRecentThan:300.0];
    v40 = *(a1 + 32);
    v41 = *(v40 + 64);
    *(v40 + 64) = v39;

    atomic_store(1u, (*(a1 + 32) + 136));
    v42 = objc_opt_new();
    v43 = *(a1 + 32);
    v44 = *(v43 + 168);
    *(v43 + 168) = v42;
  }
}

void __37___ATXAppPredictor__initDependencies__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((*(a1 + 32) + 137));
  if ((v2 & 1) == 0)
  {
    v4 = objc_opt_new();
    v5 = *(a1 + 32);
    v6 = *(v5 + 128);
    *(v5 + 128) = v4;

    v7 = objc_opt_new();
    v8 = *(a1 + 32);
    v9 = *(v8 + 216);
    *(v8 + 216) = v7;

    v10 = +[ATXBBNotificationManager sharedInstance];
    v11 = *(a1 + 32);
    v12 = *(v11 + 120);
    *(v11 + 120) = v10;

    v13 = objc_opt_new();
    v14 = *(a1 + 32);
    v15 = *(v14 + 184);
    *(v14 + 184) = v13;

    atomic_store(1u, (*(a1 + 32) + 137));
  }
}

void __200___ATXAppPredictor_predictWithLimit_consumerSubType_intent_candidateBundleIdentifiers_candidateActiontypes_scoreLogger_predictionItemsToKeep_predictedItemsOutParameter_context_datastore_featureCache___block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 152);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = +[ATXDigitalHealthBlacklist sharedInstance];
  v9 = [v8 blacklistedBundleIds];
  v66 = [v4 _appsToPredictWithConsumerSubType:v2 intent:v3 candidateBundleIdentifiers:v5 allSBApps:v6 appPredictionBlacklist:v7 digitalHealthBlacklist:v9];

  v10 = objc_opt_new();
  if ([MEMORY[0x277CEBCF0] consumerTypeForSubType:*(a1 + 152)] == 8)
  {
    v11 = +[ATXHistogramBundleIdTable sharedInstance];
    v12 = *(a1 + 72);
    if (v12)
    {
      v13 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 72)];
    }

    else
    {
      v13 = 0;
    }

    v23 = [_ATXActionUtils actionKeyFilterForCandidateBundleIds:v66 candidateActionTypes:v13 blacklist:*(*(a1 + 32) + 160)];
    v22 = [v11 allKeysFilteredBy:v23];

    if (v12)
    {
    }
  }

  else
  {
    v14 = [v66 allObjects];
    v15 = +[ATXHeroClipManager clipsSupported];
    if (v15)
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v16 = [MEMORY[0x277CFA6E8] appClips];
      v17 = [v16 countByEnumeratingWithState:&v71 objects:v82 count:16];
      if (v17)
      {
        v18 = *v72;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v72 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = [*(*(&v71 + 1) + 8 * i) bundleIdentifier];
            [v10 addObject:v20];
          }

          v17 = [v16 countByEnumeratingWithState:&v71 objects:v82 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v21 = __atxlog_handle_hero(v15);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "Not predicting installed App Clips, since not allowed by MCProfileConnection", buf, 2u);
      }
    }

    v22 = v14;
  }

  v67 = [_ATXAppPredictor pruneItemsToRankForConsumerSubType:*(a1 + 152) itemsToRank:v22 datastore:*(a1 + 80)];

  v24 = *(a1 + 32);
  if (v24)
  {
    objc_msgSend__getPredictionForItems_clipBundleIdsToRank_consumerSubType_intent_scoreLogger_context_featureCache_(v24, *(a1 + 104));
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v25 = *(a1 + 120);
  std::vector<ATXPredictionItem>::__vdeallocate(v25);
  *v25 = *buf;
  *(v25 + 16) = *&buf[16];
  memset(buf, 0, sizeof(buf));
  v75 = buf;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v75);
  v27 = __atxlog_handle_default(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 152)];
    v31 = [v67 count];
    v32 = [v10 count];
    v33 = 0x13A524387AC82261 * ((*(*(a1 + 120) + 8) - **(a1 + 120)) >> 3);
    *buf = 138544386;
    *&buf[4] = v29;
    *&buf[12] = 2114;
    *&buf[14] = v30;
    *&buf[22] = 2050;
    v77 = v31;
    v78 = 2050;
    v79 = v32;
    v80 = 2050;
    v81 = v33;
    _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ - finished app predictions for consumerSubType: %{public}@, num app candidates: %{public}lu, num clip candidates: %{public}lu, num predicted items: %{public}lu", buf, 0x34u);
  }

  v68 = objc_alloc_init(MEMORY[0x277CEB7C8]);
  v34 = objc_alloc(MEMORY[0x277CEB550]);
  v35 = [*(*(a1 + 32) + 208) objectAtIndexedSubscript:*(a1 + 152)];
  v36 = [v34 initWithABGroup:v35 assetVersion:{objc_msgSend(MEMORY[0x277CEB3C0], "version")}];

  v37 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v38 = [v37 histogramForLaunchType:0];

  v39 = *(a1 + 128);
  if (v39 && *(*(a1 + 120) + 8) != **(a1 + 120))
  {
    v40 = 0;
    v41 = 0;
    v42 = 3328;
    do
    {
      v43 = objc_autoreleasePoolPush();
      v44 = *(**(a1 + 120) + v42 - 3328);
      if ([MEMORY[0x277CEBCF0] consumerTypeForSubType:*(a1 + 152)] == 8 || ATXShouldPredictBundle(*(*(a1 + 32) + 176), v44, v38))
      {
        if (v44)
        {
          LODWORD(v45) = *(**(a1 + 120) + v42);
          [v68 recordPrediction:v44 score:v45];
          v46 = **(a1 + 120) + v42;
          LODWORD(v47) = *v46;
          [v36 recordPrediction:v44 actionHash:0 totalScore:v46 - 3312 scoreInputs:*(v46 + 4) isMediumConfidenceForBlendingLayer:*(v46 + 5) isHighConfidenceForBlendingLayer:v47];
        }

        ++v40;
      }

      objc_autoreleasePoolPop(v43);
      v39 = *(a1 + 128);
      if (v39 <= v40)
      {
        break;
      }

      ++v41;
      v42 += 3336;
    }

    while (0x13A524387AC82261 * ((*(*(a1 + 120) + 8) - **(a1 + 120)) >> 3) > v41);
  }

  v48 = *(a1 + 136);
  if (v48)
  {
    v49 = *(a1 + 120);
    v50 = +[_ATXGlobals sharedInstance];
    ATXKeepRandomPredictionItemsBelowLimit(v49, v39, v48, [v50 numberOfRandomAppActionTypesToKeepForLogging]);
  }

  v51 = [ATXAppPredictorPredictionChunks alloc];
  v52 = [v68 finish];
  v53 = [v36 finish];
  v54 = [(ATXAppPredictorPredictionChunks *)v51 initWithPredictionSetChunk:v52 feedbackStateChunk:v53];
  v55 = *(*(a1 + 112) + 8);
  v56 = *(v55 + 40);
  *(v55 + 40) = v54;

  if ([MEMORY[0x277CEBCF0] consumerTypeForSubType:*(a1 + 152)] != 8)
  {
    v57 = atomic_load((*(a1 + 32) + 136));
    if (v57)
    {
      v58 = [*(*(a1 + 32) + 176) allAppsWithInstallDate];
      if ([v58 count])
      {
LABEL_45:

        goto LABEL_46;
      }

      v59 = _ZZZ200___ATXAppPredictor_predictWithLimit_consumerSubType_intent_candidateBundleIdentifiers_candidateActiontypes_scoreLogger_predictionItemsToKeep_predictedItemsOutParameter_context_datastore_featureCache__EUb_E23hasRunFirstTimeTraining;

      if ((v59 & 1) == 0)
      {
        _ZZZ200___ATXAppPredictor_predictWithLimit_consumerSubType_intent_candidateBundleIdentifiers_candidateActiontypes_scoreLogger_predictionItemsToKeep_predictedItemsOutParameter_context_datastore_featureCache__EUb_E23hasRunFirstTimeTraining = 1;
        v61 = __atxlog_handle_default(v60);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v61, OS_LOG_TYPE_INFO, "Since app prediction expert has never been trained, training in background.", buf, 2u);
        }

        sel_getName(*(a1 + 144));
        v62 = os_transaction_create();
        v63 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v58 = dispatch_queue_attr_make_with_qos_class(v63, QOS_CLASS_BACKGROUND, 0);

        v64 = dispatch_queue_create("ATXAppPrediction-initialTrain", v58);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __200___ATXAppPredictor_predictWithLimit_consumerSubType_intent_candidateBundleIdentifiers_candidateActiontypes_scoreLogger_predictionItemsToKeep_predictedItemsOutParameter_context_datastore_featureCache___block_invoke_188;
        block[3] = &unk_2785A0168;
        block[4] = *(a1 + 32);
        v70 = v62;
        v65 = v62;
        dispatch_async(v64, block);

        goto LABEL_45;
      }
    }
  }

LABEL_46:
}

id __200___ATXAppPredictor_predictWithLimit_consumerSubType_intent_candidateBundleIdentifiers_candidateActiontypes_scoreLogger_predictionItemsToKeep_predictedItemsOutParameter_context_datastore_featureCache___block_invoke_188(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) train];
  objc_autoreleasePoolPop(v2);
  return objc_opt_self();
}

id __161___ATXAppPredictor_receiveFeedbackForConsumerType_consumerSubType_atxResponse_engagementType_engagedBundleId_bundleIdsShown_explicitlyRejectedBundleIds_context___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) objectAtIndexedSubscript:*(a1 + 112)];
  v3 = *(*(a1 + 88) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = [ATXAppPredictionFeedbackItem feedbackItemsForResponse:*(a1 + 40)];
  [ATXAppPredictorFeedback receiveFeedbackForConsumerType:v6 consumerSubType:v7 feedbackItemsForResponse:v8 engagementType:*(a1 + 104) engagedBundleId:*(a1 + 48) bundleIdsShown:*(a1 + 56) explicitlyRejectedBundleIds:*(a1 + 64) abGroupIdentifier:*(*(*(a1 + 88) + 8) + 40) context:*(a1 + 72)];

  objc_autoreleasePoolPop(v5);
  return objc_opt_self();
}

void __34___ATXAppPredictor_trainWithTask___block_invoke(uint64_t a1)
{
  v149 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Training app prediction expert", buf, 2u);
  }

  v3 = +[_ATXDataStore sharedInstance];
  v4 = +[_ATXGlobals sharedInstance];
  v5 = +[ATXHeroAndClipConstants sharedInstance];
  v6 = __atxlog_handle_default(v5);
  v7 = os_signpost_id_generate(v6);

  v9 = __atxlog_handle_default(v8);
  v10 = v9;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 136446210;
    v148 = "TOP_LEVEL";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
  }

  v11 = os_transaction_create();
  v12 = __atxlog_handle_default(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "Checking data store integrity", buf, 2u);
  }

  v13 = __atxlog_handle_default([v3 integrityCheckOrAbort]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_INFO, "Check for actions without titles", buf, 2u);
  }

  v14 = __atxlog_handle_default([v3 removeActionsWithoutTitle]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __34___ATXAppPredictor_trainWithTask___block_invoke_cold_1();
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [*(a1 + 32) appInstallMonitor];
  [v16 train];

  objc_autoreleasePoolPop(v15);
  v17 = [*(a1 + 40) didDefer];
  if (v17)
  {
    v18 = __atxlog_handle_default(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "App prediction training deferring after app install monitor training";
LABEL_29:
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v20 = __atxlog_handle_default([*(a1 + 40) setProgressUnits:20]);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __34___ATXAppPredictor_trainWithTask___block_invoke_cold_2();
  }

  v21 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 48) train];
  objc_autoreleasePoolPop(v21);
  v22 = [*(a1 + 40) didDefer];
  if (!v22)
  {
    [*(a1 + 40) setProgressUnits:30];
    v23 = objc_autoreleasePoolPush();
    [*(*(a1 + 32) + 184) train];
    objc_autoreleasePoolPop(v23);
    v24 = [*(a1 + 40) didDefer];
    if (v24)
    {
      v18 = __atxlog_handle_default(v24);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "App prediction training deferring after micro location training";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    [*(a1 + 40) setProgressUnits:40];
    v25 = objc_autoreleasePoolPush();
    [*(*(a1 + 32) + 56) train];
    objc_autoreleasePoolPop(v25);
    v26 = [*(a1 + 40) didDefer];
    if (v26)
    {
      v18 = __atxlog_handle_default(v26);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "App prediction training deferring after app daily dose training";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    [*(a1 + 40) setProgressUnits:50];
    v27 = objc_autoreleasePoolPush();
    [*(*(a1 + 32) + 176) train];
    objc_autoreleasePoolPop(v27);
    v28 = [*(a1 + 40) didDefer];
    if (v28)
    {
      v18 = __atxlog_handle_default(v28);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "App prediction training deferring after app info manager training";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v29 = __atxlog_handle_default([*(a1 + 40) setProgressUnits:60]);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      __34___ATXAppPredictor_trainWithTask___block_invoke_cold_3();
    }

    v18 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v146 = +[_ATXAppLaunchSequenceManager sharedInstance];
    v145 = +[ATXHistogramBundleIdTable sharedInstance];
    v30 = [[ATXPredictionDataHistograms alloc] initWithAppInfoManager:*(*(a1 + 32) + 176) bundleIdTable:v145 launchSequenceManager:v146 histogramManager:v18];
    [(ATXPredictionDataHistograms *)v30 verifyHistograms];
    v31 = [*(a1 + 40) didDefer];
    if (v31)
    {
      v32 = __atxlog_handle_default(v31);
      if (os_log_type_enabled(&v32->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v33 = "App prediction training deferring after histogram verification";
LABEL_47:
        _os_log_impl(&dword_2263AA000, &v32->super, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
      }
    }

    else
    {
      [*(a1 + 40) setProgressUnits:70];
      v34 = [(ATXPredictionDataHistograms *)v30 appLaunchHistogram];
      [v4 appLaunchDecayHalflife];
      [v34 decayWithHalfLifeInDays:?];

      v35 = [(ATXPredictionDataHistograms *)v30 spotlightLaunchHistogram];
      [v4 spotlightLaunchDecayHalflife];
      [v35 decayWithHalfLifeInDays:?];

      v36 = [(ATXPredictionDataHistograms *)v30 homescreenLaunchHistogram];
      [v4 homescreenLaunchDecayHalflife];
      [v36 decayWithHalfLifeInDays:?];

      v37 = [(ATXPredictionDataHistograms *)v30 appDirectoryLaunchHistogram];
      [v4 appDirectoryLaunchDecayHalflife];
      [v37 decayWithHalfLifeInDays:?];

      v38 = [(ATXPredictionDataHistograms *)v30 airplaneModeLaunchHistogram];
      [v4 airplaneModeLaunchDecayHalflife];
      [v38 decayWithHalfLifeInDays:?];

      v39 = [(ATXPredictionDataHistograms *)v30 trendingLaunchHistogram];
      [v4 trendingLaunchDecayHalflife];
      [v39 decayWithHalfLifeInDays:?];

      v40 = [(ATXPredictionDataHistograms *)v30 wifiLaunchHistogram];
      [v4 wifiSSIDLaunchDecayHalflife];
      [v40 decayWithHalfLifeInDays:?];

      v41 = [(ATXPredictionDataHistograms *)v30 coreMotionLaunchHistogram];
      [v4 coreMotionLaunchDecayHalflife];
      [v41 decayWithHalfLifeInDays:?];

      v42 = [(ATXPredictionDataHistograms *)v30 timeAndDayHistogram];
      [v4 timeAndDayAppLaunchesDecayHalflife];
      [v42 decayWithHalfLifeInDays:?];

      v43 = [(ATXPredictionDataHistograms *)v30 notificationsHistoryHistogram];
      [v4 notificationsHistoryDecayHalflife];
      [v43 decayWithHalfLifeInDays:?];

      v44 = [(ATXPredictionDataHistograms *)v30 appCoarseTimePOWLocationLaunchesHistogram];
      [v4 appAndActionCoarseTimePowLocationDecayHalflife];
      [v44 decayWithHalfLifeInDays:?];

      v45 = [(ATXPredictionDataHistograms *)v30 appSpecificTimeDOWLocationLaunchesHistogram];
      [v4 appAndActionSpecificTimePowLocationDecayHalflife];
      [v45 decayWithHalfLifeInDays:?];

      v46 = [(ATXPredictionDataHistograms *)v30 appCoarseTimePOWLocationConfirmsHistogram];
      [v4 appAndActionCoarseTimePowLocationDecayHalflife];
      [v46 decayWithHalfLifeInDays:?];

      v47 = [(ATXPredictionDataHistograms *)v30 appSpecificTimeDOWLocationConfirmsHistogram];
      [v4 appAndActionSpecificTimePowLocationDecayHalflife];
      [v47 decayWithHalfLifeInDays:?];

      v48 = [(ATXPredictionDataHistograms *)v30 appCoarseTimePOWLocationRejectsHistogram];
      [v4 appAndActionCoarseTimePowLocationDecayHalflife];
      [v48 decayWithHalfLifeInDays:?];

      v49 = [(ATXPredictionDataHistograms *)v30 appSpecificTimeDOWLocationRejectsHistogram];
      [v4 appAndActionSpecificTimePowLocationDecayHalflife];
      [v49 decayWithHalfLifeInDays:?];

      v50 = [(ATXPredictionDataHistograms *)v30 appSpecificGeoHashHistogram];
      [v4 appSpecificGeoHashDecayHalflife];
      [v50 decayWithHalfLifeInDays:?];

      v51 = [(ATXPredictionDataHistograms *)v30 appCoarseGeoHashHistogram];
      [v4 appCoarseGeoHashDecayHalflife];
      [v51 decayWithHalfLifeInDays:?];

      v52 = [(ATXPredictionDataHistograms *)v30 appZoom7GeoHashHistogram];
      [v4 appZoom7GeoHashDecayHalflife];
      [v52 decayWithHalfLifeInDays:?];

      v53 = [(ATXPredictionDataHistograms *)v30 appLaunchesTwoHourTimeInterval];
      [v4 appLaunchesTwoHourTimeIntervalDecayHalflife];
      [v53 decayWithHalfLifeInDays:?];

      v54 = [(ATXPredictionDataHistograms *)v30 appConfirmsTwoHourTimeInterval];
      [v4 appConfirmsTwoHourTimeIntervalDecayHalflife];
      [v54 decayWithHalfLifeInDays:?];

      v55 = [(ATXPredictionDataHistograms *)v30 appRejectsTwoHourTimeInterval];
      [v4 appRejectsTwoHourTimeIntervalDecayHalflife];
      [v55 decayWithHalfLifeInDays:?];

      v56 = [(ATXPredictionDataHistograms *)v30 appConfirmsDayOfWeek];
      [v4 appConfirmsDayOfWeekDecayHalflife];
      [v56 decayWithHalfLifeInDays:?];

      v57 = [(ATXPredictionDataHistograms *)v30 appRejectsDayOfWeek];
      [v4 appRejectsDayOfWeekDecayHalflife];
      [v57 decayWithHalfLifeInDays:?];

      v58 = [(ATXPredictionDataHistograms *)v30 appConfirmsCoarseGeoHash];
      [v4 appConfirmsCoarseGeoHashDecayHalflife];
      [v58 decayWithHalfLifeInDays:?];

      v59 = [(ATXPredictionDataHistograms *)v30 appRejectsCoarseGeoHash];
      [v4 appRejectsCoarseGeoHashDecayHalflife];
      [v59 decayWithHalfLifeInDays:?];

      v60 = [(ATXPredictionDataHistograms *)v30 appConfirmsSpecificGeoHash];
      [v4 appConfirmsSpecificGeoHashDecayHalflife];
      [v60 decayWithHalfLifeInDays:?];

      v61 = [(ATXPredictionDataHistograms *)v30 appRejectsSpecificGeoHash];
      [v4 appRejectsSpecificGeoHashDecayHalflife];
      [v61 decayWithHalfLifeInDays:?];

      v62 = [(ATXPredictionDataHistograms *)v30 appExplicitRejectsCoarseTimePOWLocationHistogram];
      [v4 appExplicitRejectsCoarseTimePOWLocationDecayHalflife];
      [v62 decayWithHalfLifeInDays:?];

      v63 = [(ATXPredictionDataHistograms *)v30 appClipsFeedbackHistogram];
      [v5 appClipsFeedbackHistogramHalfLifeInDays];
      [v63 decayWithHalfLifeInDays:?];

      v64 = [(ATXPredictionDataHistograms *)v30 unlockTimeHistogram];
      [v4 unlockTimeDecayHalflife];
      [v64 decayWithHalfLifeInDays:?];

      v65 = [(ATXPredictionDataHistograms *)v30 dayOfWeekLaunchHistogram];
      [v4 dayOfWeekLaunchDecayHalflife];
      [v65 decayWithHalfLifeInDays:?];

      v66 = [(ATXPredictionDataHistograms *)v30 homeScreenAppConfirmsCoarseTimePOWLocationHistogram];
      [v4 homeScreenAppConfirmsCoarseTimePOWLocationDecayHalflife];
      [v66 decayWithHalfLifeInDays:?];

      v67 = [(ATXPredictionDataHistograms *)v30 homeScreenAppConfirmsSpecificTimeDOWLocationHistogram];
      [v4 homeScreenAppConfirmsSpecificTimeDOWLocationDecayHalflife];
      [v67 decayWithHalfLifeInDays:?];

      v68 = [(ATXPredictionDataHistograms *)v30 homeScreenAppConfirmsTwoHourTimeIntervalHistogram];
      [v4 homeScreenAppConfirmsTwoHourTimeIntervalDecayHalflife];
      [v68 decayWithHalfLifeInDays:?];

      v69 = [(ATXPredictionDataHistograms *)v30 homeScreenAppConfirmsDayOfWeekHistogram];
      [v4 homeScreenAppConfirmsDayOfWeekDecayHalflife];
      [v69 decayWithHalfLifeInDays:?];

      v70 = [(ATXPredictionDataHistograms *)v30 homeScreenAppConfirmsCoarseGeohashHistogram];
      [v4 homeScreenAppConfirmsCoarseGeohashDecayHalflife];
      [v70 decayWithHalfLifeInDays:?];

      v71 = [(ATXPredictionDataHistograms *)v30 homeScreenAppConfirmsSpecificGeohashHistogram];
      [v4 homeScreenAppConfirmsSpecificGeohashDecayHalflife];
      [v71 decayWithHalfLifeInDays:?];

      v72 = [(ATXPredictionDataHistograms *)v30 homeScreenAppRejectsCoarseTimePOWLocationHistogram];
      [v4 homeScreenAppRejectsCoarseTimePOWLocationDecayHalflife];
      [v72 decayWithHalfLifeInDays:?];

      v73 = [(ATXPredictionDataHistograms *)v30 homeScreenAppRejectsSpecificTimeDOWLocationHistogram];
      [v4 homeScreenAppRejectsSpecificTimeDOWLocationDecayHalflife];
      [v73 decayWithHalfLifeInDays:?];

      v74 = [(ATXPredictionDataHistograms *)v30 homeScreenAppRejectsTwoHourTimeIntervalHistogram];
      [v4 homeScreenAppRejectsTwoHourTimeIntervalDecayHalflife];
      [v74 decayWithHalfLifeInDays:?];

      v75 = [(ATXPredictionDataHistograms *)v30 homeScreenAppRejectsDayOfWeekHistogram];
      [v4 homeScreenAppRejectsDayOfWeekDecayHalflife];
      [v75 decayWithHalfLifeInDays:?];

      v76 = [(ATXPredictionDataHistograms *)v30 homeScreenAppRejectsCoarseGeohashHistogram];
      [v4 homeScreenAppRejectsCoarseGeohashDecayHalflife];
      [v76 decayWithHalfLifeInDays:?];

      v77 = [(ATXPredictionDataHistograms *)v30 homeScreenAppRejectsSpecificGeohashHistogram];
      [v4 homeScreenAppRejectsSpecificGeohashDecayHalflife];
      [v77 decayWithHalfLifeInDays:?];

      v78 = [(ATXPredictionDataHistograms *)v30 homeScreenAppExplicitRejectsCoarseTimePOWLocationHistogram];
      [v4 homeScreenAppExplicitRejectsCoarseTimePOWLocationDecayHalflife];
      [v78 decayWithHalfLifeInDays:?];

      v79 = [(ATXPredictionDataHistograms *)v30 appDirectoryConfirmsCoarseTimePOWLocationHistogram];
      [v4 appDirectoryConfirmsCoarseTimePOWLocationDecayHalflife];
      [v79 decayWithHalfLifeInDays:?];

      v80 = [(ATXPredictionDataHistograms *)v30 appDirectoryConfirmsSpecificTimeDOWLocationHistogram];
      [v4 appDirectoryConfirmsSpecificTimeDOWLocationDecayHalflife];
      [v80 decayWithHalfLifeInDays:?];

      v81 = [(ATXPredictionDataHistograms *)v30 appDirectoryConfirmsTwoHourTimeIntervalHistogram];
      [v4 appDirectoryConfirmsTwoHourTimeIntervalDecayHalflife];
      [v81 decayWithHalfLifeInDays:?];

      v82 = [(ATXPredictionDataHistograms *)v30 appDirectoryConfirmsDayOfWeekHistogram];
      [v4 appDirectoryConfirmsDayOfWeekDecayHalflife];
      [v82 decayWithHalfLifeInDays:?];

      v83 = [(ATXPredictionDataHistograms *)v30 appDirectoryConfirmsCoarseGeohashHistogram];
      [v4 appDirectoryConfirmsCoarseGeohashDecayHalflife];
      [v83 decayWithHalfLifeInDays:?];

      v84 = [(ATXPredictionDataHistograms *)v30 appDirectoryConfirmsSpecificGeohashHistogram];
      [v4 appDirectoryConfirmsSpecificGeohashDecayHalflife];
      [v84 decayWithHalfLifeInDays:?];

      v85 = [(ATXPredictionDataHistograms *)v30 appDirectoryRejectsCoarseTimePOWLocationHistogram];
      [v4 appDirectoryRejectsCoarseTimePOWLocationDecayHalflife];
      [v85 decayWithHalfLifeInDays:?];

      v86 = [(ATXPredictionDataHistograms *)v30 appDirectoryRejectsSpecificTimeDOWLocationHistogram];
      [v4 appDirectoryRejectsSpecificTimeDOWLocationDecayHalflife];
      [v86 decayWithHalfLifeInDays:?];

      v87 = [(ATXPredictionDataHistograms *)v30 appDirectoryRejectsTwoHourTimeIntervalHistogram];
      [v4 appDirectoryRejectsTwoHourTimeIntervalDecayHalflife];
      [v87 decayWithHalfLifeInDays:?];

      v88 = [(ATXPredictionDataHistograms *)v30 appDirectoryRejectsDayOfWeekHistogram];
      [v4 appDirectoryRejectsDayOfWeekDecayHalflife];
      [v88 decayWithHalfLifeInDays:?];

      v89 = [(ATXPredictionDataHistograms *)v30 appDirectoryRejectsCoarseGeohashHistogram];
      [v4 appDirectoryRejectsCoarseGeohashDecayHalflife];
      [v89 decayWithHalfLifeInDays:?];

      v90 = [(ATXPredictionDataHistograms *)v30 appDirectoryRejectsSpecificGeohashHistogram];
      [v4 appDirectoryRejectsSpecificGeohashDecayHalflife];
      [v90 decayWithHalfLifeInDays:?];

      v91 = [(ATXPredictionDataHistograms *)v30 appDirectoryExplicitRejectsCoarseTimePOWLocationHistogram];
      [v4 appDirectoryExplicitRejectsCoarseTimePOWLocationDecayHalflife];
      [v91 decayWithHalfLifeInDays:?];

      [v4 launchSequenceDecayHalflife];
      [v146 decayAllLaunchSequencesWithHalfLifeInDays:?];
      [v4 appActionLaunchSequenceDecayHalflife];
      [v146 decayAllAppActionLaunchSequencesWithHalfLifeInDays:?];
      v92 = [(ATXPredictionDataHistograms *)v30 appIntentLaunchHistogram];
      [v4 appActionLaunchDecayHalflife];
      [v92 decayWithHalfLifeInDays:?];

      v93 = [(ATXPredictionDataHistograms *)v30 appIntentAirplaneModeLaunchHistogram];
      [v4 appActionAirplaneModeLaunchDecayHalflife];
      [v93 decayWithHalfLifeInDays:?];

      v94 = [(ATXPredictionDataHistograms *)v30 appIntentTrendingLaunchHistogram];
      [v4 appActionTrendingLaunchDecayHalflife];
      [v94 decayWithHalfLifeInDays:?];

      v95 = [(ATXPredictionDataHistograms *)v30 appIntentWifiHistogram];
      [v4 appActionWifiSSIDLaunchDecayHalflife];
      [v95 decayWithHalfLifeInDays:?];

      v96 = [(ATXPredictionDataHistograms *)v30 appIntentCoreMotionLaunchHistogram];
      [v4 appActionCoreMotionLaunchDecayHalflife];
      [v96 decayWithHalfLifeInDays:?];

      v97 = [(ATXPredictionDataHistograms *)v30 appIntentUnlockTimeHistogram];
      [v4 appActionUnlockTimeDecayHalflife];
      [v97 decayWithHalfLifeInDays:?];

      v98 = [(ATXPredictionDataHistograms *)v30 appIntentDayOfWeekHistogram];
      [v4 appActionDayOfWeekLaunchDecayHalflife];
      [v98 decayWithHalfLifeInDays:?];

      v99 = [(ATXPredictionDataHistograms *)v30 appForAllIntentsLaunchHistogram];
      [v4 appActionLaunchDecayHalflife];
      [v99 decayWithHalfLifeInDays:?];

      v100 = [(ATXPredictionDataHistograms *)v30 appForAllIntentsAirplaneModeLaunchHistogram];
      [v4 appActionAirplaneModeLaunchDecayHalflife];
      [v100 decayWithHalfLifeInDays:?];

      v101 = [(ATXPredictionDataHistograms *)v30 appForAllIntentsTrendingLaunchHistogram];
      [v4 appActionTrendingLaunchDecayHalflife];
      [v101 decayWithHalfLifeInDays:?];

      v102 = [(ATXPredictionDataHistograms *)v30 appForAllIntentsWifiHistogram];
      [v4 appActionWifiSSIDLaunchDecayHalflife];
      [v102 decayWithHalfLifeInDays:?];

      v103 = [(ATXPredictionDataHistograms *)v30 appForAllIntentsUnlockTimeHistogram];
      [v4 appActionUnlockTimeDecayHalflife];
      [v103 decayWithHalfLifeInDays:?];

      v104 = [(ATXPredictionDataHistograms *)v30 appForAllIntentsDayOfWeekHistogram];
      [v4 appActionDayOfWeekLaunchDecayHalflife];
      [v104 decayWithHalfLifeInDays:?];

      v105 = [(ATXPredictionDataHistograms *)v30 appForAllIntentsCoreMotionLaunchHistogram];
      [v4 appActionCoreMotionLaunchDecayHalflife];
      [v105 decayWithHalfLifeInDays:?];

      v106 = [(ATXPredictionDataHistograms *)v30 poiCategoryHistogram];
      [v4 poiCategoryDecayHalfLife];
      [v106 decayWithHalfLifeInDays:?];

      v107 = [(ATXPredictionDataHistograms *)v30 documentOpenHistogram];
      [v4 documentOpenDecayHalflife];
      [v107 decayWithHalfLifeInDays:?];

      v108 = [(ATXPredictionDataHistograms *)v30 documentDayOfWeekHistogram];
      [v4 documentDayOfWeekDecayHalflife];
      [v108 decayWithHalfLifeInDays:?];

      v109 = [(ATXPredictionDataHistograms *)v30 documentUnlockTimeHistogram];
      [v4 documentUnlockTimeDecayHalflife];
      [v109 decayWithHalfLifeInDays:?];

      v110 = [(ATXPredictionDataHistograms *)v30 documentAirplaneModeHistogram];
      [v4 documentAirplaneModeDecayHalflife];
      [v110 decayWithHalfLifeInDays:?];

      v111 = [(ATXPredictionDataHistograms *)v30 documentTrendingOpenHistogram];
      [v4 documentTrendingOpenDecayHalflife];
      [v111 decayWithHalfLifeInDays:?];

      v112 = [(ATXPredictionDataHistograms *)v30 documentConfirmsHistogram];
      [v4 documentConfirmsDecayHalflife];
      [v112 decayWithHalfLifeInDays:?];

      v113 = [(ATXPredictionDataHistograms *)v30 documentRejectsHistogram];
      [v4 documentConfirmsDecayHalflife];
      [v113 decayWithHalfLifeInDays:?];

      v114 = [(ATXPredictionDataHistograms *)v30 documentCategoryOpenHistogram];
      [v4 documentCategoryOpenDecayHalflife];
      [v114 decayWithHalfLifeInDays:?];

      v115 = [(ATXPredictionDataHistograms *)v30 documentCategoryDayOfWeekHistogram];
      [v4 documentCategoryDayOfWeekDecayHalflife];
      [v115 decayWithHalfLifeInDays:?];

      v116 = [(ATXPredictionDataHistograms *)v30 documentCategoryTrendingOpenHistogram];
      [v4 documentCategoryTrendingOpenDecayHalflife];
      [v116 decayWithHalfLifeInDays:?];

      v117 = [(ATXPredictionDataHistograms *)v30 documentWifiOpenHistogram];
      [v4 documentWifiOpenDecayHalflife];
      [v117 decayWithHalfLifeInDays:?];

      v118 = [(ATXPredictionDataHistograms *)v30 documentCoreMotionOpenHistogram];
      [v4 documentCoreMotionOpenDecayHalflife];
      [v118 decayWithHalfLifeInDays:?];

      v119 = [(ATXPredictionDataHistograms *)v30 documentPartOfWeekHistogram];
      [v4 documentPartOfWeekDecayHalflife];
      [v119 decayWithHalfLifeInDays:?];

      v120 = [(ATXPredictionDataHistograms *)v30 documentAmbientLightHistogram];
      [v4 documentAmbientLightDecayHalflife];
      [v120 decayWithHalfLifeInDays:?];

      v121 = [(ATXPredictionDataHistograms *)v30 documentCategoryPartOfWeekHistogram];
      [v4 documentCategoryPartOfWeekDecayHalflife];
      [v121 decayWithHalfLifeInDays:?];

      v123 = __atxlog_handle_default(v122);
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
      {
        __34___ATXAppPredictor_trainWithTask___block_invoke_cold_4();
      }

      v124 = +[_ATXFeedback sharedInstance];
      [v124 decayCounts];

      v125 = +[ATXActionFeedback sharedInstance];
      [v125 decayCounts];

      v126 = [*(a1 + 40) didDefer];
      if (v126)
      {
        v32 = __atxlog_handle_default(v126);
        if (os_log_type_enabled(&v32->super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v33 = "App prediction training deferring after decaying histograms and feedback";
          goto LABEL_47;
        }
      }

      else
      {
        [*(a1 + 40) setProgressUnits:85];
        [(ATXPredictionDataHistograms *)v30 removeExpiredData];
        v127 = [*(a1 + 40) didDefer];
        if (v127)
        {
          v32 = __atxlog_handle_default(v127);
          if (os_log_type_enabled(&v32->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v33 = "App prediction training deferring after removing expired apps data";
            goto LABEL_47;
          }
        }

        else
        {
          [v3 deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases];
          v128 = [*(a1 + 40) didDefer];
          if (!v128)
          {
            v129 = [*(*(a1 + 32) + 176) allApps];
            [v3 trimActionHistoryWithAppWhitelist:v129];

            v130 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{objc_msgSend(v4, "messageContentTimeElapsed")}];
            [v3 pruneMessageRecipientsAddedBefore:v130];

            v32 = [[ATXExpiredDataProvider alloc] initWithAppInfoManager:*(*(a1 + 32) + 176) histogramBundleIdTable:v145];
            v131 = [(ATXExpiredDataProvider *)v32 expiredBundleIdsAndActionKeys];
            v141 = *(*(a1 + 32) + 176);
            v144 = v131;
            v132 = [v131 expiredBundleIds];
            v133 = v141;
            v142 = v132;
            [v133 removeBundleIds:v132];

            v143 = [v144 expiredBundleIds];
            [v145 removeBundleIds:v143];

            v135 = __atxlog_handle_default(v134);
            v136 = v135;
            if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v137 = v135;
              v138 = os_signpost_enabled(v135);
              v136 = v137;
              if (v138)
              {
                *buf = 136446210;
                v148 = "TOP_LEVEL";
                _os_signpost_emit_with_name_impl(&dword_2263AA000, v137, OS_SIGNPOST_INTERVAL_END, v7, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
                v136 = v137;
              }
            }

            [*(a1 + 40) setProgressUnits:95];
            v139 = [*(a1 + 40) setDone];
            if (v139)
            {
              v140 = __atxlog_handle_default(v139);
              if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2263AA000, v140, OS_LOG_TYPE_DEFAULT, "App prediction training activity successfully set to DONE", buf, 2u);
              }
            }

            else
            {
              v140 = __atxlog_handle_default(v139);
              if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
              {
                __34___ATXAppPredictor_trainWithTask___block_invoke_cold_5();
              }
            }

            goto LABEL_48;
          }

          v32 = __atxlog_handle_default(v128);
          if (os_log_type_enabled(&v32->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v33 = "App prediction training deferring after removing expired actions data";
            goto LABEL_47;
          }
        }
      }
    }

LABEL_48:

    goto LABEL_30;
  }

  v18 = __atxlog_handle_default(v22);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v19 = "App prediction training deferring after app launch location training";
    goto LABEL_29;
  }

LABEL_30:
}

void __65___ATXAppPredictor_scoreAppsWithFeaturesUsingCoreML_scoreLogger___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __52___ATXAppPredictor__initAppLaunchAndInstallMonitors__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __52___ATXAppPredictor__initAppLaunchAndInstallMonitors__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34___ATXAppPredictor_trainWithTask___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34___ATXAppPredictor_trainWithTask___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34___ATXAppPredictor_trainWithTask___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34___ATXAppPredictor_trainWithTask___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34___ATXAppPredictor_trainWithTask___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end