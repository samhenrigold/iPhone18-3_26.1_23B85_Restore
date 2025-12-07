@interface ATXSearchFeedbackListener
- (ATXSearchFeedbackListener)init;
- (ATXSearchFeedbackListener)initWithTarget:(id)target spotlightUIBiomeStream:(id)stream engagementRecordManager:(id)manager actionClient:(id)client appDirectoryClient:(id)directoryClient tracker:(id)tracker;
- (BOOL)_isDuplicateEventWithState:(id *)state timestamp:(unint64_t)timestamp method:(SEL)method;
- (id)_suggestionSubTypeStringWithResultType:(int)type;
- (id)bundleIdentifierFromResult:(id)result;
- (void)_logAppPredictionsShown;
- (void)_logCAActionWithIdentifier:(id)identifier suggestion:(id)suggestion eventType:(int64_t)type;
- (void)_logCAActionWithIdentifiers:(id)identifiers eventType:(int64_t)type;
- (void)_resetState;
- (void)_sendSpotlightUIEvent:(id)event;
- (void)_sendSpotlightUIStreamAppEngageWithFeedback:(id)feedback;
- (void)_sendSpotlightUIStreamEventType:(int64_t)type searchResult:(id)result;
- (void)_tryRemoveLockscreenActionPredictionMatchingSuggestion:(id)suggestion;
- (void)cardViewDidDisappear:(id)disappear;
- (void)didEngageCardSection:(id)section;
- (void)didEngageResult:(id)result;
- (void)didPerformCommand:(id)command;
- (void)didStartSearch:(id)search;
- (void)logEngagedSpotlightActionSuggestion:(id)suggestion contextActionIdentifier:(id)identifier;
- (void)resultsDidBecomeVisible:(id)visible;
- (void)searchViewDidAppear:(id)appear;
- (void)searchViewDidDisappear:(id)disappear;
- (void)writeSpotlightEvent:(id)event isViewAppearEvent:(BOOL)appearEvent;
@end

@implementation ATXSearchFeedbackListener

- (ATXSearchFeedbackListener)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = +[ATXEngagementRecordManager sharedInstance];
  v6 = objc_opt_new();
  v7 = +[ATXAppDirectoryClient sharedInstance];
  v8 = objc_opt_new();
  v9 = [(ATXSearchFeedbackListener *)self initWithTarget:v3 spotlightUIBiomeStream:v4 engagementRecordManager:v5 actionClient:v6 appDirectoryClient:v7 tracker:v8];

  return v9;
}

- (ATXSearchFeedbackListener)initWithTarget:(id)target spotlightUIBiomeStream:(id)stream engagementRecordManager:(id)manager actionClient:(id)client appDirectoryClient:(id)directoryClient tracker:(id)tracker
{
  targetCopy = target;
  streamCopy = stream;
  managerCopy = manager;
  clientCopy = client;
  directoryClientCopy = directoryClient;
  trackerCopy = tracker;
  v39.receiver = self;
  v39.super_class = ATXSearchFeedbackListener;
  v17 = [(ATXSearchFeedbackListener *)&v39 init];
  if (v17)
  {
    v18 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "ATXSFL SF: initializing ATXSearchFeedbackListener -- process likely just (re)started", buf, 2u);
    }

    objc_storeStrong(&v17->_target, target);
    objc_storeStrong(&v17->_spotlightUIBiomeStream, stream);
    objc_storeStrong(&v17->_engagementRecordManager, manager);
    objc_storeStrong(&v17->_actionPredictionClient, client);
    objc_storeStrong(&v17->_appDirectoryClient, directoryClient);
    objc_storeStrong(&v17->_tracker, tracker);
    currentQuery = v17->_currentQuery;
    v17->_currentQuery = 0;

    v17->_didSearchDuringSession = 0;
    v20 = objc_opt_new();
    visibleAppUUIDs = v17->_visibleAppUUIDs;
    v17->_visibleAppUUIDs = v20;

    v22 = objc_opt_new();
    visibleActionUUIDs = v17->_visibleActionUUIDs;
    v17->_visibleActionUUIDs = v22;

    v24 = objc_opt_new();
    visibleAppBundleIds = v17->_visibleAppBundleIds;
    v17->_visibleAppBundleIds = v24;

    v26 = objc_opt_new();
    visibleActionContextIdentifiers = v17->_visibleActionContextIdentifiers;
    v17->_visibleActionContextIdentifiers = v26;

    currentResultCard = v17->_currentResultCard;
    v17->_currentResultCard = 0;

    v17->_hasSeenSearchViewDidAppear = 0;
    v17->_viewAppearEvent = 0;
    v29 = objc_opt_new();
    queuedEvents = v17->_queuedEvents;
    v17->_queuedEvents = v29;

    *&v17->_currentSessionHasEngagement = 0;
    v31 = [objc_alloc(MEMORY[0x1E69C5B50]) initWithFeatureId:@"AppPredictions" opportunityEvent:@"spotlightZkwStart" conversionEvent:@"appPredictionsShown" registerProperties:{0, clientCopy, managerCopy, streamCopy, targetCopy}];
    apAppPredictionsShownTracker = v17->_apAppPredictionsShownTracker;
    v17->_apAppPredictionsShownTracker = v31;
  }

  return v17;
}

- (void)_resetState
{
  currentQuery = self->_currentQuery;
  self->_currentQuery = 0;

  self->_didSearchDuringSession = 0;
  [(NSMutableSet *)self->_visibleAppUUIDs removeAllObjects];
  [(NSMutableSet *)self->_visibleActionUUIDs removeAllObjects];
  [(NSMutableSet *)self->_visibleAppBundleIds removeAllObjects];
  [(NSMutableSet *)self->_visibleActionContextIdentifiers removeAllObjects];
  currentResultCard = self->_currentResultCard;
  self->_currentResultCard = 0;

  appBlendingCacheId = self->_appBlendingCacheId;
  self->_appBlendingCacheId = 0;

  actionBlendingCacheId = self->_actionBlendingCacheId;
  self->_actionBlendingCacheId = 0;

  self->_hasSeenSearchViewDidAppear = 0;
  self->_viewAppearEvent = 0;
  queuedEvents = self->_queuedEvents;

  [(NSMutableArray *)queuedEvents removeAllObjects];
}

