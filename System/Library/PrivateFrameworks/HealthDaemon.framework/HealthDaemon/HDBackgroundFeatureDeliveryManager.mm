@interface HDBackgroundFeatureDeliveryManager
- (BOOL)isEligibleForFetchByPeriodicCountryMonitor:(id)monitor;
- (HDBackgroundFeatureDeliveryManager)initWithProfile:(id)profile featureAvailabilityExtension:(id)extension deliveryCriteria:(id)criteria settingsProvider:(id)provider loggingCategory:(id)category;
- (HDBackgroundFeatureDeliveryManager)initWithProfile:(id)profile featureAvailabilityExtension:(id)extension loggingCategory:(id)category;
- (HDKeyValueDomain)_lastCountryAvailabilityVersionDomain;
- (NSString)description;
- (id)_initWithProfile:(id)profile periodicCountryMonitor:(id)monitor featureAvailabilityExtension:(id)extension deliveryCriteria:(id)criteria settingsProvider:(id)provider loggingCategory:(id)category;
- (uint64_t)_queue_isEligibleForDeliveryMonitoringWithError:(uint64_t)error;
- (void)_queue_updatePeriodicCountryMonitorEligibility;
- (void)_reportAnalyticsEventForCountryCode:(uint64_t)code countryCodeProvenance:(void *)provenance eventType:(void *)type errorCategory:(void *)category errorDetail:;
- (void)_setLastCountryAvailabilityVersion:(uint64_t)version;
- (void)featureAvailabilityExtensionDidUpdatePairedDeviceCapability:(id)capability;
- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:(id)availability;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)periodicCountryMonitor:(id)monitor didFetchISOCountryCode:(id)code countryCodeProvenance:(int64_t)provenance;
@end

@implementation HDBackgroundFeatureDeliveryManager

- (HDBackgroundFeatureDeliveryManager)initWithProfile:(id)profile featureAvailabilityExtension:(id)extension loggingCategory:(id)category
{
  categoryCopy = category;
  extensionCopy = extension;
  profileCopy = profile;
  periodicCountryMonitor = [profileCopy periodicCountryMonitor];
  v12 = [(HDBackgroundFeatureDeliveryManager *)self _initWithProfile:profileCopy periodicCountryMonitor:periodicCountryMonitor featureAvailabilityExtension:extensionCopy deliveryCriteria:0 settingsProvider:0 loggingCategory:categoryCopy];

  return v12;
}

- (HDBackgroundFeatureDeliveryManager)initWithProfile:(id)profile featureAvailabilityExtension:(id)extension deliveryCriteria:(id)criteria settingsProvider:(id)provider loggingCategory:(id)category
{
  categoryCopy = category;
  providerCopy = provider;
  criteriaCopy = criteria;
  extensionCopy = extension;
  profileCopy = profile;
  periodicCountryMonitor = [profileCopy periodicCountryMonitor];
  v18 = [(HDBackgroundFeatureDeliveryManager *)self _initWithProfile:profileCopy periodicCountryMonitor:periodicCountryMonitor featureAvailabilityExtension:extensionCopy deliveryCriteria:criteriaCopy settingsProvider:providerCopy loggingCategory:categoryCopy];

  return v18;
}

