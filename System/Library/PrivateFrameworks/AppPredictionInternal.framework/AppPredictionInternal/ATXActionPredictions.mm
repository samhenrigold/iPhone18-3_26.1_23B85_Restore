@interface ATXActionPredictions
+ (BOOL)actionScoreAboveThresholdOrWhitelistedAction:(id)action confidenceThreshold:(double)threshold actionKeyWhitelist:(id)whitelist actionTypeWhitelist:(id)typeWhitelist;
+ (BOOL)isActionPredictionContainerEligibleForLimit:(id)limit;
+ (id)_actionPredictionCandidatesForCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes firstStageScoreLogger:(id)logger secondStageScoreLogger:(id)scoreLogger multiStageScoreLogger:(id)stageScoreLogger context:(id)context featureCache:(id)cache remainingPredictionItems:(void *)self0;
+ (id)_actionPredictionCandidatesForCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes firstStageScoreLogger:(id)logger secondStageScoreLogger:(id)scoreLogger multiStageScoreLogger:(id)stageScoreLogger featureCache:(id)cache remainingPredictionItems:(void *)items;
+ (id)_predictionsForConsumerSubType:(unsigned __int8)type thirdStageScoreLogger:(id)logger multiStageScoreLogger:(id)scoreLogger actionPredictionCandidates:(id)candidates remainingPredictionItems:(void *)items predictionsPerAppActionLimit:(id)limit;
+ (id)_predictionsForConsumerSubType:(unsigned __int8)type thirdStageScoreLogger:(id)logger multiStageScoreLogger:(id)scoreLogger context:(id)context actionPredictionCandidates:(id)candidates remainingPredictionItems:(void *)items predictionsPerAppActionLimit:(id)limit;
+ (id)actionResultsForCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes consumerSubType:(unsigned __int8)type firstStageScoreLogger:(id)logger secondStageScoreLogger:(id)scoreLogger thirdStageScoreLogger:(id)stageScoreLogger multiStageScoreLogger:(id)multiStageScoreLogger predictionsPerAppActionLimit:(id)self0;
+ (id)actionsFromActions:(id)actions byMovingActionsWithBundleIdentifiers:(id)identifiers toRemainingPredictionItems:(void *)items;
+ (id)filterHighQualityActionResults:(id)results consumerSubType:(unsigned __int8)type;
+ (id)predictionsWithCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes consumerSubType:(unsigned __int8)type firstStageScoreLogger:(id)logger secondStageScoreLogger:(id)scoreLogger thirdStageScoreLogger:(id)stageScoreLogger multiStageScoreLogger:(id)multiStageScoreLogger;
+ (id)removeActionsBelowThresholdForActionPredictions:(id)predictions withThreshold:(double)threshold actionKeyWhitelist:(id)whitelist actionTypeWhitelist:(id)typeWhitelist;
+ (id)scoredActionsWithoutLog:(id)log;
+ (id)sortStageScores:(id)scores;
+ (unint64_t)numActionResultsWithOnlyPredictionItemForLogging:(id)logging;
+ (void)fetchDataAndUpdateContentAttributeSetForActions:(id)actions;
+ (void)penalizeMultipleActionsPerAppAndKeepSorted:(id)sorted;
+ (void)setTVActionPredictionsConfidenceToLow:(id)low;
@end

@implementation ATXActionPredictions

+ (BOOL)isActionPredictionContainerEligibleForLimit:(id)limit
{
  limitCopy = limit;
  mEMORY[0x277CEBC70] = [MEMORY[0x277CEBC70] sharedInstance];
  isTestModeEnabled = [mEMORY[0x277CEBC70] isTestModeEnabled];

  if (isTestModeEnabled)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CEB7F8];
    scoredAction = [limitCopy scoredAction];
    predictedItem = [scoredAction predictedItem];
    LOBYTE(v7) = [v7 isActionEligibleForAnySettingsSuggestions:predictedItem];

    v6 = v7 ^ 1;
  }

  return v6;
}

+ (id)actionResultsForCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes consumerSubType:(unsigned __int8)type firstStageScoreLogger:(id)logger secondStageScoreLogger:(id)scoreLogger thirdStageScoreLogger:(id)stageScoreLogger multiStageScoreLogger:(id)multiStageScoreLogger predictionsPerAppActionLimit:(id)self0
{
  typeCopy = type;
  stageScoreLoggerCopy = stageScoreLogger;
  multiStageScoreLoggerCopy = multiStageScoreLogger;
  limitCopy = limit;
  memset(v22, 0, sizeof(v22));
  v19 = [self _actionPredictionCandidatesForCandidateBundleIdentifiers:identifiers candidateActiontypes:actiontypes firstStageScoreLogger:logger secondStageScoreLogger:scoreLogger multiStageScoreLogger:multiStageScoreLoggerCopy featureCache:0 remainingPredictionItems:v22];
  v20 = [ATXActionPredictions _predictionsForConsumerSubType:typeCopy thirdStageScoreLogger:stageScoreLoggerCopy multiStageScoreLogger:multiStageScoreLoggerCopy actionPredictionCandidates:v19 remainingPredictionItems:v22 predictionsPerAppActionLimit:limitCopy];

  v23 = v22;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v23);

  return v20;
}

