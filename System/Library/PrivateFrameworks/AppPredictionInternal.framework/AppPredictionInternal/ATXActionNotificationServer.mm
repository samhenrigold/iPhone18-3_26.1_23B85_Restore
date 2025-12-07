@interface ATXActionNotificationServer
+ (ATXActionNotificationServer)sharedInstance;
+ (id)_requestIdentifierForBundleId:(id)id;
+ (id)bundleIdFromRequestIdentifier:(id)identifier;
+ (id)localizedContentBodyStringWithString:(id)string forAction:(id)action;
- (ATXActionNotificationServer)init;
- (BOOL)_isRTL;
- (id)_actionKeyFromNotification:(id)notification;
- (id)_blendingCacheUpdateUUIDFromNotification:(id)notification;
- (id)_localizedStringForKey:(id)key defaultValue:(id)value languageCode:(id)code;
- (id)_unarchiveProactiveSuggestionFromNotification:(id)notification;
- (id)proactiveSuggestionsCurrentlyOnLockscreen;
- (unint64_t)deliveredNotificationCount;
- (void)_postNotificationForProactiveSuggestion:(id)suggestion blendingCacheUpdateUUID:(id)d;
- (void)_postTestNotificationWithPredictionCount:(int64_t)count;
- (void)_removeNotificationWithIdentifier:(id)identifier trackEvent:(BOOL)event;
- (void)_sendLockscreenEventToBiomeWithDate:(id)date eventType:(int)type blendingCacheId:(id)id suggestionIds:(id)ids;
- (void)_setupNotifications;
- (void)postDemoOrDebugNotificationForATXAction:(id)action;
- (void)postNotificationForATXAction:(id)action;
- (void)postNotificationForProactiveSuggestion:(id)suggestion blendingCacheUpdateUUID:(id)d;
- (void)removeActionPredictionNotificationsMatchingAction:(id)action;
- (void)removeAllActionPredictionNotificationsAndTrackEvent:(BOOL)event recordFeedback:(BOOL)feedback;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress;
@end

@implementation ATXActionNotificationServer

+ (ATXActionNotificationServer)sharedInstance
{
  if (sharedInstance_onceToken_13 != -1)
  {
    +[ATXActionNotificationServer sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __45__ATXActionNotificationServer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ATXActionNotificationServer);
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)_requestIdentifierForBundleId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    v4 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uUIDString2 = [v4 stringWithFormat:@"%@|%@", idCopy, uUIDString];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID UUIDString];
  }

  return uUIDString2;
}

+ (id)bundleIdFromRequestIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@"|"];
  if ([v3 count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  return v4;
}

+ (id)localizedContentBodyStringWithString:(id)string forAction:(id)action
{
  stringCopy = string;
  actionCopy = action;
  routeInfo = [actionCopy routeInfo];
  if (routeInfo && (v8 = routeInfo, [actionCopy routeInfo], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isExternalRoute"), v9, v8, v10))
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"AirPlay to %@" value:&stru_2839A6058 table:0];
    routeInfo2 = [actionCopy routeInfo];
    deviceName = [routeInfo2 deviceName];
    v16 = [v11 initWithFormat:v13, deviceName];

    if ([stringCopy length])
    {
      v17 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:stringCopy arguments:0];
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@\n%@", v17, v16];
    }

    else
    {
      v18 = v16;
    }
  }

  else
  {
    if ([stringCopy length])
    {
      v19 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:stringCopy arguments:0];
    }

    else
    {
      v19 = stringCopy;
    }

    v18 = v19;
  }

  return v18;
}

- (ATXActionNotificationServer)init
{
  v30[1] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = ATXActionNotificationServer;
  v2 = [(ATXActionNotificationServer *)&v29 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.Siri.ActionPredictionNotifications"];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    [(UNUserNotificationCenter *)v2->_notificationCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_notificationCenter setWantsNotificationResponsesDelivered];
    v5 = v2->_notificationCenter;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __35__ATXActionNotificationServer_init__block_invoke;
    v27[3] = &unk_2785A0C48;
    v6 = v2;
    v28 = v6;
    [(UNUserNotificationCenter *)v5 requestAuthorizationWithOptions:4 completionHandler:v27];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, onPostTestNotifReceive, @"com.apple.Siri.TestActionNotification", 0, CFNotificationSuspensionBehaviorDrop);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v8, v6, onPostTestNotifReceiveNoPrediction, @"com.apple.Siri.TestActionNotificationNoPrediction", 0, CFNotificationSuspensionBehaviorDrop);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, v6, onPostTestNotifReceiveManyPredictions, @"com.apple.Siri.TestActionNotificationManyPredictions", 0, CFNotificationSuspensionBehaviorDrop);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v10, v6, onPostTestNotifRemoveAll, @"com.apple.Siri.TestActionNotificationRemoveAll", 0, CFNotificationSuspensionBehaviorDrop);
    v11 = objc_alloc(MEMORY[0x277D41DB8]);
    v12 = MEMORY[0x277CBEBF8];
    v13 = [v11 initWithFeatureId:@"ActionPredictions" event:@"remove_notif" registerProperties:MEMORY[0x277CBEBF8]];
    removeTracker = v6->_removeTracker;
    v6->_removeTracker = v13;

    v15 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"ActionPredictions" event:@"post_notif_init" registerProperties:v12];
    notifyInitTracker = v6->_notifyInitTracker;
    v6->_notifyInitTracker = v15;

    v17 = [MEMORY[0x277D41DA0] propertyWithName:@"reason" possibleValues:&unk_283A58B50];
    v18 = objc_alloc(MEMORY[0x277D41DB8]);
    v30[0] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v20 = [v18 initWithFeatureId:@"ActionPredictions" event:@"post_notif_error" registerProperties:v19];
    notifyErrorTracker = v6->_notifyErrorTracker;
    v6->_notifyErrorTracker = v20;

    v22 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"ActionPredictions" event:@"post_notif_success" registerProperties:v12];
    notifySuccessTracker = v6->_notifySuccessTracker;
    v6->_notifySuccessTracker = v22;

    mEMORY[0x277CEB500] = [MEMORY[0x277CEB500] sharedInstance];
    engagementRecordManager = v6->_engagementRecordManager;
    v6->_engagementRecordManager = mEMORY[0x277CEB500];
  }

  return v2;
}

