@interface HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent
- (HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent)initWithSampleType:(id)type context:(int64_t)context;
- (id)determineFeatureVersionWithHealthDataSource:(id)source;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent

- (HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent)initWithSampleType:(id)type context:(int64_t)context
{
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent;
  v8 = [(HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sampleType, type);
    v9->_context = context;
  }

  return v9;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  healthDataSource = [sourceCopy healthDataSource];
  v35 = 0;
  v8 = [healthDataSource biologicalSexWithError:&v35];
  v9 = v35;

  v10 = MEMORY[0x1E696B508];
  if (v9)
  {
    v11 = _HKInitializeLogging();
    v12 = HKLogAFibBurden(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v13 = *v10;
    v14 = *MEMORY[0x1E696B4D8];
    v15 = v6;
    goto LABEL_7;
  }

  if (v8)
  {
    v9 = HKAnalyticsPropertyValueForBiologicalSex();
    v14 = *MEMORY[0x1E696B4D8];
    v15 = v6;
    v13 = v9;
LABEL_7:
    [v15 setObject:v13 forKeyedSubscript:v14];
    goto LABEL_8;
  }

  v33 = _HKInitializeLogging();
  v9 = HKLogAFibBurden(v33);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:v9 error:?];
  }

LABEL_8:

  healthDataSource2 = [sourceCopy healthDataSource];
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];
  v34 = 0;
  v19 = [healthDataSource2 ageWithCurrentDate:currentDate error:&v34];
  v20 = v34;

  if (v20)
  {
    v21 = _HKInitializeLogging();
    v22 = HKLogAFibBurden(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v23 = *MEMORY[0x1E696B4B8];
  }

  else
  {
    v24 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E696C808]];
    v23 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

    v20 = v23;
    if (!v19)
    {
      goto LABEL_14;
    }
  }

  [v6 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696B4D0]];
  v23 = v20;
LABEL_14:

  healthDataSource3 = [sourceCopy healthDataSource];
  v26 = [(HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent *)self determineFeatureVersionWithHealthDataSource:healthDataSource3];

  if (v26)
  {
    [v6 setObject:v26 forKeyedSubscript:@"featureVersion"];
  }

  identifier = [(HKSampleType *)self->_sampleType identifier];
  [v6 setObject:identifier forKeyedSubscript:@"lifeFactor"];

  v28 = *v10;
  v29 = v28;
  context = self->_context;
  if (context)
  {
    if (context != 1)
    {
      goto LABEL_21;
    }

    v31 = @"lifeFactorPlatter";
  }

  else
  {
    v31 = @"interactiveChart";
  }

  v29 = v31;
LABEL_21:
  [v6 setObject:v29 forKeyedSubscript:@"context"];

  return v6;
}

- (id)determineFeatureVersionWithHealthDataSource:(id)source
{
  v4 = [source featureAvailabilityProviderForIdentifier:*MEMORY[0x1E696B878]];
  v5 = v4;
  if (v4)
  {
    v18 = 0;
    v6 = [v4 featureOnboardingRecordWithError:&v18];
    v7 = v18;
    if (v6)
    {
      onboardingCompletion = [v6 onboardingCompletion];

      if (onboardingCompletion)
      {
        v9 = objc_alloc_init(MEMORY[0x1E696ADA0]);
        [v9 setNumberStyle:1];
        [v9 setMinimumFractionDigits:1];
        v10 = MEMORY[0x1E696AD98];
        onboardingCompletion2 = [v6 onboardingCompletion];
        v12 = [v10 numberWithInteger:{objc_msgSend(onboardingCompletion2, "version")}];
        onboardingCompletion = [v9 stringFromNumber:v12];
      }
    }

    else
    {
      v15 = _HKInitializeLogging();
      v16 = HKLogAFibBurden(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent determineFeatureVersionWithHealthDataSource:];
      }

      onboardingCompletion = *MEMORY[0x1E696B508];
    }
  }

  else
  {
    v13 = _HKInitializeLogging();
    v14 = HKLogAFibBurden(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent *)self determineFeatureVersionWithHealthDataSource:v14];
    }

    onboardingCompletion = *MEMORY[0x1E696B508];
  }

  return onboardingCompletion;
}

- (void)makeIHAGatedEventPayloadWithDataSource:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1C3942000, a2, OS_LOG_TYPE_FAULT, "[%{public}@] No error when fetching biological sex but also didn't get object", &v2, 0xCu);
}

- (void)determineFeatureVersionWithHealthDataSource:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1C3942000, a2, OS_LOG_TYPE_FAULT, "[%{public}@] No feature availability provider found", &v2, 0xCu);
}

@end