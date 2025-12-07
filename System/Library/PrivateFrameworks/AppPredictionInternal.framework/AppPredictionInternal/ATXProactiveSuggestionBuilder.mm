@interface ATXProactiveSuggestionBuilder
+ (BOOL)_isHeroAppForPredictionItem:(ATXPredictionItem *)item;
+ (BOOL)_isHeuristicActionForActionResult:(id)result;
+ (BOOL)_isInstalledAppClipForPredictionItem:(ATXPredictionItem *)item;
+ (BOOL)_isMagicalMomentForPredictionItem:(ATXPredictionItem *)item;
+ (BOOL)isMMAnchorWhitelistedForHomeScreen:(int64_t)screen;
+ (id)_actionPredictionReasonForActionResult:(id)result reasons:(id)reasons;
+ (id)_appPredictionReasonForPredictionItem:(ATXPredictionItem *)item reasons:(id)reasons;
+ (id)_executableSpecForAppClipWithHeroAppPrediction:(id)prediction;
+ (id)_executableSpecForAppWithBundleId:(id)id;
+ (id)_executableSpecForScoredAction:(id)action;
+ (id)_executableSpecForSpotlightAction:(id)action;
+ (id)_proactiveSuggestionForSpotlightPOIFromHeroAppPrediction:(id)prediction clientModelSpec:(id)spec;
+ (id)_proactiveSuggestionFromAppPredictionItem:(ATXPredictionItem *)item clientModelSpec:(id)spec reasons:(id)reasons;
+ (id)_proactiveSuggestionFromHeroAppPrediction:(id)prediction clientModelSpec:(id)spec reasons:(id)reasons;
+ (id)_proactiveSuggestionFromMagicalMomentsPredictionBundleId:(id)id mmSignals:(id)signals clientModelSpec:(id)spec reasons:(id)reasons;
+ (id)_proactiveSuggestionsFromActionResult:(id)result clientModelSpec:(id)spec reasons:(id)reasons;
+ (id)_proactiveSuggestionsFromHeuristicActionResult:(id)result clientModelSpec:(id)spec reasons:(id)reasons allowedOnLockscreen:(BOOL)lockscreen;
+ (id)_scoreSpecForAppClipWithScore:(double)score mediumThreshold:(double)threshold highThreshold:(double)highThreshold;
+ (id)_scoreSpecForAppWithScore:(double)score isHighConfidence:(BOOL)confidence;
+ (id)_scoreSpecForHeroAppPrediction:(id)prediction;
+ (id)_scoreSpecForMagicalMomentsPredictionWithMmSignals:(id)signals;
+ (id)_scoreSpecForPredictionItem:(ATXPredictionItem *)item;
+ (id)_scoreSpecForScore:(double)score highThreshold:(double)threshold mediumThreshold:(double)mediumThreshold;
+ (id)_uiSpecForAppClipWithBundleId:(id)id title:(id)title subtitle:(id)subtitle predictionReason:(id)reason;
+ (id)_uiSpecForAppWithBundleId:(id)id scoreSpec:(id)spec predictionReason:(id)reason allowedOnHomescreen:(BOOL)homescreen;
+ (id)_uiSpecForHeroAppPrediction:(id)prediction scoreSpec:(id)spec predictionReason:(id)reason;
+ (id)_uiSpecForMMAppWithBundleId:(id)id scoreSpec:(id)spec predictionReasonString:(id)string anchor:(int64_t)anchor predictionReasons:(unint64_t)reasons;
+ (id)_uiSpecForScoredAction:(id)action scoreSpec:(id)spec clientModelSpec:(id)modelSpec predictionReason:(id)reason allowedOnLockscreen:(BOOL)lockscreen allowedOnHomescreen:(BOOL)homescreen predictionReasons:(unint64_t)reasons;
+ (id)_uiSpecForScoredAction:(id)action scoreSpec:(id)spec clientModelSpec:(id)modelSpec predictionReason:(id)reason shouldClearOnEngagement:(BOOL)engagement allowedOnLockscreen:(BOOL)lockscreen allowedOnHomescreen:(BOOL)homescreen predictionReasons:(unint64_t)self0;
+ (id)_uiSpecForSpotlightPOIPrediction:(id)prediction predictionReasons:(unint64_t)reasons;
+ (id)cachedTitleAndSubtitleForAction:(id)action;
+ (id)executableIdForAction:(id)action;
+ (id)predictionReasonForAnchorModelPrediction:(id)prediction;
+ (id)proactiveSuggestionForAppClipFromHeroAppPrediction:(id)prediction clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold reasons:(id)reasons;
+ (id)proactiveSuggestionForAppClipsFromHeroAppPredictions:(id)predictions clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold;
+ (id)proactiveSuggestionForAppWithAnchorModelPrediction:(id)prediction clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold allowedOnHomescreen:(BOOL)homescreen;
+ (id)proactiveSuggestionForAppWithBundleId:(id)id score:(double)score clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold predictionReason:(id)reason allowedOnHomescreen:(BOOL)homescreen;
+ (id)proactiveSuggestionForLinkActionPrediction:(id)prediction score:(double)score clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold predictionReason:(id)reason allowedOnHomescreen:(BOOL)homescreen;
+ (id)proactiveSuggestionForLockscreenAction:(id)action clientModelSpec:(id)spec;
+ (id)proactiveSuggestionsForAnchorModelFromScoredActionWithReason:(id)reason clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold allowedOnHomescreen:(BOOL)homescreen predictionReasons:(unint64_t)reasons;
+ (id)proactiveSuggestionsForAppsWithHeroAppPredictions:(id)predictions clientModelSpec:(id)spec;
+ (id)proactiveSuggestionsForAppsWithMagicalMomentsMap:(id)map clientModelSpec:(id)spec;
+ (id)proactiveSuggestionsForLockscreenActions:(id)actions clientModelSpec:(id)spec;
+ (id)proactiveSuggestionsForSpotlightPOIWithHeroAppPredictions:(id)predictions clientModelSpec:(id)spec;
+ (id)proactiveSuggestionsFromActionResults:(id)results clientModelSpec:(id)spec;
+ (id)proactiveSuggestionsFromAppPredictionItems:(const void *)items clientModelSpec:(id)spec maxSuggestionsToSendToBlendingLayer:(int)layer;
+ (id)proactiveSuggestionsFromHeuristicActionResults:(id)results clientModelSpec:(id)spec;
+ (id)proactiveSuggestionsFromScoredAction:(id)action clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold predictionReason:(id)reason allowedOnHomescreen:(BOOL)homescreen predictionReasons:(unint64_t)reasons;
+ (int64_t)_confidenceCategoryForPredictionItem:(ATXPredictionItem *)item;
+ (int64_t)_confidenceCategoryForScore:(double)score highThreshold:(double)threshold mediumThreshold:(double)mediumThreshold;
+ (int64_t)_confidenceCategoryGivenIsHighConfidence:(BOOL)confidence;
+ (unint64_t)_actionPredictionReasonsForActionResult:(id)result reasons:(id)reasons;
+ (unint64_t)predictionReasonsForAnchorModelPrediction:(id)prediction;
@end

@implementation ATXProactiveSuggestionBuilder