- (BOOL)_isDuplicateEventWithState:(id *)state timestamp:(unint64_t)timestamp method:(SEL)method
{
  v17 = *MEMORY[0x1E69E9840];
  var0 = state->var0;
  state->var0 = timestamp;
  if (!self->_shouldDebounce)
  {
    return 0;
  }

  v7 = timestamp - var0;
  *v12 = 0;
  mach_timebase_info(v12);
  v8 = v7 * *v12 / *&v12[4];
  if (v8 >= 0x2FAF080)
  {
    return 0;
  }

  v9 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(method);
    *v12 = 138412802;
    *&v12[4] = v10;
    v13 = 2048;
    v14 = v8;
    v15 = 2048;
    v16 = 50000000;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_INFO, "ATXSFL SF: %@ timestamp separation (in nanosec) of %llu < %llu -- ignoring duplicate event", v12, 0x20u);
  }

  return 1;
}

- (void)_logAppPredictionsShown
{
  v3 = [(NSMutableSet *)self->_visibleAppUUIDs count]!= 0;
  apAppPredictionsShownTracker = self->_apAppPredictionsShownTracker;

  [(PETGoalConversionEventTracker *)apAppPredictionsShownTracker trackGoalOpportunityEventWithConversion:v3 propertyValues:0];
}

- (void)_tryRemoveLockscreenActionPredictionMatchingSuggestion:(id)suggestion
{
  v8 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v5 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = suggestionCopy;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSFL: attempting to remove engaged action suggestion from lockscreen %@", &v6, 0xCu);
  }

  [(ATXActionPredictionClient *)self->_actionPredictionClient removeActionPredictionNotificationsMatchingSuggestion:suggestionCopy reply:0];
}

- (void)_logCAActionWithIdentifier:(id)identifier suggestion:(id)suggestion eventType:(int64_t)type
{
  identifierCopy = identifier;
  suggestionCopy = suggestion;
  if (identifierCopy)
  {
    goto LABEL_4;
  }

  v10 = [objc_alloc(MEMORY[0x1E69C5B70]) initWithProactiveSuggestion:suggestionCopy];
  if (v10)
  {
    identifierCopy = v10;
LABEL_4:
    [(ATXSearchFeedbackListener *)self _logCAActionWithIdentifiers:identifierCopy eventType:type];
    goto LABEL_5;
  }

  identifierCopy = __atxlog_handle_blending(0);
  if (os_log_type_enabled(identifierCopy, OS_LOG_TYPE_ERROR))
  {
    [ATXSearchFeedbackListener _logCAActionWithIdentifier:suggestionCopy suggestion:identifierCopy eventType:?];
  }

LABEL_5:
}

- (void)_logCAActionWithIdentifiers:(id)identifiers eventType:(int64_t)type
{
  v6 = MEMORY[0x1E69C5C00];
  identifiersCopy = identifiers;
  v8 = [v6 alloc];
  uniqueIdentifier = [identifiersCopy uniqueIdentifier];
  subtype = [identifiersCopy subtype];
  context = [identifiersCopy context];

  v12 = [v8 initWithType:type suggestionUniqueId:uniqueIdentifier suggestionType:@"action" suggestionSubtype:subtype suggestionContext:context];
  [(ATXSearchFeedbackListener *)self _sendSpotlightUIEvent:v12];
}

- (void)writeSpotlightEvent:(id)event isViewAppearEvent:(BOOL)appearEvent
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (appearEvent)
  {
    [(ATXSearchFeedbackListenerTarget *)self->_target writeSpotlightEvent:eventCopy];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_queuedEvents;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(ATXSearchFeedbackListenerTarget *)self->_target writeSpotlightEvent:*(*(&v12 + 1) + 8 * v11++), v12];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)self->_queuedEvents removeAllObjects];
    self->_hasSeenSearchViewDidAppear = 1;
  }

  else if (self->_hasSeenSearchViewDidAppear)
  {
    [(ATXSearchFeedbackListenerTarget *)self->_target writeSpotlightEvent:eventCopy];
  }

  else
  {
    [(NSMutableArray *)self->_queuedEvents addObject:eventCopy];
  }
}

- (void)searchViewDidAppear:(id)appear
{
  v24 = *MEMORY[0x1E69E9840];
  appearCopy = appear;
  if (!-[ATXSearchFeedbackListener _isDuplicateEventWithState:timestamp:method:](self, "_isDuplicateEventWithState:timestamp:method:", &self->_debounce.searchViewDidAppear, [appearCopy timestamp], a2))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      viewAppearEvent = [appearCopy viewAppearEvent];
      isOnLockScreen = [appearCopy isOnLockScreen];
      isOverApp = [appearCopy isOverApp];
      v14 = "NO";
      v16 = 134218754;
      v17 = viewAppearEvent;
      if (isOnLockScreen)
      {
        v15 = "YES";
      }

      else
      {
        v15 = "NO";
      }

      v18 = 2112;
      v19 = appearCopy;
      if (isOverApp)
      {
        v14 = "YES";
      }

      v20 = 2080;
      v21 = v15;
      v22 = 2080;
      v23 = v14;
      _os_log_debug_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEBUG, "ATXSFL SF: searchViewDidAppear, event:%lu, feedback:%@, isOnLockscreen:%s, isOverApp:%s", &v16, 0x2Au);
    }

    selfCopy->_viewAppearEvent = [appearCopy viewAppearEvent];
    v8 = objc_opt_new();
    v9 = [ATXSpotlightEvent viewAppearedEventWithSFFeedback:appearCopy date:v8];

    [(ATXSearchFeedbackListener *)selfCopy writeSpotlightEvent:v9 isViewAppearEvent:1];
    v10 = [objc_alloc(MEMORY[0x1E69C5C00]) initWithType:6 suggestionUniqueId:0 suggestionType:0 suggestionSubtype:0 suggestionContext:0];
    [(ATXSearchFeedbackListener *)selfCopy _sendSpotlightUIEvent:v10];

    objc_sync_exit(selfCopy);
  }
}

- (void)searchViewDidDisappear:(id)disappear
{
  v11[3] = *MEMORY[0x1E69E9840];
  disappearCopy = disappear;
  if (!-[ATXSearchFeedbackListener _isDuplicateEventWithState:timestamp:method:](self, "_isDuplicateEventWithState:timestamp:method:", &self->_debounce.searchViewDidDisappear, [disappearCopy timestamp], a2))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      -[ATXSearchFeedbackListener searchViewDidDisappear:].cold.1(disappearCopy, v11, [disappearCopy viewDisappearEvent]);
    }

    didSearchDuringSession = selfCopy->_didSearchDuringSession;
    v9 = objc_opt_new();
    v10 = [ATXSpotlightEvent viewDisappearedEventWithDidSearch:didSearchDuringSession date:v9];

    [(ATXSearchFeedbackListener *)selfCopy writeSpotlightEvent:v10 isViewAppearEvent:0];
    [(ATXSearchFeedbackListener *)selfCopy sendUpdateNotification];
    [(ATXSearchFeedbackListener *)selfCopy _logAppPredictionsShown];
    [(ATXSearchFeedbackListener *)selfCopy _resetState];
    selfCopy->_previousSessionHadEngagement = selfCopy->_currentSessionHasEngagement;
    selfCopy->_currentSessionHasEngagement = 0;

    objc_sync_exit(selfCopy);
  }
}

