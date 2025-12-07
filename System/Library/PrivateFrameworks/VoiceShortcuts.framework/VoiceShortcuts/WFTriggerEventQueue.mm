@interface WFTriggerEventQueue
+ (BOOL)shouldRunTrigger:(id)trigger forEvent:(id)event runEvents:(id)events error:(id *)error;
+ (double)rateLimitingTimeoutForTrigger:(id)trigger runEvents:(id)events numFailures:(unint64_t)failures;
- (BOOL)deleteTriggerEvent:(id)event error:(id *)error;
- (BOOL)isTriggerEventStale:(id)stale;
- (BOOL)shouldRunEmailOrMessageTrigger:(id)trigger forEvent:(id)event runEvents:(id)events error:(id *)error;
- (WFTriggerEventQueue)initWithDatabaseProvider:(id)provider notificationManager:(id)manager notificationScheduler:(id)scheduler;
- (WFTriggerEventQueue)initWithDatabaseProvider:(id)provider notificationManager:(id)manager notificationScheduler:(id)scheduler triggerBootManager:(id)bootManager;
- (id)configuredTriggerForIdentifier:(id)identifier workflowReference:(id *)reference error:(id *)error;
- (id)databaseWithError:(id *)error;
- (id)nextTriggerEventWithError:(id *)error;
- (id)triggerEventForConfiguredTrigger:(id)trigger eventInfo:(id)info confirmed:(BOOL)confirmed paused:(BOOL)paused error:(id *)error;
- (unint64_t)numberOfEventsInQueue;
- (void)clearWithCompletionHandler:(id)handler;
- (void)deactivateEphemeralTriggerIfNeeded:(id)needed completion:(id)completion;
- (void)didFinishRunningWithError:(id)error cancelled:(BOOL)cancelled trigger:(id)trigger runEvent:(id)event;
- (void)disableTriggersWithIdentifiers:(id)identifiers;
- (void)enqueueTriggerWithIdentifier:(id)identifier eventInfo:(id)info force:(BOOL)force completion:(id)completion;
- (void)handleRemovedIgnoredNotifications:(id)notifications;
- (void)notificationManager:(id)manager didDismissTriggerWithIdentifier:(id)identifier pendingTriggerEventIDs:(id)ds;
- (void)notificationManager:(id)manager didFailToPostActionRequiredNotificationWithTriggerIdentifier:(id)identifier pendingTriggerEventIDs:(id)ds;
- (void)notificationManager:(id)manager didRequestDisablementOfTriggersWithIdentifiers:(id)identifiers;
- (void)notificationManager:(id)manager receivedConfirmationToRunTriggerWithIdentifier:(id)identifier pendingTriggerEventIDs:(id)ds;
- (void)notificationManager:(id)manager receivedContinuePotentialLoopForTriggerWithIdentifier:(id)identifier pendingTriggerEventIDs:(id)ds;
- (void)notificationManager:(id)manager receivedStopPotentialLoopForTriggerWithIdentifier:(id)identifier;
- (void)removeAllStaleTriggerEventsIgnoringValidIDs:(id)ds;
- (void)removePendingTriggerEventsWithEventIDs:(id)ds;
- (void)resume;
- (void)resumeWithConfiguredTrigger:(id)trigger workflowReference:(id)reference eventInfo:(id)info;
- (void)runWithConfiguredTrigger:(id)trigger workflowReference:(id)reference eventInfo:(id)info;
- (void)sendRateLimitEncounteredNotificationForTrigger:(id)trigger;
- (void)setConfirmedForTriggerEventIDs:(id)ds error:(id *)error;
- (void)setPausedForTriggerEventIDs:(id)ds paused:(BOOL)paused error:(id *)error;
- (void)storeLoopDetectionForTriggerWithIdentifier:(id)identifier loopDetected:(BOOL)detected;
@end

@implementation WFTriggerEventQueue

- (void)deactivateEphemeralTriggerIfNeeded:(id)needed completion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  if (_os_feature_enabled_impl() && ([neededCopy shouldRecur] & 1) == 0)
  {
    v23 = 0;
    v8 = [(WFTriggerEventQueue *)self databaseWithError:&v23];
    v9 = v23;
    v10 = v9;
    if (v8)
    {
      v22 = v9;
      v11 = [v8 recordWithDescriptor:neededCopy error:&v22];
      v12 = v22;

      if (v11)
      {
        [v11 setEnabled:0];
        v21 = v12;
        v13 = [v8 saveRecord:v11 withDescriptor:neededCopy error:&v21];
        v14 = v21;

        if (v13)
        {
          standardClient = [MEMORY[0x277D79D98] standardClient];
          identifier = [neededCopy identifier];
          trigger = [neededCopy trigger];
          triggerBacking = [objc_opt_class() triggerBacking];
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __69__WFTriggerEventQueue_deactivateEphemeralTriggerIfNeeded_completion___block_invoke;
          v19[3] = &unk_2788FEF20;
          v20 = completionCopy;
          [standardClient unregisterTriggerWithIdentifier:identifier triggerBacking:triggerBacking completion:v19];
        }

        else
        {
          (*(completionCopy + 2))(completionCopy, 0, v14);
        }

        v12 = v14;
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0, v12);
      }

      v10 = v12;
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, v9);
    }
  }
}

- (void)didFinishRunningWithError:(id)error cancelled:(BOOL)cancelled trigger:(id)trigger runEvent:(id)event
{
  cancelledCopy = cancelled;
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  triggerCopy = trigger;
  eventCopy = event;
  v13 = getWFTriggersLogObject();
  notificationManager = v13;
  if (errorCopy)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[WFTriggerEventQueue didFinishRunningWithError:cancelled:trigger:runEvent:]";
      v25 = 2112;
      v26 = errorCopy;
      _os_log_impl(&dword_23103C000, notificationManager, OS_LOG_TYPE_ERROR, "%s Finished running with error: %@", buf, 0x16u);
    }

    notificationManager = [(WFTriggerEventQueue *)self notificationManager];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [notificationManager postNotificationThatTrigger:triggerCopy failedWithError:errorCopy notificationRequestIdentifier:uUIDString];

    v17 = 2;
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v24 = "[WFTriggerEventQueue didFinishRunningWithError:cancelled:trigger:runEvent:]";
      v25 = 1024;
      LODWORD(v26) = cancelledCopy;
      _os_log_impl(&dword_23103C000, notificationManager, OS_LOG_TYPE_DEBUG, "%s Finished running workflow in background extension (cancelled: %d)", buf, 0x12u);
    }

    v17 = 1;
  }

  queue = [(WFTriggerEventQueue *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__WFTriggerEventQueue_didFinishRunningWithError_cancelled_trigger_runEvent___block_invoke;
  block[3] = &unk_2788FEF70;
  block[4] = self;
  v21 = eventCopy;
  v22 = v17;
  v19 = eventCopy;
  dispatch_async(queue, block);

  [(WFTriggerEventQueue *)self resume];
}

void __76__WFTriggerEventQueue_didFinishRunningWithError_cancelled_trigger_runEvent___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v7 = 0;
  v3 = [v2 databaseWithError:&v7];
  v4 = v7;
  if (v3)
  {
    [v3 setOutcome:a1[6] forRunEvent:a1[5]];
  }

  else
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[5];
      *buf = 136315650;
      v9 = "[WFTriggerEventQueue didFinishRunningWithError:cancelled:trigger:runEvent:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Unable to load database, not setting outcome for run event %@: %{public}@", buf, 0x20u);
    }
  }
}

