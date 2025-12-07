@interface _ATXInspectionServer
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_ATXInspectionServer)init;
- (id)_filterAndSortAppIntentEventsWithUUID:(id)d events:(id)events;
- (void)_getActionLogs:(id)logs obfuscation:(BOOL)obfuscation;
- (void)addToDigestFeedbackHistogramForBundleId:(id)id location:(id)location feedback:(id)feedback withReply:(id)reply;
- (void)allHistogramsBySize:(id)size;
- (void)appAndActionHistoryClear:(id)clear;
- (void)appHistoryActionWithUUID:(id)d reply:(id)reply;
- (void)appHistoryAddAppIntentLaunch:(id)launch intent:(id)intent source:(id)source date:(id)date timeZone:(id)zone reply:(id)reply;
- (void)appHistoryAddLaunch:(id)launch launchReason:(id)reason date:(id)date timeZone:(id)zone reply:(id)reply;
- (void)appHistoryAddNSUALaunch:(id)launch requiredString:(id)string itemIdentifier:(id)identifier date:(id)date timeZone:(id)zone reply:(id)reply;
- (void)appHistoryClearAppIntent:(id)intent;
- (void)appHistoryStartDeltaRecording:(id)recording;
- (void)appHistoryStopDeltaRecording:(id)recording;
- (void)appHistoryUpdateActionPredictionPipelineWithAction:(id)action date:(id)date timeZone:(id)zone reply:(id)reply;
- (void)appInstallHistoryClear:(id)clear;
- (void)appInstallHistorySet:(id)set date:(id)date reply:(id)reply;
- (void)appInstallHistoryStartDeltaRecording:(id)recording;
- (void)appInstallHistoryStopDeltaRecording:(id)recording;
- (void)appIntentHistoryDonateINIntent:(id)intent intentType:(id)type startDate:(id)date endDate:(id)endDate timeZone:(id)zone reply:(id)reply;
- (void)appIntentHistoryMockIntentLaunch:(id)launch source:(id)source startDate:(id)date endDate:(id)endDate timeZone:(id)zone reply:(id)reply;
- (void)appLaunchDatesWithReply:(id)reply;
- (void)appLaunchInformationWithReply:(id)reply;
- (void)benchmarkAppPredictionForConsumerSubType:(unsigned __int8)type ntimes:(unint64_t)ntimes reply:(id)reply;
- (void)blendedSuggestionsForConsumerSubType:(unsigned __int8)type reply:(id)reply;
- (void)buildAnchorModelTrainingDataset:(id)dataset;
- (void)categoryLaunchInformationWithReply:(id)reply;
- (void)clearAllDataForStressTestWithReply:(id)reply;
- (void)clearBlendingSuggestionsForClientModel:(int64_t)model withReply:(id)reply;
- (void)clearDigestFeedbackHistogramWithShouldResetBookmarks:(BOOL)bookmarks reply:(id)reply;
- (void)clearNotificationsWithReply:(id)reply;
- (void)createAppPredictionLogs:(id)logs;
- (void)donateSuggestion:(id)suggestion forClientModel:(int64_t)model withReply:(id)reply;
- (void)dumpNotificationJSONFromSource:(id)source startDate:(id)date endDate:(id)endDate inferMessages:(BOOL)messages reply:(id)reply;
- (void)dumpPredictionTableForMMExpert:(id)expert reply:(id)reply;
- (void)evaluateInfoSuggestionsWithCompletionHandler:(id)handler;
- (void)feedbackClear:(id)clear;
- (void)feedbackLaunchedWithConsumerSubType:(unsigned __int8)type forBundleId:(id)id rejected:(id)rejected reply:(id)reply;
- (void)fetchPIDFromServer:(id)server;
- (void)fetchPosterDescriptorsWithReply:(id)reply;
- (void)fetchSuggestionsForSourceId:(id)id reply:(id)reply;
- (void)forceMagicalMomentsAppPredictionForBundleId:(id)id expert:(id)expert reply:(id)reply;
- (void)forceNotificationAndSuggestionDbUpdate:(id)update;
- (void)generateDataForStressTestWithReply:(id)reply;
- (void)generateSerializedAppGroupedNotificationDigestFromSource:(id)source digestTimeString:(id)string startDate:(id)date endDate:(id)endDate inferMessages:(BOOL)messages reply:(id)reply;
- (void)generateSerializedMissedNotificationBundleFromFileData:(id)data modeString:(id)string reply:(id)reply;
- (void)generateSerializedMissedNotificationBundleFromSource:(id)source modeString:(id)string startDate:(id)date endDate:(id)endDate inferMessages:(BOOL)messages reply:(id)reply;
- (void)generateSerializedNotificationDigestFromFileData:(id)data digestTimeString:(id)string reply:(id)reply;
- (void)generateSerializedNotificationDigestFromSource:(id)source digestTimeString:(id)string startDate:(id)date endDate:(id)endDate inferMessages:(BOOL)messages reply:(id)reply;
- (void)getAppFeedbackData:(id)data;
- (void)getCurrentLocationWithReply:(id)reply;
- (void)getInfoPredictionsInString:(id)string;
- (void)getInfoSuggestionsInString:(id)string;
- (void)getModeTimelineDataFromStartDate:(id)date reply:(id)reply;
- (void)getParseTreeForConsumerSubType:(unsigned __int8)type reply:(id)reply;
- (void)getPredictionModelDetailsForConsumerSubType:(unsigned __int8)type reply:(id)reply;
- (void)histogramsInMemory:(id)memory;
- (void)histogramsInMemoryBySize:(id)size;
- (void)inspectInferredActivitySessionStream:(id)stream fromTimestamp:(double)timestamp reply:(id)reply;
- (void)inspectInferredActivityTransitionStream:(id)stream fromTimestamp:(double)timestamp reply:(id)reply;
- (void)lockScreenBundleIdsWithReply:(id)reply;
- (void)logNotificationMetricsFromStartTimestamp:(id)timestamp toEndTimestamp:(id)endTimestamp withCompletion:(id)completion;
- (void)nPlusOneStudyDryRunResultFilterByExtensionBundleId:(id)id reply:(id)reply;
- (void)performHomeScreenCoreAnalyticsDryRunWithCustomStartDate:(id)date reply:(id)reply;
- (void)predictItemsAndReturnInputsAndSubscoresForConsumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIds:(id)ids candidateActiontypes:(id)actiontypes reply:(id)reply;
- (void)predictItemsAndReturnMetaDataAndInputsAndSubScoresWithCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes consumerSubType:(unsigned __int8)type reply:(id)reply;
- (void)predictItemsAndReturnStageScoresWithCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes consumerSubType:(unsigned __int8)type reply:(id)reply;
- (void)processAppDirectoryFeedbackWithReply:(id)reply;
- (void)processHomeScreenFeedbackWithReply:(id)reply;
- (void)processLockscreenFeedbackWithReply:(id)reply;
- (void)processSpotlightActionFeedbackWithReply:(id)reply;
- (void)processSpotlightAppFeedbackWithReply:(id)reply;
- (void)promoteSuggestionsFromClientModel:(id)model reply:(id)reply;
- (void)rankAndReturnInfoPredictionsInString:(id)string;
- (void)refreshBlendingLayer:(id)layer;
- (void)resetActionPredictions:(id)predictions;
- (void)resetHistogramsAndRemoveUICaches:(id)caches;
- (void)retrainActionHistograms:(id)histograms;
- (void)retrainActionSlotDatabase:(id)database;
- (void)schedulePredictionsForAnchorModel:(id)model anchorType:(id)type reply:(id)reply;
- (void)scheduledPredictionsForAnchorModelWithReply:(id)reply;
- (void)setDigestFeedbackHistogramValueForBundleId:(id)id location:(id)location feedback:(id)feedback value:(id)value withReply:(id)reply;
- (void)setTestMode:(BOOL)mode withCompletion:(id)completion;
- (void)showDigestFeedbackHistogramForBundleId:(id)id withReply:(id)reply;
- (void)trainAnchorModel:(id)model;
- (void)trainMagicalMomentsAppPredictor:(id)predictor;
- (void)trainModeEntityModelsWithDeferTrainingWhenApplicable:(BOOL)applicable reply:(id)reply;
- (void)trainModeSetupPredictionModelWithReply:(id)reply;
- (void)triggerBackgroundJobWithIdentifier:(id)identifier configuration:(id)configuration completion:(id)completion;
- (void)triggerPredictionsUpdateWithCompletion:(id)completion;
- (void)updateAppDirectoryCache:(id)cache;
- (void)validPredictionsRightNowForAnchorModelWithReply:(id)reply;
- (void)widgetBundleIdentifiersForAllInfoSuggestionsInString:(id)string;
@end

