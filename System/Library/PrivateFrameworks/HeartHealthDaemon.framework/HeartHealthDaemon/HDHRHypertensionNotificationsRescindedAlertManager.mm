@interface HDHRHypertensionNotificationsRescindedAlertManager
- (BOOL)_isFeatureRescindedWithUsageEvaluation:(id)evaluation;
- (BOOL)_isFeatureUnavailableForNonRescindedReasonsWithUsageEvaluation:(id)evaluation;
- (HDHRHypertensionNotificationsRescindedAlertManager)initWithProfile:(id)profile featureStatusProvider:(id)provider;
- (HDHRHypertensionNotificationsRescindedAlertManager)initWithProfile:(id)profile featureStatusProvider:(id)provider pairedSyncStateProvider:(id)stateProvider keyValueDomain:(id)domain;
- (id)_rescindedAlertBodyForUsageEvaluation:(id)evaluation;
- (id)_rescindedAlertTitleForUsageEvaluation:(id)evaluation;
- (int64_t)_rescindedAlertTypeForUsageEvaluation:(id)evaluation;
- (void)_presentHypertensionNotificationsReEnabledAlert;
- (void)_presentHypertensionNotificationsRescindedAlertForUsageEvaluation:(id)evaluation;
- (void)_presentNotificationWithTitle:(id)title message:(id)message type:(int64_t)type;
- (void)_queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:(id)status;
- (void)_queue_pullFeatureStatusAndPresentAlertIfNeeded;
- (void)_unitTesting_callNotificationNotPostedHandlerIfSet;
- (void)daemonReady:(id)ready;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
@end

@implementation HDHRHypertensionNotificationsRescindedAlertManager

- (HDHRHypertensionNotificationsRescindedAlertManager)initWithProfile:(id)profile featureStatusProvider:(id)provider
{
  providerCopy = provider;
  profileCopy = profile;
  v8 = objc_alloc_init(HDHRPairedSyncStateProvider);
  v9 = [MEMORY[0x277D10718] hdhr_hypertensionNotificationsDeviceLocalDomainForProfile:profileCopy];
  v10 = [(HDHRHypertensionNotificationsRescindedAlertManager *)self initWithProfile:profileCopy featureStatusProvider:providerCopy pairedSyncStateProvider:v8 keyValueDomain:v9];

  return v10;
}

- (HDHRHypertensionNotificationsRescindedAlertManager)initWithProfile:(id)profile featureStatusProvider:(id)provider pairedSyncStateProvider:(id)stateProvider keyValueDomain:(id)domain
{
  profileCopy = profile;
  providerCopy = provider;
  stateProviderCopy = stateProvider;
  domainCopy = domain;
  v24.receiver = self;
  v24.super_class = HDHRHypertensionNotificationsRescindedAlertManager;
  v14 = [(HDHRHypertensionNotificationsRescindedAlertManager *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    objc_storeStrong(&v15->_featureStatusProvider, provider);
    objc_storeStrong(&v15->_pairedSyncStateProvider, stateProvider);
    v16 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v16;

    objc_storeStrong(&v15->_localKeyValueDomain, domain);
    v18 = objc_alloc(MEMORY[0x277CCCFE8]);
    v19 = [v18 initWithLoggingCategory:*MEMORY[0x277CCC2D0] healthDataSource:profileCopy];
    analyticsEventSubmissionManager = v15->_analyticsEventSubmissionManager;
    v15->_analyticsEventSubmissionManager = v19;

    WeakRetained = objc_loadWeakRetained(&v15->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v15 queue:v15->_queue];
  }

  return v15;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database removeProtectedDataObserver:self];

  [(HKFeatureStatusProviding *)self->_featureStatusProvider unregisterObserver:self];
  v5.receiver = self;
  v5.super_class = HDHRHypertensionNotificationsRescindedAlertManager;
  [(HDHRHypertensionNotificationsRescindedAlertManager *)&v5 dealloc];
}

- (void)daemonReady:(id)ready
{
  dispatch_assert_queue_V2(self->_queue);
  [(HKFeatureStatusProviding *)self->_featureStatusProvider registerObserver:self];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database addProtectedDataObserver:self queue:self->_queue];

  [(HDHRHypertensionNotificationsRescindedAlertManager *)self _queue_pullFeatureStatusAndPresentAlertIfNeeded];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  dispatch_assert_queue_V2(self->_queue);
  if (availableCopy)
  {

    [(HDHRHypertensionNotificationsRescindedAlertManager *)self _queue_pullFeatureStatusAndPresentAlertIfNeeded];
  }
}

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  statusCopy = status;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __100__HDHRHypertensionNotificationsRescindedAlertManager_featureStatusProviding_didUpdateFeatureStatus___block_invoke;
  v8[3] = &unk_27865FE98;
  v8[4] = self;
  v9 = statusCopy;
  v7 = statusCopy;
  dispatch_async(queue, v8);
}