- (void)sendRateLimitEncounteredNotificationForTrigger:(id)trigger
{
  v4 = MEMORY[0x277CBEB38];
  triggerCopy = trigger;
  v12 = objc_alloc_init(v4);
  v6 = WFLocalizedString(@"Last attempt to run your Shortcut failed. Please wait before trying again.");
  [v12 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7D008] code:6004 userInfo:v12];
  v8 = MEMORY[0x277CCACA8];
  identifier = [triggerCopy identifier];
  v10 = [v8 stringWithFormat:@"%@-rate-limit-error", identifier];

  notificationManager = [(WFTriggerEventQueue *)self notificationManager];
  [notificationManager postNotificationThatTrigger:triggerCopy failedWithError:v7 notificationRequestIdentifier:v10];
}

- (void)notificationManager:(id)manager didRequestDisablementOfTriggersWithIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v6 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[WFTriggerEventQueue notificationManager:didRequestDisablementOfTriggersWithIdentifiers:]";
    v13 = 2114;
    v14 = identifiersCopy;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Disabling triggers with identifiers: %{public}@", buf, 0x16u);
  }

  if ([identifiersCopy count])
  {
    queue = [(WFTriggerEventQueue *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __90__WFTriggerEventQueue_notificationManager_didRequestDisablementOfTriggersWithIdentifiers___block_invoke;
    v9[3] = &unk_2788FFFC0;
    v9[4] = self;
    v10 = identifiersCopy;
    dispatch_async(queue, v9);
  }

  else
  {
    v8 = getWFTriggersLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v12 = "[WFTriggerEventQueue notificationManager:didRequestDisablementOfTriggersWithIdentifiers:]";
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEBUG, "%s No event info found to delete", buf, 0xCu);
    }
  }
}

- (void)notificationManager:(id)manager didFailToPostActionRequiredNotificationWithTriggerIdentifier:(id)identifier pendingTriggerEventIDs:(id)ds
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dsCopy = ds;
  v9 = getWFTriggersLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v15 = "[WFTriggerEventQueue notificationManager:didFailToPostActionRequiredNotificationWithTriggerIdentifier:pendingTriggerEventIDs:]";
    v16 = 2114;
    v17 = identifierCopy;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEBUG, "%s Failed to post notifciation prompt for trigger with identifier: %{public}@", buf, 0x16u);
  }

  if ([dsCopy count])
  {
    queue = [(WFTriggerEventQueue *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __127__WFTriggerEventQueue_notificationManager_didFailToPostActionRequiredNotificationWithTriggerIdentifier_pendingTriggerEventIDs___block_invoke;
    v12[3] = &unk_2788FFFC0;
    v12[4] = self;
    v13 = dsCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[WFTriggerEventQueue notificationManager:didFailToPostActionRequiredNotificationWithTriggerIdentifier:pendingTriggerEventIDs:]";
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEBUG, "%s No event info found to delete", buf, 0xCu);
    }
  }
}

- (void)notificationManager:(id)manager didDismissTriggerWithIdentifier:(id)identifier pendingTriggerEventIDs:(id)ds
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dsCopy = ds;
  v9 = getWFTriggersLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v15 = "[WFTriggerEventQueue notificationManager:didDismissTriggerWithIdentifier:pendingTriggerEventIDs:]";
    v16 = 2114;
    v17 = identifierCopy;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEBUG, "%s User dismissed notification prompt for trigger with identifier: %{public}@", buf, 0x16u);
  }

  if ([dsCopy count])
  {
    queue = [(WFTriggerEventQueue *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __98__WFTriggerEventQueue_notificationManager_didDismissTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke;
    v12[3] = &unk_2788FFFC0;
    v12[4] = self;
    v13 = dsCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[WFTriggerEventQueue notificationManager:didDismissTriggerWithIdentifier:pendingTriggerEventIDs:]";
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEBUG, "%s No event info found to delete", buf, 0xCu);
    }
  }
}

- (void)notificationManager:(id)manager receivedStopPotentialLoopForTriggerWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    queue = [(WFTriggerEventQueue *)self queue];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __93__WFTriggerEventQueue_notificationManager_receivedStopPotentialLoopForTriggerWithIdentifier___block_invoke;
    v11 = &unk_2788FFFC0;
    selfCopy = self;
    v13 = identifierCopy;
    dispatch_async(queue, &v8);

    [(WFTriggerEventQueue *)self resume:v8];
  }

  else
  {
    v7 = getWFTriggersLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[WFTriggerEventQueue notificationManager:receivedStopPotentialLoopForTriggerWithIdentifier:]";
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to stop loop for trigger because recieved confirmation with no trigger identifier", buf, 0xCu);
    }
  }
}

void __93__WFTriggerEventQueue_notificationManager_receivedStopPotentialLoopForTriggerWithIdentifier___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = [v2 databaseWithError:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = [v3 sortedRunEventsForTriggerID:*(a1 + 40)];
    v6 = [v5 descriptors];

    v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v8 = [v6 if_map:&__block_literal_global_247];

    [*(a1 + 32) removePendingTriggerEventsWithEventIDs:v8];
    [*(a1 + 32) storeLoopDetectionForTriggerWithIdentifier:*(a1 + 40) loopDetected:0];
  }

  else
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[WFTriggerEventQueue notificationManager:receivedStopPotentialLoopForTriggerWithIdentifier:]_block_invoke";
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Failed to remove events for trigger because database is not available: %{public}@", buf, 0x16u);
    }
  }
}

- (void)notificationManager:(id)manager receivedContinuePotentialLoopForTriggerWithIdentifier:(id)identifier pendingTriggerEventIDs:(id)ds
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dsCopy = ds;
  if (identifierCopy)
  {
    queue = [(WFTriggerEventQueue *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __120__WFTriggerEventQueue_notificationManager_receivedContinuePotentialLoopForTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke_2;
    v13[3] = &unk_2788FFFC0;
    v13[4] = self;
    v10 = &v14;
    v14 = identifierCopy;
    v11 = v13;
LABEL_7:
    dispatch_async(queue, v11);

    goto LABEL_8;
  }

  v12 = getWFTriggersLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v18 = "[WFTriggerEventQueue notificationManager:receivedContinuePotentialLoopForTriggerWithIdentifier:pendingTriggerEventIDs:]";
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEBUG, "%s Failed to continue loop for trigger because recieved confirmation with no trigger identifier", buf, 0xCu);
  }

  if ([dsCopy count])
  {
    queue = [(WFTriggerEventQueue *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__WFTriggerEventQueue_notificationManager_receivedContinuePotentialLoopForTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke;
    block[3] = &unk_2788FFFC0;
    block[4] = self;
    v10 = &v16;
    v16 = dsCopy;
    v11 = block;
    goto LABEL_7;
  }

LABEL_8:
}

void __120__WFTriggerEventQueue_notificationManager_receivedContinuePotentialLoopForTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v13 = 0;
  v3 = [v2 databaseWithError:&v13];
  v4 = v13;
  if (v3)
  {
    v5 = [v3 triggerEventsForTriggerIdentifier:*(a1 + 40)];
    v6 = [v5 descriptors];

    v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v8 = [v6 if_map:&__block_literal_global_243];

    v9 = *(a1 + 32);
    v12 = 0;
    [v9 setPausedForTriggerEventIDs:v8 paused:0 error:&v12];
    v10 = v12;
    if (v10)
    {
      v11 = getWFTriggersLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "[WFTriggerEventQueue notificationManager:receivedContinuePotentialLoopForTriggerWithIdentifier:pendingTriggerEventIDs:]_block_invoke_2";
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Failed to set paused for trigger events with error: %{public}@", buf, 0x16u);
      }
    }

    [*(a1 + 32) storeLoopDetectionForTriggerWithIdentifier:*(a1 + 40) loopDetected:0];
    [*(a1 + 32) resume];
  }

  else
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[WFTriggerEventQueue notificationManager:receivedContinuePotentialLoopForTriggerWithIdentifier:pendingTriggerEventIDs:]_block_invoke_2";
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Failed to stop loop for trigger because database is not available: %{public}@", buf, 0x16u);
    }
  }
}

