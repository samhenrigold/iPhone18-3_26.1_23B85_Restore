@interface HDHRIrregularRhythmNotificationsV2UpgradeManager
- (HDHRIrregularRhythmNotificationsV2UpgradeManager)initWithProfile:(id)profile v1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager hypertensionNotificationsFeatureAvailabilityManager:(id)featureAvailabilityManager analyticsSubmissionManager:(id)submissionManager;
- (HDHRIrregularRhythmNotificationsV2UpgradeManager)initWithProfile:(id)profile v1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager hypertensionNotificationsFeatureAvailabilityManager:(id)featureAvailabilityManager analyticsSubmissionManager:(id)submissionManager protectedDataOperation:(id)operation;
- (void)_reportAnalyticsEventForCountryCode:(id)code eventType:(id)type errorCategory:(id)category errorDetail:(id)detail;
- (void)_startObservingOnboardingChanges;
- (void)_stopObservingOnboardingChanges;
- (void)doWorkWithCompletion:(id)completion;
- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:(id)availability;
- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)available;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)pairedDeviceCapabilitiesDidUpdate:(id)update;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
@end

@implementation HDHRIrregularRhythmNotificationsV2UpgradeManager

- (void)_startObservingOnboardingChanges
{
  [(HDFeatureAvailabilityExtension *)self->_v1FeatureAvailabilityManager registerObserver:self queue:self->_queue];
  [(HDFeatureAvailabilityExtension *)self->_v2FeatureAvailabilityManager registerObserver:self queue:self->_queue];
  hypertensionNotificationsAvailabilityManager = self->_hypertensionNotificationsAvailabilityManager;
  queue = self->_queue;

  [(HDFeatureAvailabilityExtension *)hypertensionNotificationsAvailabilityManager registerObserver:self queue:queue];
}

- (HDHRIrregularRhythmNotificationsV2UpgradeManager)initWithProfile:(id)profile v1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager hypertensionNotificationsFeatureAvailabilityManager:(id)featureAvailabilityManager analyticsSubmissionManager:(id)submissionManager
{
  v12 = MEMORY[0x277D10800];
  submissionManagerCopy = submissionManager;
  featureAvailabilityManagerCopy = featureAvailabilityManager;
  availabilityManagerCopy = availabilityManager;
  managerCopy = manager;
  profileCopy = profile;
  v18 = [v12 alloc];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [v18 initWithProfile:profileCopy debugIdentifier:v20 delegate:0];

  v22 = [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self initWithProfile:profileCopy v1FeatureAvailabilityManager:managerCopy v2FeatureAvailabilityManager:availabilityManagerCopy hypertensionNotificationsFeatureAvailabilityManager:featureAvailabilityManagerCopy analyticsSubmissionManager:submissionManagerCopy protectedDataOperation:v21];
  return v22;
}

- (HDHRIrregularRhythmNotificationsV2UpgradeManager)initWithProfile:(id)profile v1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager hypertensionNotificationsFeatureAvailabilityManager:(id)featureAvailabilityManager analyticsSubmissionManager:(id)submissionManager protectedDataOperation:(id)operation
{
  profileCopy = profile;
  managerCopy = manager;
  availabilityManagerCopy = availabilityManager;
  featureAvailabilityManagerCopy = featureAvailabilityManager;
  submissionManagerCopy = submissionManager;
  operationCopy = operation;
  v25.receiver = self;
  v25.super_class = HDHRIrregularRhythmNotificationsV2UpgradeManager;
  v18 = [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_profile, profileCopy);
    objc_storeStrong(&v19->_v1FeatureAvailabilityManager, manager);
    objc_storeStrong(&v19->_v2FeatureAvailabilityManager, availabilityManager);
    objc_storeStrong(&v19->_hypertensionNotificationsAvailabilityManager, featureAvailabilityManager);
    v20 = HKCreateSerialDispatchQueue();
    queue = v19->_queue;
    v19->_queue = v20;

    objc_storeStrong(&v19->_analyticsSubmissionManager, submissionManager);
    objc_storeStrong(&v19->_protectedDataOperation, operation);
    [(HDProtectedDataOperation *)v19->_protectedDataOperation setDelegate:v19, availabilityManagerCopy, managerCopy];
    [(HDProtectedDataOperation *)v19->_protectedDataOperation requestWorkWithPriority:2 error:0];
  }

  return v19;
}

