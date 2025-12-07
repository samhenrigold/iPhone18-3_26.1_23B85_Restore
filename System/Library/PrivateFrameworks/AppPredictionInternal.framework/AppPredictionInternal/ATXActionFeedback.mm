@interface ATXActionFeedback
+ (id)sharedInstance;
- (ATXActionFeedback)init;
- (ATXActionFeedback)initWithPredictionContextBuilder:(id)builder actionFeedbackWeights:(id)weights appLaunchHistogramManager:(id)manager actionNotificationServer:(id)server recentEngagmentCache:(id)cache appIntentMonitor:(id)monitor dataStore:(id)store blendingHyperParameters:(id)self0;
- (id)_actionResponseFromUIFeedbackResult:(id)result shownActions:(id)actions rejectedActions:(id)rejectedActions engagedAction:(id)action engagedSuggestion:(id)suggestion;
- (id)clientModelIds;
- (unint64_t)_feedbackStageForUIFeedbackResult:(id)result engagedSuggestion:(id)suggestion;
- (void)_assertHistogram:(id)histogram weight:(float)weight;
- (void)_updateAppLaunchCategoricalHistogram:(int64_t)histogram bundleId:(id)id category:(id)category context:(id)context weight:(float)weight;
- (void)_updateAppLaunchHistogram:(int64_t)histogram bundleId:(id)id context:(id)context weight:(float)weight;
- (void)applyFinalFeedbackForActionResponse:(id)response engagementType:(unint64_t)type context:(id)context;
- (void)decayCounts;
- (void)logHeuristicFeedback:(id)feedback;
- (void)logHeuristicFeedbackToPortraitForAction:(id)action withActionType:(unsigned __int16)type;
- (void)logHeuristicFeedbackToSuggestionsForAction:(id)action withActionType:(unsigned __int16)type;
- (void)receiveFeedbackWithActionResponse:(id)response context:(id)context;
- (void)receiveLockscreenFeedbackWithAction:(id)action actionResponse:(id)response engagement:(BOOL)engagement triggeredByUserInteraction:(BOOL)interaction;
- (void)receiveLockscreenFeedbackWithAction:(id)action actionResponse:(id)response engagement:(BOOL)engagement triggeredByUserInteraction:(BOOL)interaction currentDate:(id)date;
- (void)receiveUIFeedbackResult:(id)result;
- (void)resetData;
- (void)sessionLogWithActionResponse:(id)response engagementType:(unint64_t)type context:(id)context;
- (void)unloadCachedHistograms;
@end

@implementation ATXActionFeedback

- (ATXActionFeedback)init
{
  v3 = +[ATXPredictionContextBuilder sharedInstance];
  v4 = +[ATXActionFeedbackWeights sharedInstance];
  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v6 = +[ATXActionNotificationServer sharedInstance];
  mEMORY[0x277CEB7E0] = [MEMORY[0x277CEB7E0] sharedInstance];
  v8 = +[_ATXAppPredictor sharedInstance];
  appIntentMonitor = [v8 appIntentMonitor];
  v10 = +[_ATXDataStore sharedInstance];
  mEMORY[0x277D41B98] = [MEMORY[0x277D41B98] sharedInstance];
  v12 = [(ATXActionFeedback *)self initWithPredictionContextBuilder:v3 actionFeedbackWeights:v4 appLaunchHistogramManager:v5 actionNotificationServer:v6 recentEngagmentCache:mEMORY[0x277CEB7E0] appIntentMonitor:appIntentMonitor dataStore:v10 blendingHyperParameters:mEMORY[0x277D41B98]];

  return v12;
}

- (ATXActionFeedback)initWithPredictionContextBuilder:(id)builder actionFeedbackWeights:(id)weights appLaunchHistogramManager:(id)manager actionNotificationServer:(id)server recentEngagmentCache:(id)cache appIntentMonitor:(id)monitor dataStore:(id)store blendingHyperParameters:(id)self0
{
  builderCopy = builder;
  weightsCopy = weights;
  managerCopy = manager;
  serverCopy = server;
  cacheCopy = cache;
  monitorCopy = monitor;
  storeCopy = store;
  parametersCopy = parameters;
  v28.receiver = self;
  v28.super_class = ATXActionFeedback;
  v19 = [(ATXActionFeedback *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_predictionContextBuilder, builder);
    objc_storeStrong(&v20->_actionFeedbackWeights, weights);
    objc_storeStrong(&v20->_appLaunchHistogramManager, manager);
    objc_storeStrong(&v20->_notificationServer, server);
    objc_storeStrong(&v20->_recentEngagementCache, cache);
    objc_storeStrong(&v20->_appIntentMonitor, monitor);
    objc_storeStrong(&v20->_dataStore, store);
    objc_storeStrong(&v20->_blendingHyperParameters, parameters);
  }

  return v20;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_21 != -1)
  {
    +[ATXActionFeedback sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_26;

  return v3;
}

void __35__ATXActionFeedback_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(ATXActionFeedback);
  v2 = sharedInstance__pasExprOnceResult_26;
  sharedInstance__pasExprOnceResult_26 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)clientModelIds
{
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:6];
  v4 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:7];
  v5 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:3];
  v6 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:9];
  v7 = [v2 initWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
}

id __60__ATXActionFeedback__scoredActionsFromProactiveSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 atxActionExecutableObject];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CEB7F0]);
    v5 = [v2 scoreSpecification];
    [v5 rawScore];
    *&v6 = v6;
    v7 = [v4 initWithPredictedItem:v3 score:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_feedbackStageForUIFeedbackResult:(id)result engagedSuggestion:(id)suggestion
{
  resultCopy = result;
  suggestionCopy = suggestion;
  if (suggestionCopy)
  {
    v7 = [_ATXActionUtils atxActionFromProactiveSuggestion:suggestionCopy];
    intent = [v7 intent];
    if (intent)
    {
      v9 = intent;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = 3;
LABEL_13:

        goto LABEL_17;
      }
    }

    intent2 = [v7 intent];
    if (intent2)
    {
      v13 = intent2;
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      if ((v14 & 1) == 0)
      {
        v11 = 5;
        goto LABEL_13;
      }
    }
  }

  engagedSuggestions = [resultCopy engagedSuggestions];
  if ([engagedSuggestions count])
  {
    goto LABEL_11;
  }

  rejectedSuggestions = [resultCopy rejectedSuggestions];
  if ([rejectedSuggestions count])
  {

LABEL_11:
    v11 = 2;
    goto LABEL_17;
  }

  consumerSubType = [resultCopy consumerSubType];

  if (consumerSubType == 22)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

LABEL_17:

  return v11;
}

