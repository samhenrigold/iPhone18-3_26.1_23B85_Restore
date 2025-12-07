@interface HDSHBreathingDisturbanceAnalyzer
+ (BOOL)_areSamplesInSameSleepDayWithFirstSample:(id)sample secondSample:(id)secondSample calendar:(id)calendar;
+ (BOOL)isAnalysisNeededWithAnchorDate:(id)date referenceDate:(id)referenceDate calendar:(id)calendar;
+ (id)_sampleWithHighestDurationWithFirstSample:(id)sample secondSample:(id)secondSample;
+ (id)constructAnalysisDateIntervalFromDate:(id)date withCalendar:(id)calendar;
+ (id)endDateFromMostRecentlyAnalyzedDateIntervalWithDate:(id)date numberOfAnalysisAttempts:(int64_t)attempts calendar:(id)calendar;
+ (id)samplesFilteredBySleepDay:(id)day;
+ (int64_t)numberOfExpectedAnalysisAttemptsStartingFromAnchorDate:(id)date referenceDate:(id)referenceDate calendar:(id)calendar;
- (BOOL)_requestBreathingDisturbanceAnalysisWithSamples:(id)samples analysisInterval:(id)interval;
- (BOOL)_writePossibleSleepApneaNotificationSampleWithAnalysisInterval:(id)interval algorithmVersion:(id)version error:(id *)error;
- (BOOL)performBreathingDisturbanceAnalysisWithIsForced:(BOOL)forced date:(id)date numberOfAnalysisAttempts:(int64_t)attempts;
- (HDSHBreathingDisturbanceAnalyzer)initWithProfile:(id)profile;
- (id)_createEnumeratorWithAnalysisInterval:(id)interval profile:(id)profile includeTimeZones:(BOOL)zones;
- (id)fetchSamplesWithAnalysisInterval:(id)interval profile:(id)profile includeTimeZones:(BOOL)zones error:(id *)error;
- (void)_sendAnalyticsWithPayload:(id)payload;
- (void)_sendPossibleSleepApneaNotificationWithRequest:(id)request;
@end

@implementation HDSHBreathingDisturbanceAnalyzer

- (HDSHBreathingDisturbanceAnalyzer)initWithProfile:(id)profile
{
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = HDSHBreathingDisturbanceAnalyzer;
  v5 = [(HDSHBreathingDisturbanceAnalyzer *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = objc_alloc(MEMORY[0x277CCCFE8]);
    v8 = *MEMORY[0x277CCC320];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v10 = [v7 initWithLoggingCategory:v8 healthDataSource:WeakRetained];
    analyticsEventSubmissionManager = v6->_analyticsEventSubmissionManager;
    v6->_analyticsEventSubmissionManager = v10;
  }

  return v6;
}

- (BOOL)performBreathingDisturbanceAnalysisWithIsForced:(BOOL)forced date:(id)date numberOfAnalysisAttempts:(int64_t)attempts
{
  forcedCopy = forced;
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v9 = [MEMORY[0x277CBEAA8] now];
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  if (forcedCopy)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v11 setDay:~*MEMORY[0x277D62648]];
    v12 = [hk_gregorianCalendar dateByAddingComponents:v11 toDate:v9 options:0];

    v9 = v11;
  }

  else
  {
    v12 = [HDSHBreathingDisturbanceAnalyzer endDateFromMostRecentlyAnalyzedDateIntervalWithDate:dateCopy numberOfAnalysisAttempts:attempts calendar:hk_gregorianCalendar];
  }

  v13 = [HDSHBreathingDisturbanceAnalyzer constructAnalysisDateIntervalFromDate:v12 withCalendar:hk_gregorianCalendar];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v23 = 0;
  v15 = [(HDSHBreathingDisturbanceAnalyzer *)self fetchSamplesWithAnalysisInterval:v13 profile:WeakRetained includeTimeZones:0 error:&v23];
  v16 = v23;

  if (v16)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC320];
    v18 = 0;
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v17;
      v20 = objc_opt_class();
      *buf = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v16;
      v21 = v20;
      _os_log_impl(&dword_269C02000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Could not get breathing disturbance samples with error: %@", buf, 0x16u);

      v18 = 0;
    }
  }

  else
  {
    v18 = [(HDSHBreathingDisturbanceAnalyzer *)self _requestBreathingDisturbanceAnalysisWithSamples:v15 analysisInterval:v13];
  }

  return v18;
}

