@interface ATXAppPredictorFeedback
+ (double)_bucketize:(double)result bucketSize:(double)size;
+ (id)_appDictionaryForFeedbackItem:(id)item;
+ (id)_getLastAppIntentsWithEngagedAction:(id)action combinedIntentStream:(id)stream limit:(int)limit;
+ (id)_getLastAppsWithEngagedApp:(id)app limit:(int)limit;
+ (id)constructFeatureDictionaryWithFeedbackItems:(id)items engagedItem:(id)item shownItemIndexes:(id)indexes consumerType:(unint64_t)type histogramBundleIdTable:(id)table;
+ (id)constructSessionLogDictionaryWithFeedbackItems:(id)items engagedBundleId:(id)id shownBundleIdIndexes:(id)indexes consumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType outcome:(unint64_t)outcome annotation:(id)annotation context:(id)self0;
+ (int64_t)getEngagedItemIndexWithFeedbackItems:(id)items engagedItem:(id)item;
+ (unint64_t)_outcomeForEngagementType:(unint64_t)type;
+ (void)_sessionObjectLoggingForFeedbackItems:(id)items engagedBundleId:(id)id shownBundleIdIndexes:(id)indexes consumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType outcome:(unint64_t)outcome context:(id)context;
+ (void)_tryLogInstalledAppClipSessionEngagementMetricWithConsumerSubType:(unsigned __int8)type engagedBundleId:(id)id bundleIdsShown:(id)shown explicitlyRejectedBundleIds:(id)ids abGroupIdentifier:(id)identifier tracker:(id)tracker;
+ (void)checkFeedbackContainsUninstalledApps:(id)apps consumerSubType:(unsigned __int8)type aggregateLogger:(id)logger;
+ (void)logEngagedMMMetricsEntryForBundle:(id)bundle anchorType:(int64_t)type consumerSubType:(unsigned __int8)subType score:(double)score;
+ (void)logShownMMMetricsEntryForBundle:(id)bundle anchorType:(int64_t)type consumerSubType:(unsigned __int8)subType score:(double)score;
+ (void)receiveFeedbackForConsumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType feedbackItemsForResponse:(id)response engagementType:(unint64_t)engagementType engagedBundleId:(id)id bundleIdsShown:(id)shown explicitlyRejectedBundleIds:(id)ids abGroupIdentifier:(id)self0 context:(id)self1;
+ (void)receiveFeedbackForConsumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType feedbackItemsForResponse:(id)response engagementType:(unint64_t)engagementType engagedBundleId:(id)id bundleIdsShown:(id)shown explicitlyRejectedBundleIds:(id)ids abGroupIdentifier:(id)self0 context:(id)self1 feedbackInstance:(id)self2 aggregateLogger:(id)self3 petTracker:(id)self4;
- (ATXAppPredictorFeedback)init;
- (ATXAppPredictorFeedback)initWithPredictionContextBuilder:(id)builder feedbackInstance:(id)instance aggregateLogger:(id)logger petTracker:(id)tracker;
- (id)_engagedBundleIdFromEngagedSuggestion:(id)suggestion feedbackSession:(id)session;
- (id)clientModelIds;
- (unint64_t)_engagementTypeFromEngagedSuggestion:(id)suggestion engagedBundleId:(id)id shownBundleIds:(id)ids didSearchDuringSession:(BOOL)session;
- (unint64_t)_engagementTypeFromUIFeedbackResult:(id)result engagedSuggestion:(id)suggestion engagedBundleId:(id)id shownBundleIds:(id)ids;
- (void)receiveUIFeedbackResult:(id)result;
@end

@implementation ATXAppPredictorFeedback

+ (void)checkFeedbackContainsUninstalledApps:(id)apps consumerSubType:(unsigned __int8)type aggregateLogger:(id)logger
{
  appsCopy = apps;
  loggerCopy = logger;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__ATXAppPredictorFeedback_checkFeedbackContainsUninstalledApps_consumerSubType_aggregateLogger___block_invoke;
  aBlock[3] = &unk_278598A00;
  v17 = appsCopy;
  v18 = loggerCopy;
  typeCopy = type;
  v9 = loggerCopy;
  v10 = appsCopy;
  v11 = _Block_copy(aBlock);
  v12 = dispatch_get_global_queue(9, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__ATXAppPredictorFeedback_checkFeedbackContainsUninstalledApps_consumerSubType_aggregateLogger___block_invoke_2;
  v14[3] = &unk_2785969B8;
  v15 = v11;
  v13 = v11;
  dispatch_async(v12, v14);
}

void __96__ATXAppPredictorFeedback_checkFeedbackContainsUninstalledApps_consumerSubType_aggregateLogger___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = +[_ATXAppIconState sharedInstance];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v4 = [v2 allInstalledAppsKnownToSpringBoard];
  v5 = [v3 initWithArray:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) bundleId];
        v13 = [v5 containsObject:v12];

        v9 += v13 ^ 1u;
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);

    if (v9)
    {
      [*(a1 + 40) logPredictUninstalledApps:v9 consumerSubType:*(a1 + 48)];
    }
  }

  else
  {
  }
}

- (ATXAppPredictorFeedback)init
{
  v3 = +[ATXPredictionContextBuilder sharedInstance];
  v4 = +[_ATXFeedback sharedInstance];
  v5 = +[_ATXAggregateLogger sharedInstance];
  v6 = objc_opt_new();
  v7 = [(ATXAppPredictorFeedback *)self initWithPredictionContextBuilder:v3 feedbackInstance:v4 aggregateLogger:v5 petTracker:v6];

  return v7;
}

- (ATXAppPredictorFeedback)initWithPredictionContextBuilder:(id)builder feedbackInstance:(id)instance aggregateLogger:(id)logger petTracker:(id)tracker
{
  instanceCopy = instance;
  loggerCopy = logger;
  trackerCopy = tracker;
  v21.receiver = self;
  v21.super_class = ATXAppPredictorFeedback;
  v13 = [(ATXAppPredictorFeedback *)&v21 init];
  if (v13)
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    uTF8String = [v15 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(uTF8String, v17);
    queue = v13->_queue;
    v13->_queue = v18;

    objc_storeStrong(&v13->_feedbackInstance, instance);
    objc_storeStrong(&v13->_aggregateLogger, logger);
    objc_storeStrong(&v13->_petTracker, tracker);
  }

  return v13;
}

- (unint64_t)_engagementTypeFromEngagedSuggestion:(id)suggestion engagedBundleId:(id)id shownBundleIds:(id)ids didSearchDuringSession:(BOOL)session
{
  sessionCopy = session;
  suggestionCopy = suggestion;
  idCopy = id;
  idsCopy = ids;
  v12 = idsCopy;
  if (idCopy)
  {
    v13 = [idsCopy containsObject:idCopy];
    v14 = v13;
    if (suggestionCopy)
    {
      if (v13)
      {
        v15 = 1;
        goto LABEL_13;
      }

LABEL_12:
      v15 = 2;
      goto LABEL_13;
    }

    if ([v12 containsObject:idCopy])
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (sessionCopy)
  {
    v15 = 4;
  }

  else
  {
    v15 = 5;
  }

LABEL_13:

  return v15;
}

- (unint64_t)_engagementTypeFromUIFeedbackResult:(id)result engagedSuggestion:(id)suggestion engagedBundleId:(id)id shownBundleIds:(id)ids
{
  suggestionCopy = suggestion;
  idCopy = id;
  idsCopy = ids;
  session = [result session];
  sessionMetadata = [session sessionMetadata];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  sessionMetadata2 = [session sessionMetadata];
  if (isKindOfClass)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v18)
  {
    v17 = [(ATXAppPredictorFeedback *)self _engagementTypeFromEngagedSuggestion:suggestionCopy engagedBundleId:idCopy shownBundleIds:idsCopy didSearchDuringSession:0];
    goto LABEL_11;
  }

  sessionMetadata3 = [session sessionMetadata];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if ((v20 & 1) == 0)
  {
    v17 = 0;
    goto LABEL_11;
  }

  sessionMetadata2 = [session sessionMetadata];
  engagedBundleId = [sessionMetadata2 engagedBundleId];

  if (engagedBundleId && ([sessionMetadata2 engagedBundleIdInTopAppsVisible], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "BOOLValue"), v22, (v23 & 1) != 0))
  {
    v17 = 6;
  }

  else
  {
LABEL_2:
    v17 = -[ATXAppPredictorFeedback _engagementTypeFromEngagedSuggestion:engagedBundleId:shownBundleIds:didSearchDuringSession:](self, "_engagementTypeFromEngagedSuggestion:engagedBundleId:shownBundleIds:didSearchDuringSession:", suggestionCopy, idCopy, idsCopy, [sessionMetadata2 didSearchDuringSession]);
  }

