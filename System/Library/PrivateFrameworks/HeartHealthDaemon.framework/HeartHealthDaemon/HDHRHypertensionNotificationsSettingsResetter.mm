@interface HDHRHypertensionNotificationsSettingsResetter
- (HDHRHypertensionNotificationsSettingsResetter)initWithKeyValueDomain:(id)domain featureAvailabilityProvider:(id)provider;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
@end

@implementation HDHRHypertensionNotificationsSettingsResetter

- (HDHRHypertensionNotificationsSettingsResetter)initWithKeyValueDomain:(id)domain featureAvailabilityProvider:(id)provider
{
  domainCopy = domain;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = HDHRHypertensionNotificationsSettingsResetter;
  v9 = [(HDHRHypertensionNotificationsSettingsResetter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyValueDomain, domain);
    objc_storeStrong(&v10->_featureAvailabilityProvider, provider);
    v11 = HKCreateSerialDispatchQueue();
    queue = v10->_queue;
    v10->_queue = v11;

    [(HKFeatureAvailabilityProviding *)v10->_featureAvailabilityProvider registerObserver:v10 queue:v10->_queue];
  }

  return v10;
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(queue);
  v21 = 0;
  v6 = [completionCopy earliestDateLowestOnboardingVersionCompletedWithError:&v21];

  v7 = v21;
  v8 = v7;
  if (!v6)
  {
    if (v7)
    {
      _HKInitializeLogging();
      v9 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [HDHRHypertensionNotificationsSettingsResetter featureAvailabilityProvidingDidUpdateOnboardingCompletion:];
      }
    }

    else
    {
      keyValueDomain = self->_keyValueDomain;
      v11 = MEMORY[0x277D12F08];
      v12 = *MEMORY[0x277D12F08];
      v20 = 0;
      v9 = [(HDKeyValueDomain *)keyValueDomain dateForKey:v12 error:&v20];
      v13 = v20;
      if (v13)
      {
        v8 = v13;
        _HKInitializeLogging();
        v14 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [HDHRHypertensionNotificationsSettingsResetter featureAvailabilityProvidingDidUpdateOnboardingCompletion:];
        }
      }

      else if (v9)
      {
        v15 = self->_keyValueDomain;
        v16 = *v11;
        v19 = 0;
        v17 = [(HDKeyValueDomain *)v15 setDate:0 forKey:v16 error:&v19];
        v8 = v19;
        _HKInitializeLogging();
        v18 = HKLogHeartRateCategory();
        v14 = v18;
        if (v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy2 = self;
            _os_log_impl(&dword_229486000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cleaned up hypertension notifications key value settings", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [HDHRHypertensionNotificationsSettingsResetter featureAvailabilityProvidingDidUpdateOnboardingCompletion:];
        }
      }

      else
      {
        _HKInitializeLogging();
        v14 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy2 = self;
          _os_log_impl(&dword_229486000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] (Skipping reset) Hypertension notifications key value settings are not set", buf, 0xCu);
        }

        v8 = 0;
      }
    }
  }
}

@end