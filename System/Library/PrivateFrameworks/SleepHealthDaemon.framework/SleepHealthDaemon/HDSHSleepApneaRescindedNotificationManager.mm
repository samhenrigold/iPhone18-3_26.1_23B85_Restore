@interface HDSHSleepApneaRescindedNotificationManager
- (BOOL)_isFeatureRescindedWithRequirementsEvaluation:(id)evaluation;
- (BOOL)_isFeatureUnavailableForNonRescindedReasonWithRequirementsEvaluation:(id)evaluation;
- (HDSHSleepApneaRescindedNotificationManager)initWithProfile:(id)profile featureStatusProvider:(id)provider;
- (HDSHSleepApneaRescindedNotificationManager)initWithProfile:(id)profile featureStatusProvider:(id)provider queueOverride:(id)override;
- (id)_categoryIdentifierFromRescindedReason:(id)reason;
- (id)_rescindedNotificationTitleAndBodyKeysWithHighestPriorityUnsatisfiedRequirementIdentifier:(id)identifier;
- (id)_rescindedRequirementIdentifiers;
- (void)_queue_checkFeatureStatus;
- (void)_queue_sendNotificationRequestIfNeededWithFeatureStatus:(id)status;
- (void)_showRescindedNotificationWithTitleAndBodyKeys:(id)keys rescindedReason:(id)reason;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDSHSleepApneaRescindedNotificationManager

- (HDSHSleepApneaRescindedNotificationManager)initWithProfile:(id)profile featureStatusProvider:(id)provider queueOverride:(id)override
{
  profileCopy = profile;
  providerCopy = provider;
  overrideCopy = override;
  v17.receiver = self;
  v17.super_class = HDSHSleepApneaRescindedNotificationManager;
  v11 = [(HDSHSleepApneaRescindedNotificationManager *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    objc_storeStrong(&v12->_featureStatusProvider, provider);
    v13 = [objc_alloc(MEMORY[0x277D10718]) initWithCategory:100 domainName:@"com.apple.health.Sleep.SleepApneaRescindedNotification" profile:profileCopy];
    localKeyValueDomain = v12->_localKeyValueDomain;
    v12->_localKeyValueDomain = v13;

    objc_storeStrong(&v12->_queue, override);
    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    [WeakRetained registerProfileReadyObserver:v12 queue:v12->_queue];
  }

  return v12;
}

- (HDSHSleepApneaRescindedNotificationManager)initWithProfile:(id)profile featureStatusProvider:(id)provider
{
  providerCopy = provider;
  profileCopy = profile;
  v8 = HKCreateSerialDispatchQueue();
  v9 = [(HDSHSleepApneaRescindedNotificationManager *)self initWithProfile:profileCopy featureStatusProvider:providerCopy queueOverride:v8];

  return v9;
}

- (void)profileDidBecomeReady:(id)ready
{
  dispatch_assert_queue_V2(self->_queue);
  featureStatusProvider = self->_featureStatusProvider;
  queue = self->_queue;

  [(HKFeatureStatusProviding *)featureStatusProvider registerObserver:self queue:queue];
}

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  v10 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *v9 = 138543618;
    *&v9[4] = objc_opt_class();
    *&v9[12] = 2112;
    *&v9[14] = statusCopy;
    v8 = *&v9[4];
    _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature status changed to: %@", v9, 0x16u);
  }

  [(HDSHSleepApneaRescindedNotificationManager *)self _queue_sendNotificationRequestIfNeededWithFeatureStatus:statusCopy, *v9, *&v9[8], v10];
}

- (void)_queue_checkFeatureStatus
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  featureStatusProvider = self->_featureStatusProvider;
  v10 = 0;
  v4 = [(HKFeatureStatusProviding *)featureStatusProvider featureStatusWithError:&v10];
  v5 = v10;
  if (v4)
  {
    [(HDSHSleepApneaRescindedNotificationManager *)self _queue_sendNotificationRequestIfNeededWithFeatureStatus:v4];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      *buf = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      v9 = v8;
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature status is nil with error: %@", buf, 0x16u);
    }
  }
}