LABEL_11:
  return v17;
}

- (id)_engagedBundleIdFromEngagedSuggestion:(id)suggestion feedbackSession:(id)session
{
  sessionCopy = session;
  bundleIdExecutableObject = [suggestion bundleIdExecutableObject];
  v7 = bundleIdExecutableObject;
  if (bundleIdExecutableObject)
  {
    v8 = bundleIdExecutableObject;
    goto LABEL_10;
  }

  sessionMetadata = [sessionCopy sessionMetadata];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    engagedAppString = [sessionMetadata engagedAppString];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }

    engagedAppString = [sessionMetadata engagedBundleId];
  }

  v8 = engagedAppString;
LABEL_9:

LABEL_10:

  return v8;
}

- (id)clientModelIds
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:15];
  v3 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:16];
  v4 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:17];
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, v3, v4, 0}];

  return v5;
}

- (void)receiveUIFeedbackResult:(id)result
{
  resultCopy = result;
  v6 = __atxlog_handle_feedback(resultCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAppPredictorFeedback *)resultCopy receiveUIFeedbackResult:v6];
  }

  shownSuggestions = [resultCopy shownSuggestions];
  v8 = [shownSuggestions count];

  if (v8)
  {
    consumerSubType = [resultCopy consumerSubType];
    v10 = [MEMORY[0x277CEBCF0] consumerTypeForSubType:consumerSubType];
    if (!consumerSubType || (v11 = v10) == 0)
    {
      firstObject = __atxlog_handle_feedback(v10);
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        [ATXAppPredictorFeedback receiveUIFeedbackResult:firstObject];
      }

      goto LABEL_24;
    }

    engagedSuggestions = [resultCopy engagedSuggestions];
    firstObject = [engagedSuggestions firstObject];

    session = [resultCopy session];
    v15 = [(ATXAppPredictorFeedback *)self _engagedBundleIdFromEngagedSuggestion:firstObject feedbackSession:session];

    shownSuggestions2 = [resultCopy shownSuggestions];
    v17 = [(ATXAppPredictorFeedback *)self _bundleIdsFromProactiveSuggestions:shownSuggestions2];

    rejectedSuggestions = [resultCopy rejectedSuggestions];
    v19 = [(ATXAppPredictorFeedback *)self _bundleIdsFromProactiveSuggestions:rejectedSuggestions];

    v20 = [(ATXAppPredictorFeedback *)self _engagementTypeFromUIFeedbackResult:resultCopy engagedSuggestion:firstObject engagedBundleId:v15 shownBundleIds:v17];
    if (!v20)
    {
LABEL_23:

LABEL_24:
      goto LABEL_25;
    }

    v21 = v20;
    v37 = v15;
    v38 = v19;
    v36 = v17;
    clientCacheUpdate = [resultCopy clientCacheUpdate];
    feedbackMetadata = [clientCacheUpdate feedbackMetadata];
    v24 = [ATXAppPredictionFeedbackItem feedbackItemsForCacheFileData:feedbackMetadata];

    v35 = v24;
    if (![v24 count])
    {
      v31 = __atxlog_handle_feedback(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        [ATXAppPredictorFeedback receiveUIFeedbackResult:v31];
      }

      v17 = v36;
      v15 = v37;
      v19 = v38;
      v30 = v35;
      goto LABEL_22;
    }

    v25 = +[_ATXAppPredictor sharedInstance];
    abGroupIdentifiers = [v25 abGroupIdentifiers];
    v34 = [abGroupIdentifiers objectAtIndexedSubscript:consumerSubType];

    context = [resultCopy context];
    if (context)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v17 = v36;
      v15 = v37;
      if (isKindOfClass)
      {
        sel_getName(a2);
        v29 = os_transaction_create();
        queue = self->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __51__ATXAppPredictorFeedback_receiveUIFeedbackResult___block_invoke;
        block[3] = &unk_27859BF10;
        block[4] = self;
        v47 = v11;
        v49 = consumerSubType;
        v30 = v35;
        v40 = v35;
        v48 = v21;
        v41 = v37;
        v42 = v36;
        v43 = v38;
        v31 = v34;
        v44 = v34;
        v45 = context;
        v46 = v29;
        v32 = v29;
        dispatch_sync(queue, block);

LABEL_21:
        v19 = v38;
LABEL_22:

        goto LABEL_23;
      }

      v32 = __atxlog_handle_feedback(isKindOfClass);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [(ATXAppPredictorFeedback *)context receiveUIFeedbackResult:v32];
      }
    }

    else
    {
      v32 = __atxlog_handle_feedback(0);
      v17 = v36;
      v15 = v37;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [ATXAppPredictorFeedback receiveUIFeedbackResult:v32];
      }
    }

    v31 = v34;
    v30 = v35;
    goto LABEL_21;
  }

LABEL_25:
}

id __51__ATXAppPredictorFeedback_receiveUIFeedbackResult___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [objc_opt_class() receiveFeedbackForConsumerType:*(a1 + 96) consumerSubType:*(a1 + 112) feedbackItemsForResponse:*(a1 + 40) engagementType:*(a1 + 104) engagedBundleId:*(a1 + 48) bundleIdsShown:*(a1 + 56) explicitlyRejectedBundleIds:*(a1 + 64) abGroupIdentifier:*(a1 + 72) context:*(a1 + 80) feedbackInstance:*(*(a1 + 32) + 16) aggregateLogger:*(*(a1 + 32) + 24) petTracker:*(*(a1 + 32) + 32)];
  objc_autoreleasePoolPop(v2);
  return objc_opt_self();
}

+ (void)receiveFeedbackForConsumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType feedbackItemsForResponse:(id)response engagementType:(unint64_t)engagementType engagedBundleId:(id)id bundleIdsShown:(id)shown explicitlyRejectedBundleIds:(id)ids abGroupIdentifier:(id)self0 context:(id)self1
{
  subTypeCopy = subType;
  contextCopy = context;
  identifierCopy = identifier;
  idsCopy = ids;
  shownCopy = shown;
  idCopy = id;
  responseCopy = response;
  v21 = objc_opt_class();
  v26 = +[_ATXFeedback sharedInstance];
  v22 = +[_ATXAggregateLogger sharedInstance];
  v23 = objc_opt_new();
  [v21 receiveFeedbackForConsumerType:type consumerSubType:subTypeCopy feedbackItemsForResponse:responseCopy engagementType:engagementType engagedBundleId:idCopy bundleIdsShown:shownCopy explicitlyRejectedBundleIds:idsCopy abGroupIdentifier:identifierCopy context:contextCopy feedbackInstance:v26 aggregateLogger:v22 petTracker:v23];
}