void __35__ATXActionNotificationServer_init__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = __atxlog_handle_notifications(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "Notification Center access granted!", v8, 2u);
    }

    [*(a1 + 32) _setupNotifications];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __35__ATXActionNotificationServer_init__block_invoke_cold_1();
    }
  }
}

- (void)_setupNotifications
{
  v5 = [objc_alloc(MEMORY[0x277CE1F50]) initWithIdentifier:@"suggestedShortcut"];
  [v5 setBackgroundStyle:1];
  [v5 setHiddenPreviewsBodyPlaceholder:@" "];
  [v5 setListPriority:2];
  [v5 setOptions:131073];
  notificationCenter = self->_notificationCenter;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{v5, 0}];
  [(UNUserNotificationCenter *)notificationCenter setNotificationCategories:v4];
}

- (void)_postTestNotificationWithPredictionCount:(int64_t)count
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_notifications(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    countCopy = count;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "Posting %ld test notification(s)", buf, 0xCu);
  }

  if (count >= 1)
  {
    buf[0] = 0;
    if (CFPreferencesGetAppBooleanValue(@"displayLastDonationOnCoverSheet", *MEMORY[0x277CEBD00], buf))
    {
      actionResponseForDeveloperMode = [MEMORY[0x277CEB2F8] actionResponseForDeveloperMode];
      scoredActions = [actionResponseForDeveloperMode scoredActions];
      if (!scoredActions)
      {
        proactiveSuggestions = [actionResponseForDeveloperMode proactiveSuggestions];

        if (proactiveSuggestions)
        {
          countCopy2 = count;
          v9 = objc_alloc(MEMORY[0x277CBEB18]);
          proactiveSuggestions2 = [actionResponseForDeveloperMode proactiveSuggestions];
          v33 = [v9 initWithCapacity:{objc_msgSend(proactiveSuggestions2, "count")}];

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          obj = [actionResponseForDeveloperMode proactiveSuggestions];
          v11 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v39;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v39 != v13)
                {
                  objc_enumerationMutation(obj);
                }

                v15 = *(*(&v38 + 1) + 8 * i);
                v16 = objc_alloc(MEMORY[0x277CEB7F0]);
                atxActionExecutableObject = [v15 atxActionExecutableObject];
                scoreSpecification = [v15 scoreSpecification];
                [scoreSpecification rawScore];
                *&v19 = v19;
                v20 = [v16 initWithPredictedItem:atxActionExecutableObject score:v19];

                if (v20)
                {
                  [v33 addObject:v20];
                }
              }

              v12 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
            }

            while (v12);
          }

          scoredActions = [v33 copy];
          count = countCopy2;
        }

        else
        {
          scoredActions = 0;
        }
      }

      v24 = [scoredActions count];
      if (v24 >= count)
      {
        countCopy3 = count;
      }

      else
      {
        countCopy3 = v24;
      }

      scoredActions2 = [scoredActions subarrayWithRange:{0, countCopy3}];
    }

    else
    {
      actionResponseForDeveloperMode = objc_alloc_init(MEMORY[0x277CEB2E0]);
      v21 = [actionResponseForDeveloperMode actionPredictionsForConsumerSubType:21 limit:count];
      if (!v21)
      {
        v23 = 0;
        goto LABEL_34;
      }

      scoredActions = v21;
      scoredActions2 = [v21 scoredActions];
    }

    v23 = scoredActions2;

    if (![v23 count])
    {
LABEL_35:

      return;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    actionResponseForDeveloperMode = v23;
    v26 = [actionResponseForDeveloperMode countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(actionResponseForDeveloperMode);
          }

          predictedItem = [*(*(&v34 + 1) + 8 * j) predictedItem];
          [(ATXActionNotificationServer *)self postDemoOrDebugNotificationForATXAction:predictedItem];
        }

        v27 = [actionResponseForDeveloperMode countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v27);
    }

    v23 = actionResponseForDeveloperMode;
LABEL_34:

    goto LABEL_35;
  }
}

- (void)postNotificationForATXAction:(id)action
{
  v11 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  [(PETScalarEventTracker *)self->_notifyInitTracker trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
  hasLockscreenPrediction = [(ATXActionNotificationServer *)self hasLockscreenPrediction];
  if (hasLockscreenPrediction)
  {
    v6 = __atxlog_handle_notifications(hasLockscreenPrediction);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = actionCopy;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Trying to predict action %@", &v9, 0xCu);
    }

    v8 = __atxlog_handle_notifications(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXActionNotificationServer postNotificationForATXAction:];
    }

    [(ATXActionNotificationServer *)self removeAllActionPredictionNotificationsAndTrackEvent:0 recordFeedback:0];
  }

  [(ATXActionNotificationServer *)self postDemoOrDebugNotificationForATXAction:actionCopy];
}