- (id)_actionResponseFromUIFeedbackResult:(id)result shownActions:(id)actions rejectedActions:(id)rejectedActions engagedAction:(id)action engagedSuggestion:(id)suggestion
{
  resultCopy = result;
  suggestionCopy = suggestion;
  actionCopy = action;
  rejectedActionsCopy = rejectedActions;
  actionsCopy = actions;
  session = [resultCopy session];
  shownSuggestions = [resultCopy shownSuggestions];
  v16 = [(ATXActionFeedback *)self _scoredActionsFromProactiveSuggestions:shownSuggestions];

  v17 = objc_alloc(MEMORY[0x277CEB2F0]);
  clientCacheUpdate = [resultCopy clientCacheUpdate];
  feedbackMetadata = [clientCacheUpdate feedbackMetadata];
  shownSuggestions2 = [resultCopy shownSuggestions];
  blendingUICacheUpdateUUID = [session blendingUICacheUpdateUUID];
  sessionStartDate = [session sessionStartDate];
  v38 = v16;
  v23 = [v17 initWithScoredActions:v16 cacheFileData:feedbackMetadata proactiveSuggestions:shownSuggestions2 blendingModelUICacheUpdateUUID:blendingUICacheUpdateUUID consumerSubType:0 predictionDate:sessionStartDate error:0];

  consumerSubType = [resultCopy consumerSubType];
  v25 = [(ATXActionFeedback *)self _feedbackStageForUIFeedbackResult:resultCopy engagedSuggestion:suggestionCopy];

  sessionEndDate = [session sessionEndDate];
  [v23 updateConsumerSubType:consumerSubType engagedAction:actionCopy shownActions:actionsCopy feedbackStage:v25 explicitlyDismissedActions:rejectedActionsCopy searchedActionType:4 engagedAppString:0 uiFeedbackDate:sessionEndDate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = resultCopy;
    partialEngagementWasCompleteMatch = [v27 partialEngagementWasCompleteMatch];

    if (partialEngagementWasCompleteMatch)
    {
      partialEngagementWasCompleteMatch2 = [v27 partialEngagementWasCompleteMatch];
      bOOLValue = [partialEngagementWasCompleteMatch2 BOOLValue];

      matchingIntentDonatedAction = [v27 matchingIntentDonatedAction];
      matchingIntentDonationDate = [v27 matchingIntentDonationDate];
      [v23 updateWithMatchingIntentDonatedAction:matchingIntentDonatedAction intentDonationDate:matchingIntentDonationDate matchingIntentWasCompleteMatch:bOOLValue != 0];
    }

    else
    {
      [v23 updateWithMatchingIntentDonatedAction:0 intentDonationDate:0 matchingIntentWasCompleteMatch:0];
    }
  }

  return v23;
}

- (void)receiveUIFeedbackResult:(id)result
{
  resultCopy = result;
  shownSuggestions = [resultCopy shownSuggestions];
  v6 = [_ATXActionUtils atxActionsFromProactiveSuggestions:shownSuggestions];

  rejectedSuggestions = [resultCopy rejectedSuggestions];
  v8 = [_ATXActionUtils atxActionsFromProactiveSuggestions:rejectedSuggestions];

  engagedSuggestions = [resultCopy engagedSuggestions];
  v10 = [engagedSuggestions count];

  if (v10)
  {
    engagedSuggestions2 = [resultCopy engagedSuggestions];
    v12 = [_ATXActionUtils atxActionsFromProactiveSuggestions:engagedSuggestions2];

    if ([v12 count])
    {
      v13 = [v12 objectAtIndex:0];
      engagedSuggestions3 = [resultCopy engagedSuggestions];
      v10 = [engagedSuggestions3 objectAtIndex:0];
    }

    else
    {
      v10 = 0;
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = [(ATXActionFeedback *)self _actionResponseFromUIFeedbackResult:resultCopy shownActions:v6 rejectedActions:v8 engagedAction:v13 engagedSuggestion:v10];
  context = [resultCopy context];

  if (!context)
  {
    v22 = __atxlog_handle_feedback(v17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ATXActionFeedback receiveUIFeedbackResult:];
    }

    goto LABEL_14;
  }

  context2 = [resultCopy context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v22 = __atxlog_handle_feedback(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [ATXActionFeedback receiveUIFeedbackResult:];
    }

LABEL_14:

    goto LABEL_15;
  }

  context3 = [resultCopy context];
  [(ATXActionFeedback *)self receiveFeedbackWithActionResponse:v15 context:context3];

LABEL_15:
}

- (void)decayCounts
{
  v10 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:33];
  v3 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:34];
  v4 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:35];
  v5 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:36];
  +[_ATXFeedbackConstants actionDecayHalfLifeSeconds];
  [v10 decayWithHalfLifeInDays:v6 / 86400.0];
  +[_ATXFeedbackConstants actionDecayHalfLifeSeconds];
  [v3 decayWithHalfLifeInDays:v7 / 86400.0];
  +[_ATXFeedbackConstants actionDecayHalfLifeSeconds];
  [v4 decayWithHalfLifeInDays:v8 / 86400.0];
  +[_ATXFeedbackConstants actionDecayHalfLifeSeconds];
  [v5 decayWithHalfLifeInDays:v9 / 86400.0];
}

- (void)_assertHistogram:(id)histogram weight:(float)weight
{
  histogramCopy = histogram;
  v6 = histogramCopy;
  if (!histogramCopy)
  {
    v7 = __atxlog_handle_feedback(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXActionFeedback _assertHistogram:weight:];
    }

    histogramCopy = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"attempted to update a nil histogram in action feedback"];
  }

  if (weight < 0.0)
  {
    v8 = __atxlog_handle_feedback(histogramCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXActionFeedback _assertHistogram:weight:];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"attempted to update a histogram with a negative weight in action feedback"];
  }
}

