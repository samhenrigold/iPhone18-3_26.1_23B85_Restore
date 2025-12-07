@interface HDHRHypertensionMeasurementAnalyzer
- (BOOL)performAnalysisWithStartDate:(id)date endDate:(id)endDate databaseTransactionContext:(id)context error:(id *)error;
- (HDHRHypertensionMeasurementAnalyzer)init;
- (HDHRHypertensionMeasurementAnalyzer)initWithProfile:(id)profile;
- (HDHRHypertensionMeasurementAnalyzer)initWithProfile:(id)profile analysisWindowInterval:(double)interval keyValueDomain:(id)domain analyticsEventSubmissionManager:(id)manager;
- (id)_measurementsWithDateInterval:(void *)interval error:;
- (uint64_t)_analyzeMeasurementsWithDateInterval:(void *)interval error:;
- (uint64_t)_saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval:(void *)interval databaseTransactionContext:(uint64_t)context error:;
- (uint64_t)_saveHypertensionEventSampleWithDateInterval:(uint64_t)interval error:;
@end

@implementation HDHRHypertensionMeasurementAnalyzer

- (HDHRHypertensionMeasurementAnalyzer)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHRHypertensionMeasurementAnalyzer)initWithProfile:(id)profile
{
  v4 = MEMORY[0x277CCCFE8];
  profileCopy = profile;
  v6 = [v4 alloc];
  v7 = [v6 initWithLoggingCategory:*MEMORY[0x277CCC2D0] healthDataSource:profileCopy];
  v8 = HDHRHypertensionNotificationsAnalysisWindowIntervalRespectingOverride();
  v9 = [MEMORY[0x277D10718] hdhr_hypertensionNotificationsSyncedDomainForProfile:profileCopy];
  v10 = [(HDHRHypertensionMeasurementAnalyzer *)self initWithProfile:profileCopy analysisWindowInterval:v9 keyValueDomain:v7 analyticsEventSubmissionManager:v8];

  return v10;
}

- (HDHRHypertensionMeasurementAnalyzer)initWithProfile:(id)profile analysisWindowInterval:(double)interval keyValueDomain:(id)domain analyticsEventSubmissionManager:(id)manager
{
  profileCopy = profile;
  domainCopy = domain;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = HDHRHypertensionMeasurementAnalyzer;
  v13 = [(HDHRHypertensionMeasurementAnalyzer *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_profile, profileCopy);
    v14->_analysisWindowInterval = interval;
    v15 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBB0]];
    measurementsType = v14->_measurementsType;
    v14->_measurementsType = v15;

    objc_storeStrong(&v14->_syncedKeyValueDomain, domain);
    objc_storeStrong(&v14->_analyticsEventSubmissionManager, manager);
  }

  return v14;
}

- (BOOL)performAnalysisWithStartDate:(id)date endDate:(id)endDate databaseTransactionContext:(id)context error:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  contextCopy = context;
  v60 = endDateCopy;
  [endDateCopy timeIntervalSinceDate:dateCopy];
  v12 = v11;
  analysisWindowInterval = self->_analysisWindowInterval;
  _HKInitializeLogging();
  v14 = HKLogHeartRateCategory();
  v62 = (v12 / analysisWindowInterval);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v70 = 2048;
    v71 = (v12 / analysisWindowInterval);
    _os_log_impl(&dword_229486000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyzing %ld analysis window(s)", buf, 0x16u);
  }

  if (v62 <= 0)
  {
    v42 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.private.health.HypertensionMeasurementsAnalyzerErrorDomain" code:100 userInfo:0];
    if (v42)
    {
      v43 = v42;
      if (error)
      {
        v44 = v42;
        v15 = 0;
        v42 = v43;
        *error = v43;
      }

      else
      {
        _HKLogDroppedError();
        v15 = 0;
        v42 = v43;
      }

      v64 = v43;
    }

    else
    {
      v15 = 0;
      v64 = 0;
    }

    goto LABEL_47;
  }

  v64 = [dateCopy dateByAddingTimeInterval:self->_analysisWindowInterval];
  v63 = HDHRHypertensionNotificationsAnalysisResultForceHypertensionOverride();
  v15 = 0;
  v16 = 1;
  v17 = (v12 / analysisWindowInterval);
  while (1)
  {
    if (v16 != 1)
    {
      v18 = [dateCopy dateByAddingTimeInterval:self->_analysisWindowInterval];

      v19 = [v18 dateByAddingTimeInterval:self->_analysisWindowInterval];

      v64 = v19;
      dateCopy = v18;
    }

    _HKInitializeLogging();
    v20 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HRLogSensitiveClassName(self, v21);
      *buf = 138543874;
      selfCopy = v22;
      v70 = 2112;
      v71 = dateCopy;
      v72 = 2112;
      v73 = v64;
      _os_log_impl(&dword_229486000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyzing hypertension measurements with startDate: %@, endDate: %@", buf, 0x20u);
    }

    v23 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:v64];
    if (v63)
    {
      bOOLValue = [v63 BOOLValue];
      v25 = MEMORY[0x277CBEC10];
      if (bOOLValue)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    v67 = 0;
    v28 = [(HDHRHypertensionMeasurementAnalyzer *)self _analyzeMeasurementsWithDateInterval:v23 error:&v67];
    v30 = v29;
    v31 = v67;
    v32 = v28;
    v25 = v32;
    if (v31)
    {
      break;
    }

    if (v30)
    {
LABEL_11:
      v66 = 0;
      v26 = [(HDHRHypertensionMeasurementAnalyzer *)self _saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval:v23 databaseTransactionContext:contextCopy error:&v66];
      v27 = v66;
      if ((v26 & 1) == 0)
      {
        _HKInitializeLogging();
        v45 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [HDHRHypertensionMeasurementAnalyzer performAnalysisWithStartDate:v27 endDate:v45 databaseTransactionContext:? error:?];
        }

        v47 = v27;
        v48 = v47;
        if (!v47)
        {
          goto LABEL_43;
        }

        if (!error)
        {
          goto LABEL_42;
        }

LABEL_33:
        v50 = v47;
        v51 = 0;
        *error = v48;
        goto LABEL_44;
      }

      goto LABEL_18;
    }

