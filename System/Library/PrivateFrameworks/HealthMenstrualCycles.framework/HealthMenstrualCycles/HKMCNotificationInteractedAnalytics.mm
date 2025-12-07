@interface HKMCNotificationInteractedAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (void)submitMetricForCategory:(id)category action:(id)action;
@end

@implementation HKMCNotificationInteractedAnalytics

+ (BOOL)shouldSubmit
{
  _isMetricEnabled = [self _isMetricEnabled];
  if (_isMetricEnabled)
  {

    LOBYTE(_isMetricEnabled) = [self _isAllowed];
  }

  return _isMetricEnabled;
}

+ (BOOL)_isMetricEnabled
{
  v2 = +[HKMCNotificationInteractedMetric eventName];
  if (AnalyticsIsEventUsed())
  {
    hkmc_analyticsDebugModeEnabled = 1;
  }

  else
  {
    hkmc_menstrualCyclesDefaults = [MEMORY[0x277CBEBD0] hkmc_menstrualCyclesDefaults];
    hkmc_analyticsDebugModeEnabled = [hkmc_menstrualCyclesDefaults hkmc_analyticsDebugModeEnabled];
  }

  return hkmc_analyticsDebugModeEnabled;
}

+ (void)submitMetricForCategory:(id)category action:(id)action
{
  v27 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  actionCopy = action;
  if ([self shouldSubmit])
  {
    v8 = [[HKMCNotificationInteractedMetric alloc] initWithCategory:categoryCopy action:actionCopy];
    v9 = +[HKMCNotificationInteractedMetric eventName];
    eventPayload = [(HKMCNotificationInteractedMetric *)v8 eventPayload];
    AnalyticsSendEvent();

    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2E8];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_8;
    }

    v12 = v11;
    v13 = objc_opt_class();
    v14 = v13;
    v15 = HKSensitiveLogItem();
    v21 = 138543618;
    v22 = v13;
    v23 = 2114;
    v24 = v15;
    _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Submitted metric %{public}@", &v21, 0x16u);

LABEL_6:
    goto LABEL_7;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v16;
    v17 = objc_opt_class();
    v18 = MEMORY[0x277CCABB0];
    v12 = v17;
    v19 = [v18 numberWithBool:{objc_msgSend(self, "_isMetricEnabled")}];
    v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "_isAllowed")}];
    v21 = 138543874;
    v22 = v17;
    v23 = 2114;
    v24 = v19;
    v25 = 2114;
    v26 = v20;
    _os_log_impl(&dword_2518FC000, &v8->super, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping submitting metric. isMetricEnabled: %{public}@, isHealthDataSubmissionAllowed: %{public}@", &v21, 0x20u);

    goto LABEL_6;
  }

LABEL_8:
}

@end