- (void)_updateAppLaunchHistogram:(int64_t)histogram bundleId:(id)id context:(id)context weight:(float)weight
{
  idCopy = id;
  contextCopy = context;
  v11 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:histogram];
  *&v12 = weight;
  [(ATXActionFeedback *)self _assertHistogram:v11 weight:v12];
  weightCopy = weight;
  if (weight >= 1)
  {
    do
    {
      timeContext = [contextCopy timeContext];
      date = [timeContext date];
      LODWORD(v16) = 1.0;
      [v11 addLaunchWithBundleId:idCopy date:date timeZone:0 weight:v16];

      --weightCopy;
    }

    while (weightCopy);
  }
}

- (void)_updateAppLaunchCategoricalHistogram:(int64_t)histogram bundleId:(id)id category:(id)category context:(id)context weight:(float)weight
{
  idCopy = id;
  categoryCopy = category;
  contextCopy = context;
  v14 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:histogram];
  *&v15 = weight;
  [(ATXActionFeedback *)self _assertHistogram:v14 weight:v15];
  weightCopy = weight;
  if (weight >= 1)
  {
    do
    {
      timeContext = [contextCopy timeContext];
      date = [timeContext date];
      LODWORD(v19) = 1.0;
      [v14 addLaunchWithBundleId:idCopy date:date category:categoryCopy weight:v19];

      --weightCopy;
    }

    while (weightCopy);
  }
}

- (void)applyFinalFeedbackForActionResponse:(id)response engagementType:(unint64_t)type context:(id)context
{
  v144 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  contextCopy = context;
  v10 = __atxlog_handle_feedback(contextCopy);
  v117 = responseCopy;
  selfCopy = self;
  v114 = contextCopy;
  typeCopy = type;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [MEMORY[0x277CEB2E8] engagementTypeToString:type];
    v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v12 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(responseCopy, "consumerSubType")}];
    v13 = [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(responseCopy, "feedbackStage")}];
    shownActions = [responseCopy shownActions];
    engagedAction = [responseCopy engagedAction];
    explicitlyDismissedActions = [responseCopy explicitlyDismissedActions];
    *buf = 138413570;
    v133 = v11;
    v134 = 2112;
    v135 = v12;
    v136 = 2112;
    v137 = v13;
    v138 = 2112;
    v139 = shownActions;
    v140 = 2112;
    v141 = engagedAction;
    v142 = 2112;
    v143 = explicitlyDismissedActions;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "applyFinalFeedbackForActionResponse called with engagement type: %@, consumerSubType: %@, feedbackStage: %@, shownActions:%@, engagedAction:%@, explicitlyRejectedActions:%@", buf, 0x3Eu);

    self = selfCopy;
    contextCopy = v114;

    type = typeCopy;
  }

  -[ATXActionFeedbackWeights confirmWeightForFeedbackStage:consumerSubType:](self->_actionFeedbackWeights, "confirmWeightForFeedbackStage:consumerSubType:", [responseCopy feedbackStage], objc_msgSend(responseCopy, "consumerSubType"));
  v18 = v17;
  -[ATXActionFeedbackWeights rejectWeightForFeedbackStage:consumerSubType:](self->_actionFeedbackWeights, "rejectWeightForFeedbackStage:consumerSubType:", [responseCopy feedbackStage], objc_msgSend(responseCopy, "consumerSubType"));
  v20 = v19;
  locationMotionContext = [contextCopy locationMotionContext];
  geohash = [locationMotionContext geohash];

  locationMotionContext2 = [contextCopy locationMotionContext];
  coarseGeohash = [locationMotionContext2 coarseGeohash];

  engagedAction2 = [responseCopy engagedAction];
  if (engagedAction2)
  {
    engagedAction3 = [responseCopy engagedAction];
    actionKey = [engagedAction3 actionKey];
  }

  else
  {
    actionKey = 0;
  }

  timeContext = [contextCopy timeContext];
  date = [timeContext date];

  v119 = actionKey;
  if (actionKey)
  {
    v28 = 0;
    if (type > 4)
    {
      if (type - 7 >= 4)
      {
        if (type != 5)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      goto LABEL_37;
    }

    if (type - 2 >= 3)
    {
      if (type >= 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    engagedAction4 = [responseCopy engagedAction];
    isHeuristic = [engagedAction4 isHeuristic];

    v32 = __atxlog_handle_feedback(v31);
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
    if (isHeuristic)
    {
      if (v33)
      {
        *buf = 134218242;
        v133 = v18;
        v134 = 2112;
        v135 = actionKey;
        _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_INFO, "Final engagement of weight %f feedback for heuristic action prediction: %@", buf, 0x16u);
      }

      engagedAction5 = [responseCopy engagedAction];
      heuristic = [engagedAction5 heuristic];
      *&v36 = v18;
      [(ATXActionFeedback *)self _updateAppLaunchHistogram:35 bundleId:heuristic context:contextCopy weight:v36];
    }

    else
    {
      if (v33)
      {
        *buf = 134218242;
        v133 = v18;
        v134 = 2112;
        v135 = actionKey;
        _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_INFO, "Final engagement feedback of weight %f for model-based action prediction: %@", buf, 0x16u);
      }

      engagedAction5 = [responseCopy engagedAction];
      heuristic = [engagedAction5 bundleId];
      v37 = [_ATXActionUtils getActionTypeFromActionKey:actionKey];
      *&v38 = v18;
      [(ATXActionFeedback *)self _updateAppLaunchCategoricalHistogram:33 bundleId:heuristic category:v37 context:contextCopy weight:v38];
    }

    engagedAction6 = [responseCopy engagedAction];
    slotSet = [engagedAction6 slotSet];

    v42 = __atxlog_handle_feedback(v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [ATXActionFeedback applyFinalFeedbackForActionResponse:engagementType:context:];
    }

    if (v18 == 0.0)
    {
      v44 = __atxlog_handle_feedback(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(responseCopy, "feedbackStage")}];
        v45 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v46 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(responseCopy, "consumerSubType")}];
        *buf = 138412546;
        v133 = v45;
        v134 = 2112;
        v135 = v46;
        _os_log_impl(&dword_2263AA000, v44, OS_LOG_TYPE_DEFAULT, "Encountered confirmation feedback with a weight of 0 for feedbackStage=%@ and consumerSubType=%@", buf, 0x16u);
      }
    }

    else
    {
      dataStore = self->_dataStore;
      v44 = [_ATXActionUtils getActionTypeFromActionKey:actionKey];
      engagedAction7 = [responseCopy engagedAction];
      bundleId = [engagedAction7 bundleId];
      engagedAction8 = [responseCopy engagedAction];
      engagedAction9 = [responseCopy engagedAction];
      actionUUID = [engagedAction9 actionUUID];
      LOBYTE(v107) = [responseCopy consumerSubType];
      [(_ATXDataStore *)dataStore recordConfirms:2 rejects:v44 forFeedbackType:bundleId forActionType:engagedAction8 bundleId:slotSet action:actionUUID slotSet:v18 actionUUID:0.0 date:date consumerSubType:v107 geohash:geohash coarseGeohash:coarseGeohash];

      type = typeCopy;
    }
  }

  v28 = 0;
  if (type > 3)
  {
    if (type - 7 >= 4)
    {
      if (type - 4 >= 2)
      {
LABEL_10:
        if (type != 6)
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }

LABEL_43:
      v60 = __atxlog_handle_feedback(v27);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        [MEMORY[0x277CEB2E8] engagementTypeToString:type];
        v61 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412290;
        v133 = v61;
        _os_log_impl(&dword_2263AA000, v60, OS_LOG_TYPE_INFO, "Exact slot match required on non-rejected items for engagement type %@", buf, 0xCu);
      }

      engagedAction10 = [responseCopy engagedAction];
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  if (type < 2)
  {
LABEL_37:
    v28 = 1;
    goto LABEL_38;
  }

  if (type == 2)
  {
LABEL_41:
    engagedAction10 = [responseCopy matchingIntentDonatedAction];
LABEL_46:
    v118 = engagedAction10;
    v28 = 1;
    goto LABEL_47;
  }

  if (type != 3)
  {
LABEL_38:
    v56 = __atxlog_handle_feedback(v27);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [ATXActionFeedback applyFinalFeedbackForActionResponse:type engagementType:? context:?];
    }

    v57 = MEMORY[0x277CBEAD8];
    v58 = *MEMORY[0x277CBE658];
    v59 = [MEMORY[0x277CEB2E8] engagementTypeToString:type];
    [v57 raise:v58 format:{@"Invalid engagement type of %@ encountered", v59}];

    v118 = 0;
    goto LABEL_47;
  }

  v53 = __atxlog_handle_feedback(v27);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    [MEMORY[0x277CEB2E8] engagementTypeToString:3];
    v54 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412290;
    v133 = v54;
    _os_log_impl(&dword_2263AA000, v53, OS_LOG_TYPE_INFO, "Only actionKey match required on non-rejected items for engagement type %@", buf, 0xCu);
  }

  engagedAction10 = [responseCopy matchingIntentDonatedAction];
  v118 = engagedAction10;
  v28 = 0;