@implementation _ATXInspectionServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_33 != -1)
  {
    +[_ATXInspectionServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_40;

  return v3;
}

- (_ATXInspectionServer)init
{
  v6.receiver = self;
  v6.super_class = _ATXInspectionServer;
  v2 = [(_ATXInspectionServer *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.duet.appPrediction.inspection"];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.duet.appPrediction.inspection"];
  v7 = v6;
  if (v6 && (v6 = objc_opt_respondsToSelector(), (v6 & 1) != 0) && (v6 = [v7 BOOLValue], (v6 & 1) != 0))
  {
    v8 = _ATXInspectionInterface();
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_24_1];
    [connectionCopy setInvalidationHandler:&__block_literal_global_27_0];
    [connectionCopy resume];
    v9 = 1;
  }

  else
  {
    v10 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_ATXInspectionServer listener:shouldAcceptNewConnection:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)appAndActionHistoryClear:(id)clear
{
  clearCopy = clear;
  v3 = +[_ATXAppPredictor sharedInstance];
  appLaunchMonitor = [v3 appLaunchMonitor];
  [appLaunchMonitor clearHistory];

  clearCopy[2](clearCopy, 0);
}

- (void)appHistoryClearAppIntent:(id)intent
{
  intentCopy = intent;
  v3 = +[_ATXAppPredictor sharedInstance];
  appLaunchMonitor = [v3 appLaunchMonitor];
  [appLaunchMonitor clearIntentHistogramHistory];

  intentCopy[2](intentCopy, 0);
}

- (void)appHistoryAddLaunch:(id)launch launchReason:(id)reason date:(id)date timeZone:(id)zone reply:(id)reply
{
  replyCopy = reply;
  zoneCopy = zone;
  dateCopy = date;
  reasonCopy = reason;
  launchCopy = launch;
  v15 = +[_ATXAppPredictor sharedInstance];
  appLaunchMonitor = [v15 appLaunchMonitor];
  [appLaunchMonitor addLaunchWithBundleId:launchCopy date:dateCopy timeZone:zoneCopy reason:reasonCopy];

  replyCopy[2](replyCopy, 0);
}

- (void)appHistoryUpdateActionPredictionPipelineWithAction:(id)action date:(id)date timeZone:(id)zone reply:(id)reply
{
  v103 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  dateCopy = date;
  replyCopy = reply;
  v11 = __atxlog_handle_default(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_ATXInspectionServer appHistoryUpdateActionPredictionPipelineWithAction:actionCopy date:v11 timeZone:? reply:?];
  }

  v12 = objc_alloc_init(MEMORY[0x277CEB5E0]);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v14 = [MEMORY[0x277CBEAA8] now];
  v90 = v12;
  v15 = [v12 getIntentEventsBetweenStartDate:distantPast endDate:v14 forSource:4];

  v93 = v15;
  v16 = [(_ATXInspectionServer *)self _filterAndSortAppIntentEventsWithUUID:actionCopy events:v15];
  lastObject = [v16 lastObject];

  v18 = objc_alloc_init(MEMORY[0x277CEB918]);
  distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
  v20 = [MEMORY[0x277CBEAA8] now];
  v92 = v18;
  v21 = [v18 getActivityIntentEventsBetweenStartDate:distantPast2 endDate:v20];

  v91 = v21;
  v22 = [(_ATXInspectionServer *)self _filterAndSortAppIntentEventsWithUUID:actionCopy events:v21];
  lastObject2 = [v22 lastObject];

  if (lastObject && lastObject2)
  {
    endDate = [lastObject endDate];
    endDate2 = [lastObject2 endDate];
    if ([endDate compare:endDate2])
    {
      v26 = lastObject2;
    }

    else
    {
      v26 = lastObject;
    }

    v27 = v26;
  }

  else
  {
    if (lastObject)
    {
      v29 = lastObject;
    }

    else
    {
      v29 = lastObject2;
    }

    v28 = v29;
    v27 = v28;
  }

  v30 = __atxlog_handle_default(v28);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v27 description];
    *buf = 138543618;
    v100 = v31;
    v101 = 2080;
    v102 = "[_ATXInspectionServer appHistoryUpdateActionPredictionPipelineWithAction:date:timeZone:reply:]";
    _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "Biome query result: %{public}@, %s", buf, 0x16u);
  }

  if (v27)
  {
    if ([v27 isEqual:lastObject])
    {
      intent = [v27 intent];
      _intents_bundleIdForDisplay = [intent _intents_bundleIdForDisplay];
      v34 = _intents_bundleIdForDisplay;
      v35 = lastObject2;
      if (_intents_bundleIdForDisplay)
      {
        bundleId = _intents_bundleIdForDisplay;
      }

      else
      {
        bundleId = [v27 bundleId];
      }

      actionCopy = bundleId;

      intentType = [v27 intentType];
      v43 = objc_alloc(MEMORY[0x277CEB2C8]);
      intent2 = [v27 intent];
      v45 = objc_opt_new();
      LOBYTE(v77) = 0;
      v46 = [v43 initWithIntent:intent2 actionUUID:v45 bundleId:actionCopy heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v77 title:0 subtitle:0];

      lastObject2 = v35;
      v42 = v46;
    }

    else
    {
      v42 = 0;
      intentType = 0;
      actionCopy = 0;
    }

    v89 = lastObject2;
    if ([v27 isEqual:lastObject2])
    {
      v87 = dateCopy;
      action = [v27 action];
      contentAttributeSet = [action contentAttributeSet];

      contentURL = [contentAttributeSet contentURL];
      relatedUniqueIdentifier = [contentAttributeSet relatedUniqueIdentifier];
      contentDescription = [contentAttributeSet contentDescription];
      v85 = contentAttributeSet;
      v86 = replyCopy;
      v83 = relatedUniqueIdentifier;
      v84 = contentDescription;
      v82 = contentURL;
      if (contentURL || relatedUniqueIdentifier || contentDescription)
      {
        v53 = contentDescription;
        v54 = objc_alloc(MEMORY[0x277CC34B8]);
        v55 = [v54 initWithContentType:*MEMORY[0x277CE1D40]];
        v56 = relatedUniqueIdentifier;
        v52 = v55;
        [v55 setRelatedUniqueIdentifier:v56];
        [v52 setContentURL:contentURL];
        [v52 setContentDescription:v53];
      }

      else
      {
        v52 = 0;
      }

      bundleId2 = [v27 bundleId];

      action2 = [v27 action];
      itemIdentifier = [action2 itemIdentifier];

      action3 = [v27 action];
      userActivityString = [action3 userActivityString];

      v60 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityStrings:userActivityString secondaryString:0 optionalData:0];
      v61 = MEMORY[0x277CEB2C8];
      activityType = [v60 activityType];
      v80 = [v61 getNSUATypefromActivityType:activityType];

      v63 = objc_alloc(MEMORY[0x277CEB2C8]);
      v64 = objc_opt_new();
      LOBYTE(v78) = 0;
      actionCopy = bundleId2;
      v65 = [v63 initWithNSUserActivityString:userActivityString actionUUID:v64 bundleId:bundleId2 itemIdentifier:itemIdentifier contentAttributeSet:v52 heuristic:0 heuristicMetadata:0 isFutureMedia:v78 title:0 subtitle:0];

      v42 = v65;
      intentType = v80;
      replyCopy = v86;
      dateCopy = v87;
    }

    if (actionCopy && intentType && v42 && ([v42 actionTitle], v66 = objc_claimAutoreleasedReturnValue(), v66, v66))
    {
      v67 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:dateCopy];
      v68 = [objc_alloc(MEMORY[0x277CEB5D8]) initWithBundleId:actionCopy intentType:intentType dateInterval:v67 action:v42];
      v69 = +[_ATXAppPredictor sharedInstance];
      [v69 appIntentMonitor];
      v88 = v42;
      v70 = intentType;
      v71 = lastObject;
      v72 = replyCopy;
      v74 = v73 = dateCopy;
      LODWORD(v75) = 1.0;
      [v74 updateActionPredictionPipelineForIntentEvent:v68 weight:0 appSessionStartDate:0 appSessionEndDate:v75];

      dateCopy = v73;
      replyCopy = v72;
      lastObject = v71;
      intentType = v70;
      v42 = v88;

      v41 = [v88 description];

      v40 = 0;
    }

    else
    {
      v76 = objc_alloc(MEMORY[0x277CCA9B8]);
      v97 = *MEMORY[0x277CCA450];
      v98 = @"The action does not have a bundleId, intentType, or title.";
      v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v40 = [v76 initWithDomain:@"appHistoryUpdateActionPredictionPipelineWithAction" code:-1 userInfo:v67];
      v41 = 0;
    }

    lastObject2 = v89;
  }

  else
  {
    v37 = objc_alloc(MEMORY[0x277CCA9B8]);
    v95 = *MEMORY[0x277CCA450];
    actionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No events found for UUID: %@", actionCopy];
    v96 = actionCopy;
    intentType = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v40 = [v37 initWithDomain:@"appHistoryUpdateActionPredictionPipelineWithAction" code:-1 userInfo:intentType];
    v41 = 0;
  }

  replyCopy[2](replyCopy, v41, v40);
}