- (void)notificationManager:(id)manager receivedConfirmationToRunTriggerWithIdentifier:(id)identifier pendingTriggerEventIDs:(id)ds
{
  v29 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  identifierCopy = identifier;
  dsCopy = ds;
  v11 = dsCopy;
  if (identifierCopy)
  {
    v12 = [dsCopy count];
    queue = [(WFTriggerEventQueue *)self queue];
    if (v12)
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __113__WFTriggerEventQueue_notificationManager_receivedConfirmationToRunTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke_239;
      v20 = &unk_2788FFFC0;
      selfCopy = self;
      v14 = &v22;
      v22 = v11;
      dispatch_async(queue, &v17);

      [(WFTriggerEventQueue *)self resume:v17];
LABEL_10:

      goto LABEL_11;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__WFTriggerEventQueue_notificationManager_receivedConfirmationToRunTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke_2;
    block[3] = &unk_2788FFFC0;
    block[4] = self;
    v14 = &v24;
    v24 = identifierCopy;
    v16 = block;
LABEL_9:
    dispatch_async(queue, v16);

    goto LABEL_10;
  }

  v15 = getWFTriggersLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v28 = "[WFTriggerEventQueue notificationManager:receivedConfirmationToRunTriggerWithIdentifier:pendingTriggerEventIDs:]";
    _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEBUG, "%s Failed to run trigger because recieved confirmation with no trigger identifier", buf, 0xCu);
  }

  if ([v11 count])
  {
    queue = [(WFTriggerEventQueue *)self queue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __113__WFTriggerEventQueue_notificationManager_receivedConfirmationToRunTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke;
    v25[3] = &unk_2788FFFC0;
    v25[4] = self;
    v14 = &v26;
    v26 = v11;
    v16 = v25;
    goto LABEL_9;
  }

LABEL_11:
}

void __113__WFTriggerEventQueue_notificationManager_receivedConfirmationToRunTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = 0;
  v11 = 0;
  v4 = [v2 configuredTriggerForIdentifier:v3 workflowReference:&v11 error:&v10];
  v5 = v11;
  v6 = v10;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v9 = getWFTriggersLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[WFTriggerEventQueue notificationManager:receivedConfirmationToRunTriggerWithIdentifier:pendingTriggerEventIDs:]_block_invoke_2";
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Failed to fire trigger because it could not be found: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_new();
    [v8 resumeWithConfiguredTrigger:v4 workflowReference:v5 eventInfo:v9];
  }
}

void __113__WFTriggerEventQueue_notificationManager_receivedConfirmationToRunTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke_239(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v5 = 0;
  [v2 setConfirmedForTriggerEventIDs:v1 error:&v5];
  v3 = v5;
  if (v3)
  {
    v4 = getWFTriggersLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "[WFTriggerEventQueue notificationManager:receivedConfirmationToRunTriggerWithIdentifier:pendingTriggerEventIDs:]_block_invoke";
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_ERROR, "%s Failed to set confirmed for trigger events with error: %{public}@", buf, 0x16u);
    }
  }
}

- (void)storeLoopDetectionForTriggerWithIdentifier:(id)identifier loopDetected:(BOOL)detected
{
  detectedCopy = detected;
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = 0;
  v8 = [(WFTriggerEventQueue *)self databaseWithError:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:v8];
    [v10 storeLoopDetectionForTriggerWithIdentifier:identifierCopy loopDetected:detectedCopy];
  }

  else
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[WFTriggerEventQueue storeLoopDetectionForTriggerWithIdentifier:loopDetected:]";
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Unable to load database: %{public}@", buf, 0x16u);
    }
  }
}

- (void)disableTriggersWithIdentifiers:(id)identifiers
{
  v14 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = 0;
  v6 = [(WFTriggerEventQueue *)self databaseWithError:&v9];
  v7 = v9;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:v6];
    [v8 disableTriggersWithIdentifiers:identifiersCopy];
  }

  else
  {
    v8 = getWFTriggersLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[WFTriggerEventQueue disableTriggersWithIdentifiers:]";
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Unable to load database: %{public}@", buf, 0x16u);
    }
  }
}

- (BOOL)isTriggerEventStale:(id)stale
{
  v3 = MEMORY[0x277CBEA80];
  staleCopy = stale;
  currentCalendar = [v3 currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  dateCreated = [staleCopy dateCreated];

  v8 = [currentCalendar components:16 fromDate:dateCreated toDate:date options:0];

  LOBYTE(dateCreated) = [v8 day] > 6;
  return dateCreated;
}

- (void)removeAllStaleTriggerEventsIgnoringValidIDs:(id)ds
{
  v40 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  v34 = 0;
  v6 = [(WFTriggerEventQueue *)self databaseWithError:&v34];
  v7 = v34;
  v8 = v7;
  if (v6)
  {
    v27 = v7;
    v28 = v6;
    allSortedTriggerEvents = [v6 allSortedTriggerEvents];
    descriptors = [allSortedTriggerEvents descriptors];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = descriptors;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = v12;
    v14 = *v31;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        identifier = [v16 identifier];
        if ([dsCopy containsObject:identifier])
        {

LABEL_15:
          v22 = getWFTriggersLogObject();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          identifier2 = [v16 identifier];
          *buf = 136315394;
          v37 = "[WFTriggerEventQueue removeAllStaleTriggerEventsIgnoringValidIDs:]";
          v38 = 2114;
          v39 = identifier2;
          v24 = v22;
          v25 = OS_LOG_TYPE_DEFAULT;
          v26 = "%s Trigger event is valid with id: %{public}@";
LABEL_17:
          _os_log_impl(&dword_23103C000, v24, v25, v26, buf, 0x16u);
          goto LABEL_18;
        }

        v18 = [(WFTriggerEventQueue *)self isTriggerEventStale:v16];

        if (!v18)
        {
          goto LABEL_15;
        }

        v19 = getWFTriggersLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          identifier3 = [v16 identifier];
          *buf = 136315394;
          v37 = "[WFTriggerEventQueue removeAllStaleTriggerEventsIgnoringValidIDs:]";
          v38 = 2114;
          v39 = identifier3;
          _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_DEFAULT, "%s Removing stale trigger event with id: %{public}@", buf, 0x16u);
        }

        v29 = 0;
        v21 = [(WFTriggerEventQueue *)self deleteTriggerEvent:v16 error:&v29];
        v22 = v29;
        if (!v21)
        {
          identifier2 = getWFTriggersLogObject();
          if (os_log_type_enabled(identifier2, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v37 = "[WFTriggerEventQueue removeAllStaleTriggerEventsIgnoringValidIDs:]";
            v38 = 2114;
            v39 = v22;
            v24 = identifier2;
            v25 = OS_LOG_TYPE_ERROR;
            v26 = "%s Could not delete trigger notification with error %{public}@";
            goto LABEL_17;
          }

LABEL_18:
        }

LABEL_19:
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (!v13)
      {
LABEL_21:

        v8 = v27;
        v6 = v28;
        goto LABEL_24;
      }
    }
  }

  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v37 = "[WFTriggerEventQueue removeAllStaleTriggerEventsIgnoringValidIDs:]";
    v38 = 2114;
    v39 = v8;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Unable to load database: %{public}@", buf, 0x16u);
  }

LABEL_24:
}

- (void)handleRemovedIgnoredNotifications:(id)notifications
{
  v13 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v5 = getWFTriggersLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[WFTriggerEventQueue handleRemovedIgnoredNotifications:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEBUG, "%s Removing all trigger events", buf, 0xCu);
  }

  queue = [(WFTriggerEventQueue *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__WFTriggerEventQueue_handleRemovedIgnoredNotifications___block_invoke;
  v8[3] = &unk_2788FFFC0;
  v9 = notificationsCopy;
  selfCopy = self;
  v7 = notificationsCopy;
  dispatch_async(queue, v8);
}

void __57__WFTriggerEventQueue_handleRemovedIgnoredNotifications___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__WFTriggerEventQueue_handleRemovedIgnoredNotifications___block_invoke_2;
  v5[3] = &unk_2788FEC68;
  v6 = v2;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:v5];
  [*(a1 + 40) removeAllStaleTriggerEventsIgnoringValidIDs:v4];
}

