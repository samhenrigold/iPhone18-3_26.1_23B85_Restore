@interface ATXPartialIntentHandlingContext
- (ATXPartialIntentHandlingContext)init;
- (ATXPartialIntentHandlingContext)initWithCoder:(id)coder;
- (ATXPartialIntentHandlingContext)initWithFeedbackResults:(id)results partiallyExecutedAction:(id)action partiallyExecutedActionStartDate:(id)date currentApp:(id)app currentAppSessionStartDate:(id)startDate shortcutsRuntimeDonatedAction:(id)donatedAction shortcutsRuntimeDonationDate:(id)donationDate matchingAppSessionDonatedAction:(id)self0 matchingAppSessionDonationDate:(id)self1;
- (BOOL)_isPartialEngagementForATXAction:(id)action withMatchingDonatedAction:(id)donatedAction;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPartialIntentHandlingContext:(id)context;
- (NSArray)feedbackResults;
- (id)_partiallyExecutedSuggestionFromFeedbackResult:(id)result;
- (id)atxActionFromIntentEvent:(id)event;
- (id)handleAppLaunchAndReturnCompletedResults:(id)results;
- (id)handleNewFeedbackResultAndReturnCompletedResults:(id)results;
- (id)handleNewIntentEventAndReturnCompletedResults:(id)results;
- (unint64_t)hash;
- (void)_resetInternalState;
- (void)_tryUpdateMatchingAppSessionDonatedAction:(id)action eventDate:(id)date;
- (void)_tryUpdatePartialIntentSessionState;
- (void)_tryUpdateShortcutsRuntimeDonatedAction:(id)action eventDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXPartialIntentHandlingContext

- (ATXPartialIntentHandlingContext)init
{
  v3 = objc_opt_new();
  v4 = [(ATXPartialIntentHandlingContext *)self initWithFeedbackResults:v3 partiallyExecutedAction:0 partiallyExecutedActionStartDate:0 currentApp:0 currentAppSessionStartDate:0 shortcutsRuntimeDonatedAction:0 shortcutsRuntimeDonationDate:0 matchingAppSessionDonatedAction:0 matchingAppSessionDonationDate:0];

  return v4;
}

- (ATXPartialIntentHandlingContext)initWithFeedbackResults:(id)results partiallyExecutedAction:(id)action partiallyExecutedActionStartDate:(id)date currentApp:(id)app currentAppSessionStartDate:(id)startDate shortcutsRuntimeDonatedAction:(id)donatedAction shortcutsRuntimeDonationDate:(id)donationDate matchingAppSessionDonatedAction:(id)self0 matchingAppSessionDonationDate:(id)self1
{
  resultsCopy = results;
  actionCopy = action;
  dateCopy = date;
  appCopy = app;
  startDateCopy = startDate;
  donatedActionCopy = donatedAction;
  donationDateCopy = donationDate;
  sessionDonatedActionCopy = sessionDonatedAction;
  sessionDonationDateCopy = sessionDonationDate;
  v30.receiver = self;
  v30.super_class = ATXPartialIntentHandlingContext;
  v19 = [(ATXPartialIntentHandlingContext *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_feedbackResults, results);
    objc_storeStrong(&v20->_partiallyExecutedAction, action);
    objc_storeStrong(&v20->_partiallyExecutedActionStartDate, date);
    objc_storeStrong(&v20->_currentApp, app);
    objc_storeStrong(&v20->_currentAppSessionStartDate, startDate);
    objc_storeStrong(&v20->_shortcutsRuntimeDonatedAction, donatedAction);
    objc_storeStrong(&v20->_shortcutsRuntimeDonationDate, donationDate);
    objc_storeStrong(&v20->_matchingAppSessionDonatedAction, sessionDonatedAction);
    objc_storeStrong(&v20->_matchingAppSessionDonationDate, sessionDonationDate);
  }

  return v20;
}