uint64_t __100__HDHRHypertensionNotificationsRescindedAlertManager_featureStatusProviding_didUpdateFeatureStatus___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HRLogSensitiveClassName(*(a1 + 32), v4);
    v6 = HKSensitiveLogItem();
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature status did change to: %{public}@", &v8, 0x16u);
  }

  return [*(a1 + 32) _queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:*(a1 + 40)];
}

- (void)_queue_pullFeatureStatusAndPresentAlertIfNeeded
{
  OUTLINED_FUNCTION_4();
  v2 = HRLogSensitiveClassName(v0, v1);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:(id)status
{
  v36 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  dispatch_assert_queue_V2(self->_queue);
  if (([(HDHRPairedSyncStateProviding *)self->_pairedSyncStateProvider isPairedSyncCompleted]& 1) != 0)
  {
    v5 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    if (([v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]] & 1) == 0)
    {
      _HKInitializeLogging();
      v6 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = HRLogSensitiveClassName(self, v13);
        *buf = 138543362;
        v33 = v8;
        v9 = "[%{public}@] Hypertension notifications are disabled in settings";
        goto LABEL_11;
      }

LABEL_12:

      [(HDHRHypertensionNotificationsRescindedAlertManager *)self _unitTesting_callNotificationNotPostedHandlerIfSet];
LABEL_18:

      goto LABEL_19;
    }

    if ([(HDHRHypertensionNotificationsRescindedAlertManager *)self _isFeatureUnavailableForNonRescindedReasonsWithUsageEvaluation:v5])
    {
      _HKInitializeLogging();
      v6 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = HRLogSensitiveClassName(self, v7);
        *buf = 138543362;
        v33 = v8;
        v9 = "[%{public}@] Hypertension notifications are unavailable for non-rescinding reasons";
LABEL_11:
        _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    localKeyValueDomain = self->_localKeyValueDomain;
    v31 = 0;
    v15 = [(HDKeyValueDomain *)localKeyValueDomain dateForKey:@"HypertensionNotificationsDisabledNotificationShownDateKey" error:&v31];
    v16 = v31;
    if (v16)
    {
      _HKInitializeLogging();
      v17 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [HDHRHypertensionNotificationsRescindedAlertManager _queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:];
      }

      goto LABEL_16;
    }

    if ([(HDHRHypertensionNotificationsRescindedAlertManager *)self _isFeatureRescindedWithUsageEvaluation:v5])
    {
      _HKInitializeLogging();
      v18 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HRLogSensitiveClassName(self, v19);
        *buf = 138543618;
        v33 = v20;
        v34 = 2114;
        v35 = v15;
        _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Hypertension notifications are rescinded (last shown date: %{public}@)", buf, 0x16u);
      }

      if (!v15)
      {
        [(HDHRHypertensionNotificationsRescindedAlertManager *)self _presentHypertensionNotificationsRescindedAlertForUsageEvaluation:v5];
        v21 = self->_localKeyValueDomain;
        date = [MEMORY[0x277CBEAA8] date];
        v30 = 0;
        [(HDKeyValueDomain *)v21 setDate:date forKey:@"HypertensionNotificationsDisabledNotificationShownDateKey" error:&v30];
        v17 = v30;

        if (!v17)
        {
LABEL_16:

LABEL_17:
          goto LABEL_18;
        }

        _HKInitializeLogging();
        v23 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [HDHRHypertensionNotificationsRescindedAlertManager _queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:];
        }

LABEL_33:

        goto LABEL_16;
      }
    }

    else if (v15)
    {
      _HKInitializeLogging();
      v24 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = HRLogSensitiveClassName(self, v25);
        *buf = 138543618;
        v33 = v26;
        v34 = 2114;
        v35 = v15;
        _os_log_impl(&dword_229486000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Hypertension notifications are not rescinded (last shown date: %{public}@)", buf, 0x16u);
      }

      [(HDHRHypertensionNotificationsRescindedAlertManager *)self _presentHypertensionNotificationsReEnabledAlert];
      v27 = self->_localKeyValueDomain;
      v28 = [MEMORY[0x277CBEB98] setWithObject:@"HypertensionNotificationsDisabledNotificationShownDateKey"];
      v29 = 0;
      [(HDKeyValueDomain *)v27 removeValuesForKeys:v28 error:&v29];
      v17 = v29;

      if (!v17)
      {
        goto LABEL_16;
      }

      _HKInitializeLogging();
      v23 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [HDHRHypertensionNotificationsRescindedAlertManager _queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:];
      }

      goto LABEL_33;
    }

    [(HDHRHypertensionNotificationsRescindedAlertManager *)self _unitTesting_callNotificationNotPostedHandlerIfSet];
    goto LABEL_17;
  }

  _HKInitializeLogging();
  v10 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HRLogSensitiveClassName(self, v11);
    *buf = 138543362;
    v33 = v12;
    _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Paired sync not complete", buf, 0xCu);
  }

  [(HDHRHypertensionNotificationsRescindedAlertManager *)self _unitTesting_callNotificationNotPostedHandlerIfSet];