+ (id)predictionsWithCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes consumerSubType:(unsigned __int8)type firstStageScoreLogger:(id)logger secondStageScoreLogger:(id)scoreLogger thirdStageScoreLogger:(id)stageScoreLogger multiStageScoreLogger:(id)multiStageScoreLogger
{
  typeCopy = type;
  v10 = [self actionResultsForCandidateBundleIdentifiers:identifiers candidateActiontypes:actiontypes consumerSubType:type firstStageScoreLogger:logger secondStageScoreLogger:scoreLogger thirdStageScoreLogger:stageScoreLogger multiStageScoreLogger:multiStageScoreLogger predictionsPerAppActionLimit:0];
  v11 = [ATXDisplayCacheIntermediateFormat fromActions:v10];
  v12 = v11;
  if (v11)
  {
    actions = [v11 actions];
    if (typeCopy == 22)
    {
      lockscreenPredictionIndices = [v12 lockscreenPredictionIndices];
      v15 = [actions objectsAtIndexes:lockscreenPredictionIndices];

      actions = v15;
    }

    predictionChunks = [v12 predictionChunks];
    v17 = ATXCacheFileJoinChunks();

    v18 = [objc_alloc(MEMORY[0x277CEB2F0]) initWithScoredActions:actions cacheFileData:v17 consumerSubType:typeCopy error:0];
    v19 = 0;
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ActionPredictions" code:1001 userInfo:0];
    v18 = [objc_alloc(MEMORY[0x277CEB2F0]) initWithScoredActions:0 cacheFileData:0 consumerSubType:typeCopy error:v20];
    v19 = v20;
  }

  v21 = [MEMORY[0x277D42648] tupleWithFirst:v18 second:v19];

  return v21;
}

+ (id)_actionPredictionCandidatesForCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes firstStageScoreLogger:(id)logger secondStageScoreLogger:(id)scoreLogger multiStageScoreLogger:(id)stageScoreLogger featureCache:(id)cache remainingPredictionItems:(void *)items
{
  identifiersCopy = identifiers;
  actiontypesCopy = actiontypes;
  loggerCopy = logger;
  scoreLoggerCopy = scoreLogger;
  stageScoreLoggerCopy = stageScoreLogger;
  cacheCopy = cache;
  v21 = +[_ATXAppPredictor sharedInstance];
  appLaunchMonitor = [v21 appLaunchMonitor];

  if (appLaunchMonitor)
  {
    v23 = +[ATXPredictionContextBuilder sharedInstance];
    predictionContextForCurrentContext = [v23 predictionContextForCurrentContext];

    if (!predictionContextForCurrentContext)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ATXActionPredictions.mm" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"predictionContext"}];
    }

    v25 = [self _actionPredictionCandidatesForCandidateBundleIdentifiers:identifiersCopy candidateActiontypes:actiontypesCopy firstStageScoreLogger:loggerCopy secondStageScoreLogger:scoreLoggerCopy multiStageScoreLogger:stageScoreLoggerCopy context:predictionContextForCurrentContext featureCache:cacheCopy remainingPredictionItems:items];
  }

  else
  {
    v25 = objc_opt_new();
  }

  return v25;
}

+ (id)_predictionsForConsumerSubType:(unsigned __int8)type thirdStageScoreLogger:(id)logger multiStageScoreLogger:(id)scoreLogger actionPredictionCandidates:(id)candidates remainingPredictionItems:(void *)items predictionsPerAppActionLimit:(id)limit
{
  typeCopy = type;
  loggerCopy = logger;
  scoreLoggerCopy = scoreLogger;
  candidatesCopy = candidates;
  limitCopy = limit;
  v19 = +[ATXPredictionContextBuilder sharedInstance];
  predictionContextForCurrentContext = [v19 predictionContextForCurrentContext];

  if (!predictionContextForCurrentContext)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXActionPredictions.mm" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"predictionContext"}];
  }

  v21 = [self _predictionsForConsumerSubType:typeCopy thirdStageScoreLogger:loggerCopy multiStageScoreLogger:scoreLoggerCopy context:predictionContextForCurrentContext actionPredictionCandidates:candidatesCopy remainingPredictionItems:items predictionsPerAppActionLimit:limitCopy];

  return v21;
}

+ (id)_actionPredictionCandidatesForCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes firstStageScoreLogger:(id)logger secondStageScoreLogger:(id)scoreLogger multiStageScoreLogger:(id)stageScoreLogger context:(id)context featureCache:(id)cache remainingPredictionItems:(void *)self0
{
  v115 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  actiontypesCopy = actiontypes;
  loggerCopy = logger;
  scoreLoggerCopy = scoreLogger;
  stageScoreLoggerCopy = stageScoreLogger;
  contextCopy = context;
  cacheCopy = cache;
  v88 = objc_opt_new();
  v80 = objc_autoreleasePoolPush();
  v84 = +[_ATXAppPredictor sharedInstance];
  v90 = +[_ATXGlobals sharedInstance];
  v15 = [v84 predictWithLimit:objc_msgSend(v90 consumerSubType:"actionPredictionFirstStageBeamWidth") intent:24 candidateBundleIdentifiers:0 candidateActiontypes:identifiersCopy scoreLogger:actiontypesCopy predictionItemsToKeep:loggerCopy predictedItemsOutParameter:items context:0 featureCache:{contextCopy, cacheCopy}];
  if (loggerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = dispatch_semaphore_create(0);
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke;
      v108[3] = &unk_27859AED0;
      v17 = v16;
      v109 = v17;
      [loggerCopy flushWithCompletion:v108];
      [MEMORY[0x277D425A0] waitForSemaphore:v17 timeoutSeconds:&__block_literal_global_132 onAcquire:&__block_literal_global_50 onTimeout:5.0];
    }
  }

  if (v15 && ([v15 predictionSetChunk], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v79 = v15;
    feedbackStateChunk = [v15 feedbackStateChunk];
    v20 = feedbackStateChunk == 0;

    if (v20)
    {
      v59 = v88;
    }

    else
    {
      v22 = __atxlog_handle_action_prediction(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        +[ATXActionPredictions _actionPredictionCandidatesForCandidateBundleIdentifiers:candidateActiontypes:firstStageScoreLogger:secondStageScoreLogger:multiStageScoreLogger:context:featureCache:remainingPredictionItems:];
      }

      v23 = MEMORY[0x277CEB7D0];
      predictionSetChunk = [v79 predictionSetChunk];
      v78 = [v23 bundleIdReader:predictionSetChunk];

      v96 = [v78 readScoredPredictionsWithLimit:0x7FFFFFFFLL];
      feedbackStateChunk2 = [v79 feedbackStateChunk];
      objc_msgSend_getActionKeyToPredictionItemMapFromChunk_(ATXActionCacheReader);

      v85 = objc_opt_new();
      v26 = objc_opt_new();
      v27 = __atxlog_handle_action_prediction(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = [v96 count];
        *buf = 138543618;
        v112 = v29;
        v113 = 2050;
        v114 = v30;
        _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ - Stage 1 Action Predictions returned num candidates: %{public}lu", buf, 0x16u);
      }

      [ATXActionPredictionsHelpers applyLogSoftmaxToPredictions:v96];
      v93 = objc_opt_new();
      v89 = objc_opt_new();
      v31 = arc4random_uniform([v96 count]);
      if ([MEMORY[0x277CEBC58] isSpotlightPlusEnabled])
      {
        v32 = +[_ATXAppPredictor sharedInstance];
        [v32 prewarmModelForConsumerSubtype:25];
      }

      v99 = 0;
      v87 = v31;
      while ([v96 count] > v99)
      {
        context = objc_autoreleasePoolPush();
        v98 = [v96 objectAtIndexedSubscript:v99];
        predictedItem = [v98 predictedItem];
        v33 = std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::find<NSString * {__strong}>(v107, &predictedItem);
        if (v33)
        {
          v97 = [v93 statisticsForActionKey:predictedItem context:contextCopy];
          v34 = predictedItem;
          [v98 score];
          v36 = v35;
          [v90 predictionsForMultiStageLoggingLimit];
          v38 = v37;
          timeContext = [contextCopy timeContext];
          date = [timeContext date];
          if (v99 == v87)
          {
            [v93 actionPredictionsForActionKey:v34 statistics:v97 appActionPredictionItem:v33 + 3 appActionLogProbability:scoreLoggerCopy scoreLogger:v38 andLimit:0 forMagicalMoments:v36 predictionItemsToKeep:items currentDate:date];
          }

          else
          {
            [v93 actionPredictionsForActionKey:v34 statistics:v97 appActionPredictionItem:v33 + 3 appActionLogProbability:scoreLoggerCopy scoreLogger:v38 andLimit:0 forMagicalMoments:v36 currentDate:date];
          }
          v41 = ;

          [v89 updateActionStatisticsForSlotResolutionStatistics:v97 candidateActionPredictions:v41];
          if (stageScoreLoggerCopy)
          {
            v42 = MEMORY[0x277CCABB0];
            [v98 score];
            v43 = [v42 numberWithFloat:?];
            v44 = MEMORY[0x277CCACA8];
            v45 = predictedItem;
            [v98 score];
            v47 = [v44 stringWithFormat:@"%@:%f", v45, v46];
            [v85 setObject:v43 forKeyedSubscript:v47];

            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v48 = v41;
            v49 = [v48 countByEnumeratingWithState:&v102 objects:v110 count:16];
            if (v49)
            {
              v50 = *v103;
              do
              {
                for (i = 0; i != v49; ++i)
                {
                  if (*v103 != v50)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v52 = *(*(&v102 + 1) + 8 * i);
                  scoredAction = [v52 scoredAction];
                  v54 = [scoredAction description];

                  v55 = MEMORY[0x277CCABB0];
                  [v52 score];
                  v56 = [v55 numberWithFloat:?];
                  [v26 setObject:v56 forKeyedSubscript:v54];
                }

                v49 = [v48 countByEnumeratingWithState:&v102 objects:v110 count:16];
              }

              while (v49);
            }
          }

          v57 = [v41 count];
          if (v57)
          {
            v58 = __atxlog_handle_action_prediction(v57);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v112 = v41;
              v113 = 2112;
              v114 = predictedItem;
              _os_log_debug_impl(&dword_2263AA000, v58, OS_LOG_TYPE_DEBUG, "Got %@ predictions based on slot resolution for: %@", buf, 0x16u);
            }

            [v88 addObjectsFromArray:v41];
          }
        }

        objc_autoreleasePoolPop(context);
        ++v99;
      }

      isSpotlightPlusEnabled = [MEMORY[0x277CEBC58] isSpotlightPlusEnabled];
      if (isSpotlightPlusEnabled)
      {
        v61 = +[_ATXAppPredictor sharedInstance];
        [v61 coolDownModelForConsumerSubtype:25];
      }

      v62 = __atxlog_handle_action_prediction(isSpotlightPlusEnabled);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        v65 = [v88 count];
        *buf = 138543618;
        v112 = v64;
        v113 = 2050;
        v114 = v65;
        _os_log_impl(&dword_2263AA000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@ - Stage 2 Action Predictions returned num candidates from slot exploration: %{public}lu", buf, 0x16u);
      }

      v66 = [ATXActionPredictionsProcessor removeAlarmActionsInconsistentWithAlarmAppState:v88];
      v59 = [v66 mutableCopy];

      v67 = objc_opt_new();
      isKindOfClass = [v67 setFeatureValuesAndFilterPredictableActions:v59 actionStatistics:v89];
      if (scoreLoggerCopy)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v69 = dispatch_semaphore_create(0);
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_62;
          v100[3] = &unk_27859AED0;
          v70 = v69;
          v101 = v70;
          [scoreLoggerCopy flushWithCompletion:v100];
          [MEMORY[0x277D425A0] waitForSemaphore:v70 timeoutSeconds:&__block_literal_global_65_0 onAcquire:&__block_literal_global_68 onTimeout:5.0];
        }
      }

      if (stageScoreLoggerCopy)
      {
        v71 = [ATXActionPredictions sortStageScores:v85];
        [stageScoreLoggerCopy logStageScores:v71 forStageType:0];

        v72 = [ATXActionPredictions sortStageScores:v26];
        [stageScoreLoggerCopy logStageScores:v72 forStageType:1];
      }

      v73 = __atxlog_handle_action_prediction(isKindOfClass);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = objc_opt_class();
        v75 = NSStringFromClass(v74);
        v76 = [v59 count];
        *buf = 138543618;
        v112 = v75;
        v113 = 2050;
        v114 = v76;
        _os_log_impl(&dword_2263AA000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@ - Stage 2 Action Predictions retained num candidates after post-processing: %{public}lu", buf, 0x16u);
      }

      std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::~__hash_table(v107);
    }

    v15 = v79;
  }

  else
  {
    v59 = v88;
  }

  objc_autoreleasePoolPop(v80);

  return v59;
}