+ (id)proactiveSuggestionsForAnchorModelFromScoredActionWithReason:(id)reason clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold allowedOnHomescreen:(BOOL)homescreen predictionReasons:(unint64_t)reasons
{
  homescreenCopy = homescreen;
  specCopy = spec;
  reasonCopy = reason;
  scoredAction = [reasonCopy scoredAction];
  reason = [reasonCopy reason];

  v18 = [self proactiveSuggestionsFromScoredAction:scoredAction clientModelSpec:specCopy mediumThreshold:reason highThreshold:homescreenCopy predictionReason:reasons allowedOnHomescreen:threshold predictionReasons:highThreshold];

  return v18;
}

+ (id)proactiveSuggestionForAppWithAnchorModelPrediction:(id)prediction clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold allowedOnHomescreen:(BOOL)homescreen
{
  homescreenCopy = homescreen;
  specCopy = spec;
  predictionCopy = prediction;
  v14 = [self predictionReasonForAnchorModelPrediction:predictionCopy];
  v15 = v14;
  v16 = &stru_2839A6058;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  candidateId = [predictionCopy candidateId];
  [predictionCopy score];
  v20 = v19;

  v21 = [self proactiveSuggestionForAppWithBundleId:candidateId score:specCopy clientModelSpec:v17 mediumThreshold:homescreenCopy highThreshold:v20 predictionReason:threshold allowedOnHomescreen:highThreshold];

  return v21;
}

+ (id)predictionReasonForAnchorModelPrediction:(id)prediction
{
  predictionCopy = prediction;
  v4 = objc_opt_new();
  anchorType = [predictionCopy anchorType];
  v6 = [ATXAnchor anchorClassFromAnchorTypeString:anchorType];

  if (!v6)
  {
    v8 = __atxlog_handle_anchor(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(ATXProactiveSuggestionBuilder *)predictionCopy predictionReasonForAnchorModelPrediction:v8];
    }
  }

  anchorEvent = [predictionCopy anchorEvent];
  v10 = [(objc_class *)v6 anchorOccurenceDateFromDuetEvent:anchorEvent];

  v11 = [v4 actionAnchorReasonForAnchorType:@"Generic"];
  candidateType = [predictionCopy candidateType];
  v13 = [candidateType isEqualToString:@"app"];

  if (!v13)
  {
    candidateType2 = [predictionCopy candidateType];
    if ([candidateType2 isEqualToString:@"action"])
    {
    }

    else
    {
      candidateType3 = [predictionCopy candidateType];
      v24 = [candidateType3 isEqualToString:@"linkaction"];

      if (!v24)
      {
        goto LABEL_18;
      }
    }

    v25 = objc_opt_new();
    [v25 timeIntervalSince1970];
    v27 = v26;
    [v10 timeIntervalSince1970];
    v29 = v27 - v28;

    if (v29 < 480.0)
    {
      anchorType2 = [predictionCopy anchorType];
      v20 = [v4 actionAnchorReasonForAnchorType:anchorType2];
      goto LABEL_14;
    }

    v22 = [v4 actionAnchorReasonForAnchorType:@"Generic"];
LABEL_16:
    v30 = v22;
    goto LABEL_17;
  }

  v14 = objc_opt_new();
  [v14 timeIntervalSince1970];
  v16 = v15;
  [v10 timeIntervalSince1970];
  v18 = v16 - v17;

  if (v18 >= 480.0)
  {
    v22 = [v4 appAnchorReasonForAnchorType:@"Generic"];
    goto LABEL_16;
  }

  anchorType2 = [predictionCopy anchorType];
  v20 = [v4 appAnchorReasonForAnchorType:anchorType2];
LABEL_14:
  v30 = v20;

  v11 = anchorType2;
LABEL_17:

  v11 = v30;
LABEL_18:

  return v11;
}

+ (unint64_t)predictionReasonsForAnchorModelPrediction:(id)prediction
{
  anchorType = [prediction anchorType];
  v4 = [ATXAnchor stringToAnchorType:anchorType];

  if (v4 == 20)
  {
    return 0x1000000000;
  }

  else
  {
    return (v4 == 21) << 37;
  }
}

+ (id)proactiveSuggestionForLinkActionPrediction:(id)prediction score:(double)score clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold predictionReason:(id)reason allowedOnHomescreen:(BOOL)homescreen
{
  homescreenCopy = homescreen;
  predictionCopy = prediction;
  specCopy = spec;
  reasonCopy = reason;
  v52 = [self _scoreSpecForScore:score highThreshold:highThreshold mediumThreshold:threshold];
  v18 = objc_alloc(MEMORY[0x277CCACA8]);
  bundleId = [predictionCopy bundleId];
  action = [predictionCopy action];
  identifier = [action identifier];
  v53 = [v18 initWithFormat:@"%@:%@", bundleId, identifier];

  v22 = objc_opt_new();
  bundleId2 = [predictionCopy bundleId];
  action2 = [predictionCopy action];
  identifier2 = [action2 identifier];
  v54 = 0;
  v26 = [v22 actionForBundleIdentifier:bundleId2 andActionIdentifier:identifier2 error:&v54];
  v27 = v54;

  v28 = v27;
  if (v27)
  {
    v30 = v26;
    identifier3 = __atxlog_handle_anchor(v29);
    if (os_log_type_enabled(identifier3, OS_LOG_TYPE_ERROR))
    {
      v33 = v53;
      +[ATXProactiveSuggestionBuilder proactiveSuggestionForLinkActionPrediction:score:clientModelSpec:mediumThreshold:highThreshold:predictionReason:allowedOnHomescreen:];
      v32 = 0;
      v34 = v52;
    }

    else
    {
      v32 = 0;
      v34 = v52;
      v33 = v53;
    }
  }

  else
  {
    title = [v26 title];
    v36 = [title key];
    v37 = v36;
    v30 = v26;
    v50 = v22;
    if (v36)
    {
      identifier3 = v36;
    }

    else
    {
      action3 = [predictionCopy action];
      identifier3 = [action3 identifier];

      v30 = v26;
    }

    descriptionMetadata = [v30 descriptionMetadata];
    descriptionText = [descriptionMetadata descriptionText];
    v41 = [descriptionText key];

    v48 = v41;
    v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ | %@", identifier3, v41];
    v42 = [objc_alloc(MEMORY[0x277D42080]) initWithExecutableObject:predictionCopy executableDescription:v49 executableIdentifier:v53 suggestionExecutableType:10];
    if ([v52 suggestedConfidenceCategory] <= 2)
    {
      v43 = 44;
    }

    else
    {
      v43 = 40;
    }

    v44 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:v43];
    LOWORD(v47) = 256;
    v45 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:identifier3 subtitle:v41 predictionReason:reasonCopy preferredLayoutConfigs:v44 allowedOnLockscreen:0 allowedOnHomeScreen:homescreenCopy allowedOnSpotlight:v47 shouldClearOnEngagement:?];
    v32 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:specCopy executableSpecification:v42 uiSpecification:v45 scoreSpecification:v52];

    v34 = v52;
    v33 = v53;

    v28 = 0;
    v22 = v50;
  }

  return v32;
}