- (id)fetchSamplesWithAnalysisInterval:(id)interval profile:(id)profile includeTimeZones:(BOOL)zones error:(id *)error
{
  zonesCopy = zones;
  v38 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  profileCopy = profile;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [(HDSHBreathingDisturbanceAnalyzer *)self _createEnumeratorWithAnalysisInterval:intervalCopy profile:profileCopy includeTimeZones:zonesCopy];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __100__HDSHBreathingDisturbanceAnalyzer_fetchSamplesWithAnalysisInterval_profile_includeTimeZones_error___block_invoke;
  v24[3] = &unk_279C83178;
  v24[4] = &v26;
  v25 = 0;
  v13 = [v12 enumerateWithError:&v25 handler:v24];
  v14 = v25;
  v15 = v14;
  if (v13)
  {
    v16 = [objc_opt_class() samplesFilteredBySleepDay:v27[5]];
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = [v27[5] count];
      v20 = [v16 count];
      *buf = 138543874;
      v33 = v18;
      v34 = 2048;
      v35 = v19;
      v36 = 2048;
      v37 = v20;
      _os_log_impl(&dword_269C02000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetched %lu samples, filtered to %lu samples.", buf, 0x20u);
    }
  }

  else
  {
    v21 = v14;
    v17 = v21;
    if (v21)
    {
      if (error)
      {
        v22 = v21;
        v16 = 0;
        *error = v17;
        goto LABEL_9;
      }

      _HKLogDroppedError();
    }

    v16 = 0;
  }

LABEL_9:

  _Block_object_dispose(&v26, 8);

  return v16;
}