void __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_2(uint64_t a1)
{
  v1 = __atxlog_handle_action_prediction(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_2_cold_1();
  }
}

void __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_48(uint64_t a1)
{
  v1 = __atxlog_handle_action_prediction(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_48_cold_1();
  }
}

void __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_2_63(uint64_t a1)
{
  v1 = __atxlog_handle_action_prediction(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_2_63_cold_1();
  }
}

void __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_66(uint64_t a1)
{
  v1 = __atxlog_handle_action_prediction(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_66_cold_1();
  }
}

+ (id)_predictionsForConsumerSubType:(unsigned __int8)type thirdStageScoreLogger:(id)logger multiStageScoreLogger:(id)scoreLogger context:(id)context actionPredictionCandidates:(id)candidates remainingPredictionItems:(void *)items predictionsPerAppActionLimit:(id)limit
{
  typeCopy = type;
  v81 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  scoreLoggerCopy = scoreLogger;
  contextCopy = context;
  obj = candidates;
  limitCopy = limit;
  context = objc_autoreleasePoolPush();
  v13 = objc_opt_new();
  v56 = objc_opt_new();
  v14 = __atxlog_handle_action_prediction([v56 scoreActions:obj scoreLogger:loggerCopy consumerSubType:typeCopy]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138543618;
    *&buf[4] = v16;
    v77 = 2050;
    v78 = [obj count];
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - Stage 3 Action Predictions scored num candidates: %{public}lu", buf, 0x16u);
  }

  v17 = ATXSortAndLimitPredictionsWhileKeepingPredictionItems(obj, limitCopy, items);

  obja = v17;
  if (scoreLoggerCopy)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v19)
    {
      v20 = *v73;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v73 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v72 + 1) + 8 * i);
          scoredAction = [v22 scoredAction];
          v24 = [scoredAction description];

          v25 = MEMORY[0x277CCABB0];
          [v22 score];
          v26 = [v25 numberWithFloat:?];
          [v13 setObject:v26 forKeyedSubscript:v24];
        }

        v19 = [v18 countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v19);
    }
  }

  if (loggerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = dispatch_semaphore_create(0);
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __188__ATXActionPredictions__predictionsForConsumerSubType_thirdStageScoreLogger_multiStageScoreLogger_context_actionPredictionCandidates_remainingPredictionItems_predictionsPerAppActionLimit___block_invoke;
      v70[3] = &unk_27859AED0;
      v28 = v27;
      v71 = v28;
      [loggerCopy flushWithCompletion:v70];
      [MEMORY[0x277D425A0] waitForSemaphore:v28 timeoutSeconds:&__block_literal_global_70 onAcquire:&__block_literal_global_73_0 onTimeout:5.0];
    }
  }

  if (scoreLoggerCopy)
  {
    v29 = [ATXActionPredictions sortStageScores:v13];
    [scoreLoggerCopy logStageScores:v29 forStageType:2];
  }

  [ATXActionPredictionsHelpers sortPredictions:obja];
  [ATXActionPredictions penalizeMultipleActionsPerAppAndKeepSorted:obja];
  [ATXActionPredictions fetchDataAndUpdateContentAttributeSetForActions:obja];
  v30 = [ATXActionPredictionsProcessor removeDuplicateActionPredictions:obja];
  v31 = [v30 mutableCopy];

  v32 = [ATXActionPredictionsProcessor removeActionsMatchingARegexFilter:v31];
  objd = [v32 mutableCopy];

  v33 = [ATXActionPredictionsProcessor removeMissingOrBlockedRecipientPredictions:objd];
  v34 = [v33 mutableCopy];

  v35 = [ATXActionPredictionsProcessor removeDuplicateTVActionPredictions:v34];
  objb = [v35 mutableCopy];

  if (typeCopy != 22)
  {
    [objc_opt_class() setTVActionPredictionsConfidenceToLow:objb];
  }

  v36 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  objc = objb;
  v37 = [objc countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v37)
  {
    v38 = *v67;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v67 != v38)
        {
          objc_enumerationMutation(objc);
        }

        v40 = *(*(&v66 + 1) + 8 * j);
        if (v40)
        {
          objc_msgSend_predictionItem(*(*(&v66 + 1) + 8 * j));
        }

        else
        {
          bzero(buf, 0xD08uLL);
        }

        v41 = [ATXActionResult alloc];
        scoredAction2 = [v40 scoredAction];
        actionKey = [v40 actionKey];
        v44 = [(ATXActionResult *)v41 initWithScoredAction:scoredAction2 predictionItem:buf actionKey:actionKey];

        [v36 addObject:v44];
      }

      v37 = [objc countByEnumeratingWithState:&v66 objects:v79 count:16];
    }

    while (v37);
  }

  v47 = *items;
  v46 = *(items + 1);
  if (*items != v46)
  {
    do
    {
      v48 = [[ATXActionResult alloc] initForLoggingWithPredictionItem:v47];
      [v36 addObject:v48];

      v47 += 3336;
    }

    while (v47 != v46);
  }

  v49 = __atxlog_handle_action_prediction(v45);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = objc_opt_class();
    v51 = NSStringFromClass(v50);
    v52 = [v36 count];
    *buf = 138543618;
    *&buf[4] = v51;
    v77 = 2050;
    v78 = v52;
    _os_log_impl(&dword_2263AA000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ - Stage 3 Action Predictions returned num predictions: %{public}lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(context);

  return v36;
}