LABEL_15:
    _HKInitializeLogging();
    v33 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v35 = HRLogSensitiveClassName(self, v34);
      v36 = HKSensitiveLogItem();
      *buf = 138543618;
      selfCopy = v35;
      v70 = 2114;
      v71 = v36;
      _os_log_impl(&dword_229486000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@", buf, 0x16u);
    }

    endDate = [v23 endDate];
    v65 = 0;
    v38 = [(HDKeyValueDomain *)self->_syncedKeyValueDomain setDate:endDate forKey:*MEMORY[0x277D12F08] error:&v65];
    v27 = v65;

    if ((v38 & 1) == 0)
    {
      _HKInitializeLogging();
      v49 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [HDHRHypertensionMeasurementAnalyzer performAnalysisWithStartDate:v27 endDate:? databaseTransactionContext:? error:?];
      }

      v47 = v27;
      v48 = v47;
      if (v47)
      {
        if (error)
        {
          goto LABEL_33;
        }

LABEL_42:
        _HKLogDroppedError();
      }

LABEL_43:
      v51 = 0;
LABEL_44:
      v56 = v48;
      goto LABEL_45;
    }

LABEL_18:

    v39 = [HDHRHypertensionNotificationAnalysisEvent alloc];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v41 = [(HDHRHypertensionNotificationAnalysisEvent *)v39 initWithProfile:WeakRetained dateInterval:v23 additionalPayload:v25];

    [(HKAnalyticsEventSubmissionManager *)self->_analyticsEventSubmissionManager submitEvent:v41 error:0];
    v15 = v16++ >= v62;
    if (!--v17)
    {
      goto LABEL_46;
    }
  }

  _HKInitializeLogging();
  v52 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    v58 = HRLogSensitiveClassName(self, v53);
    *buf = 138544130;
    selfCopy = v58;
    v70 = 2112;
    v71 = dateCopy;
    v72 = 2112;
    v73 = v64;
    v74 = 2112;
    v75 = v31;
    _os_log_error_impl(&dword_229486000, v52, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to analyze hypertension measurements with startDate: %@, endDate: %@, error %@", buf, 0x2Au);
  }

  v54 = v31;
  v48 = v54;
  if (error)
  {
    v55 = v54;
    *error = v48;
  }

  else
  {
    _HKLogDroppedError();
  }

  v56 = v25;
  v51 = v48;
LABEL_45:

LABEL_46:
  v42 = v63;
LABEL_47:

  return v15;
}

uint64_t __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [WeakRetained database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke_2;
  v10[3] = &unk_278660CD8;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v7;
  v8 = [v4 performWriteTransactionWithHealthDatabase:v6 error:a2 block:v10];

  return v8;
}

uint64_t __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = (a1 + 32);
  v23 = 0;
  v9 = [(HDHRHypertensionMeasurementAnalyzer *)v6 _saveHypertensionEventSampleWithDateInterval:v7 error:&v23];
  v10 = v23;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke_2_cold_1(v8, v11);
    }

    v16 = v11;
    if (!v16)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
LABEL_15:
      _HKLogDroppedError();
      goto LABEL_16;
    }

LABEL_10:
    v19 = v16;
    *a3 = v16;
LABEL_16:

    v17 = 0;
    goto LABEL_17;
  }

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) endDate];
  v22 = 0;
  if (v12)
  {
    v14 = [*(v12 + 16) setDate:v13 forKey:*MEMORY[0x277D12F08] error:&v22];
    v15 = v22;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = v15;

  if ((v14 & 1) == 0)
  {
    _HKInitializeLogging();
    v20 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke_2_cold_2(v8, v16);
    }

    v16 = v16;
    if (!v16)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v17 = 1;
LABEL_17:

  return v17;
}

