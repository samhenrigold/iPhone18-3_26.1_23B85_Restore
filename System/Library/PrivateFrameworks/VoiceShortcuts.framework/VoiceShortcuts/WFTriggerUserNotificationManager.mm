@interface WFTriggerUserNotificationManager
+ (id)backgroundRunningCategory;
+ (id)categoryIdentifiers;
+ (id)pauseLoopCategory;
+ (id)promptCategory;
- (BOOL)_postNotificationOfType:(unint64_t)type forTrigger:(id)trigger workflowReference:(id)reference removeDeliveredNotifications:(BOOL)notifications pendingTriggerEventIDs:(id)ds actionIcons:(id)icons error:(id *)error;
- (BOOL)postBackgroundRunningNotificationWithConfiguredTriggers:(id)triggers userInfo:(id)info error:(id *)error;
- (BOOL)postNotificationOfType:(unint64_t)type forTrigger:(id)trigger workflowReference:(id)reference removeDeliveredNotifications:(BOOL)notifications pendingTriggerEventIDs:(id)ds actionIcons:(id)icons error:(id *)error;
- (WFTriggerNotificationDebouncer)debouncer;
- (WFTriggerUserNotificationManager)initWithUserNotificationManager:(id)manager;
- (WFTriggerUserNotificationManagerDelegate)delegate;
- (void)postActionRequiredNotificationForTrigger:(id)trigger notificationType:(unint64_t)type workflowReference:(id)reference pendingTriggerEventIDs:(id)ds;
- (void)postNotificationThatTrigger:(id)trigger failedWithError:(id)error notificationRequestIdentifier:(id)identifier;
- (void)removeNotificationsWithTriggerIdentifier:(id)identifier;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation WFTriggerUserNotificationManager