void __188__ATXActionPredictions__predictionsForConsumerSubType_thirdStageScoreLogger_multiStageScoreLogger_context_actionPredictionCandidates_remainingPredictionItems_predictionsPerAppActionLimit___block_invoke_2(uint64_t a1)
{
  v1 = __atxlog_handle_action_prediction(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __188__ATXActionPredictions__predictionsForConsumerSubType_thirdStageScoreLogger_multiStageScoreLogger_context_actionPredictionCandidates_remainingPredictionItems_predictionsPerAppActionLimit___block_invoke_2_cold_1();
  }
}

void __188__ATXActionPredictions__predictionsForConsumerSubType_thirdStageScoreLogger_multiStageScoreLogger_context_actionPredictionCandidates_remainingPredictionItems_predictionsPerAppActionLimit___block_invoke_71(uint64_t a1)
{
  v1 = __atxlog_handle_action_prediction(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __188__ATXActionPredictions__predictionsForConsumerSubType_thirdStageScoreLogger_multiStageScoreLogger_context_actionPredictionCandidates_remainingPredictionItems_predictionsPerAppActionLimit___block_invoke_71_cold_1();
  }
}

+ (id)actionsFromActions:(id)actions byMovingActionsWithBundleIdentifiers:(id)identifiers toRemainingPredictionItems:(void *)items
{
  actionsCopy = actions;
  identifiersCopy = identifiers;
  v9 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __107__ATXActionPredictions_actionsFromActions_byMovingActionsWithBundleIdentifiers_toRemainingPredictionItems___block_invoke;
  v16[3] = &unk_27859E088;
  v10 = identifiersCopy;
  v17 = v10;
  itemsCopy = items;
  v11 = v9;
  v18 = v11;
  [actionsCopy enumerateObjectsUsingBlock:v16];
  v12 = [v11 count];
  if (v12 == [actionsCopy count])
  {
    v13 = actionsCopy;
  }

  else
  {
    v13 = [actionsCopy objectsAtIndexes:v11];
  }

  v14 = v13;

  return v14;
}