- (void)_stopObservingOnboardingChanges
{
  [(HDFeatureAvailabilityExtension *)self->_v1FeatureAvailabilityManager unregisterObserver:self];
  [(HDFeatureAvailabilityExtension *)self->_v2FeatureAvailabilityManager unregisterObserver:self];
  hypertensionNotificationsAvailabilityManager = self->_hypertensionNotificationsAvailabilityManager;

  [(HDFeatureAvailabilityExtension *)hypertensionNotificationsAvailabilityManager unregisterObserver:self];
}

- (void)doWorkWithCompletion:(id)completion
{
  v77 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v72 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager featureOnboardingRecordWithError:&v72];
  v7 = v72;
  v8 = v7;
  if (v6)
  {
    if ([v6 isOnboardingPresent])
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = objc_opt_class();
        *buf = 138543362;
        v74 = v11;
        v12 = v11;
        _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Already onboarded to IRN2", buf, 0xCu);
      }

      [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"v2_eligibility" errorDetail:@"already_onboarded"];
      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
      v71 = v8;
      v18 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager featureOnboardingRecordWithError:&v71];
      v19 = v71;

      if (v18)
      {
        if ([v18 isOnboardingPresent])
        {
          onboardingCompletion = [v18 onboardingCompletion];
          countryCode = [onboardingCompletion countryCode];

          v22 = self->_v2FeatureAvailabilityManager;
          v70 = v19;
          v23 = [(HDFeatureAvailabilityExtension *)v22 onboardingEligibilityForCountryCode:countryCode error:&v70];
          v24 = v70;

          featureSettings = [v18 featureSettings];
          v62 = v23;
          if ([v23 isEligible])
          {
            _HKInitializeLogging();
            v26 = *MEMORY[0x277CCC2D8];
            if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
            {
              v27 = v26;
              v28 = objc_opt_class();
              *buf = 138543618;
              v74 = v28;
              v75 = 2114;
              v76 = countryCode;
              v29 = v28;
              _os_log_impl(&dword_229486000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning IRN2 upgrade using IRN1 country: %{public}@", buf, 0x16u);
            }

            v30 = self->_v2FeatureAvailabilityManager;
            v67[0] = MEMORY[0x277D85DD0];
            v67[1] = 3221225472;
            v67[2] = __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke;
            v67[3] = &unk_2786600F8;
            v67[4] = self;
            countryCode = countryCode;
            v68 = countryCode;
            v69 = completionCopy;
            [(HDFeatureAvailabilityExtension *)v30 setCurrentOnboardingVersionCompletedForCountryCode:countryCode countryCodeProvenance:3 date:0 settings:featureSettings completion:v67];

            v19 = v24;
          }

          else
          {
            hypertensionNotificationsAvailabilityManager = self->_hypertensionNotificationsAvailabilityManager;
            v66 = v24;
            v40 = [(HDFeatureAvailabilityExtension *)hypertensionNotificationsAvailabilityManager featureOnboardingRecordWithError:&v66];
            v19 = v66;

            v61 = v40;
            if (v40)
            {
              if ([v40 isOnboardingPresent])
              {
                v60 = featureSettings;
                onboardingCompletion2 = [v40 onboardingCompletion];
                countryCode2 = [onboardingCompletion2 countryCode];

                if (countryCode2)
                {
                  _HKInitializeLogging();
                  v43 = *MEMORY[0x277CCC2D8];
                  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
                  {
                    v44 = v43;
                    v45 = objc_opt_class();
                    *buf = 138543618;
                    v74 = v45;
                    v75 = 2114;
                    v76 = countryCode2;
                    v46 = v45;
                    _os_log_impl(&dword_229486000, v44, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning IRN2 upgrade using Hypertension Notifications onboarding country: %{public}@", buf, 0x16u);
                  }

                  v47 = self->_v2FeatureAvailabilityManager;
                  v63[0] = MEMORY[0x277D85DD0];
                  v63[1] = 3221225472;
                  v63[2] = __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke_327;
                  v63[3] = &unk_2786600F8;
                  v63[4] = self;
                  countryCode = countryCode2;
                  v64 = countryCode;
                  v65 = completionCopy;
                  v48 = v47;
                  featureSettings = v60;
                  [(HDFeatureAvailabilityExtension *)v48 setCurrentOnboardingVersionCompletedForCountryCode:countryCode countryCodeProvenance:3 date:0 settings:v60 completion:v63];
                }

                else
                {
                  [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"hypertensionNotifications_eligibility" errorDetail:@"location_unavailable"];
                  v59 = [MEMORY[0x277CCA9B8] hk_error:109 description:@"Cannot upgrade V1 user to V2 as no associated feature country code exists"];
                  (completionCopy)[2](completionCopy, 1, v59);

                  countryCode = 0;
                  featureSettings = v60;
                }
              }

              else
              {
                _HKInitializeLogging();
                v54 = *MEMORY[0x277CCC2D8];
                if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
                {
                  v55 = featureSettings;
                  v56 = v54;
                  v57 = objc_opt_class();
                  *buf = 138543362;
                  v74 = v57;
                  v58 = v57;
                  _os_log_impl(&dword_229486000, v56, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cannot upgrade to IRN2 as not onboarded to Hypertension Notifications", buf, 0xCu);

                  featureSettings = v55;
                }

                [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"hypertensionNotifications_eligibility" errorDetail:@"not_onboarded"];
                completionCopy[2](completionCopy, 0, 0);
              }
            }

            else
            {
              v49 = MEMORY[0x277CCACA8];
              [v19 domain];
              v51 = v50 = featureSettings;
              v52 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "code")}];
              v53 = [v49 stringWithFormat:@"%@_%@", v51, v52];
              [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"hypertensionNotifications_eligibility" errorDetail:v53];

              featureSettings = v50;
              (completionCopy)[2](completionCopy, 0, v19);
            }
          }
        }

        else
        {
          _HKInitializeLogging();
          v35 = *MEMORY[0x277CCC2D8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
          {
            v36 = v35;
            v37 = objc_opt_class();
            *buf = 138543362;
            v74 = v37;
            v38 = v37;
            _os_log_impl(&dword_229486000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cannot upgrade to IRN2 as not onboarded to IRN1", buf, 0xCu);
          }

          [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"v1_eligibility" errorDetail:@"not_onboarded"];
          completionCopy[2](completionCopy, 0, 0);
        }
      }

      else
      {
        v31 = MEMORY[0x277CCACA8];
        domain = [v19 domain];
        v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "code")}];
        v34 = [v31 stringWithFormat:@"%@_%@", domain, v33];
        [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"v1_eligibility" errorDetail:v34];

        (completionCopy)[2](completionCopy, 0, v19);
      }

      v8 = v19;
    }
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    domain2 = [v7 domain];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "code")}];
    v16 = [v13 stringWithFormat:@"%@_%@", domain2, v15];
    [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"v2_eligibility" errorDetail:v16];

    (completionCopy)[2](completionCopy, 0, v8);
  }
}

