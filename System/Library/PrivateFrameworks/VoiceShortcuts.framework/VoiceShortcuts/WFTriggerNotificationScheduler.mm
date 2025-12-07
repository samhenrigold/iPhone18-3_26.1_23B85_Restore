@interface WFTriggerNotificationScheduler
+ (BOOL)shortenTimeIntervalsForTesting;
- (WFTriggerNotificationScheduler)initWithUserNotificationManager:(id)manager databaseProvider:(id)provider;
- (id)initialRunDateForConfiguredTrigger:(id)trigger;
- (int)updateTriggerNotificationLevels:(id)levels database:(id)database;
- (void)cancelActivitiesFromTrigger:(id)trigger;
- (void)cancelActivitiesFromTriggerIdentifier:(id)identifier;
- (void)cancelAllActivitiesFromTriggers:(id)triggers;
- (void)migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:(id)database;
- (void)postBackgroundRunningNotificationForTrigger:(id)trigger;
- (void)registerConfiguredTrigger:(id)trigger delay:(id)delay;
- (void)registerWithDatabaseProvider:(id)provider;
- (void)scheduleTriggerForNotifications:(id)notifications;
@end

@implementation WFTriggerNotificationScheduler

- (void)migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:(id)database
{
  v21 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  queue = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  systemShortcutsUserDefaults = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  v7 = systemShortcutsUserDefaults;
  if (systemShortcutsUserDefaults)
  {
    v8 = [systemShortcutsUserDefaults BOOLForKey:@"WFTriggerNotificationLevelMigrationPerformed"];
    descriptors = getWFTriggerNotificationsLogObject();
    v10 = os_log_type_enabled(descriptors, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 136315138;
        v20 = "[WFTriggerNotificationScheduler migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:]";
        v11 = "%s Migration has already occured not doing anything.";
        v12 = descriptors;
        v13 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
        _os_log_impl(&dword_23103C000, v12, v13, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v10)
      {
        *buf = 136315138;
        v20 = "[WFTriggerNotificationScheduler migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:]";
        _os_log_impl(&dword_23103C000, descriptors, OS_LOG_TYPE_DEFAULT, "%s Migrating old triggers.", buf, 0xCu);
      }

      allConfiguredTriggers = [databaseCopy allConfiguredTriggers];
      descriptors = [allConfiguredTriggers descriptors];

      v15 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:databaseCopy];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __95__WFTriggerNotificationScheduler_migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase___block_invoke;
      v17[3] = &unk_2788FE198;
      v18 = v15;
      v16 = v15;
      [descriptors enumerateObjectsUsingBlock:v17];
      [v7 setBool:1 forKey:@"WFTriggerNotificationLevelMigrationPerformed"];
    }
  }

  else
  {
    descriptors = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(descriptors, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[WFTriggerNotificationScheduler migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:]";
      v11 = "%s Could not get system shortcut user defaults not migrating.";
      v12 = descriptors;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }
}

void __95__WFTriggerNotificationScheduler_migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 updateNotificationLevel:2 forConfiguredTrigger:a2 error:&v6];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    v5 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "[WFTriggerNotificationScheduler migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:]_block_invoke";
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Could not migrate trigger to WFTriggerNotificationLevelMonth with error: %{public}@", buf, 0x16u);
    }
  }
}

- (id)initialRunDateForConfiguredTrigger:(id)trigger
{
  v27 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  queue = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  databaseProvider = [(WFTriggerNotificationScheduler *)self databaseProvider];
  v20 = 0;
  v7 = [databaseProvider databaseWithError:&v20];
  v8 = v20;

  if (!v7)
  {
    lastObject = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[WFTriggerNotificationScheduler initialRunDateForConfiguredTrigger:]";
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_23103C000, lastObject, OS_LOG_TYPE_ERROR, "%s Failed to get initial run date for configured trigger because database is not available: %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  identifier = [triggerCopy identifier];
  v10 = [v7 sortedRunEventsForTriggerID:identifier];
  descriptors = [v10 descriptors];
  lastObject = [descriptors lastObject];

  v13 = getWFTriggerNotificationsLogObject();
  v14 = v13;
  if (!lastObject)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [triggerCopy identifier];
      *buf = 136315394;
      v22 = "[WFTriggerNotificationScheduler initialRunDateForConfiguredTrigger:]";
      v23 = 2112;
      v24 = identifier2;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_ERROR, "%s No run events found for trigger with id: %@", buf, 0x16u);
    }

    lastObject = 0;