- (void)didStartSearch:(id)search
{
  v21 = *MEMORY[0x1E69E9840];
  searchCopy = search;
  if (!-[ATXSearchFeedbackListener _isDuplicateEventWithState:timestamp:method:](self, "_isDuplicateEventWithState:timestamp:method:", &self->_debounce.didStartSearch, [searchCopy timestamp], a2))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      triggerEvent = [searchCopy triggerEvent];
      input = [searchCopy input];
      uuid = [searchCopy uuid];
      v13 = 134218755;
      v14 = triggerEvent;
      v15 = 2117;
      v16 = searchCopy;
      v17 = 2117;
      v18 = input;
      v19 = 2112;
      v20 = uuid;
      _os_log_debug_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEBUG, "ATXSFL SF: didStartSearch, event:%lu, feedback:%{sensitive}@, input:%{sensitive}@, uuid:%@", &v13, 0x2Au);
    }

    input2 = [searchCopy input];
    currentQuery = selfCopy->_currentQuery;
    selfCopy->_currentQuery = input2;

    if ([(NSString *)selfCopy->_currentQuery length])
    {
      selfCopy->_didSearchDuringSession = 1;
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)resultsDidBecomeVisible:(id)visible
{
  v66 = *MEMORY[0x1E69E9840];
  visibleCopy = visible;
  if (![(ATXSearchFeedbackListener *)self _isDuplicateEventWithState:&self->_debounce timestamp:[visibleCopy timestamp] method:a2])
  {
    v47 = visibleCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      triggerEvent = [visibleCopy triggerEvent];
      results = [visibleCopy results];
      *info = 134218499;
      *&info[4] = triggerEvent;
      v62 = 2117;
      v63 = v47;
      v64 = 2117;
      v65 = results;
      _os_log_debug_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEBUG, "ATXSFL SF: resultsDidBecomeVisible, event:%lu, feedback:%{sensitive}@, results:%{sensitive}@", info, 0x20u);
    }

    if (selfCopy->_previousSessionHadEngagement && (v8 = [v47 timestamp], lastEventTimestamp = selfCopy->_debounce.searchViewDidDisappear.lastEventTimestamp, *info = 0, mach_timebase_info(info), (v8 - lastEventTimestamp) * *info / *&info[4] <= 0x2FAF07F))
    {
      v51 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        [ATXSearchFeedbackListener resultsDidBecomeVisible:];
      }
    }

    else
    {
      v51 = objc_opt_new();
      v48 = objc_opt_new();
      v50 = objc_opt_new();
      v49 = objc_opt_new();
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      results2 = [v47 results];
      v11 = [results2 countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v11)
      {
        v53 = *v55;
        *&v12 = 138412546;
        v46 = v12;
        obj = results2;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v55 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v54 + 1) + 8 * i);
            [(ATXSearchFeedbackListener *)selfCopy _sendSpotlightUIStreamEventType:3 searchResult:v14, v46];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              proactiveSuggestion = [v15 proactiveSuggestion];
              uuid = [proactiveSuggestion uuid];
              uUIDString = [uuid UUIDString];

              proactiveSuggestion2 = [v15 proactiveSuggestion];
              bundleIdExecutableObject = [proactiveSuggestion2 bundleIdExecutableObject];

              if (!selfCopy->_appBlendingCacheId)
              {
                response = [v15 response];
                blendingModelUICacheUpdateUUID = [response blendingModelUICacheUpdateUUID];
                uUIDString2 = [blendingModelUICacheUpdateUUID UUIDString];
                appBlendingCacheId = selfCopy->_appBlendingCacheId;
                selfCopy->_appBlendingCacheId = uUIDString2;
              }

              if ((objc_msgSend_containsObject_(selfCopy->_visibleAppUUIDs) & 1) == 0)
              {
                [v51 addObject:uUIDString];
              }

              if ((objc_msgSend_containsObject_(selfCopy->_visibleAppBundleIds) & 1) == 0)
              {
                [v50 addObject:bundleIdExecutableObject];
              }

LABEL_39:
              goto LABEL_40;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              uUIDString = [v15 proactiveSuggestion];
              uuid2 = [uUIDString uuid];
              uUIDString3 = [uuid2 UUIDString];

              contextActionIdentifier = [v15 contextActionIdentifier];
              v28 = contextActionIdentifier;
              if (!contextActionIdentifier)
              {
                contextActionIdentifier = [objc_alloc(MEMORY[0x1E69C5B70]) initWithProactiveSuggestion:uUIDString];
                v28 = contextActionIdentifier;
              }

              if (!selfCopy->_actionBlendingCacheId)
              {
                blendingModelUICacheUpdateUUID2 = [v15 blendingModelUICacheUpdateUUID];
                uUIDString4 = [blendingModelUICacheUpdateUUID2 UUIDString];
                actionBlendingCacheId = selfCopy->_actionBlendingCacheId;
                selfCopy->_actionBlendingCacheId = uUIDString4;
              }

              if (uUIDString3)
              {
                contextActionIdentifier = objc_msgSend_containsObject_(selfCopy->_visibleActionUUIDs);
                if ((contextActionIdentifier & 1) == 0)
                {
                  contextActionIdentifier = [v48 addObject:uUIDString3];
                }
              }

              if (v28)
              {
                if ((objc_msgSend_containsObject_(selfCopy->_visibleActionContextIdentifiers) & 1) == 0)
                {
                  [v49 addObject:v28];
                  [(ATXSearchFeedbackListener *)selfCopy _logCAActionWithIdentifiers:v28 eventType:3];
                }
              }

              else
              {
                v37 = __atxlog_handle_blending(contextActionIdentifier);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  executableSpecification = [uUIDString executableSpecification];
                  executableIdentifier = [executableSpecification executableIdentifier];
                  *info = v46;
                  *&info[4] = executableIdentifier;
                  v62 = 2112;
                  v63 = uUIDString;
                  _os_log_error_impl(&dword_1BF549000, v37, OS_LOG_TYPE_ERROR, "ATXContextActionIdentifier: nil: %@, %@", info, 0x16u);
                }
              }

              goto LABEL_39;
            }

            v32 = objc_alloc(MEMORY[0x1E69C5B70]);
            requestedTopic = [v14 requestedTopic];
            sectionBundleIdentifier = [v14 sectionBundleIdentifier];
            v15 = [v32 initWithTopic:requestedTopic sectionBundleIdentifier:sectionBundleIdentifier];

            if (!v15)
            {
              uUIDString = __atxlog_handle_blending(v35);
              if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
              {
                requestedTopic2 = [v14 requestedTopic];
                [(ATXSearchFeedbackListener *)requestedTopic2 resultsDidBecomeVisible:buf, &v59, uUIDString];
              }

              goto LABEL_39;
            }

            if ((objc_msgSend_containsObject_(selfCopy->_visibleActionContextIdentifiers) & 1) == 0)
            {
              [v49 addObject:v15];
              [(ATXSearchFeedbackListener *)selfCopy _logCAActionWithIdentifiers:v15 eventType:3];
            }