- (id)_filterAndSortAppIntentEventsWithUUID:(id)d events:(id)events
{
  dCopy = d;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69___ATXInspectionServer__filterAndSortAppIntentEventsWithUUID_events___block_invoke;
  v10[3] = &unk_27859C198;
  v11 = dCopy;
  v6 = dCopy;
  v7 = [events _pas_filteredArrayWithTest:v10];
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_53];

  return v8;
}

- (void)appHistoryActionWithUUID:(id)d reply:(id)reply
{
  v29[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__83;
  v25 = __Block_byref_object_dispose__83;
  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v28 = *MEMORY[0x277CCA450];
  v8 = MEMORY[0x277CCACA8];
  uUIDString = [dCopy UUIDString];
  v10 = [v8 stringWithFormat:@"There is no action found with UUID: %@", uUIDString];
  v29[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v26 = [v7 initWithDomain:@"appHistoryActionWithUUID" code:-1 userInfo:v11];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__83;
  v19 = __Block_byref_object_dispose__83;
  v20 = 0;
  v12 = +[_ATXDataStore sharedInstance];
  v27 = dCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55___ATXInspectionServer_appHistoryActionWithUUID_reply___block_invoke;
  v14[3] = &unk_27859F9B8;
  v14[4] = &v21;
  v14[5] = &v15;
  [v12 enumerateActionsInUUIDSet:v13 block:v14];

  replyCopy[2](replyCopy, v16[5], v22[5]);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

- (void)appHistoryAddNSUALaunch:(id)launch requiredString:(id)string itemIdentifier:(id)identifier date:(id)date timeZone:(id)zone reply:(id)reply
{
  launchCopy = launch;
  dateCopy = date;
  replyCopy = reply;
  v14 = MEMORY[0x277CEB2C8];
  identifierCopy = identifier;
  stringCopy = string;
  v17 = [v14 alloc];
  v18 = objc_opt_new();
  LOBYTE(v28) = 0;
  v19 = [v17 initWithNSUserActivityString:stringCopy actionUUID:v18 bundleId:launchCopy itemIdentifier:identifierCopy contentAttributeSet:0 heuristic:0 heuristicMetadata:0 isFutureMedia:v28 title:0 subtitle:0];

  userActivity = [v19 userActivity];
  activityType = [userActivity activityType];

  if (activityType)
  {
    v22 = [MEMORY[0x277CEB2C8] getNSUATypefromActivityType:activityType];
    v23 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:dateCopy];
    v24 = [objc_alloc(MEMORY[0x277CEB5D8]) initWithBundleId:launchCopy intentType:v22 dateInterval:v23 action:v19];
    v25 = +[_ATXAppPredictor sharedInstance];
    appIntentMonitor = [v25 appIntentMonitor];
    LODWORD(v27) = 1.0;
    [appIntentMonitor updateActionPredictionPipelineForIntentEvent:v24 weight:0 appSessionStartDate:0 appSessionEndDate:v27];
  }

  replyCopy[2](replyCopy, 0);
}

- (void)appHistoryAddAppIntentLaunch:(id)launch intent:(id)intent source:(id)source date:(id)date timeZone:(id)zone reply:(id)reply
{
  intentCopy = intent;
  replyCopy = reply;
  dateCopy = date;
  launchCopy = launch;
  v15 = intentCopy;
  if ([source isEqualToString:@"NSUA"])
  {
    v15 = [MEMORY[0x277CEB2C8] getNSUATypefromActivityType:intentCopy];
  }

  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:dateCopy];

  v17 = [objc_alloc(MEMORY[0x277CEB5D8]) initWithBundleId:launchCopy intentType:v15 dateInterval:v16];
  v18 = +[_ATXAppPredictor sharedInstance];
  appIntentMonitor = [v18 appIntentMonitor];
  LODWORD(v20) = 1.0;
  [appIntentMonitor updateActionPredictionPipelineForIntentEvent:v17 weight:0 appSessionStartDate:0 appSessionEndDate:v20];

  replyCopy[2](replyCopy, 0);
}

- (void)appIntentHistoryMockIntentLaunch:(id)launch source:(id)source startDate:(id)date endDate:(id)endDate timeZone:(id)zone reply:(id)reply
{
  launchCopy = launch;
  sourceCopy = source;
  dateCopy = date;
  endDateCopy = endDate;
  replyCopy = reply;
  if (([sourceCopy isEqualToString:@"NSUA"] & 1) != 0 || objc_msgSend(sourceCopy, "isEqualToString:", @"INIntent"))
  {
    v16 = +[_ATXAppPredictor sharedInstance];
    appIntentMonitor = [v16 appIntentMonitor];
    [appIntentMonitor updateActionPredictionPipelineForAppSession:launchCopy startDate:dateCopy endDate:endDateCopy];
  }

  replyCopy[2](replyCopy, 0);
}

- (void)appIntentHistoryDonateINIntent:(id)intent intentType:(id)type startDate:(id)date endDate:(id)endDate timeZone:(id)zone reply:(id)reply
{
  v47[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v13 = MEMORY[0x277CD3E98];
  replyCopy = reply;
  endDateCopy = endDate;
  dateCopy = date;
  intentCopy = intent;
  v14 = [v13 alloc];
  v15 = [@"alice" stringByAppendingString:@"@example.com"];
  v16 = *MEMORY[0x277CD38A8];
  v17 = [v14 initWithValue:v15 type:1 label:*MEMORY[0x277CD38A8]];

  v18 = objc_alloc(MEMORY[0x277CD3E90]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v43 = v17;
  v21 = [v18 initWithPersonHandle:v17 nameComponents:0 displayName:@"Alice" image:0 contactIdentifier:uUIDString customIdentifier:0];

  v22 = objc_alloc(MEMORY[0x277CD3E98]);
  v23 = [@"bob" stringByAppendingString:@"@example.com"];
  v24 = [v22 initWithValue:v23 type:1 label:v16];

  v25 = objc_alloc(MEMORY[0x277CD3E90]);
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID2 UUIDString];
  v28 = [v25 initWithPersonHandle:v24 nameComponents:0 displayName:@"Bob" image:0 contactIdentifier:uUIDString2 customIdentifier:0];

  if ([typeCopy isEqualToString:@"SendMessage"])
  {
    v29 = objc_alloc(MEMORY[0x277CD4078]);
    v47[0] = v21;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    v31 = [objc_alloc(MEMORY[0x277CD4188]) initWithSpokenPhrase:@"Hello"];
    v32 = [v29 initWithRecipients:v30 outgoingMessageType:0 content:@"Hello" speakableGroupName:v31 conversationIdentifier:@"Conversation" serviceName:@"Service" sender:v28 attachments:0];
  }

  else
  {
    if (![typeCopy isEqualToString:@"AudioCall"])
    {
      v34 = v21;
      v35 = 0;
      goto LABEL_7;
    }

    v33 = objc_alloc(MEMORY[0x277CD41A8]);
    v46 = v21;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    v32 = [v33 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 contacts:v30 callCapability:1];
  }

  v34 = v21;

  v35 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:v32 response:0];
LABEL_7:
  v36 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:endDateCopy];

  [v35 setDateInterval:v36];
  v37 = dispatch_semaphore_create(0);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __99___ATXInspectionServer_appIntentHistoryDonateINIntent_intentType_startDate_endDate_timeZone_reply___block_invoke;
  v44[3] = &unk_27859EE08;
  v45 = v37;
  v38 = v37;
  [v35 _donateInteractionWithBundleId:intentCopy completion:v44];

  [MEMORY[0x277D425A0] waitForSemaphore:v38 timeoutSeconds:5.0];
  replyCopy[2](replyCopy, 0);
}

- (void)appHistoryStartDeltaRecording:(id)recording
{
  recordingCopy = recording;
  v3 = +[_ATXAppPredictor sharedInstance];
  appLaunchMonitor = [v3 appLaunchMonitor];
  [appLaunchMonitor startDeltaRecording];

  recordingCopy[2](recordingCopy, 0);
}

- (void)appHistoryStopDeltaRecording:(id)recording
{
  recordingCopy = recording;
  v4 = +[_ATXAppPredictor sharedInstance];
  appLaunchMonitor = [v4 appLaunchMonitor];
  stopDeltaRecording = [appLaunchMonitor stopDeltaRecording];

  recordingCopy[2](recordingCopy, stopDeltaRecording, 0);
}

- (void)appInstallHistoryClear:(id)clear
{
  clearCopy = clear;
  v3 = +[_ATXAppInfoManager sharedInstance];
  [v3 clearAppInstallInfo];

  clearCopy[2](clearCopy, 0);
}

- (void)appInstallHistorySet:(id)set date:(id)date reply:(id)reply
{
  replyCopy = reply;
  dateCopy = date;
  setCopy = set;
  v9 = +[_ATXAppInfoManager sharedInstance];
  [v9 addInstallForBundleId:setCopy date:dateCopy];

  replyCopy[2](replyCopy, 0);
}

- (void)appInstallHistoryStartDeltaRecording:(id)recording
{
  recordingCopy = recording;
  v3 = +[_ATXAppInfoManager sharedInstance];
  [v3 startInstallDeltaRecording];

  recordingCopy[2](recordingCopy, 0);
}