LABEL_11:
    date2 = 0;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    identifier3 = [triggerCopy identifier];
    date = [lastObject date];
    *buf = 136315650;
    v22 = "[WFTriggerNotificationScheduler initialRunDateForConfiguredTrigger:]";
    v23 = 2112;
    v24 = identifier3;
    v25 = 2112;
    v26 = date;
    _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEFAULT, "%s initial run event date for trigger: %@ - %@", buf, 0x20u);
  }

  date2 = [lastObject date];
LABEL_12:

  return date2;
}

- (void)cancelActivitiesFromTriggerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(WFTriggerNotificationScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__WFTriggerNotificationScheduler_cancelActivitiesFromTriggerIdentifier___block_invoke;
  block[3] = &unk_278900148;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, block);
}

void __72__WFTriggerNotificationScheduler_cancelActivitiesFromTriggerIdentifier___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.siriactionsd.TriggerNotification.%@", *(a1 + 32)];
  v2 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v4 = "[WFTriggerNotificationScheduler cancelActivitiesFromTriggerIdentifier:]_block_invoke";
    v5 = 2114;
    v6 = v1;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s Unregistering trigger notification activities for identifier: %{public}@", buf, 0x16u);
  }

  xpc_activity_unregister([v1 UTF8String]);
}

- (void)cancelActivitiesFromTrigger:(id)trigger
{
  triggerCopy = trigger;
  queue = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  identifier = [triggerCopy identifier];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.siriactionsd.TriggerNotification.%@", identifier];

  v7 = v8;
  xpc_activity_unregister([v8 UTF8String]);
}

- (void)cancelAllActivitiesFromTriggers:(id)triggers
{
  triggersCopy = triggers;
  queue = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__WFTriggerNotificationScheduler_cancelAllActivitiesFromTriggers___block_invoke;
  v6[3] = &unk_2788FE198;
  v6[4] = self;
  [triggersCopy enumerateObjectsUsingBlock:v6];
}

- (int)updateTriggerNotificationLevels:(id)levels database:(id)database
{
  v27 = *MEMORY[0x277D85DE8];
  levelsCopy = levels;
  databaseCopy = database;
  queue = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__WFTriggerNotificationScheduler_updateTriggerNotificationLevels_database___block_invoke;
  v18[3] = &unk_2788FE820;
  v18[4] = &v19;
  [levelsCopy enumerateObjectsUsingBlock:v18];
  v9 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = WFReadableTriggerNotificationLevel();
    *buf = 136315394;
    v24 = "[WFTriggerNotificationScheduler updateTriggerNotificationLevels:database:]";
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Updating scheduled trigger notifications for runs in the last 7 days to level: %@", buf, 0x16u);
  }

  v11 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:databaseCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__WFTriggerNotificationScheduler_updateTriggerNotificationLevels_database___block_invoke_190;
  v15[3] = &unk_2788FE2A0;
  v12 = v11;
  v16 = v12;
  v17 = &v19;
  [levelsCopy enumerateObjectsUsingBlock:v15];
  v13 = *(v20 + 6);

  _Block_object_dispose(&v19, 8);
  return v13;
}

void __75__WFTriggerNotificationScheduler_updateTriggerNotificationLevels_database___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (![v6 shouldPrompt] || (objc_msgSend(v6, "shouldNotify") & 1) == 0)
  {
    v3 = *(*(*(a1 + 32) + 8) + 24);
    v4 = [v6 notificationLevel];
    if (v3 <= v4 + 1)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = v3;
    }

    if (v5 >= 3)
    {
      v5 = 3;
    }

    *(*(*(a1 + 32) + 8) + 24) = v5;
  }
}