+ (id)proactiveSuggestionsForAppsWithMagicalMomentsMap:(id)map clientModelSpec:(id)spec
{
  v24 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  specCopy = spec;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = mapCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:{v15, v19}];
        v17 = [self _proactiveSuggestionFromMagicalMomentsPredictionBundleId:v15 mmSignals:v16 clientModelSpec:specCopy reasons:v8];
        if (v17)
        {
          [v9 addObject:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  return v9;
}

+ (id)_proactiveSuggestionFromMagicalMomentsPredictionBundleId:(id)id mmSignals:(id)signals clientModelSpec:(id)spec reasons:(id)reasons
{
  idCopy = id;
  signalsCopy = signals;
  specCopy = spec;
  reasonsCopy = reasons;
  if ([signalsCopy predictionIndex] <= 2)
  {
    v15 = [self _executableSpecForAppWithBundleId:idCopy];
    v16 = [self _scoreSpecForMagicalMomentsPredictionWithMmSignals:signalsCopy];
    v17 = [reasonsCopy appMagicalMomentReasonForAnchorType:{objc_msgSend(signalsCopy, "anchorType")}];
    v18 = [self _uiSpecForMMAppWithBundleId:idCopy scoreSpec:v16 predictionReasonString:v17 anchor:objc_msgSend(signalsCopy predictionReasons:{"anchorType"), objc_msgSend(signalsCopy, "atxReason")}];
    if (v18)
    {
      v14 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:specCopy executableSpecification:v15 uiSpecification:v18 scoreSpecification:v16];
    }

    else
    {
      v19 = __atxlog_handle_default(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[ATXProactiveSuggestionBuilder _proactiveSuggestionFromMagicalMomentsPredictionBundleId:mmSignals:clientModelSpec:reasons:];
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_uiSpecForMMAppWithBundleId:(id)id scoreSpec:(id)spec predictionReasonString:(id)string anchor:(int64_t)anchor predictionReasons:(unint64_t)reasons
{
  stringCopy = string;
  idCopy = id;
  if ([spec suggestedConfidenceCategory] <= 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = 42;
  }

  v15 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:v14];
  LOWORD(v18) = 1;
  v16 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:idCopy subtitle:0 predictionReason:stringCopy preferredLayoutConfigs:v15 allowedOnLockscreen:0 allowedOnHomeScreen:objc_msgSend(self allowedOnSpotlight:"isMMAnchorWhitelistedForHomeScreen:" shouldClearOnEngagement:anchor) predictionReasons:{v18, reasons}];

  return v16;
}

+ (id)_scoreSpecForMagicalMomentsPredictionWithMmSignals:(id)signals
{
  signalsCopy = signals;
  if ([signalsCopy predictionIndex])
  {
    v4 = 2;
  }

  else
  {
    [signalsCopy confidence];
    if (v5 > 0.25)
    {
      v4 = 4;
    }

    else
    {
      v4 = 2;
    }
  }

  v6 = objc_alloc(MEMORY[0x277D42090]);
  [signalsCopy confidence];
  v7 = [v6 initWithRawScore:v4 suggestedConfidenceCategory:?];

  return v7;
}

+ (BOOL)isMMAnchorWhitelistedForHomeScreen:(int64_t)screen
{
  v4 = +[_ATXGlobals sharedInstance];
  whitelistedAnchorsForMagicalMomentsOnHomeScreen = [v4 whitelistedAnchorsForMagicalMomentsOnHomeScreen];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:screen];
  LOBYTE(v4) = [whitelistedAnchorsForMagicalMomentsOnHomeScreen containsObject:v6];

  return v4;
}

+ (id)proactiveSuggestionsForLockscreenActions:(id)actions clientModelSpec:(id)spec
{
  specCopy = spec;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__ATXProactiveSuggestionBuilder_proactiveSuggestionsForLockscreenActions_clientModelSpec___block_invoke;
  v10[3] = &unk_2785985A0;
  v11 = specCopy;
  selfCopy = self;
  v7 = specCopy;
  v8 = [actions _pas_mappedArrayWithTransform:v10];

  return v8;
}

id __90__ATXProactiveSuggestionBuilder_proactiveSuggestionsForLockscreenActions_clientModelSpec___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_blending(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "lockscreen: converting action to proactive suggestion: %@", &v8, 0xCu);
  }

  v5 = [*(a1 + 40) proactiveSuggestionForLockscreenAction:v3 clientModelSpec:*(a1 + 32)];
  v6 = __atxlog_handle_blending(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __90__ATXProactiveSuggestionBuilder_proactiveSuggestionsForLockscreenActions_clientModelSpec___block_invoke_cold_1();
  }

  return v5;
}

+ (id)proactiveSuggestionForLockscreenAction:(id)action clientModelSpec:(id)spec
{
  v25[1] = *MEMORY[0x277D85DE8];
  specCopy = spec;
  actionCopy = action;
  predictedItem = [actionCopy predictedItem];
  v8 = objc_alloc(MEMORY[0x277D42090]);
  [actionCopy score];
  v10 = v9;

  v11 = [v8 initWithRawScore:4 suggestedConfidenceCategory:v10];
  v12 = objc_alloc(MEMORY[0x277D42080]);
  v13 = [predictedItem description];
  actionUUID = [predictedItem actionUUID];
  uUIDString = [actionUUID UUIDString];
  v16 = [v12 initWithExecutableObject:predictedItem executableDescription:v13 executableIdentifier:uUIDString suggestionExecutableType:2];

  v17 = [objc_alloc(MEMORY[0x277D42088]) initWithApplicableSuggestionLayout:5];
  v18 = objc_alloc(MEMORY[0x277D420A0]);
  actionTitle = [predictedItem actionTitle];
  actionSubtitle = [predictedItem actionSubtitle];
  v25[0] = v17;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v22 = [v18 initWithTitle:actionTitle subtitle:actionSubtitle preferredLayoutConfigs:v21 allowedOnLockscreen:1 allowedOnHomeScreen:0 allowedOnSpotlight:0];

  v23 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:specCopy executableSpecification:v16 uiSpecification:v22 scoreSpecification:v11];

  return v23;
}

+ (id)proactiveSuggestionsForAppsWithHeroAppPredictions:(id)predictions clientModelSpec:(id)spec
{
  specCopy = spec;
  predictionsCopy = predictions;
  v7 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__ATXProactiveSuggestionBuilder_proactiveSuggestionsForAppsWithHeroAppPredictions_clientModelSpec___block_invoke;
  v12[3] = &unk_2785985C8;
  v13 = specCopy;
  v14 = v7;
  v8 = v7;
  v9 = specCopy;
  v10 = [predictionsCopy _pas_mappedArrayWithTransform:v12];

  return v10;
}