- (void)appInstallHistoryStopDeltaRecording:(id)recording
{
  recordingCopy = recording;
  v4 = +[_ATXAppInfoManager sharedInstance];
  stopInstallDeltaRecording = [v4 stopInstallDeltaRecording];

  recordingCopy[2](recordingCopy, stopInstallDeltaRecording, 0);
}

- (void)feedbackClear:(id)clear
{
  clearCopy = clear;
  v3 = +[_ATXFeedback sharedInstance];
  [v3 resetData];

  v4 = +[ATXActionFeedback sharedInstance];
  [v4 resetData];

  clearCopy[2](clearCopy, 0);
}

- (void)feedbackLaunchedWithConsumerSubType:(unsigned __int8)type forBundleId:(id)id rejected:(id)rejected reply:(id)reply
{
  typeCopy = type;
  idCopy = id;
  rejectedCopy = rejected;
  replyCopy = reply;
  v12 = objc_alloc_init(ATXPredictionContextBuilder);
  predictionContextForCurrentContext = [(ATXPredictionContextBuilder *)v12 predictionContextForCurrentContext];
  if (predictionContextForCurrentContext)
  {
    v14 = [MEMORY[0x277CEBCF0] consumerTypeForSubType:typeCopy];
    v15 = +[_ATXFeedback sharedInstance];
    [v15 feedbackLaunchedWithConsumerType:v14 forBundleId:idCopy rejected:rejectedCopy explicitlyRejected:0 context:predictionContextForCurrentContext];
  }

  else
  {
    v16 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_ATXInspectionServer feedbackLaunchedWithConsumerSubType:forBundleId:rejected:reply:];
    }
  }

  replyCopy[2](replyCopy, 0);
}

- (void)predictItemsAndReturnInputsAndSubscoresForConsumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIds:(id)ids candidateActiontypes:(id)actiontypes reply:(id)reply
{
  typeCopy = type;
  intentCopy = intent;
  idsCopy = ids;
  actiontypesCopy = actiontypes;
  replyCopy = reply;
  v14 = objc_opt_new();
  v15 = +[_ATXAppPredictor sharedInstance];
  v16 = [v15 predictWithLimit:8 consumerSubType:typeCopy intent:intentCopy candidateBundleIdentifiers:idsCopy candidateActiontypes:actiontypesCopy scoreLogger:v14];

  inputsAndSubscores = [v14 inputsAndSubscores];
  replyCopy[2](replyCopy, inputsAndSubscores, 0);
}

- (void)predictItemsAndReturnMetaDataAndInputsAndSubScoresWithCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes consumerSubType:(unsigned __int8)type reply:(id)reply
{
  typeCopy = type;
  v28[3] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  actiontypesCopy = actiontypes;
  replyCopy = reply;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v21 = objc_opt_new();
  v12 = [ATXActionPredictions predictionsWithCandidateBundleIdentifiers:identifiersCopy candidateActiontypes:actiontypesCopy consumerSubType:typeCopy firstStageScoreLogger:v9 secondStageScoreLogger:v10 thirdStageScoreLogger:v11 multiStageScoreLogger:v21];
  v27[0] = @"firstStage";
  actionMetaDataItems = [v9 actionMetaDataItems];
  v28[0] = actionMetaDataItems;
  v27[1] = @"secondStage";
  actionMetaDataItems2 = [v10 actionMetaDataItems];
  v28[1] = actionMetaDataItems2;
  v27[2] = @"thirdStage";
  actionMetaDataItems3 = [v11 actionMetaDataItems];
  v28[2] = actionMetaDataItems3;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];

  v25[0] = @"firstStage";
  inputsAndSubscores = [v9 inputsAndSubscores];
  v26[0] = inputsAndSubscores;
  v25[1] = @"secondStage";
  inputsAndSubscores2 = [v10 inputsAndSubscores];
  v26[1] = inputsAndSubscores2;
  v25[2] = @"thirdStage";
  inputsAndSubscores3 = [v11 inputsAndSubscores];
  v26[2] = inputsAndSubscores3;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

  replyCopy[2](replyCopy, v16, v20, 0);
}

- (void)predictItemsAndReturnStageScoresWithCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes consumerSubType:(unsigned __int8)type reply:(id)reply
{
  typeCopy = type;
  identifiersCopy = identifiers;
  actiontypesCopy = actiontypes;
  replyCopy = reply;
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = [ATXActionPredictions predictionsWithCandidateBundleIdentifiers:identifiersCopy candidateActiontypes:actiontypesCopy consumerSubType:typeCopy firstStageScoreLogger:v12 secondStageScoreLogger:v13 thirdStageScoreLogger:v14 multiStageScoreLogger:v11];

  stageScores = [v11 stageScores];
  replyCopy[2](replyCopy, stageScores, 0);
}

- (void)getParseTreeForConsumerSubType:(unsigned __int8)type reply:(id)reply
{
  typeCopy = type;
  replyCopy = reply;
  v6 = [_ATXAppPredictor getParseTreeForConsumerSubType:typeCopy];
  replyCopy[2](replyCopy, v6, 0);
}

- (void)getPredictionModelDetailsForConsumerSubType:(unsigned __int8)type reply:(id)reply
{
  typeCopy = type;
  replyCopy = reply;
  v6 = +[_ATXAppPredictor sharedInstance];
  v9 = [v6 getPredictionModelDetailsForConsumerSubType:typeCopy];

  v7 = +[_ATXAppPredictor sharedInstance];
  getABGroups = [v7 getABGroups];

  replyCopy[2](replyCopy, v9, getABGroups, 0);
}

- (void)benchmarkAppPredictionForConsumerSubType:(unsigned __int8)type ntimes:(unint64_t)ntimes reply:(id)reply
{
  typeCopy = type;
  replyCopy = reply;
  if (*&benchmarkAppPredictionForConsumerSubType_ntimes_reply__msPerTick == 0.0)
  {
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v9) = info.denom;
    LODWORD(v8) = info.numer;
    *&benchmarkAppPredictionForConsumerSubType_ntimes_reply__msPerTick = v8 / v9 * 0.000001;
  }

  for (i = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ntimes]; ntimes; --ntimes)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = mach_absolute_time();
    v13 = +[_ATXAppPredictor sharedInstance];
    v14 = [v13 predictWithLimit:8 consumerSubType:typeCopy intent:0 candidateBundleIdentifiers:0 candidateActiontypes:0 scoreLogger:0];

    v15 = [MEMORY[0x277CCABB0] numberWithDouble:*&benchmarkAppPredictionForConsumerSubType_ntimes_reply__msPerTick * (mach_absolute_time() - v12)];
    [i addObject:v15];

    objc_autoreleasePoolPop(v11);
  }

  replyCopy[2](replyCopy, i, 0);
}