- (id)_createEnumeratorWithAnalysisInterval:(id)interval profile:(id)profile includeTimeZones:(BOOL)zones
{
  zonesCopy = zones;
  v34[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v8 = MEMORY[0x277CCD720];
  v9 = *MEMORY[0x277CCC930];
  profileCopy = profile;
  v11 = [v8 quantityTypeForIdentifier:v9];
  v12 = HDSampleEntityPredicateForDateInterval();
  v13 = [MEMORY[0x277D10810] entityEnumeratorWithType:v11 profile:profileCopy];

  [v13 setPredicate:v12];
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:1];
  v34[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  [v13 setSortDescriptors:v15];

  if (zonesCopy)
  {
    v32 = *MEMORY[0x277D10400];
    v33 = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [v13 addEncodingOptionsFromDictionary:v16];
  }

  _HKInitializeLogging();
  v17 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = objc_opt_class();
    v25 = v19;
    startDate = [intervalCopy startDate];
    v21 = [startDate description];
    endDate = [intervalCopy endDate];
    v23 = [endDate description];
    *buf = 138543874;
    v27 = v19;
    v28 = 2112;
    v29 = v21;
    v30 = 2112;
    v31 = v23;
    _os_log_impl(&dword_269C02000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Constructed query for breathing disturbance samples with analysis window for start date: %@, end date: %@", buf, 0x20u);
  }

  return v13;
}

- (BOOL)_requestBreathingDisturbanceAnalysisWithSamples:(id)samples analysisInterval:(id)interval
{
  v35 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  intervalCopy = interval;
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC320];
  v9 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [samplesCopy count];
    v14 = [intervalCopy description];
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v34 = v14;
    _os_log_impl(&dword_269C02000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting analysis with %lu samples and analysis interval of %@", buf, 0x20u);
  }

  memset(buf, 0, sizeof(buf));
  objc_msgSend_analyzeSamples_dateInterval_(MEMORY[0x277CF33B0]);
  if (buf[16] == 1)
  {
    _HKInitializeLogging();
    v15 = *v8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 138543362;
      v30 = objc_opt_class();
      v16 = v30;
      _os_log_impl(&dword_269C02000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Possible sleep apnea detected from breathing disturbance samples.", v29, 0xCu);
    }

    v28 = 0;
    v17 = [(HDSHBreathingDisturbanceAnalyzer *)self _writePossibleSleepApneaNotificationSampleWithAnalysisInterval:intervalCopy algorithmVersion:*buf error:&v28];
    v18 = v28;
    if (!v17)
    {
      _HKInitializeLogging();
      v19 = *v8;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        *v29 = 138543618;
        v30 = v20;
        v31 = 2112;
        v32 = v18;
        v21 = v20;
        _os_log_impl(&dword_269C02000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to write sleep apnea event sample with error: %@. Not sending notification and will attempt to retry in one day.", v29, 0x16u);
      }

      v22 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = *v8;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 138543362;
      v30 = objc_opt_class();
      v23 = v30;
      _os_log_impl(&dword_269C02000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Possible sleep apnea NOT detected from breathing disturbance samples.", v29, 0xCu);
    }
  }

  _HKInitializeLogging();
  v24 = *v8;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_opt_class();
    *v29 = 138543362;
    v30 = v25;
    v26 = v25;
    _os_log_impl(&dword_269C02000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analysis successfully performed!", v29, 0xCu);
  }

  [(HDSHBreathingDisturbanceAnalyzer *)self _sendAnalyticsWithPayload:*&buf[8]];
  v22 = 1;
LABEL_15:

  return v22;
}

- (BOOL)_writePossibleSleepApneaNotificationSampleWithAnalysisInterval:(id)interval algorithmVersion:(id)version error:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v42 = *MEMORY[0x277CCC428];
  v43[0] = versionCopy;
  v9 = MEMORY[0x277CBEAC0];
  intervalCopy = interval;
  v11 = [v9 dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v12 = MEMORY[0x277CCD0B0];
  v13 = [MEMORY[0x277CCD0C0] _typeWithIdentifier:*MEMORY[0x277CCBAC0]];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  v16 = [v12 categorySampleWithType:v13 value:0 startDate:startDate endDate:endDate metadata:v11];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sourceManager = [WeakRetained sourceManager];
  v19 = [sourceManager localDeviceSourceWithError:error];

  v20 = objc_loadWeakRetained(&self->_profile);
  deviceManager = [v20 deviceManager];
  v21 = [deviceManager currentDeviceEntityWithError:error];

  LOBYTE(deviceManager) = 0;
  if (v19 && v21)
  {
    v35 = v11;
    v36 = versionCopy;
    deviceManager = objc_loadWeakRetained(&self->_profile);
    dataProvenanceManager = [deviceManager dataProvenanceManager];
    v24 = [dataProvenanceManager localDataProvenanceForSourceEntity:v19 version:0 deviceEntity:v21];

    v25 = objc_loadWeakRetained(&self->_profile);
    dataManager = [v25 dataManager];
    v41 = v16;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    LODWORD(deviceManager) = [dataManager insertDataObjects:v27 withProvenance:v24 creationDate:0 skipInsertionFilter:error error:CFAbsoluteTimeGetCurrent()];

    if (deviceManager)
    {
      _HKInitializeLogging();
      v28 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        *buf = 138543618;
        v38 = objc_opt_class();
        v39 = 2112;
        v40 = v19;
        v30 = v38;
        _os_log_impl(&dword_269C02000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully wrote possible sleep apnea event sample with source %@", buf, 0x16u);
      }

      uUID = [v16 UUID];
      uUIDString = [uUID UUIDString];
      v33 = HKSHCreatePossibleSleepApneaDetectedNotificationRequest();

      [(HDSHBreathingDisturbanceAnalyzer *)self _sendPossibleSleepApneaNotificationWithRequest:v33];
    }

    versionCopy = v36;
    v11 = v35;
  }

  return deviceManager;
}

- (void)_sendAnalyticsWithPayload:(id)payload
{
  v13 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543362;
    v12 = objc_opt_class();
    v7 = v12;
    _os_log_impl(&dword_269C02000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting to send analytics.", buf, 0xCu);
  }

  analyticsEventSubmissionManager = self->_analyticsEventSubmissionManager;
  v9 = [[HDSHBreathingDisturbanceAnalysisAnalyticsEvent alloc] initWithDefaultAnalyticsPayload:payloadCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HDSHBreathingDisturbanceAnalyzer__sendAnalyticsWithPayload___block_invoke;
  v10[3] = &unk_279C83090;
  v10[4] = self;
  [(HKAnalyticsEventSubmissionManager *)analyticsEventSubmissionManager submitEvent:v9 completion:v10];
}

void __62__HDSHBreathingDisturbanceAnalyzer__sendAnalyticsWithPayload___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC320];
  v6 = *MEMORY[0x277CCC320];
  if ((a2 & 1) == 0)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v7 = v5;
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = v4;
    v8 = v10;
    _os_log_error_impl(&dword_269C02000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Error attempting to send analytics payload: %@", &v9, 0x16u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
    v9 = 138543362;
    v10 = objc_opt_class();
    v8 = v10;
    _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully sent analytics payload!", &v9, 0xCu);
LABEL_4:
  }

LABEL_6:
}