+ (void)receiveFeedbackForConsumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType feedbackItemsForResponse:(id)response engagementType:(unint64_t)engagementType engagedBundleId:(id)id bundleIdsShown:(id)shown explicitlyRejectedBundleIds:(id)ids abGroupIdentifier:(id)self0 context:(id)self1 feedbackInstance:(id)self2 aggregateLogger:(id)self3 petTracker:(id)self4
{
  subTypeCopy = subType;
  v124 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  idCopy = id;
  shownCopy = shown;
  idsCopy = ids;
  identifierCopy = identifier;
  contextCopy = context;
  instanceCopy = instance;
  loggerCopy = logger;
  trackerCopy = tracker;
  v21 = responseCopy;
  selfCopy = self;
  v100 = subTypeCopy;
  v103 = loggerCopy;
  [self checkFeedbackContainsUninstalledApps:v21 consumerSubType:subTypeCopy aggregateLogger:loggerCopy];
  v22 = objc_opt_new();
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v23 = v21;
  v24 = [v23 countByEnumeratingWithState:&v109 objects:v123 count:16];
  if (!v24)
  {
    goto LABEL_15;
  }

  v25 = v24;
  v26 = 0;
  v27 = *v110;
  do
  {
    v28 = 0;
    do
    {
      if (*v110 != v27)
      {
        objc_enumerationMutation(v23);
      }

      v29 = *(*(&v109 + 1) + 8 * v28);
      bundleId = [v29 bundleId];
      v31 = [shownCopy containsObject:bundleId];

      if (v31)
      {
        v33 = __atxlog_handle_default([v22 addIndex:v26]);
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_10;
        }

        *buf = 138412290;
        v114 = v29;
        v34 = v33;
        v35 = "Displayed item in feedback:\n%@";
      }

      else
      {
        v33 = __atxlog_handle_default(v32);
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_10;
        }

        *buf = 138412290;
        v114 = v29;
        v34 = v33;
        v35 = "Non-displayed item in feedback:\n%@";
      }

      _os_log_debug_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEBUG, v35, buf, 0xCu);
LABEL_10:

      ++v26;
      ++v28;
    }

    while (v25 != v28);
    v36 = [v23 countByEnumeratingWithState:&v109 objects:v123 count:16];
    v25 = v36;
  }

  while (v36);
LABEL_15:

  v37 = [ATXAppPredictorFeedback _outcomeForEngagementType:engagementType];
  v96 = objc_opt_new();
  v38 = [shownCopy count];
  v39 = v37 - 3;
  if (v37 == 3 || v37 == 6)
  {
    v41 = v38 + 1;
  }

  else
  {
    v41 = v38;
  }

  +[ATXAppPredictionDataHarvesterConstants appPredictionSessionDataHarvestSamplingRate];
  v101 = [_ATXAggregateLogger yesWithProbability:v42];
  v43 = +[ATXAppPredictionDataHarvesterConstants appPredictionSessionDataHarvestMaxItems];
  v98 = v43;
  if (v41 >= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v41;
  }

  v45 = +[ATXAppPredictionDataHarvesterConstants extraItemsToLog]+ v44;
  v46 = [v23 count];
  if (v45 >= v46)
  {
    v47 = v46;
  }

  else
  {
    v47 = v45;
  }

  v97 = v47;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v93 = objc_opt_new();
  v106 = v37;
  v107 = 0;
  if ([v23 count])
  {
    v49 = idCopy;
    if (v41)
    {
      v107 = 0;
      v108 = 0;
      v50 = v39 < 3;
      v51 = 3;
      if (v39 < 3)
      {
        v51 = 4;
      }

      v95 = v51;
      if (!idCopy)
      {
        v50 = 1;
      }

      v94 = v50;
      v90 = v37 - 1;
      v52 = 1;
      v104 = v41;
      while (1)
      {
        v53 = [v23 objectAtIndexedSubscript:v52 - 1];
        bundleId2 = [v53 bundleId];

        v55 = [v23 objectAtIndexedSubscript:v52 - 1];
        v56 = *([v55 scoreInputs] + 300);

        if (![shownCopy containsObject:bundleId2])
        {
          break;
        }

        if (v56 == 0.0)
        {
          v57 = [v23 objectAtIndexedSubscript:v52 - 1];
          v58 = *([v57 scoreInputs] + 288);
          v59 = [v23 objectAtIndexedSubscript:v52 - 1];
          +[ATXAppPredictorFeedback logShownMMMetricsEntryForBundle:anchorType:consumerSubType:score:](ATXAppPredictorFeedback, "logShownMMMetricsEntryForBundle:anchorType:consumerSubType:score:", bundleId2, v58, v100, *([v59 scoreInputs] + 280));

          v49 = idCopy;
        }

        v60 = v95;
        if (v94)
        {
          goto LABEL_46;
        }

        if (![bundleId2 isEqualToString:v49])
        {
          v60 = 3;
LABEL_46:
          [v96 addObject:bundleId2];
LABEL_47:
          v61 = v107;
          goto LABEL_48;
        }

        v61 = v107;
        if (v90 >= 8)
        {
          v60 = 0;
        }

        else
        {
          v60 = qword_2268724F8[v90];
        }

LABEL_48:
        v63 = v101;
        if (v61 >= v98)
        {
          v63 = 0;
        }

        if (v63)
        {
          v64 = [v23 objectAtIndexedSubscript:v52 - 1];
          [ATXAppPredictionDataHarvester harvestDataFromPredictionItem:v64 itemIndex:v61 itemOutcome:v60 sessionOutcome:v106 sessionUUID:uUIDString numItemsInSession:v97];

          v107 = v61 + 1;
        }

        ++v108;
        v65 = [v23 objectAtIndexedSubscript:v52 - 1];
        scoreInputs = [v65 scoreInputs];
        v67 = [v23 objectAtIndexedSubscript:v52 - 1];
        [v67 totalScore];
        [v103 logPredictionOfAppWithBundleId:bundleId2 inputs:scoreInputs outcome:v60 rank:v52 - 1 score:identifierCopy forABGroup:?];

        if (v60)
        {
          v49 = idCopy;
        }

        else
        {
          v49 = idCopy;
          if (v56 == 0.0)
          {
            v62 = [v23 objectAtIndexedSubscript:v52 - 1];
            v68 = *([v62 scoreInputs] + 288);
            v69 = [v23 objectAtIndexedSubscript:v52 - 1];
            +[ATXAppPredictorFeedback logEngagedMMMetricsEntryForBundle:anchorType:consumerSubType:score:](ATXAppPredictorFeedback, "logEngagedMMMetricsEntryForBundle:anchorType:consumerSubType:score:", idCopy, v68, v100, *([v69 scoreInputs] + 280));

            v37 = v106;
            goto LABEL_55;
          }
        }

        v37 = v106;
LABEL_58:

        if (v52 < [v23 count])
        {
          ++v52;
          if (v108 < v104)
          {
            continue;
          }
        }

        goto LABEL_63;
      }

      if (!v49 || ([bundleId2 isEqualToString:v49] & 1) == 0)
      {
        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52 - 1];
        [v93 addObject:v62];
LABEL_55:

        goto LABEL_58;
      }

      v60 = 2;
      goto LABEL_47;
    }
  }

  else
  {
    v49 = idCopy;
  }