- (void)createAppPredictionLogs:(id)logs
{
  v27 = *MEMORY[0x277D85DE8];
  logsCopy = logs;
  v3 = +[ATXPredictionJSONScoreLogger sharedInstance];
  v4 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [&unk_283A589A0 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(&unk_283A589A0);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        dispatch_group_enter(v4);
        LOBYTE(v9) = [v9 unsignedIntegerValue];
        v11 = +[_ATXAppPredictor sharedInstance];
        v12 = [v11 predictWithLimit:8 consumerSubType:v9 intent:0 candidateBundleIdentifiers:0 candidateActiontypes:0 scoreLogger:v3];

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __48___ATXInspectionServer_createAppPredictionLogs___block_invoke;
        v20[3] = &unk_278596BB8;
        v21 = v4;
        [v3 flushWithCompletion:v20];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [&unk_283A589A0 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v13 = MEMORY[0x277D425A0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48___ATXInspectionServer_createAppPredictionLogs___block_invoke_134;
  v18[3] = &unk_2785969B8;
  v19 = logsCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48___ATXInspectionServer_createAppPredictionLogs___block_invoke_135;
  v16[3] = &unk_2785969B8;
  v17 = v19;
  v14 = v19;
  [v13 waitForGroup:v4 timeoutSeconds:v18 onGroupComplete:v16 onTimeout:3.0];
}

- (void)_getActionLogs:(id)logs obfuscation:(BOOL)obfuscation
{
  obfuscationCopy = obfuscation;
  v68 = *MEMORY[0x277D85DE8];
  logsCopy = logs;
  v6 = +[_ATXDataStore sharedInstance];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v40 = logsCopy;
  if (obfuscationCopy)
  {
    bundleIdMapping = [v6 bundleIdMapping];
  }

  else
  {
    bundleIdMapping = 0;
  }

  v47 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [v6 actionLogKeys];
  v9 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
  v46 = v6;
  if (v9)
  {
    v10 = v9;
    v43 = *v61;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v61 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v60 + 1) + 8 * i);
        first = [v12 first];
        second = [v12 second];
        if (obfuscationCopy)
        {
          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v16 = [bundleIdMapping objectForKeyedSubscript:first];
          v17 = [v15 initWithFormat:@"bundle-id-%@", v16];
        }

        else
        {
          v17 = first;
        }

        v18 = [v7 objectForKeyedSubscript:v17];

        if (!v18)
        {
          v19 = objc_opt_new();
          [v7 setObject:v19 forKeyedSubscript:v17];
        }

        v20 = [v7 objectForKeyedSubscript:v17];
        v21 = [v20 objectForKeyedSubscript:second];

        if (!v21)
        {
          v21 = objc_opt_new();
          v22 = [v7 objectForKeyedSubscript:v17];
          [v22 setObject:v21 forKeyedSubscript:second];
        }

        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __51___ATXInspectionServer__getActionLogs_obfuscation___block_invoke;
        v56[3] = &unk_27859F9E0;
        v59 = obfuscationCopy;
        v57 = v47;
        v58 = v21;
        v23 = v21;
        v6 = v46;
        [v46 enumerateActionOfType:second bundleId:first block:v56];
      }

      v10 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v10);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obja = [v6 actionFeedbackLogKeys];
  v24 = [obja countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v24)
  {
    v25 = v24;
    v44 = *v53;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v53 != v44)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v52 + 1) + 8 * j);
        first2 = [v27 first];
        second2 = [v27 second];
        if (obfuscationCopy)
        {
          v30 = objc_alloc(MEMORY[0x277CCACA8]);
          v31 = [bundleIdMapping objectForKeyedSubscript:first2];
          v32 = [v30 initWithFormat:@"bundle-id-%@", v31];
        }

        else
        {
          v32 = first2;
        }

        v33 = [v8 objectForKeyedSubscript:v32];

        if (!v33)
        {
          v34 = objc_opt_new();
          [v8 setObject:v34 forKeyedSubscript:v32];
        }

        v35 = [v8 objectForKeyedSubscript:v32];
        v36 = [v35 objectForKeyedSubscript:second2];

        if (!v36)
        {
          v36 = objc_opt_new();
          v37 = [v8 objectForKeyedSubscript:v32];
          [v37 setObject:v36 forKeyedSubscript:second2];
        }

        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __51___ATXInspectionServer__getActionLogs_obfuscation___block_invoke_2;
        v48[3] = &unk_27859FA08;
        v51 = obfuscationCopy;
        v49 = v47;
        v50 = v36;
        v38 = v36;
        v6 = v46;
        [v46 enumerateFeedbackForActionOfType:second2 bundleId:first2 block:v48];
      }

      v25 = [obja countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v25);
  }

  v64[0] = @"actions";
  v64[1] = @"feedback";
  v65[0] = v7;
  v65[1] = v8;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
  (v40)[2](v40, v39, 0);
}

- (void)histogramsInMemory:(id)memory
{
  memoryCopy = memory;
  v4 = objc_opt_new();
  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43___ATXInspectionServer_histogramsInMemory___block_invoke;
  v15[3] = &unk_27859FA30;
  v6 = v4;
  v16 = v6;
  [v5 enumerateInMemoryHistogramsWithBlock:v15];

  v7 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __43___ATXInspectionServer_histogramsInMemory___block_invoke_2;
  v13 = &unk_27859FA58;
  v14 = v6;
  v8 = v6;
  [v7 enumerateInMemoryCategoricalHistogramsWithBlock:&v10];

  v9 = [v8 copy];
  memoryCopy[2](memoryCopy, v9, 0);
}

- (void)histogramsInMemoryBySize:(id)size
{
  sizeCopy = size;
  v4 = +[_ATXDataStore sharedInstance];
  v5 = objc_opt_new();
  v6 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49___ATXInspectionServer_histogramsInMemoryBySize___block_invoke;
  v20[3] = &unk_27859FA80;
  v7 = v4;
  v21 = v7;
  v8 = v5;
  v22 = v8;
  [v6 enumerateInMemoryHistogramsWithBlock:v20];

  v9 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __49___ATXInspectionServer_histogramsInMemoryBySize___block_invoke_2;
  v17 = &unk_27859FAA8;
  v18 = v7;
  v19 = v8;
  v10 = v8;
  v11 = v7;
  [v9 enumerateInMemoryCategoricalHistogramsWithBlock:&v14];

  v12 = [v10 sortedArrayUsingComparator:{&__block_literal_global_232, v14, v15, v16, v17}];
  v13 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_235];
  sizeCopy[2](sizeCopy, v13, 0);
}

- (void)allHistogramsBySize:(id)size
{
  v21[1] = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v3 = +[_ATXDataStore sharedInstance];
  v4 = objc_opt_new();
  for (i = 0; i != 114; ++i)
  {
    v6 = [v3 histogramDataForHistogramType:i];
    if (v6)
    {
      v7 = v6;
      v8 = [_ATXDataStore stringForHistogramType:i];
      v20 = v8;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
      v21[0] = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = v21;
      v12 = &v20;
    }

    else
    {
      v13 = [v3 categoricalHistogramDataForHistogramType:i];
      if (!v13)
      {
        continue;
      }

      v7 = v13;
      v8 = [_ATXDataStore stringForHistogramType:i];
      v18 = v8;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
      v19 = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v19;
      v12 = &v18;
    }

    v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    [v4 addObject:v14];
  }

  v15 = [v4 sortedArrayUsingComparator:&__block_literal_global_240];
  v16 = [v15 _pas_mappedArrayWithTransform:&__block_literal_global_242];
  sizeCopy[2](sizeCopy, v16, 0);
}

- (void)retrainActionHistograms:(id)histograms
{
  histogramsCopy = histograms;
  +[_ATXActionUtils prefillActionHistograms];
  histogramsCopy[2](histogramsCopy, 0);
}

- (void)retrainActionSlotDatabase:(id)database
{
  databaseCopy = database;
  +[_ATXActionUtils prefillActionSlotDatabase];
  databaseCopy[2](databaseCopy, 0);
}

- (void)resetHistogramsAndRemoveUICaches:(id)caches
{
  cachesCopy = caches;
  +[_ATXActionUtils resetHistogramsAndRemoveUICaches];
  cachesCopy[2](cachesCopy, 0);
}

- (void)resetActionPredictions:(id)predictions
{
  predictionsCopy = predictions;
  +[_ATXActionUtils resetActionPredictions];
  predictionsCopy[2](predictionsCopy, 0);
}

- (void)getAppFeedbackData:(id)data
{
  v50[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = +[_ATXFeedback sharedInstance];
  v49[0] = @"baseAlpha";
  v5 = MEMORY[0x277CCABB0];
  +[_ATXFeedbackConstants baseAlpha];
  v6 = [v5 numberWithDouble:?];
  v50[0] = v6;
  v49[1] = @"baseBeta";
  v7 = MEMORY[0x277CCABB0];
  +[_ATXFeedbackConstants baseBeta];
  v8 = [v7 numberWithDouble:?];
  v50[1] = v8;
  v49[2] = @"currentAlpha";
  v9 = MEMORY[0x277CCABB0];
  [v4 currentAlpha];
  v10 = [v9 numberWithDouble:?];
  v50[2] = v10;
  v49[3] = @"currentBeta";
  v11 = MEMORY[0x277CCABB0];
  v41 = v4;
  [v4 currentBeta];
  v12 = [v11 numberWithDouble:?];
  v50[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];

  v14 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v14 allInstalledAppsKnownToSpringBoard];
  v43 = [allInstalledAppsKnownToSpringBoard count];
  v16 = 8 * v43;
  v17 = malloc_type_malloc(8 * v43, 0x100004000313F17uLL);
  if (!v17 || (v18 = v17, v40 = v13, v19 = 0x277CCA000uLL, (v20 = malloc_type_malloc(v16, 0x100004000313F17uLL)) == 0) || (v21 = v20, v38 = v14, v39 = dataCopy, (v22 = malloc_type_malloc(v16, 0x100004000313F17uLL)) == 0))
  {
    v37 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v37);
  }

  v23 = v22;
  [v41 putFeedbackScoresForApps:allInstalledAppsKnownToSpringBoard intoScores:v18 confirms:v21 rejects:v22];
  v42 = objc_opt_new();
  v24 = 0x277CBE000uLL;
  v25 = allInstalledAppsKnownToSpringBoard;
  if (v43)
  {
    for (i = 0; i != v43; ++i)
    {
      v47[0] = @"score";
      v44 = [*(v19 + 2992) numberWithDouble:v18[i]];
      v48[0] = v44;
      v47[1] = @"confirms";
      v27 = [*(v19 + 2992) numberWithDouble:v21[i]];
      v48[1] = v27;
      v47[2] = @"rejects";
      v28 = [*(v19 + 2992) numberWithDouble:v23[i]];
      v48[2] = v28;
      v29 = [*(v24 + 2752) dictionaryWithObjects:v48 forKeys:v47 count:3];
      [v25 objectAtIndexedSubscript:i];
      v30 = v24;
      v31 = v23;
      v32 = v21;
      v33 = v18;
      v35 = v34 = v25;
      [v42 setObject:v29 forKeyedSubscript:v35];

      v25 = v34;
      v18 = v33;
      v21 = v32;
      v23 = v31;
      v24 = v30;

      v19 = 0x277CCA000;
    }
  }

  free(v18);
  free(v21);
  free(v23);
  v45[0] = @"params";
  v45[1] = @"apps";
  v46[0] = v40;
  v46[1] = v42;
  v36 = [*(v24 + 2752) dictionaryWithObjects:v46 forKeys:v45 count:2];
  (v39)[2](v39, v36, 0);
}