+ (id)_proactiveSuggestionFromHeroAppPrediction:(id)prediction clientModelSpec:(id)spec reasons:(id)reasons
{
  predictionCopy = prediction;
  specCopy = spec;
  reasonsCopy = reasons;
  bundleId = [predictionCopy bundleId];
  v12 = [self _executableSpecForAppWithBundleId:bundleId];
  v13 = [self _scoreSpecForHeroAppPrediction:predictionCopy];
  appHeroAppReason = [reasonsCopy appHeroAppReason];

  v15 = [self _uiSpecForHeroAppPrediction:predictionCopy scoreSpec:v13 predictionReason:appHeroAppReason];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:specCopy executableSpecification:v12 uiSpecification:v15 scoreSpecification:v13];
  }

  else
  {
    v17 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[ATXProactiveSuggestionBuilder _proactiveSuggestionFromHeroAppPrediction:clientModelSpec:reasons:];
    }

    v16 = 0;
  }

  return v16;
}

+ (id)_scoreSpecForHeroAppPrediction:(id)prediction
{
  if ([prediction rank] == 1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  v4 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:v3 suggestedConfidenceCategory:1.0];

  return v4;
}

+ (id)_uiSpecForHeroAppPrediction:(id)prediction scoreSpec:(id)spec predictionReason:(id)reason
{
  reasonCopy = reason;
  specCopy = spec;
  predictionCopy = prediction;
  bundleId = [predictionCopy bundleId];
  suggestedConfidenceCategory = [specCopy suggestedConfidenceCategory];

  if (suggestedConfidenceCategory <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 42;
  }

  v13 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:v12];
  v14 = objc_alloc(MEMORY[0x277D420A0]);
  v15 = [predictionCopy rank] < 3;
  rank = [predictionCopy rank];

  BYTE1(v19) = 0;
  LOBYTE(v19) = rank > 2;
  v17 = [v14 initWithTitle:bundleId subtitle:0 predictionReason:reasonCopy preferredLayoutConfigs:v13 allowedOnLockscreen:0 allowedOnHomeScreen:v15 allowedOnSpotlight:v19 shouldClearOnEngagement:?];

  return v17;
}

+ (id)proactiveSuggestionsForSpotlightPOIWithHeroAppPredictions:(id)predictions clientModelSpec:(id)spec
{
  specCopy = spec;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __107__ATXProactiveSuggestionBuilder_proactiveSuggestionsForSpotlightPOIWithHeroAppPredictions_clientModelSpec___block_invoke;
  v9[3] = &unk_2785985F0;
  v10 = specCopy;
  v6 = specCopy;
  v7 = [predictions _pas_mappedArrayWithTransform:v9];

  return v7;
}

+ (id)_proactiveSuggestionForSpotlightPOIFromHeroAppPrediction:(id)prediction clientModelSpec:(id)spec
{
  v24 = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  specCopy = spec;
  rank = [predictionCopy rank];
  if (rank < 3)
  {
    bundleId = [predictionCopy bundleId];
    poiMuid = [predictionCopy poiMuid];
    v13 = poiMuid;
    if (bundleId && poiMuid)
    {
      v14 = [objc_alloc(MEMORY[0x277CEB860]) initWithPOIName:bundleId muid:poiMuid criteria:0];
      v15 = [self _executableSpecForSpotlightAction:v14];
      v16 = [self _scoreSpecForHeroAppPrediction:predictionCopy];
      v17 = [self _uiSpecForSpotlightPOIPrediction:bundleId predictionReasons:0x800000];
      v11 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:specCopy executableSpecification:v15 uiSpecification:v17 scoreSpecification:v16];
    }

    else
    {
      v18 = __atxlog_handle_default(poiMuid);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[ATXProactiveSuggestionBuilder _proactiveSuggestionForSpotlightPOIFromHeroAppPrediction:clientModelSpec:];
      }

      v11 = 0;
    }
  }

  else
  {
    bundleId = __atxlog_handle_default(rank);
    if (os_log_type_enabled(bundleId, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromClass(self);
      v20 = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = predictionCopy;
      _os_log_impl(&dword_2263AA000, bundleId, OS_LOG_TYPE_DEFAULT, "%@ - _proactiveSuggestionForSpotlightPOIFromHeroAppPrediction: %@ not included on Spotlight, returning nil", &v20, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_executableSpecForSpotlightAction:(id)action
{
  v3 = MEMORY[0x277D42080];
  actionCopy = action;
  v5 = [v3 alloc];
  actionDescription = [actionCopy actionDescription];
  actionIdentifier = [actionCopy actionIdentifier];
  v8 = [v5 initWithExecutableObject:actionCopy executableDescription:actionDescription executableIdentifier:actionIdentifier suggestionExecutableType:8];

  return v8;
}

+ (id)_uiSpecForSpotlightPOIPrediction:(id)prediction predictionReasons:(unint64_t)reasons
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D42088];
  predictionCopy = prediction;
  v7 = [[v5 alloc] initWithApplicableSuggestionLayout:5];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  LOWORD(v11) = 1;
  v9 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:predictionCopy subtitle:0 predictionReason:0 preferredLayoutConfigs:v8 allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v11 shouldClearOnEngagement:reasons predictionReasons:?];

  return v9;
}

+ (id)proactiveSuggestionForAppClipsFromHeroAppPredictions:(id)predictions clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold
{
  specCopy = spec;
  predictionsCopy = predictions;
  v12 = objc_opt_new();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __132__ATXProactiveSuggestionBuilder_proactiveSuggestionForAppClipsFromHeroAppPredictions_clientModelSpec_mediumThreshold_highThreshold___block_invoke;
  v17[3] = &unk_278598618;
  v19 = v12;
  selfCopy = self;
  thresholdCopy = threshold;
  highThresholdCopy = highThreshold;
  v18 = specCopy;
  v13 = v12;
  v14 = specCopy;
  v15 = [predictionsCopy _pas_mappedArrayWithTransform:v17];

  return v15;
}

id __132__ATXProactiveSuggestionBuilder_proactiveSuggestionForAppClipsFromHeroAppPredictions_clientModelSpec_mediumThreshold_highThreshold___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 48) proactiveSuggestionForAppClipFromHeroAppPrediction:a2 clientModelSpec:*(a1 + 32) mediumThreshold:*(a1 + 40) highThreshold:*(a1 + 56) reasons:*(a1 + 64)];
  v3 = __atxlog_handle_blending(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __132__ATXProactiveSuggestionBuilder_proactiveSuggestionForAppClipsFromHeroAppPredictions_clientModelSpec_mediumThreshold_highThreshold___block_invoke_cold_1();
  }

  return v2;
}

+ (id)proactiveSuggestionForAppClipFromHeroAppPrediction:(id)prediction clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold reasons:(id)reasons
{
  reasonsCopy = reasons;
  specCopy = spec;
  predictionCopy = prediction;
  bundleId = [predictionCopy bundleId];
  clipMetadata = [predictionCopy clipMetadata];
  clipName = [clipMetadata clipName];

  clipMetadata2 = [predictionCopy clipMetadata];
  clipCaption = [clipMetadata2 clipCaption];

  [predictionCopy score];
  v21 = v20;
  v22 = [self _executableSpecForAppClipWithHeroAppPrediction:predictionCopy];

  appLocationBasedAppClipReason = [reasonsCopy appLocationBasedAppClipReason];

  v24 = [self _uiSpecForAppClipWithBundleId:bundleId title:clipName subtitle:clipCaption predictionReason:appLocationBasedAppClipReason];
  v25 = [self _scoreSpecForAppClipWithScore:v21 mediumThreshold:threshold highThreshold:highThreshold];
  v26 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:specCopy executableSpecification:v22 uiSpecification:v24 scoreSpecification:v25];

  return v26;
}