- (id)handleNewFeedbackResultAndReturnCompletedResults:(id)results
{
  v40 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = __atxlog_handle_blending_ecosystem(resultsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ATXPartialIntentHandlingContext handleNewFeedbackResultAndReturnCompletedResults:?];
  }

  v6 = [(ATXPartialIntentHandlingContext *)self _partiallyExecutedSuggestionFromFeedbackResult:resultsCopy];
  atxActionExecutableObject = [v6 atxActionExecutableObject];
  v8 = atxActionExecutableObject;
  if (v6)
  {
    obj = atxActionExecutableObject;
    v32 = v6;
    v9 = [(NSMutableArray *)self->_feedbackResults copy];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v10);
          }

          session = [*(*(&v33 + 1) + 8 * i) session];
          session2 = [resultsCopy session];
          v18 = [session isEqual:session2];

          if ((v18 & 1) == 0)
          {
            [(ATXPartialIntentHandlingContext *)self _tryUpdatePartialIntentSessionState];
            v19 = [(NSMutableArray *)self->_feedbackResults copy];

            v20 = __atxlog_handle_blending_ecosystem([(ATXPartialIntentHandlingContext *)self _resetInternalState]);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              [(ATXPartialIntentHandlingContext *)v37 handleNewFeedbackResultAndReturnCompletedResults:&v38, v20];
            }

            v13 = v19;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v24 = [[ATXProactiveSuggestionPartialIntentResultWrapper alloc] initWithUIFeedbackResult:resultsCopy];
    v6 = v32;
    [(ATXProactiveSuggestionPartialIntentResultWrapper *)v24 updatePartiallyExecutedActionWithProactiveSuggestion:v32];
    [(NSMutableArray *)self->_feedbackResults addObject:v24];
    v8 = obj;
    objc_storeStrong(&self->_partiallyExecutedAction, obj);
    session3 = [resultsCopy session];
    sessionEndDate = [session3 sessionEndDate];
    partiallyExecutedActionStartDate = self->_partiallyExecutedActionStartDate;
    self->_partiallyExecutedActionStartDate = sessionEndDate;

    v29 = __atxlog_handle_blending_ecosystem(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [ATXPartialIntentHandlingContext handleNewFeedbackResultAndReturnCompletedResults:?];
    }

    v21 = v13;
    v23 = v21;
  }

  else
  {
    [(ATXPartialIntentHandlingContext *)self _tryUpdatePartialIntentSessionState];
    v21 = [(NSMutableArray *)self->_feedbackResults mutableCopy];
    [(ATXPartialIntentHandlingContext *)self _resetInternalState];
    v22 = __atxlog_handle_blending_ecosystem([v21 addObject:resultsCopy]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [ATXPartialIntentHandlingContext handleNewFeedbackResultAndReturnCompletedResults:?];
    }

    v23 = [v21 copy];
  }

  return v23;
}