LABEL_47:
  v62 = __atxlog_handle_feedback(engagedAction10);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    [ATXActionFeedback applyFinalFeedbackForActionResponse:responseCopy engagementType:? context:?];
  }

  v120 = objc_opt_new();
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  shownActions2 = [responseCopy shownActions];
  v64 = [shownActions2 countByEnumeratingWithState:&v126 objects:v131 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v127;
    v67 = 1;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v127 != v66)
        {
          objc_enumerationMutation(shownActions2);
        }

        v69 = *(*(&v126 + 1) + 8 * i);
        if (v28)
        {
          v70 = [_ATXActionUtils isContainmentBetweenAction:v118 other:*(*(&v126 + 1) + 8 * i)];
          if (v70)
          {
            goto LABEL_61;
          }
        }

        else
        {
          actionKey2 = [*(*(&v126 + 1) + 8 * i) actionKey];
          v72 = [v119 isEqualToString:actionKey2];

          if (v72)
          {
            goto LABEL_61;
          }
        }

        v73 = __atxlog_handle_feedback(v70);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v133 = v20;
          v134 = 2048;
          v135 = v67;
          v136 = 2112;
          v137 = v69;
          _os_log_debug_impl(&dword_2263AA000, v73, OS_LOG_TYPE_DEBUG, "Rejecting (with weight %f at rank %lu) action: %@", buf, 0x20u);
        }

        [v120 addObject:v69];
LABEL_61:
        ++v67;
      }

      v65 = [shownActions2 countByEnumeratingWithState:&v126 objects:v131 count:16];
    }

    while (v65);
  }

  v75 = __atxlog_handle_feedback(v74);
  v76 = v120;
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    [ATXActionFeedback applyFinalFeedbackForActionResponse:v120 engagementType:? context:?];
  }

  v77 = v117;
  v79 = selfCopy;
  v78 = v114;
  if ([v120 count])
  {
    v80 = objc_alloc(MEMORY[0x277CBEB98]);
    explicitlyDismissedActions2 = [v117 explicitlyDismissedActions];
    v111 = [v80 initWithArray:explicitlyDismissedActions2];

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = v120;
    v82 = [obj countByEnumeratingWithState:&v122 objects:v130 count:16];
    if (v82)
    {
      v83 = v82;
      v121 = *v123;
      v84 = off_278594000;
      do
      {
        v85 = 0;
        v115 = v83;
        do
        {
          if (*v123 != v121)
          {
            objc_enumerationMutation(obj);
          }

          v86 = *(*(&v122 + 1) + 8 * v85);
          heuristic2 = [v86 heuristic];
          v88 = [heuristic2 length];

          if (v88)
          {
            heuristic3 = [v86 heuristic];
            *&v90 = v20;
            [(ATXActionFeedback *)v79 _updateAppLaunchHistogram:36 bundleId:heuristic3 context:v78 weight:v90];
          }

          else
          {
            heuristic3 = [v86 bundleId];
            v91 = v84[204];
            actionKey3 = [v86 actionKey];
            v93 = [(__objc2_class *)v91 getActionTypeFromActionKey:actionKey3];
            *&v94 = v20;
            [(ATXActionFeedback *)v79 _updateAppLaunchCategoricalHistogram:34 bundleId:heuristic3 category:v93 context:v78 weight:v94];
          }

          if (v20 == 0.0)
          {
            slotSet2 = __atxlog_handle_feedback(v95);
            if (os_log_type_enabled(slotSet2, OS_LOG_TYPE_DEFAULT))
            {
              [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(v117, "feedbackStage")}];
              v97 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v98 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(v117, "consumerSubType")}];
              *buf = 138412546;
              v133 = v97;
              v134 = 2112;
              v135 = v98;
              _os_log_impl(&dword_2263AA000, slotSet2, OS_LOG_TYPE_DEFAULT, "Encountered rejection feedback with a weight of 0 for feedbackStage=%@ and consumerSubType=%@", buf, 0x16u);
            }
          }

          else
          {
            slotSet2 = [v86 slotSet];
            v99 = v79->_dataStore;
            if ([v111 containsObject:v86])
            {
              v100 = 2;
            }

            else
            {
              v100 = 1;
            }

            v101 = v84;
            v102 = v84[204];
            actionKey4 = [v86 actionKey];
            v104 = [(__objc2_class *)v102 getActionTypeFromActionKey:actionKey4];
            bundleId2 = [v86 bundleId];
            actionUUID2 = [v86 actionUUID];
            LOBYTE(v107) = [v117 consumerSubType];
            [(_ATXDataStore *)v99 recordConfirms:v100 rejects:v104 forFeedbackType:bundleId2 forActionType:v86 bundleId:slotSet2 action:actionUUID2 slotSet:0.0 actionUUID:v20 date:date consumerSubType:v107 geohash:geohash coarseGeohash:coarseGeohash];

            v79 = selfCopy;
            v78 = v114;

            v84 = v101;
            v83 = v115;
          }

          ++v85;
        }

        while (v83 != v85);
        v83 = [obj countByEnumeratingWithState:&v122 objects:v130 count:16];
      }

      while (v83);
    }

    v77 = v117;
    v76 = v120;
  }

  [(ATXActionFeedback *)v79 sessionLogWithActionResponse:v77 engagementType:typeCopy context:v78];
  [(ATXActionFeedback *)v79 logHeuristicFeedback:v77];
  ATXUpdatePredictionsDefaultInterval(3);
}