LABEL_19:
}

- (void)_unitTesting_callNotificationNotPostedHandlerIfSet
{
  unitTesting_notificationNotPostedHandler = [(HDHRHypertensionNotificationsRescindedAlertManager *)self unitTesting_notificationNotPostedHandler];

  if (unitTesting_notificationNotPostedHandler)
  {
    unitTesting_notificationNotPostedHandler2 = [(HDHRHypertensionNotificationsRescindedAlertManager *)self unitTesting_notificationNotPostedHandler];
    unitTesting_notificationNotPostedHandler2[2]();
  }
}

- (id)_rescindedAlertTitleForUsageEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  if ([evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF08]] && objc_msgSend(evaluationCopy, "isRequirementSatisfiedWithIdentifier:", *MEMORY[0x277CCBF00]))
  {
    if ([evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD0]])
    {
      if ([evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF30]])
      {
        v4 = 0;
        goto LABEL_8;
      }

      v5 = @"HYPERTENSION_NOTIFICATIONS_REMOTELY_DISABLED_ALERT_TITLE";
    }

    else
    {
      v5 = @"HYPERTENSION_NOTIFICATIONS_SEED_EXPIRED_ALERT_TITLE";
    }
  }

  else
  {
    v5 = @"HYPERTENSION_NOTIFICATIONS_UNSUPPORTED_REGION_ALERT_TITLE";
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v6 localizedStringForKey:v5 value:&stru_283CC4740 table:@"Localizable-Hermit"];

LABEL_8:

  return v4;
}

- (id)_rescindedAlertBodyForUsageEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  if ([evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF08]] && objc_msgSend(evaluationCopy, "isRequirementSatisfiedWithIdentifier:", *MEMORY[0x277CCBF00]))
  {
    if ([evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD0]])
    {
      if ([evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF30]])
      {
        v4 = 0;
        goto LABEL_8;
      }

      v5 = @"HYPERTENSION_NOTIFICATIONS_REMOTELY_DISABLED_ALERT_BODY";
    }

    else
    {
      v5 = @"HYPERTENSION_NOTIFICATIONS_SEED_EXPIRED_ALERT_BODY";
    }
  }

  else
  {
    v5 = @"HYPERTENSION_NOTIFICATIONS_UNSUPPORTED_REGION_ALERT_BODY";
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v6 localizedStringForKey:v5 value:&stru_283CC4740 table:@"Localizable-Hermit"];

LABEL_8:

  return v4;
}

- (int64_t)_rescindedAlertTypeForUsageEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  if ([evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF08]])
  {
    if ([evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF00]])
    {
      if ([evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD0]])
      {
        if ([evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF30]])
        {
          v4 = 1;
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 4;
    }
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (void)_presentHypertensionNotificationsRescindedAlertForUsageEvaluation:(id)evaluation
{
  v14 = *MEMORY[0x277D85DE8];
  evaluationCopy = evaluation;
  v5 = [(HDHRHypertensionNotificationsRescindedAlertManager *)self _rescindedAlertTitleForUsageEvaluation:evaluationCopy];
  v6 = [(HDHRHypertensionNotificationsRescindedAlertManager *)self _rescindedAlertBodyForUsageEvaluation:evaluationCopy];
  v7 = [(HDHRHypertensionNotificationsRescindedAlertManager *)self _rescindedAlertTypeForUsageEvaluation:evaluationCopy];

  _HKInitializeLogging();
  v8 = HKLogHeartRateCategory();
  v9 = v8;
  if (v5 && v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HRLogSensitiveClassName(self, v10);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling Hypertension notifications rescinded alert", &v12, 0xCu);
    }

    [(HDHRHypertensionNotificationsRescindedAlertManager *)self _presentNotificationWithTitle:v5 message:v6 type:v7];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(HDHRHypertensionNotificationsRescindedAlertManager *)self _presentHypertensionNotificationsRescindedAlertForUsageEvaluation:v9];
    }
  }
}