LABEL_40:
          }

          results2 = obj;
          v11 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
        }

        while (v11);
      }

      if ((selfCopy->_appBlendingCacheId || selfCopy->_actionBlendingCacheId) && (-[NSObject count](v51, "count") || [v48 count]))
      {
        v40 = selfCopy->_appBlendingCacheId;
        v41 = selfCopy->_actionBlendingCacheId;
        v42 = objc_opt_new();
        v43 = [ATXSpotlightEvent suggestionsAppearedEventWithAppSuggestionIds:v51 actionSuggestionIds:v48 appBlendingCacheId:v40 actionBlendingCacheId:v41 date:v42];

        [(ATXSearchFeedbackListener *)selfCopy writeSpotlightEvent:v43 isViewAppearEvent:0];
        [(NSMutableSet *)selfCopy->_visibleAppUUIDs addObjectsFromArray:v51];
        [(NSMutableSet *)selfCopy->_visibleActionUUIDs addObjectsFromArray:v48];
        [(NSMutableSet *)selfCopy->_visibleAppBundleIds addObjectsFromArray:v50];
      }
    }

    objc_sync_exit(selfCopy);
    visibleCopy = v47;
  }
}

- (void)logEngagedSpotlightActionSuggestion:(id)suggestion contextActionIdentifier:(id)identifier
{
  actionBlendingCacheId = self->_actionBlendingCacheId;
  currentQuery = self->_currentQuery;
  identifierCopy = identifier;
  suggestionCopy = suggestion;
  v10 = objc_opt_new();
  v11 = [ATXSpotlightEvent actionSuggestionTappedEventWithSuggestion:suggestionCopy actionBlendingCacheId:actionBlendingCacheId currentQuery:currentQuery date:v10];

  [(ATXSearchFeedbackListener *)self writeSpotlightEvent:v11 isViewAppearEvent:0];
  [(ATXEngagementRecordManager *)self->_engagementRecordManager addEngagedSuggestion:suggestionCopy engagementRecordType:1];
  [(ATXSearchFeedbackListener *)self _tryRemoveLockscreenActionPredictionMatchingSuggestion:suggestionCopy];
  [ATXMFeedbackConversionLogger logUserInteractionFeedbackWithEngagementType:0 consumerSubType:21 tracker:self->_tracker];
  [ATXBlendingCaptureRateTracker logSpotlightActionCaptureWithTracker:self->_tracker];
  [ATXBlendingCaptureRateTracker logSpotlightAppDiversionWithCaptureType:2000 tracker:self->_tracker];
  [(ATXSearchFeedbackListener *)self _logCAActionWithIdentifier:identifierCopy suggestion:suggestionCopy eventType:4];
}

- (void)didEngageResult:(id)result
{
  v75 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (!-[ATXSearchFeedbackListener _isDuplicateEventWithState:timestamp:method:](self, "_isDuplicateEventWithState:timestamp:method:", &self->_debounce.didEngageResult, [resultCopy timestamp], a2))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      triggerEvent = [resultCopy triggerEvent];
      destination = [resultCopy destination];
      actionTarget = [resultCopy actionTarget];
      actionEngaged = [resultCopy actionEngaged];
      matchesUnengagedSuggestion = [resultCopy matchesUnengagedSuggestion];
      result = [resultCopy result];
      v61 = 134219522;
      v62 = triggerEvent;
      v63 = 2048;
      v64 = destination;
      v65 = 2048;
      v66 = actionTarget;
      v67 = 1024;
      v68 = actionEngaged;
      v69 = 1024;
      v70 = matchesUnengagedSuggestion;
      v71 = 2112;
      v72 = resultCopy;
      v73 = 2112;
      v74 = result;
      _os_log_debug_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEBUG, "ATXSFL SF: didEngageResult, event:%lu, destination:%lu, actionTarget:%lu, actionEngaged:%{BOOL}d, matchedUnengagedSuggestion:%{BOOL}d, feedback:%@, result:%@", &v61, 0x40u);
    }

    if ([resultCopy triggerEvent] == 2 && objc_msgSend(resultCopy, "destination") == 2 && !objc_msgSend(resultCopy, "actionTarget"))
    {
      result2 = [resultCopy result];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        result3 = [resultCopy result];
        proactiveSuggestion = [result3 proactiveSuggestion];

        uuid = [proactiveSuggestion uuid];
        uUIDString = [uuid UUIDString];

        v14 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdExecutableObject = [proactiveSuggestion bundleIdExecutableObject];
          v61 = 138412290;
          v62 = bundleIdExecutableObject;
          _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXSFL: didEngageResult app bundle id: %@", &v61, 0xCu);
        }

        appBlendingCacheId = selfCopy->_appBlendingCacheId;
        if (appBlendingCacheId)
        {
          currentQuery = selfCopy->_currentQuery;
          v18 = objc_opt_new();
          v19 = [ATXSpotlightEvent appSuggestionTappedEventWithSuggestion:proactiveSuggestion appBlendingCacheId:appBlendingCacheId currentQuery:currentQuery date:v18];

          [(ATXSearchFeedbackListener *)selfCopy writeSpotlightEvent:v19 isViewAppearEvent:0];
          [(ATXEngagementRecordManager *)selfCopy->_engagementRecordManager addEngagedSuggestion:proactiveSuggestion engagementRecordType:1];
        }

        [ATXMFeedbackConversionLogger logUserInteractionFeedbackWithEngagementType:0 consumerSubType:9 tracker:selfCopy->_tracker];
        [ATXBlendingCaptureRateTracker logSpotlightAppCaptureWithTracker:selfCopy->_tracker];
        v20 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [ATXSearchFeedbackListener didEngageResult:];
        }