- (void)trainMagicalMomentsAppPredictor:(id)predictor
{
  predictorCopy = predictor;
  v3 = +[ATXMagicalMomentsAppPredictor sharedInstance];
  [v3 trainWithTask:0];

  predictorCopy[2](predictorCopy, 1, 0);
}

- (void)forceMagicalMomentsAppPredictionForBundleId:(id)id expert:(id)expert reply:(id)reply
{
  v22[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  expertCopy = expert;
  replyCopy = reply;
  v10 = __atxlog_handle_default(replyCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_ATXInspectionServer forceMagicalMomentsAppPredictionForBundleId:expert:reply:];
  }

  v11 = NSClassFromString(expertCopy);
  v12 = [(objc_class *)v11 isSubclassOfClass:objc_opt_class()];
  if (v12)
  {
    NSClassFromString(expertCopy);
    v13 = objc_opt_new();
    v14 = [[ATXMagicalMomentsPrediction alloc] initWithConfidence:idCopy predictionIdentifier:1.0];
    v15 = objc_opt_class();
    sampleEventForExpert = [objc_opt_class() sampleEventForExpert];
    v20 = v14;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [v15 broadcastMMPredictionsForEvent:sampleEventForExpert predictions:v17];

    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v18 = __atxlog_handle_default(v12);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_ATXInspectionServer forceMagicalMomentsAppPredictionForBundleId:expert:reply:];
    }

    v19 = objc_alloc(MEMORY[0x277CCA9B8]);
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"ATXMM: Tried to force a MagicalMoments App Prediction with an unrecognized expert. Terminating operation.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v19 initWithDomain:@"ATXMM" code:-1 userInfo:v13];
    (replyCopy)[2](replyCopy, 0, v14);
  }
}

- (void)dumpPredictionTableForMMExpert:(id)expert reply:(id)reply
{
  v16[1] = *MEMORY[0x277D85DE8];
  expertCopy = expert;
  replyCopy = reply;
  v7 = __atxlog_handle_default(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_ATXInspectionServer dumpPredictionTableForMMExpert:expertCopy reply:v7];
  }

  v8 = NSClassFromString(expertCopy);
  v9 = [(objc_class *)v8 isSubclassOfClass:objc_opt_class()];
  if (v9)
  {
    NSClassFromString(expertCopy);
    v10 = objc_opt_new();
    predictionTable = [objc_opt_class() predictionTable];
    describeTable = [predictionTable describeTable];
    replyCopy[2](replyCopy, describeTable, 0);
  }

  else
  {
    v13 = __atxlog_handle_default(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_ATXInspectionServer forceMagicalMomentsAppPredictionForBundleId:expert:reply:];
    }

    v14 = objc_alloc(MEMORY[0x277CCA9B8]);
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"ATXMM: Tried to force a MagicalMoments App Prediction with an unrecognized expert. Terminating operation.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    predictionTable = [v14 initWithDomain:@"ATXMM" code:-1 userInfo:v10];
    (replyCopy)[2](replyCopy, 0, predictionTable);
  }
}

- (void)evaluateInfoSuggestionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[ATXInfoSuggestionServer sharedInstance];
  [v4 refreshInfoSuggestionsWithCompletionHandler:handlerCopy];
}

- (void)getInfoSuggestionsInString:(id)string
{
  stringCopy = string;
  v4 = +[ATXInfoSuggestionServer sharedInstance];
  infoEngine = [v4 infoEngine];
  allRelevantInfoSuggestions = [infoEngine allRelevantInfoSuggestions];

  v6 = [allRelevantInfoSuggestions componentsJoinedByString:@"\n"];
  stringCopy[2](stringCopy, v6, 0);
}

- (void)fetchSuggestionsForSourceId:(id)id reply:(id)reply
{
  replyCopy = reply;
  idCopy = id;
  v7 = +[ATXInfoSuggestionServer sharedInstance];
  infoEngine = [v7 infoEngine];
  v10 = [infoEngine allInfoSuggestionsForSourceId:idCopy];

  v9 = [v10 componentsJoinedByString:@"\n"];
  replyCopy[2](replyCopy, v9, 0);
}

- (void)widgetBundleIdentifiersForAllInfoSuggestionsInString:(id)string
{
  v21 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = +[ATXInfoSuggestionServer sharedInstance];
  infoEngine = [v4 infoEngine];
  allInfoSuggestions = [infoEngine allInfoSuggestions];

  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = allInfoSuggestions;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        widgetBundleIdentifier = [*(*(&v16 + 1) + 8 * v12) widgetBundleIdentifier];
        [v7 addObject:widgetBundleIdentifier];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  allObjects = [v7 allObjects];
  v15 = [allObjects componentsJoinedByString:@"\n"];
  stringCopy[2](stringCopy, v15, 0);
}

- (void)getInfoPredictionsInString:(id)string
{
  stringCopy = string;
  v4 = +[ATXInfoSuggestionServer sharedInstance];
  infoEngine = [v4 infoEngine];
  currentPredictions = [infoEngine currentPredictions];

  v6 = [currentPredictions componentsJoinedByString:@"\n"];
  stringCopy[2](stringCopy, v6, 0);
}

- (void)rankAndReturnInfoPredictionsInString:(id)string
{
  stringCopy = string;
  v4 = +[ATXInfoSuggestionServer sharedInstance];
  infoEngine = [v4 infoEngine];
  forceUpdateAndReturnPredictions = [infoEngine forceUpdateAndReturnPredictions];

  v6 = [forceUpdateAndReturnPredictions componentsJoinedByString:@"\n"];
  stringCopy[2](stringCopy, v6, 0);
}

- (void)getModeTimelineDataFromStartDate:(id)date reply:(id)reply
{
  replyCopy = reply;
  dateCopy = date;
  v7 = +[ATXNotificationsLoggingServer sharedInstance];
  [v7 getModeTimelineDataFromStartDate:dateCopy reply:replyCopy];
}

- (void)lockScreenBundleIdsWithReply:(id)reply
{
  replyCopy = reply;
  v6 = +[ATXNotificationsLoggingServer sharedInstance];
  getLockscreenBundleIds = [v6 getLockscreenBundleIds];
  (*(reply + 2))(replyCopy, getLockscreenBundleIds, 0);
}

- (void)appLaunchInformationWithReply:(id)reply
{
  replyCopy = reply;
  v4 = __atxlog_handle_default(replyCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_ATXInspectionServer appLaunchInformationWithReply:];
  }

  v5 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v5 appLaunchInformationWithReply:replyCopy];
}

- (void)categoryLaunchInformationWithReply:(id)reply
{
  replyCopy = reply;
  v4 = __atxlog_handle_default(replyCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_ATXInspectionServer categoryLaunchInformationWithReply:];
  }

  v5 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v5 categoryLaunchInformationWithReply:replyCopy];
}

- (void)appLaunchDatesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = __atxlog_handle_default(replyCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_ATXInspectionServer categoryLaunchInformationWithReply:];
  }

  v5 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v5 appLaunchDatesWithReply:replyCopy];
}

- (void)updateAppDirectoryCache:(id)cache
{
  cacheCopy = cache;
  v4 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48___ATXInspectionServer_updateAppDirectoryCache___block_invoke;
  v6[3] = &unk_27859A480;
  v7 = cacheCopy;
  v5 = cacheCopy;
  [v4 updateCacheWithActivity:0 completionHandler:v6];
}

- (void)refreshBlendingLayer:(id)layer
{
  layerCopy = layer;
  v8 = objc_opt_new();
  cachedSuggestionsForAllClientModels = [v8 cachedSuggestionsForAllClientModels];
  v5 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v5 blendingLayerServer];
  blendingLayer = [blendingLayerServer blendingLayer];

  [blendingLayer updateSuggestionsForAllConsumerSubTypesWithClientModelSuggestions:cachedSuggestionsForAllClientModels];
  layerCopy[2](layerCopy, 0);
}

- (void)promoteSuggestionsFromClientModel:(id)model reply:(id)reply
{
  replyCopy = reply;
  modelCopy = model;
  v7 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v7 blendingLayerServer];
  blendingLayer = [blendingLayerServer blendingLayer];

  [blendingLayer promoteSuggestionsFromClientModelWithIdentifier:modelCopy];
  v9 = objc_opt_new();
  cachedSuggestionsForAllClientModels = [v9 cachedSuggestionsForAllClientModels];
  [blendingLayer updateSuggestionsForAllConsumerSubTypesWithClientModelSuggestions:cachedSuggestionsForAllClientModels];
  replyCopy[2](replyCopy, 0);
}