- (WFTriggerUserNotificationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)postActionRequiredNotificationForTrigger:(id)trigger notificationType:(unint64_t)type workflowReference:(id)reference pendingTriggerEventIDs:(id)ds
{
  v22 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  dsCopy = ds;
  v17 = 0;
  LOBYTE(type) = [(WFTriggerUserNotificationManager *)self _postNotificationOfType:type forTrigger:triggerCopy workflowReference:reference removeDeliveredNotifications:type == 2 pendingTriggerEventIDs:dsCopy actionIcons:0 error:&v17];
  v12 = v17;
  v13 = v12;
  if ((type & 1) == 0)
  {
    if (v12)
    {
      v14 = getWFTriggersLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[WFTriggerUserNotificationManager postActionRequiredNotificationForTrigger:notificationType:workflowReference:pendingTriggerEventIDs:]";
        v20 = 2114;
        v21 = v13;
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_ERROR, "%s Could not post trigger notification after debouncing with error: %{public}@", buf, 0x16u);
      }
    }

    delegate = [(WFTriggerUserNotificationManager *)self delegate];
    identifier = [triggerCopy identifier];
    [delegate notificationManager:self didFailToPostActionRequiredNotificationWithTriggerIdentifier:identifier pendingTriggerEventIDs:dsCopy];
  }
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerUserNotificationManager.m" lineNumber:370 description:{@"Invalid parameter not satisfying: %@", @"completionHandler", centerCopy}];
  }

  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    actionIdentifier = [responseCopy actionIdentifier];
    *buf = 136315394;
    v41 = "[WFTriggerUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]";
    v42 = 2114;
    v43 = actionIdentifier;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s daemon didReceiveNotificationResponse with action (%{public}@)", buf, 0x16u);
  }

  actionIdentifier2 = [responseCopy actionIdentifier];
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  notification2 = [responseCopy notification];
  request2 = [notification2 request];
  content2 = [request2 content];
  categoryIdentifier = [content2 categoryIdentifier];
  v22 = [categoryIdentifier isEqualToString:*MEMORY[0x277D7CDB0]];

  if (v22)
  {
    v23 = WFTriggerIDFromNotificationUserInfo();
    v24 = WFPendingTriggerEventIDsFromNotificationUserInfo();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![actionIdentifier2 isEqualToString:*MEMORY[0x277CE20F0]])
      {
        if ([actionIdentifier2 isEqualToString:@"runAction"])
        {
          delegate = [(WFTriggerUserNotificationManager *)self delegate];
          [delegate notificationManager:self receivedConfirmationToRunTriggerWithIdentifier:v23 pendingTriggerEventIDs:v24];
LABEL_22:

          handlerCopy[2](handlerCopy);
          goto LABEL_23;
        }

        delegate = getWFTriggersLogObject();
        if (!os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

LABEL_26:
        actionIdentifier3 = [responseCopy actionIdentifier];
        *buf = 136315650;
        v41 = "[WFTriggerUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]";
        v42 = 2114;
        v43 = actionIdentifier3;
        v44 = 2114;
        v45 = responseCopy;
        _os_log_impl(&dword_23103C000, delegate, OS_LOG_TYPE_ERROR, "%s unexpected actionIdentifier (%{public}@) from notification reponse (%{public}@)", buf, 0x20u);

        goto LABEL_22;
      }

      goto LABEL_19;
    }

    delegate = getWFTriggersLogObject();
    if (!os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  notification3 = [responseCopy notification];
  request3 = [notification3 request];
  content3 = [request3 content];
  categoryIdentifier2 = [content3 categoryIdentifier];
  if ([categoryIdentifier2 isEqualToString:*MEMORY[0x277D7CDA0]])
  {
    v30 = [actionIdentifier2 isEqualToString:@"disableAction"];

    if (v30)
    {
      v23 = WFTriggerIDsToDisableFromNotificationUserInfo();
      delegate2 = [(WFTriggerUserNotificationManager *)self delegate];
      [delegate2 notificationManager:self didRequestDisablementOfTriggersWithIdentifiers:v23];

      handlerCopy[2](handlerCopy);
LABEL_23:

      goto LABEL_24;
    }
  }

  else
  {
  }

  notification4 = [responseCopy notification];
  request4 = [notification4 request];
  content4 = [request4 content];
  categoryIdentifier3 = [content4 categoryIdentifier];
  v36 = [categoryIdentifier3 isEqualToString:*MEMORY[0x277D7CDA8]];

  if (v36)
  {
    v23 = WFTriggerIDFromNotificationUserInfo();
    v24 = WFPendingTriggerEventIDsFromNotificationUserInfo();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![actionIdentifier2 isEqualToString:*MEMORY[0x277CE20F0]])
      {
        if ([actionIdentifier2 isEqualToString:@"continueAction"])
        {
          delegate = [(WFTriggerUserNotificationManager *)self delegate];
          [delegate notificationManager:self receivedContinuePotentialLoopForTriggerWithIdentifier:v23 pendingTriggerEventIDs:v24];
          goto LABEL_22;
        }

        if ([actionIdentifier2 isEqualToString:@"stopAction"])
        {
          delegate = [(WFTriggerUserNotificationManager *)self delegate];
          [delegate notificationManager:self receivedStopPotentialLoopForTriggerWithIdentifier:v23];
          goto LABEL_22;
        }

        delegate = getWFTriggersLogObject();
        if (!os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        goto LABEL_26;
      }

LABEL_19:
      delegate = [(WFTriggerUserNotificationManager *)self delegate];
      [delegate notificationManager:self didDismissTriggerWithIdentifier:v23 pendingTriggerEventIDs:v24];
      goto LABEL_22;
    }

    delegate = getWFTriggersLogObject();
    if (!os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

LABEL_21:
    *buf = 136315394;
    v41 = "[WFTriggerUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]";
    v42 = 2114;
    v43 = userInfo;
    _os_log_impl(&dword_23103C000, delegate, OS_LOG_TYPE_ERROR, "%s Missing or invalid triggerID from notification reponse userInfo: %{public}@", buf, 0x16u);
    goto LABEL_22;
  }

LABEL_24:
}

- (void)removeNotificationsWithTriggerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  userNotificationManager = [(WFTriggerUserNotificationManager *)self userNotificationManager];
  notificationCenter = [userNotificationManager notificationCenter];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__WFTriggerUserNotificationManager_removeNotificationsWithTriggerIdentifier___block_invoke;
  v14[3] = &unk_2788FED70;
  v7 = identifierCopy;
  v15 = v7;
  selfCopy = self;
  [notificationCenter getDeliveredNotificationsWithCompletionHandler:v14];

  userNotificationManager2 = [(WFTriggerUserNotificationManager *)self userNotificationManager];
  notificationCenter2 = [userNotificationManager2 notificationCenter];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__WFTriggerUserNotificationManager_removeNotificationsWithTriggerIdentifier___block_invoke_2;
  v11[3] = &unk_2788FED70;
  v12 = v7;
  selfCopy2 = self;
  v10 = v7;
  [notificationCenter2 getPendingNotificationRequestsWithCompletionHandler:v11];
}

void __77__WFTriggerUserNotificationManager_removeNotificationsWithTriggerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 request];
        v9 = [v8 content];
        v10 = [v9 userInfo];
        v11 = WFTriggerIDFromNotificationUserInfo();

        if ([v11 isEqualToString:*(a1 + 32)])
        {
          v12 = [*(a1 + 40) userNotificationManager];
          v13 = [v12 notificationCenter];
          v14 = [v7 request];
          v15 = [v14 identifier];
          v22 = v15;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
          [v13 removeDeliveredNotificationsWithIdentifiers:v16];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }
}

void __77__WFTriggerUserNotificationManager_removeNotificationsWithTriggerIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 request];
        v9 = [v8 content];
        v10 = [v9 userInfo];
        v11 = WFTriggerIDFromNotificationUserInfo();

        if ([v11 isEqualToString:*(a1 + 32)])
        {
          v12 = [*(a1 + 40) userNotificationManager];
          v13 = [v12 notificationCenter];
          v14 = [v7 request];
          v15 = [v14 identifier];
          v22 = v15;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
          [v13 removePendingNotificationRequestsWithIdentifiers:v16];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }
}

- (BOOL)postBackgroundRunningNotificationWithConfiguredTriggers:(id)triggers userInfo:(id)info error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  triggersCopy = triggers;
  infoCopy = info;
  v10 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v11 = WFLocalizedString(@"Shortcuts");
  [v10 setTitle:v11];

  v12 = MEMORY[0x277CCACA8];
  v13 = WFLocalizedPluralString(@"%lu automations recently ran in the background.");
  v14 = [v12 localizedStringWithFormat:v13, objc_msgSend(triggersCopy, "count")];
  [v10 setBody:v14];

  defaultSound = [MEMORY[0x277CE1FE0] defaultSound];
  [v10 setSound:defaultSound];

  [v10 setCategoryIdentifier:*MEMORY[0x277D7CDA0]];
  [v10 setInterruptionLevel:1];
  [v10 setShouldSuppressDefaultAction:1];
  [v10 setShouldAuthenticateDefaultAction:0];
  [v10 setShouldHideDate:1];
  [v10 setUserInfo:infoCopy];
  v16 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"com.apple.siriactionsd.TriggerBackgroundRunning" content:v10 trigger:0 destinations:15];
  v17 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[WFTriggerUserNotificationManager postBackgroundRunningNotificationWithConfiguredTriggers:userInfo:error:]";
    _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_DEFAULT, "%s Showing background running trigger notification", &buf, 0xCu);
  }

  v18 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3650;
  v31 = __Block_byref_object_dispose__3651;
  v32 = 0;
  userNotificationManager = [(WFTriggerUserNotificationManager *)self userNotificationManager];
  notificationCenter = [userNotificationManager notificationCenter];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __107__WFTriggerUserNotificationManager_postBackgroundRunningNotificationWithConfiguredTriggers_userInfo_error___block_invoke;
  v25[3] = &unk_2788FED48;
  p_buf = &buf;
  v21 = v18;
  v26 = v21;
  [notificationCenter addNotificationRequest:v16 withCompletionHandler:v25];

  v22 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v21, v22);
  if (error)
  {
    *error = *(*(&buf + 1) + 40);
  }

  v23 = *(*(&buf + 1) + 40) == 0;

  _Block_object_dispose(&buf, 8);
  return v23;
}