LABEL_68:
LABEL_69:
        selfCopy->_currentSessionHasEngagement = 1;
        objc_sync_exit(selfCopy);

        goto LABEL_70;
      }
    }

    if ([resultCopy triggerEvent] == 2 && objc_msgSend(resultCopy, "destination") == 3 && !objc_msgSend(resultCopy, "actionTarget"))
    {
      result4 = [resultCopy result];
      objc_opt_class();
      v22 = objc_opt_isKindOfClass();

      if (v22)
      {
        proactiveSuggestion = [resultCopy result];
        v11ProactiveSuggestion = [proactiveSuggestion proactiveSuggestion];
        uuid2 = [v11ProactiveSuggestion uuid];
        uUIDString2 = [uuid2 UUIDString];

        contextActionIdentifier = [proactiveSuggestion contextActionIdentifier];
        [(ATXSearchFeedbackListener *)selfCopy logEngagedSpotlightActionSuggestion:v11ProactiveSuggestion contextActionIdentifier:contextActionIdentifier];

        v27 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [ATXSearchFeedbackListener didEngageResult:];
        }

        goto LABEL_68;
      }
    }

    if ([resultCopy triggerEvent] == 2 && objc_msgSend(resultCopy, "destination") == 2 && !objc_msgSend(resultCopy, "actionTarget"))
    {
      result5 = [resultCopy result];
      objc_opt_class();
      v29 = objc_opt_isKindOfClass();

      if (v29)
      {
        result6 = [resultCopy result];
        currentResultCard = selfCopy->_currentResultCard;
        selfCopy->_currentResultCard = result6;

        proactiveSuggestion = __atxlog_handle_feedback();
        if (os_log_type_enabled(proactiveSuggestion, OS_LOG_TYPE_DEBUG))
        {
          [ATXSearchFeedbackListener didEngageResult:];
        }

        goto LABEL_68;
      }
    }

    if ([resultCopy triggerEvent] == 5 && objc_msgSend(resultCopy, "destination") == 1 && !objc_msgSend(resultCopy, "actionTarget"))
    {
      result7 = [resultCopy result];
      objc_opt_class();
      v33 = objc_opt_isKindOfClass();

      if (v33)
      {
        result8 = [resultCopy result];
        v35 = selfCopy->_currentResultCard;
        selfCopy->_currentResultCard = result8;

        proactiveSuggestion = __atxlog_handle_feedback();
        if (os_log_type_enabled(proactiveSuggestion, OS_LOG_TYPE_DEBUG))
        {
          [ATXSearchFeedbackListener didEngageResult:];
        }

        goto LABEL_68;
      }
    }

    if ([resultCopy triggerEvent] == 2 && objc_msgSend(resultCopy, "destination") == 1 && !objc_msgSend(resultCopy, "actionTarget"))
    {
      result9 = [resultCopy result];
      objc_opt_class();
      v37 = objc_opt_isKindOfClass();

      if (v37)
      {
        result10 = [resultCopy result];
        v39 = selfCopy->_currentResultCard;
        selfCopy->_currentResultCard = result10;

        proactiveSuggestion = __atxlog_handle_feedback();
        if (os_log_type_enabled(proactiveSuggestion, OS_LOG_TYPE_DEBUG))
        {
          [ATXSearchFeedbackListener didEngageResult:];
        }

        goto LABEL_68;
      }
    }

    if ([resultCopy triggerEvent] != 2)
    {
      goto LABEL_69;
    }

    if ([resultCopy actionTarget])
    {
      goto LABEL_69;
    }

    result11 = [resultCopy result];
    getSFSearchResult_SpotlightExtrasClass();
    v41 = objc_opt_isKindOfClass();

    if ((v41 & 1) == 0)
    {
      goto LABEL_69;
    }

    proactiveSuggestion = [resultCopy result];
    applicationBundleIdentifier = [proactiveSuggestion applicationBundleIdentifier];
    if ([proactiveSuggestion predictionsFeedbackActionType]== 3)
    {
      v43 = applicationBundleIdentifier;
      if ([(NSMutableSet *)selfCopy->_visibleActionUUIDs count])
      {
        [ATXBlendingCaptureRateTracker logSpotlightActionDiversionWithCaptureType:3001 tracker:selfCopy->_tracker];
      }

      v44 = 3;
      if (!applicationBundleIdentifier)
      {
LABEL_63:
        v54 = 0;
        goto LABEL_65;
      }
    }

    else if ([proactiveSuggestion predictionsFeedbackActionType]== 1)
    {
      v51 = applicationBundleIdentifier;
      if ([(NSMutableSet *)selfCopy->_visibleActionUUIDs count])
      {
        [ATXBlendingCaptureRateTracker logSpotlightActionDiversionWithCaptureType:3001 tracker:selfCopy->_tracker];
      }

      v44 = 1;
      if (!applicationBundleIdentifier)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (![applicationBundleIdentifier length] || (objc_msgSend(applicationBundleIdentifier, "hasPrefix:", @"com.apple.other") & 1) != 0 || objc_msgSend(resultCopy, "destination") != 2 || (objc_msgSend(resultCopy, "result"), v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "sectionBundleIdentifier"), v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v56, "isEqualToString:", @"com.apple.application"), v56, v55, !v57))
      {
        v54 = 0;
        v44 = 4;
        goto LABEL_65;
      }

      applicationBundleIdentifier;
      if ([(NSMutableSet *)selfCopy->_visibleAppBundleIds count])
      {
        if (objc_msgSend_containsObject_(selfCopy->_visibleAppBundleIds))
        {
          v58 = 2002;
        }

        else
        {
          v58 = 2001;
        }

        [ATXBlendingCaptureRateTracker logSpotlightAppDiversionWithCaptureType:v58 tracker:selfCopy->_tracker];
      }

      v44 = 4;
      if (!applicationBundleIdentifier)
      {
        goto LABEL_63;
      }
    }

    v52 = objc_opt_new();
    v53 = [ATXSpotlightEvent searchResultTappedWithEngagedBundleId:applicationBundleIdentifier searchedActionType:v44 date:v52];

    [(ATXSearchFeedbackListener *)selfCopy writeSpotlightEvent:v53 isViewAppearEvent:0];
    v54 = applicationBundleIdentifier;
LABEL_65:
    v59 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v60 = [ATXActionPredictionTypes actionTypeToString:v44];
      [(ATXSearchFeedbackListener *)v54 didEngageResult:v60, &v61, v59];
    }

    goto LABEL_68;
  }

LABEL_70:
}