void __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _reportDeliveryAnalyticsEventForCountryCode:*(a1 + 40)];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke_cold_1(a1, v6);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 domain];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "code")}];
    v12 = [v9 stringWithFormat:@"%@_%@", v10, v11];
    [v7 _reportErrorAnalyticsEventForCountryCode:v8 errorCategory:@"save" errorDetail:v12];
  }

  (*(*(a1 + 48) + 16))();
}

void __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke_327(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _reportDeliveryAnalyticsEventForCountryCode:*(a1 + 40)];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke_cold_1(a1, v6);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 domain];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "code")}];
    v12 = [v9 stringWithFormat:@"%@_%@", v10, v11];
    [v7 _reportErrorAnalyticsEventForCountryCode:v8 errorCategory:@"save" errorDetail:v12];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __126__HDHRIrregularRhythmNotificationsV2UpgradeManager_performWorkForOperation_profile_databaseAccessibilityAssertion_completion___block_invoke;
  v9[3] = &unk_27865FD68;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self doWorkWithCompletion:v9];
}

uint64_t __126__HDHRIrregularRhythmNotificationsV2UpgradeManager_performWorkForOperation_profile_databaseAccessibilityAssertion_completion___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained daemon];
  v6 = [v5 nanoRegistryDeviceCapabilityProvider];
  v7 = v6;
  v8 = *(a1 + 32);
  if (a2)
  {
    [v6 unregisterObserver:v8];

    [*(a1 + 32) _stopObservingOnboardingChanges];
  }

  else
  {
    [v6 registerObserver:v8 queue:0];

    [*(a1 + 32) _startObservingOnboardingChanges];
  }

  v9 = *(*(a1 + 40) + 16);

  return v9();
}