void __107__ATXActionPredictions_actionsFromActions_byMovingActionsWithBundleIdentifiers_toRemainingPredictionItems___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 scoredAction];
  v8 = [v7 predictedItem];
  v9 = [v8 bundleId];
  LODWORD(v6) = [v6 containsObject:v9];

  if (v6)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      v12 = *v10;
      v11 = v10[1];
      v13 = +[_ATXGlobals sharedInstance];
      v14 = [v13 numberOfActionsToKeepForLogging];

      if (0x13A524387AC82261 * ((v11 - v12) >> 3) < v14)
      {
        v15 = *(a1 + 48);
        if (v5)
        {
          objc_msgSend_predictionItem(v5);
        }

        else
        {
          bzero(v16, 0xD08uLL);
        }

        std::vector<ATXPredictionItem>::push_back[abi:ne200100](v15, v16);
      }
    }
  }

  else
  {
    [*(a1 + 40) addIndex:a3];
  }
}

+ (void)fetchDataAndUpdateContentAttributeSetForActions:(id)actions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  actionsCopy = actions;
  v4 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(actionsCopy);
        }

        scoredAction = [*(*(&v9 + 1) + 8 * v6) scoredAction];
        predictedItem = [scoredAction predictedItem];
        [_ATXActionUtils fetchDataAndUpdateContentAttributeSetForAction:predictedItem];

        ++v6;
      }

      while (v4 != v6);
      v4 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

+ (void)setTVActionPredictionsConfidenceToLow:(id)low
{
  MEMORY[0x28223BE20](self);
  v31 = *MEMORY[0x277D85DE8];
  v17 = v3;
  v4 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.tv" actionType:@"INPlayMediaIntent"];
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v5 = v17;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        actionKey = [v9 actionKey];
        v11 = [actionKey isEqualToString:v4];

        if (v11)
        {
          if (v9)
          {
            objc_msgSend_predictionItem(v9);
            v12 = v22[0];
            v13 = v22[1];
            v14 = v24;
          }

          else
          {
            bzero(v22, 0xD08uLL);
            v13 = 0;
            v12 = 0;
            v14 = 0;
          }

          v15 = v12;
          memcpy(v29, v23, sizeof(v29));
          v16 = v15;
          v18[0] = v16;
          v18[1] = v13;
          memcpy(v19, v29, sizeof(v19));
          v20 = v14;
          v21 = 0;
          if (v9)
          {
            [v9 setPredictionItem:v18];
          }

          else
          {
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }
}

+ (id)filterHighQualityActionResults:(id)results consumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  resultsCopy = results;
  v6 = +[_ATXGlobals sharedInstance];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__60;
  v36 = __Block_byref_object_dispose__60;
  v37 = MEMORY[0x277CBEBF8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__ATXActionPredictions_filterHighQualityActionResults_consumerSubType___block_invoke;
  aBlock[3] = &unk_27859E0D0;
  aBlock[4] = &v32;
  v7 = _Block_copy(aBlock);
  switch(typeCopy)
  {
    case '1':
      v22 = [resultsCopy _pas_filteredArrayWithTest:&__block_literal_global_92_0];
      v23 = v33[5];
      v33[5] = v22;

      v18 = v33[5];
      v24 = [v18 count];
      maxSettingsZKWSuggestionsToBlend = [v6 maxSettingsZKWSuggestionsToBlend];
      if (v24 >= maxSettingsZKWSuggestionsToBlend)
      {
        v21 = maxSettingsZKWSuggestionsToBlend;
      }

      else
      {
        v21 = v24;
      }

      goto LABEL_11;
    case '.':
      v16 = [resultsCopy _pas_filteredArrayWithTest:&__block_literal_global_90_1];
      v17 = v33[5];
      v33[5] = v16;

      v18 = v33[5];
      v19 = [v18 count];
      maxSettingsZKWSuggestionsToBlend2 = [v6 maxSettingsZKWSuggestionsToBlend];
      if (v19 >= maxSettingsZKWSuggestionsToBlend2)
      {
        v21 = maxSettingsZKWSuggestionsToBlend2;
      }

      else
      {
        v21 = v19;
      }

LABEL_11:
      v26 = [v18 subarrayWithRange:{0, v21}];
      v10 = v33[5];
      v33[5] = v26;
      goto LABEL_12;
    case '&':
      v8 = MEMORY[0x277CBEB98];
      whitelistedActionKeysForHomeScreen = [v6 whitelistedActionKeysForHomeScreen];
      v10 = [v8 setWithArray:whitelistedActionKeysForHomeScreen];

      v11 = MEMORY[0x277CBEB98];
      whitelistedActionTypesForHomeScreen = [v6 whitelistedActionTypesForHomeScreen];
      v13 = [v11 setWithArray:whitelistedActionTypesForHomeScreen];

      [v6 behavioralHomeScreenActionMinimumConfidenceThreshold];
      v14 = [ATXActionPredictions removeActionsBelowThresholdForActionPredictions:resultsCopy withThreshold:v10 actionKeyWhitelist:v13 actionTypeWhitelist:?];
      v15 = v33[5];
      v33[5] = v14;

      v7[2](v7);
LABEL_12:

      goto LABEL_14;
  }

  [v6 actionExperienceMediumConfidenceThreshold];
  v27 = [ATXActionPredictions removeActionsBelowThresholdForActionPredictions:resultsCopy withThreshold:0 actionKeyWhitelist:0 actionTypeWhitelist:?];
  v28 = v33[5];
  v33[5] = v27;

  v7[2](v7);
LABEL_14:
  v29 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v29;
}

uint64_t __71__ATXActionPredictions_filterHighQualityActionResults_consumerSubType___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) _pas_filteredArrayWithTest:&__block_literal_global_87_0];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t __71__ATXActionPredictions_filterHighQualityActionResults_consumerSubType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB7F8];
  v3 = [a2 scoredAction];
  v4 = [v3 predictedItem];
  LODWORD(v2) = [v2 isActionEligibleForAnySettingsSuggestions:v4];

  return v2 ^ 1;
}