- (void)postDemoOrDebugNotificationForATXAction:(id)action
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D42070];
  actionCopy = action;
  v6 = [v4 clientModelIdFromClientModelType:25];
  v7 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v6 clientModelVersion:@"1.0"];
  v8 = objc_alloc(MEMORY[0x277CEB7F0]);
  LODWORD(v9) = 1.0;
  v10 = [v8 initWithPredictedItem:actionCopy score:v9];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [ATXProactiveSuggestionBuilder proactiveSuggestionsForLockscreenActions:v11 clientModelSpec:v7];
  firstObject = [v12 firstObject];

  [(ATXActionNotificationServer *)self _postNotificationForProactiveSuggestion:firstObject blendingCacheUpdateUUID:0];
}

- (unint64_t)deliveredNotificationCount
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  notificationCenter = self->_notificationCenter;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ATXActionNotificationServer_deliveredNotificationCount__block_invoke;
  v9[3] = &unk_2785A0C70;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__ATXActionNotificationServer_deliveredNotificationCount__block_invoke_2;
  v8[3] = &unk_2785967D8;
  v8[4] = &v12;
  [MEMORY[0x277D425A0] waitForSemaphore:v5 timeoutSeconds:&__block_literal_global_192 onAcquire:v8 onTimeout:1.0];
  v6 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v6;
}

void __57__ATXActionNotificationServer_deliveredNotificationCount__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = a1;
  *(*(*(a1 + 40) + 8) + 24) = [v3 count];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = __atxlog_handle_notifications(v5);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v9 request];
          v12 = [v11 identifier];
          v13 = [v9 request];
          v14 = [v13 content];
          *buf = 138412546;
          v21 = v12;
          v22 = 2112;
          v23 = v14;
          _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Notification with id: %@, content: %@", buf, 0x16u);
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
      v6 = v5;
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(v15 + 32));
}

void __57__ATXActionNotificationServer_deliveredNotificationCount__block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v2 = __atxlog_handle_notifications(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __57__ATXActionNotificationServer_deliveredNotificationCount__block_invoke_2_cold_1();
  }
}

- (id)proactiveSuggestionsCurrentlyOnLockscreen
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__95;
  v15 = __Block_byref_object_dispose__95;
  v16 = objc_opt_new();
  v3 = dispatch_semaphore_create(0);
  notificationCenter = self->_notificationCenter;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__ATXActionNotificationServer_proactiveSuggestionsCurrentlyOnLockscreen__block_invoke;
  v8[3] = &unk_2785A0C98;
  v8[4] = self;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:v8];
  [MEMORY[0x277D425A0] waitForSemaphore:v5 timeoutSeconds:&__block_literal_global_194 onAcquire:&__block_literal_global_196 onTimeout:1.0];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __72__ATXActionNotificationServer_proactiveSuggestionsCurrentlyOnLockscreen__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 32) _unarchiveProactiveSuggestionFromNotification:*(*(&v9 + 1) + 8 * v7)];
        if (v8)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __72__ATXActionNotificationServer_proactiveSuggestionsCurrentlyOnLockscreen__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = __atxlog_handle_notifications(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __72__ATXActionNotificationServer_proactiveSuggestionsCurrentlyOnLockscreen__block_invoke_3_cold_1();
  }
}

- (void)postNotificationForProactiveSuggestion:(id)suggestion blendingCacheUpdateUUID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  dCopy = d;
  [(PETScalarEventTracker *)self->_notifyInitTracker trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
  hasLockscreenPrediction = [(ATXActionNotificationServer *)self hasLockscreenPrediction];
  if (hasLockscreenPrediction)
  {
    v9 = __atxlog_handle_notifications(hasLockscreenPrediction);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = suggestionCopy;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Trying to predict suggestion %@", &v12, 0xCu);
    }

    v11 = __atxlog_handle_notifications(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXActionNotificationServer postNotificationForATXAction:];
    }

    [(ATXActionNotificationServer *)self removeAllActionPredictionNotificationsAndTrackEvent:0 recordFeedback:0];
  }

  [(ATXActionNotificationServer *)self _postNotificationForProactiveSuggestion:suggestionCopy blendingCacheUpdateUUID:dCopy];
}