+ (id)_executableSpecForAppClipWithHeroAppPrediction:(id)prediction
{
  predictionCopy = prediction;
  bundleId = [predictionCopy bundleId];
  v5 = objc_alloc(MEMORY[0x277D42080]);
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:CLIP", bundleId];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:CLIP", bundleId];
  v8 = [v5 initWithExecutableObject:predictionCopy executableDescription:v6 executableIdentifier:v7 suggestionExecutableType:5];

  return v8;
}

+ (id)_uiSpecForAppClipWithBundleId:(id)id title:(id)title subtitle:(id)subtitle predictionReason:(id)reason
{
  v8 = MEMORY[0x277D420A0];
  reasonCopy = reason;
  subtitleCopy = subtitle;
  titleCopy = title;
  v12 = [v8 alloc];
  v13 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:40];
  LOWORD(v16) = 1;
  v14 = [v12 initWithTitle:titleCopy subtitle:subtitleCopy predictionReason:reasonCopy preferredLayoutConfigs:v13 allowedOnLockscreen:0 allowedOnHomeScreen:1 allowedOnSpotlight:v16 shouldClearOnEngagement:0x800000 predictionReasons:?];

  return v14;
}

+ (id)_scoreSpecForAppClipWithScore:(double)score mediumThreshold:(double)threshold highThreshold:(double)highThreshold
{
  v6 = [self _confidenceCategoryForScore:score highThreshold:highThreshold mediumThreshold:threshold];
  v7 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:v6 suggestedConfidenceCategory:score];

  return v7;
}

+ (id)executableIdForAction:(id)action
{
  v3 = MEMORY[0x277CCACA8];
  actionCopy = action;
  v5 = [v3 alloc];
  actionKey = [actionCopy actionKey];
  v7 = MEMORY[0x277CCABB0];
  paramHash = [actionCopy paramHash];

  v9 = [v7 numberWithUnsignedInteger:paramHash];
  v10 = [v5 initWithFormat:@"%@:%lld", actionKey, objc_msgSend(v9, "longLongValue")];

  return v10;
}

+ (id)proactiveSuggestionsFromScoredAction:(id)action clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold predictionReason:(id)reason allowedOnHomescreen:(BOOL)homescreen predictionReasons:(unint64_t)reasons
{
  homescreenCopy = homescreen;
  actionCopy = action;
  specCopy = spec;
  reasonCopy = reason;
  v19 = reasonCopy;
  if (actionCopy)
  {
    [actionCopy score];
    v21 = [self _scoreSpecForScore:v20 highThreshold:highThreshold mediumThreshold:threshold];
    v22 = [self _executableSpecForScoredAction:actionCopy];
    if (v22)
    {
      v23 = [self _uiSpecForScoredAction:actionCopy scoreSpec:v21 clientModelSpec:specCopy predictionReason:v19 allowedOnLockscreen:1 allowedOnHomescreen:homescreenCopy predictionReasons:reasons];
      v24 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:specCopy executableSpecification:v22 uiSpecification:v23 scoreSpecification:v21];
    }

    else
    {
      v25 = __atxlog_handle_default(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[ATXProactiveSuggestionBuilder proactiveSuggestionsFromScoredAction:clientModelSpec:mediumThreshold:highThreshold:predictionReason:allowedOnHomescreen:predictionReasons:];
      }

      v24 = 0;
    }
  }

  else
  {
    v21 = __atxlog_handle_default(reasonCopy);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ATXProactiveSuggestionBuilder proactiveSuggestionsFromScoredAction:self clientModelSpec:? mediumThreshold:? highThreshold:? predictionReason:? allowedOnHomescreen:? predictionReasons:?];
    }

    v24 = 0;
  }

  return v24;
}

+ (id)cachedTitleAndSubtitleForAction:(id)action
{
  actionCopy = action;
  intent = [actionCopy intent];
  if (intent && (v5 = intent, [actionCopy intent], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass & 1) == 0))
  {
    v10 = +[ATXIntentMetadataCache sharedInstance];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    intent2 = [actionCopy intent];
    actionTitle = [v10 titleForIntent:intent2 localeIdentifier:localeIdentifier];

    intent3 = [actionCopy intent];
    actionSubtitle = [v10 subtitleForIntent:intent3 localeIdentifier:localeIdentifier];
  }

  else
  {
    actionTitle = [actionCopy actionTitle];
    actionSubtitle = [actionCopy actionSubtitle];
  }

  v15 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:actionTitle second:actionSubtitle];

  return v15;
}

+ (id)_executableSpecForScoredAction:(id)action
{
  predictedItem = [action predictedItem];
  v5 = [objc_opt_class() cachedTitleAndSubtitleForAction:predictedItem];
  first = [v5 first];
  second = [v5 second];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ | %@", first, second];
  v9 = [self executableIdForAction:predictedItem];
  v10 = [objc_alloc(MEMORY[0x277D42080]) initWithExecutableObject:predictedItem executableDescription:v8 executableIdentifier:v9 suggestionExecutableType:2];

  return v10;
}

+ (id)_uiSpecForScoredAction:(id)action scoreSpec:(id)spec clientModelSpec:(id)modelSpec predictionReason:(id)reason shouldClearOnEngagement:(BOOL)engagement allowedOnLockscreen:(BOOL)lockscreen allowedOnHomescreen:(BOOL)homescreen predictionReasons:(unint64_t)self0
{
  lockscreenCopy = lockscreen;
  homescreenCopy = homescreen;
  reasonCopy = reason;
  modelSpecCopy = modelSpec;
  actionCopy = action;
  if ([spec suggestedConfidenceCategory] <= 2)
  {
    v18 = 44;
  }

  else
  {
    v18 = 40;
  }

  v19 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:v18];
  clientModelId = [modelSpecCopy clientModelId];

  v21 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:3];
  v22 = [clientModelId isEqualToString:v21];

  if (v22)
  {
    v23 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:40];

    v19 = v23;
  }

  predictedItem = [actionCopy predictedItem];
  actionType = [predictedItem actionType];

  v26 = MEMORY[0x277CEB7F8];
  predictedItem2 = [actionCopy predictedItem];
  v28 = [v26 isActionEligibleForAnySettingsSuggestions:predictedItem2];

  v29 = v28 ^ 1;
  if (lockscreenCopy)
  {
    v30 = (actionType != 5) & (v28 ^ 1u);
  }

  else
  {
    v30 = 0;
  }

  if (actionType == 5)
  {
    homescreenCopy = 0;
  }

  predictedItem3 = [actionCopy predictedItem];

  v32 = [objc_opt_class() cachedTitleAndSubtitleForAction:predictedItem3];
  first = [v32 first];
  second = [v32 second];
  BYTE1(v37) = engagement;
  LOBYTE(v37) = v29;
  v35 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:first subtitle:second predictionReason:reasonCopy preferredLayoutConfigs:v19 allowedOnLockscreen:v30 allowedOnHomeScreen:homescreenCopy & v29 allowedOnSpotlight:v37 shouldClearOnEngagement:reasons predictionReasons:?];

  return v35;
}