- (void)cardViewDidDisappear:(id)disappear
{
  v15[3] = *MEMORY[0x1E69E9840];
  disappearCopy = disappear;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    -[ATXSearchFeedbackListener cardViewDidDisappear:].cold.1(disappearCopy, v15, [disappearCopy cardDisappearEvent]);
  }

  if (selfCopy->_currentResultCard && selfCopy->_appBlendingCacheId && selfCopy->_actionBlendingCacheId)
  {
    if ([disappearCopy cardDisappearEvent] == 7)
    {
      proactiveSuggestion = [(ATXSuggestionSearchResult *)selfCopy->_currentResultCard proactiveSuggestion];
      uuid = [proactiveSuggestion uuid];
      uUIDString = [uuid UUIDString];

      actionBlendingCacheId = selfCopy->_actionBlendingCacheId;
      v11 = objc_opt_new();
      v12 = [ATXSpotlightEvent actionSuggestionDismissedEventWithSuggestionId:uUIDString actionBlendingCacheId:actionBlendingCacheId date:v11];

      [(ATXSearchFeedbackListener *)selfCopy writeSpotlightEvent:v12 isViewAppearEvent:0];
      [(ATXEngagementRecordManager *)selfCopy->_engagementRecordManager addEngagedSuggestion:proactiveSuggestion engagementRecordType:1];
      [(ATXSearchFeedbackListener *)selfCopy _tryRemoveLockscreenActionPredictionMatchingSuggestion:proactiveSuggestion];
      [ATXMFeedbackConversionLogger logUserInteractionFeedbackWithEngagementType:1 consumerSubType:21 tracker:selfCopy->_tracker];
      v13 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ATXSearchFeedbackListener cardViewDidDisappear:];
      }
    }

    else
    {
      proactiveSuggestion = __atxlog_handle_feedback();
      if (os_log_type_enabled(proactiveSuggestion, OS_LOG_TYPE_DEBUG))
      {
        [ATXSearchFeedbackListener cardViewDidDisappear:];
      }
    }

    currentResultCard = selfCopy->_currentResultCard;
    selfCopy->_currentResultCard = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)didEngageCardSection:(id)section
{
  v38 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  if (!-[ATXSearchFeedbackListener _isDuplicateEventWithState:timestamp:method:](self, "_isDuplicateEventWithState:timestamp:method:", &self->_debounce.didEngageCardSection, [sectionCopy timestamp], a2))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      triggerEvent = [sectionCopy triggerEvent];
      destination = [sectionCopy destination];
      v28 = 134219010;
      v29 = triggerEvent;
      v30 = 2112;
      v31 = sectionCopy;
      v32 = 2112;
      v33 = destination;
      v34 = 2048;
      actionCardType = [sectionCopy actionCardType];
      v36 = 2048;
      actionTarget = [sectionCopy actionTarget];
      _os_log_debug_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEBUG, "ATXSFL SF: didEngageCardSection, event:%lu, feedback:%@, destination:%@, actionCardType:%lu, actionTarget:%lu", &v28, 0x34u);
    }

    if ([sectionCopy triggerEvent] == 2 && !objc_msgSend(sectionCopy, "actionCardType") && (objc_msgSend(sectionCopy, "destination"), (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = objc_msgSend(sectionCopy, "actionTarget") == 0, v14, v15))
    {
      proactiveSuggestion = [(ATXSuggestionSearchResult *)selfCopy->_currentResultCard proactiveSuggestion];
      uuid = [proactiveSuggestion uuid];
      uUIDString = [uuid UUIDString];

      currentResultCard = selfCopy->_currentResultCard;
      if (!currentResultCard || selfCopy->_appBlendingCacheId && (actionBlendingCacheId = selfCopy->_actionBlendingCacheId) != 0 && (currentQuery = selfCopy->_currentQuery, v21 = objc_opt_new(), [ATXSpotlightEvent actionSuggestionTappedEventWithSuggestion:proactiveSuggestion actionBlendingCacheId:actionBlendingCacheId currentQuery:currentQuery date:v21], v22 = objc_claimAutoreleasedReturnValue(), v21, [(ATXSearchFeedbackListener *)selfCopy writeSpotlightEvent:v22 isViewAppearEvent:0], [(ATXEngagementRecordManager *)selfCopy->_engagementRecordManager addEngagedSuggestion:proactiveSuggestion engagementRecordType:1], [(ATXSearchFeedbackListener *)selfCopy _tryRemoveLockscreenActionPredictionMatchingSuggestion:proactiveSuggestion], [ATXMFeedbackConversionLogger logUserInteractionFeedbackWithEngagementType:0 consumerSubType:21 tracker:selfCopy->_tracker], [ATXBlendingCaptureRateTracker logSpotlightActionCaptureWithTracker:selfCopy->_tracker], [ATXBlendingCaptureRateTracker logSpotlightAppDiversionWithCaptureType:2000 tracker:selfCopy->_tracker], v22, (currentResultCard = selfCopy->_currentResultCard) == 0))
      {
        v24 = 0;
      }

      else
      {
        contextActionIdentifier = [(ATXSuggestionSearchResult *)currentResultCard contextActionIdentifier];
        [(ATXSearchFeedbackListener *)selfCopy _logCAActionWithIdentifier:contextActionIdentifier suggestion:proactiveSuggestion eventType:4];

        v24 = selfCopy->_currentResultCard;
      }

      selfCopy->_currentResultCard = 0;

      v27 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [ATXSearchFeedbackListener didEngageCardSection:];
      }
    }

    else
    {
      if ([sectionCopy triggerEvent] != 2 || objc_msgSend(sectionCopy, "actionCardType") != 1)
      {
        goto LABEL_27;
      }

      proactiveSuggestion = [sectionCopy destination];
      if (!proactiveSuggestion)
      {
        if ([sectionCopy actionTarget])
        {
LABEL_27:
          objc_sync_exit(selfCopy);

          goto LABEL_28;
        }

        v9 = selfCopy->_currentResultCard;
        if (v9)
        {
          contextActionIdentifier2 = [(ATXSuggestionSearchResult *)v9 contextActionIdentifier];
          [(ATXSearchFeedbackListener *)selfCopy _logCAActionWithIdentifier:contextActionIdentifier2 suggestion:0 eventType:4];
        }

        v11 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          contextActionIdentifier3 = [(ATXSuggestionSearchResult *)selfCopy->_currentResultCard contextActionIdentifier];
          uniqueIdentifier = [contextActionIdentifier3 uniqueIdentifier];
          [(ATXSearchFeedbackListener *)uniqueIdentifier didEngageCardSection:v11, contextActionIdentifier3];
        }

        proactiveSuggestion = selfCopy->_currentResultCard;
        selfCopy->_currentResultCard = 0;
      }
    }

    goto LABEL_27;
  }

LABEL_28:
}