void __107__WFTriggerUserNotificationManager_postBackgroundRunningNotificationWithConfiguredTriggers_userInfo_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)postNotificationThatTrigger:(id)trigger failedWithError:(id)error notificationRequestIdentifier:(id)identifier
{
  v54 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  errorCopy = error;
  identifierCopy = identifier;
  if (triggerCopy)
  {
    if (errorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerUserNotificationManager.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"configuredTrigger"}];

    if (errorCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTriggerUserNotificationManager.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"error"}];

LABEL_3:
  selfCopy = self;
  v12 = errorCopy;
  userInfo = [v12 userInfo];
  v14 = *MEMORY[0x277CCA7E8];
  v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  v16 = v12;
  if (v15)
  {
    v17 = v12;
    do
    {
      userInfo2 = [v17 userInfo];
      v16 = [userInfo2 objectForKeyedSubscript:v14];

      userInfo3 = [v16 userInfo];
      v20 = [userInfo3 objectForKeyedSubscript:v14];

      v17 = v16;
    }

    while (v20);
  }

  localizedFailureReason = [v16 localizedFailureReason];
  if (localizedFailureReason && (v22 = localizedFailureReason, [v16 localizedDescription], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
  {
    v24 = MEMORY[0x277CCACA8];
    localizedFailureReason2 = [v16 localizedFailureReason];
    localizedDescription = [v16 localizedDescription];
    v27 = [v24 stringWithFormat:@"%@\n\n%@", localizedFailureReason2, localizedDescription];
  }

  else
  {
    localizedFailureReason3 = [v16 localizedFailureReason];

    if (localizedFailureReason3)
    {
      [v16 localizedFailureReason];
    }

    else
    {
      [v16 localizedDescription];
    }
    v27 = ;
  }

  v29 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v30 = WFLocalizedString(@"Shortcuts");
  [v29 setTitle:v30];

  [v29 setShouldHideDate:0];
  [v29 setCategoryIdentifier:@"triggerAlertCategory"];
  v31 = WFLocalizedString(@"Automation failed");
  [v29 setSubtitle:v31];

  v32 = MEMORY[0x277CCACA8];
  v33 = WFLocalizedString(@"“%1$@” encountered an error: %2$@");
  trigger = [triggerCopy trigger];
  localizedDescriptionWithConfigurationSummary = [trigger localizedDescriptionWithConfigurationSummary];
  v36 = [v32 localizedStringWithFormat:v33, localizedDescriptionWithConfigurationSummary, v27];
  [v29 setBody:v36];

  identifier = [triggerCopy identifier];
  v38 = WFTriggerNotificationUserInfo();
  [v29 setUserInfo:v38];

  v39 = [MEMORY[0x277CE1FC0] requestWithIdentifier:identifierCopy content:v29 trigger:0 destinations:15];
  v40 = getWFTriggersLogObject();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [triggerCopy identifier];
    identifier3 = [v39 identifier];
    *buf = 136315650;
    v49 = "[WFTriggerUserNotificationManager postNotificationThatTrigger:failedWithError:notificationRequestIdentifier:]";
    v50 = 2114;
    v51 = identifier2;
    v52 = 2114;
    v53 = identifier3;
    _os_log_impl(&dword_23103C000, v40, OS_LOG_TYPE_DEFAULT, "%s Showing error alert for trigger (%{public}@), request id (%{public}@)", buf, 0x20u);
  }

  userNotificationManager = [(WFTriggerUserNotificationManager *)selfCopy userNotificationManager];
  notificationCenter = [userNotificationManager notificationCenter];
  [notificationCenter addNotificationRequest:v39 withCompletionHandler:&__block_literal_global_3665];
}