+ (id)_uiSpecForScoredAction:(id)action scoreSpec:(id)spec clientModelSpec:(id)modelSpec predictionReason:(id)reason allowedOnLockscreen:(BOOL)lockscreen allowedOnHomescreen:(BOOL)homescreen predictionReasons:(unint64_t)reasons
{
  lockscreenCopy = lockscreen;
  reasonCopy = reason;
  modelSpecCopy = modelSpec;
  specCopy = spec;
  actionCopy = action;
  predictedItem = [actionCopy predictedItem];
  intent = [predictedItem intent];
  if (intent)
  {
    v18 = +[ATXIntentMetadataCache sharedInstance];
    v19 = [v18 supportsBackgroundExecutionForIntent:intent];
  }

  else
  {
    v19 = 0;
  }

  userActivityWebpageURL = [predictedItem userActivityWebpageURL];
  atx_isOpenableFaceTimeURL = [userActivityWebpageURL atx_isOpenableFaceTimeURL];

  _className = [intent _className];
  v23 = [_className isEqualToString:@"MTCreateAlarmIntent"];

  LOBYTE(v26) = homescreen;
  v24 = [self _uiSpecForScoredAction:actionCopy scoreSpec:specCopy clientModelSpec:modelSpecCopy predictionReason:reasonCopy shouldClearOnEngagement:(v23 | (atx_isOpenableFaceTimeURL | v19)) & 1 allowedOnLockscreen:lockscreenCopy allowedOnHomescreen:v26 predictionReasons:reasons];

  return v24;
}

+ (id)_scoreSpecForScore:(double)score highThreshold:(double)threshold mediumThreshold:(double)mediumThreshold
{
  v6 = [self _confidenceCategoryForScore:score highThreshold:threshold mediumThreshold:mediumThreshold];
  v7 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:v6 suggestedConfidenceCategory:score];

  return v7;
}

+ (id)proactiveSuggestionForAppWithBundleId:(id)id score:(double)score clientModelSpec:(id)spec mediumThreshold:(double)threshold highThreshold:(double)highThreshold predictionReason:(id)reason allowedOnHomescreen:(BOOL)homescreen
{
  homescreenCopy = homescreen;
  idCopy = id;
  specCopy = spec;
  reasonCopy = reason;
  v19 = [self _executableSpecForAppWithBundleId:idCopy];
  v20 = [self _scoreSpecForScore:score highThreshold:highThreshold mediumThreshold:threshold];
  v21 = [self _uiSpecForAppWithBundleId:idCopy scoreSpec:v20 predictionReason:reasonCopy allowedOnHomescreen:homescreenCopy];

  if (v21)
  {
    v23 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:specCopy executableSpecification:v19 uiSpecification:v21 scoreSpecification:v20];
  }

  else
  {
    v24 = __atxlog_handle_default(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[ATXProactiveSuggestionBuilder proactiveSuggestionForAppWithBundleId:score:clientModelSpec:mediumThreshold:highThreshold:predictionReason:allowedOnHomescreen:];
    }

    v23 = 0;
  }

  return v23;
}

+ (id)_uiSpecForAppWithBundleId:(id)id scoreSpec:(id)spec predictionReason:(id)reason allowedOnHomescreen:(BOOL)homescreen
{
  LODWORD(v6) = homescreen;
  reasonCopy = reason;
  idCopy = id;
  suggestedConfidenceCategory = [spec suggestedConfidenceCategory];
  if (suggestedConfidenceCategory >= 3)
  {
    v12 = 42;
  }

  else
  {
    v12 = 2;
  }

  if (suggestedConfidenceCategory < 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v6;
  }

  v13 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:v12];
  LOWORD(v16) = 1;
  v14 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:idCopy subtitle:0 predictionReason:reasonCopy preferredLayoutConfigs:v13 allowedOnLockscreen:0 allowedOnHomeScreen:v6 allowedOnSpotlight:v16 shouldClearOnEngagement:?];

  return v14;
}

+ (id)_executableSpecForAppWithBundleId:(id)id
{
  v3 = MEMORY[0x277D42080];
  idCopy = id;
  v5 = [[v3 alloc] initWithExecutableObject:idCopy executableDescription:idCopy executableIdentifier:idCopy suggestionExecutableType:1];

  return v5;
}

+ (id)_scoreSpecForAppWithScore:(double)score isHighConfidence:(BOOL)confidence
{
  v5 = [self _confidenceCategoryGivenIsHighConfidence:confidence];
  v6 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:v5 suggestedConfidenceCategory:score];

  return v6;
}

+ (int64_t)_confidenceCategoryGivenIsHighConfidence:(BOOL)confidence
{
  if (confidence)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)_confidenceCategoryForScore:(double)score highThreshold:(double)threshold mediumThreshold:(double)mediumThreshold
{
  v5 = 3;
  if (score < mediumThreshold)
  {
    v5 = 2;
  }

  if (score >= threshold)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

+ (id)proactiveSuggestionsFromHeuristicActionResults:(id)results clientModelSpec:(id)spec
{
  resultsCopy = results;
  specCopy = spec;
  atx_actionsFromActionResults = [resultsCopy atx_actionsFromActionResults];
  v9 = [ATXDisplayCacheLockscreenFilter indicesOfLockScreenActionsForActionPredictions:atx_actionsFromActionResults criteria:0];
  v10 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __112__ATXProactiveSuggestionBuilder_PredictionItem__proactiveSuggestionsFromHeuristicActionResults_clientModelSpec___block_invoke;
  v16[3] = &unk_2785A1BE8;
  selfCopy = self;
  v11 = specCopy;
  v17 = v11;
  v18 = v10;
  v12 = v9;
  v19 = v12;
  v13 = v10;
  v14 = [resultsCopy _pas_mappedArrayWithIndexedTransform:v16];

  return v14;
}

id __112__ATXProactiveSuggestionBuilder_PredictionItem__proactiveSuggestionsFromHeuristicActionResults_clientModelSpec___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 56) _proactiveSuggestionsFromHeuristicActionResult:v5 clientModelSpec:*(a1 + 32) reasons:*(a1 + 40) allowedOnLockscreen:{objc_msgSend(*(a1 + 48), "containsIndex:", a3)}];

  return v6;
}