LABEL_63:
  if (v101)
  {
    v70 = [MEMORY[0x277CEBCF8] shuffle:v93];
    v71 = +[ATXAppPredictionDataHarvesterConstants extraItemsToLog];
    if (v71)
    {
      v72 = v71;
      for (i = 0; i != v72; ++i)
      {
        if (i >= [v70 count])
        {
          break;
        }

        v74 = [v70 objectAtIndexedSubscript:i];
        unsignedIntValue = [v74 unsignedIntValue];

        v76 = [v23 objectAtIndexedSubscript:unsignedIntValue];
        [ATXAppPredictionDataHarvester harvestDataFromPredictionItem:"harvestDataFromPredictionItem:itemIndex:itemOutcome:sessionOutcome:sessionUUID:numItemsInSession:" itemIndex:v76 itemOutcome:? sessionOutcome:? sessionUUID:? numItemsInSession:?];

        ++v107;
      }
    }

    v49 = idCopy;
    v37 = v106;
  }

  if (([MEMORY[0x277D42598] isClassCLocked] & 1) == 0 && type <= 0xF && ((1 << type) & 0xC006) != 0)
  {
    v77 = v49;
    v78 = v77;
    if (engagementType == 6)
    {

      v78 = 0;
    }

    v79 = __atxlog_handle_feedback([instanceCopy feedbackLaunchedWithConsumerType:type forBundleId:v78 rejected:v96 explicitlyRejected:idsCopy context:contextCopy]);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:v100];
      v81 = [MEMORY[0x277CEBCF0] stringForEngagementType:engagementType];
      *buf = 138413314;
      v114 = v80;
      v115 = 2112;
      v116 = v81;
      v117 = 2112;
      v118 = v78;
      v119 = 2112;
      v120 = v96;
      v121 = 2112;
      v122 = idsCopy;
      _os_log_impl(&dword_2263AA000, v79, OS_LOG_TYPE_DEFAULT, "ATXAppPredictorFeedback recorded feedback for consumerSubType: %@ \nengagementType: %@ \nengaged: %@ \nrejected: %@ explicitlyRejected: %@", buf, 0x34u);

      v49 = idCopy;
    }

    v37 = v106;
  }

  v82 = __atxlog_handle_feedback([v103 logPredictionEventWith:shownCopy outcome:v37 forABGroup:identifierCopy consumerType:type andSubType:v100]);
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    v83 = [_ATXAggregateLogger stringForPredictionOutcome:v37];
    v84 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:v100];
    *buf = 138413058;
    v114 = v83;
    v115 = 2112;
    v116 = v84;
    v117 = 2112;
    v118 = identifierCopy;
    v119 = 2112;
    v120 = shownCopy;
    _os_log_impl(&dword_2263AA000, v82, OS_LOG_TYPE_DEFAULT, "ATXAppPredictorFeedback logged session with outcome: %@ consumerSubType: %@, abGroup: %@, bundleIdsShown: %@", buf, 0x2Au);

    v37 = v106;
  }

  [selfCopy _tryLogInstalledAppClipSessionEngagementMetricWithConsumerSubType:v100 engagedBundleId:v49 bundleIdsShown:shownCopy explicitlyRejectedBundleIds:idsCopy abGroupIdentifier:identifierCopy tracker:trackerCopy];
  [ATXAppPredictorFeedback _sessionObjectLoggingForFeedbackItems:v23 engagedBundleId:v49 shownBundleIdIndexes:v22 consumerType:type consumerSubType:v100 outcome:v37 context:contextCopy];
}

+ (void)_tryLogInstalledAppClipSessionEngagementMetricWithConsumerSubType:(unsigned __int8)type engagedBundleId:(id)id bundleIdsShown:(id)shown explicitlyRejectedBundleIds:(id)ids abGroupIdentifier:(id)identifier tracker:(id)tracker
{
  typeCopy = type;
  idCopy = id;
  idsCopy = ids;
  identifierCopy = identifier;
  trackerCopy = tracker;
  v18 = [shown _pas_filteredArrayWithTest:&__block_literal_global_49_2];
  if ([v18 count])
  {
    if (idCopy)
    {
      v19 = [MEMORY[0x277CEB3B8] isAppClipWebClipBundleId:idCopy];
    }

    else
    {
      v19 = 0;
    }

    v20 = [idsCopy _pas_filteredArrayWithTest:&__block_literal_global_52];
    v21 = [v20 count];

    if (v19 && ([v18 containsObject:idCopy] & 1) != 0)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2 * (v21 != 0);
    }

    v23 = objc_opt_new();
    [v23 setEngagementType:v22];
    v24 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
    [v23 setConsumerSubType:v24];

    [v23 setNumSuggestionsShown:{objc_msgSend(v18, "count")}];
    [v23 setAbGroup:identifierCopy];
    v25 = __atxlog_handle_metrics([trackerCopy trackScalarForMessage:v23]);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [ATXAppPredictorFeedback _tryLogInstalledAppClipSessionEngagementMetricWithConsumerSubType:self engagedBundleId:v23 bundleIdsShown:v25 explicitlyRejectedBundleIds:? abGroupIdentifier:? tracker:?];
    }
  }
}

+ (void)logShownMMMetricsEntryForBundle:(id)bundle anchorType:(int64_t)type consumerSubType:(unsigned __int8)subType score:(double)score
{
  if (subType == 35)
  {
    bundleCopy = bundle;
    v15 = objc_opt_new();
    [v15 setBundleId:bundleCopy];

    [v15 setAnchor:{+[ATXMMAppPredictionExpert mmAnchorTypeToMMProtobufAnchor:](ATXMMAppPredictionExpert, "mmAnchorTypeToMMProtobufAnchor:", type)}];
    v10 = +[_ATXAppPredictor sharedInstance];
    abGroupIdentifiers = [v10 abGroupIdentifiers];
    v12 = [abGroupIdentifiers objectAtIndexedSubscript:16];

    [v15 setAbGroup:v12];
    v13 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:35];
    [v15 setConsumerSubType:v13];

    mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
    [mEMORY[0x277D41DA8] trackDistributionForMessage:v15 value:score];
  }
}

+ (void)logEngagedMMMetricsEntryForBundle:(id)bundle anchorType:(int64_t)type consumerSubType:(unsigned __int8)subType score:(double)score
{
  if (subType == 35)
  {
    bundleCopy = bundle;
    v15 = objc_opt_new();
    [v15 setAnchor:{+[ATXMMAppPredictionExpert mmAnchorTypeToMMProtobufAnchor:](ATXMMAppPredictionExpert, "mmAnchorTypeToMMProtobufAnchor:", type)}];
    [v15 setBundleId:bundleCopy];

    v10 = +[_ATXAppPredictor sharedInstance];
    abGroupIdentifiers = [v10 abGroupIdentifiers];
    v12 = [abGroupIdentifiers objectAtIndexedSubscript:16];

    [v15 setAbGroup:v12];
    v13 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:35];
    [v15 setConsumerSubType:v13];

    mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
    [mEMORY[0x277D41DA8] trackDistributionForMessage:v15 value:score];
  }
}

+ (unint64_t)_outcomeForEngagementType:(unint64_t)type
{
  result = 0;
  if (type <= 3)
  {
    switch(type)
    {
      case 2uLL:
        return 3;
      case 3uLL:
        return 2;
      case 0uLL:
LABEL_18:
        v5 = __atxlog_handle_default(0);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(ATXAppPredictorFeedback *)type _outcomeForEngagementType:v5];
        }

        result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Invalid ATXEngagementType value of %lu received in feedback", type}];
        __break(1u);
        break;
    }
  }

  else
  {
    if (type <= 5)
    {
      if (type == 5)
      {
        v4 = 5;
      }

      else
      {
        v4 = 0;
      }

      if (type == 4)
      {
        return 4;
      }

      else
      {
        return v4;
      }
    }

    if (type == 6)
    {
      return 6;
    }

    if (type == 7)
    {
      goto LABEL_18;
    }
  }

  return result;
}