- (id)_initWithProfile:(id)profile periodicCountryMonitor:(id)monitor featureAvailabilityExtension:(id)extension deliveryCriteria:(id)criteria settingsProvider:(id)provider loggingCategory:(id)category
{
  obj = profile;
  monitorCopy = monitor;
  extensionCopy = extension;
  criteriaCopy = criteria;
  providerCopy = provider;
  categoryCopy = category;
  if (monitorCopy)
  {
    v26.receiver = self;
    v26.super_class = HDBackgroundFeatureDeliveryManager;
    v18 = [(HDBackgroundFeatureDeliveryManager *)&v26 init];
    v19 = v18;
    if (v18)
    {
      objc_storeWeak(&v18->_profile, obj);
      objc_storeStrong(&v19->_periodicCountryMonitor, monitor);
      objc_storeStrong(&v19->_featureAvailabilityExtension, extension);
      objc_storeStrong(&v19->_featureSpecificDeliveryCriteria, criteria);
      objc_storeStrong(&v19->_settingsProvider, provider);
      objc_storeStrong(&v19->_loggingCategory, category);
      v19->_state = 0;
      observerQueue = [(HDPeriodicCountryMonitor *)v19->_periodicCountryMonitor observerQueue];
      queue = v19->_queue;
      v19->_queue = observerQueue;

      [(HDPeriodicCountryMonitor *)v19->_periodicCountryMonitor registerObserver:v19];
      [(HDFeatureAvailabilityExtension *)v19->_featureAvailabilityExtension registerObserver:v19 queue:v19->_queue];
    }

    self = v19;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  featureIdentifier = [(HDFeatureAvailabilityExtension *)self->_featureAvailabilityExtension featureIdentifier];
  v6 = [v3 stringWithFormat:@"%@:%@", v4, featureIdentifier];

  return v6;
}

- (HDKeyValueDomain)_lastCountryAvailabilityVersionDomain
{
  v2 = [HDKeyValueDomain alloc];
  WeakRetained = objc_loadWeakRetained((self + 8));
  v4 = [(HDKeyValueDomain *)v2 initWithCategory:0 domainName:@"HDBackgroundFeatureDeliveryManager_LastCountryAvailabilityVersion" profile:WeakRetained];

  return v4;
}

- (void)_setLastCountryAvailabilityVersion:(uint64_t)version
{
  v14 = *MEMORY[0x277D85DE8];
  if (version)
  {
    v9 = 0;
    v3 = a2;
    _lastCountryAvailabilityVersionDomain = [(HDBackgroundFeatureDeliveryManager *)version _lastCountryAvailabilityVersionDomain];
    featureIdentifier = [*(version + 24) featureIdentifier];
    v6 = [_lastCountryAvailabilityVersionDomain setString:v3 forKey:featureIdentifier error:&v9];

    v7 = v9;
    if ((v6 & 1) == 0)
    {
      _HKInitializeLogging();
      v8 = *(version + 48);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        versionCopy = version;
        v12 = 2114;
        v13 = v7;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting last country availability version: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (uint64_t)_queue_isEligibleForDeliveryMonitoringWithError:(uint64_t)error
{
  v21 = *MEMORY[0x277D85DE8];
  if (!error)
  {
    return 0;
  }

  dispatch_assert_queue_V2(*(error + 56));
  v4 = *(error + 24);
  v16 = 0;
  v5 = [v4 onboardedCountryCodeSupportedStateWithError:&v16];
  v6 = v16;
  if (!v5)
  {
    _HKInitializeLogging();
    v11 = *(error + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      errorCopy6 = error;
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Error checking onboarded state: %{public}@", buf, 0x16u);
    }

    v12 = v6;
    if (v12)
    {
      if (a2)
      {
        v13 = v12;
        *a2 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v8 = 0;
    goto LABEL_29;
  }

  integerValue = [v5 integerValue];
  v8 = MEMORY[0x277CBEC38];
  if (integerValue <= 2)
  {
    if (integerValue != 1)
    {
      if (integerValue == 2)
      {
        _HKInitializeLogging();
        v14 = *(error + 48);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          errorCopy6 = error;
          _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] We're already onboarded in a supported state", buf, 0xCu);
        }

        v8 = MEMORY[0x277CBEC28];
      }

      goto LABEL_29;
    }

    _HKInitializeLogging();
    v9 = *(error + 48);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    errorCopy6 = error;
    v10 = "[%{public}@] We're not onboarded";
    goto LABEL_25;
  }

  switch(integerValue)
  {
    case 3:
      _HKInitializeLogging();
      v9 = *(error + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        errorCopy6 = error;
        v10 = "[%{public}@] We're onboarded in an unsupported state";
        goto LABEL_25;
      }

LABEL_26:
      v8 = MEMORY[0x277CBEC38];
      break;
    case 4:
      _HKInitializeLogging();
      v9 = *(error + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        errorCopy6 = error;
        v10 = "[%{public}@] We're onboarded in a disabled state";
        goto LABEL_25;
      }

      goto LABEL_26;
    case 5:
      _HKInitializeLogging();
      v9 = *(error + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        errorCopy6 = error;
        v10 = "[%{public}@] We're onboarded in a expired state";
LABEL_25:
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
        goto LABEL_26;
      }

      goto LABEL_26;
  }

LABEL_29:

  return v8;
}

- (void)_queue_updatePeriodicCountryMonitorEligibility
{
  v33 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    if (*(self + 64) == 2)
    {
      _HKInitializeLogging();
      v2 = *(self + 48);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy7 = self;
        _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Currently saving delivery, skipping registration update", buf, 0xCu);
      }
    }

    else
    {
      v24 = 0;
      v3 = [(HDBackgroundFeatureDeliveryManager *)self _queue_isEligibleForDeliveryMonitoringWithError:?];
      v4 = v24;
      if (v3)
      {
        bOOLValue = [v3 BOOLValue];
        _HKInitializeLogging();
        v6 = *(self + 48);
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        if (bOOLValue)
        {
          if (v7)
          {
            *buf = 138543362;
            selfCopy7 = self;
            _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Eligible for delivery monitoring, registering for new country codes", buf, 0xCu);
          }

          *(self + 64) = 1;
          dispatch_assert_queue_V2(*(self + 56));
          v8 = *(self + 24);
          v26 = 0;
          v9 = [v8 regionAvailabilityWithError:&v26];
          v10 = v26;
          version = [v9 version];

          if (!version)
          {
            _HKInitializeLogging();
            v12 = *(self + 48);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v21 = v12;
              v22 = objc_opt_class();
              *buf = 138543618;
              selfCopy7 = v22;
              v29 = 2114;
              v30 = v10;
              v23 = v22;
              _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving region availability version: %{public}@", buf, 0x16u);
            }
          }

          v25 = v10;
          _lastCountryAvailabilityVersionDomain = [(HDBackgroundFeatureDeliveryManager *)self _lastCountryAvailabilityVersionDomain];
          featureIdentifier = [*(self + 24) featureIdentifier];
          v15 = [_lastCountryAvailabilityVersionDomain stringForKey:featureIdentifier error:&v25];

          v16 = v25;
          if (v15 || !v16)
          {
            if (v15 && [version isEqualToString:v15])
            {
              _HKInitializeLogging();
              v19 = *(self + 48);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                selfCopy7 = self;
                v29 = 2114;
                v30 = version;
                _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not eligible for immediate background delivery check. Current: %{public}@", buf, 0x16u);
              }
            }

            else
            {
              _HKInitializeLogging();
              v20 = *(self + 48);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                selfCopy7 = self;
                v29 = 2114;
                v30 = v15;
                v31 = 2114;
                v32 = version;
                _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Eligible for immediate background delivery check. Last: %{public}@ Current: %{public}@", buf, 0x20u);
              }

              [*(self + 16) enqueueMaintenanceFetch];
            }
          }

          else
          {
            _HKInitializeLogging();
            v17 = *(self + 48);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              selfCopy7 = self;
              v29 = 2114;
              v30 = v16;
              _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving last country availability version: %{public}@. Skipping immediate background check", buf, 0x16u);
            }
          }
        }

        else
        {
          if (v7)
          {
            *buf = 138543362;
            selfCopy7 = self;
            _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not eligible for delivery monitoring, unregistering for new country codes", buf, 0xCu);
          }

          *(self + 64) = 4;
        }
      }

      else
      {
        _HKInitializeLogging();
        v18 = *(self + 48);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy7 = self;
          v29 = 2114;
          v30 = v4;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Error determining eligibility: %{public}@; skipping registration update", buf, 0x16u);
        }
      }
    }
  }
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v7 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received update of onboarding completion, updating registration status", &v5, 0xCu);
  }

  [(HDBackgroundFeatureDeliveryManager *)self _queue_updatePeriodicCountryMonitorEligibility];
}

- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:(id)availability
{
  v7 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received region availability update notification, updating registration status", &v5, 0xCu);
  }

  [(HDBackgroundFeatureDeliveryManager *)self _queue_updatePeriodicCountryMonitorEligibility];
}

- (void)featureAvailabilityExtensionDidUpdatePairedDeviceCapability:(id)capability
{
  v7 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received update of paired device availability, updating registration status", &v5, 0xCu);
  }

  [(HDBackgroundFeatureDeliveryManager *)self _queue_updatePeriodicCountryMonitorEligibility];
}

- (BOOL)isEligibleForFetchByPeriodicCountryMonitor:(id)monitor
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking eligibility", &v7, 0xCu);
  }

  state = self->_state;
  if (!state)
  {
    [(HDBackgroundFeatureDeliveryManager *)self _queue_updatePeriodicCountryMonitorEligibility];
    state = self->_state;
  }

  return state == 1;
}

- (void)periodicCountryMonitor:(id)monitor didFetchISOCountryCode:(id)code countryCodeProvenance:(int64_t)provenance
{
  v96 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy11 = self;
    v92 = 2114;
    v93 = codeCopy;
    _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received new country code: %{public}@", buf, 0x16u);
  }

  v9 = MEMORY[0x277CCD400];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [objc_alloc(MEMORY[0x277CCD468]) initWithCountryCode:codeCopy];
  v12 = [v9 dataSourceWithHealthDataSource:WeakRetained currentCountryCodeProvider:v11];

  v13 = MEMORY[0x277CCD3E0];
  v14 = *MEMORY[0x277CCBE00];
  v15 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCBE00]];
  v16 = [v13 onlySomeContexts:v15];

  v17 = v16;
  v18 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:self->_featureAvailabilityExtension featureAvailabilityDataSource:v12 contextConstraint:v16];
  v88 = 0;
  v19 = [v18 featureStatusWithError:&v88];
  v20 = v88;
  v80 = v19;
  if (!v19)
  {
    _HKInitializeLogging();
    v35 = self->_loggingCategory;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy11 = self;
      v92 = 2114;
      v93 = v20;
      _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "[%{public}@] Error evaluating feature status: %{public}@", buf, 0x16u);
    }

    v36 = MEMORY[0x277CCACA8];
    domain = [v20 domain];
    domain2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "code")}];
    v26 = [v36 stringWithFormat:@"%@_%@", domain, domain2];
    v37 = @"feature_status";
    selfCopy8 = self;
    v39 = codeCopy;
    provenanceCopy2 = provenance;
    v41 = v26;
    goto LABEL_19;
  }

  v78 = v18;
  featureAvailabilityExtension = self->_featureAvailabilityExtension;
  v87 = v20;
  v22 = [(HDFeatureAvailabilityExtension *)featureAvailabilityExtension regionAvailabilityWithError:&v87];
  v23 = v87;

  version = [v22 version];

  v77 = version;
  if (!version)
  {
    _HKInitializeLogging();
    v42 = self->_loggingCategory;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy11 = self;
      v92 = 2114;
      v93 = v23;
      _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "[%{public}@] Error accessing region availability: %{public}@", buf, 0x16u);
    }

    v43 = MEMORY[0x277CCACA8];
    domain2 = [v23 domain];
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "code")}];
    v44 = [v43 stringWithFormat:@"%@_%@", domain2, v26];
    [(HDBackgroundFeatureDeliveryManager *)self _reportAnalyticsEventForCountryCode:codeCopy countryCodeProvenance:provenance eventType:@"error" errorCategory:@"availability_version" errorDetail:v44];

    domain = 0;
    v20 = v23;
    goto LABEL_23;
  }

  if (([v80 includesContext:v14] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDBackgroundFeatureDeliveryManager.m" lineNumber:356 description:{@"Invalid parameter not satisfying: %@", @"[featureStatus includesContext:HKFeatureAvailabilityContextBackgroundDelivery]"}];
  }

  domain2 = [v80 objectForKeyedSubscript:v14];
  if (([domain2 areAllRequirementsSatisfied] & 1) == 0)
  {
    v74 = v17;
    _HKInitializeLogging();
    v45 = self->_loggingCategory;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v45;
      unsatisfiedRequirementIdentifiersDescription = [domain2 unsatisfiedRequirementIdentifiersDescription];
      *buf = 138543874;
      selfCopy11 = self;
      v92 = 2114;
      v93 = codeCopy;
      v94 = 2114;
      v95 = unsatisfiedRequirementIdentifiersDescription;
      _os_log_impl(&dword_228986000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not eligible for delivery in %{public}@, unsatisfied requirements: %{public}@", buf, 0x20u);
    }

    v76 = v12;
    v48 = MEMORY[0x277CBEB98];
    unsatisfiedRequirementIdentifiers = [domain2 unsatisfiedRequirementIdentifiers];
    v26 = [v48 setWithArray:unsatisfiedRequirementIdentifiers];

    v50 = MEMORY[0x277CBEB98];
    v51 = *MEMORY[0x277CCBF18];
    v89[0] = *MEMORY[0x277CCBF20];
    v89[1] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
    v53 = [v50 setWithArray:v52];
    v54 = [(__CFString *)v26 isSubsetOfSet:v53];

    if (v54)
    {
      [(HDBackgroundFeatureDeliveryManager *)self _setLastCountryAvailabilityVersion:v77];
    }

    domain2 = domain2;
    v55 = codeCopy;
    highestPriorityUnsatisfiedRequirement = [domain2 highestPriorityUnsatisfiedRequirement];
    v57 = highestPriorityUnsatisfiedRequirement;
    if (highestPriorityUnsatisfiedRequirement)
    {
      v58 = highestPriorityUnsatisfiedRequirement;
    }

    else
    {
      v58 = @"unexpected_requirements";
    }

    [domain2 unsatisfiedRequirementIdentifiers];
    v60 = v59 = codeCopy;

    v61 = [v60 componentsJoinedByString:{@", "}];
    [(HDBackgroundFeatureDeliveryManager *)self _reportAnalyticsEventForCountryCode:v55 countryCodeProvenance:provenance eventType:@"error" errorCategory:v58 errorDetail:v61];

    codeCopy = v59;
    v20 = v23;
    v17 = v74;
    v12 = v76;
    goto LABEL_35;
  }

  v86 = v23;
  v26 = [(HDBackgroundFeatureDeliveryManager *)self _queue_isEligibleForDeliveryMonitoringWithError:?];
  v20 = v86;

  v18 = v78;
  if (!v26)
  {
    _HKInitializeLogging();
    v62 = self->_loggingCategory;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy11 = self;
      v92 = 2114;
      v93 = v20;
      v94 = 2114;
      v95 = codeCopy;
      _os_log_error_impl(&dword_228986000, v62, OS_LOG_TYPE_ERROR, "[%{public}@] Error determining eligibility: %{public}@; ignoring new country code: %{public}@", buf, 0x20u);
    }

    v63 = MEMORY[0x277CCACA8];
    domain3 = [v20 domain];
    v65 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "code")}];
    v66 = [v63 stringWithFormat:@"%@_%@", domain3, v65];
    [(HDBackgroundFeatureDeliveryManager *)self _reportAnalyticsEventForCountryCode:codeCopy countryCodeProvenance:provenance eventType:@"error" errorCategory:@"eligibility" errorDetail:v66];

    v26 = 0;
    goto LABEL_35;
  }

  if (([(__CFString *)v26 BOOLValue]& 1) == 0)
  {
    _HKInitializeLogging();
    v67 = self->_loggingCategory;
    domain = v77;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy11 = self;
      v92 = 2114;
      v93 = codeCopy;
      _os_log_impl(&dword_228986000, v67, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not eligible for delivery; ignoring new country code: %{public}@", buf, 0x16u);
    }

    v37 = @"eligibility";
    v41 = @"already_onboarded";
    selfCopy8 = self;
    v39 = codeCopy;
    provenanceCopy2 = provenance;
LABEL_19:
    [(HDBackgroundFeatureDeliveryManager *)selfCopy8 _reportAnalyticsEventForCountryCode:v39 countryCodeProvenance:provenanceCopy2 eventType:@"error" errorCategory:v37 errorDetail:v41];
    goto LABEL_36;
  }

  featureSpecificDeliveryCriteria = self->_featureSpecificDeliveryCriteria;
  domain = v77;
  if (!featureSpecificDeliveryCriteria)
  {
LABEL_44:
    _HKInitializeLogging();
    v69 = self->_loggingCategory;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy11 = self;
      _os_log_impl(&dword_228986000, v69, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving delivery", buf, 0xCu);
    }

    self->_state = 2;
    featureSettingsUponBackgroundDelivery = [(HDBackgroundFeatureDeliverySettingsProviding *)self->_settingsProvider featureSettingsUponBackgroundDelivery];
    v71 = self->_featureAvailabilityExtension;
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __106__HDBackgroundFeatureDeliveryManager_periodicCountryMonitor_didFetchISOCountryCode_countryCodeProvenance___block_invoke;
    v81[3] = &unk_278620658;
    v81[4] = self;
    v82 = codeCopy;
    provenanceCopy3 = provenance;
    v83 = v77;
    v72 = v71;
    domain = v83;
    [(HDFeatureAvailabilityExtension *)v72 setCurrentOnboardingVersionCompletedForCountryCode:v82 countryCodeProvenance:provenance date:0 settings:featureSettingsUponBackgroundDelivery completion:v81];

LABEL_23:
    v18 = v78;
    goto LABEL_36;
  }

  v85 = v20;
  v29 = [(HDBackgroundFeatureDeliveryCriteriaProviding *)featureSpecificDeliveryCriteria isBackgroundDeliverySupportedWithError:&v85];
  v75 = v85;

  if (v29 != 2)
  {
    if (!v29)
    {
      _HKInitializeLogging();
      v30 = self->_loggingCategory;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy11 = self;
        v92 = 2114;
        v93 = v75;
        v94 = 2114;
        v95 = codeCopy;
        _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "[%{public}@] Error evaluating background delivery criteria: %{public}@; ignoring new country code: %{public}@", buf, 0x20u);
      }

      v31 = MEMORY[0x277CCACA8];
      v20 = v75;
      domain4 = [v75 domain];
      v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v75, "code")}];
      v34 = [v31 stringWithFormat:@"%@_%@", domain4, v33];
      [(HDBackgroundFeatureDeliveryManager *)self _reportAnalyticsEventForCountryCode:codeCopy countryCodeProvenance:provenance eventType:@"error" errorCategory:@"legacy_criteria" errorDetail:v34];