- (void)didPerformCommand:(id)command
{
  v54 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  [(ATXSearchFeedbackListener *)self _sendSpotlightUIStreamAppEngageWithFeedback:commandCopy];
  result = [(ATXSpotlightFeedbackManager *)commandCopy result];
  [(ATXSearchFeedbackListener *)self _sendSpotlightUIStreamEventType:4 searchResult:result];
  command = [(ATXSpotlightFeedbackManager *)commandCopy command];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_37;
  }

  command2 = [(ATXSpotlightFeedbackManager *)commandCopy command];
  v9 = [(ATXSearchFeedbackListener *)self bundleIdentifierFromResult:result];
  v10 = __atxlog_handle_zkw_hide(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412290;
    v47 = v9;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXSFL: bundleId ---> %@", &v46, 0xCu);
  }

  v12 = __atxlog_handle_zkw_hide(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [result identifier];
    v46 = 138412290;
    v47 = identifier;
    _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXSFL: searchResultIdentifier ---> %@", &v46, 0xCu);
  }

  v15 = __atxlog_handle_zkw_hide(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    category = [command2 category];
    v46 = 67109120;
    LODWORD(v47) = category;
    _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "ATXSFL: category ---> %d", &v46, 8u);
  }

  v18 = __atxlog_handle_zkw_hide(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    proactiveIdentifier = [command2 proactiveIdentifier];
    v46 = 138412290;
    v47 = proactiveIdentifier;
    _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "ATXSFL: proactiveIdentifier ---> %@", &v46, 0xCu);
  }

  v21 = __atxlog_handle_zkw_hide(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    shouldClearWholeSection = [command2 shouldClearWholeSection];
    v46 = 67109120;
    LODWORD(v47) = shouldClearWholeSection;
    _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_DEFAULT, "ATXSFL: shouldClearWholeSection ---> %{BOOL}d", &v46, 8u);
  }

  v23 = objc_alloc_init(ATXSpotlightFeedbackManager);
  category2 = [command2 category];
  if (category2 > 2)
  {
    if (category2 == 6)
    {
      v34 = __atxlog_handle_zkw_hide(category2);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        category3 = [command2 category];
        v46 = 67109120;
        LODWORD(v47) = category3;
        _os_log_impl(&dword_1BF549000, v34, OS_LOG_TYPE_DEFAULT, "ATXSFL: hiding app suggestion for category %d", &v46, 8u);
      }

      isLocalApplicationResult = [result isLocalApplicationResult];
      if (!isLocalApplicationResult)
      {
        goto LABEL_34;
      }

      objc_opt_class();
      isLocalApplicationResult = objc_opt_isKindOfClass();
      if ((isLocalApplicationResult & 1) == 0)
      {
        goto LABEL_34;
      }

      proactiveSuggestion = [result proactiveSuggestion];
      [(ATXSpotlightFeedbackManager *)v23 addHiddenAppSuggestionBundleIdentifier:proactiveSuggestion];
      goto LABEL_33;
    }

    if (category2 == 3)
    {
      proactiveSuggestion = [command2 proactiveIdentifier];
      [(ATXSpotlightFeedbackManager *)v23 addHiddenContextIdentifier:proactiveSuggestion];
      goto LABEL_33;
    }

LABEL_32:
    proactiveSuggestion = [command2 proactiveIdentifier];
    [(ATXSpotlightFeedbackManager *)v23 addHiddenActionExecutableIdentifier:proactiveSuggestion];
    goto LABEL_33;
  }

  if ((category2 - 1) >= 2)
  {
    if (!category2)
    {
      proactiveSuggestion = __atxlog_handle_zkw_hide(category2);
      if (os_log_type_enabled(proactiveSuggestion, OS_LOG_TYPE_DEFAULT))
      {
        category4 = [command2 category];
        v46 = 67109120;
        LODWORD(v47) = category4;
        _os_log_impl(&dword_1BF549000, proactiveSuggestion, OS_LOG_TYPE_DEFAULT, "ATXSFL: no hiding action for category %d", &v46, 8u);
      }

      goto LABEL_33;
    }

    goto LABEL_32;
  }

  shouldClearWholeSection2 = [command2 shouldClearWholeSection];
  v26 = shouldClearWholeSection2;
  v27 = __atxlog_handle_zkw_hide(shouldClearWholeSection2);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v28)
    {
      v46 = 138412290;
      v47 = v9;
      _os_log_impl(&dword_1BF549000, v27, OS_LOG_TYPE_DEFAULT, "ATXSFL: User disabled all shortcut suggestions from bundleId: %@", &v46, 0xCu);
    }

    isLocalApplicationResult = [(ATXSpotlightFeedbackManager *)v23 addHiddenAutoShortcutIdentifier:v9];
    goto LABEL_34;
  }

  if (v28)
  {
    identifier2 = [result identifier];
    v46 = 138412290;
    v47 = identifier2;
    _os_log_impl(&dword_1BF549000, v27, OS_LOG_TYPE_DEFAULT, "ATXSFL: User has hidden auto shortcut with signature: %@. Will not show this specific shortcut suggestion", &v46, 0xCu);
  }

  proactiveSuggestion = [result identifier];
  v33 = [(ATXSpotlightFeedbackManager *)v9 stringByAppendingString:proactiveSuggestion];
  [(ATXSpotlightFeedbackManager *)v23 addHiddenAutoShortcutIdentifier:v33];

LABEL_33:
LABEL_34:
  v36 = __atxlog_handle_zkw_hide(isLocalApplicationResult);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    proactiveIdentifier2 = [command2 proactiveIdentifier];
    v46 = 138412546;
    v47 = v23;
    v48 = 2112;
    v49 = proactiveIdentifier2;
    _os_log_impl(&dword_1BF549000, v36, OS_LOG_TYPE_DEFAULT, "ATXSFL: feedbackManager %@ addHiddenActionExecutableIdentifier %@", &v46, 0x16u);
  }

LABEL_37:
  result2 = [(ATXSpotlightFeedbackManager *)commandCopy result];
  objc_opt_class();
  v39 = objc_opt_isKindOfClass();
  if (v39)
  {
    v40 = result2;
    proactiveSuggestion2 = [v40 proactiveSuggestion];
    v42 = __atxlog_handle_zkw_hide(proactiveSuggestion2);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      uiSpecification = [proactiveSuggestion2 uiSpecification];
      title = [uiSpecification title];
      v46 = 138413058;
      v47 = commandCopy;
      v48 = 2112;
      v49 = v40;
      v50 = 2112;
      v51 = title;
      v52 = 2112;
      v53 = proactiveSuggestion2;
      _os_log_impl(&dword_1BF549000, v42, OS_LOG_TYPE_DEFAULT, "didPerformCommand ---> %@ result = %@ suggestion (%@) = %@", &v46, 0x2Au);
    }
  }

  else
  {
    v40 = __atxlog_handle_zkw_hide(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v45 = objc_opt_class();
      v46 = 138412802;
      v47 = commandCopy;
      v48 = 2112;
      v49 = result2;
      v50 = 2112;
      v51 = v45;
      _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_DEFAULT, "didPerformCommand ---> %@ result = %@ class = %@", &v46, 0x20u);
    }
  }
}