void __57__WFTriggerEventQueue_handleRemovedIgnoredNotifications___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 request];
  v4 = [v3 content];
  v6 = [v4 userInfo];

  v5 = WFPendingTriggerEventIDsFromNotificationUserInfo();
  [*(a1 + 32) addObjectsFromArray:v5];
}

- (BOOL)shouldRunEmailOrMessageTrigger:(id)trigger forEvent:(id)event runEvents:(id)events error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(WFTriggerEventQueue *)self numberOfEventsInQueue]< 0xC9)
  {
    v9 = [eventCopy objectForKey:@"NewValue"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v9 count]< 0xB)
      {
        v11 = 1;
        goto LABEL_14;
      }

      v10 = getWFTriggersLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[WFTriggerEventQueue shouldRunEmailOrMessageTrigger:forEvent:runEvents:error:]";
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_INFO, "%s Trigger contains more than 10 emails or messages, not running trigger", &v13, 0xCu);
      }
    }

    else
    {

      v10 = getWFTriggersLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[WFTriggerEventQueue shouldRunEmailOrMessageTrigger:forEvent:runEvents:error:]";
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_INFO, "%s Could not cast eventInfo to NSArray", &v13, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = getWFTriggersLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[WFTriggerEventQueue shouldRunEmailOrMessageTrigger:forEvent:runEvents:error:]";
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, "%s Queue has more than 50 events, not running trigger", &v13, 0xCu);
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (void)removePendingTriggerEventsWithEventIDs:(id)ds
{
  v39 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = getWFTriggersLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v33 = "[WFTriggerEventQueue removePendingTriggerEventsWithEventIDs:]";
    v34 = 2114;
    v35 = dsCopy;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEBUG, "%s Attempting to remove pending trigger events with identifiers %{public}@", buf, 0x16u);
  }

  v31 = 0;
  v7 = [(WFTriggerEventQueue *)self databaseWithError:&v31];
  v8 = v31;
  if (v7)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = dsCopy;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v24 = v8;
      v25 = dsCopy;
      v12 = *v28;
      while (1)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [objc_alloc(MEMORY[0x277D79EF0]) initWithIdentifier:v14 objectType:4];
          v26 = 0;
          v16 = [v7 deleteReference:v15 error:&v26];
          v17 = v26;
          v18 = getWFTriggersLogObject();
          v19 = v18;
          if (v16)
          {
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_15;
            }

            *buf = 136315394;
            v33 = "[WFTriggerEventQueue removePendingTriggerEventsWithEventIDs:]";
            v34 = 2114;
            v35 = v14;
            v20 = v19;
            v21 = OS_LOG_TYPE_DEBUG;
            v22 = "%s Successfully deleted trigger event with identifier: %{public}@";
            v23 = 22;
          }

          else
          {
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }

            *buf = 136315650;
            v33 = "[WFTriggerEventQueue removePendingTriggerEventsWithEventIDs:]";
            v34 = 2114;
            v35 = v14;
            v36 = 2114;
            v37 = v17;
            v20 = v19;
            v21 = OS_LOG_TYPE_ERROR;
            v22 = "%s Failed to delete trigger event with identifier: %{public}@ with error: %{public}@";
            v23 = 32;
          }

          _os_log_impl(&dword_23103C000, v20, v21, v22, buf, v23);
LABEL_15:
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v38 count:16];
        if (!v11)
        {
          v8 = v24;
          dsCopy = v25;
          break;
        }
      }
    }
  }

  else
  {
    v9 = getWFTriggersLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[WFTriggerEventQueue removePendingTriggerEventsWithEventIDs:]";
      v34 = 2114;
      v35 = v8;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Unable to load database: %{public}@", buf, 0x16u);
    }
  }
}

- (void)setPausedForTriggerEventIDs:(id)ds paused:(BOOL)paused error:(id *)error
{
  pausedCopy = paused;
  v39 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = getWFTriggersLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v33 = "[WFTriggerEventQueue setPausedForTriggerEventIDs:paused:error:]";
    v34 = 2114;
    v35 = dsCopy;
    v36 = 1024;
    LODWORD(v37) = pausedCopy;
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEBUG, "%s Attempting to set paused on trigger events with ids: %{public}@ to %d", buf, 0x1Cu);
  }

  v31 = 0;
  v11 = [(WFTriggerEventQueue *)self databaseWithError:&v31];
  v12 = v31;
  if (v11)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = dsCopy;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v24 = v12;
      v25 = dsCopy;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v26 = 0;
          [v11 setPausedForTriggerEventWithIdentifier:v18 paused:pausedCopy error:{&v26, v24, v25}];
          v19 = v26;
          if (v19)
          {
            v20 = v19;
            v21 = getWFTriggersLogObject();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v33 = "[WFTriggerEventQueue setPausedForTriggerEventIDs:paused:error:]";
              v34 = 2114;
              v35 = v18;
              v36 = 2114;
              v37 = v20;
              _os_log_impl(&dword_23103C000, v21, OS_LOG_TYPE_ERROR, "%s Failed to set paused for trigger with eventID: %{public}@ error: %{public}@", buf, 0x20u);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v38 count:16];
      }

      while (v15);
      v12 = v24;
      dsCopy = v25;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 underlyingError:v12 reason:@"Unable to load database"];
    v13 = v22;
    if (error)
    {
      v23 = v22;
      *error = v13;
    }
  }
}

- (void)setConfirmedForTriggerEventIDs:(id)ds error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v31 = "[WFTriggerEventQueue setConfirmedForTriggerEventIDs:error:]";
    v32 = 2114;
    v33 = dsCopy;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEBUG, "%s Attempting to mark trigger events as confirmed with ids: %{public}@", buf, 0x16u);
  }

  v29 = 0;
  v9 = [(WFTriggerEventQueue *)self databaseWithError:&v29];
  v10 = v29;
  if (v9)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = dsCopy;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v22 = v10;
      v23 = dsCopy;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v24 = 0;
          [v9 setConfirmedForTriggerEventWithIdentifier:v16 error:{&v24, v22, v23}];
          v17 = v24;
          if (v17)
          {
            v18 = v17;
            v19 = getWFTriggersLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v31 = "[WFTriggerEventQueue setConfirmedForTriggerEventIDs:error:]";
              v32 = 2114;
              v33 = v16;
              v34 = 2114;
              v35 = v18;
              _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_ERROR, "%s Failed to set confirmed for trigger with eventID: %{public}@ error: %{public}@", buf, 0x20u);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v36 count:16];
      }

      while (v13);
      v10 = v22;
      dsCopy = v23;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 underlyingError:v10 reason:@"Unable to load database"];
    v11 = v20;
    if (error)
    {
      v21 = v20;
      *error = v11;
    }
  }
}

- (id)triggerEventForConfiguredTrigger:(id)trigger eventInfo:(id)info confirmed:(BOOL)confirmed paused:(BOOL)paused error:(id *)error
{
  pausedCopy = paused;
  confirmedCopy = confirmed;
  v28 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  infoCopy = info;
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = getWFTriggersLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[WFTriggerEventQueue triggerEventForConfiguredTrigger:eventInfo:confirmed:paused:error:]";
    _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s 🤖 Attempting to create trigger events for configured trigger", buf, 0xCu);
  }

  v25 = 0;
  v16 = [(WFTriggerEventQueue *)self databaseWithError:&v25];
  v17 = v25;
  if (v16)
  {
    trigger = [triggerCopy trigger];
    if (trigger)
    {
      v19 = WFSerializedTriggerEventInfo(infoCopy);
      identifier = [triggerCopy identifier];
      v21 = [v16 createTriggerEventWithTriggerID:identifier eventInfo:v19 confirmed:confirmedCopy paused:pausedCopy error:error];

      goto LABEL_9;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 underlyingError:v17 reason:@"Unable to load database"];
    trigger = v22;
    if (error)
    {
      v23 = v22;
      v21 = 0;
      *error = trigger;
      goto LABEL_9;
    }
  }

  v21 = 0;