- (void)_postNotificationForProactiveSuggestion:(id)suggestion blendingCacheUpdateUUID:(id)d
{
  v73[3] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  dCopy = d;
  v7 = __atxlog_handle_blending(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412546;
    v67 = v9;
    v68 = 2112;
    v69 = suggestionCopy;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - attempting to post notification for suggestion: %@", buf, 0x16u);
  }

  atxActionExecutableObject = [(__CFString *)suggestionCopy atxActionExecutableObject];
  v11 = atxActionExecutableObject;
  if (atxActionExecutableObject)
  {
    actionTitle = [atxActionExecutableObject actionTitle];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v59 = [actionTitle stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    actionSubtitle = [v11 actionSubtitle];
    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v58 = [actionSubtitle stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

    _bundleIdForDisplay = [v11 _bundleIdForDisplay];
    if (_bundleIdForDisplay)
    {
      if ([v59 length] || objc_msgSend(v58, "length"))
      {
        if ([_bundleIdForDisplay isEqualToString:@"com.apple.mobilenotes"] && (objc_msgSend(v11, "isHeuristic") & 1) == 0)
        {

          v58 = 0;
        }

        encodeAsProto = [(__CFString *)suggestionCopy encodeAsProto];
        actionKey = [v11 actionKey];
        v56 = actionKey;
        if (encodeAsProto && actionKey)
        {
          v72[0] = @"actionKey";
          v72[1] = @"proactiveSuggestion";
          v73[0] = actionKey;
          v73[1] = encodeAsProto;
          v72[2] = @"blendingCacheUpdateUUID";
          uUIDString = [dCopy UUIDString];
          v19 = uUIDString;
          v20 = &stru_2839A6058;
          if (uUIDString)
          {
            v20 = uUIDString;
          }

          v73[2] = v20;
          v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:3];

          v21 = objc_alloc_init(MEMORY[0x277CE1F60]);
          [(__CFString *)v21 setShouldSuppressScreenLightUp:1];
          [(__CFString *)v21 setUserInfo:v54];
          [(__CFString *)v21 setShouldHideDate:1];
          [(__CFString *)v21 setSound:0];
          [(__CFString *)v21 setShouldAuthenticateDefaultAction:1];
          if ([_bundleIdForDisplay length])
          {
            bundleId = [v11 bundleId];
            userActivityWebpageURL = [v11 userActivityWebpageURL];
            v24 = ATXBundleIdReplacementForBundleIdWithWebpageURLHint();

            _bundleIdForDisplay = v24;
          }

          v25 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:v59 arguments:0];
          [(__CFString *)v21 setTitle:v25];

          v26 = [ATXActionNotificationServer localizedContentBodyStringWithString:v58 forAction:v11];
          [(__CFString *)v21 setBody:v26];

          v28 = __atxlog_handle_notifications(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            title = [(__CFString *)v21 title];
            body = [(__CFString *)v21 body];
            *buf = 138412546;
            v67 = title;
            v68 = 2112;
            v69 = body;
            _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "UNMutableNotificationContent content title: %@, body: %@", buf, 0x16u);
          }

          intent = [v11 intent];
          _className = [intent _className];

          if ([_className isEqualToString:@"DNDToggleDoNotDisturbIntent"])
          {
            v51 = [MEMORY[0x277CE1FB0] iconNamed:@"dnd-notif-icon"];
            [(__CFString *)v21 setIcon:v51, v51];
          }

          else
          {
            if ([_className isEqualToString:@"WFSetAirplaneModeIntent"])
            {
              [MEMORY[0x277CE1FB0] iconNamed:@"airplane-notif-icon"];
            }

            else
            {
              [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:_bundleIdForDisplay];
            }
            v53 = ;
            [(__CFString *)v21 setIcon:v53, v53];
          }

          v36 = [(ATXActionNotificationServer *)self _localizedStringForKey:@"ATXNotificationFooter" defaultValue:@"ATXNotificationFooter" languageCode:0];
          [(__CFString *)v21 setFooter:v36];

          intent2 = [v11 intent];
          atx_supportsBackgroundExecution = [intent2 atx_supportsBackgroundExecution];

          if (atx_supportsBackgroundExecution && (([MEMORY[0x277D42590] isAudioAccessory] & 1) != 0 || !objc_msgSend(v11, "isTVWhiteListedLongFormMedia")))
          {
            [(__CFString *)v21 setShouldBackgroundDefaultAction:1];
            [(__CFString *)v21 setShouldPreventNotificationDismissalAfterDefaultAction:1];
          }

          else
          {
            [(__CFString *)v21 setShouldBackgroundDefaultAction:1];
          }

          v39 = __atxlog_handle_notifications([(__CFString *)v21 setCategoryIdentifier:@"suggestedShortcut"]);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v67 = "[ATXActionNotificationServer _postNotificationForProactiveSuggestion:blendingCacheUpdateUUID:]";
            v68 = 2112;
            v69 = v21;
            _os_log_impl(&dword_2263AA000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s posting content: %@", buf, 0x16u);
          }

          intent3 = [v11 intent];
          _intents_bundleIdForDisplay = [intent3 _intents_bundleIdForDisplay];
          v42 = _intents_bundleIdForDisplay;
          if (_intents_bundleIdForDisplay)
          {
            bundleId2 = _intents_bundleIdForDisplay;
          }

          else
          {
            bundleId2 = [v11 bundleId];
          }

          v44 = bundleId2;

          v45 = [objc_opt_class() _requestIdentifierForBundleId:v44];
          v46 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v45 content:v21 trigger:0 destinations:6];
          v47 = __atxlog_handle_notifications(v46);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v46 identifier];
            *buf = 138412290;
            v67 = identifier;
            _os_log_impl(&dword_2263AA000, v47, OS_LOG_TYPE_DEFAULT, "posting notification req id: %@", buf, 0xCu);
          }

          objc_initWeak(buf, self);
          notificationCenter = self->_notificationCenter;
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __95__ATXActionNotificationServer__postNotificationForProactiveSuggestion_blendingCacheUpdateUUID___block_invoke;
          v61[3] = &unk_2785A0CC0;
          objc_copyWeak(&v65, buf);
          v62 = v11;
          v63 = suggestionCopy;
          v64 = dCopy;
          [(UNUserNotificationCenter *)notificationCenter addNotificationRequest:v46 withCompletionHandler:v61];

          objc_destroyWeak(&v65);
          objc_destroyWeak(buf);
        }

        else
        {
          v34 = __atxlog_handle_ui(actionKey);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            v50 = @"nil";
            *buf = 138412802;
            v67 = v56;
            v68 = 2112;
            if (encodeAsProto)
            {
              v50 = @"not nil";
            }

            v69 = v50;
            v70 = 2112;
            v71 = suggestionCopy;
            _os_log_fault_impl(&dword_2263AA000, v34, OS_LOG_TYPE_FAULT, "not posting notification for actionKey: %@, proactiveSuggestionData: %@, suggestion: %@", buf, 0x20u);
          }

          [(PETScalarEventTracker *)self->_notifyErrorTracker trackEventWithPropertyValues:&unk_283A58BB0];
        }
      }

      else
      {
        v35 = __atxlog_handle_notifications(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [ATXActionNotificationServer _postNotificationForProactiveSuggestion:blendingCacheUpdateUUID:];
        }

        [(PETScalarEventTracker *)self->_notifyErrorTracker trackEventWithPropertyValues:&unk_283A58B98];
      }
    }

    else
    {
      v33 = __atxlog_handle_notifications(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [ATXActionNotificationServer _postNotificationForProactiveSuggestion:blendingCacheUpdateUUID:];
      }

      [(PETScalarEventTracker *)self->_notifyErrorTracker trackEventWithPropertyValues:&unk_283A58B80];
    }
  }

  else
  {
    v32 = __atxlog_handle_notifications(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ATXActionNotificationServer _postNotificationForProactiveSuggestion:blendingCacheUpdateUUID:];
    }

    [(PETScalarEventTracker *)self->_notifyErrorTracker trackEventWithPropertyValues:&unk_283A58B68];
  }
}