- (void)sessionLogWithActionResponse:(id)response engagementType:(unint64_t)type context:(id)context
{
  contextCopy = context;
  responseCopy = response;
  v9 = __atxlog_handle_feedback(responseCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ATXActionFeedback sessionLogWithActionResponse:engagementType:context:];
  }

  [ATXActionSessionLog performSessionLoggingWithActionResponse:responseCopy engagementType:type context:contextCopy isShadowLog:0 forTestingMode:0];
}

- (void)receiveFeedbackWithActionResponse:(id)response context:(id)context
{
  v85 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  contextCopy = context;
  obj = self;
  v7 = objc_sync_enter(obj);
  v8 = __atxlog_handle_feedback(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v84 = responseCopy;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "receiveFeedbackWithActionResponse called with actionResponse of %@", buf, 0xCu);
  }

  feedbackStage = [responseCopy feedbackStage];
  if (feedbackStage > 4)
  {
    if ((feedbackStage - 7) >= 2)
    {
      if (feedbackStage == 5)
      {
        engagedAction = [responseCopy engagedAction];
        v26 = engagedAction == 0;

        if (!v26)
        {
          engagedAction2 = [responseCopy engagedAction];
          v28 = [engagedAction2 actionType] == 1;

          if (v28)
          {
            v30 = __atxlog_handle_feedback(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              [ATXActionFeedback receiveFeedbackWithActionResponse:context:];
            }

            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"NSUA with background execution"];
            goto LABEL_45;
          }

          engagedAction3 = [responseCopy engagedAction];
          [(ATXRecentActionEngagementCache *)obj->_recentEngagementCache addEngagedAction:engagedAction3];
          isHeuristic = [engagedAction3 isHeuristic];
          if (isHeuristic)
          {
            v36 = __atxlog_handle_feedback(isHeuristic);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              [ATXActionFeedback receiveFeedbackWithActionResponse:context:];
            }
          }

          else
          {
            intent = [engagedAction3 intent];
            v38 = intent;
            if (intent && (v39 = [engagedAction3 isHeuristic], v38, (v39 & 1) == 0))
            {
              actionKey = [engagedAction3 actionKey];
              v36 = [_ATXActionUtils getActionTypeFromActionKey:actionKey];

              v41 = objc_alloc(MEMORY[0x277CCA970]);
              timeContext = [contextCopy timeContext];
              date = [timeContext date];
              timeContext2 = [contextCopy timeContext];
              date2 = [timeContext2 date];
              v46 = [v41 initWithStartDate:date endDate:date2];

              v47 = objc_alloc(MEMORY[0x277CEB5D8]);
              bundleId = [engagedAction3 bundleId];
              v49 = [v47 initWithBundleId:bundleId intentType:v36 dateInterval:v46 action:engagedAction3];

              LODWORD(v50) = 1.0;
              [(ATXAppIntentMonitor *)obj->_appIntentMonitor updateActionPredictionPipelineForIntentEvent:v49 weight:0 appSessionStartDate:0 appSessionEndDate:v50];
            }

            else
            {
              v36 = __atxlog_handle_feedback(intent);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
              {
                [ATXActionFeedback receiveFeedbackWithActionResponse:context:];
              }
            }
          }

          goto LABEL_44;
        }

        goto LABEL_25;
      }

      if (feedbackStage != 6)
      {
        goto LABEL_45;
      }

LABEL_16:
      engagedAction4 = [responseCopy engagedAction];
      v19 = engagedAction4 == 0;

      if (!v19)
      {
        v21 = __atxlog_handle_feedback(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          engagedAction5 = [responseCopy engagedAction];
          [(ATXActionFeedback *)engagedAction5 receiveFeedbackWithActionResponse:buf context:v21];
        }

        v23 = MEMORY[0x277CBEAD8];
        engagedAction6 = [responseCopy engagedAction];
        [v23 raise:*MEMORY[0x277CBE658] format:{@"non-nil engagedAction in lock screen expiration feedback: %@", engagedAction6}];
      }

LABEL_25:
      [(ATXActionFeedback *)obj applyFinalFeedbackForActionResponse:responseCopy engagementType:5 context:contextCopy];
      goto LABEL_45;
    }
  }

  else if (feedbackStage >= 2)
  {
    if ((feedbackStage - 2) < 2)
    {
      engagedAction7 = [responseCopy engagedAction];
      v11 = engagedAction7 == 0;

      if (v11)
      {
        [(ATXActionFeedback *)obj applyFinalFeedbackForActionResponse:responseCopy engagementType:5 context:contextCopy];
      }

      else
      {
        recentEngagementCache = obj->_recentEngagementCache;
        engagedAction8 = [responseCopy engagedAction];
        [(ATXRecentActionEngagementCache *)recentEngagementCache addEngagedAction:engagedAction8];
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      engagedAction3 = [responseCopy explicitlyDismissedActions];
      v32 = [engagedAction3 countByEnumeratingWithState:&v77 objects:v82 count:16];
      if (v32)
      {
        v33 = *v78;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v78 != v33)
            {
              objc_enumerationMutation(engagedAction3);
            }

            [(ATXRecentActionEngagementCache *)obj->_recentEngagementCache addEngagedAction:*(*(&v77 + 1) + 8 * i)];
          }

          v32 = [engagedAction3 countByEnumeratingWithState:&v77 objects:v82 count:16];
        }

        while (v32);
      }