- (void)donateSuggestion:(id)suggestion forClientModel:(int64_t)model withReply:(id)reply
{
  v7 = MEMORY[0x277D42070];
  replyCopy = reply;
  suggestionCopy = suggestion;
  v20 = [v7 clientModelIdFromClientModelType:model];
  v10 = objc_alloc(MEMORY[0x277D42070]);
  v11 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v11 blendingLayerServer];
  v13 = [v10 initWithClientModelId:v20 blendingLayerServer:blendingLayerServer];

  v14 = objc_opt_new();
  cachedSuggestionsForAllClientModels = [v14 cachedSuggestionsForAllClientModels];

  v16 = MEMORY[0x277CBEB18];
  v17 = [cachedSuggestionsForAllClientModels objectForKeyedSubscript:v20];
  suggestions = [v17 suggestions];
  v19 = [v16 arrayWithArray:suggestions];

  [v19 addObject:suggestionCopy];
  [v13 updateSuggestions:v19];
  replyCopy[2](replyCopy, 0);
}

- (void)clearBlendingSuggestionsForClientModel:(int64_t)model withReply:(id)reply
{
  v5 = MEMORY[0x277D42070];
  replyCopy = reply;
  v11 = [v5 clientModelIdFromClientModelType:model];
  v7 = objc_alloc(MEMORY[0x277D42070]);
  v8 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v8 blendingLayerServer];
  v10 = [v7 initWithClientModelId:v11 blendingLayerServer:blendingLayerServer];

  [v10 updateSuggestions:MEMORY[0x277CBEBF8]];
  replyCopy[2](replyCopy, 0);
}

- (void)blendedSuggestionsForConsumerSubType:(unsigned __int8)type reply:(id)reply
{
  replyCopy = reply;
  v5 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v5 blendingLayerServer];
  blendingLayer = [blendingLayerServer blendingLayer];

  v7 = objc_opt_new();
  cachedSuggestionsForAllClientModels = [v7 cachedSuggestionsForAllClientModels];
  v9 = [blendingLayer rerankedValidSuggestionsFromClientModelSuggestions:cachedSuggestionsForAllClientModels];
  replyCopy[2](replyCopy, v9, 0);
}

- (void)buildAnchorModelTrainingDataset:(id)dataset
{
  datasetCopy = dataset;
  v3 = objc_opt_new();
  [v3 addNewTrainingSamplesToDatabase];

  datasetCopy[2](datasetCopy, 0);
}

- (void)trainAnchorModel:(id)model
{
  modelCopy = model;
  v3 = objc_opt_new();
  [v3 train];

  modelCopy[2](modelCopy, 0);
}

- (void)scheduledPredictionsForAnchorModelWithReply:(id)reply
{
  replyCopy = reply;
  v5 = objc_opt_new();
  predictions = [v5 predictions];
  replyCopy[2](replyCopy, predictions, 0);
}

- (void)validPredictionsRightNowForAnchorModelWithReply:(id)reply
{
  replyCopy = reply;
  v5 = objc_opt_new();
  predictionsValidNow = [v5 predictionsValidNow];
  replyCopy[2](replyCopy, predictionsValidNow, 0);
}

- (void)schedulePredictionsForAnchorModel:(id)model anchorType:(id)type reply:(id)reply
{
  replyCopy = reply;
  modelCopy = model;
  [ATXAnchor anchorClassFromAnchorTypeString:type];
  v10 = objc_opt_new();
  v9 = objc_opt_new();
  [v9 schedulePredictions:modelCopy anchor:v10];

  replyCopy[2](replyCopy, 0);
}

- (void)processLockscreenFeedbackWithReply:(id)reply
{
  replyCopy = reply;
  v3 = +[ATXUpdatePredictionsManager sharedInstance];
  [v3 processLockscreenFeedback];

  replyCopy[2](replyCopy, 0);
}

- (void)processHomeScreenFeedbackWithReply:(id)reply
{
  replyCopy = reply;
  v3 = +[ATXUpdatePredictionsManager sharedInstance];
  [v3 processHomeScreenFeedback];

  replyCopy[2](replyCopy, 0);
}

- (void)processSpotlightAppFeedbackWithReply:(id)reply
{
  replyCopy = reply;
  v3 = +[ATXUpdatePredictionsManager sharedInstance];
  [v3 processSpotlightAppFeedback];

  replyCopy[2](replyCopy, 0);
}

- (void)processSpotlightActionFeedbackWithReply:(id)reply
{
  replyCopy = reply;
  v3 = +[ATXUpdatePredictionsManager sharedInstance];
  [v3 processSpotlightActionFeedback];

  replyCopy[2](replyCopy, 0);
}

- (void)processAppDirectoryFeedbackWithReply:(id)reply
{
  replyCopy = reply;
  v3 = +[ATXUpdatePredictionsManager sharedInstance];
  [v3 processAppDirectoryFeedback];

  replyCopy[2](replyCopy, 0);
}

- (void)performHomeScreenCoreAnalyticsDryRunWithCustomStartDate:(id)date reply:(id)reply
{
  replyCopy = reply;
  dateCopy = date;
  v7 = objc_opt_new();
  [v7 uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:0 customStartDate:dateCopy dryRunCompletionHandler:replyCopy];
}

- (void)nPlusOneStudyDryRunResultFilterByExtensionBundleId:(id)id reply:(id)reply
{
  replyCopy = reply;
  idCopy = id;
  v7 = objc_opt_new();
  [v7 dryRunResultFilterByExtensionBundleId:idCopy completionHandler:replyCopy];
}

- (void)trainModeEntityModelsWithDeferTrainingWhenApplicable:(BOOL)applicable reply:(id)reply
{
  applicableCopy = applicable;
  replyCopy = reply;
  v5 = objc_opt_new();
  [v5 trainWithShouldDeferTrainingOnBackupRestoreOrUpgrade:applicableCopy];

  replyCopy[2](replyCopy, 0);
}

- (void)trainModeSetupPredictionModelWithReply:(id)reply
{
  replyCopy = reply;
  v3 = objc_opt_new();
  [v3 train];

  replyCopy[2](replyCopy, 0);
}

- (void)inspectInferredActivitySessionStream:(id)stream fromTimestamp:(double)timestamp reply:(id)reply
{
  v18 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  replyCopy = reply;
  v9 = __atxlog_handle_default(replyCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = 138412802;
    v13 = v11;
    v14 = 2112;
    v15 = streamCopy;
    v16 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "[%@] Inspecting stream %@ from timestamp %f", &v12, 0x20u);
  }

  [ATXUnifiedInferredActivityBiomeInspector retrieveInferredActivitySessionsFromPublisherName:streamCopy startTime:replyCopy reply:timestamp];
}

- (void)inspectInferredActivityTransitionStream:(id)stream fromTimestamp:(double)timestamp reply:(id)reply
{
  v18 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  replyCopy = reply;
  v9 = __atxlog_handle_default(replyCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = 138412802;
    v13 = v11;
    v14 = 2112;
    v15 = streamCopy;
    v16 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "[%@] Inspecting stream %@ from timestamp %f", &v12, 0x20u);
  }

  [ATXUnifiedInferredActivityBiomeInspector retrieveInferredActivityTransitionsFromPublisherName:streamCopy startTime:replyCopy reply:timestamp];
}

- (void)forceNotificationAndSuggestionDbUpdate:(id)update
{
  v10 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v4 = __atxlog_handle_default(updateCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_INFO, "[%@] Forcing notification and suggestion DB update", &v8, 0xCu);
  }

  v7 = objc_opt_new();
  [v7 updateDatabase];
  updateCopy[2](updateCopy, 0);
}

- (void)generateSerializedNotificationDigestFromFileData:(id)data digestTimeString:(id)string reply:(id)reply
{
  replyCopy = reply;
  stringCopy = string;
  dataCopy = data;
  v10 = objc_opt_new();
  v13 = 0;
  v11 = [v10 fetchSerializedNotificationDigestFromFileData:dataCopy digestTimeString:stringCopy outError:&v13];

  v12 = v13;
  replyCopy[2](replyCopy, v11, v12);
}

- (void)generateSerializedNotificationDigestFromSource:(id)source digestTimeString:(id)string startDate:(id)date endDate:(id)endDate inferMessages:(BOOL)messages reply:(id)reply
{
  messagesCopy = messages;
  replyCopy = reply;
  endDateCopy = endDate;
  dateCopy = date;
  stringCopy = string;
  sourceCopy = source;
  v18 = objc_opt_new();
  v21 = 0;
  v19 = [v18 fetchSerializedNotificationDigestFromSource:sourceCopy digestTimeString:stringCopy startDate:dateCopy endDate:endDateCopy shouldInferMessages:messagesCopy outError:&v21];

  v20 = v21;
  replyCopy[2](replyCopy, v19, v20);
}

- (void)generateSerializedAppGroupedNotificationDigestFromSource:(id)source digestTimeString:(id)string startDate:(id)date endDate:(id)endDate inferMessages:(BOOL)messages reply:(id)reply
{
  messagesCopy = messages;
  replyCopy = reply;
  endDateCopy = endDate;
  dateCopy = date;
  stringCopy = string;
  sourceCopy = source;
  v18 = objc_opt_new();
  v21 = 0;
  v19 = [v18 fetchSerializedAppGroupedNotificationDigestFromSource:sourceCopy digestTimeString:stringCopy startDate:dateCopy endDate:endDateCopy shouldInferMessages:messagesCopy outError:&v21];

  v20 = v21;
  replyCopy[2](replyCopy, v19, v20);
}