+ (void)_sessionObjectLoggingForFeedbackItems:(id)items engagedBundleId:(id)id shownBundleIdIndexes:(id)indexes consumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType outcome:(unint64_t)outcome context:(id)context
{
  subTypeCopy = subType;
  itemsCopy = items;
  idCopy = id;
  indexesCopy = indexes;
  contextCopy = context;
  isOverridden = [contextCopy isOverridden];
  if ((outcome & 0xFFFFFFFFFFFFFFFELL) != 4 && (isOverridden & 1) == 0)
  {
    v18 = +[_ATXGlobals sharedInstance];
    [v18 sessionObjectLogSamplingRate];
    v20 = v19;

    isInternalBuild = [MEMORY[0x277D42590] isInternalBuild];
    v22 = v20 * 10.0;
    if (v20 * 10.0 > 1.0)
    {
      v22 = 1.0;
    }

    if (!isInternalBuild)
    {
      v22 = v20;
    }

    if ([_ATXAggregateLogger yesWithProbability:v22])
    {
      v23 = objc_autoreleasePoolPush();
      v24 = [ATXAppPredictorFeedback constructSessionLogDictionaryWithFeedbackItems:itemsCopy engagedBundleId:idCopy shownBundleIdIndexes:indexesCopy consumerType:type consumerSubType:subTypeCopy outcome:outcome annotation:0 context:contextCopy];
      [ATXAWDUtils logAppPredictionDictionaryViaAWD:v24];

      objc_autoreleasePoolPop(v23);
    }
  }
}

+ (int64_t)getEngagedItemIndexWithFeedbackItems:(id)items engagedItem:(id)item
{
  itemsCopy = items;
  itemCopy = item;
  if ([itemsCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [itemsCopy objectAtIndexedSubscript:v7];
      bundleId = [v8 bundleId];
      v10 = [itemCopy isEqualToString:bundleId];

      if (v10)
      {
        break;
      }

      if (++v7 >= [itemsCopy count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = -1;
  }

  return v7;
}

+ (id)constructFeatureDictionaryWithFeedbackItems:(id)items engagedItem:(id)item shownItemIndexes:(id)indexes consumerType:(unint64_t)type histogramBundleIdTable:(id)table
{
  v96 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  itemCopy = item;
  indexesCopy = indexes;
  tableCopy = table;
  v15 = [itemsCopy count];
  if (v15)
  {
    v16 = [indexesCopy count];
    v17 = +[_ATXGlobals sharedInstance];
    v18 = v17;
    v70 = indexesCopy;
    v71 = itemCopy;
    v69 = tableCopy;
    typeCopy = type;
    if (type == 8)
    {
      extraIntentsToLog = [v17 extraIntentsToLog];
    }

    else
    {
      extraIntentsToLog = [v17 extraAppsToLog];
    }

    v20 = extraIntentsToLog;

    if (v16 + v20 >= v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = v16 + v20;
    }

    v22 = objc_opt_new();
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v23 = itemsCopy;
    v24 = [v23 countByEnumeratingWithState:&v89 objects:v95 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v90;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v90 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v89 + 1) + 8 * i);
          bundleId = [v28 bundleId];
          [v22 setObject:v28 forKeyedSubscript:bundleId];
        }

        v25 = [v23 countByEnumeratingWithState:&v89 objects:v95 count:16];
      }

      while (v25);
    }

    v67 = itemsCopy;

    v30 = objc_opt_new();
    v31 = objc_alloc(MEMORY[0x277CBEB58]);
    allKeys = [v22 allKeys];
    v33 = [v31 initWithArray:allKeys];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __136__ATXAppPredictorFeedback_constructFeatureDictionaryWithFeedbackItems_engagedItem_shownItemIndexes_consumerType_histogramBundleIdTable___block_invoke;
    aBlock[3] = &unk_27859BF38;
    v34 = v33;
    v86 = v34;
    v72 = v30;
    v87 = v72;
    v88 = v21;
    v35 = _Block_copy(aBlock);
    v36 = [ATXAppPredictorFeedback getEngagedItemIndexWithFeedbackItems:v23 engagedItem:v71];
    if (v36 != -1)
    {
      v37 = [v23 objectAtIndexedSubscript:v36];
      v35[2](v35, v37);
    }

    v63 = v36;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v81 = 0u;
    v38 = [v23 objectsAtIndexes:v70];
    v39 = [v38 countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v82;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v82 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v35[2](v35, *(*(&v81 + 1) + 8 * j));
        }

        v40 = [v38 countByEnumeratingWithState:&v81 objects:v94 count:16];
      }

      while (v40);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v68 = v34;
    v43 = [MEMORY[0x277CEBCF8] shuffle:v34];
    v44 = [v43 countByEnumeratingWithState:&v77 objects:v93 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v78;
LABEL_26:
      v47 = 0;
      while (1)
      {
        if (*v78 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v77 + 1) + 8 * v47);
        if ([v72 count] >= v21)
        {
          break;
        }

        v49 = [v22 objectForKeyedSubscript:v48];
        v35[2](v35, v49);

        if (v45 == ++v47)
        {
          v45 = [v43 countByEnumeratingWithState:&v77 objects:v93 count:16];
          if (v45)
          {
            goto LABEL_26;
          }

          break;
        }
      }
    }

    v50 = v68;
    if (typeCopy == 8 && v63 != -1)
    {
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __136__ATXAppPredictorFeedback_constructFeatureDictionaryWithFeedbackItems_engagedItem_shownItemIndexes_consumerType_histogramBundleIdTable___block_invoke_2;
      v73[3] = &unk_27859BF60;
      v74 = v22;
      v75 = v68;
      v76 = v72;
      v51 = _Block_copy(v73);
      v52 = [v23 objectAtIndexedSubscript:v63];
      bundleId2 = [v52 bundleId];
      v54 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:bundleId2];

      if (v54)
      {
        first = [v54 first];
        [v54 second];
        v55 = v66 = v52;
        v56 = [MEMORY[0x277CBEB58] setWithObject:first];
        v57 = [_ATXActionUtils actionKeyFilterForCandidateBundleIds:v56 candidateActionTypes:0 blacklist:0];
        v58 = [v69 allKeysFilteredBy:v57];

        v51[2](v51, v58);
        v59 = [MEMORY[0x277CBEB58] setWithObject:v55];
        v60 = [_ATXActionUtils actionKeyFilterForCandidateBundleIds:0 candidateActionTypes:v59 blacklist:0];
        v61 = [v69 allKeysFilteredBy:v60];

        v51[2](v51, v61);
        v50 = v68;

        v52 = v66;
      }
    }

    v15 = v72;

    itemsCopy = v67;
    indexesCopy = v70;
    itemCopy = v71;
    tableCopy = v69;
  }

  return v15;
}

void __136__ATXAppPredictorFeedback_constructFeatureDictionaryWithFeedbackItems_engagedItem_shownItemIndexes_consumerType_histogramBundleIdTable___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleId];
  if ([*(a1 + 32) containsObject:v3] && objc_msgSend(*(a1 + 40), "count") < *(a1 + 48))
  {
    v4 = *(a1 + 40);
    v5 = [ATXAppPredictorFeedback _appDictionaryForFeedbackItem:v6];
    [v4 addObject:v5];

    [*(a1 + 32) removeObject:v3];
  }
}