LABEL_9:

  return v21;
}

- (id)configuredTriggerForIdentifier:(id)identifier workflowReference:(id *)reference error:(id *)error
{
  identifierCopy = identifier;
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  v25 = 0;
  v10 = [(WFTriggerEventQueue *)self databaseWithError:&v25];
  v11 = v25;
  if (v10)
  {
    v12 = [v10 configuredTriggerForTriggerID:identifierCopy];
    if (v12)
    {
      v13 = v12;
      workflowID = [v12 workflowID];

      if (workflowID)
      {
        if (!reference || ([v13 workflowID], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "referenceForWorkflowID:", v15), *reference = objc_claimAutoreleasedReturnValue(), v15, *reference))
        {
          v13 = v13;
          v16 = v13;
          goto LABEL_19;
        }

        v21 = MEMORY[0x277CCA9B8];
        workflowID2 = [v13 workflowID];
        v23 = [v21 vc_voiceShortcutErrorWithCode:6001 reason:{@"Couldn't find workflow (%@) for trigger with identifier: %@", workflowID2, identifierCopy}];
        if (error)
        {
          v23 = v23;
          *error = v23;
        }
      }

      else
      {
        v20 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:6001 reason:{@"Missing workflow identifier for trigger with identifier: %@", identifierCopy}];
        if (error)
        {
          v20 = v20;
          *error = v20;
        }
      }
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:6003 reason:{@"Could not find trigger with identifier: %@", identifierCopy}];
      if (error)
      {
        v19 = v19;
        *error = v19;
      }

      v13 = 0;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 underlyingError:v11 reason:@"Unable to load database"];
    v13 = v17;
    if (error)
    {
      v18 = v17;
      v16 = 0;
      *error = v13;
      goto LABEL_19;
    }
  }

  v16 = 0;
LABEL_19:

  return v16;
}

- (id)nextTriggerEventWithError:(id *)error
{
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  v14 = 0;
  v6 = [(WFTriggerEventQueue *)self databaseWithError:&v14];
  v7 = v14;
  if (v6)
  {
    runnableSortedTriggerEvents = [v6 runnableSortedTriggerEvents];
    descriptors = [runnableSortedTriggerEvents descriptors];
    firstObject = [descriptors firstObject];

    if (firstObject)
    {
      v11 = firstObject;
      v12 = v11;
      goto LABEL_8;
    }

    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 underlyingError:v7 reason:@"Unable to load database"];
    if (error)
    {
      v11 = v11;
      v12 = 0;
      *error = v11;
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (BOOL)deleteTriggerEvent:(id)event error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = 0;
  v8 = [(WFTriggerEventQueue *)self databaseWithError:&v15];
  v9 = v15;
  if (v8)
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [eventCopy identifier];
      *buf = 136315394;
      v17 = "[WFTriggerEventQueue deleteTriggerEvent:error:]";
      v18 = 2114;
      v19 = identifier;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Removing trigger event with identifier: %{public}@", buf, 0x16u);
    }

    v12 = [v8 deleteReference:eventCopy error:error];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 underlyingError:v9 reason:@"Unable to load database"];
    if (error)
    {
      v13 = v13;
      *error = v13;
    }

    v12 = 0;
  }

  return v12;
}

- (unint64_t)numberOfEventsInQueue
{
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [(WFTriggerEventQueue *)self databaseWithError:0];
  allSortedTriggerEvents = [v4 allSortedTriggerEvents];
  v6 = [allSortedTriggerEvents count];

  return v6;
}

- (id)databaseWithError:(id *)error
{
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  databaseProvider = [(WFTriggerEventQueue *)self databaseProvider];
  v7 = [databaseProvider databaseWithError:error];

  return v7;
}