uint64_t __71__ATXActionPredictions_filterHighQualityActionResults_consumerSubType___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB7F8];
  v3 = [a2 scoredAction];
  v4 = [v3 predictedItem];
  v5 = [v2 isActionEligibleForSettingsSuggestions:v4];

  return v5;
}

uint64_t __71__ATXActionPredictions_filterHighQualityActionResults_consumerSubType___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB7F8];
  v3 = [a2 scoredAction];
  v4 = [v3 predictedItem];
  v5 = [v2 isActionEligibleForWatchAppSettingsSuggestions:v4];

  return v5;
}

+ (id)removeActionsBelowThresholdForActionPredictions:(id)predictions withThreshold:(double)threshold actionKeyWhitelist:(id)whitelist actionTypeWhitelist:(id)typeWhitelist
{
  v43 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  whitelistCopy = whitelist;
  typeWhitelistCopy = typeWhitelist;
  v29 = objc_opt_new();
  v9 = [objc_opt_class() numActionResultsWithOnlyPredictionItemForLogging:predictionsCopy];
  v10 = [predictionsCopy count];
  if (v10)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = predictionsCopy;
    v11 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v11)
    {
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v15 = [ATXActionPredictions actionScoreAboveThresholdOrWhitelistedAction:v14 confidenceThreshold:whitelistCopy actionKeyWhitelist:typeWhitelistCopy actionTypeWhitelist:threshold];
          if (v15)
          {
            v16 = __atxlog_handle_action_prediction(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              scoredAction = [v14 scoredAction];
              predictedItem = [scoredAction predictedItem];
              actionTitle = [predictedItem actionTitle];
              *buf = 138412290;
              v37 = actionTitle;
              _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "Adding high confidence action %@", buf, 0xCu);
            }

            [v29 addObject:v14];
          }

          else
          {
            v20 = +[_ATXGlobals sharedInstance];
            v21 = v9 < [v20 numberOfActionsToKeepForLogging];

            if (v21)
            {
              v22 = [[ATXActionResult alloc] initForLoggingWithPredictionItem:objc_msgSend_predictionItem(v14)];
              [v29 addObject:v22];

              ++v9;
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v11);
    }
  }

  v23 = __atxlog_handle_default(v10);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [v29 count];
    v25 = [predictionsCopy count];
    *buf = 134218496;
    v37 = v24;
    v38 = 2048;
    thresholdCopy = threshold;
    v40 = 2048;
    v41 = v25;
    _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_INFO, "Filtered %tu predictions with score above %0.2f threshold, out of %tu.", buf, 0x20u);
  }

  return v29;
}

