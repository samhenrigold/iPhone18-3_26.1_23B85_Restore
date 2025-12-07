@interface HKMedicationAnalyticsGenericFieldsProvider
- (HKMedicationAnalyticsGenericFieldsProvider)initWithDataSource:(id)source;
- (id)activePairedWatchProductType;
- (id)biologicalSex;
- (id)bucketedUserAgeForCurrentDate:(id)date;
- (id)userAgeForCurrentDate:(id)date;
- (void)biologicalSex;
@end

@implementation HKMedicationAnalyticsGenericFieldsProvider

- (HKMedicationAnalyticsGenericFieldsProvider)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = HKMedicationAnalyticsGenericFieldsProvider;
  v6 = [(HKMedicationAnalyticsGenericFieldsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (id)activePairedWatchProductType
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  v4 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BBC0]];

  return v4;
}

- (id)biologicalSex
{
  dataSource = self->_dataSource;
  v10 = 0;
  v4 = [(HKAnalyticsHealthDataSource *)dataSource biologicalSexWithError:&v10];
  v5 = v10;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogMedication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HKMedicationAnalyticsGenericFieldsProvider *)self biologicalSex];
    }

    goto LABEL_7;
  }

  biologicalSex = [v4 biologicalSex];
  if (biologicalSex > 3)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = off_2796CABD8[biologicalSex];
LABEL_8:

  return v8;
}

- (id)userAgeForCurrentDate:(id)date
{
  dataSource = self->_dataSource;
  v10 = 0;
  v5 = [(HKAnalyticsHealthDataSource *)dataSource ageWithCurrentDate:date error:&v10];
  v6 = v10;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogMedication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HKMedicationAnalyticsGenericFieldsProvider userAgeForCurrentDate:?];
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)bucketedUserAgeForCurrentDate:(id)date
{
  v3 = [(HKMedicationAnalyticsGenericFieldsProvider *)self userAgeForCurrentDate:date];
  if (v3)
  {
    v4 = v3;
    v5 = HKMedicationsBucketedDecadeForAge(v3);
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_2863B6EE0;
  }

  v7 = v6;

  return v6;
}

- (void)biologicalSex
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  OUTLINED_FUNCTION_1_1(&dword_2517E7000, v3, v4, "[%{public}@] Unable access biological sex due to error: %{public}@", v5, v6, v7, v8);
}

- (void)userAgeForCurrentDate:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  OUTLINED_FUNCTION_1_1(&dword_2517E7000, v3, v4, "[%{public}@] Unable access age due to error: %{public}@", v5, v6, v7, v8);
}

@end