- (id)handleAppLaunchAndReturnCompletedResults:(id)results
{
  v38 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = __atxlog_handle_blending_ecosystem(resultsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXPartialIntentHandlingContext *)self handleAppLaunchAndReturnCompletedResults:resultsCopy, v5];
  }

  absoluteTimestamp = [resultsCopy absoluteTimestamp];
  bundleID = [resultsCopy bundleID];
  v8 = [bundleID isEqualToString:@"com.apple.springboard.today-view"];

  if (![resultsCopy starting] || (v8 & 1) != 0)
  {
    currentApp = self->_currentApp;
    v14 = 0.0;
    if (currentApp && self->_currentAppSessionStartDate)
    {
      bundleID2 = [resultsCopy bundleID];
      [absoluteTimestamp timeIntervalSinceDate:self->_currentAppSessionStartDate];
      v14 = v16;
      currentApp = self->_currentApp;
    }

    else
    {
      bundleID2 = 0;
    }

    self->_currentApp = 0;

    currentAppSessionStartDate = self->_currentAppSessionStartDate;
    self->_currentAppSessionStartDate = 0;
  }

  else
  {
    bundleID3 = [resultsCopy bundleID];
    v10 = self->_currentApp;
    self->_currentApp = bundleID3;

    v11 = absoluteTimestamp;
    bundleID2 = 0;
    currentAppSessionStartDate = self->_currentAppSessionStartDate;
    self->_currentAppSessionStartDate = v11;
    v14 = 0.0;
  }

  v18 = __atxlog_handle_blending_ecosystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ATXPartialIntentHandlingContext handleAppLaunchAndReturnCompletedResults:?];
  }

  if (!self->_partiallyExecutedAction)
  {
    goto LABEL_26;
  }

  if (bundleID2 && ([bundleID2 isEqualToString:@"com.apple.shortcuts.runtime"] & 1) == 0 && v14 < 1.0)
  {
    matchingAppSessionDonatedAction = self->_matchingAppSessionDonatedAction;
    self->_matchingAppSessionDonatedAction = 0;

    matchingAppSessionDonationDate = self->_matchingAppSessionDonationDate;
    self->_matchingAppSessionDonationDate = 0;

    v22 = __atxlog_handle_blending_ecosystem(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = 138412802;
      v33 = v31;
      v34 = 2112;
      v35 = bundleID2;
      v36 = 2048;
      v37 = v14;
      _os_log_debug_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEBUG, "%@ - clearing any existing matching donations for short app session with bundleId %@, length: %f", &v32, 0x20u);
    }
  }

  [absoluteTimestamp timeIntervalSinceDate:self->_partiallyExecutedActionStartDate];
  if (v23 > 300.0)
  {
    [(ATXPartialIntentHandlingContext *)self _tryUpdatePartialIntentSessionState];
    v24 = [(NSMutableArray *)self->_feedbackResults copy];
    bundleID4 = __atxlog_handle_blending_ecosystem([(ATXPartialIntentHandlingContext *)self _resetInternalState]);
    if (os_log_type_enabled(bundleID4, OS_LOG_TYPE_DEBUG))
    {
      [ATXPartialIntentHandlingContext handleAppLaunchAndReturnCompletedResults:?];
    }

    goto LABEL_29;
  }

  bundleID4 = [resultsCopy bundleID];
  if (([bundleID4 isEqualToString:@"com.apple.shortcuts.runtime"]& 1) == 0)
  {
    bundleId = [(ATXAction *)self->_partiallyExecutedAction bundleId];
    bundleID5 = [resultsCopy bundleID];
    v28 = [bundleId isEqualToString:bundleID5];

    if ((v28 & 1) == 0)
    {
      [(ATXPartialIntentHandlingContext *)self _tryUpdatePartialIntentSessionState];
      v24 = [(NSMutableArray *)self->_feedbackResults copy];
      bundleID4 = __atxlog_handle_blending_ecosystem([(ATXPartialIntentHandlingContext *)self _resetInternalState]);
      if (os_log_type_enabled(bundleID4, OS_LOG_TYPE_DEBUG))
      {
        [ATXPartialIntentHandlingContext handleAppLaunchAndReturnCompletedResults:?];
      }

      goto LABEL_29;
    }

LABEL_26:
    v24 = 0;
    goto LABEL_30;
  }

  v24 = 0;
LABEL_29:

LABEL_30:

  return v24;
}