+ (unint64_t)numActionResultsWithOnlyPredictionItemForLogging:(id)logging
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  loggingCopy = logging;
  v4 = 0;
  v5 = [loggingCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(loggingCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        scoredAction = [v8 scoredAction];
        if (!scoredAction)
        {
          actionKey = [v8 actionKey];
          v11 = [actionKey isEqualToString:@"predictionItem"];

          v4 += v11;
        }
      }

      v5 = [loggingCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (BOOL)actionScoreAboveThresholdOrWhitelistedAction:(id)action confidenceThreshold:(double)threshold actionKeyWhitelist:(id)whitelist actionTypeWhitelist:(id)typeWhitelist
{
  v57 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  whitelistCopy = whitelist;
  typeWhitelistCopy = typeWhitelist;
  scoredAction = [actionCopy scoredAction];

  if (scoredAction)
  {
    if (objc_msgSend_predictionItem(actionCopy) && *(objc_msgSend_predictionItem(actionCopy) + 1028) < 3.0)
    {
      scoredAction2 = [actionCopy scoredAction];
      predictedItem = [scoredAction2 predictedItem];
      parameterKeysForToolInvocation = [predictedItem parameterKeysForToolInvocation];
      if ([parameterKeysForToolInvocation count])
      {

LABEL_7:
        actionKey = __atxlog_handle_action_prediction(v15);
        if (os_log_type_enabled(actionKey, OS_LOG_TYPE_INFO))
        {
          scoredAction3 = [actionCopy scoredAction];
          predictedItem2 = [scoredAction3 predictedItem];
          v24 = *(objc_msgSend_predictionItem(actionCopy) + 1028);
          *buf = 138412546;
          v52 = predictedItem2;
          v53 = 2048;
          v54 = v24;
          _os_log_impl(&dword_2263AA000, actionKey, OS_LOG_TYPE_INFO, "Filtering out low confidence parameterized action: %@ : %f", buf, 0x16u);
        }

        v25 = 0;
        goto LABEL_25;
      }

      scoredAction4 = [actionCopy scoredAction];
      predictedItem3 = [scoredAction4 predictedItem];
      intent = [predictedItem3 intent];
      atx_nonNilParameters = [intent atx_nonNilParameters];
      v20 = [atx_nonNilParameters count];

      if (v20)
      {
        goto LABEL_7;
      }
    }

    v26 = objc_msgSend_predictionItem(actionCopy);
    if (v26)
    {
      v27 = __atxlog_handle_action_prediction(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        scoredAction5 = [actionCopy scoredAction];
        predictedItem4 = [scoredAction5 predictedItem];
        v30 = *(objc_msgSend_predictionItem(actionCopy) + 1028);
        *buf = 138412546;
        v52 = predictedItem4;
        v53 = 2048;
        v54 = v30;
        _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "Allowing action: %@ : %f", buf, 0x16u);
      }
    }

    scoredAction6 = [actionCopy scoredAction];
    [scoredAction6 score];
    v33 = v32 < threshold;

    if (!v33)
    {
      v25 = 1;
      goto LABEL_26;
    }

    v35 = __atxlog_handle_action_prediction(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      scoredAction7 = [actionCopy scoredAction];
      predictedItem5 = [scoredAction7 predictedItem];
      scoredAction8 = [actionCopy scoredAction];
      [scoredAction8 score];
      *buf = 138412802;
      v52 = predictedItem5;
      v53 = 2048;
      v54 = v39;
      v55 = 2048;
      thresholdCopy = threshold;
      _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "Action %@ has a score of %f which is below the confidenceThreshold of %f", buf, 0x20u);
    }

    scoredAction9 = [actionCopy scoredAction];
    predictedItem6 = [scoredAction9 predictedItem];
    intent2 = [predictedItem6 intent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 || ([actionCopy scoredAction], v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "predictedItem"), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "intent"), v46 = objc_claimAutoreleasedReturnValue(), v45, v44, objc_msgSend(v46, "_nonNilParameters"), v47 = objc_claimAutoreleasedReturnValue(), LOBYTE(v45) = objc_msgSend(v47, "containsObject:", @"content"), v47, v46, (v45 & 1) == 0))
    {
      actionKey = [actionCopy actionKey];
      v48 = [_ATXActionUtils getActionTypeFromActionKey:actionKey];
      if ([whitelistCopy containsObject:actionKey])
      {
        v25 = 1;
      }

      else
      {
        v25 = [typeWhitelistCopy containsObject:v48];
      }

LABEL_25:
      goto LABEL_26;
    }
  }

  v25 = 0;
LABEL_26:

  return v25;
}

+ (id)scoredActionsWithoutLog:(id)log
{
  v18 = *MEMORY[0x277D85DE8];
  logCopy = log;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(logCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = logCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        scoredAction = [v9 scoredAction];
        v11 = [scoredAction copy];

        [v9 score];
        [v11 setScore:?];
        [v4 addObject:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (void)penalizeMultipleActionsPerAppAndKeepSorted:(id)sorted
{
  v29 = *MEMORY[0x277D85DE8];
  sortedCopy = sorted;
  v23 = +[_ATXGlobals sharedInstance];
  v3 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = sortedCopy;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = MEMORY[0x277CEB7F8];
        scoredAction = [v8 scoredAction];
        predictedItem = [scoredAction predictedItem];
        LOBYTE(v9) = [v9 isActionEligibleForAnySettingsSuggestions:predictedItem];

        if ((v9 & 1) == 0)
        {
          scoredAction2 = [v8 scoredAction];
          predictedItem2 = [scoredAction2 predictedItem];
          bundleId = [predictedItem2 bundleId];

          v15 = [v3 objectForKeyedSubscript:bundleId];
          integerValue = [v15 integerValue];

          v17 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
          [v3 setObject:v17 forKeyedSubscript:bundleId];

          if (integerValue >= 1)
          {
            [v23 penaltyForMultipleActionsPerApp];
            v19 = v18;
            [v8 score];
            v21 = v19 + v20;
            *&v21 = v21;
            [v8 setScore:v21];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  [ATXActionPredictionsHelpers sortPredictions:v4];
}

+ (id)sortStageScores:(id)scores
{
  v3 = [scores keysSortedByValueUsingComparator:&__block_literal_global_102_1];

  return v3;
}

uint64_t __40__ATXActionPredictions_sortStageScores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 < v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

@end