void __136__ATXAppPredictorFeedback_constructFeatureDictionaryWithFeedbackItems_engagedItem_shownItemIndexes_consumerType_histogramBundleIdTable___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(a1 + 32) objectForKeyedSubscript:{v8, v13}];
        if ([*(a1 + 40) containsObject:v8])
        {
          v11 = *(a1 + 48);
          v12 = [ATXAppPredictorFeedback _appDictionaryForFeedbackItem:v10];
          [v11 addObject:v12];

          [*(a1 + 40) removeObject:v8];
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

+ (id)constructSessionLogDictionaryWithFeedbackItems:(id)items engagedBundleId:(id)id shownBundleIdIndexes:(id)indexes consumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType outcome:(unint64_t)outcome annotation:(id)annotation context:(id)self0
{
  subTypeCopy = subType;
  itemsCopy = items;
  idCopy = id;
  indexesCopy = indexes;
  annotationCopy = annotation;
  contextCopy = context;
  if ([contextCopy isOverridden])
  {
    v20 = 0;
    v21 = contextCopy;
  }

  else
  {
    v143 = annotationCopy;
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    +[ATXHistogramBundleIdTable sharedInstance];
    v22 = v127 = contextCopy;
    v135 = indexesCopy;
    typeCopy = type;
    v23 = [ATXAppPredictorFeedback constructFeatureDictionaryWithFeedbackItems:itemsCopy engagedItem:idCopy shownItemIndexes:indexesCopy consumerType:type histogramBundleIdTable:v22];
    [v20 setObject:v23 forKeyedSubscript:@"AppData"];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:outcome];
    [v20 setObject:v24 forKeyedSubscript:@"Outcome"];

    v136 = itemsCopy;
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:{+[ATXAppPredictorFeedback getEngagedItemIndexWithFeedbackItems:engagedItem:](ATXAppPredictorFeedback, "getEngagedItemIndexWithFeedbackItems:engagedItem:", itemsCopy, idCopy)}];
    [v20 setObject:v25 forKeyedSubscript:@"EngagedApp"];

    [v20 setObject:&unk_283A55FE8 forKeyedSubscript:@"session_log_version"];
    [ATXFileUtil cacheAgeForConsumerType:subTypeCopy];
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:floor(v26 / 10.0) * 10.0];
    [v20 setObject:v27 forKeyedSubscript:@"PredictionCacheAge"];

    v21 = v127;
    timeContext = [v127 timeContext];
    date = [timeContext date];

    v29 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v30 = [v29 histogramForLaunchType:0];

    v31 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v142 = [v31 histogramForLaunchType:1];

    v32 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v141 = [v32 histogramForLaunchType:2];

    v33 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v140 = [v33 histogramForLaunchType:3];

    v34 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v139 = [v34 histogramForLaunchType:5];

    v35 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v138 = [v35 categoricalHistogramForLaunchType:4];

    v36 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v37 = [v36 categoricalHistogramForLaunchType:37];

    userContext = [v127 userContext];
    lastAppLaunch = [userContext lastAppLaunch];

    v132 = lastAppLaunch;
    v133 = v37;
    v131 = subTypeCopy;
    if (lastAppLaunch)
    {
      v40 = +[_ATXAppLaunchSequenceManager sharedInstance];
      v41 = [v40 launchSequenceForBundle:lastAppLaunch];
    }

    else
    {
      v41 = 0;
    }

    [v30 totalLaunches];
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v42 = -31337.0;
    }

    v43 = [MEMORY[0x277CCABB0] numberWithLongLong:v42];
    [v20 setObject:v43 forKeyedSubscript:@"TotalLaunches"];

    [v30 totalTimeOfDayLaunchesForDate:date];
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v44 = -31337.0;
    }

    v45 = [MEMORY[0x277CCABB0] numberWithLongLong:v44];
    [v20 setObject:v45 forKeyedSubscript:@"TotalTimeOfDayLaunches"];

    [v142 totalLaunches];
    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v46 = -31337.0;
    }

    v47 = [MEMORY[0x277CCABB0] numberWithLongLong:v46];
    [v20 setObject:v47 forKeyedSubscript:@"TotalSpotlightLaunches"];

    [v142 totalTimeOfDayLaunchesForDate:date];
    if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v48 = -31337.0;
    }

    v49 = [MEMORY[0x277CCABB0] numberWithLongLong:v48];
    [v20 setObject:v49 forKeyedSubscript:@"TotalSpotlightTimeOfDayLaunches"];

    [v141 totalLaunches];
    if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v50 = -31337.0;
    }

    v51 = [MEMORY[0x277CCABB0] numberWithLongLong:v50];
    [v20 setObject:v51 forKeyedSubscript:@"TotalDayOfWeekLaunches"];

    [v141 totalTimeOfDayLaunchesForDate:date];
    if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v52 = -31337.0;
    }

    v53 = [MEMORY[0x277CCABB0] numberWithLongLong:v52];
    [v20 setObject:v53 forKeyedSubscript:@"TotalCurrentDayOfWeekLaunches"];

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v55 = [currentCalendar component:32 fromDate:date];
    v129 = currentCalendar;
    v56 = [currentCalendar component:512 fromDate:date] - 1;
    v57 = [MEMORY[0x277CCABB0] numberWithInteger:v55 / 4];
    [v20 setObject:v57 forKeyedSubscript:@"TimeOfDayInterval"];

    v58 = [MEMORY[0x277CCABB0] numberWithInteger:v56];
    [v20 setObject:v58 forKeyedSubscript:@"DayOfWeek"];

    [v41 subsequentLaunchTotalCount];
    if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v59 = -31337.0;
    }

    v60 = [MEMORY[0x277CCABB0] numberWithLongLong:v59];
    [v20 setObject:v60 forKeyedSubscript:@"TotalLaunchSequences"];

    [v140 totalLaunches];
    if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v61 = -31337.0;
    }

    v62 = [MEMORY[0x277CCABB0] numberWithLongLong:v61];
    [v20 setObject:v62 forKeyedSubscript:@"TotalAirplaneModeLaunches"];

    v63 = MEMORY[0x277CCABB0];
    deviceStateContext = [v127 deviceStateContext];
    v65 = [v63 numberWithInt:{objc_msgSend(deviceStateContext, "inAirplaneMode")}];
    [v20 setObject:v65 forKeyedSubscript:@"InAirplaneMode"];

    [v139 totalLaunches];
    if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v66 = -31337.0;
    }

    v67 = [MEMORY[0x277CCABB0] numberWithLongLong:v66];
    [v20 setObject:v67 forKeyedSubscript:@"TotalTrendingLaunches"];

    deviceStateContext2 = [v127 deviceStateContext];
    wifiSSID = [deviceStateContext2 wifiSSID];

    [v138 totalLaunches];
    if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v70 = -31337.0;
    }

    v71 = [MEMORY[0x277CCABB0] numberWithLongLong:v70];
    [v20 setObject:v71 forKeyedSubscript:@"TotalWifiLaunches"];

    v134 = v30;
    v128 = wifiSSID;
    if ([wifiSSID length])
    {
      [v138 totalLaunchesForCategory:wifiSSID];
      if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v72 = -31337.0;
      }

      v73 = [MEMORY[0x277CCABB0] numberWithLongLong:v72];
      [v20 setObject:v73 forKeyedSubscript:@"TotalSSIDLaunches"];
    }

    else
    {
      [v20 setObject:&unk_283A56000 forKeyedSubscript:@"TotalSSIDLaunches"];
    }

    [v133 totalLaunches];
    if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v74 = -31337.0;
    }

    v75 = [MEMORY[0x277CCABB0] numberWithLongLong:v74];
    [v20 setObject:v75 forKeyedSubscript:@"CoreMotionLaunches"];

    v76 = MEMORY[0x277D41C30];
    locationMotionContext = [v127 locationMotionContext];
    v78 = [v76 getMotionStringFromMotionType:{objc_msgSend(locationMotionContext, "motionType")}];

    if ([v78 length])
    {
      [v133 totalLaunchesForCategory:v78];
      if ((*&v79 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v79 = -31337.0;
      }

      v80 = [MEMORY[0x277CCABB0] numberWithLongLong:v79];
      [v20 setObject:v80 forKeyedSubscript:@"CoreMotionCurrentMotionLaunches"];
    }

    else
    {
      [v20 setObject:&unk_283A56000 forKeyedSubscript:@"CoreMotionCurrentMotionLaunches"];
    }

    v81 = [MEMORY[0x277CEBCF0] stringForConsumerType:typeCopy];
    [v20 setObject:v81 forKeyedSubscript:@"ConsumerType"];

    v82 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:v131];
    [v20 setObject:v82 forKeyedSubscript:@"ConsumerSubType"];

    if ([v143 length])
    {
      [v20 setObject:v143 forKeyedSubscript:@"annotation"];
    }

    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsInternalBuild"];
    }

    if ((v131 - 50) > 0xCEu)
    {
      v83 = +[_ATXAppPredictor sharedInstance];
      abGroupIdentifiers = [v83 abGroupIdentifiers];
      v85 = [abGroupIdentifiers objectAtIndexedSubscript:v131];

      [v20 setObject:v85 forKeyedSubscript:@"ABGroup"];
    }

    else
    {
      [v20 setObject:@"ERROR!" forKeyedSubscript:@"ABGroup"];
    }

    v86 = objc_autoreleasePoolPush();
    v87 = +[_ATXGlobals sharedInstance];
    if ([v87 sessionLoggingCurrentLOITypeEnable])
    {
      locationMotionContext2 = [v127 locationMotionContext];
      currentLOI = [locationMotionContext2 currentLOI];

      if (currentLOI)
      {
        type = [currentLOI type];
      }

      else
      {
        type = -1;
      }

      v91 = [MEMORY[0x277D41BF8] stringForLOIType:type];
      [v20 setObject:v91 forKeyedSubscript:@"CurrentLOIType"];
    }

    if ([v87 sessionLoggingHomeDistanceEnable])
    {
      v92 = objc_opt_class();
      locationMotionContext3 = [v127 locationMotionContext];
      [locationMotionContext3 distanceFromHomeOfCurrentLocationInMeters];
      v95 = v94;
      [v87 sessionLoggingDistanceAccuracy];
      [v92 _bucketize:v95 bucketSize:v96];
      v98 = v97;

      if (v98 >= 0.0)
      {
        v99 = [MEMORY[0x277CCABB0] numberWithDouble:v98];
        [v20 setObject:v99 forKeyedSubscript:@"LocationDistanceFromHome"];
      }
    }

    if ([v87 sessionLoggingWorkDistanceEnable])
    {
      v100 = objc_opt_class();
      locationMotionContext4 = [v127 locationMotionContext];
      [locationMotionContext4 distanceFromWorkOfCurrentLocationInMeters];
      v103 = v102;
      [v87 sessionLoggingDistanceAccuracy];
      [v100 _bucketize:v103 bucketSize:v104];
      v106 = v105;

      if (v106 >= 0.0)
      {
        v107 = [MEMORY[0x277CCABB0] numberWithDouble:v106];
        [v20 setObject:v107 forKeyedSubscript:@"LocationDistanceFromWork"];
      }
    }

    if ([v87 sessionLoggingSchoolDistanceEnable])
    {
      v108 = objc_opt_class();
      locationMotionContext5 = [v127 locationMotionContext];
      [locationMotionContext5 distanceFromSchoolOfCurrentLocationInMeters];
      v111 = v110;
      [v87 sessionLoggingDistanceAccuracy];
      [v108 _bucketize:v111 bucketSize:v112];
      v114 = v113;

      if (v114 >= 0.0)
      {
        v115 = [MEMORY[0x277CCABB0] numberWithDouble:v114];
        [v20 setObject:v115 forKeyedSubscript:@"LocationDistanceFromSchool"];
      }
    }

    if ([v87 sessionLoggingGymDistanceEnable])
    {
      v116 = objc_opt_class();
      locationMotionContext6 = [v127 locationMotionContext];
      [locationMotionContext6 distanceFromGymOfCurrentLocationInMeters];
      v119 = v118;
      [v87 sessionLoggingDistanceAccuracy];
      [v116 _bucketize:v119 bucketSize:v120];
      v122 = v121;

      if (v122 >= 0.0)
      {
        v123 = [MEMORY[0x277CCABB0] numberWithDouble:v122];
        [v20 setObject:v123 forKeyedSubscript:@"LocationDistanceFromGym"];
      }
    }

    v124 = +[_ATXGlobals sharedInstance];
    v125 = +[ATXAppPredictorFeedback _getLastAppsWithEngagedApp:limit:](ATXAppPredictorFeedback, "_getLastAppsWithEngagedApp:limit:", idCopy, [v124 sessionLoggingAppSequenceLength]);

    if ([v125 count])
    {
      [v20 setObject:v125 forKeyedSubscript:@"AppSequence"];
    }

    objc_autoreleasePoolPop(v86);
    itemsCopy = v136;
    indexesCopy = v135;
    annotationCopy = v143;
  }

  return v20;
}