- (id)handleNewIntentEventAndReturnCompletedResults:(id)results
{
  v33 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = __atxlog_handle_blending_ecosystem(resultsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    bundleID = [resultsCopy bundleID];
    intentClass = [resultsCopy intentClass];
    absoluteTimestamp = [resultsCopy absoluteTimestamp];
    v25 = 138413058;
    v26 = v7;
    v27 = 2112;
    v28 = bundleID;
    v29 = 2112;
    v30 = intentClass;
    v31 = 2112;
    v32 = absoluteTimestamp;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - got intent event with bundleId: %@ class: %@ date: %@", &v25, 0x2Au);
  }

  absoluteTimestamp2 = [resultsCopy absoluteTimestamp];
  v12 = absoluteTimestamp2;
  if (self->_partiallyExecutedAction)
  {
    [absoluteTimestamp2 timeIntervalSinceDate:self->_partiallyExecutedActionStartDate];
    if (v13 <= 18000.0)
    {
      bundleId = [(ATXAction *)self->_partiallyExecutedAction bundleId];
      bundleID2 = [resultsCopy bundleID];
      v18 = [bundleId isEqualToString:bundleID2];

      if (v18)
      {
        currentApp = self->_currentApp;
        v20 = [(NSString *)currentApp isEqualToString:@"com.apple.shortcuts.runtime"];
        v21 = self->_currentApp;
        bundleId2 = [(ATXAction *)self->_partiallyExecutedAction bundleId];
        v23 = [(NSString *)v21 isEqualToString:bundleId2];

        v15 = [(ATXPartialIntentHandlingContext *)self atxActionFromIntentEvent:resultsCopy];
        if (currentApp)
        {
          if (v20)
          {
            [(ATXPartialIntentHandlingContext *)self _tryUpdateShortcutsRuntimeDonatedAction:v15 eventDate:v12];
          }

          else if (v23)
          {
            [(ATXPartialIntentHandlingContext *)self _tryUpdateMatchingAppSessionDonatedAction:v15 eventDate:v12];
          }
        }

        v14 = 0;
      }

      else
      {
        [(ATXPartialIntentHandlingContext *)self _tryUpdatePartialIntentSessionState];
        v14 = [(NSMutableArray *)self->_feedbackResults copy];
        v15 = __atxlog_handle_blending_ecosystem([(ATXPartialIntentHandlingContext *)self _resetInternalState]);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [ATXPartialIntentHandlingContext handleNewIntentEventAndReturnCompletedResults:?];
        }
      }
    }

    else
    {
      [(ATXPartialIntentHandlingContext *)self _tryUpdatePartialIntentSessionState];
      v14 = [(NSMutableArray *)self->_feedbackResults copy];
      v15 = __atxlog_handle_blending_ecosystem([(ATXPartialIntentHandlingContext *)self _resetInternalState]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ATXPartialIntentHandlingContext handleAppLaunchAndReturnCompletedResults:?];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_resetInternalState
{
  [(NSMutableArray *)self->_feedbackResults removeAllObjects];
  partiallyExecutedAction = self->_partiallyExecutedAction;
  self->_partiallyExecutedAction = 0;

  partiallyExecutedActionStartDate = self->_partiallyExecutedActionStartDate;
  self->_partiallyExecutedActionStartDate = 0;

  shortcutsRuntimeDonatedAction = self->_shortcutsRuntimeDonatedAction;
  self->_shortcutsRuntimeDonatedAction = 0;

  shortcutsRuntimeDonationDate = self->_shortcutsRuntimeDonationDate;
  self->_shortcutsRuntimeDonationDate = 0;

  matchingAppSessionDonatedAction = self->_matchingAppSessionDonatedAction;
  self->_matchingAppSessionDonatedAction = 0;

  matchingAppSessionDonationDate = self->_matchingAppSessionDonationDate;
  self->_matchingAppSessionDonationDate = 0;
}

- (void)_tryUpdatePartialIntentSessionState
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_tryUpdateShortcutsRuntimeDonatedAction:(id)action eventDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  dateCopy = date;
  if (actionCopy && !self->_shortcutsRuntimeDonatedAction)
  {
    objc_storeStrong(&self->_shortcutsRuntimeDonatedAction, action);
    objc_storeStrong(&self->_shortcutsRuntimeDonationDate, date);
    v10 = __atxlog_handle_feedback(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      shortcutsRuntimeDonatedAction = self->_shortcutsRuntimeDonatedAction;
      shortcutsRuntimeDonationDate = self->_shortcutsRuntimeDonationDate;
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = shortcutsRuntimeDonationDate;
      v19 = 2112;
      v20 = shortcutsRuntimeDonatedAction;
      _os_log_debug_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEBUG, "%@ - updated shortcuts runtime donation with date: %@, action: %@", &v15, 0x20u);
    }
  }
}

