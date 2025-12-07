@interface HKMCLoggedDataAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (void)submitMetricForMethod:(id)method loggedDayIndex:(int64_t)index currentDayIndex:(int64_t)dayIndex;
@end

@implementation HKMCLoggedDataAnalytics

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
  v2 = +[HKMCLoggedDataMetric eventName];
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

+ (void)submitMetricForMethod:(id)method loggedDayIndex:(int64_t)index currentDayIndex:(int64_t)dayIndex
{
  v29 = *MEMORY[0x277D85DE8];
  methodCopy = method;
  if ([self shouldSubmit])
  {
    v9 = [[HKMCLoggedDataMetric alloc] initWithMethod:methodCopy];
    index = [MEMORY[0x277CCABB0] numberWithInteger:dayIndex - index];
    [(HKMCLoggedDataMetric *)v9 setDayIndexLoggingOffset:index];

    v11 = +[HKMCLoggedDataMetric eventName];
    eventPayload = [(HKMCLoggedDataMetric *)v9 eventPayload];
    AnalyticsSendEvent();

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2E8];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_8;
    }

    v14 = v13;
    v15 = objc_opt_class();
    v16 = v15;
    v17 = HKSensitiveLogItem();
    v23 = 138543618;
    v24 = v15;
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&dword_2518FC000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Submitted metric %{public}@", &v23, 0x16u);

LABEL_6:
    goto LABEL_7;
  }

  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v18;
    v19 = objc_opt_class();
    v20 = MEMORY[0x277CCABB0];
    v14 = v19;
    v21 = [v20 numberWithBool:{objc_msgSend(self, "_isMetricEnabled")}];
    v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "_isAllowed")}];
    v23 = 138543874;
    v24 = v19;
    v25 = 2114;
    v26 = v21;
    v27 = 2114;
    v28 = v22;
    _os_log_impl(&dword_2518FC000, &v9->super, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping submitting metric. isMetricEnabled: %{public}@, isHealthDataSubmissionAllowed: %{public}@", &v23, 0x20u);

    goto LABEL_6;
  }

LABEL_8:
}

@end