LABEL_44:

      goto LABEL_45;
    }

    if (feedbackStage != 4)
    {
LABEL_45:
      consumerSubType = [responseCopy consumerSubType];
      v17 = [MEMORY[0x277CEBCF0] uiTypeForActionConsumerSubType:consumerSubType];
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      shownActions = [responseCopy shownActions];
      v53 = [shownActions countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (!v53)
      {
        goto LABEL_70;
      }

      v54 = *v74;
      while (1)
      {
        v55 = 0;
        do
        {
          if (*v74 != v54)
          {
            objc_enumerationMutation(shownActions);
          }

          v56 = *(*(&v73 + 1) + 8 * v55);
          actionKey2 = [v56 actionKey];
          engagedAction9 = [responseCopy engagedAction];
          v59 = [engagedAction9 isEqual:v56];

          if (v59)
          {
            engagedAction10 = [responseCopy engagedAction];
            if ([engagedAction10 actionType] == 1)
            {

              goto LABEL_54;
            }

            v62 = [responseCopy feedbackStage] == 5;

            if (v62)
            {
LABEL_54:
              v63 = __atxlog_handle_feedback(v61);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
              {
                *v72 = 0;
                _os_log_impl(&dword_2263AA000, v63, OS_LOG_TYPE_INFO, "logging direct engagement on NSUserActivity-based UI or background-executable intent interaction", v72, 2u);
              }

LABEL_57:
              v64 = 4;
            }

            else
            {
              if ([responseCopy feedbackStage] != 3)
              {
                goto LABEL_57;
              }

              matchingIntentDonatedAction = [responseCopy matchingIntentDonatedAction];
              if (matchingIntentDonatedAction && (v66 = [responseCopy matchingIntentWasCompleteMatch], matchingIntentDonatedAction, (v66 & 1) != 0))
              {
                v64 = 2;
              }

              else
              {
                matchingIntentDonatedAction2 = [responseCopy matchingIntentDonatedAction];
                if (matchingIntentDonatedAction2 && (v68 = [responseCopy matchingIntentWasCompleteMatch], matchingIntentDonatedAction2, !v68))
                {
                  v64 = 3;
                }

                else
                {
                  v64 = 6;
                }
              }
            }

            [(ATXActionFeedback *)obj applyFinalFeedbackForActionResponse:responseCopy engagementType:v64 context:contextCopy];
          }

          [(_ATXDataStore *)obj->_dataStore updateOrInsertPredictionsAndFeedbackForAppAction:actionKey2 feedbackReceived:v59 forUIType:v17];

          ++v55;
        }

        while (v53 != v55);
        v69 = [shownActions countByEnumeratingWithState:&v73 objects:v81 count:16];
        v53 = v69;
        if (!v69)
        {
LABEL_70:

          goto LABEL_71;
        }
      }
    }

    goto LABEL_16;
  }

  v14 = __atxlog_handle_feedback(feedbackStage);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(responseCopy, "feedbackStage")}];
    [(ATXActionFeedback *)v15 receiveFeedbackWithActionResponse:buf context:v14];
  }

  v16 = MEMORY[0x277CBEAD8];
  v17 = [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(responseCopy, "feedbackStage")}];
  [v16 raise:*MEMORY[0x277CBE658] format:{@"invalid feedbackStage of %@ on ATXActionResponse", v17}];
LABEL_71:

  objc_sync_exit(obj);
}

- (void)receiveLockscreenFeedbackWithAction:(id)action actionResponse:(id)response engagement:(BOOL)engagement triggeredByUserInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  engagementCopy = engagement;
  responseCopy = response;
  actionCopy = action;
  v12 = objc_opt_new();
  [(ATXActionFeedback *)self receiveLockscreenFeedbackWithAction:actionCopy actionResponse:responseCopy engagement:engagementCopy triggeredByUserInteraction:interactionCopy currentDate:v12];
}