LABEL_35:
      domain = v77;
      v18 = v78;
      goto LABEL_36;
    }

    v20 = v75;
    goto LABEL_44;
  }

  _HKInitializeLogging();
  v68 = self->_loggingCategory;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy11 = self;
    v92 = 2114;
    v93 = codeCopy;
    _os_log_impl(&dword_228986000, v68, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not eligible for delivery; ignoring new country code: %{public}@", buf, 0x16u);
  }

  [(HDBackgroundFeatureDeliveryManager *)self _reportAnalyticsEventForCountryCode:codeCopy countryCodeProvenance:provenance eventType:@"error" errorCategory:@"legacy_criteria" errorDetail:@"unsupported"];
  v20 = v75;
LABEL_36:
}

void __106__HDBackgroundFeatureDeliveryManager_periodicCountryMonitor_didFetchISOCountryCode_countryCodeProvenance___block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      [(HDBackgroundFeatureDeliveryManager *)v6 _reportAnalyticsEventForCountryCode:*(a1 + 56) countryCodeProvenance:@"delivery" eventType:0 errorCategory:0 errorDetail:?];
    }
  }

  else
  {
    _HKInitializeLogging();
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Error saving delivery: %{public}@", buf, 0x16u);
      v7 = *(a1 + 32);
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = MEMORY[0x277CCACA8];
    v12 = [v5 domain];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "code")}];
    v14 = [v11 stringWithFormat:@"%@_%@", v12, v13];
    if (v7)
    {
      [(HDBackgroundFeatureDeliveryManager *)v7 _reportAnalyticsEventForCountryCode:v9 countryCodeProvenance:v10 eventType:@"error" errorCategory:@"save" errorDetail:v14];
    }
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__HDBackgroundFeatureDeliveryManager_periodicCountryMonitor_didFetchISOCountryCode_countryCodeProvenance___block_invoke_340;
  block[3] = &unk_278613920;
  block[4] = v15;
  v18 = *(a1 + 48);
  dispatch_async(v16, block);
}