- (void)_sendPossibleSleepApneaNotificationWithRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__HDSHBreathingDisturbanceAnalyzer__sendPossibleSleepApneaNotificationWithRequest___block_invoke;
  v6[3] = &unk_279C830B8;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __83__HDSHBreathingDisturbanceAnalyzer__sendPossibleSleepApneaNotificationWithRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v11 = objc_opt_class();
    v5 = v11;
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] About to post possible sleep apnea detected notification.", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained notificationManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__HDSHBreathingDisturbanceAnalyzer__sendPossibleSleepApneaNotificationWithRequest___block_invoke_311;
  v9[3] = &unk_279C83090;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  [v7 postNotificationWithRequest:v8 completion:v9];
}

void __83__HDSHBreathingDisturbanceAnalyzer__sendPossibleSleepApneaNotificationWithRequest___block_invoke_311(uint64_t a1, uint64_t a2, void *a3)
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
      _os_log_impl(&dword_269C02000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error posting notification: %@", &v7, 0x16u);
    }
  }
}

+ (id)constructAnalysisDateIntervalFromDate:(id)date withCalendar:(id)calendar
{
  calendarCopy = calendar;
  v6 = MEMORY[0x277CBEAB8];
  dateCopy = date;
  v8 = objc_alloc_init(v6);
  v9 = [dateCopy hk_sleepDayStartWithCalendar:calendarCopy];
  v10 = [v9 hk_isBeforeDate:dateCopy];

  if (v10)
  {
    [v8 setDay:1];
    v11 = [calendarCopy dateByAddingComponents:v8 toDate:v9 options:0];

    v9 = v11;
  }

  [v8 setDay:*MEMORY[0x277D62648]];
  v12 = [calendarCopy dateByAddingComponents:v8 toDate:v9 options:0];
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v12];

  return v13;
}

+ (id)endDateFromMostRecentlyAnalyzedDateIntervalWithDate:(id)date numberOfAnalysisAttempts:(int64_t)attempts calendar:(id)calendar
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v8 = dateCopy;
  if (attempts)
  {
    v9 = MEMORY[0x277CBEAB8];
    calendarCopy = calendar;
    v11 = objc_alloc_init(v9);
    [v11 setDay:*MEMORY[0x277D62648] * attempts];
    v12 = [calendarCopy dateByAddingComponents:v11 toDate:v8 options:0];

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v17 = 138544130;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = v8;
      v21 = 2048;
      attemptsCopy = attempts;
      v23 = 2112;
      v24 = v12;
      v15 = v18;
      _os_log_impl(&dword_269C02000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] With date %@ and number of analysis attempts %ld, end date of most recently analyzed date interval is %@.", &v17, 0x2Au);
    }
  }

  else
  {
    v12 = dateCopy;
  }

  return v12;
}

+ (BOOL)isAnalysisNeededWithAnchorDate:(id)date referenceDate:(id)referenceDate calendar:(id)calendar
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [calendar components:16 fromDate:date toDate:referenceDate options:0];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = v8;
    v13 = 138543618;
    v14 = v8;
    v15 = 2048;
    v16 = [v5 day];
    _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Number of days since last analysis: %ld", &v13, 0x16u);
  }

  v10 = [v5 day];
  v11 = v10 >= *MEMORY[0x277D62648];

  return v11;
}