- (void)_sendSpotlightUIStreamAppEngageWithFeedback:(id)feedback
{
  v31 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  command = [feedbackCopy command];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = __atxlog_handle_zkw_hide(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      result = [feedbackCopy result];
      sectionBundleIdentifier = [result sectionBundleIdentifier];
      v23 = 138412290;
      v24 = sectionBundleIdentifier;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSFL: sendSpotlightUIStreamAppEngageWithFeedback commandEngagementFeedback.result.sectionBundleIdentifier ='%@'", &v23, 0xCu);
    }

    result2 = [feedbackCopy result];
    sectionBundleIdentifier2 = [result2 sectionBundleIdentifier];
    v13 = [sectionBundleIdentifier2 isEqualToString:@"com.apple.searchd.zkw.apps"];

    command2 = [feedbackCopy command];
    applicationBundleIdentifier = [command2 applicationBundleIdentifier];
    if ([applicationBundleIdentifier length])
    {
      if (v13)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      v17 = [objc_alloc(MEMORY[0x1E69C5C00]) initWithType:v16 suggestionUniqueId:applicationBundleIdentifier suggestionType:@"app" suggestionSubtype:0 suggestionContext:0];
      v18 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        eventType = [v17 eventType];
        suggestionType = [v17 suggestionType];
        suggestionSubtype = [v17 suggestionSubtype];
        suggestionUniqueId = [v17 suggestionUniqueId];
        v23 = 134218754;
        v24 = eventType;
        v25 = 2112;
        v26 = suggestionType;
        v27 = 2112;
        v28 = suggestionSubtype;
        v29 = 2112;
        v30 = suggestionUniqueId;
        _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "ATXSFL: uiEvent type%ld: %@ %@ %@", &v23, 0x2Au);
      }

      [(ATXSearchFeedbackListener *)self _sendSpotlightUIEvent:v17];
    }
  }
}

- (void)_sendSpotlightUIEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  p_viewAppearEvent = &self->_viewAppearEvent;
  if ((self->_viewAppearEvent | 8) == 0x1E)
  {
    [(ATXSpotlightUIBiomeStream *)self->_spotlightUIBiomeStream sendEvent:eventCopy];
  }

  else
  {
    v7 = __atxlog_handle_metrics(eventCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(ATXSearchFeedbackListener *)p_viewAppearEvent _sendSpotlightUIEvent:v5, v7];
    }
  }
}

- (void)_sendSpotlightUIStreamEventType:(int64_t)type searchResult:(id)result
{
  v27 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
  v8 = [sectionBundleIdentifier isEqualToString:@"com.apple.spotlight.dec.zkw.recents"];

  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    identifier = [resultCopy identifier];
    v11 = [v9 stringWithFormat:@"%lu", objc_msgSend(identifier, "hash")];

    v12 = -[ATXSearchFeedbackListener _suggestionSubTypeStringWithResultType:](self, "_suggestionSubTypeStringWithResultType:", [resultCopy type]);
    v13 = [objc_alloc(MEMORY[0x1E69C5C00]) initWithType:type suggestionUniqueId:v11 suggestionType:@"recent" suggestionSubtype:v12 suggestionContext:0];
    v14 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      eventType = [v13 eventType];
      suggestionType = [v13 suggestionType];
      suggestionSubtype = [v13 suggestionSubtype];
      suggestionUniqueId = [v13 suggestionUniqueId];
      *buf = 134218754;
      v20 = eventType;
      v21 = 2112;
      v22 = suggestionType;
      v23 = 2112;
      v24 = suggestionSubtype;
      v25 = 2112;
      v26 = suggestionUniqueId;
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXSFL: uiEvent type%ld: %@ %@ %@", buf, 0x2Au);
    }

    [(ATXSearchFeedbackListener *)self _sendSpotlightUIEvent:v13];
  }
}

- (id)_suggestionSubTypeStringWithResultType:(int)type
{
  if ((type - 1) > 0x26)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80C5F08[type - 1];
  }
}

- (id)bundleIdentifierFromResult:(id)result
{
  resultCopy = result;
  getSFSearchResult_SpotlightExtrasClass();
  if (objc_opt_isKindOfClass())
  {
    [resultCopy relatedAppIdentifier];
  }

  else
  {
    [resultCopy applicationBundleIdentifier];
  }
  v4 = ;

  return v4;
}

- (void)_logCAActionWithIdentifier:(void *)a1 suggestion:(NSObject *)a2 eventType:.cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 executableSpecification];
  v5 = [v4 executableIdentifier];
  OUTLINED_FUNCTION_1_0();
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXContextActionIdentifier: nil: %@, %@", v6, 0x16u);
}

- (void)resultsDidBecomeVisible:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)resultsDidBecomeVisible:(void *)a3 .cold.2(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "ATXContextActionIdentifier: nil topic: %@", buf, 0xCu);
}

- (void)didEngageResult:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  OUTLINED_FUNCTION_3_9(&dword_1BF549000, "ATXSFL: handled engagement via search with engagedBundleId: %@ searchedActionType: %@", a3, a4);
}

- (void)didEngageResult:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didEngageResult:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didEngageResult:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didEngageResult:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)didEngageResult:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)cardViewDidDisappear:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cardViewDidDisappear:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)didEngageCardSection:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)didEngageCardSection:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1BF549000, log, OS_LOG_TYPE_DEBUG, "ATXSFL: handled action prediction engagement on card with identifier: %@", buf, 0xCu);
}

- (void)_sendSpotlightUIEvent:(NSObject *)a3 .cold.1(uint64_t *a1, void *a2, NSObject *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = [MEMORY[0x1E69C5C00] stringForATXSpotlightUIEventType:{objc_msgSend(a2, "eventType")}];
  v7 = [a2 eventType];
  v8 = [a2 suggestionType];
  v9 = [a2 suggestionUniqueId];
  v10 = [a2 suggestionSubtype];
  v11 = [a2 suggestionContext];
  v12 = 134219522;
  v13 = v5;
  v14 = 2112;
  v15 = v6;
  v16 = 2048;
  v17 = v7;
  v18 = 2112;
  v19 = v8;
  v20 = 2112;
  v21 = v9;
  v22 = 2112;
  v23 = v10;
  v24 = 2112;
  v25 = v11;
  _os_log_debug_impl(&dword_1BF549000, a3, OS_LOG_TYPE_DEBUG, "SKIP type %lu: %@ - ATXSpotlightUIEvent\n\teventType: %lu\n\tsuggestionType: %@\n\tsuggestionUniqueId: %@\n\tsuggestionSubtype: %@\n\tsuggestionContext: %@", &v12, 0x48u);
}

@end