- (void)enqueueTriggerWithIdentifier:(id)identifier eventInfo:(id)info force:(BOOL)force completion:(id)completion
{
  identifierCopy = identifier;
  infoCopy = info;
  completionCopy = completion;
  queue = [(WFTriggerEventQueue *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__WFTriggerEventQueue_enqueueTriggerWithIdentifier_eventInfo_force_completion___block_invoke;
  v16[3] = &unk_2788FF468;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = infoCopy;
  v19 = completionCopy;
  v13 = infoCopy;
  v14 = completionCopy;
  v15 = identifierCopy;
  dispatch_async(queue, v16);
}

void __79__WFTriggerEventQueue_enqueueTriggerWithIdentifier_eventInfo_force_completion___block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v69 = 0;
  v70 = 0;
  v4 = [v2 configuredTriggerForIdentifier:v3 workflowReference:&v70 error:&v69];
  v5 = v70;
  v6 = v69;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = [v4 trigger];
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 136315394;
      v73 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
      v74 = 2114;
      v75 = v13;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s 🤖 Enqueuing trigger of type: %{public}@", buf, 0x16u);
    }

    v14 = *(a1 + 48);
    v68 = 0;
    v15 = [v9 shouldFireTriggerWithEventInfo:v14 error:&v68];
    v16 = v68;

    if ((v15 & 1) == 0)
    {
      (*(*(a1 + 56) + 16))();
LABEL_60:

      v6 = v16;
      goto LABEL_61;
    }

    v17 = *(a1 + 32);
    v67 = v16;
    v18 = [v17 databaseWithError:&v67];
    v19 = v67;

    if (!v18)
    {
      v32 = getWFTriggersLogObject();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v73 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
        v74 = 2114;
        v75 = v19;
        _os_log_impl(&dword_23103C000, v32, OS_LOG_TYPE_ERROR, "%s Failed to fire trigger because database is not available: %{public}@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_59;
    }

    v20 = [v4 identifier];
    v21 = [v18 sortedRunEventsForTriggerID:v20];
    v22 = [v21 descriptors];

    v23 = objc_opt_class();
    v24 = *(a1 + 48);
    v66 = v19;
    LOBYTE(v21) = [v23 shouldRunTrigger:v4 forEvent:v24 runEvents:v22 error:&v66];
    v25 = v66;

    if ((v21 & 1) == 0)
    {
      v33 = getWFTriggersLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = *(a1 + 48);
        *buf = 136315906;
        v73 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
        v74 = 2112;
        v75 = v4;
        v76 = 2112;
        v77 = v34;
        v78 = 2112;
        v79 = v25;
        _os_log_impl(&dword_23103C000, v33, OS_LOG_TYPE_INFO, "%s Not running trigger (%@) for event (%@) because: %@", buf, 0x2Au);
      }

      if ([v25 code] == 6004)
      {
        [*(a1 + 32) sendRateLimitEncounteredNotificationForTrigger:v4];
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_58;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v26 = *(a1 + 32);
      v27 = *(a1 + 48);
      v65 = v25;
      v28 = [v26 shouldRunEmailOrMessageTrigger:v4 forEvent:v27 runEvents:v22 error:&v65];
      v29 = v65;

      if ((v28 & 1) == 0)
      {
        v30 = getWFTriggersLogObject();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = *(a1 + 48);
          *buf = 136315906;
          v73 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
          v74 = 2112;
          v75 = v4;
          v76 = 2112;
          v77 = v31;
          v78 = 2112;
          v79 = v29;
          _os_log_impl(&dword_23103C000, v30, OS_LOG_TYPE_INFO, "%s Not running trigger (%@) for event (%@) because: %@", buf, 0x2Au);
        }

        (*(*(a1 + 56) + 16))();
        v25 = v29;
        goto LABEL_58;
      }
    }

    else
    {
      v29 = v25;
    }

    if (([v4 shouldPrompt] & 1) != 0 || (objc_msgSend(objc_opt_class(), "isAllowedToRunAutomatically") & 1) == 0)
    {
      v35 = getWFTriggersLogObject();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a1 + 40);
        *buf = 136315394;
        v73 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
        v74 = 2114;
        v75 = v36;
        _os_log_impl(&dword_23103C000, v35, OS_LOG_TYPE_DEFAULT, "%s 🤖 Trigger needs confirmation, adding (%{public}@) to run queue", buf, 0x16u);
      }

      if ([v9 requiresEventInfoAsInput])
      {
        v37 = *(a1 + 32);
        v38 = *(a1 + 48);
        v64 = v29;
        v39 = [v37 triggerEventForConfiguredTrigger:v4 eventInfo:v38 confirmed:0 paused:0 error:&v64];
        v25 = v64;

        if (!v39)
        {
          v55 = getWFTriggersLogObject();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v73 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
            v74 = 2114;
            v75 = v25;
            _os_log_impl(&dword_23103C000, v55, OS_LOG_TYPE_ERROR, "%s Failed to create trigger events with error: %{public}@", buf, 0x16u);
          }

          goto LABEL_58;
        }

        v40 = [v39 identifier];
        v71 = v40;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];

        v42 = v41;
        v29 = v25;
      }

      else
      {
        v42 = 0;
      }

      VCOSTransactionWithName(@"WFTriggerEventQueue.enqueueTriggerWithIdentifier");
      v60 = v59 = v22;
      if (ActionKitLibrary_sOnce != -1)
      {
        dispatch_once(&ActionKitLibrary_sOnce, &__block_literal_global_395);
      }

      v61 = v42;
      v63 = v29;
      v43 = [MEMORY[0x277D7CA60] workflowWithReference:v5 database:v18 error:&v63];
      v25 = v63;

      if (!v43)
      {
        v53 = getWFTriggersLogObject();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = [v5 identifier];
          *buf = 136315906;
          v73 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
          v74 = 2112;
          v75 = v54;
          v76 = 2112;
          v77 = v9;
          v78 = 2114;
          v79 = v25;
          _os_log_impl(&dword_23103C000, v53, OS_LOG_TYPE_ERROR, "%s Failed to fetch workflow (%@) for trigger (%@): %{public}@", buf, 0x2Au);
        }

        (*(*(a1 + 56) + 16))();
        goto LABEL_58;
      }

      v44 = [v43 actions];
      v58 = v43;
      v45 = [v43 actions];
      v46 = [v45 count];

      if (v46 >= 8)
      {
        v47 = 8;
      }

      else
      {
        v47 = v46;
      }

      v48 = [v44 subarrayWithRange:{0, v47}];

      v49 = [v48 if_compactMap:&__block_literal_global_194];
      v50 = [v9 requiresEventInfoAsInput];
      v51 = [*(a1 + 32) notificationManager];
      v62 = 0;
      v57 = v49;
      LOBYTE(v49) = [v51 postNotificationOfType:0 forTrigger:v4 workflowReference:v5 removeDeliveredNotifications:v50 ^ 1u pendingTriggerEventIDs:v61 actionIcons:v49 error:&v62];
      v52 = v62;

      LOBYTE(v51) = v49;
      v22 = v59;
      if ((v51 & 1) == 0)
      {
        log = getWFTriggersLogObject();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke_2";
          v74 = 2114;
          v75 = v52;
          _os_log_impl(&dword_23103C000, log, OS_LOG_TYPE_ERROR, "%s Failed to post notification prompt with error: %{public}@", buf, 0x16u);
        }

        if ([v61 count])
        {
          [*(a1 + 32) removePendingTriggerEventsWithEventIDs:v61];
        }
      }

      [*(a1 + 32) resume];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      [*(a1 + 32) resumeWithConfiguredTrigger:v4 workflowReference:v5 eventInfo:*(a1 + 48)];
      (*(*(a1 + 56) + 16))();
      v25 = v29;
    }

    [MEMORY[0x277D7C990] trackTriggeredAutomationWithConfiguredTrigger:v4];
LABEL_58:

    v19 = v25;
LABEL_59:

    v16 = v19;
    goto LABEL_60;
  }

  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v73 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
    v74 = 2114;
    v75 = v6;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to fire trigger because it could not be found: %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_61:
}

- (void)runWithConfiguredTrigger:(id)trigger workflowReference:(id)reference eventInfo:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  referenceCopy = reference;
  infoCopy = info;
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  triggerBootManager = [(WFTriggerEventQueue *)self triggerBootManager];
  [triggerBootManager willRunAutomations];

  triggerEventRunner = [(WFTriggerEventQueue *)self triggerEventRunner];
  workflowID = [triggerCopy workflowID];
  v15 = [triggerEventRunner isRunningWorkflowWithIdentifier:workflowID];

  if (v15)
  {
    v16 = getWFTriggersLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      workflowID2 = [triggerCopy workflowID];
      *buf = 136315394;
      v29 = "[WFTriggerEventQueue runWithConfiguredTrigger:workflowReference:eventInfo:]";
      v30 = 2114;
      v31 = workflowID2;
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_FAULT, "%s Attempted to run trigger while triggerEventRunner is running with workflow id: %{public}@.", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if ([triggerCopy shouldPrompt])
  {
    goto LABEL_16;
  }

  trigger = [triggerCopy trigger];
  isAllowedToRunAutomatically = [objc_opt_class() isAllowedToRunAutomatically];

  if (!isAllowedToRunAutomatically)
  {
    goto LABEL_16;
  }

  if (([triggerCopy shouldNotify] & 1) != 0 || (objc_msgSend(triggerCopy, "trigger"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(objc_opt_class(), "requiresNotification"), v20, v21))
  {
    notificationManager = [(WFTriggerEventQueue *)self notificationManager];
    v27 = 0;
    v23 = [notificationManager postNotificationOfType:1 forTrigger:triggerCopy workflowReference:referenceCopy removeDeliveredNotifications:1 pendingTriggerEventIDs:0 actionIcons:0 error:&v27];
    notificationScheduler = v27;

    if ((v23 & 1) == 0)
    {
      v25 = getWFTriggersLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "[WFTriggerEventQueue runWithConfiguredTrigger:workflowReference:eventInfo:]";
        v30 = 2114;
        v31 = notificationScheduler;
        _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_ERROR, "%s Failed to post notification alert due to error: %{public}@", buf, 0x16u);
      }

      goto LABEL_18;
    }
  }

  else
  {
    if ([triggerCopy notificationLevel] > 2)
    {
      goto LABEL_16;
    }

    notificationScheduler = [(WFTriggerEventQueue *)self notificationScheduler];
    [notificationScheduler scheduleTriggerForNotifications:triggerCopy];
  }

LABEL_16:
  triggerEventRunner2 = [(WFTriggerEventQueue *)self triggerEventRunner];
  [triggerEventRunner2 startRunningWorkflow:referenceCopy forTrigger:triggerCopy eventInfo:infoCopy];

  if (_os_feature_enabled_impl())
  {
    [(WFTriggerEventQueue *)self deactivateEphemeralTriggerIfNeeded:triggerCopy completion:&__block_literal_global_3088];
  }

LABEL_18:
}

void __76__WFTriggerEventQueue_runWithConfiguredTrigger_workflowReference_eventInfo___block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[WFTriggerEventQueue runWithConfiguredTrigger:workflowReference:eventInfo:]_block_invoke";
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to deactivate ephemeral trigger: %{public}@", &v6, 0x16u);
    }
  }
}