void __110__WFTriggerUserNotificationManager_postNotificationThatTrigger_failedWithError_notificationRequestIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = getWFTriggersLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[WFTriggerUserNotificationManager postNotificationThatTrigger:failedWithError:notificationRequestIdentifier:]_block_invoke";
      v6 = 2114;
      v7 = v2;
      _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_ERROR, "%s Failed to post error notification: %{public}@", &v4, 0x16u);
    }
  }
}

- (BOOL)_postNotificationOfType:(unint64_t)type forTrigger:(id)trigger workflowReference:(id)reference removeDeliveredNotifications:(BOOL)notifications pendingTriggerEventIDs:(id)ds actionIcons:(id)icons error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  referenceCopy = reference;
  dsCopy = ds;
  iconsCopy = icons;
  identifier = [triggerCopy identifier];
  trigger = [triggerCopy trigger];
  v17 = getWFTriggersLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[WFTriggerUserNotificationManager _postNotificationOfType:forTrigger:workflowReference:removeDeliveredNotifications:pendingTriggerEventIDs:actionIcons:error:]";
    *&buf[12] = 2112;
    *&buf[14] = identifier;
    _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_DEFAULT, "%s Notify trigger for ID: %@", buf, 0x16u);
  }

  v18 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v19 = WFLocalizedString(@"Shortcuts");
  [v18 setTitle:v19];

  v20 = WFTriggerNotificationUserInfo();
  [v18 setUserInfo:v20];

  [v18 setShouldHideDate:0];
  [v18 setShouldIgnoreDoNotDisturb:1];
  if (type == 2)
  {
    localizedDescriptionWithConfigurationSummary = [trigger localizedDescriptionWithConfigurationSummary];
    [v18 setTitle:localizedDescriptionWithConfigurationSummary];

    v30 = WFLocalizedString(@"Potential recursive behavior encountered");
    [v18 setBody:v30];

    defaultSound = [MEMORY[0x277CE1FE0] defaultSound];
    [v18 setSound:defaultSound];

    [v18 setCategoryIdentifier:*MEMORY[0x277D7CDA8]];
    [v18 setInterruptionLevel:2];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"pauseLoop:%@", identifier];
    [v18 setThreadIdentifier:v32];

    [v18 setShouldSuppressDefaultAction:1];
    [v18 setShouldAuthenticateDefaultAction:0];
    if (VCLocaleIsRTL())
    {
      v25 = @"arrow.up.backward.square.fill";
    }

    else
    {
      v25 = @"arrow.up.right.square.fill";
    }
  }

  else
  {
    if (type == 1)
    {
      [v18 setSound:0];
      localizedPastTenseDescription = [trigger localizedPastTenseDescription];
      [v18 setTitle:localizedPastTenseDescription];

      v27 = WFLocalizedString(@"Running your automation");
      [v18 setBody:v27];

      [v18 setCategoryIdentifier:@"triggerAlertCategory"];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"alert:%@", identifier];
      [v18 setThreadIdentifier:v28];

      goto LABEL_14;
    }

    if (type)
    {
      goto LABEL_14;
    }

    v21 = VCPromptNotificationTitleForTriggerWithPendingCount(trigger, [dsCopy count]);
    [v18 setSubtitle:v21];

    actionsDescription = [referenceCopy actionsDescription];
    [v18 setBody:actionsDescription];

    defaultSound2 = [MEMORY[0x277CE1FE0] defaultSound];
    [v18 setSound:defaultSound2];

    [v18 setCategoryIdentifier:*MEMORY[0x277D7CDB0]];
    [v18 setInterruptionLevel:2];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"prompt:%@", identifier];
    [v18 setThreadIdentifier:v24];

    [v18 setShouldSuppressDefaultAction:1];
    [v18 setShouldAuthenticateDefaultAction:0];
    if (VCLocaleIsRTL())
    {
      v25 = @"arrow.up.backward.square.fill";
    }

    else
    {
      v25 = @"arrow.up.right.square.fill";
    }
  }

  [v18 setAccessoryImageName:v25];