- (void)receiveLockscreenFeedbackWithAction:(id)action actionResponse:(id)response engagement:(BOOL)engagement triggeredByUserInteraction:(BOOL)interaction currentDate:(id)date
{
  interactionCopy = interaction;
  engagementCopy = engagement;
  v53 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  responseCopy = response;
  dateCopy = date;
  sel_getName(a2);
  v16 = os_transaction_create();
  v17 = __atxlog_handle_feedback(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    actionKey = [actionCopy actionKey];
    v19 = actionKey;
    v20 = @"NO";
    if (engagementCopy)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *buf = 138412802;
    v48 = actionKey;
    v50 = v21;
    v49 = 2112;
    if (interactionCopy)
    {
      v20 = @"YES";
    }

    v51 = 2112;
    v52 = v20;
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "received lockscreen feedback for actionKey: %@ with engagment: %@ and triggeredByUserInteraction: %@", buf, 0x20u);
  }

  buf[0] = 0;
  v22 = *MEMORY[0x277CEBD00];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"displayDonationsOnLockscreen", *MEMORY[0x277CEBD00], buf);
  if (AppBooleanValue)
  {
    v24 = __atxlog_handle_feedback(AppBooleanValue);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "Developer mode detected -- skipping lock screen action feedback for notification";
LABEL_14:
      _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  buf[0] = 0;
  v26 = CFPreferencesGetAppBooleanValue(@"zkwActionsDemoModeEnabled", v22, buf);
  if (v26)
  {
    v24 = __atxlog_handle_feedback(v26);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "Demo mode detected -- skipping lock screen action feedback for notification";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!engagementCopy || interactionCopy)
  {
    predictionContextForCurrentContext = [(ATXPredictionContextBuilderProtocol *)self->_predictionContextBuilder predictionContextForCurrentContext];
    v29 = predictionContextForCurrentContext;
    if (!predictionContextForCurrentContext)
    {
      v31 = __atxlog_handle_feedback(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [ATXActionFeedback receiveLockscreenFeedbackWithAction:actionResponse:engagement:triggeredByUserInteraction:currentDate:];
      }

      goto LABEL_33;
    }

    if (engagementCopy || interactionCopy)
    {
      if (!interactionCopy || engagementCopy)
      {
        if (!engagementCopy || !interactionCopy)
        {
          v33 = __atxlog_handle_feedback(predictionContextForCurrentContext);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [ATXActionFeedback receiveLockscreenFeedbackWithAction:actionResponse:engagement:triggeredByUserInteraction:currentDate:];
          }

          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"reached end of receiveLockscreenFeedbackWithAction"];
          goto LABEL_33;
        }

        userActivity = [actionCopy userActivity];

        if (userActivity)
        {
          v43 = actionCopy;
          v35 = MEMORY[0x277CBEA60];
          v36 = &v43;
        }

        else
        {
          intent = [actionCopy intent];
          atx_supportsBackgroundExecution = [intent atx_supportsBackgroundExecution];

          if (atx_supportsBackgroundExecution)
          {
            v42 = actionCopy;
            v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
            [responseCopy updateConsumerSubType:22 engagedAction:actionCopy shownActions:v30 feedbackStage:5 explicitlyDismissedActions:0 searchedActionType:4 engagedAppString:0 uiFeedbackDate:{dateCopy, v41}];
            goto LABEL_32;
          }

          v40 = __atxlog_handle_feedback(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v48 = actionCopy;
            _os_log_impl(&dword_2263AA000, v40, OS_LOG_TYPE_DEFAULT, "received lockscreen feedback for action with non-background executable Intent: %@", buf, 0xCu);
          }

          v41 = actionCopy;
          v35 = MEMORY[0x277CBEA60];
          v36 = &v41;
        }

        v30 = [v35 arrayWithObjects:v36 count:1];
        [responseCopy updateConsumerSubType:22 engagedAction:actionCopy shownActions:v30 feedbackStage:2 explicitlyDismissedActions:0 searchedActionType:4 engagedAppString:0 uiFeedbackDate:{dateCopy, v41}];
        goto LABEL_32;
      }

      v45 = actionCopy;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      v44 = actionCopy;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      [responseCopy updateConsumerSubType:22 engagedAction:0 shownActions:v30 feedbackStage:2 explicitlyDismissedActions:v32 searchedActionType:4 engagedAppString:0 uiFeedbackDate:dateCopy];
    }

    else
    {
      v46 = actionCopy;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      [responseCopy updateConsumerSubType:22 engagedAction:0 shownActions:v30 feedbackStage:4 explicitlyDismissedActions:0 searchedActionType:4 engagedAppString:0 uiFeedbackDate:{dateCopy, v41}];
    }

LABEL_32:

    [(ATXActionFeedback *)self receiveFeedbackWithActionResponse:responseCopy context:v29];
LABEL_33:

    goto LABEL_16;
  }

  v27 = __atxlog_handle_feedback(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [ATXActionFeedback receiveLockscreenFeedbackWithAction:actionResponse:engagement:triggeredByUserInteraction:currentDate:];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"received lockscreen feedback with triggeredByUserInteraction: NO and engagement: YES"];
LABEL_16:
}

- (void)unloadCachedHistograms
{
  [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager purgeHistogramForLaunchType:33];
  [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager purgeHistogramForLaunchType:34];
  [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager purgeHistogramForLaunchType:35];
  appLaunchHistogramManager = self->_appLaunchHistogramManager;

  [(_ATXAppLaunchHistogramManager *)appLaunchHistogramManager purgeHistogramForLaunchType:36];
}

- (void)resetData
{
  v6 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:33];
  v3 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:34];
  v4 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:35];
  v5 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:36];
  [v6 resetData];
  [v3 resetData];
  [v4 resetData];
  [v5 resetData];
}