- (void)resumeWithConfiguredTrigger:(id)trigger workflowReference:(id)reference eventInfo:(id)info
{
  v30 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  referenceCopy = reference;
  infoCopy = info;
  queue = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = getWFTriggersLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [triggerCopy identifier];
    *buf = 136315394;
    v25 = "[WFTriggerEventQueue resumeWithConfiguredTrigger:workflowReference:eventInfo:]";
    v26 = 2114;
    v27 = identifier;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEFAULT, "%s 🤖 Resuming trigger with id: %{public}@", buf, 0x16u);
  }

  triggerEventRunner = [(WFTriggerEventQueue *)self triggerEventRunner];
  workflowID = [triggerCopy workflowID];
  if ([triggerEventRunner isRunningWorkflowWithIdentifier:workflowID])
  {
    goto LABEL_8;
  }

  triggerBootManager = [(WFTriggerEventQueue *)self triggerBootManager];
  if (([triggerBootManager canRunAutomations] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  potentialLoopDetected = [triggerCopy potentialLoopDetected];

  if ((potentialLoopDetected & 1) == 0)
  {
    [(WFTriggerEventQueue *)self runWithConfiguredTrigger:triggerCopy workflowReference:referenceCopy eventInfo:infoCopy];
    goto LABEL_16;
  }

LABEL_9:
  v18 = getWFTriggersLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    workflowID2 = [triggerCopy workflowID];
    *buf = 136315394;
    v25 = "[WFTriggerEventQueue resumeWithConfiguredTrigger:workflowReference:eventInfo:]";
    v26 = 2114;
    v27 = workflowID2;
    _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_DEFAULT, "%s 🤖 Persisting to database because triggerEventRunner is running workflow with id: %{public}@", buf, 0x16u);
  }

  v23 = 0;
  v20 = -[WFTriggerEventQueue triggerEventForConfiguredTrigger:eventInfo:confirmed:paused:error:](self, "triggerEventForConfiguredTrigger:eventInfo:confirmed:paused:error:", triggerCopy, infoCopy, 1, [triggerCopy potentialLoopDetected], &v23);
  v21 = v23;

  if (!v20)
  {
    v22 = getWFTriggersLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "[WFTriggerEventQueue resumeWithConfiguredTrigger:workflowReference:eventInfo:]";
      v26 = 2112;
      v27 = triggerCopy;
      v28 = 2114;
      v29 = v21;
      _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_ERROR, "%s Failed to create trigger events for trigger %@: %{public}@", buf, 0x20u);
    }
  }

LABEL_16:
}

- (void)clearWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(WFTriggerEventQueue *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__WFTriggerEventQueue_clearWithCompletionHandler___block_invoke;
  v7[3] = &unk_2788FF680;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __50__WFTriggerEventQueue_clearWithCompletionHandler___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v37 = "[WFTriggerEventQueue clearWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEBUG, "%s Attempting to clear all events from the trigger queue", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v35 = 0;
  v4 = [v3 databaseWithError:&v35];
  v5 = v35;
  v6 = v5;
  if (v4)
  {
    v28 = v5;
    v29 = v4;
    v7 = [v4 allSortedTriggerEvents];
    v8 = [v7 descriptors];

    v9 = getWFTriggersLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v8 count];
      *buf = 136315394;
      v37 = "[WFTriggerEventQueue clearWithCompletionHandler:]_block_invoke";
      v38 = 2048;
      v39 = v10;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEBUG, "%s Found %lu trigger events to delete", buf, 0x16u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = *(a1 + 32);
          v30 = 0;
          v18 = [v17 deleteTriggerEvent:v16 error:&v30];
          v19 = v30;
          v20 = getWFTriggersLogObject();
          v21 = v20;
          if (v18)
          {
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_17;
            }

            v22 = [v16 identifier];
            *buf = 136315394;
            v37 = "[WFTriggerEventQueue clearWithCompletionHandler:]_block_invoke";
            v38 = 2114;
            v39 = v22;
            v23 = v21;
            v24 = OS_LOG_TYPE_DEBUG;
            v25 = "%s Successfully deleted trigger event with identifier: %{public}@";
            v26 = 22;
          }

          else
          {
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }

            v22 = [v16 identifier];
            *buf = 136315650;
            v37 = "[WFTriggerEventQueue clearWithCompletionHandler:]_block_invoke";
            v38 = 2114;
            v39 = v22;
            v40 = 2114;
            v41 = v19;
            v23 = v21;
            v24 = OS_LOG_TYPE_ERROR;
            v25 = "%s Failed to delete trigger event with identifier %{public}@: %{public}@";
            v26 = 32;
          }

          _os_log_impl(&dword_23103C000, v23, v24, v25, buf, v26);

LABEL_17:
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v13);
    }

    (*(*(a1 + 40) + 16))();
    v6 = v28;
    v4 = v29;
  }

  else
  {
    v27 = getWFTriggersLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[WFTriggerEventQueue clearWithCompletionHandler:]_block_invoke";
      v38 = 2114;
      v39 = v6;
      _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_ERROR, "%s Unable to load database: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)resume
{
  queue = [(WFTriggerEventQueue *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__WFTriggerEventQueue_resume__block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);
}

void __29__WFTriggerEventQueue_resume__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v32 = 0;
  v3 = [v2 nextTriggerEventWithError:&v32];
  v4 = v32;
  if (v3)
  {
    v5 = [*(a1 + 32) triggerBootManager];
    v6 = [v5 canRunAutomations];

    if (v6)
    {
      v7 = [v3 triggerID];
      if (!v7)
      {
        v10 = getWFTriggersLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v34 = "[WFTriggerEventQueue resume]_block_invoke";
          _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Not resuming queue due to missing trigger id", buf, 0xCu);
        }

        goto LABEL_31;
      }

      v8 = *(a1 + 32);
      v30 = v4;
      v31 = 0;
      v9 = [v8 configuredTriggerForIdentifier:v7 workflowReference:&v31 error:&v30];
      v10 = v31;
      v11 = v30;

      if (v9 && v10)
      {
        v12 = [*(a1 + 32) triggerEventRunner];
        v13 = [v10 identifier];
        v14 = [v12 isRunningWorkflowWithIdentifier:v13];

        if (!v14)
        {
          v22 = *(a1 + 32);
          v29 = v11;
          v23 = [v22 deleteTriggerEvent:v3 error:&v29];
          v4 = v29;

          if ((v23 & 1) == 0)
          {
            v24 = getWFTriggersLogObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v34 = "[WFTriggerEventQueue resume]_block_invoke";
              v35 = 2114;
              v36 = v4;
              _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_ERROR, "%s Unable to delete next trigger event with error: %{public}@", buf, 0x16u);
            }
          }

          v25 = getWFTriggersLogObject();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v3 triggerID];
            *buf = 136315394;
            v34 = "[WFTriggerEventQueue resume]_block_invoke";
            v35 = 2114;
            v36 = v26;
            _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_DEFAULT, "%s 🤖 Resuming processing for trigger with identifier %{public}@", buf, 0x16u);
          }

          v27 = *(a1 + 32);
          v15 = [v3 eventInfo];
          v28 = WFTriggerEventInfoDictionaryConverter(v15);
          [v27 runWithConfiguredTrigger:v9 workflowReference:v10 eventInfo:v28];

          goto LABEL_30;
        }

        v15 = getWFTriggersLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = [v10 identifier];
          *buf = 136315394;
          v34 = "[WFTriggerEventQueue resume]_block_invoke";
          v35 = 2112;
          v36 = v16;
          _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEBUG, "%s Not resuming because the triggerEventRunner is running a workflow with identifier %@", buf, 0x16u);
        }
      }

      else
      {
        v15 = getWFTriggersLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v34 = "[WFTriggerEventQueue resume]_block_invoke";
          v35 = 2114;
          v36 = v11;
          _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Failed to fire trigger because it could not be found: %{public}@", buf, 0x16u);
        }
      }

      v4 = v11;
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    v7 = getWFTriggersLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "[WFTriggerEventQueue resume]_block_invoke";
      v18 = "%s Not resuming queue due to boot manager not allowing automation runs";
      v19 = v7;
      v20 = OS_LOG_TYPE_DEFAULT;
      v21 = 12;
      goto LABEL_14;
    }

    goto LABEL_32;
  }

  v17 = getWFTriggersLogObject();
  v7 = v17;
  if (v4)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "[WFTriggerEventQueue resume]_block_invoke";
      v35 = 2114;
      v36 = v4;
      v18 = "%s Unable to get next trigger event with error: %{public}@";
      v19 = v7;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 22;
