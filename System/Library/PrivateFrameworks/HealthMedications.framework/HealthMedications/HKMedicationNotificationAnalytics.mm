@interface HKMedicationNotificationAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (void)submitMetricForType:(int64_t)type areHealthNotificationsAuthorizedStatus:(id)status interactionType:(int64_t)interactionType dataSource:(id)source;
+ (void)submitNotificationSentMetricWithHealthNotificationsAuthorizedStatus:(BOOL)status dataSource:(id)source;
@end

@implementation HKMedicationNotificationAnalytics

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
  v2 = +[HKMedicationNotificationMetric eventName];
  IsEventUsed = AnalyticsIsEventUsed();

  return IsEventUsed;
}

+ (void)submitNotificationSentMetricWithHealthNotificationsAuthorizedStatus:(BOOL)status dataSource:(id)source
{
  statusCopy = status;
  v6 = MEMORY[0x277CCABB0];
  sourceCopy = source;
  v8 = [v6 numberWithBool:statusCopy];
  [self submitMetricForType:1 areHealthNotificationsAuthorizedStatus:v8 interactionType:0 dataSource:sourceCopy];
}

+ (void)submitMetricForType:(int64_t)type areHealthNotificationsAuthorizedStatus:(id)status interactionType:(int64_t)interactionType dataSource:(id)source
{
  v34 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  sourceCopy = source;
  shouldSubmit = [self shouldSubmit];
  if (shouldSubmit)
  {
    v13 = HKMedicationsSharedAnalyticsQueue(shouldSubmit);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __123__HKMedicationNotificationAnalytics_submitMetricForType_areHealthNotificationsAuthorizedStatus_interactionType_dataSource___block_invoke;
    block[3] = &unk_2796CA0C8;
    typeCopy = type;
    v23 = statusCopy;
    v24 = sourceCopy;
    interactionTypeCopy = interactionType;
    selfCopy = self;
    dispatch_async(v13, block);

    v14 = v23;
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogMedication();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

    if (!v16)
    {
      goto LABEL_7;
    }

    v14 = HKLogMedication();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = MEMORY[0x277CCABB0];
      v19 = v17;
      v20 = [v18 numberWithBool:{objc_msgSend(self, "_isMetricEnabled")}];
      v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "_isAllowed")}];
      *buf = 138543874;
      v29 = v17;
      v30 = 2114;
      v31 = v20;
      v32 = 2114;
      v33 = v21;
      _os_log_impl(&dword_2517E7000, v14, OS_LOG_TYPE_INFO, "[%{public}@] Skipping submitting metric. isMetricEnabled: %{public}@, isHealthDataSubmissionAllowed: %{public}@", buf, 0x20u);
    }
  }

LABEL_7:
}

void __123__HKMedicationNotificationAnalytics_submitMetricForType_areHealthNotificationsAuthorizedStatus_interactionType_dataSource___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [[HKMedicationNotificationMetric alloc] initWithType:a1[6] areHealthNotificationsAuthorized:a1[4] dataSource:a1[5]];
  [(HKMedicationNotificationMetric *)v2 setInteractionType:a1[7]];
  v3 = +[HKMedicationNotificationMetric eventName];
  v4 = [(HKMedicationNotificationMetric *)v2 eventPayload];
  AnalyticsSendEvent();

  _HKInitializeLogging();
  v5 = HKLogMedication();
  LODWORD(v4) = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v4)
  {
    v6 = HKLogMedication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = HKSensitiveLogItem();
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_2517E7000, v6, OS_LOG_TYPE_INFO, "[%{public}@] Submitted metric %{public}@", &v10, 0x16u);
    }
  }
}

@end