void __106__HDBackgroundFeatureDeliveryManager_periodicCountryMonitor_didFetchISOCountryCode_countryCodeProvenance___block_invoke_340(uint64_t a1)
{
  *(*(a1 + 32) + 64) = 3;
  [(HDBackgroundFeatureDeliveryManager *)*(a1 + 32) _setLastCountryAvailabilityVersion:?];
  v2 = *(a1 + 32);

  [(HDBackgroundFeatureDeliveryManager *)v2 _queue_updatePeriodicCountryMonitorEligibility];
}

- (void)_reportAnalyticsEventForCountryCode:(uint64_t)code countryCodeProvenance:(void *)provenance eventType:(void *)type errorCategory:(void *)category errorDetail:
{
  v25[3] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v25[0] = provenance;
    v24[0] = @"eventType";
    v24[1] = @"featureIdentifier";
    v10 = *(self + 24);
    categoryCopy = category;
    typeCopy = type;
    provenanceCopy = provenance;
    v14 = a2;
    featureIdentifier = [v10 featureIdentifier];
    v25[1] = featureIdentifier;
    v24[2] = @"provenance";
    v16 = NSStringFromHKOnboardingCompletionCountryCodeProvenance();
    v25[2] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v18 = [v17 mutableCopy];

    [v18 setObject:typeCopy forKeyedSubscript:@"errorCategory"];
    [v18 setObject:categoryCopy forKeyedSubscript:@"errorDetail"];

    WeakRetained = objc_loadWeakRetained((self + 8));
    daemon = [WeakRetained daemon];
    oTAFeatureAvailabilityManager = [daemon OTAFeatureAvailabilityManager];
    factorPackID = [oTAFeatureAvailabilityManager factorPackID];
    [v18 setObject:factorPackID forKeyedSubscript:@"OTAFactorPackID"];

    [v18 setObject:v14 forKeyedSubscript:@"countryCode"];
    v23 = [MEMORY[0x277CCABB0] numberWithBool:HKImproveHealthAndActivityAnalyticsAllowed()];

    [v18 setObject:v23 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];
    AnalyticsSendEvent();
  }
}

@end