+ (double)_bucketize:(double)result bucketSize:(double)size
{
  if (result >= 0.0)
  {
    return (result / size) * size;
  }

  return result;
}

+ (id)_getLastAppsWithEngagedApp:(id)app limit:(int)limit
{
  v44 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v6 = objc_opt_new();
  v7 = [v6 dateByAddingTimeInterval:-7200.0];
  v8 = objc_opt_new();
  v9 = objc_alloc_init(MEMORY[0x277CEBBE0]);
  v10 = objc_autoreleasePoolPush();
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __60__ATXAppPredictorFeedback__getLastAppsWithEngagedApp_limit___block_invoke;
  v41[3] = &unk_278596DC8;
  v11 = v8;
  v42 = v11;
  [v9 enumerateAppLaunchSessionsBetweenStartDate:v7 endDate:v6 shouldReverse:0 bundleIDFilter:0 block:v41];

  objc_autoreleasePoolPop(v10);
  if (!appCopy || ([(__CFString *)appCopy isEqualToString:&stru_2839A6058]& 1) != 0)
  {
    v12 = appCopy;
    appCopy = @"NONE";
LABEL_4:

    goto LABEL_5;
  }

  if (![v11 count])
  {
    goto LABEL_5;
  }

  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 1}];
  bundleID = [v12 bundleID];
  v21 = [bundleID isEqualToString:appCopy];

  if (!v21)
  {
    goto LABEL_4;
  }

  appSessionEndTime = [v12 appSessionEndTime];

  if (!appSessionEndTime)
  {
    goto LABEL_6;
  }

  appSessionEndTime2 = [v12 appSessionEndTime];
  [v6 timeIntervalSinceDate:appSessionEndTime2];
  v25 = v24;

  if (v25 > 300.0)
  {
LABEL_5:
    v12 = [objc_alloc(MEMORY[0x277CEBBD8]) initWithBundleId:appCopy type:1 parentBundleID:0 extensionHostID:0 appSessionStartTime:v6 appSessionEndTime:v6 launchReason:0];
    [v11 addObject:v12];
LABEL_6:
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [v11 count];
  v15 = [v11 count];
  v35 = v9;
  v36 = v7;
  if (v14 <= limit)
  {
    if (v15 >= limit)
    {
      v17 = v11;
    }

    else
    {
      v17 = objc_opt_new();
      if ([v11 count] != limit)
      {
        v18 = 0;
        do
        {
          v19 = [objc_alloc(MEMORY[0x277CEBBD8]) initWithBundleId:@"NONE" type:1 parentBundleID:0 extensionHostID:0 appSessionStartTime:v6 appSessionEndTime:v6 launchReason:0];
          [v17 addObject:v19];

          ++v18;
        }

        while (limit - [v11 count] > v18);
      }

      [v17 addObjectsFromArray:v11];
    }
  }

  else
  {
    v16 = [v11 subarrayWithRange:{v15 - limit, limit}];
    v17 = [v16 mutableCopy];
  }

  objc_autoreleasePoolPop(v13);
  v26 = objc_opt_new();
  v27 = objc_autoreleasePoolPush();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = v17;
  v29 = [v28 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v38;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(v28);
        }

        bundleID2 = [*(*(&v37 + 1) + 8 * i) bundleID];
        [v26 addObject:bundleID2];
      }

      v30 = [v28 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v30);
  }

  objc_autoreleasePoolPop(v27);

  return v26;
}