LABEL_14:
  v33 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v55 = __Block_byref_object_copy__3650;
  v56 = __Block_byref_object_dispose__3651;
  v57 = 0;
  objc_initWeak(&location, self);
  userNotificationManager = [(WFTriggerUserNotificationManager *)self userNotificationManager];
  notificationCenter = [userNotificationManager notificationCenter];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __159__WFTriggerUserNotificationManager__postNotificationOfType_forTrigger_workflowReference_removeDeliveredNotifications_pendingTriggerEventIDs_actionIcons_error___block_invoke;
  v46[3] = &unk_2788FED20;
  objc_copyWeak(v51, &location);
  notificationsCopy = notifications;
  v36 = identifier;
  v47 = v36;
  v37 = v18;
  v51[1] = type;
  v48 = v37;
  v50 = buf;
  v38 = v33;
  v49 = v38;
  [notificationCenter getDeliveredNotificationsWithCompletionHandler:v46];

  v39 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v38, v39);
  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  v40 = *(*&buf[8] + 40) == 0;

  objc_destroyWeak(v51);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  return v40;
}

void __159__WFTriggerUserNotificationManager__postNotificationOfType_forTrigger_workflowReference_removeDeliveredNotifications_pendingTriggerEventIDs_actionIcons_error___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v28 = a2;
  val = objc_loadWeakRetained((a1 + 64));
  if (val)
  {
    v30 = [MEMORY[0x277CBEB18] array];
    if (*(a1 + 80) == 1)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v3 = v28;
      v4 = [v3 countByEnumeratingWithState:&v37 objects:v51 count:16];
      if (v4)
      {
        v5 = *v38;
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v38 != v5)
            {
              objc_enumerationMutation(v3);
            }

            v7 = *(*(&v37 + 1) + 8 * i);
            v8 = [v7 request];
            v9 = [v8 content];
            v10 = [v9 userInfo];
            v11 = WFTriggerIDFromNotificationUserInfo();

            if ([v11 isEqualToString:*(a1 + 32)])
            {
              v12 = [v7 request];
              v13 = [v12 identifier];
              [v30 addObject:v13];
            }
          }

          v4 = [v3 countByEnumeratingWithState:&v37 objects:v51 count:16];
        }

        while (v4);
      }
    }

    v14 = MEMORY[0x277CE1FC0];
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v15 UUIDString];
    v17 = [v14 requestWithIdentifier:v16 content:*(a1 + 40) trigger:0 destinations:15];

    v18 = *(a1 + 72);
    v19 = getWFTriggersLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = @"pause";
      if (v18 == 1)
      {
        v20 = @"alert";
      }

      if (v18)
      {
        v21 = v20;
      }

      else
      {
        v21 = @"prompt";
      }

      v22 = *(a1 + 32);
      v23 = [v17 identifier];
      v24 = *(a1 + 80);
      *buf = 136316162;
      v42 = "[WFTriggerUserNotificationManager _postNotificationOfType:forTrigger:workflowReference:removeDeliveredNotifications:pendingTriggerEventIDs:actionIcons:error:]_block_invoke";
      v43 = 2114;
      v44 = v21;
      v45 = 2114;
      v46 = v22;
      v47 = 2114;
      v48 = v23;
      v49 = 1024;
      v50 = v24;
      _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_DEFAULT, "%s Showing %{public}@ for firing trigger (%{public}@), request id (%{public}@), should remove: %d", buf, 0x30u);
    }

    objc_initWeak(buf, val);
    v25 = [val userNotificationManager];
    v26 = [v25 notificationCenter];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __159__WFTriggerUserNotificationManager__postNotificationOfType_forTrigger_workflowReference_removeDeliveredNotifications_pendingTriggerEventIDs_actionIcons_error___block_invoke_250;
    v31[3] = &unk_2788FECF8;
    objc_copyWeak(&v35, buf);
    v34 = *(a1 + 56);
    v36 = *(a1 + 80);
    v27 = v30;
    v32 = v27;
    v33 = *(a1 + 48);
    [v26 addNotificationRequest:v17 withCompletionHandler:v31];

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }
}

