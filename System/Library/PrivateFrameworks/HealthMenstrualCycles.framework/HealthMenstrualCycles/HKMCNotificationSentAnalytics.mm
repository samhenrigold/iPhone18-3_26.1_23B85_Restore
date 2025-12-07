@interface HKMCNotificationSentAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (void)submitMetricForCategory:(id)category areHealthNotificationsAuthorized:(BOOL)authorized numberOfDaysShiftedForFertileWindow:(id)window numberOfDaysOffsetFromFertileWindowEnd:(id)end numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification:(id)notification internalLiveOnCycleFactorOverrideEnabled:(BOOL)enabled;
@end

@implementation HKMCNotificationSentAnalytics

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
  v2 = +[HKMCNotificationSentMetric eventName];
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

+ (void)submitMetricForCategory:(id)category areHealthNotificationsAuthorized:(BOOL)authorized numberOfDaysShiftedForFertileWindow:(id)window numberOfDaysOffsetFromFertileWindowEnd:(id)end numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification:(id)notification internalLiveOnCycleFactorOverrideEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  authorizedCopy = authorized;
  v42 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  windowCopy = window;
  endCopy = end;
  notificationCopy = notification;
  if ([self shouldSubmit])
  {
    v18 = [HKMCNotificationSentMetric alloc];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:authorizedCopy];
    v20 = [(HKMCNotificationSentMetric *)v18 initWithCategory:categoryCopy areHealthNotificationsAuthorized:v19];

    [(HKMCNotificationSentMetric *)v20 setNumberOfDaysShiftedForFertileWindow:windowCopy];
    [(HKMCNotificationSentMetric *)v20 setNumberOfDaysOffsetFromFertileWindowEnd:endCopy];
    [(HKMCNotificationSentMetric *)v20 setNumberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification:notificationCopy];
    v21 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
    [(HKMCNotificationSentMetric *)v20 setInternalLiveOnCycleFactorOverrideEnabled:v21];

    v22 = +[HKMCNotificationSentMetric eventName];
    eventPayload = [(HKMCNotificationSentMetric *)v20 eventPayload];
    AnalyticsSendEvent();

    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = objc_opt_class();
      v27 = v26;
      v28 = HKSensitiveLogItem();
      *buf = 138543618;
      v37 = v26;
      v38 = 2114;
      v39 = v28;
      _os_log_impl(&dword_2518FC000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Submitted metric %{public}@", buf, 0x16u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      v31 = objc_opt_class();
      v32 = MEMORY[0x277CCABB0];
      v33 = v31;
      v34 = [v32 numberWithBool:{objc_msgSend(self, "_isMetricEnabled")}];
      v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "_isAllowed")}];
      *buf = 138543874;
      v37 = v31;
      v38 = 2114;
      v39 = v34;
      v40 = 2114;
      v41 = v35;
      _os_log_impl(&dword_2518FC000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping submitting metric. isMetricEnabled: %{public}@, isHealthDataSubmissionAllowed: %{public}@", buf, 0x20u);
    }
  }
}

@end