- (void)_presentHypertensionNotificationsReEnabledAlert
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HRLogSensitiveClassName(self, v4);
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling Hypertension notifications re-enabled alert", &v10, 0xCu);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HYPERTENSION_NOTIFICATIONS_REENABLED_TITLE" value:&stru_283CC4740 table:@"Localizable-Hermit"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"HYPERTENSION_NOTIFICATIONS_REENABLED_BODY" value:&stru_283CC4740 table:@"Localizable-Hermit"];
  [(HDHRHypertensionNotificationsRescindedAlertManager *)self _presentNotificationWithTitle:v7 message:v9 type:6];
}

- (BOOL)_isFeatureRescindedWithUsageEvaluation:(id)evaluation
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCBF08];
  evaluationCopy = evaluation;
  v6 = [evaluationCopy isRequirementSatisfiedWithIdentifier:v4];
  v7 = [evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF00]];
  v8 = [evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD0]];
  v9 = [evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF30]];

  _HKInitializeLogging();
  v10 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HRLogSensitiveClassName(self, v11);
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v7 ^ 1u];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v6 ^ 1u];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v8 ^ 1u];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v9 ^ 1u];
    v18 = 138544386;
    v19 = v12;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    v24 = 2114;
    v25 = v15;
    v26 = 2114;
    v27 = v16;
    _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking if feature is unavailable for rescinding reasons: regionNotSupportedOnRemoteDevice -> %{public}@, regionNotSupportedOnLocalDevice -> %{public}@, expired -> %{public}@, disabled -> %{public}@", &v18, 0x34u);
  }

  return v6 & v7 & v8 & v9 ^ 1;
}

- (BOOL)_isFeatureUnavailableForNonRescindedReasonsWithUsageEvaluation:(id)evaluation
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCBF28];
  evaluationCopy = evaluation;
  v6 = [evaluationCopy isRequirementSatisfiedWithIdentifier:v4];
  v7 = [evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF70]];
  v8 = [evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF50]];
  v9 = [evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFE8]];
  v10 = [evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF48]];
  v11 = [evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF80]];
  v12 = [evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBED8]];
  v31 = [evaluationCopy isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBEF0]];

  _HKInitializeLogging();
  v13 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v29 = HRLogSensitiveClassName(self, v14);
    v28 = [MEMORY[0x277CCABB0] numberWithBool:v6 ^ 1u];
    v27 = [MEMORY[0x277CCABB0] numberWithBool:v7 ^ 1u];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v8 ^ 1u];
    [MEMORY[0x277CCABB0] numberWithBool:v9 ^ 1u];
    v16 = v30 = v12;
    [MEMORY[0x277CCABB0] numberWithBool:v10 ^ 1u];
    v17 = v26 = v6;
    [MEMORY[0x277CCABB0] numberWithBool:v11 ^ 1u];
    v18 = v25 = v7;
    [MEMORY[0x277CCABB0] numberWithBool:v30 ^ 1u];
    v24 = v11;
    v19 = v10;
    v21 = v20 = v9;
    v22 = [MEMORY[0x277CCABB0] numberWithBool:v31 ^ 1u];
    *buf = 138545410;
    v33 = v29;
    v34 = 2114;
    v35 = v28;
    v36 = 2114;
    v37 = v27;
    v38 = 2114;
    v39 = v15;
    v40 = 2114;
    v41 = v16;
    v42 = 2114;
    v43 = v17;
    v44 = 2114;
    v45 = v18;
    v46 = 2114;
    v47 = v21;
    v48 = 2114;
    v49 = v22;
    _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking if feature is unavailable for non-rescinding reasons: featureFlag -> %{public}@, age gated -> %{public}@, disabled in privacy -> %{public}@, wrist detection disabled -> %{public}@, health app hidden -> %{public}@, store demo mode -> %{public}@, active remote device not present -> %{public}@, capability not supported -> %{public}@", buf, 0x5Cu);

    v9 = v20;
    v10 = v19;
    v11 = v24;

    v7 = v25;
    v6 = v26;

    v12 = v30;
  }

  return (v6 & v7 & v8 & v9 & v10 & v11 & v12 & v31 & 1) == 0;
}