- (void)_queue_sendNotificationRequestIfNeededWithFeatureStatus:(id)status
{
  v44 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  statusCopy = status;
  dispatch_assert_queue_V2(queue);
  requirementsEvaluationByContext = [statusCopy requirementsEvaluationByContext];

  v7 = [requirementsEvaluationByContext objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];

  if (![(HDSHSleepApneaRescindedNotificationManager *)self _isFeatureUnavailableForNonRescindedReasonWithRequirementsEvaluation:v7])
  {
    localKeyValueDomain = self->_localKeyValueDomain;
    v39 = 0;
    v12 = [(HDKeyValueDomain *)localKeyValueDomain dateForKey:@"HDSHSleepApneaRescindedNotificationDateShownKey" error:&v39];
    v13 = v39;
    if (v13)
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = objc_opt_class();
        *buf = 138543618;
        v41 = v16;
        v42 = 2112;
        v43 = v13;
        v17 = v16;
        _os_log_impl(&dword_269C02000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Could not fetch notification last shown date with error: %@", buf, 0x16u);

LABEL_19:
      }

LABEL_20:

      goto LABEL_21;
    }

    if ([(HDSHSleepApneaRescindedNotificationManager *)self _isFeatureRescindedWithRequirementsEvaluation:v7])
    {
      _HKInitializeLogging();
      v18 = MEMORY[0x277CCC320];
      v19 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = objc_opt_class();
        *buf = 138543618;
        v41 = v21;
        v42 = 2112;
        v43 = v12;
        v22 = v21;
        _os_log_impl(&dword_269C02000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sleep apnea notifications are rescinded. Notification was last shown: %@", buf, 0x16u);
      }

      if (v12)
      {
        goto LABEL_20;
      }

      highestPriorityUnsatisfiedRequirement = [v7 highestPriorityUnsatisfiedRequirement];
      v15 = [(HDSHSleepApneaRescindedNotificationManager *)self _rescindedNotificationTitleAndBodyKeysWithHighestPriorityUnsatisfiedRequirementIdentifier:highestPriorityUnsatisfiedRequirement];

      highestPriorityUnsatisfiedRequirement2 = [v7 highestPriorityUnsatisfiedRequirement];
      [(HDSHSleepApneaRescindedNotificationManager *)self _showRescindedNotificationWithTitleAndBodyKeys:v15 rescindedReason:highestPriorityUnsatisfiedRequirement2];

      v25 = self->_localKeyValueDomain;
      v26 = [MEMORY[0x277CBEAA8] now];
      v38 = 0;
      [(HDKeyValueDomain *)v25 setDate:v26 forKey:@"HDSHSleepApneaRescindedNotificationDateShownKey" error:&v38];
      v27 = v38;

      if (v27)
      {
        _HKInitializeLogging();
        v28 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
          v30 = objc_opt_class();
          *buf = 138543618;
          v41 = v30;
          v42 = 2112;
          v43 = 0;
          v31 = v30;
          _os_log_impl(&dword_269C02000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error writing last shown date for notification: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_20;
      }

      [(HDSHSleepApneaRescindedNotificationManager *)self _showRescindedNotificationWithTitleAndBodyKeys:&unk_287A9AD08 rescindedReason:0];
      v32 = self->_localKeyValueDomain;
      v33 = [MEMORY[0x277CBEB98] setWithObject:@"HDSHSleepApneaRescindedNotificationDateShownKey"];
      v37 = 0;
      [(HDKeyValueDomain *)v32 removeValuesForKeys:v33 error:&v37];
      v15 = v37;

      if (!v15)
      {
        goto LABEL_19;
      }

      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC320];
      if (!os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v27 = v34;
      v35 = objc_opt_class();
      *buf = 138543618;
      v41 = v35;
      v42 = 2112;
      v43 = 0;
      v36 = v35;
      _os_log_impl(&dword_269C02000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error resetting last shown date for notification: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543362;
    v41 = objc_opt_class();
    v10 = v41;
    _os_log_impl(&dword_269C02000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sleep apnea notifications are unavailable for non-rescinded reasons.", buf, 0xCu);
  }

LABEL_21:
}

- (id)_rescindedNotificationTitleAndBodyKeysWithHighestPriorityUnsatisfiedRequirementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_287A9AD20];
  if ([identifierCopy isEqualToString:*MEMORY[0x277CCBF30]])
  {
    v5 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_BODY_REMOTELY_DISABLED";
    v6 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_TITLE_REMOTELY_DISABLED";
  }

  else if ([identifierCopy isEqualToString:*MEMORY[0x277CCBFD0]])
  {
    v5 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_BODY_SEED_EXPIRED";
    v6 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_TITLE_SEED_EXPIRED";
  }

  else if ([identifierCopy isEqualToString:*MEMORY[0x277CCBF08]])
  {
    v5 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_BODY_UNSUPPORTED_REGION";
    v6 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_TITLE_UNSUPPORTED_REGION";
  }

  else
  {
    if (![identifierCopy isEqualToString:*MEMORY[0x277CCBF00]])
    {
      goto LABEL_10;
    }

    v5 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_BODY_WATCH_UNSUPPORTED_REGION";
    v6 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_TITLE_WATCH_UNSUPPORTED_REGION";
  }

  [v4 setObject:v6 atIndexedSubscript:0];
  [v4 setObject:v5 atIndexedSubscript:1];
LABEL_10:
  v7 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  return v7;
}

- (void)_showRescindedNotificationWithTitleAndBodyKeys:(id)keys rescindedReason:(id)reason
{
  reasonCopy = reason;
  v7 = MEMORY[0x277CE1F60];
  keysCopy = keys;
  v9 = objc_alloc_init(v7);
  v10 = MEMORY[0x277CCACA8];
  v11 = [keysCopy objectAtIndexedSubscript:0];
  v12 = [v10 localizedUserNotificationStringForKey:v11 arguments:0];
  [v9 setTitle:v12];

  v13 = MEMORY[0x277CCACA8];
  v14 = [keysCopy objectAtIndexedSubscript:1];

  v15 = [v13 localizedUserNotificationStringForKey:v14 arguments:0];
  [v9 setBody:v15];

  v16 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
  [v9 setSound:v16];

  if (reasonCopy)
  {
    v17 = [(HDSHSleepApneaRescindedNotificationManager *)self _categoryIdentifierFromRescindedReason:reasonCopy];
    [v9 setCategoryIdentifier:v17];
  }

  else
  {
    [v9 setCategoryIdentifier:*MEMORY[0x277D62668]];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_287A9AD50 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  [v9 setUserInfo:dictionary];
  date = [MEMORY[0x277CBEAA8] date];
  [v9 setDate:date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v21 = [currentCalendar hk_dateByAddingDays:1 toDate:date];
  [v9 setExpirationDate:v21];

  v22 = [MEMORY[0x277CE1FC0] requestWithIdentifier:*MEMORY[0x277D62690] content:v9 trigger:0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __109__HDSHSleepApneaRescindedNotificationManager__showRescindedNotificationWithTitleAndBodyKeys_rescindedReason___block_invoke;
  v24[3] = &unk_279C830B8;
  v24[4] = self;
  v25 = v22;
  v23 = v22;
  dispatch_async(MEMORY[0x277D85CD0], v24);
}

void __109__HDSHSleepApneaRescindedNotificationManager__showRescindedNotificationWithTitleAndBodyKeys_rescindedReason___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) unitTesting_postNotificationHandler];

  if (v2)
  {
    v9 = [*(a1 + 32) unitTesting_postNotificationHandler];
    v9[2](v9, *(a1 + 40));
  }

  else
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *buf = 138543362;
      v12 = objc_opt_class();
      v5 = v12;
      _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] About to show rescinded notification for sleep apnea notifications.", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v7 = [WeakRetained notificationManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __109__HDSHSleepApneaRescindedNotificationManager__showRescindedNotificationWithTitleAndBodyKeys_rescindedReason___block_invoke_351;
    v10[3] = &unk_279C83090;
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    [v7 postNotificationWithRequest:v8 completion:v10];
  }
}

