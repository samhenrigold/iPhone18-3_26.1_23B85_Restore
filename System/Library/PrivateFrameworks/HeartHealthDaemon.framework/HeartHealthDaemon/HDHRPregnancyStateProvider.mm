@interface HDHRPregnancyStateProvider
- (HDHRPregnancyStateProvider)initWithPregnancySampleProvider:(id)provider;
- (id)latestWashoutEndDateWithError:(id *)error;
@end

@implementation HDHRPregnancyStateProvider

- (HDHRPregnancyStateProvider)initWithPregnancySampleProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = HDHRPregnancyStateProvider;
  v6 = [(HDHRPregnancyStateProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pregnancySampleProvider, provider);
  }

  return v7;
}

- (id)latestWashoutEndDateWithError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  pregnancySampleProvider = self->_pregnancySampleProvider;
  v24 = 0;
  v6 = [(HDHRPregnancySampleProviding *)pregnancySampleProvider getSamplesWithError:&v24];
  v7 = v24;
  if (!v7)
  {
    firstObject = [v6 firstObject];
    v10 = firstObject;
    if (firstObject)
    {
      endDate = [firstObject endDate];
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];

      if (endDate != distantFuture)
      {
        endDate2 = [v10 endDate];
        startDate = [v10 startDate];
        [endDate2 timeIntervalSinceDate:startDate];
        v16 = v15;

        if (v16 >= 12096000.0)
        {
          v22 = MEMORY[0x277CBEAA8];
          endDate3 = [v10 endDate];
          v18 = [v22 dateWithTimeInterval:endDate3 sinceDate:7257600.0];

          goto LABEL_18;
        }

        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

LABEL_17:
        v18 = 0;
LABEL_18:

        goto LABEL_19;
      }

      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    v19 = v17;
    v20 = HKSensitiveLogItem();
    *buf = 138543618;
    selfCopy = self;
    v27 = 2112;
    v28 = v20;
    _os_log_impl(&dword_229486000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] %@", buf, 0x16u);

    goto LABEL_17;
  }

  if (error)
  {
    v8 = v7;
    *error = v7;
  }

  else
  {
    _HKLogDroppedError();
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRPregnancyStateProvider latestWashoutEndDateWithError:];
  }

  v18 = 0;
LABEL_19:

  return v18;
}

@end