- (void)pairedDeviceCapabilitiesDidUpdate:(id)update
{
  v15 = *MEMORY[0x277D85DE8];
  protectedDataOperation = self->_protectedDataOperation;
  v10 = 0;
  v4 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v10];
  v5 = v10;
  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    if (v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5;
    }

    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v9 = v7;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested a chance to upgrade due to nano pairing changes (error: %{public}@)", buf, 0x16u);
  }
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  protectedDataOperation = self->_protectedDataOperation;
  v15 = 0;
  v6 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v15];
  v7 = v15;
  _HKInitializeLogging();
  v8 = HKLogInfrastructure();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    featureIdentifier = [completionCopy featureIdentifier];
    v12 = featureIdentifier;
    *buf = 138543874;
    if (v6)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7;
    }

    v17 = v9;
    v18 = 2112;
    v19 = featureIdentifier;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested a chance to upgrade due to onboardingCompletion of Feature: %@ (error: %{public}@)", buf, 0x20u);
  }

  unitTesting_didRequestRetryOnFeatureStatusChangeHandler = self->_unitTesting_didRequestRetryOnFeatureStatusChangeHandler;
  if (unitTesting_didRequestRetryOnFeatureStatusChangeHandler)
  {
    unitTesting_didRequestRetryOnFeatureStatusChangeHandler[2]();
  }
}

- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:(id)availability
{
  v21 = *MEMORY[0x277D85DE8];
  availabilityCopy = availability;
  protectedDataOperation = self->_protectedDataOperation;
  v14 = 0;
  v6 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v14];
  v7 = v14;
  _HKInitializeLogging();
  v8 = HKLogInfrastructure();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    featureIdentifier = [availabilityCopy featureIdentifier];
    v12 = featureIdentifier;
    *buf = 138543874;
    if (v6)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7;
    }

    v16 = v9;
    v17 = 2112;
    v18 = featureIdentifier;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested a chance to upgrade due to region availability changes of Feature: %@ (error: %{public}@)", buf, 0x20u);
  }
}

- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)available
{
  v15 = *MEMORY[0x277D85DE8];
  protectedDataOperation = self->_protectedDataOperation;
  v10 = 0;
  v4 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v10];
  v5 = v10;
  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    if (v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5;
    }

    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v9 = v7;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested a chance to upgrade due to OnboardingCompletionData becoming available (error: %{public}@)", buf, 0x16u);
  }
}

- (void)_reportAnalyticsEventForCountryCode:(id)code eventType:(id)type errorCategory:(id)category errorDetail:(id)detail
{
  v10 = MEMORY[0x277D105D0];
  detailCopy = detail;
  categoryCopy = category;
  typeCopy = type;
  codeCopy = code;
  v15 = [v10 alloc];
  if (codeCopy)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v15 initWithFeatureIdentifier:*MEMORY[0x277CCC080] eventType:typeCopy countryCode:codeCopy countryCodeProvenance:v16 errorCategory:categoryCopy errorDetail:detailCopy];

  analyticsSubmissionManager = self->_analyticsSubmissionManager;
  v22 = 0;
  v19 = [(HKAnalyticsEventSubmissionManager *)analyticsSubmissionManager submitEvent:v17 error:&v22];
  v20 = v22;
  if ((v19 & 1) == 0)
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsV2UpgradeManager _reportAnalyticsEventForCountryCode:v21 eventType:self errorCategory:? errorDetail:?];
    }
  }
}

void __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Error saving IRN2 Upgrade: %{public}@", v7, v8, v9, v10);
}

- (void)_reportAnalyticsEventForCountryCode:(void *)a1 eventType:(uint64_t)a2 errorCategory:errorDetail:.cold.1(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Failed to submit analytics event: %{public}@", v7, v8, v9, v10);
}

@end