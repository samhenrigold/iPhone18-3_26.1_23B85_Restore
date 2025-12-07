@interface ATXAnchorModelActionPredictionPostProcessor
+ (id)anchorPredictionScoredActionTuplesFromPredictions:(id)predictions;
+ (void)inPlaceDeduplicateAnchorPredictionScoredActionTuples:(id)tuples;
- (ATXAnchorModelActionPredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction;
- (ATXAnchorModelActionPredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction blacklist:(id)blacklist;
- (BOOL)scoredActionIsBlacklisted:(id)blacklisted;
- (BOOL)shouldCheckUpcomingMediaForIntent:(id)intent;
- (id)postProcessScoredAction:(id)action;
- (id)recoverATXScoredAction;
- (id)replaceActionWithUpcomingMediaIfNeeded:(id)needed;
- (id)replacementActionWithResolvedMediaIntentContainer:(id)container originalAction:(id)action;
- (id)replacementIntentFromUpcomingMediaForBundleId:(id)id intent:(id)intent;
- (void)recoverATXScoredAction;
@end

@implementation ATXAnchorModelActionPredictionPostProcessor

- (ATXAnchorModelActionPredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction
{
  predictionCopy = prediction;
  v5 = +[ATXActionPredictionBlacklist sharedInstanceWithAppPredictionBlacklist];
  v6 = [(ATXAnchorModelActionPredictionPostProcessor *)self initWithAnchorModelPrediction:predictionCopy blacklist:v5];

  return v6;
}

- (ATXAnchorModelActionPredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction blacklist:(id)blacklist
{
  predictionCopy = prediction;
  blacklistCopy = blacklist;
  v14.receiver = self;
  v14.super_class = ATXAnchorModelActionPredictionPostProcessor;
  v9 = [(ATXAnchorModelActionPredictionPostProcessor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_anchorModelPrediction, prediction);
    v11 = objc_opt_new();
    storeWrapper = v10->_storeWrapper;
    v10->_storeWrapper = v11;

    objc_storeStrong(&v10->_blacklist, blacklist);
  }

  return v10;
}

- (id)recoverATXScoredAction
{
  p_anchorModelPrediction = &self->_anchorModelPrediction;
  candidateType = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateType];
  v5 = [candidateType isEqualToString:@"action"];

  if (v5)
  {
    v6 = [(ATXAnchorModelDataStoreWrapper *)self->_storeWrapper scoredActionFromAnchorModelPrediction:self->_anchorModelPrediction];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = __atxlog_handle_anchor(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(ATXAnchorModelActionPredictionPostProcessor *)p_anchorModelPrediction recoverATXScoredAction];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)postProcessScoredAction:(id)action
{
  v22 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  if (!actionCopy)
  {
    goto LABEL_12;
  }

  v5 = actionCopy;
  predictedItem = [actionCopy predictedItem];
  intent = [predictedItem intent];

  if (!intent)
  {
    goto LABEL_7;
  }

  v8 = objc_opt_new();
  predictedItem2 = [v5 predictedItem];
  intent2 = [predictedItem2 intent];
  v11 = [v8 shouldPredictIntent:intent2];

  if (v11)
  {
    v13 = [(ATXAnchorModelActionPredictionPostProcessor *)self scoredActionIsBlacklisted:v5];
    if (v13)
    {
      v14 = __atxlog_handle_anchor(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        anchorModelPrediction = self->_anchorModelPrediction;
        v20 = 138412290;
        v21 = anchorModelPrediction;
        v16 = "Suppresing anchor model prediction because scoredAction is blacklisted. Prediction: %@";
LABEL_10:
        _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, v16, &v20, 0xCu);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

LABEL_7:
    v17 = [(ATXAnchorModelActionPredictionPostProcessor *)self replaceActionWithUpcomingMediaIfNeeded:v5];

    goto LABEL_13;
  }

  v14 = __atxlog_handle_anchor(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_anchorModelPrediction;
    v20 = 138412290;
    v21 = v18;
    v16 = "Suppresing anchor model prediction because action valuation says we shouldn't predict the intent. Prediction: %@";
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (BOOL)scoredActionIsBlacklisted:(id)blacklisted
{
  blacklistedCopy = blacklisted;
  predictedItem = [blacklistedCopy predictedItem];
  actionKey = [predictedItem actionKey];

  if (actionKey)
  {
    v7 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:actionKey];
    predictedItem2 = v7;
    if (!v7)
    {
      LOBYTE(self) = 1;
      goto LABEL_7;
    }

    first = [v7 first];
    second = [predictedItem2 second];
    LODWORD(self) = ![(ATXActionPredictionBlacklist *)self->_blacklist shouldPredictBundleId:first action:second];
  }

  else
  {
    self = self->_blacklist;
    predictedItem2 = [blacklistedCopy predictedItem];
    first = [predictedItem2 bundleId];
    LOBYTE(self) = [(ATXAnchorModelActionPredictionPostProcessor *)self isBundleIdBlacklisted:first];
  }

LABEL_7:
  return self;
}

- (id)replaceActionWithUpcomingMediaIfNeeded:(id)needed
{
  v36 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  predictedItem = [neededCopy predictedItem];
  intent = [predictedItem intent];
  v7 = [(ATXAnchorModelActionPredictionPostProcessor *)self shouldCheckUpcomingMediaForIntent:intent];

  if (v7)
  {
    v9 = __atxlog_handle_anchor(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Checking Upcoming Media for Anchor Model prediction...", &v32, 2u);
    }

    predictedItem2 = [neededCopy predictedItem];
    bundleId = [predictedItem2 bundleId];
    predictedItem3 = [neededCopy predictedItem];
    intent2 = [predictedItem3 intent];
    v14 = [(ATXAnchorModelActionPredictionPostProcessor *)self replacementIntentFromUpcomingMediaForBundleId:bundleId intent:intent2];

    if (v14)
    {
      v16 = [(ATXAnchorModelActionPredictionPostProcessor *)self replacementActionWithResolvedMediaIntentContainer:v14 originalAction:neededCopy];
      v17 = __atxlog_handle_anchor(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_INFO, "Updating Anchor Model prediction with Upcoming Media...", &v32, 2u);
      }

      v19 = __atxlog_handle_anchor(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        predictedItem4 = [neededCopy predictedItem];
        actionTitle = [predictedItem4 actionTitle];
        predictedItem5 = [neededCopy predictedItem];
        actionSubtitle = [predictedItem5 actionSubtitle];
        v32 = 138412546;
        v33 = actionTitle;
        v34 = 2112;
        v35 = actionSubtitle;
        _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_INFO, "Old action title: %@, subtitle: %@", &v32, 0x16u);
      }

      v25 = __atxlog_handle_anchor(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        predictedItem6 = [v16 predictedItem];
        actionTitle2 = [predictedItem6 actionTitle];
        predictedItem7 = [v16 predictedItem];
        actionSubtitle2 = [predictedItem7 actionSubtitle];
        v32 = 138412546;
        v33 = actionTitle2;
        v34 = 2112;
        v35 = actionSubtitle2;
        _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "New action title: %@, subtitle: %@", &v32, 0x16u);
      }
    }

    else
    {
      v25 = __atxlog_handle_anchor(v15);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        anchorModelPrediction = self->_anchorModelPrediction;
        v32 = 138412290;
        v33 = anchorModelPrediction;
        _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "Suppresing Anchor Model prediction because of Upcoming Media. Prediction: %@", &v32, 0xCu);
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = neededCopy;
  }

  return v16;
}

- (BOOL)shouldCheckUpcomingMediaForIntent:(id)intent
{
  intentCopy = intent;
  if (!intentCopy)
  {
    v6 = __atxlog_handle_anchor(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelActionPredictionPostProcessor shouldCheckUpcomingMediaForIntent:v6];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v6 = __atxlog_handle_anchor(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelActionPredictionPostProcessor shouldCheckUpcomingMediaForIntent:v6];
    }

LABEL_8:

    v5 = 0;
    goto LABEL_9;
  }

  v5 = 1;
LABEL_9:

  return v5;
}

- (id)replacementIntentFromUpcomingMediaForBundleId:(id)id intent:(id)intent
{
  v5 = MEMORY[0x277CEB3B8];
  intentCopy = intent;
  idCopy = id;
  v8 = [v5 isSystemAppForBundleId:idCopy];
  v9 = [MEMORY[0x277CEB8F0] getUpcomingMediaForBundle:idCopy isInternalApplication:v8];

  v10 = [ATXMediaActionPrediction resolvePlayMediaIntent:intentCopy withUpcomingMedia:v9];

  return v10;
}

- (id)replacementActionWithResolvedMediaIntentContainer:(id)container originalAction:(id)action
{
  v29 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  containerCopy = container;
  first = [containerCopy first];
  second = [containerCopy second];

  bOOLValue = [second BOOLValue];
  if (first)
  {
    if (bOOLValue)
    {
      predictedItem = [actionCopy predictedItem];
      bundleId = [predictedItem bundleId];
      [first _setLaunchId:bundleId];

      v14 = objc_alloc(MEMORY[0x277CEB2C8]);
      uUID = [MEMORY[0x277CCAD78] UUID];
      predictedItem2 = [actionCopy predictedItem];
      bundleId2 = [predictedItem2 bundleId];
      LOBYTE(v26) = 1;
      v18 = [v14 initWithIntent:first actionUUID:uUID bundleId:bundleId2 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v26 title:0 subtitle:0];

      v19 = objc_alloc(MEMORY[0x277CEB7F0]);
      [actionCopy score];
      v20 = [v19 initWithPredictedItem:v18 score:?];
    }

    else
    {
      v23 = __atxlog_handle_anchor(v11);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        anchorModelPrediction = self->_anchorModelPrediction;
        *buf = 138412290;
        v28 = anchorModelPrediction;
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_INFO, "Returning original Anchor Model prediction because we didn't use Upcoming Media to update the prediction. Prediction: \n%@", buf, 0xCu);
      }

      v20 = actionCopy;
    }
  }

  else
  {
    v21 = __atxlog_handle_anchor(v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = self->_anchorModelPrediction;
      *buf = 138412290;
      v28 = v22;
      _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_INFO, "Suppresing Anchor Model prediction because intent returned by Upcoming Media was nil. Prediction: \n%@", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

+ (id)anchorPredictionScoredActionTuplesFromPredictions:(id)predictions
{
  v64 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  v51 = objc_opt_new();
  v4 = __atxlog_handle_anchor(v51);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_INFO, "============================================================================\n", buf, 2u);
  }

  v6 = __atxlog_handle_anchor(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [predictionsCopy count];
    *buf = 134217984;
    v60 = v7;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Action prediction post processor STARTING processing anchor model %lu predictions", buf, 0xCu);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = predictionsCopy;
  v8 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = &dword_2263AA000;
    v12 = *v56;
    v13 = @"action";
    do
    {
      v14 = 0;
      v52 = v9;
      do
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v55 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        v17 = __atxlog_handle_anchor(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(v11, v17, OS_LOG_TYPE_INFO, "====\n", buf, 2u);
        }

        v19 = __atxlog_handle_anchor(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v60 = v10;
          _os_log_impl(v11, v19, OS_LOG_TYPE_INFO, "Action prediction post processor STARTING processing anchor model prediction %lu.", buf, 0xCu);
        }

        candidateType = [v15 candidateType];
        v21 = [candidateType isEqualToString:v13];

        if (v21)
        {
          v54 = v16;
          v23 = v13;
          v24 = v10;
          v25 = v12;
          v26 = v11;
          v27 = [[ATXAnchorModelActionPredictionPostProcessor alloc] initWithAnchorModelPrediction:v15];
          recoverATXScoredAction = [(ATXAnchorModelActionPredictionPostProcessor *)v27 recoverATXScoredAction];
          v29 = [(ATXAnchorModelActionPredictionPostProcessor *)v27 postProcessScoredAction:recoverATXScoredAction];

          v30 = [ATXProactiveSuggestionBuilder predictionReasonForAnchorModelPrediction:v15];
          v31 = v30;
          v32 = &stru_2839A6058;
          if (v30)
          {
            v32 = v30;
          }

          v33 = v32;

          if (v29)
          {
            v35 = [[ATXScoredActionWithReason alloc] initWithScoredAction:v29 predictionReason:v33];
            v36 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v15 second:v35];
            [v51 addObject:v36];
          }

          v37 = __atxlog_handle_anchor(v34);
          v11 = v26;
          v38 = v24;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v60 = v24;
            _os_log_impl(v11, v37, OS_LOG_TYPE_INFO, "Action prediction post processor DONE processing anchor model prediction %lu. \n====\n", buf, 0xCu);
          }

          v40 = __atxlog_handle_anchor(v39);
          v13 = v23;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(v11, v40, OS_LOG_TYPE_INFO, "====\n", buf, 2u);
          }

          v10 = v38 + 1;
          v12 = v25;
          v9 = v52;
          v16 = v54;
        }

        else
        {
          v41 = __atxlog_handle_anchor(v22);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v60 = v10;
            _os_log_impl(v11, v41, OS_LOG_TYPE_INFO, "Prediction was not an action. Action prediction post processor DONE processing anchor model prediction %lu.", buf, 0xCu);
          }

          v27 = __atxlog_handle_anchor(v42);
          if (os_log_type_enabled(&v27->super, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(v11, &v27->super, OS_LOG_TYPE_INFO, "====\n", buf, 2u);
          }
        }

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v9 != v14);
      v9 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v9);
  }

  v43 = __atxlog_handle_anchor([self inPlaceDeduplicateAnchorPredictionScoredActionTuples:v51]);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [obj count];
    v45 = [v51 count];
    *buf = 134218240;
    v60 = v44;
    v61 = 2048;
    v62 = v45;
    _os_log_impl(&dword_2263AA000, v43, OS_LOG_TYPE_DEFAULT, "Action prediction post processor DONE processing anchor model %lu predictions. Left with %lu predictions.", buf, 0x16u);
  }

  v47 = __atxlog_handle_anchor(v46);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v47, OS_LOG_TYPE_DEFAULT, "============================================================================\n", buf, 2u);
  }

  v48 = [v51 copy];

  return v48;
}