LABEL_14:
      _os_log_impl(&dword_23103C000, v19, v20, v18, buf, v21);
    }

LABEL_32:

    goto LABEL_33;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v34 = "[WFTriggerEventQueue resume]_block_invoke";
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEBUG, "%s Not resuming because there are no events in the queue", buf, 0xCu);
  }

  v4 = v7;
LABEL_33:
}

- (WFTriggerEventQueue)initWithDatabaseProvider:(id)provider notificationManager:(id)manager notificationScheduler:(id)scheduler
{
  providerCopy = provider;
  managerCopy = manager;
  schedulerCopy = scheduler;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerEventQueue.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];
  }

  v24.receiver = self;
  v24.super_class = WFTriggerEventQueue;
  v13 = [(WFTriggerEventQueue *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_databaseProvider, provider);
    objc_storeStrong(&v14->_notificationManager, manager);
    objc_storeStrong(&v14->_notificationScheduler, scheduler);
    [(WFTriggerUserNotificationManager *)v14->_notificationManager setDelegate:v14];
    v15 = [[WFTriggerEventRunner alloc] initWithDatabaseProvider:providerCopy delegate:v14];
    triggerEventRunner = v14->_triggerEventRunner;
    v14->_triggerEventRunner = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_USER_INITIATED, 0);

    v19 = dispatch_queue_create("com.apple.siriactionsd.WFTriggerEventQueue", v18);
    queue = v14->_queue;
    v14->_queue = v19;

    v21 = v14;
  }

  return v14;
}

- (WFTriggerEventQueue)initWithDatabaseProvider:(id)provider notificationManager:(id)manager notificationScheduler:(id)scheduler triggerBootManager:(id)bootManager
{
  providerCopy = provider;
  managerCopy = manager;
  schedulerCopy = scheduler;
  bootManagerCopy = bootManager;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerEventQueue.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];
  }

  v15 = [(WFTriggerEventQueue *)self initWithDatabaseProvider:providerCopy notificationManager:managerCopy notificationScheduler:schedulerCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_triggerBootManager, bootManager);
    v17 = v16;
  }

  return v16;
}

+ (double)rateLimitingTimeoutForTrigger:(id)trigger runEvents:(id)events numFailures:(unint64_t)failures
{
  v17 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  eventsCopy = events;
  v9 = eventsCopy;
  if (eventsCopy && [eventsCopy count])
  {
    if (failures > 5)
    {
      v10 = 120.0;
    }

    else
    {
      v10 = dbl_231166958[failures];
    }
  }

  else
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "+[WFTriggerEventQueue rateLimitingTimeoutForTrigger:runEvents:numFailures:]";
      v15 = 2112;
      v16 = triggerCopy;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_INFO, "%s No recent runs for trigger (%@); running it", &v13, 0x16u);
    }

    v10 = 0.0;
  }

  return v10;
}

+ (BOOL)shouldRunTrigger:(id)trigger forEvent:(id)event runEvents:(id)events error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  eventCopy = event;
  eventsCopy = events;
  if (!triggerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerEventQueue.m" lineNumber:577 description:{@"Invalid parameter not satisfying: %@", @"trigger"}];
  }

  if (([triggerCopy isEnabled]& 1) != 0)
  {
    if ([triggerCopy shouldPrompt])
    {
      firstObject = getWFTriggersLogObject();
      v15 = 1;
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v52 = "+[WFTriggerEventQueue shouldRunTrigger:forEvent:runEvents:error:]";
        v16 = "%s Don't bother rate-limiting prompt automations; the user is doing that when they press Run";
        v17 = firstObject;
        v18 = 12;
LABEL_25:
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
      }
    }

    else if ([eventsCopy count])
    {
      v46 = eventCopy;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v22 = eventsCopy;
      v23 = [v22 countByEnumeratingWithState:&v47 objects:buf count:16];
      if (v23)
      {
        v24 = v23;
        v25 = 0;
        v26 = *v48;
        while (2)
        {
          v27 = 0;
          v28 = v25;
          v25 += v24;
          do
          {
            if (*v48 != v26)
            {
              objc_enumerationMutation(v22);
            }

            if ([*(*(&v47 + 1) + 8 * v27) outcome] == 1)
            {
              v25 = v28;
              goto LABEL_27;
            }

            ++v28;
            ++v27;
          }

          while (v24 != v27);
          v24 = [v22 countByEnumeratingWithState:&v47 objects:buf count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v25 = 0;
      }

LABEL_27:

      [self rateLimitingTimeoutForTrigger:triggerCopy runEvents:v22 numFailures:v25];
      v30 = v29;
      firstObject = [v22 firstObject];
      date = [firstObject date];
      v32 = [date dateByAddingTimeInterval:v30];

      date2 = [MEMORY[0x277CBEAA8] date];
      v45 = v32;
      v34 = [v32 compare:date2];

      v15 = v34 != 1;
      if (v34 == 1)
      {
        if (v25)
        {
          v36 = 0;
          while (1)
          {
            if (v36 >= [v22 count])
            {
LABEL_36:
              v39 = 6008;
              v40 = @"unfinished attempts in run history";
              goto LABEL_39;
            }

            v37 = [v22 objectAtIndexedSubscript:v36];
            outcome = [v37 outcome];

            if (outcome == 2)
            {
              break;
            }

            if (v25 == ++v36)
            {
              goto LABEL_36;
            }
          }

          v39 = 6004;
          v40 = @"failed attempts in run history";
        }

        else
        {
          v40 = @"timing (no actual failures)";
          v39 = 6008;
        }

LABEL_39:
        eventCopy = v46;
        v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not running trigger (%@) for event (%@) due to rate-limiting with timeout=%0.0f and root cause: %@", triggerCopy, v46, *&v30, v40];
        v41 = getWFTriggersLogObject();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v52 = "+[WFTriggerEventQueue shouldRunTrigger:forEvent:runEvents:error:]";
          v53 = 2112;
          v54 = v35;
          _os_log_impl(&dword_23103C000, v41, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
        }

        v42 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:v39 reason:{@"%@", v35}];
        if (error)
        {
          v42 = v42;
          *error = v42;
        }
      }

      else
      {
        v35 = getWFTriggersLogObject();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v52 = "+[WFTriggerEventQueue shouldRunTrigger:forEvent:runEvents:error:]";
          v53 = 2112;
          v54 = triggerCopy;
          _os_log_impl(&dword_23103C000, v35, OS_LOG_TYPE_INFO, "%s No rate-limiting checks applied; running trigger (%@)", buf, 0x16u);
        }

        eventCopy = v46;
      }
    }

    else
    {
      firstObject = getWFTriggersLogObject();
      v15 = 1;
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v52 = "+[WFTriggerEventQueue shouldRunTrigger:forEvent:runEvents:error:]";
        v53 = 2112;
        v54 = triggerCopy;
        v16 = "%s No recent runs for trigger (%@); running it";
        v17 = firstObject;
        v18 = 22;
        goto LABEL_25;
      }
    }
  }

  else
  {
    v19 = getWFTriggersLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v52 = "+[WFTriggerEventQueue shouldRunTrigger:forEvent:runEvents:error:]";
      v53 = 2112;
      v54 = triggerCopy;
      _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_INFO, "%s Trigger (%@) is disabled; not running it", buf, 0x16u);
    }

    v20 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:6005 reason:@"Automation disabled"];
    firstObject = v20;
    if (error)
    {
      v21 = v20;
      v15 = 0;
      *error = firstObject;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

@end