+ (id)_proactiveSuggestionsFromHeuristicActionResult:(id)result clientModelSpec:(id)spec reasons:(id)reasons allowedOnLockscreen:(BOOL)lockscreen
{
  lockscreenCopy = lockscreen;
  v30 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  specCopy = spec;
  reasonsCopy = reasons;
  scoredAction = [resultCopy scoredAction];

  if (scoredAction)
  {
    v15 = objc_msgSend_predictionItem(resultCopy);
    v16 = v15 + 1;
    v17 = *v15;
    v28 = v17;
    memcpy(v29, v16, sizeof(v29));
    if (self)
    {
      v18 = [self _scoreSpecForPredictionItem:&v28];
    }

    else
    {

      v18 = 0;
    }

    scoredAction2 = [resultCopy scoredAction];
    v21 = [self _executableSpecForScoredAction:scoredAction2];

    if (v21)
    {
      v23 = [self _actionPredictionReasonForActionResult:resultCopy reasons:reasonsCopy];
      v24 = [self _actionPredictionReasonsForActionResult:resultCopy reasons:reasonsCopy];
      scoredAction3 = [resultCopy scoredAction];
      v26 = [self _uiSpecForScoredAction:scoredAction3 scoreSpec:v18 clientModelSpec:specCopy predictionReason:v23 allowedOnLockscreen:lockscreenCopy predictionReasons:v24];

      v19 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:specCopy executableSpecification:v21 uiSpecification:v26 scoreSpecification:v18];
    }

    else
    {
      v23 = __atxlog_handle_default(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        NSStringFromClass(self);
        objc_claimAutoreleasedReturnValue();
        +[ATXProactiveSuggestionBuilder(PredictionItem) _proactiveSuggestionsFromHeuristicActionResult:clientModelSpec:reasons:allowedOnLockscreen:];
      }

      v19 = 0;
    }
  }

  else
  {
    v18 = __atxlog_handle_default(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromClass(self);
      objc_claimAutoreleasedReturnValue();
      +[ATXProactiveSuggestionBuilder(PredictionItem) _proactiveSuggestionsFromHeuristicActionResult:clientModelSpec:reasons:allowedOnLockscreen:];
    }

    v19 = 0;
  }

  return v19;
}

+ (id)proactiveSuggestionsFromActionResults:(id)results clientModelSpec:(id)spec
{
  resultsCopy = results;
  specCopy = spec;
  v8 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__ATXProactiveSuggestionBuilder_PredictionItem__proactiveSuggestionsFromActionResults_clientModelSpec___block_invoke;
  v13[3] = &unk_2785A1C10;
  selfCopy = self;
  v9 = specCopy;
  v14 = v9;
  v15 = v8;
  v10 = v8;
  v11 = [resultsCopy _pas_mappedArrayWithTransform:v13];

  return v11;
}

id __103__ATXProactiveSuggestionBuilder_PredictionItem__proactiveSuggestionsFromActionResults_clientModelSpec___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 48) _proactiveSuggestionsFromActionResult:a2 clientModelSpec:*(a1 + 32) reasons:*(a1 + 40)];

  return v2;
}

+ (id)_proactiveSuggestionsFromActionResult:(id)result clientModelSpec:(id)spec reasons:(id)reasons
{
  v27 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  specCopy = spec;
  reasonsCopy = reasons;
  scoredAction = [resultCopy scoredAction];

  if (scoredAction)
  {
    v13 = objc_msgSend_predictionItem(resultCopy);
    v14 = v13 + 1;
    v15 = *v13;
    v25 = v15;
    memcpy(v26, v14, sizeof(v26));
    if (self)
    {
      v16 = [self _scoreSpecForPredictionItem:&v25];
    }

    else
    {

      v16 = 0;
    }

    scoredAction2 = [resultCopy scoredAction];
    v19 = [self _executableSpecForScoredAction:scoredAction2];

    if (v19)
    {
      v21 = [self _actionPredictionReasonForActionResult:resultCopy reasons:reasonsCopy];
      scoredAction3 = [resultCopy scoredAction];
      v23 = [self _uiSpecForScoredAction:scoredAction3 scoreSpec:v16 clientModelSpec:specCopy predictionReason:v21 allowedOnLockscreen:1 allowedOnHomescreen:1 predictionReasons:{0, v25}];

      v17 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:specCopy executableSpecification:v19 uiSpecification:v23 scoreSpecification:v16];
    }

    else
    {
      v21 = __atxlog_handle_default(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        NSStringFromClass(self);
        objc_claimAutoreleasedReturnValue();
        +[ATXProactiveSuggestionBuilder(PredictionItem) _proactiveSuggestionsFromHeuristicActionResult:clientModelSpec:reasons:allowedOnLockscreen:];
      }

      v17 = 0;
    }
  }

  else
  {
    v16 = __atxlog_handle_default(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      NSStringFromClass(self);
      objc_claimAutoreleasedReturnValue();
      +[ATXProactiveSuggestionBuilder(PredictionItem) _proactiveSuggestionsFromActionResult:clientModelSpec:reasons:];
    }

    v17 = 0;
  }

  return v17;
}

+ (id)_actionPredictionReasonForActionResult:(id)result reasons:(id)reasons
{
  resultCopy = result;
  reasonsCopy = reasons;
  if ([self _isHeuristicActionForActionResult:resultCopy])
  {
    scoredAction = [resultCopy scoredAction];
    predictedItem = [scoredAction predictedItem];
    heuristic = [predictedItem heuristic];

    actionBehavioralReason = [reasonsCopy actionHeuristicReasonForHeuristicName:heuristic];
  }

  else
  {
    actionBehavioralReason = [reasonsCopy actionBehavioralReason];
  }

  return actionBehavioralReason;
}