void __109__HDSHSleepApneaRescindedNotificationManager__showRescindedNotificationWithTitleAndBodyKeys_rescindedReason___block_invoke_351(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v7 = 138543618;
      v8 = objc_opt_class();
      v9 = 2112;
      v10 = v3;
      v6 = v8;
      _os_log_impl(&dword_269C02000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error posting rescinded notification: %@", &v7, 0x16u);
    }
  }
}

- (BOOL)_isFeatureRescindedWithRequirementsEvaluation:(id)evaluation
{
  v25 = *MEMORY[0x277D85DE8];
  evaluationCopy = evaluation;
  _rescindedRequirementIdentifiers = [(HDSHSleepApneaRescindedNotificationManager *)self _rescindedRequirementIdentifiers];
  unsatisfiedRequirementIdentifiers = [evaluationCopy unsatisfiedRequirementIdentifiers];
  v7 = [unsatisfiedRequirementIdentifiers componentsJoinedByString:{@", "}];

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543618;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = v7;
    v10 = v22;
    _os_log_impl(&dword_269C02000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking feature status for rescinded reasons: %@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  unsatisfiedRequirementIdentifiers2 = [evaluationCopy unsatisfiedRequirementIdentifiers];
  v12 = [unsatisfiedRequirementIdentifiers2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(unsatisfiedRequirementIdentifiers2);
        }

        if ([_rescindedRequirementIdentifiers containsObject:*(*(&v16 + 1) + 8 * i)])
        {
          LOBYTE(v12) = 1;
          goto LABEL_13;
        }
      }

      v12 = [unsatisfiedRequirementIdentifiers2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v12;
}

- (BOOL)_isFeatureUnavailableForNonRescindedReasonWithRequirementsEvaluation:(id)evaluation
{
  v25 = *MEMORY[0x277D85DE8];
  evaluationCopy = evaluation;
  _rescindedRequirementIdentifiers = [(HDSHSleepApneaRescindedNotificationManager *)self _rescindedRequirementIdentifiers];
  unsatisfiedRequirementIdentifiers = [evaluationCopy unsatisfiedRequirementIdentifiers];
  v7 = [unsatisfiedRequirementIdentifiers componentsJoinedByString:{@", "}];

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543618;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = v7;
    v10 = v22;
    _os_log_impl(&dword_269C02000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking feature status for non-rescinded reasons: %@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  unsatisfiedRequirementIdentifiers2 = [evaluationCopy unsatisfiedRequirementIdentifiers];
  v12 = [unsatisfiedRequirementIdentifiers2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(unsatisfiedRequirementIdentifiers2);
        }

        if (![_rescindedRequirementIdentifiers containsObject:*(*(&v16 + 1) + 8 * i)])
        {
          LOBYTE(v12) = 1;
          goto LABEL_13;
        }
      }

      v12 = [unsatisfiedRequirementIdentifiers2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v12;
}

- (id)_rescindedRequirementIdentifiers
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277CCBFD0];
  v8[0] = *MEMORY[0x277CCBF30];
  v8[1] = v3;
  v4 = *MEMORY[0x277CCBF00];
  v8[2] = *MEMORY[0x277CCBF08];
  v8[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
  v6 = [v2 setWithArray:v5];

  return v6;
}

- (id)_categoryIdentifierFromRescindedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:*MEMORY[0x277CCBF30]])
  {
    v4 = MEMORY[0x277D62680];
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([reasonCopy isEqualToString:*MEMORY[0x277CCBFD0]])
  {
    v4 = MEMORY[0x277D62688];
    goto LABEL_9;
  }

  if ([reasonCopy isEqualToString:*MEMORY[0x277CCBF08]])
  {
    v4 = MEMORY[0x277D62678];
    goto LABEL_9;
  }

  if ([reasonCopy isEqualToString:*MEMORY[0x277CCBF00]])
  {
    v4 = MEMORY[0x277D62670];
    goto LABEL_9;
  }

  v5 = &stru_287A995D0;
LABEL_10:

  return v5;
}

@end