+ (void)inPlaceDeduplicateAnchorPredictionScoredActionTuples:(id)tuples
{
  v12 = *MEMORY[0x277D85DE8];
  tuplesCopy = tuples;
  v4 = [tuplesCopy _pas_mappedArrayWithTransform:&__block_literal_global_33];
  v5 = [ATXActionPredictionsProcessor indicesOfNonDuplicateScoredActions:v4];
  v6 = __atxlog_handle_anchor(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    v11 = [tuplesCopy count];
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Deduplicating action predictions. Number of original predictions: %lu...", &v10, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(tuplesCopy, "count")}];
  [v7 removeIndexes:v5];
  v8 = __atxlog_handle_anchor([tuplesCopy removeObjectsAtIndexes:v7]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [tuplesCopy count];
    v10 = 134217984;
    v11 = v9;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "After deduplicating, number of action predictions: %lu. Done.", &v10, 0xCu);
  }
}

id __100__ATXAnchorModelActionPredictionPostProcessor_inPlaceDeduplicateAnchorPredictionScoredActionTuples___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 second];
  v3 = [v2 scoredAction];

  return v3;
}

- (void)recoverATXScoredAction
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unable to retrieve ATXScoredAction for Anchor Model prediction. Skipping this prediction. %@", &v3, 0xCu);
}

@end