- (void)logHeuristicFeedback:(id)feedback
{
  v35 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  engagedAction = [feedbackCopy engagedAction];
  if (engagedAction)
  {
    v6 = engagedAction;
    engagedAction2 = [feedbackCopy engagedAction];
    heuristic = [engagedAction2 heuristic];

    if (heuristic)
    {
      engagedAction3 = [feedbackCopy engagedAction];
      [(ATXActionFeedback *)self logHeuristicFeedbackToPortraitForAction:engagedAction3 withActionType:2];

      engagedAction4 = [feedbackCopy engagedAction];
      [(ATXActionFeedback *)self logHeuristicFeedbackToSuggestionsForAction:engagedAction4 withActionType:5];
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  shownActions = [feedbackCopy shownActions];
  v12 = [shownActions countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(shownActions);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        heuristic2 = [v16 heuristic];

        if (heuristic2)
        {
          [(ATXActionFeedback *)self logHeuristicFeedbackToPortraitForAction:v16 withActionType:1];
          [(ATXActionFeedback *)self logHeuristicFeedbackToSuggestionsForAction:v16 withActionType:4];
        }
      }

      v13 = [shownActions countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v13);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  explicitlyDismissedActions = [feedbackCopy explicitlyDismissedActions];
  v19 = [explicitlyDismissedActions countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(explicitlyDismissedActions);
        }

        v23 = *(*(&v25 + 1) + 8 * j);
        heuristic3 = [v23 heuristic];

        if (heuristic3)
        {
          [(ATXActionFeedback *)self logHeuristicFeedbackToSuggestionsForAction:v23 withActionType:8];
        }
      }

      v20 = [explicitlyDismissedActions countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }
}

- (void)logHeuristicFeedbackToSuggestionsForAction:(id)action withActionType:(unsigned __int16)type
{
  typeCopy = type;
  actionCopy = action;
  heuristicMetadata = [actionCopy heuristicMetadata];
  if (heuristicMetadata)
  {
    v7 = heuristicMetadata;
    heuristicMetadata2 = [actionCopy heuristicMetadata];
    v9 = *MEMORY[0x277CEB210];
    v10 = [heuristicMetadata2 objectForKeyedSubscript:*MEMORY[0x277CEB210]];

    if (v10)
    {
      heuristic = [actionCopy heuristic];
      v12 = [heuristic hasPrefix:@"checkInForEvent"];

      if (v12)
      {
        userActivity = [actionCopy userActivity];
        activityType = [userActivity activityType];
        v15 = [activityType isEqualToString:*MEMORY[0x277CCA850]];

        if (v15)
        {
          v16 = 26;
        }

        else
        {
          v16 = 25;
        }

        v25 = 0;
        v26 = &v25;
        v27 = 0x2050000000;
        v17 = getSGSuggestionsServiceClass_softClass;
        v28 = getSGSuggestionsServiceClass_softClass;
        if (!getSGSuggestionsServiceClass_softClass)
        {
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __getSGSuggestionsServiceClass_block_invoke;
          v24[3] = &unk_2785967D8;
          v24[4] = &v25;
          __getSGSuggestionsServiceClass_block_invoke(v24);
          v17 = v26[3];
        }

        v18 = v17;
        _Block_object_dispose(&v25, 8);
        if (!v17)
        {
          [ATXActionFeedback logHeuristicFeedbackToSuggestionsForAction:withActionType:];
        }

        v20 = __atxlog_handle_heuristic(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [ATXActionFeedback logHeuristicFeedbackToSuggestionsForAction:withActionType:];
        }

        serviceForEvents = [v17 serviceForEvents];
        heuristicMetadata3 = [actionCopy heuristicMetadata];
        v23 = [heuristicMetadata3 objectForKeyedSubscript:v9];
        [serviceForEvents logEventInteractionForEventWithUniqueKey:v23 interface:v16 actionType:typeCopy];
      }
    }
  }
}

- (void)logHeuristicFeedbackToPortraitForAction:(id)action withActionType:(unsigned __int16)type
{
  typeCopy = type;
  actionCopy = action;
  heuristicMetadata = [actionCopy heuristicMetadata];
  if (heuristicMetadata)
  {
    v7 = heuristicMetadata;
    heuristicMetadata2 = [actionCopy heuristicMetadata];
    v9 = [heuristicMetadata2 objectForKeyedSubscript:@"eventIdentifier"];

    if (v9)
    {
      heuristic = [actionCopy heuristic];
      v11 = [heuristic hasPrefix:@"showExtraordinaryEvent"];

      if (v11)
      {
        v13 = 4;
        goto LABEL_9;
      }

      heuristic2 = [actionCopy heuristic];
      if ([heuristic2 hasPrefix:@"meetingDND"])
      {
      }

      else
      {
        heuristic3 = [actionCopy heuristic];
        v16 = [heuristic3 hasPrefix:@"suggestedEventDND"];

        if ((v16 & 1) == 0)
        {
          heuristic4 = [actionCopy heuristic];
          v22 = [heuristic4 hasPrefix:@"runningLate"];

          if (v22)
          {
            v13 = 3;
          }

          else
          {
            heuristic5 = [actionCopy heuristic];
            v24 = [heuristic5 hasPrefix:@"sendETA"];

            if (v24)
            {
              v13 = 10;
            }

            else
            {
              heuristic6 = [actionCopy heuristic];
              v26 = [heuristic6 hasPrefix:@"requestRideToNextEvent"];

              if (v26)
              {
                v13 = 5;
              }

              else
              {
                heuristic7 = [actionCopy heuristic];
                v28 = [heuristic7 hasPrefix:@"setAlarmForUnusualEarlyEvents"];

                if ((v28 & 1) == 0)
                {
                  v18 = __atxlog_handle_heuristic(v12);
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                  {
                    [ATXActionFeedback logHeuristicFeedbackToPortraitForAction:actionCopy withActionType:?];
                  }

                  goto LABEL_12;
                }

                v13 = 9;
              }
            }
          }

LABEL_9:
          v17 = __atxlog_handle_heuristic(v12);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [ATXActionFeedback logHeuristicFeedbackToPortraitForAction:withActionType:];
          }

          v18 = objc_opt_new();
          heuristicMetadata3 = [actionCopy heuristicMetadata];
          v20 = [heuristicMetadata3 objectForKeyedSubscript:*MEMORY[0x277CEB208]];
          [v18 logEventInteractionForEventWithEventIdentifier:v20 interface:v13 actionType:typeCopy];

LABEL_12:
          goto LABEL_13;
        }
      }

      v13 = 7;
      goto LABEL_9;
    }
  }

LABEL_13:
}

- (void)applyFinalFeedbackForActionResponse:(uint64_t)a1 engagementType:(uint64_t)a2 context:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXActionFeedback.m" lineNumber:281 description:{@"Invalid parameter not satisfying: %@", @"!isnan(confirmWeight)"}];
}

- (void)applyFinalFeedbackForActionResponse:(uint64_t)a1 engagementType:(uint64_t)a2 context:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXActionFeedback.m" lineNumber:282 description:{@"Invalid parameter not satisfying: %@", @"!isnan(rejectWeight)"}];
}

- (void)applyFinalFeedbackForActionResponse:engagementType:context:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEBUG, "Final slot set in engagment feedback for action prediction: %@", v1, 0xCu);
}

- (void)applyFinalFeedbackForActionResponse:(uint64_t)a1 engagementType:context:.cold.4(uint64_t a1)
{
  v1 = [MEMORY[0x277CEB2E8] engagementTypeToString:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5_1(v2, v3, v4, v5, v6);
}

- (void)applyFinalFeedbackForActionResponse:(void *)a1 engagementType:context:.cold.5(void *a1)
{
  v1 = [a1 shownActions];
  [v1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

- (void)applyFinalFeedbackForActionResponse:(void *)a1 engagementType:context:.cold.6(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
}

- (void)receiveFeedbackWithActionResponse:(NSObject *)a3 context:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_1(&dword_2263AA000, a3, a3, "invalid feedbackStage of %@ on ATXActionResponse", a2);
}

- (void)receiveFeedbackWithActionResponse:(NSObject *)a3 context:.cold.5(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_1(&dword_2263AA000, a3, a3, "non-nil engagedAction in lock screen expiration feedback: %@", a2);
}

- (void)logHeuristicFeedbackToSuggestionsForAction:withActionType:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ATXActionFeedback logHeuristicFeedbackToSuggestionsForAction:withActionType:]"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionFeedback.m" lineNumber:769 description:@"Failed to dyload SGSuggestionService"];
}

- (void)logHeuristicFeedbackToPortraitForAction:(void *)a1 withActionType:.cold.1(void *a1)
{
  v1 = [a1 heuristic];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5_1(v2, v3, v4, v5, v6);
}

@end