@interface HDRPRespiratoryDailyAnalytics
- (HDProfile)profile;
- (HDRPRespiratoryDailyAnalytics)initWithProfile:(id)profile featureAvailabilityProvider:(id)provider;
- (id)_settingsWithProfile:(id)profile;
- (int64_t)_gatherAndSendDailyAnalyticsAndReturnError:(id *)error;
- (void)daemonReady:(id)ready;
- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion;
@end

@implementation HDRPRespiratoryDailyAnalytics

- (HDRPRespiratoryDailyAnalytics)initWithProfile:(id)profile featureAvailabilityProvider:(id)provider
{
  profileCopy = profile;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = HDRPRespiratoryDailyAnalytics;
  v8 = [(HDRPRespiratoryDailyAnalytics *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    objc_storeStrong(&v9->_featureAvailabilityProvider, provider);
    v10 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v9 queue:v9->_queue];
  }

  return v9;
}

- (void)daemonReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator addObserver:self queue:self->_queue];
}

- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v6 = [(HDRPRespiratoryDailyAnalytics *)self _gatherAndSendDailyAnalyticsAndReturnError:&v11];
  v7 = v11;
  switch(v6)
  {
    case 2:
      v8 = completionCopy[2];
      v9 = completionCopy;
      v10 = 1;
      goto LABEL_7;
    case 1:
      (completionCopy[2])(completionCopy, 0, 2, v7);
      break;
    case 0:
      v8 = completionCopy[2];
      v9 = completionCopy;
      v10 = 0;
LABEL_7:
      v8(v9, 0, v10, 0);
      break;
  }
}

- (int64_t)_gatherAndSendDailyAnalyticsAndReturnError:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEAA8] now];
  if (AnalyticsIsEventUsed())
  {
    errorCopy = error;
    v6 = HKImproveHealthAndActivityAnalyticsAllowed();
    _HKInitializeLogging();
    v7 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v34 = objc_opt_class();
      v35 = 1024;
      LODWORD(v36) = v6;
      v8 = v34;
      _os_log_impl(&dword_262086000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Collecting daily analytics isHealthDataSubmissionAllowed = %d", buf, 0x12u);
    }

    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    v10 = [HDRPDailyAnalyticsReport alloc];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    featureAvailabilityProvider = self->_featureAvailabilityProvider;
    profile = [(HDRPRespiratoryDailyAnalytics *)self profile];
    v14 = [(HDRPRespiratoryDailyAnalytics *)self _settingsWithProfile:profile];
    v15 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ControlCenter"];
    LOBYTE(v30) = v6;
    v16 = [(HDRPDailyAnalyticsReport *)v10 initWithDate:v5 profile:WeakRetained pairedDeviceRegistry:mEMORY[0x277D2BCF8] featureAvailabilityProvider:featureAvailabilityProvider oxygenSaturationSettings:v14 controlCenterUserDefaults:v15 healthDataCollectionAllowed:v30];

    v32 = 0;
    v17 = [(HDRPDailyAnalyticsReport *)v16 generatePayloadAndReturnError:&v32];
    v18 = v32;
    _HKInitializeLogging();
    v19 = HKLogRespiratoryCategory();
    v20 = v19;
    if (v17)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = v21;
        allKeys = [v17 allKeys];
        *buf = 138543874;
        v34 = v21;
        v35 = 2114;
        v36 = @"com.apple.health.respiratory.Daily";
        v37 = 2114;
        v38 = allKeys;
        _os_log_impl(&dword_262086000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending %{public}@: %{public}@", buf, 0x20u);
      }

      AnalyticsSendEvent();
      v24 = 0;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(HDRPRespiratoryDailyAnalytics *)self _gatherAndSendDailyAnalyticsAndReturnError:v18, v20];
      }

      v26 = v18;
      v27 = v26;
      if (v26)
      {
        if (errorCopy)
        {
          v28 = v26;
          *errorCopy = v27;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v24 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    mEMORY[0x277D2BCF8] = HKLogRespiratoryCategory();
    if (os_log_type_enabled(mEMORY[0x277D2BCF8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v34 = objc_opt_class();
      v35 = 2114;
      v36 = @"com.apple.health.respiratory.Daily";
      v25 = v34;
      _os_log_impl(&dword_262086000, mEMORY[0x277D2BCF8], OS_LOG_TYPE_DEFAULT, "[%{public}@] Analytics is disabled for %{public}@, skipping.", buf, 0x16u);
    }

    v24 = 2;
  }

  return v24;
}

- (id)_settingsWithProfile:(id)profile
{
  v3 = MEMORY[0x277CBEBD0];
  profileCopy = profile;
  hkrp_respiratoryDefaults = [v3 hkrp_respiratoryDefaults];
  v6 = objc_alloc(MEMORY[0x277D46BB0]);
  v7 = [v6 initWithUserDefaultsDomain:*MEMORY[0x277CCCD20]];
  v8 = objc_alloc(MEMORY[0x277CCD460]);
  v9 = HDRPOxygenSaturationRecordingCompanionAnalysisFeatureAvailabilityProvider(profileCopy);
  v10 = [v8 initWithFeatureAvailabilityProviding:v9 healthDataSource:profileCopy];

  v11 = [objc_alloc(MEMORY[0x277D46BA8]) initWithUserDefaults:hkrp_respiratoryDefaults userDefaultsSyncProvider:v7 companionAnalysisFeatureStatusManager:v10];

  return v11;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)_gatherAndSendDailyAnalyticsAndReturnError:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_262086000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Could not generate analytics report: %{public}@", &v6, 0x16u);
}

@end