void __159__WFTriggerUserNotificationManager__postNotificationOfType_forTrigger_workflowReference_removeDeliveredNotifications_pendingTriggerEventIDs_actionIcons_error___block_invoke_250(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v3)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[WFTriggerUserNotificationManager _postNotificationOfType:forTrigger:workflowReference:removeDeliveredNotifications:pendingTriggerEventIDs:actionIcons:error:]_block_invoke";
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Error posting notification: %@", &v12, 0x16u);
    }

    v6 = *(*(a1 + 48) + 8);
    v7 = v3;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
LABEL_5:

    goto LABEL_10;
  }

  if (*(a1 + 64) == 1 && [*(a1 + 32) count])
  {
    v9 = [WeakRetained userNotificationManager];
    v10 = [v9 notificationCenter];
    [v10 removeDeliveredNotificationsWithIdentifiers:*(a1 + 32)];

    v8 = getWFTriggersLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 136315394;
      v13 = "[WFTriggerUserNotificationManager _postNotificationOfType:forTrigger:workflowReference:removeDeliveredNotifications:pendingTriggerEventIDs:actionIcons:error:]_block_invoke";
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Removed old notifications with IDs: %@", &v12, 0x16u);
    }

    goto LABEL_5;
  }

LABEL_10:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)postNotificationOfType:(unint64_t)type forTrigger:(id)trigger workflowReference:(id)reference removeDeliveredNotifications:(BOOL)notifications pendingTriggerEventIDs:(id)ds actionIcons:(id)icons error:(id *)error
{
  notificationsCopy = notifications;
  triggerCopy = trigger;
  referenceCopy = reference;
  dsCopy = ds;
  iconsCopy = icons;
  if (triggerCopy)
  {
    if (referenceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerUserNotificationManager.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"configuredTrigger"}];

    if (referenceCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTriggerUserNotificationManager.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"workflowReference"}];

LABEL_3:
  if ([dsCopy count])
  {
    debouncer = [(WFTriggerUserNotificationManager *)self debouncer];
    [debouncer addEventsWithIdentifiers:dsCopy notificationType:type configuredTrigger:triggerCopy workflowReference:referenceCopy];

    v21 = 1;
  }

  else
  {
    v21 = [(WFTriggerUserNotificationManager *)self _postNotificationOfType:type forTrigger:triggerCopy workflowReference:referenceCopy removeDeliveredNotifications:notificationsCopy pendingTriggerEventIDs:dsCopy actionIcons:iconsCopy error:error];
  }

  return v21;
}

- (WFTriggerNotificationDebouncer)debouncer
{
  debouncer = self->_debouncer;
  if (!debouncer)
  {
    v4 = objc_alloc_init(WFTriggerNotificationDebouncer);
    v5 = self->_debouncer;
    self->_debouncer = v4;

    [(WFTriggerNotificationDebouncer *)self->_debouncer setDelegate:self];
    debouncer = self->_debouncer;
  }

  return debouncer;
}