+ (int64_t)numberOfExpectedAnalysisAttemptsStartingFromAnchorDate:(id)date referenceDate:(id)referenceDate calendar:(id)calendar
{
  v24 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  referenceDateCopy = referenceDate;
  v9 = [calendar components:16 fromDate:dateCopy toDate:referenceDateCopy options:0];
  v10 = [v9 day];
  v11 = v10 / *MEMORY[0x277D62648];
  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v16 = 138544130;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = dateCopy;
    v20 = 2112;
    v21 = referenceDateCopy;
    v22 = 2048;
    v23 = v11;
    v14 = v17;
    _os_log_impl(&dword_269C02000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Number of expected analysis attempts between %@ and %@ is: %ld", &v16, 0x2Au);
  }

  return v11;
}

+ (id)samplesFilteredBySleepDay:(id)day
{
  v18 = *MEMORY[0x277D85DE8];
  dayCopy = day;
  if ([dayCopy count])
  {
    firstObject = [dayCopy firstObject];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    if ([dayCopy count])
    {
      v7 = 0;
      do
      {
        v8 = [dayCopy objectAtIndexedSubscript:v7];
        if ([objc_opt_class() _areSamplesInSameSleepDayWithFirstSample:firstObject secondSample:v8 calendar:hk_gregorianCalendar])
        {
          v9 = [objc_opt_class() _sampleWithHighestDurationWithFirstSample:firstObject secondSample:v8];
        }

        else
        {
          [v5 addObject:firstObject];
          v9 = v8;
        }

        v10 = v9;

        ++v7;
        firstObject = v10;
      }

      while (v7 < [dayCopy count]);
    }

    else
    {
      v10 = firstObject;
    }

    [v5 addObject:v10];
    if ([v5 count] <= 0x1E)
    {
      v13 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_FAULT))
      {
        v15 = v12;
        *v17 = 138543618;
        *&v17[4] = objc_opt_class();
        *&v17[12] = 1024;
        *&v17[14] = 30;
        v16 = *&v17[4];
        _os_log_fault_impl(&dword_269C02000, v15, OS_LOG_TYPE_FAULT, "[%{public}@] Unexpectedly filtered to more than %d samples, will only return that amount starting from the first sample.", v17, 0x12u);
      }

      v13 = [v5 subarrayWithRange:{0, 30, *v17, *&v17[8], v18}];
    }

    v11 = v13;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

+ (BOOL)_areSamplesInSameSleepDayWithFirstSample:(id)sample secondSample:(id)secondSample calendar:(id)calendar
{
  calendarCopy = calendar;
  secondSampleCopy = secondSample;
  endDate = [sample endDate];
  v10 = [endDate hk_morningIndexWithCalendar:calendarCopy];

  endDate2 = [secondSampleCopy endDate];

  v12 = [endDate2 hk_morningIndexWithCalendar:calendarCopy];
  return v10 == v12;
}

+ (id)_sampleWithHighestDurationWithFirstSample:(id)sample secondSample:(id)secondSample
{
  sampleCopy = sample;
  secondSampleCopy = secondSample;
  endDate = [sampleCopy endDate];
  startDate = [sampleCopy startDate];
  [endDate timeIntervalSinceDate:startDate];
  v10 = v9;

  endDate2 = [secondSampleCopy endDate];
  startDate2 = [secondSampleCopy startDate];
  [endDate2 timeIntervalSinceDate:startDate2];
  v14 = v13;

  if (v10 == v14)
  {
    quantity = [sampleCopy quantity];
    [quantity _value];
    v17 = v16;
    quantity2 = [secondSampleCopy quantity];
    [quantity2 _value];
    if (v17 <= v19)
    {
      v20 = sampleCopy;
    }

    else
    {
      v20 = secondSampleCopy;
    }

    v21 = v20;
  }

  else
  {
    if (v10 <= v14)
    {
      v22 = secondSampleCopy;
    }

    else
    {
      v22 = sampleCopy;
    }

    v21 = v22;
  }

  return v21;
}

@end