- (void)_tryUpdateMatchingAppSessionDonatedAction:(id)action eventDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  dateCopy = date;
  if (actionCopy && !self->_matchingAppSessionDonatedAction)
  {
    objc_storeStrong(&self->_matchingAppSessionDonatedAction, action);
    objc_storeStrong(&self->_matchingAppSessionDonationDate, date);
    v10 = __atxlog_handle_feedback(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      matchingAppSessionDonatedAction = self->_matchingAppSessionDonatedAction;
      matchingAppSessionDonationDate = self->_matchingAppSessionDonationDate;
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = matchingAppSessionDonationDate;
      v19 = 2112;
      v20 = matchingAppSessionDonatedAction;
      _os_log_debug_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEBUG, "%@ - updated app session donation with date: %@, action: %@", &v15, 0x20u);
    }
  }
}

- (BOOL)_isPartialEngagementForATXAction:(id)action withMatchingDonatedAction:(id)donatedAction
{
  actionCopy = action;
  actionKey = [donatedAction actionKey];
  actionKey2 = [actionCopy actionKey];

  LOBYTE(actionCopy) = [actionKey isEqualToString:actionKey2];
  return actionCopy;
}

- (id)_partiallyExecutedSuggestionFromFeedbackResult:(id)result
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  engagedSuggestions = [result engagedSuggestions];
  v4 = [engagedSuggestions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(engagedSuggestions);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        atxActionExecutableObject = [v7 atxActionExecutableObject];
        v9 = atxActionExecutableObject;
        if (atxActionExecutableObject)
        {
          intent = [atxActionExecutableObject intent];
          if (intent)
          {
            v11 = intent;
            intent2 = [v9 intent];
            atx_supportsBackgroundExecution = [intent2 atx_supportsBackgroundExecution];

            if (!atx_supportsBackgroundExecution)
            {
              v4 = v7;

              goto LABEL_13;
            }
          }
        }
      }

      v4 = [engagedSuggestions countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v4;
}

- (id)atxActionFromIntentEvent:(id)event
{
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CCAAC8];
  v7 = objc_opt_class();
  interaction = [eventCopy interaction];
  v19 = 0;
  v9 = [v6 unarchivedObjectOfClass:v7 fromData:interaction error:&v19];
  v10 = v19;

  objc_autoreleasePoolPop(v5);
  if (v9)
  {
    v12 = objc_alloc(MEMORY[0x277CEB2C8]);
    intent = [v9 intent];
    v14 = objc_opt_new();
    bundleID = [eventCopy bundleID];
    LOBYTE(v18) = 0;
    v16 = [v12 initWithIntent:intent actionUUID:v14 bundleId:bundleID heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v18 title:0 subtitle:0];
  }

  else
  {
    intent = __atxlog_handle_feedback(v11);
    if (os_log_type_enabled(intent, OS_LOG_TYPE_ERROR))
    {
      [(ATXPartialIntentHandlingContext *)self atxActionFromIntentEvent:v10, intent];
    }

    v16 = 0;
  }

  return v16;
}

- (NSArray)feedbackResults
{
  v2 = [(NSMutableArray *)self->_feedbackResults copy];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  feedbackResults = self->_feedbackResults;
  coderCopy = coder;
  [coderCopy encodeObject:feedbackResults forKey:@"feedbackResults"];
  [coderCopy encodeObject:self->_partiallyExecutedAction forKey:@"partialAction"];
  [coderCopy encodeObject:self->_partiallyExecutedActionStartDate forKey:@"partialActionStartDate"];
  [coderCopy encodeObject:self->_currentApp forKey:@"currentApp"];
  [coderCopy encodeObject:self->_currentAppSessionStartDate forKey:@"currentAppStartDate"];
  [coderCopy encodeObject:self->_shortcutsRuntimeDonatedAction forKey:@"shortcutsRuntimeDonatedAction"];
  [coderCopy encodeObject:self->_shortcutsRuntimeDonationDate forKey:@"shortcutsRuntimeDonationDate"];
  [coderCopy encodeObject:self->_matchingAppSessionDonatedAction forKey:@"matchingAppSessionAction"];
  [coderCopy encodeObject:self->_matchingAppSessionDonationDate forKey:@"matchingAppSessionDonationDate"];
}

- (ATXPartialIntentHandlingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v11 = __atxlog_handle_blending_ecosystem(v10);
  v12 = [v5 robustDecodeObjectOfClasses:v9 forKey:@"feedbackResults" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v11];

  if (v12 && ([coderCopy error], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v15 = MEMORY[0x277D42620];
    v16 = objc_opt_class();
    v17 = __atxlog_handle_blending_ecosystem(v16);
    v18 = [v15 robustDecodeObjectOfClass:v16 forKey:@"partialAction" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v17];

    error = [coderCopy error];

    if (error)
    {
      selfCopy = 0;
    }

    else
    {
      v20 = MEMORY[0x277D42620];
      v21 = objc_opt_class();
      v22 = __atxlog_handle_blending_ecosystem(v21);
      v23 = [v20 robustDecodeObjectOfClass:v21 forKey:@"partialActionStartDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v22];

      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
      }

      else
      {
        v25 = MEMORY[0x277D42620];
        v26 = objc_opt_class();
        v27 = __atxlog_handle_blending_ecosystem(v26);
        v28 = [v25 robustDecodeObjectOfClass:v26 forKey:@"currentApp" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v27];

        error3 = [coderCopy error];

        if (error3)
        {
          selfCopy = 0;
        }

        else
        {
          v30 = MEMORY[0x277D42620];
          v31 = objc_opt_class();
          v32 = __atxlog_handle_blending_ecosystem(v31);
          v33 = [v30 robustDecodeObjectOfClass:v31 forKey:@"currentAppStartDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v32];

          error4 = [coderCopy error];

          if (error4)
          {
            selfCopy = 0;
          }

          else
          {
            v60 = v33;
            v35 = MEMORY[0x277D42620];
            v36 = objc_opt_class();
            v37 = __atxlog_handle_blending_ecosystem(v36);
            v38 = [v35 robustDecodeObjectOfClass:v36 forKey:@"shortcutsRuntimeDonatedAction" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v37];

            error5 = [coderCopy error];

            if (error5)
            {
              selfCopy = 0;
              v33 = v60;
            }

            else
            {
              v59 = v38;
              v40 = MEMORY[0x277D42620];
              v41 = objc_opt_class();
              v42 = __atxlog_handle_blending_ecosystem(v41);
              v58 = [v40 robustDecodeObjectOfClass:v41 forKey:@"shortcutsRuntimeDonationDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v42];

              error6 = [coderCopy error];

              if (error6)
              {
                selfCopy = 0;
                v38 = v59;
                v33 = v60;
                v44 = v58;
              }

              else
              {
                v45 = MEMORY[0x277D42620];
                v46 = objc_opt_class();
                v47 = __atxlog_handle_blending_ecosystem(v46);
                v57 = [v45 robustDecodeObjectOfClass:v46 forKey:@"matchingAppSessionAction" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v47];

                error7 = [coderCopy error];

                if (error7)
                {
                  selfCopy = 0;
                  v38 = v59;
                  v33 = v60;
                  v44 = v58;
                }

                else
                {
                  v49 = MEMORY[0x277D42620];
                  v50 = objc_opt_class();
                  v51 = __atxlog_handle_blending_ecosystem(v50);
                  v52 = [v49 robustDecodeObjectOfClass:v50 forKey:@"matchingAppSessionDonationDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXPartialIntentHandlingContext" errorCode:-1 logHandle:v51];

                  error8 = [coderCopy error];

                  v56 = v52;
                  if (error8)
                  {
                    selfCopy = 0;
                    v38 = v59;
                    v33 = v60;
                    v44 = v58;
                  }

                  else
                  {
                    v44 = v58;
                    v55 = v52;
                    v38 = v59;
                    v33 = v60;
                    self = [(ATXPartialIntentHandlingContext *)self initWithFeedbackResults:v12 partiallyExecutedAction:v18 partiallyExecutedActionStartDate:v23 currentApp:v28 currentAppSessionStartDate:v60 shortcutsRuntimeDonatedAction:v59 shortcutsRuntimeDonationDate:v58 matchingAppSessionDonatedAction:v57 matchingAppSessionDonationDate:v55, v56];
                    selfCopy = self;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPartialIntentHandlingContext *)self isEqualToATXPartialIntentHandlingContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPartialIntentHandlingContext:(id)context
{
  contextCopy = context;
  v5 = self->_feedbackResults;
  v6 = v5;
  if (v5 == contextCopy[1])
  {
  }

  else
  {
    v7 = [(NSMutableArray *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v8 = self->_partiallyExecutedAction;
  v9 = v8;
  if (v8 == contextCopy[2])
  {
  }

  else
  {
    v10 = [(ATXAction *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v11 = self->_partiallyExecutedActionStartDate;
  v12 = v11;
  if (v11 == contextCopy[3])
  {
  }

  else
  {
    v13 = [(NSDate *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v14 = self->_currentApp;
  v15 = v14;
  if (v14 == contextCopy[4])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v17 = self->_currentAppSessionStartDate;
  v18 = v17;
  if (v17 == contextCopy[5])
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v20 = self->_shortcutsRuntimeDonatedAction;
  v21 = v20;
  if (v20 == contextCopy[6])
  {
  }

  else
  {
    v22 = [(ATXAction *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v23 = self->_shortcutsRuntimeDonationDate;
  v24 = v23;
  if (v23 == contextCopy[7])
  {
  }

  else
  {
    v25 = [(NSDate *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v26 = self->_matchingAppSessionDonatedAction;
  v27 = v26;
  if (v26 == contextCopy[8])
  {
  }

  else
  {
    v28 = [(ATXAction *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
LABEL_31:
      v29 = 0;
      goto LABEL_32;
    }
  }

  v31 = self->_matchingAppSessionDonationDate;
  v32 = v31;
  if (v31 == contextCopy[9])
  {
    v29 = 1;
  }

  else
  {
    v29 = [(NSDate *)v31 isEqual:?];
  }

LABEL_32:
  return v29;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_feedbackResults hash];
  v4 = [(ATXAction *)self->_partiallyExecutedAction hash]- v3 + 32 * v3;
  v5 = [(NSDate *)self->_partiallyExecutedActionStartDate hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_currentApp hash]- v5 + 32 * v5;
  v7 = [(NSDate *)self->_currentAppSessionStartDate hash]- v6 + 32 * v6;
  v8 = [(ATXAction *)self->_shortcutsRuntimeDonatedAction hash]- v7 + 32 * v7;
  v9 = [(NSDate *)self->_shortcutsRuntimeDonationDate hash]- v8 + 32 * v8;
  v10 = [(ATXAction *)self->_matchingAppSessionDonatedAction hash]- v9 + 32 * v9;
  return [(NSDate *)self->_matchingAppSessionDonationDate hash]- v10 + 32 * v10;
}

- (void)handleNewFeedbackResultAndReturnCompletedResults:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)handleNewFeedbackResultAndReturnCompletedResults:(void *)a3 .cold.2(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *a1 = 138412290;
  *a3 = v8;
  _os_log_debug_impl(&dword_2263AA000, a4, OS_LOG_TYPE_DEBUG, "%@ - new partial intent engagement session does not match currently tracked partial intent session - ending all currently tracked partial sessions", a1, 0xCu);
}

- (void)handleNewFeedbackResultAndReturnCompletedResults:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)handleNewFeedbackResultAndReturnCompletedResults:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)handleAppLaunchAndReturnCompletedResults:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 bundleID];
  v8 = [a2 absoluteTimestamp];
  v9 = 138413314;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  v15 = 1024;
  v16 = [a2 starting];
  v17 = 1024;
  v18 = [a2 type];
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "%@ - got app launch event of: %@ at %@, starting: %{BOOL}d type: %d", &v9, 0x2Cu);
}

- (void)handleAppLaunchAndReturnCompletedResults:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)handleAppLaunchAndReturnCompletedResults:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)handleAppLaunchAndReturnCompletedResults:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)handleNewIntentEventAndReturnCompletedResults:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)atxActionFromIntentEvent:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_2();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - IntentEventIsCompleteEngagement - Error unarchiving intent: %@", v7, 0x16u);
}

@end