void __95__ATXActionNotificationServer__postNotificationForProactiveSuggestion_blendingCacheUpdateUUID___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = __atxlog_handle_notifications(WeakRetained);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __95__ATXActionNotificationServer__postNotificationForProactiveSuggestion_blendingCacheUpdateUUID___block_invoke_cold_1();
    }

    v8 = __atxlog_handle_blending(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [*(a1 + 32) actionKey];
      v12 = *(a1 + 40);
      *buf = 138413058;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v3;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%@ - failed to post notification with actionKey: %@, error: %@, suggestion: %@", buf, 0x2Au);
    }

    if (WeakRetained)
    {
      [WeakRetained[5] trackEventWithPropertyValues:&unk_283A58BC8];
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "notif success", buf, 2u);
    }

    v14 = __atxlog_handle_blending(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [*(a1 + 32) actionKey];
      v18 = *(a1 + 40);
      *buf = 138412802;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%@ - posted notification with actionKey: %@, suggestion: %@", buf, 0x20u);
    }

    if (WeakRetained)
    {
      [WeakRetained[6] trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
    }

    v19 = objc_opt_new();
    v20 = *(a1 + 48);
    v21 = [*(a1 + 40) uuid];
    v23 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [WeakRetained _sendLockscreenEventToBiomeWithDate:v19 eventType:1 blendingCacheId:v20 suggestionIds:v22];
  }
}

- (void)removeActionPredictionNotificationsMatchingAction:(id)action
{
  actionCopy = action;
  v5 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  notificationCenter = self->_notificationCenter;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__ATXActionNotificationServer_removeActionPredictionNotificationsMatchingAction___block_invoke;
  v11[3] = &unk_2785A0CE8;
  objc_copyWeak(&v14, &location);
  v11[4] = self;
  v7 = actionCopy;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:v11];
  v9 = [MEMORY[0x277D425A0] waitForSemaphore:v8 timeoutSeconds:2.0];
  if (v9 == 1)
  {
    v10 = __atxlog_handle_notifications(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXActionNotificationServer removeActionPredictionNotificationsMatchingAction:];
    }
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __81__ATXActionNotificationServer_removeActionPredictionNotificationsMatchingAction___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v23 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  v22 = v4;
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [*(a1 + 32) _actionKeyFromNotification:v9];
        v11 = [*(a1 + 40) actionKey];
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13 && [v10 isEqualToString:v11])
        {
          v14 = [*(a1 + 32) _unarchiveProactiveSuggestionFromNotification:v9];
          v15 = [v14 atxActionExecutableObject];
          if (v15 && [_ATXActionUtils isContainmentBetweenAction:v15 other:*(a1 + 40)])
          {
            v16 = [v9 request];
            v17 = [v16 identifier];
            [v23 addObject:v17];

            v4 = v22;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v6);
  }

  v18 = [v23 count];
  if (v18)
  {
    v18 = [WeakRetained[1] removeDeliveredNotificationsWithIdentifiers:v23];
  }

  v19 = __atxlog_handle_notifications(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [*(a1 + 40) actionKey];
    *buf = 138412546;
    v29 = v23;
    v30 = 2112;
    v31 = v20;
    _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Removed delivered notifications: %@ matching action: %@", buf, 0x16u);

    v4 = v22;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)removeAllActionPredictionNotificationsAndTrackEvent:(BOOL)event recordFeedback:(BOOL)feedback
{
  feedbackCopy = feedback;
  eventCopy = event;
  v24 = *MEMORY[0x277D85DE8];
  v7 = __atxlog_handle_feedback(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = eventCopy;
    v22 = 1024;
    v23 = feedbackCopy;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "removing all lockscreen predictions with trackEvent: %{BOOL}d and recordFeedback: %{BOOL}d", &buf, 0xEu);
  }

  if (eventCopy)
  {
    [(PETScalarEventTracker *)self->_removeTracker trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
  }

  v8 = dispatch_semaphore_create(0);
  objc_initWeak(&buf, self);
  notificationCenter = self->_notificationCenter;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __98__ATXActionNotificationServer_removeAllActionPredictionNotificationsAndTrackEvent_recordFeedback___block_invoke;
  v16 = &unk_2785A0D10;
  objc_copyWeak(&v19, &buf);
  v20 = feedbackCopy;
  selfCopy = self;
  v10 = v8;
  v18 = v10;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:&v13];
  v11 = [MEMORY[0x277D425A0] waitForSemaphore:v10 timeoutSeconds:{2.0, v13, v14, v15, v16, selfCopy}];
  if (v11 == 1)
  {
    v12 = __atxlog_handle_notifications(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXActionNotificationServer removeActionPredictionNotificationsMatchingAction:];
    }
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&buf);
}