- (void)generateSerializedMissedNotificationBundleFromFileData:(id)data modeString:(id)string reply:(id)reply
{
  replyCopy = reply;
  stringCopy = string;
  dataCopy = data;
  v10 = objc_opt_new();
  v13 = 0;
  v11 = [v10 fetchSerializedMissedNotificationRankingFromFileData:dataCopy modeString:stringCopy outError:&v13];

  v12 = v13;
  replyCopy[2](replyCopy, v11, v12);
}

- (void)generateSerializedMissedNotificationBundleFromSource:(id)source modeString:(id)string startDate:(id)date endDate:(id)endDate inferMessages:(BOOL)messages reply:(id)reply
{
  messagesCopy = messages;
  replyCopy = reply;
  endDateCopy = endDate;
  dateCopy = date;
  stringCopy = string;
  sourceCopy = source;
  v18 = objc_opt_new();
  v21 = 0;
  v19 = [v18 fetchSerializedMissedNotificationRankingFromSource:sourceCopy modeString:stringCopy startDate:dateCopy endDate:endDateCopy shouldInferMessages:messagesCopy outError:&v21];

  v20 = v21;
  replyCopy[2](replyCopy, v19, v20);
}

- (void)dumpNotificationJSONFromSource:(id)source startDate:(id)date endDate:(id)endDate inferMessages:(BOOL)messages reply:(id)reply
{
  messagesCopy = messages;
  replyCopy = reply;
  endDateCopy = endDate;
  dateCopy = date;
  sourceCopy = source;
  v15 = objc_opt_new();
  v18 = 0;
  v16 = [v15 fetchSerializedNotificationsFromSource:sourceCopy startDate:dateCopy endDate:endDateCopy shouldInferMessages:messagesCopy outError:&v18];

  v17 = v18;
  replyCopy[2](replyCopy, v16, v17);
}

- (void)clearNotificationsWithReply:(id)reply
{
  replyCopy = reply;
  v4 = objc_opt_new();
  v6 = 0;
  [v4 clearAllNotificationData:&v6];
  v5 = v6;
  replyCopy[2](replyCopy, v5);
}

- (void)showDigestFeedbackHistogramForBundleId:(id)id withReply:(id)reply
{
  replyCopy = reply;
  idCopy = id;
  v7 = objc_opt_new();
  [v7 showHistogramForBundleId:idCopy withReply:replyCopy];
}

- (void)addToDigestFeedbackHistogramForBundleId:(id)id location:(id)location feedback:(id)feedback withReply:(id)reply
{
  replyCopy = reply;
  feedbackCopy = feedback;
  locationCopy = location;
  idCopy = id;
  v13 = objc_opt_new();
  [v13 addToHistogramForBundleId:idCopy location:locationCopy feedback:feedbackCopy withReply:replyCopy];
}

- (void)setDigestFeedbackHistogramValueForBundleId:(id)id location:(id)location feedback:(id)feedback value:(id)value withReply:(id)reply
{
  replyCopy = reply;
  valueCopy = value;
  feedbackCopy = feedback;
  locationCopy = location;
  idCopy = id;
  v16 = objc_opt_new();
  [v16 setHistogramValueForBundleId:idCopy location:locationCopy feedback:feedbackCopy value:valueCopy withReply:replyCopy];
}

- (void)clearDigestFeedbackHistogramWithShouldResetBookmarks:(BOOL)bookmarks reply:(id)reply
{
  bookmarksCopy = bookmarks;
  replyCopy = reply;
  v6 = objc_opt_new();
  [v6 clearHistogramWithShouldResetBookmarks:bookmarksCopy reply:replyCopy];
}

- (void)getCurrentLocationWithReply:(id)reply
{
  v3 = MEMORY[0x277D41BF8];
  replyCopy = reply;
  sharedInstance = [v3 sharedInstance];
  getCurrentLocation = [sharedInstance getCurrentLocation];
  replyCopy[2](replyCopy, getCurrentLocation, 0);
}

- (void)generateDataForStressTestWithReply:(id)reply
{
  replyCopy = reply;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59___ATXInspectionServer_generateDataForStressTestWithReply___block_invoke;
  v6[3] = &unk_278598B30;
  v7 = replyCopy;
  v5 = replyCopy;
  [v4 setupForStressCyclerWithCompletion:v6];
}

- (void)clearAllDataForStressTestWithReply:(id)reply
{
  replyCopy = reply;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59___ATXInspectionServer_clearAllDataForStressTestWithReply___block_invoke;
  v6[3] = &unk_278598B30;
  v7 = replyCopy;
  v5 = replyCopy;
  [v4 clearAllDataForStressCyclerWithCompletion:v6];
}

- (void)fetchPosterDescriptorsWithReply:(id)reply
{
  replyCopy = reply;
  v7 = +[ATXPosterDescriptorCache sharedInstance];
  allDescriptors = [v7 allDescriptors];
  allObjects = [allDescriptors allObjects];
  (*(reply + 2))(replyCopy, allObjects, 0);
}

- (void)logNotificationMetricsFromStartTimestamp:(id)timestamp toEndTimestamp:(id)endTimestamp withCompletion:(id)completion
{
  completionCopy = completion;
  endTimestampCopy = endTimestamp;
  timestampCopy = timestamp;
  v10 = [ATXNotificationTelemetryLogger alloc];
  v11 = objc_opt_new();
  v12 = [(ATXNotificationTelemetryLogger *)v10 initWithContactStore:v11];

  [(ATXNotificationTelemetryLogger *)v12 logNotificationMetricsFromStartTimestamp:timestampCopy toEndTimestamp:endTimestampCopy withTask:0];
  completionCopy[2](completionCopy, 0);
}

- (void)setTestMode:(BOOL)mode withCompletion:(id)completion
{
  modeCopy = mode;
  v5 = MEMORY[0x277D42590];
  completionCopy = completion;
  if ([v5 isInternalBuild])
  {
    mEMORY[0x277CEBC70] = [MEMORY[0x277CEBC70] sharedInstance];
    [mEMORY[0x277CEBC70] setTestMode:modeCopy];

    completionCopy[2](completionCopy, 0);
    v7 = completionCopy;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:5 userInfo:0];
    completionCopy[2](completionCopy, v8);

    v7 = v8;
  }
}

- (void)triggerPredictionsUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277CEBC70] = [MEMORY[0x277CEBC70] sharedInstance];
  isTestModeEnabled = [mEMORY[0x277CEBC70] isTestModeEnabled];

  if (isTestModeEnabled)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("ATXUpdatePredictionsTesting", v7);

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63___ATXInspectionServer_triggerPredictionsUpdateWithCompletion___block_invoke;
    block[3] = &unk_2785969B8;
    v11 = completionCopy;
    dispatch_sync(v8, block);
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:5 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v9);
  }
}

- (void)triggerBackgroundJobWithIdentifier:(id)identifier configuration:(id)configuration completion:(id)completion
{
  v7 = MEMORY[0x277CEB3D0];
  completionCopy = completion;
  configurationCopy = configuration;
  identifierCopy = identifier;
  v13 = [[v7 alloc] initForTestingWithIdentifier:identifierCopy configuration:configurationCopy];

  LODWORD(configurationCopy) = [identifierCopy isEqualToString:@"com.apple.duetexpertd.atxtrain"];
  if (configurationCopy)
  {
    v11 = +[_ATXAppPredictor sharedInstance];
    [v11 trainWithTask:v13];

    resultStatusForJob = [v13 resultStatusForJob];
    completionCopy[2](completionCopy, resultStatusForJob, 0);
  }

  else
  {
    resultStatusForJob = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:3 userInfo:0];
    (completionCopy)[2](completionCopy, 0, resultStatusForJob);
  }
}

- (void)fetchPIDFromServer:(id)server
{
  v4 = MEMORY[0x277CCABB0];
  serverCopy = server;
  v6 = [v4 numberWithInt:getpid()];
  (*(server + 2))(serverCopy, v6, 0);
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "Rejecting connection %@ without entitlement %@", v1, 0x16u);
}

- (void)appHistoryUpdateActionPredictionPipelineWithAction:(uint64_t)a1 date:(NSObject *)a2 timeZone:reply:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[_ATXInspectionServer appHistoryUpdateActionPredictionPipelineWithAction:date:timeZone:reply:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s %@", &v2, 0x16u);
}

- (void)forceMagicalMomentsAppPredictionForBundleId:expert:reply:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEBUG, "ATXMM: Forcing MM App Prediction for bundleId: %@, expert: %@", v1, 0x16u);
}

- (void)dumpPredictionTableForMMExpert:(uint64_t)a1 reply:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXMM: Dumping prediction table for expert: %@", &v2, 0xCu);
}

@end