+ (unint64_t)_actionPredictionReasonsForActionResult:(id)result reasons:(id)reasons
{
  v21 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  if ([self _isHeuristicActionForActionResult:resultCopy])
  {
    scoredAction = [resultCopy scoredAction];
    predictedItem = [scoredAction predictedItem];
    heuristic = [predictedItem heuristic];

    v9 = [heuristic hasPrefix:@"changeAlarmBeforeHoliday"];
    if (v9)
    {
      v10 = 0x800000000;
    }

    else
    {
      v11 = __atxlog_handle_default(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromClass(self);
        scoredAction2 = [resultCopy scoredAction];
        predictedItem2 = [scoredAction2 predictedItem];
        heuristic2 = [predictedItem2 heuristic];
        v17 = 138412546;
        v18 = v12;
        v19 = 2112;
        v20 = heuristic2;
        _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "%@ - _actionPredictionReasonsForActionResult: heuristic %@ reason bit set to Unknown", &v17, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_isHeuristicActionForActionResult:(id)result
{
  resultCopy = result;
  scoredAction = [resultCopy scoredAction];
  predictedItem = [scoredAction predictedItem];
  if ([predictedItem isHeuristic])
  {
    scoredAction2 = [resultCopy scoredAction];
    predictedItem2 = [scoredAction2 predictedItem];
    heuristic = [predictedItem2 heuristic];
    v9 = heuristic != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)proactiveSuggestionsFromAppPredictionItems:(const void *)items clientModelSpec:(id)spec maxSuggestionsToSendToBlendingLayer:(int)layer
{
  specCopy = spec;
  v16 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = 0;
  v9 = 0;
  layerCopy = layer;
  while ([v7 count] <= layerCopy && 0x13A524387AC82261 * ((*(items + 1) - *items) >> 3) > v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = ATXProactiveSuggestionBuilder;
    v13 = (*items + v8);
    v14 = *v13;
    v18 = v14;
    memcpy(v19, v13 + 1, sizeof(v19));
    if (ATXProactiveSuggestionBuilder)
    {
      v12 = [ATXProactiveSuggestionBuilder _proactiveSuggestionFromAppPredictionItem:&v18 clientModelSpec:specCopy reasons:v16];
      if (v12)
      {
        [v7 addObject:v12];
      }
    }

    else
    {
    }

    objc_autoreleasePoolPop(v11);
    ++v9;
    v8 += 3336;
  }

  return v7;
}

+ (id)_proactiveSuggestionFromAppPredictionItem:(ATXPredictionItem *)item clientModelSpec:(id)spec reasons:(id)reasons
{
  MEMORY[0x28223BE20](self);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v26 = *MEMORY[0x277D85DE8];
  v12 = v11;
  v13 = v6;
  v14 = [v10 _executableSpecForAppWithBundleId:*v8];
  v15 = *v8;
  v24 = v15;
  memcpy(v25, v8 + 1, sizeof(v25));
  if (v10)
  {
    v16 = [v10 _scoreSpecForPredictionItem:&v24];
    v22 = *v8;
    memcpy(v23, v8 + 1, sizeof(v23));
    v17 = [v10 _appPredictionReasonForPredictionItem:&v22 reasons:v13];
  }

  else
  {

    v22 = *v8;
    memcpy(v23, v8 + 1, sizeof(v23));

    v16 = 0;
    v17 = 0;
  }

  v18 = [v10 _uiSpecForAppWithBundleId:*v8 scoreSpec:v16 predictionReason:{v17, v22}];
  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v12 executableSpecification:v14 uiSpecification:v18 scoreSpecification:v16];
  }

  else
  {
    v20 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      NSStringFromClass(v10);
      objc_claimAutoreleasedReturnValue();
      +[ATXProactiveSuggestionBuilder(PredictionItem) _proactiveSuggestionFromAppPredictionItem:clientModelSpec:reasons:];
    }

    v19 = 0;
  }

  return v19;
}

+ (id)_appPredictionReasonForPredictionItem:(ATXPredictionItem *)item reasons:(id)reasons
{
  MEMORY[0x28223BE20](self);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v5;
  v18 = v10;
  memcpy(v19, (v5 + 8), sizeof(v19));
  if (!v7)
  {

    v16 = *v5;
    memcpy(v17, (v5 + 8), sizeof(v17));

    v14 = *v5;
    memcpy(v15, (v5 + 8), sizeof(v15));

    goto LABEL_5;
  }

  if ([v7 _isInstalledAppClipForPredictionItem:&v18])
  {
    appInstalledAppClipReason = [v9 appInstalledAppClipReason];
    goto LABEL_10;
  }

  v16 = *v5;
  memcpy(v17, (v5 + 8), sizeof(v17));
  if ([v7 _isHeroAppForPredictionItem:&v16])
  {
    appInstalledAppClipReason = [v9 appHeroAppReason];
    goto LABEL_10;
  }

  v14 = *v5;
  memcpy(v15, (v5 + 8), sizeof(v15));
  if (![v7 _isMagicalMomentForPredictionItem:&v14])
  {
LABEL_5:
    appInstalledAppClipReason = [v9 appBehavioralReason];
    goto LABEL_10;
  }

  appInstalledAppClipReason = [v9 appMagicalMomentReasonForAnchorType:*(v5 + 304)];
LABEL_10:
  v12 = appInstalledAppClipReason;

  return v12;
}

+ (BOOL)_isHeroAppForPredictionItem:(ATXPredictionItem *)item
{
  v3 = item->inputSignals[75] == 0.0 && item->inputSignals[73] > 0.0;

  return v3;
}

+ (BOOL)_isInstalledAppClipForPredictionItem:(ATXPredictionItem *)item
{
  v3 = item->inputSignals[769] == 1.0;

  return v3;
}

+ (BOOL)_isMagicalMomentForPredictionItem:(ATXPredictionItem *)item
{
  v3 = item->inputSignals[75] == 0.0 && item->inputSignals[73] <= 0.0;

  return v3;
}

+ (id)_scoreSpecForPredictionItem:(ATXPredictionItem *)item
{
  p_actionHash = &item->actionHash;
  v6 = item->key;
  v9 = v6;
  memcpy(v10, p_actionHash, sizeof(v10));
  if (self)
  {
    self = [self _confidenceCategoryForPredictionItem:&v9];
  }

  else
  {
  }

  v7 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:self suggestedConfidenceCategory:item->score];

  return v7;
}

+ (int64_t)_confidenceCategoryForPredictionItem:(ATXPredictionItem *)item
{
  if (item->isHighConfidenceForBlendingLayer)
  {
    v3 = 4;
  }

  else if (item->isMediumConfidenceForBlendingLayer)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

+ (void)predictionReasonForAnchorModelPrediction:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 anchorType];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Failed to retrieve Anchor Class Name from Anchor Type: %@", &v4, 0xCu);
}

+ (void)proactiveSuggestionForLinkActionPrediction:score:clientModelSpec:mediumThreshold:highThreshold:predictionReason:allowedOnHomescreen:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_12();
  v3 = v0;
  _os_log_error_impl(&dword_2263AA000, v1, OS_LOG_TYPE_ERROR, "Suggestion Builder: Unable to retrieve Link metadata for action %@. Error: %@", v2, 0x16u);
}

+ (void)_proactiveSuggestionFromMagicalMomentsPredictionBundleId:mmSignals:clientModelSpec:reasons:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - _proactiveSuggestionFromMagicalMomentsPredictionBundleId: %@ could not generate uiSpec, returning nil", v4, v5, v6, v7);
}

void __90__ATXProactiveSuggestionBuilder_proactiveSuggestionsForLockscreenActions_clientModelSpec___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [*v0 clientModelId];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "<<%@>> produced an Action Proactive Suggestion: %@", v4, v5, v6, v7);
}

+ (void)_proactiveSuggestionFromHeroAppPrediction:clientModelSpec:reasons:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - _proactiveSuggestionFromHeroAppPrediction: %@ could not generate uiSpec, returning nil", v4, v5, v6, v7);
}

+ (void)_proactiveSuggestionForSpotlightPOIFromHeroAppPrediction:clientModelSpec:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - _proactiveSuggestionForSpotlightPOIFromHeroAppPrediction: %@ no poiMuid found, returning nil", v4, v5, v6, v7);
}

void __132__ATXProactiveSuggestionBuilder_proactiveSuggestionForAppClipsFromHeroAppPredictions_clientModelSpec_mediumThreshold_highThreshold___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [*v0 clientModelId];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "<<%@>> produced an App Clip Prediction Proactive Suggestion: %@", v4, v5, v6, v7);
}

+ (void)proactiveSuggestionsFromScoredAction:clientModelSpec:mediumThreshold:highThreshold:predictionReason:allowedOnHomescreen:predictionReasons:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - proactiveSuggestionsFromScoredAction: %@ could not generate executableSpec, returning nil", v4, v5, v6, v7);
}

+ (void)proactiveSuggestionsFromScoredAction:(objc_class *)a1 clientModelSpec:mediumThreshold:highThreshold:predictionReason:allowedOnHomescreen:predictionReasons:.cold.2(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - proactiveSuggestionsFromScoredAction: %@ had no scoredAction, returning nil", v4, v5, v6, v7);
}

+ (void)proactiveSuggestionForAppWithBundleId:score:clientModelSpec:mediumThreshold:highThreshold:predictionReason:allowedOnHomescreen:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - proactiveSuggestionForAppWithBundleId: %@ could not generate uiSpec, returning nil", v4, v5, v6, v7);
}

@end