void __98__ATXActionNotificationServer_removeAllActionPredictionNotificationsAndTrackEvent_recordFeedback___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    v21 = WeakRetained;
    v22 = v3;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = [*(a1 + 32) _unarchiveProactiveSuggestionFromNotification:v10];
          v12 = [*(a1 + 32) _blendingCacheUpdateUUIDFromNotification:v10];
          v13 = v12;
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            v15 = *(a1 + 32);
            v16 = objc_opt_new();
            v17 = [v11 uuid];
            v30 = v17;
            v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
            [v15 _sendLockscreenEventToBiomeWithDate:v16 eventType:4 blendingCacheId:v13 suggestionIds:v18];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
      }

      while (v7);
    }

    v5 = v21;
    v3 = v22;
  }

  v19 = __atxlog_handle_notifications([v5[1] removeAllDeliveredNotifications]);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v3 count];
    *buf = 134217984;
    v29 = v20;
    _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Removed all delivered notifications: %ld", buf, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_removeNotificationWithIdentifier:(id)identifier trackEvent:(BOOL)event
{
  eventCopy = event;
  v13[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (eventCopy)
  {
    [(PETScalarEventTracker *)self->_removeTracker trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
  }

  notificationCenter = self->_notificationCenter;
  v13[0] = identifierCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(UNUserNotificationCenter *)notificationCenter removeDeliveredNotificationsWithIdentifiers:v8];

  v10 = __atxlog_handle_notifications(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = identifierCopy;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Removed notification with identifier: %@", &v11, 0xCu);
  }
}

- (void)_sendLockscreenEventToBiomeWithDate:(id)date eventType:(int)type blendingCacheId:(id)id suggestionIds:(id)ids
{
  v7 = *&type;
  v10 = MEMORY[0x277CEB610];
  idsCopy = ids;
  idCopy = id;
  dateCopy = date;
  v14 = [[v10 alloc] initWithDate:dateCopy eventType:v7 blendingCacheId:idCopy suggestionIds:idsCopy];

  v15 = [MEMORY[0x277CEB8E8] uiEventWithLockscreenEvent:v14];
  v16 = objc_opt_new();
  v17 = __atxlog_handle_feedback([v16 donateGenericUIEvent:v15]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ATXActionNotificationServer _sendLockscreenEventToBiomeWithDate:v14 eventType:? blendingCacheId:? suggestionIds:?];
  }
}