- (WFTriggerUserNotificationManager)initWithUserNotificationManager:(id)manager
{
  v27[4] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerUserNotificationManager.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"userNotificationManager"}];
  }

  v26.receiver = self;
  v26.super_class = WFTriggerUserNotificationManager;
  v7 = [(WFTriggerUserNotificationManager *)&v26 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_userNotificationManager, manager);
    userNotificationManager = v8->_userNotificationManager;
    v10 = +[WFTriggerUserNotificationManager alertCategory];
    v27[0] = v10;
    v11 = +[WFTriggerUserNotificationManager promptCategory];
    v27[1] = v11;
    v12 = +[WFTriggerUserNotificationManager backgroundRunningCategory];
    v27[2] = v12;
    v13 = +[WFTriggerUserNotificationManager pauseLoopCategory];
    v27[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
    [(WFUserNotificationManager *)userNotificationManager registerCategoriesIfNecessary:v14];

    v15 = v8->_userNotificationManager;
    v16 = +[WFTriggerUserNotificationManager alertCategory];
    [(WFUserNotificationManager *)v15 addObserver:v8 forCategory:v16];

    v17 = v8->_userNotificationManager;
    v18 = +[WFTriggerUserNotificationManager promptCategory];
    [(WFUserNotificationManager *)v17 addObserver:v8 forCategory:v18];

    v19 = v8->_userNotificationManager;
    v20 = +[WFTriggerUserNotificationManager backgroundRunningCategory];
    [(WFUserNotificationManager *)v19 addObserver:v8 forCategory:v20];

    v21 = v8->_userNotificationManager;
    v22 = +[WFTriggerUserNotificationManager pauseLoopCategory];
    [(WFUserNotificationManager *)v21 addObserver:v8 forCategory:v22];

    v23 = v8;
  }

  return v8;
}

+ (id)categoryIdentifiers
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277D7CDB0];
  v4[1] = @"triggerAlertCategory";
  v4[2] = *MEMORY[0x277D7CDA8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)pauseLoopCategory
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE1F88] iconWithSystemImageName:@"play"];
  v3 = MEMORY[0x277CE1F80];
  v4 = WFLocalizedString(@"Continue");
  v5 = [v3 actionWithIdentifier:@"continueAction" title:v4 options:0 icon:v2];

  v6 = [MEMORY[0x277CE1F88] iconWithSystemImageName:@"stop"];
  v7 = MEMORY[0x277CE1F80];
  v8 = WFLocalizedString(@"Stop");
  v9 = [v7 actionWithIdentifier:@"stopAction" title:v8 options:0 icon:v6];

  v10 = objc_alloc(MEMORY[0x277CE1F50]);
  v11 = [v10 initWithIdentifier:*MEMORY[0x277D7CDA8]];
  v14[0] = v5;
  v14[1] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [v11 setActions:v12];

  [v11 setOptions:131073];
  [v11 setListPriority:2];

  return v11;
}

+ (id)backgroundRunningCategory
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE1F88] iconWithSystemImageName:@"arrow.up.forward.square"];
  v3 = MEMORY[0x277CE1F80];
  v4 = WFLocalizedString(@"Edit in Shortcuts");
  v5 = [v3 actionWithIdentifier:@"editAction" title:v4 options:4 icon:v2];

  v6 = MEMORY[0x277CE1F80];
  v7 = WFLocalizedString(@"Disable Automations");
  v8 = [v6 actionWithIdentifier:@"disableAction" title:v7 options:2 icon:0];

  v9 = objc_alloc(MEMORY[0x277CE1F50]);
  v10 = [v9 initWithIdentifier:*MEMORY[0x277D7CDA0]];
  v13[0] = v5;
  v13[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v10 setActions:v11];

  [v10 setListPriority:1];

  return v10;
}

+ (id)promptCategory
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE1F88] iconWithSystemImageName:@"play"];
  v3 = MEMORY[0x277CE1F80];
  v4 = WFLocalizedString(@"Run");
  v5 = [v3 actionWithIdentifier:@"runAction" title:v4 options:0 icon:v2];

  v6 = objc_alloc(MEMORY[0x277CE1F50]);
  v7 = [v6 initWithIdentifier:*MEMORY[0x277D7CDB0]];
  v10[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v7 setActions:v8];

  [v7 setOptions:131073];
  [v7 setListPriority:2];

  return v7;
}

@end