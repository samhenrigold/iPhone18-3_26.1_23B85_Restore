@interface HDHRCardioFitnessStoreServer
- (BOOL)_insertSampleWithLocalSource:(id)source error:(id *)error;
- (BOOL)_saveCardioFitnessNotificationWithValue:(id)value threshold:(id)threshold startDate:(id)date endDate:(id)endDate options:(unint64_t)options error:(id *)error;
- (HDHRCardioFitnessStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)remote_saveCardioFitnessAlertWithValue:(id)value threshold:(id)threshold startDate:(id)date endDate:(id)endDate options:(unint64_t)options completion:(id)completion;
@end

@implementation HDHRCardioFitnessStoreServer

- (HDHRCardioFitnessStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v10.receiver = self;
  v10.super_class = HDHRCardioFitnessStoreServer;
  v6 = [(HDStandardTaskServer *)&v10 initWithUUID:d configuration:configuration client:client delegate:delegate];
  if (v6)
  {
    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v6];

    v8 = v6;
  }

  return v6;
}

- (void)remote_saveCardioFitnessAlertWithValue:(id)value threshold:(id)threshold startDate:(id)date endDate:(id)endDate options:(unint64_t)options completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  thresholdCopy = threshold;
  completionCopy = completion;
  endDateCopy = endDate;
  dateCopy = date;
  _HKInitializeLogging();
  v19 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v27 = v20;
    [valueCopy description];
    v21 = v28 = valueCopy;
    HKSensitiveLogItem();
    v22 = v29 = self;
    v23 = [thresholdCopy description];
    *buf = 138544131;
    v32 = v20;
    v33 = 2112;
    v34 = v22;
    v35 = 2049;
    optionsCopy = options;
    v37 = 2112;
    v38 = v23;
    _os_log_impl(&dword_229486000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving fitness alert: %@, options:%{private}lu, threshold: %@", buf, 0x2Au);

    valueCopy = v28;
    self = v29;
  }

  v30 = 0;
  v24 = [(HDHRCardioFitnessStoreServer *)self _saveCardioFitnessNotificationWithValue:valueCopy threshold:thresholdCopy startDate:dateCopy endDate:endDateCopy options:options error:&v30];

  v25 = v30;
  if (!v24)
  {
    _HKInitializeLogging();
    v26 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [HDHRCardioFitnessStoreServer remote_saveCardioFitnessAlertWithValue:v25 threshold:v26 startDate:? endDate:? options:? completion:?];
    }
  }

  completionCopy[2](completionCopy, v24, v25);
}

- (BOOL)_saveCardioFitnessNotificationWithValue:(id)value threshold:(id)threshold startDate:(id)date endDate:(id)endDate options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v30[3] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCD0B0];
  v15 = MEMORY[0x277CCD0C0];
  endDateCopy = endDate;
  dateCopy = date;
  thresholdCopy = threshold;
  valueCopy = value;
  lowCardioFitnessEventType = [v15 lowCardioFitnessEventType];
  v21 = *MEMORY[0x277CCC4D8];
  v29[0] = *MEMORY[0x277CCC540];
  v29[1] = v21;
  v30[0] = valueCopy;
  v30[1] = thresholdCopy;
  v29[2] = *MEMORY[0x277CCE0D8];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:optionsCopy & 1];
  v30[2] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v24 = [v14 categorySampleWithType:lowCardioFitnessEventType value:1 startDate:dateCopy endDate:endDateCopy metadata:v23];

  LOBYTE(error) = [(HDHRCardioFitnessStoreServer *)self _insertSampleWithLocalSource:v24 error:error];
  v25 = [HDHRHealthKitSyncManager alloc];
  profile = [(HDStandardTaskServer *)self profile];
  v27 = [(HDHRHealthKitSyncManager *)v25 initWithProfile:profile];

  [(HDHRHealthKitSyncManager *)v27 triggerImmediateSyncWithReason:@"New Cardio Fitness Notification sample added" loggingCategory:*MEMORY[0x277CCC2D0]];
  return error;
}

- (BOOL)_insertSampleWithLocalSource:(id)source error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  profile = [(HDStandardTaskServer *)self profile];
  sourceManager = [profile sourceManager];
  v9 = [sourceManager localDeviceSourceWithError:error];

  if (v9)
  {
    deviceManager = [profile deviceManager];
    v11 = [deviceManager currentDeviceEntityWithError:error];

    if (v11)
    {
      dataProvenanceManager = [profile dataProvenanceManager];
      v13 = [dataProvenanceManager localDataProvenanceForSourceEntity:v9 version:0 deviceEntity:v11];

      dataManager = [profile dataManager];
      v28[0] = sourceCopy;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      v16 = [dataManager insertDataObjects:v15 withProvenance:v13 creationDate:0 skipInsertionFilter:error error:CFAbsoluteTimeGetCurrent()];

      if (v16)
      {
        _HKInitializeLogging();
        v17 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          v19 = v18;
          v20 = HKSensitiveLogItem();
          v22 = 138543874;
          v23 = v18;
          v24 = 2112;
          v25 = v20;
          v26 = 2112;
          v27 = v9;
          _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserted sample: %@, source: %@", &v22, 0x20u);
        }
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (void)remote_saveCardioFitnessAlertWithValue:(NSObject *)a3 threshold:startDate:endDate:options:completion:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = v5;
  v7 = [a2 description];
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Didn't save alert due to error: %{public}@", &v8, 0x16u);
}

@end