- (BOOL)_isRTL
{
  v2 = MEMORY[0x277CBEAF8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  LOBYTE(v2) = [v2 characterDirectionForLanguage:localeIdentifier] == 2;

  return v2;
}

- (id)_localizedStringForKey:(id)key defaultValue:(id)value languageCode:(id)code
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  codeCopy = code;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!codeCopy)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    codeCopy = [currentLocale localeIdentifier];

    if (!codeCopy)
    {
LABEL_16:
      if ([valueCopy length])
      {
        v20 = valueCopy;
      }

      else
      {
        v20 = keyCopy;
      }

      v16 = v20;
      goto LABEL_20;
    }
  }

  localizations = [v10 localizations];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = CFBundleCopyLocalizationsForPreferences(localizations, [MEMORY[0x277CBEA60] arrayWithObject:codeCopy]);
  v14 = [(__CFArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v14)
  {

    goto LABEL_16;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v23;
  while (2)
  {
    v18 = 0;
    v19 = v16;
    do
    {
      if (*v23 != v17)
      {
        objc_enumerationMutation(v13);
      }

      CFBundleGetBundleWithIdentifier([v10 bundleIdentifier]);
      v16 = CFBundleCopyLocalizedStringForLocalization();

      if (v16 && ([v16 isEqualToString:keyCopy] & 1) == 0)
      {

        goto LABEL_20;
      }

      ++v18;
      v19 = v16;
    }

    while (v15 != v18);
    v15 = [(__CFArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_20:

  return v16;
}

- (id)_actionKeyFromNotification:(id)notification
{
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"actionKey"];

  return v6;
}

- (id)_blendingCacheUpdateUUIDFromNotification:(id)notification
{
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"blendingCacheUpdateUUID"];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_unarchiveProactiveSuggestionFromNotification:(id)notification
{
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"proactiveSuggestion"];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = v7;
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D42068]) initWithProtoData:v9];
      goto LABEL_10;
    }

    v11 = __atxlog_handle_ui(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXActionNotificationServer _unarchiveProactiveSuggestionFromNotification:?];
    }
  }

  else
  {
    v9 = __atxlog_handle_ui(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXActionNotificationServer _unarchiveProactiveSuggestionFromNotification:?];
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v77 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  v9 = __atxlog_handle_notifications(handlerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v70 = responseCopy;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "daemon didReceiveNotificationResponse: %@", buf, 0xCu);
  }

  notification = [responseCopy notification];
  v11 = [(ATXActionNotificationServer *)self _unarchiveProactiveSuggestionFromNotification:notification];

  atxActionExecutableObject = [v11 atxActionExecutableObject];
  notification2 = [responseCopy notification];
  v14 = [(ATXActionNotificationServer *)self _blendingCacheUpdateUUIDFromNotification:notification2];

  actionIdentifier = [responseCopy actionIdentifier];
  v16 = [actionIdentifier isEqualToString:*MEMORY[0x277CE20E8]];
  v17 = v16;
  v18 = __atxlog_handle_feedback(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v70 = actionIdentifier;
    v71 = 2112;
    v72 = atxActionExecutableObject;
    _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "received notification center response with identifier: %@ for action: %@", buf, 0x16u);
  }

  if (v11 && atxActionExecutableObject)
  {
    v62 = responseCopy;
    if (v17)
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }

    v63 = v14;
    v21 = objc_opt_new();
    [v11 uuid];
    v23 = v22 = v11;
    v68 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
    [(ATXActionNotificationServer *)self _sendLockscreenEventToBiomeWithDate:v21 eventType:v20 blendingCacheId:v63 suggestionIds:v24];

    v14 = v63;
    v25 = objc_opt_new();
    [(ATXActionNotificationServer *)self _sendLockscreenEventToBiomeWithDate:v25 eventType:4 blendingCacheId:v63 suggestionIds:0];

    engagementRecordManager = self->_engagementRecordManager;
    if (v17)
    {
      v61 = v22;
      [(ATXEngagementRecordManager *)engagementRecordManager addEngagedSuggestion:v22 engagementRecordType:1];
      if ([atxActionExecutableObject actionType] == 5)
      {
        v27 = __atxlog_handle_notifications(5);
        responseCopy = v62;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          bundleId = [atxActionExecutableObject bundleId];
          *buf = 138412290;
          v70 = bundleId;
          _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "launching UAUserActivityProxy for bundleId: %@", buf, 0xCu);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __107__ATXActionNotificationServer_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
        block[3] = &unk_278596BB8;
        v65 = atxActionExecutableObject;
        dispatch_async(MEMORY[0x277D85CD0], block);
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy);
        }

        v11 = v61;
        goto LABEL_42;
      }

      responseCopy = v62;
      if ([atxActionExecutableObject actionType] || (objc_msgSend(atxActionExecutableObject, "intent"), v30 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v30, (isKindOfClass & 1) == 0))
      {
        if ([atxActionExecutableObject actionType] && objc_msgSend(atxActionExecutableObject, "actionType") != 2)
        {
          actionType = [atxActionExecutableObject actionType];
          if (actionType != 1)
          {
            v57 = __atxlog_handle_notifications(actionType);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
            {
              [ATXActionNotificationServer userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
            }

            linkAction = 0;
            v51 = 0;
            v11 = v61;
            if (!handlerCopy)
            {
              goto LABEL_41;
            }

            goto LABEL_40;
          }

          v53 = objc_alloc(MEMORY[0x277CD4158]);
          userActivity = [atxActionExecutableObject userActivity];
          bundleId2 = [atxActionExecutableObject bundleId];
          v34 = [v53 initWithUserActivity:userActivity bundleIdentifier:bundleId2];

          linkAction = 0;
          v38 = 2;
LABEL_32:

          v40 = __atxlog_handle_notifications(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2263AA000, v40, OS_LOG_TYPE_DEFAULT, "invoking ShortcutsRuntime for execution", buf, 2u);
          }

          if (linkAction)
          {
            v59 = v38;
            v60 = v34;
            v42 = objc_alloc(MEMORY[0x277D7A150]);
            bundleId3 = [atxActionExecutableObject bundleId];
            v44 = [v42 initWithLinkAction:linkAction bundleIdentifier:bundleId3 resultSurface:2];
            currentWorkflowRunnerClient = self->_currentWorkflowRunnerClient;
            self->_currentWorkflowRunnerClient = v44;
          }

          else
          {
            if (!v34)
            {
              v58 = __atxlog_handle_notifications(v41);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
              {
                [ATXActionNotificationServer userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
              }

              linkAction = 0;
              v51 = 0;
              v11 = v61;
LABEL_39:
              v14 = v63;
              if (!handlerCopy)
              {
LABEL_41:

                goto LABEL_42;
              }

LABEL_40:
              handlerCopy[2](handlerCopy);
              goto LABEL_41;
            }

            v59 = v38;
            v60 = v34;
            v46 = [objc_alloc(MEMORY[0x277D7A150]) initWithINShortcut:v34 executionContext:3];
            bundleId3 = self->_currentWorkflowRunnerClient;
            self->_currentWorkflowRunnerClient = v46;
          }

          [(WFSuggestionsWorkflowRunnerClient *)self->_currentWorkflowRunnerClient setDelegate:self];
          v66[0] = @"notifID";
          notification3 = [v62 notification];
          request = [notification3 request];
          identifier = [request identifier];
          v66[1] = @"atxAction";
          v67[0] = identifier;
          v67[1] = atxActionExecutableObject;
          v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
          [(WFSuggestionsWorkflowRunnerClient *)self->_currentWorkflowRunnerClient setUserInfo:v50];

          [(WFSuggestionsWorkflowRunnerClient *)self->_currentWorkflowRunnerClient start];
          [MEMORY[0x277CEB668] logActionViewForType:v59 inContext:2];
          v51 = v60;
          v11 = v61;
          goto LABEL_39;
        }

        bundleId4 = [atxActionExecutableObject bundleId];
        intent = [atxActionExecutableObject intent];
        [intent _setLaunchId:bundleId4];

        v37 = objc_alloc(MEMORY[0x277CD4158]);
        userActivity = [atxActionExecutableObject intent];
        v34 = [v37 initWithIntent:userActivity];
        linkAction = 0;
      }

      else
      {
        userActivity = [atxActionExecutableObject intent];
        linkAction = [userActivity linkAction];
        v34 = 0;
      }

      v38 = 1;
      goto LABEL_32;
    }

    [(ATXEngagementRecordManager *)engagementRecordManager addHiddenSuggestion:v22 duration:120 engagementRecordType:*MEMORY[0x277CEBA90]];
    v11 = v22;
    responseCopy = v62;
    if (!handlerCopy)
    {
      goto LABEL_42;
    }