void __75__WFTriggerNotificationScheduler_updateTriggerNotificationLevels_database___block_invoke_190(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v9 = 0;
  v5 = [v3 updateNotificationLevel:v4 forConfiguredTrigger:a2 error:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    v7 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = WFReadableTriggerNotificationLevel();
      *buf = 136315650;
      v11 = "[WFTriggerNotificationScheduler updateTriggerNotificationLevels:database:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Could not increment trigger to level: %@ due to error: %@", buf, 0x20u);
    }
  }
}

- (void)postBackgroundRunningNotificationForTrigger:(id)trigger
{
  v43 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  queue = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v40 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]";
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Posting background notification", buf, 0xCu);
  }

  databaseProvider = [(WFTriggerNotificationScheduler *)self databaseProvider];
  v38 = 0;
  v8 = [databaseProvider databaseWithError:&v38];
  v9 = v38;

  if (v8)
  {
    if ([triggerCopy notificationLevel] < 3)
    {
      v12 = MEMORY[0x277CBEB98];
      triggerRunEventsInTheLastWeek = [v8 triggerRunEventsInTheLastWeek];
      descriptors = [triggerRunEventsInTheLastWeek descriptors];
      v15 = [descriptors if_compactMap:&__block_literal_global_78];
      v16 = [v12 setWithArray:v15];
      identifier = [triggerCopy identifier];
      v18 = [v16 setByAddingObject:identifier];

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __78__WFTriggerNotificationScheduler_postBackgroundRunningNotificationForTrigger___block_invoke_2;
      v36[3] = &unk_2788FE228;
      v19 = v8;
      v37 = v19;
      v20 = [v18 if_compactMap:v36];
      allObjects = [v20 allObjects];

      if ([allObjects count])
      {
        [(WFTriggerNotificationScheduler *)self cancelAllActivitiesFromTriggers:allObjects];
        v22 = os_transaction_create();
        v23 = WFTriggerIDsToDisableNotificationUserInfoFromTriggers();
        userNotificationManager = [(WFTriggerNotificationScheduler *)self userNotificationManager];
        v35 = v9;
        [userNotificationManager postBackgroundRunningNotificationWithConfiguredTriggers:allObjects userInfo:v23 error:&v35];
        v30 = v35;

        v25 = [(WFTriggerNotificationScheduler *)self updateTriggerNotificationLevels:allObjects database:v19];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __78__WFTriggerNotificationScheduler_postBackgroundRunningNotificationForTrigger___block_invoke_186;
        v33[3] = &unk_2788FE250;
        v34 = v19;
        v26 = [allObjects if_compactMap:v33];

        v27 = getWFTriggerNotificationsLogObject();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v25 > 2)
        {
          if (v28)
          {
            *buf = 136315138;
            v40 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]";
            _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_DEFAULT, "%s Level is at WFTriggerNotificationLevelNever not rescheduling triggers", buf, 0xCu);
          }
        }

        else
        {
          if (v28)
          {
            v29 = WFReadableTriggerNotificationLevel();
            *buf = 136315394;
            v40 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]";
            v41 = 2112;
            v42 = v29;
            _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_DEFAULT, "%s Re-registering triggers to level: %@", buf, 0x16u);
          }

          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __78__WFTriggerNotificationScheduler_postBackgroundRunningNotificationForTrigger___block_invoke_188;
          v31[3] = &unk_2788FE278;
          v31[4] = self;
          v32 = v25;
          [v26 enumerateObjectsUsingBlock:v31];
        }

        v9 = v30;
      }

      else
      {
        v22 = getWFTriggerNotificationsLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v40 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]";
          _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_ERROR, "%s Failed to post background running notification due to no configured triggers being recently ran", buf, 0xCu);
        }

        v26 = allObjects;
      }
    }

    else
    {
      v10 = getWFTriggerNotificationsLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v40 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]";
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Attempted to post background running notification but trigger was in WFTriggerNotificationLevelNever, cancelling all activities", buf, 0xCu);
      }

      [(WFTriggerNotificationScheduler *)self cancelActivitiesFromTrigger:triggerCopy];
    }
  }

  else
  {
    v11 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v40 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]";
      v41 = 2114;
      v42 = v9;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Failed to post background notification because database is not available: %{public}@", buf, 0x16u);
    }
  }
}

id __78__WFTriggerNotificationScheduler_postBackgroundRunningNotificationForTrigger___block_invoke_186(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 configuredTriggerForTriggerID:v3];

  return v4;
}