- (void)_presentNotificationWithTitle:(id)title message:(id)message type:(int64_t)type
{
  v8 = MEMORY[0x277CE1F60];
  messageCopy = message;
  titleCopy = title;
  v11 = objc_alloc_init(v8);
  [v11 setTitle:titleCopy];

  [v11 setBody:messageCopy];
  v12 = *MEMORY[0x277D13048];
  [v11 setCategoryIdentifier:*MEMORY[0x277D13048]];
  v13 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
  date = [MEMORY[0x277CBEAA8] date];
  [v11 setSound:v13];
  [v11 setDate:date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v16 = [currentCalendar hk_dateByAddingDays:1 toDate:date];
  [v11 setExpirationDate:v16];

  v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:MEMORY[0x277CBEC10]];
  _hk_urlForHypertensionEventType = [MEMORY[0x277CBEBC0] _hk_urlForHypertensionEventType];
  absoluteString = [_hk_urlForHypertensionEventType absoluteString];
  [v17 setObject:absoluteString forKeyedSubscript:*MEMORY[0x277CCE4E0]];

  [v17 setObject:&unk_283CD26F8 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  [v11 setUserInfo:v17];
  v20 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v12 content:v11 trigger:0];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HDHRHypertensionNotificationsRescindedAlertManager__presentNotificationWithTitle_message_type___block_invoke;
  block[3] = &unk_2786600A0;
  block[4] = self;
  v23 = v20;
  v21 = v20;
  objc_copyWeak(v24, &location);
  v24[1] = type;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v24);

  objc_destroyWeak(&location);
}

void __97__HDHRHypertensionNotificationsRescindedAlertManager__presentNotificationWithTitle_message_type___block_invoke(id *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HRLogSensitiveClassName(a1[4], v4);
    *buf = 138543362;
    v20 = v5;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] About to post Hypertension notifications rescinded/reenabled notification", buf, 0xCu);
  }

  v6 = [a1[4] unitTesting_postNotificationHandler];
  v7 = v6 == 0;

  v8 = a1[4];
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(v8 + 1);
    v11 = [WeakRetained notificationManager];
    v12 = a1[5];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__HDHRHypertensionNotificationsRescindedAlertManager__presentNotificationWithTitle_message_type___block_invoke_345;
    v15[3] = &unk_278660078;
    objc_copyWeak(v18, a1 + 6);
    v13 = a1[5];
    v14 = a1[4];
    v16 = v13;
    v17 = v14;
    v18[1] = a1[7];
    [v11 postNotificationWithRequest:v12 completion:v15];

    objc_destroyWeak(v18);
  }

  else
  {
    v9 = [v8 unitTesting_postNotificationHandler];
    (v9)[2](v9, a1[5]);
  }
}

void __97__HDHRHypertensionNotificationsRescindedAlertManager__presentNotificationWithTitle_message_type___block_invoke_345(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __97__HDHRHypertensionNotificationsRescindedAlertManager__presentNotificationWithTitle_message_type___block_invoke_345_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = HRLogSensitiveClassName(WeakRetained, v8);
    v10 = [*(a1 + 32) identifier];
    v11 = HKSensitiveLogItem();
    v15 = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested notification (%{public}@ - %{public}@)", &v15, 0x20u);
  }

  v12 = [HDHRHypertensionNotificationDeliveryEvent alloc];
  v13 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v14 = [(HDHRHypertensionNotificationDeliveryEvent *)v12 initWithProfile:v13 type:*(a1 + 56)];

  [*(*(a1 + 40) + 48) submitEvent:v14 error:0];
}

- (void)_queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v2 = HRLogSensitiveClassName(v0, v1);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v2 = HRLogSensitiveClassName(v0, v1);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v2 = HRLogSensitiveClassName(v0, v1);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_presentHypertensionNotificationsRescindedAlertForUsageEvaluation:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v7 = HRLogSensitiveClassName(a1, a2);
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __97__HDHRHypertensionNotificationsRescindedAlertManager__presentNotificationWithTitle_message_type___block_invoke_345_cold_1()
{
  OUTLINED_FUNCTION_4();
  WeakRetained = objc_loadWeakRetained((v0 + 48));
  v3 = HRLogSensitiveClassName(WeakRetained, v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end