LABEL_24:
    handlerCopy[2](handlerCopy);
    goto LABEL_42;
  }

  if (v14)
  {
    v29 = __atxlog_handle_feedback(v19);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      *buf = 138413058;
      v70 = v56;
      v71 = 2112;
      v72 = v14;
      v73 = 2112;
      v74 = v11;
      v75 = 2112;
      v76 = atxActionExecutableObject;
      _os_log_fault_impl(&dword_2263AA000, v29, OS_LOG_TYPE_FAULT, "%@ - found blendingCacheUpdateUUID: %@, but no suggestion or action: %@ %@", buf, 0x2Au);
    }
  }

  if (handlerCopy)
  {
    goto LABEL_24;
  }

LABEL_42:
}

void __107__ATXActionNotificationServer_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D0AC70];
  v7[0] = *MEMORY[0x277D0AC58];
  v7[1] = v2;
  v8[0] = MEMORY[0x277CBEC38];
  v8[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v4 = [*(a1 + 32) userActivityProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __107__ATXActionNotificationServer_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2;
  v5[3] = &unk_2785A0C48;
  v6 = *(a1 + 32);
  [v4 launchActivityWithOptions:v3 completionHandler:v5];
}

void __107__ATXActionNotificationServer_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    goto LABEL_5;
  }

  v7 = __atxlog_handle_notifications(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) bundleId];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "successfully launched UAUserActivityProxy for bundleId: %@", &v12, 0xCu);
  }

  if (v6)
  {
LABEL_5:
    v9 = __atxlog_handle_notifications(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __107__ATXActionNotificationServer_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2_cold_1(a1);
    }
  }

  v10 = [*(a1 + 32) userActivityProxy];
  v11 = objc_opt_self();
}

- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress
{
  v12 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  progressCopy = progress;
  v7 = __atxlog_handle_notifications(progressCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = clientCopy;
    v10 = 2048;
    v11 = progressCopy;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "workflowRunnerClient: <%p> didStartRunningWorkflowWithProgress: <%p>", &v8, 0x16u);
  }
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v27 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  errorCopy = error;
  v11 = __atxlog_handle_notifications(errorCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134217984;
    v26 = clientCopy;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "workflowRunnerClient: <%p> didFinishRunningWorkflowWithOutput:error:cancelled:", &v25, 0xCu);
  }

  if (errorCopy || cancelledCopy)
  {
    if (cancelledCopy)
    {
      v20 = __atxlog_handle_notifications(v12);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "ShortcutsRuntime was cancelled. Keeping notification on screen.", &v25, 2u);
      }
    }

    if (errorCopy)
    {
      v21 = __atxlog_handle_notifications(v12);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ATXActionNotificationServer workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:];
      }

      [MEMORY[0x277CEB668] logError:7 inContext:2];
    }
  }

  else
  {
    v13 = __atxlog_handle_notifications(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "ShortcutsRuntime completed successfully.", &v25, 2u);
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v15 = clientCopy;
      userInfo = [v15 userInfo];
      v17 = [userInfo objectForKeyedSubscript:@"notifID"];
      v18 = __atxlog_handle_notifications(v17);
      v19 = v18;
      if (v17)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = v17;
          _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "therefore removing notification with req id: %@", &v25, 0xCu);
        }

        [(ATXActionNotificationServer *)self _removeNotificationWithIdentifier:v17 trackEvent:1];
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [ATXActionNotificationServer workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:];
        }
      }

      v23 = [userInfo objectForKeyedSubscript:@"atxAction"];
      if ([v23 actionType] == 1)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      [MEMORY[0x277CEB668] logActionExecuteForType:v24 inContext:2];
    }

    else
    {
      v22 = __atxlog_handle_notifications(isKindOfClass);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [ATXActionNotificationServer workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:];
      }
    }
  }
}

- (void)_sendLockscreenEventToBiomeWithDate:(uint64_t)a1 eventType:(void *)a2 blendingCacheId:suggestionIds:.cold.1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v9 = [a2 jsonDict];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);
}

- (void)_unarchiveProactiveSuggestionFromNotification:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x16u);
}

- (void)_unarchiveProactiveSuggestionFromNotification:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0xCu);
}

void __107__ATXActionNotificationServer_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

@end