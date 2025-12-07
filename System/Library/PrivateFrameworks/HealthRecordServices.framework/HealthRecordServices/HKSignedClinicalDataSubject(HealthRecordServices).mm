@interface HKSignedClinicalDataSubject(HealthRecordServices)
- (id)dataForUniquenessChecksumCalculation;
@end

@implementation HKSignedClinicalDataSubject(HealthRecordServices)

- (id)dataForUniquenessChecksumCalculation
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v13];
  v4 = v13;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      v9 = v6;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v4;
      _os_log_error_impl(&dword_2519FE000, v9, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@: unexpectedly failed to archive to data, returning zero-length data. Error: %{public}@", buf, 0x20u);
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v7 = v5;

  return v7;
}

@end