uint64_t __75__HDHRHypertensionMeasurementAnalyzer__measurementsWithDateInterval_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  return 1;
}

id __75__HDHRHypertensionMeasurementAnalyzer__measurementsWithDateInterval_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D0FC78];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 endDate];
  v6 = [v3 quantity];

  [v6 _value];
  v7 = [v4 initWithDate:v5 value:?];

  return v7;
}

- (uint64_t)_analyzeMeasurementsWithDateInterval:(void *)interval error:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v14 = 0;
    v6 = [(HDHRHypertensionMeasurementAnalyzer *)self _measurementsWithDateInterval:v5 error:&v14];
    v7 = v14;
    if (v6)
    {
      self = [MEMORY[0x277D0FC70] analyzeMeasurements:v6 forDateInterval:v5];
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = HRLogSensitiveClassName(self, v9);
        *buf = 138543618;
        v16 = v13;
        v17 = 2112;
        v18 = v7;
        _os_log_error_impl(&dword_229486000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to load hypertension measurements with error %@", buf, 0x16u);
      }

      v10 = v7;
      if (v10)
      {
        if (interval)
        {
          v11 = v10;
          *interval = v10;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      self = MEMORY[0x277CBEC10];
    }
  }

  return self;
}

- (uint64_t)_saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval:(void *)interval databaseTransactionContext:(uint64_t)context error:
{
  v7 = a2;
  if (self)
  {
    copyForWritingProtectedData = [interval copyForWritingProtectedData];
    WeakRetained = objc_loadWeakRetained((self + 8));
    database = [WeakRetained database];
    OUTLINED_FUNCTION_2_3();
    v13[1] = 3221225472;
    v13[2] = __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke;
    v13[3] = &unk_278660F68;
    v13[4] = self;
    v14 = v7;
    v11 = [database performWithTransactionContext:copyForWritingProtectedData error:context block:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)_saveHypertensionEventSampleWithDateInterval:(uint64_t)interval error:
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v5 = MEMORY[0x277CCD0C0];
  v6 = *MEMORY[0x277CCB9C8];
  v7 = a2;
  v8 = [v5 categoryTypeForIdentifier:v6];
  v9 = MEMORY[0x277CCD0B0];
  startDate = [v7 startDate];
  endDate = [v7 endDate];

  v12 = [v9 categorySampleWithType:v8 value:0 startDate:startDate endDate:endDate];

  WeakRetained = objc_loadWeakRetained((self + 8));
  dataManager = [WeakRetained dataManager];
  v18[0] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v16 = [dataManager insertDataObjects:v15 error:interval];

  return v16;
}

- (id)_measurementsWithDateInterval:(void *)interval error:
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v5 = HDSampleEntityPredicateForDateInterval();
    v6 = MEMORY[0x277D10848];
    v7 = *(self + 24);
    WeakRetained = objc_loadWeakRetained((self + 8));
    v9 = [v6 entityEnumeratorWithType:v7 profile:WeakRetained];

    [v9 setPredicate:v5];
    [v9 setLimitCount:*MEMORY[0x277D10C08]];
    v10 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D104A8] entityClass:objc_opt_class() ascending:1];
    v23[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [v9 setOrderingTerms:v11];

    [MEMORY[0x277CBEB18] array];
    objc_claimAutoreleasedReturnValue();
    v22 = 0;
    OUTLINED_FUNCTION_2_3();
    v20[1] = 3221225472;
    v20[2] = __75__HDHRHypertensionMeasurementAnalyzer__measurementsWithDateInterval_error___block_invoke;
    v20[3] = &unk_278660760;
    v13 = v12;
    v21 = v13;
    [v9 enumerateWithError:&v22 handler:v20];
    v14 = v22;
    v15 = v14;
    if (v13)
    {
      v16 = [v13 hk_map:&__block_literal_global_17];
    }

    else
    {
      v17 = v14;
      if (v17)
      {
        if (interval)
        {
          v18 = v17;
          *interval = v17;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)performAnalysisWithStartDate:(uint64_t)a1 endDate:(uint64_t)a2 databaseTransactionContext:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = HRLogSensitiveClassName(a1, a2);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)performAnalysisWithStartDate:(NSObject *)a3 endDate:databaseTransactionContext:error:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = HRLogSensitiveClassName(a1, a2);
  v6 = HKSensitiveLogItem();
  v7 = 138543874;
  v8 = v5;
  OUTLINED_FUNCTION_2_6();
  v9 = a2;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ with error %@", &v7, 0x20u);
}

void __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2)
{
  v2 = HRLogSensitiveClassName(*a1, a2);
  v3 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke_2_cold_2(uint64_t *a1, uint64_t a2)
{
  v2 = HRLogSensitiveClassName(*a1, a2);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end