+ (id)_getLastAppIntentsWithEngagedAction:(id)action combinedIntentStream:(id)stream limit:(int)limit
{
  v65 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  streamCopy = stream;
  v9 = objc_opt_new();
  v56 = [v9 dateByAddingTimeInterval:-14400.0];
  v10 = [streamCopy getCombinedIntentEventsBetweenStartDate:? endDate:? ascending:?];
  v11 = [v10 mutableCopy];

  actionKey = [actionCopy actionKey];
  if (actionKey)
  {
    v13 = actionKey;
    actionKey2 = [actionCopy actionKey];
    v15 = [actionKey2 isEqualToString:&stru_2839A6058];

    if ((v15 & 1) == 0)
    {
      if ([v11 count])
      {
        v54 = v9;
        v16 = [v11 objectAtIndexedSubscript:0];
        action = [v16 action];
        actionKey3 = [action actionKey];
        actionKey4 = [actionCopy actionKey];
        v20 = [actionKey3 isEqualToString:actionKey4];

        if (v20)
        {
          endDate = [v16 endDate];
          v9 = v54;
          [v54 timeIntervalSinceDate:endDate];
          v23 = v22;

          if (v23 <= 30.0)
          {
            goto LABEL_9;
          }
        }

        else
        {

          v9 = v54;
        }
      }

      v24 = [objc_alloc(MEMORY[0x277CEB5D8]) initWithBundleId:@"NONE" intentType:@"NONE" dateInterval:0 action:actionCopy];
      [v11 insertObject:v24 atIndex:0];
    }
  }

LABEL_9:
  v57 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v25 = v11;
  v26 = [v25 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v26)
  {
    v27 = v26;
    v53 = actionCopy;
    v55 = v9;
    v52 = streamCopy;
    v28 = 0;
    v29 = 0;
    v30 = *v61;
    limitCopy = limit;
    v32 = &stru_2839A6058;
    obj = v25;
    v59 = limitCopy;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v61 != v30)
        {
          objc_enumerationMutation(obj);
        }

        if (v28 == limitCopy)
        {
          v43 = obj;

          streamCopy = v52;
          actionCopy = v53;
          v9 = v55;
          v44 = v56;
          v46 = v57;
          goto LABEL_30;
        }

        v34 = *(*(&v60 + 1) + 8 * i);
        action2 = [v34 action];
        actionKey5 = [action2 actionKey];

        if (actionKey5)
        {
          action3 = [v34 action];
          actionKey6 = [action3 actionKey];
          v39 = [actionKey6 isEqualToString:v32];

          if (v39)
          {
            ++v29;
            limitCopy = v59;
          }

          else
          {
            if (([(__CFString *)v32 isEqualToString:&stru_2839A6058]& 1) == 0)
            {
              v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%ld", v32, v29];
              [v57 addObject:v40];

              ++v28;
            }

            limitCopy = v59;
            action4 = [v34 action];
            actionKey7 = [action4 actionKey];

            v32 = actionKey7;
            v29 = 1;
          }
        }
      }

      v27 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }

    v43 = obj;

    if (v29)
    {
      v44 = v56;
      if (v28 == limitCopy)
      {
        streamCopy = v52;
        actionCopy = v53;
        v9 = v55;
        v46 = v57;
      }

      else
      {
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%ld", v32, v29];
        v46 = v57;
        [v57 addObject:v45];

        ++v28;
        streamCopy = v52;
        actionCopy = v53;
        v9 = v55;
      }

      limitCopy2 = v59;
    }

    else
    {
      limitCopy2 = limitCopy;
      streamCopy = v52;
      actionCopy = v53;
      v9 = v55;
      v44 = v56;
      v46 = v57;
    }
  }

  else
  {

    v28 = 0;
    limitCopy2 = limit;
    v32 = &stru_2839A6058;
    v44 = v56;
    v46 = v57;
    v43 = v25;
  }

  v48 = limitCopy2 - v28;
  if (limitCopy2 > v28)
  {
    do
    {
      [v46 addObject:@"NONE"];
      --v48;
    }

    while (v48);
  }

LABEL_30:
  reverseObjectEnumerator = [v46 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

+ (id)_appDictionaryForFeedbackItem:(id)item
{
  itemCopy = item;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:829];
  for (i = 0; i != 828; ++i)
  {
    v6 = *([itemCopy scoreInputs] + 4 * i);
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v6 = -31337.0;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    v8 = [_ATXScoreTypes aggdStringForScoreInput:i];
    [v4 setObject:v7 forKeyedSubscript:v8];
  }

  v9 = +[_ATXAppInfoManager sharedInstance];
  bundleId = [itemCopy bundleId];
  v11 = [v9 genreIdForBundleId:bundleId];
  [v4 setObject:v11 forKeyedSubscript:@"GenreId"];

  bundleId2 = [itemCopy bundleId];
  v13 = [v9 subGenreIdsForBundleId:bundleId2];
  [v4 setObject:v13 forKeyedSubscript:@"SubGenreIds"];

  [itemCopy totalScore];
  v15 = v14;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v15 = -31337.0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  [v4 setObject:v16 forKeyedSubscript:@"Score"];

  bundleId3 = [itemCopy bundleId];
  [v4 setObject:bundleId3 forKeyedSubscript:@"BundleId"];

  return v4;
}

- (void)receiveUIFeedbackResult:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXAppPredictorFeedback receiveUIFeedbackResult got result - %@", &v2, 0xCu);
}

- (void)receiveUIFeedbackResult:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unexpected type of context: %{public}@", &v5, 0xCu);
}

+ (void)_tryLogInstalledAppClipSessionEngagementMetricWithConsumerSubType:(NSObject *)a3 engagedBundleId:bundleIdsShown:explicitlyRejectedBundleIds:abGroupIdentifier:tracker:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 consumerSubType];
  v8 = [a2 engagementType];
  if (v8 > 2)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v8];
  }

  else
  {
    v9 = off_27859BF80[v8];
  }

  v10 = [a2 numSuggestionsShown];
  v11 = [a2 abGroup];
  *buf = 138413314;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v9;
  v18 = 1024;
  v19 = v10;
  v20 = 2112;
  v21 = v11;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBInstalledAppClipSessionEngagementTracker with consumerSubType: %@ and engagementType: %@ numSuggestionsShown: %u abGroup: %@", buf, 0x30u);
}

+ (void)_outcomeForEngagementType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Invalid ATXEngagementType value of %lu received in feedback", &v2, 0xCu);
}

@end