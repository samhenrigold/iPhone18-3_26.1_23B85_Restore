@interface HDMedicationsCloudSyncStateEntity
+ (BOOL)updateDataWithStateStorage:(id)storage profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (HDStateSyncEntitySchema)stateEntitySchema;
+ (__CFString)_stringFromSyncResult:(uint64_t)result;
+ (id)_timeWindow;
+ (id)_windowUpdaterConfiguration;
+ (void)syncDidFinishWithResult:(int64_t)result stateStore:(id)store profile:(id)profile;
- (HDMedicationsCloudSyncStateEntity)init;
@end

@implementation HDMedicationsCloudSyncStateEntity

- (HDMedicationsCloudSyncStateEntity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HDStateSyncEntitySchema)stateEntitySchema
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v7[0] = 0x2863B7F98;
  v7[1] = 0x2863B7A18;
  v7[2] = 0x2863B9798;
  v7[3] = @"MedicationsCloudSyncStateEntityDoseEventWindowKey";
  v7[4] = @"MedicationsCloudSyncStateEntitySampleOriginKey";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v4 = [v2 initWithArray:v3];

  v5 = [objc_alloc(MEMORY[0x277D10888]) initWithWithDomain:@"CloudSyncStateEntityDomainMedications" dataKeys:v4];

  return v5;
}

+ (BOOL)updateDataWithStateStorage:(id)storage profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  profileCopy = profile;
  transactionCopy = transaction;
  v13 = objc_alloc_init(HDCloudSyncStateUpdaterMedicationDelegate);
  v55 = 0;
  v14 = [MEMORY[0x277D10600] updateDataWithStateStore:storageCopy delegate:v13 profile:profileCopy transaction:transactionCopy error:&v55];
  v15 = v55;
  if (v14)
  {
    errorCopy = error;
    v16 = objc_alloc_init(HDCloudSyncStateUpdaterMedsListDelegate);
    v54 = 0;
    v17 = [MEMORY[0x277D10600] updateDataWithStateStore:storageCopy delegate:v16 profile:profileCopy transaction:transactionCopy error:&v54];
    v18 = v54;
    v52 = v18;
    if (v17)
    {
      v19 = objc_alloc_init(HDCloudSyncStateUpdaterMedicationScheduleDelegate);
      v53 = 0;
      v20 = [MEMORY[0x277D10600] updateDataWithStateStore:storageCopy delegate:v19 profile:profileCopy transaction:transactionCopy error:&v53];
      v21 = v53;
      v50 = v21;
      if (v20)
      {
        v48 = +[(HDMedicationsCloudSyncStateEntity *)self];
        v22 = [MEMORY[0x277D105F0] updateDataWithStateStorage:storageCopy configuration:? profile:? transaction:? error:?];
        v49 = 0;
        _HKInitializeLogging();
        v23 = HKLogMedication();
        v24 = v23;
        if (v22)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v25 = objc_opt_class();
            *buf = 138543362;
            v57 = v25;
            _os_log_impl(&dword_25181C000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] update success", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v47 = objc_opt_class();
            *buf = 138543874;
            v57 = v47;
            v58 = 2114;
            v59 = v48;
            v60 = 2114;
            v61 = v49;
            _os_log_error_impl(&dword_25181C000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ error: %{public}@", buf, 0x20u);
          }

          v37 = v49;
          v24 = v37;
          if (v37)
          {
            if (errorCopy)
            {
              v38 = v37;
              *errorCopy = v24;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }

        v35 = v48;
        goto LABEL_35;
      }

      v32 = v21;
      _HKInitializeLogging();
      v33 = HKLogMedication();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v45 = objc_opt_class();
        v46 = objc_opt_class();
        *buf = 138543874;
        v57 = v45;
        v32 = v50;
        v58 = 2114;
        v59 = v46;
        v60 = 2114;
        v61 = v50;
        _os_log_error_impl(&dword_25181C000, v33, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ error: %{public}@", buf, 0x20u);
      }

      v34 = v32;
      v35 = v34;
      if (v34)
      {
        if (errorCopy)
        {
          v36 = v34;
          v22 = 0;
          *errorCopy = v35;
LABEL_35:

          goto LABEL_36;
        }

        _HKLogDroppedError();
      }

      v22 = 0;
      goto LABEL_35;
    }

    v28 = v18;
    _HKInitializeLogging();
    v29 = HKLogMedication();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      v43 = objc_opt_class();
      *buf = 138543874;
      v57 = v42;
      v58 = 2114;
      v59 = v43;
      v60 = 2114;
      v61 = v28;
      _os_log_error_impl(&dword_25181C000, v29, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ error: %{public}@", buf, 0x20u);
    }

    v30 = v28;
    v19 = v30;
    if (v30)
    {
      if (errorCopy)
      {
        v31 = v30;
        v22 = 0;
        *errorCopy = v19;
LABEL_36:

        goto LABEL_37;
      }

      _HKLogDroppedError();
    }

    v22 = 0;
    goto LABEL_36;
  }

  _HKInitializeLogging();
  v26 = HKLogMedication();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    errorCopy2 = error;
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    *buf = 138543874;
    v57 = v40;
    error = errorCopy2;
    v58 = 2114;
    v59 = v41;
    v60 = 2114;
    v61 = v15;
    _os_log_error_impl(&dword_25181C000, v26, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ error: %{public}@", buf, 0x20u);
  }

  v16 = v15;
  if (!v16)
  {
    goto LABEL_23;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_23:
    v22 = 0;
    goto LABEL_37;
  }

  v27 = v16;
  v22 = 0;
  *error = v16;
LABEL_37:

  return v22;
}

+ (id)_windowUpdaterConfiguration
{
  objc_opt_self();
  v1 = objc_alloc(MEMORY[0x277D105F8]);
  medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
  medicationDoseEventSyncEntityClass = [MEMORY[0x277D106A8] medicationDoseEventSyncEntityClass];
  v4 = +[HDMedicationsCloudSyncStateEntity _timeWindow];
  v5 = HKLogMedication();
  v6 = [v1 initWithDomain:@"CloudSyncStateEntityDomainMedications" key:@"MedicationsCloudSyncStateEntityDoseEventWindowKey" sampleOriginKey:@"MedicationsCloudSyncStateEntitySampleOriginKey" sampleType:medicationDoseEventType syncEntityClass:medicationDoseEventSyncEntityClass timeWindow:v4 loggingCategory:v5 sampleUUIDsFunction:MEMORY[0x277D10438]];

  return v6;
}

+ (void)syncDidFinishWithResult:(int64_t)result stateStore:(id)store profile:(id)profile
{
  v18 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  _HKInitializeLogging();
  v8 = HKLogMedication();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = [(HDMedicationsCloudSyncStateEntity *)self _stringFromSyncResult:result];
    profileIdentifier = [profileCopy profileIdentifier];
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = profileIdentifier;
    _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] state sync result '%{public}@' for %{public}@", &v12, 0x20u);
  }
}

+ (__CFString)_stringFromSyncResult:(uint64_t)result
{
  objc_opt_self();
  if (a2 == 1)
  {
    v3 = @"Failure";
  }

  else if (a2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown (%ld)", a2];
  }

  else
  {
    v3 = @"Success";
  }

  return v3;
}

+ (id)_timeWindow
{
  objc_opt_self();
  date = [MEMORY[0x277CBEAA8] date];
  v2 = [date dateByAddingTimeInterval:-172800.0];
  v3 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v2 duration:172800.0];

  return v3;
}

@end