void __78__WFTriggerNotificationScheduler_postBackgroundRunningNotificationForTrigger___block_invoke_188(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) initialRunDateForConfiguredTrigger:v3];
  if (v4)
  {
    v5 = WFTimeIntervalForNotificationLevelFromDate(*(a1 + 40), v4);
    [*(a1 + 32) registerConfiguredTrigger:v3 delay:v5];
  }

  else
  {
    v6 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]_block_invoke";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Skipping rescheduling of trigger due to initial run date not being found", &v7, 0xCu);
    }
  }
}

- (void)registerConfiguredTrigger:(id)trigger delay:(id)delay
{
  v25 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  delayCopy = delay;
  queue = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  identifier = [triggerCopy identifier];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.siriactionsd.TriggerNotification.%@", identifier];

  v11 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[WFTriggerNotificationScheduler registerConfiguredTrigger:delay:]";
    v21 = 1024;
    intValue = [delayCopy intValue];
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Registering trigger - creating activity with delay: %i for identifier: %{public}@", buf, 0x1Cu);
  }

  v12 = [[WFXPCActivityScheduler alloc] initWithActivityIdentifier:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke;
  v17[3] = &unk_2788FE1E0;
  v18 = delayCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_180;
  v15[3] = &unk_2788FEE68;
  v15[4] = self;
  v16 = triggerCopy;
  v13 = triggerCopy;
  v14 = delayCopy;
  [(WFXPCActivityScheduler *)v12 scheduleWithCheckInHandler:v17 runHandler:v15];
}

void __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], [*(a1 + 32) intValue]);
  v5 = xpc_activity_copy_criteria(v3);
  v6 = v5;
  if (v5)
  {
    v7 = xpc_equal(v5, v4);
    v8 = MEMORY[0x2319269A0](v6);
    v9 = MEMORY[0x2319269A0](v4);
    v10 = getWFTriggerNotificationsLogObject();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v11)
      {
        *buf = 136315650;
        v30 = "[WFTriggerNotificationScheduler registerConfiguredTrigger:delay:]_block_invoke";
        v31 = 2082;
        v32 = v8;
        v33 = 2082;
        v34 = v9;
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Criteria exists %{public}s and it is equal to new criteria: %{public}s doing nothing", buf, 0x20u);
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_176;
      v28[3] = &__block_descriptor_48_e5_v8__0l;
      v28[4] = v8;
      v28[5] = v9;
      v12 = v28;
    }

    else
    {
      if (v11)
      {
        *buf = 136315650;
        v30 = "[WFTriggerNotificationScheduler registerConfiguredTrigger:delay:]_block_invoke_2";
        v31 = 2082;
        v32 = v8;
        v33 = 2082;
        v34 = v9;
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Criteria exists %{public}s but it is NOT equal: %{public}s setting", buf, 0x20u);
      }

      xpc_activity_set_criteria(v3, v4);
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_178;
      v25 = &__block_descriptor_48_e5_v8__0l;
      v26 = v8;
      v27 = v9;
      v12 = &v22;
    }

    v14 = _Block_copy(v12);
    v14[2](v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    v13 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[WFTriggerNotificationScheduler registerConfiguredTrigger:delay:]_block_invoke_2";
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_DEFAULT, "%s Criteria does not exist, setting a new one", buf, 0xCu);
    }

    xpc_activity_set_criteria(v3, v4);
  }
}

uint64_t __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_180(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_2;
  block[3] = &unk_2788FFF98;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v4;
  v8 = v4;
  dispatch_async(v5, block);

  return 0;
}

uint64_t __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v5 = 136315394;
    v6 = "[WFTriggerNotificationScheduler registerConfiguredTrigger:delay:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s Registering triggers - Run handler called: %@", &v5, 0x16u);
  }

  [*(a1 + 40) postBackgroundRunningNotificationForTrigger:*(a1 + 32)];
  return (*(*(a1 + 48) + 16))();
}

void __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_176(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    free(v3);
  }
}

void __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_178(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    free(v3);
  }
}

- (void)registerWithDatabaseProvider:(id)provider
{
  providerCopy = provider;
  queue = [(WFTriggerNotificationScheduler *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__WFTriggerNotificationScheduler_registerWithDatabaseProvider___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v8 = providerCopy;
  selfCopy = self;
  v6 = providerCopy;
  dispatch_async(queue, v7);
}

void __63__WFTriggerNotificationScheduler_registerWithDatabaseProvider___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = [v2 databaseWithError:&v9];
  v4 = v9;
  if (v3)
  {
    [*(a1 + 40) migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:v3];
    v5 = [v3 allConfiguredTriggersNeedingRunningNotifications];
    v6 = [v5 descriptors];

    v7 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[WFTriggerNotificationScheduler registerWithDatabaseProvider:]_block_invoke";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Possibly registering triggers: %@", buf, 0x16u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__WFTriggerNotificationScheduler_registerWithDatabaseProvider___block_invoke_174;
    v8[3] = &unk_2788FE198;
    v8[4] = *(a1 + 40);
    [v6 enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[WFTriggerNotificationScheduler registerWithDatabaseProvider:]_block_invoke";
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Failed to schedule trigger notifications because database is not available: %{public}@", buf, 0x16u);
    }
  }
}

void __63__WFTriggerNotificationScheduler_registerWithDatabaseProvider___block_invoke_174(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) initialRunDateForConfiguredTrigger:v3];
  v5 = getWFTriggerNotificationsLogObject();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[WFTriggerNotificationScheduler registerWithDatabaseProvider:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Registering triggers with initial run date - %@", &v7, 0x16u);
    }

    v6 = WFTimeIntervalForNotificationLevelFromDate([v3 notificationLevel], v4);
    [*(a1 + 32) registerConfiguredTrigger:v3 delay:v6];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[WFTriggerNotificationScheduler registerWithDatabaseProvider:]_block_invoke";
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Skipping scheduling of trigger due to initial run date not being found", &v7, 0xCu);
  }
}

- (void)scheduleTriggerForNotifications:(id)notifications
{
  notificationsCopy = notifications;
  queue = [(WFTriggerNotificationScheduler *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__WFTriggerNotificationScheduler_scheduleTriggerForNotifications___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v8 = notificationsCopy;
  selfCopy = self;
  v6 = notificationsCopy;
  dispatch_async(queue, v7);
}

void __66__WFTriggerNotificationScheduler_scheduleTriggerForNotifications___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) notificationLevel] < 3)
  {
    v3 = [*(a1 + 40) databaseProvider];
    v6 = 0;
    v4 = [v3 databaseWithError:&v6];
    v2 = v6;

    if (v4)
    {
      [*(a1 + 40) migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:v4];
      v5 = WFTimeIntervalForNotificationLevel([*(a1 + 32) notificationLevel]);
      [*(a1 + 40) registerConfiguredTrigger:*(a1 + 32) delay:v5];
    }

    else
    {
      v5 = getWFTriggerNotificationsLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v8 = "[WFTriggerNotificationScheduler scheduleTriggerForNotifications:]_block_invoke";
        v9 = 2114;
        v10 = v2;
        _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to schedule trigger notifications because database is not available: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v2 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[WFTriggerNotificationScheduler scheduleTriggerForNotifications:]_block_invoke";
      _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_ERROR, "%s Attempted to schedule trigger that was already in WFTriggerNotificationLevelNever state", buf, 0xCu);
    }
  }
}

- (WFTriggerNotificationScheduler)initWithUserNotificationManager:(id)manager databaseProvider:(id)provider
{
  managerCopy = manager;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = WFTriggerNotificationScheduler;
  v9 = [(WFTriggerNotificationScheduler *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userNotificationManager, manager);
    objc_storeStrong(&v10->_databaseProvider, provider);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);

    v13 = dispatch_queue_create("com.apple.siriactionsd.WFTriggerNotificationScheduler", v12);
    queue = v10->_queue;
    v10->_queue = v13;

    v15 = v10;
  }

  return v10;
}

+ (BOOL)shortenTimeIntervalsForTesting
{
  systemShortcutsUserDefaults = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  if ([systemShortcutsUserDefaults BOOLForKey:*MEMORY[0x277D7CF90]])
  {
    v3 = VCIsInternalBuild();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end