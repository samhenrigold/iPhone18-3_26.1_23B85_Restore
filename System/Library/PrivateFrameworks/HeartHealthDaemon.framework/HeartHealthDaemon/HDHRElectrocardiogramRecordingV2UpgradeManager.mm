@interface HDHRElectrocardiogramRecordingV2UpgradeManager
- (HDHRElectrocardiogramRecordingV2UpgradeManager)initWithProfile:(id)profile v1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager analyticsSubmissionManager:(id)submissionManager;
- (HDHRElectrocardiogramRecordingV2UpgradeManager)initWithProfile:(id)profile v1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager analyticsSubmissionManager:(id)submissionManager protectedDataOperation:(id)operation;
- (id)_v1featureSettingsUponBackgroundDelivery;
- (void)_reportAnalyticsEventForCountryCode:(void *)code eventType:(void *)type errorCategory:(void *)category errorDetail:;
- (void)doWorkWithCompletion:(uint64_t)completion;
- (void)pairedDeviceCapabilitiesDidUpdate:(id)update;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
@end

@implementation HDHRElectrocardiogramRecordingV2UpgradeManager

- (HDHRElectrocardiogramRecordingV2UpgradeManager)initWithProfile:(id)profile v1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager analyticsSubmissionManager:(id)submissionManager
{
  v10 = MEMORY[0x277D10800];
  submissionManagerCopy = submissionManager;
  availabilityManagerCopy = availabilityManager;
  managerCopy = manager;
  profileCopy = profile;
  v15 = [v10 alloc];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 initWithProfile:profileCopy debugIdentifier:v17 delegate:0];

  v19 = [(HDHRElectrocardiogramRecordingV2UpgradeManager *)self initWithProfile:profileCopy v1FeatureAvailabilityManager:managerCopy v2FeatureAvailabilityManager:availabilityManagerCopy analyticsSubmissionManager:submissionManagerCopy protectedDataOperation:v18];
  return v19;
}

- (HDHRElectrocardiogramRecordingV2UpgradeManager)initWithProfile:(id)profile v1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager analyticsSubmissionManager:(id)submissionManager protectedDataOperation:(id)operation
{
  profileCopy = profile;
  managerCopy = manager;
  availabilityManagerCopy = availabilityManager;
  submissionManagerCopy = submissionManager;
  operationCopy = operation;
  v20.receiver = self;
  v20.super_class = HDHRElectrocardiogramRecordingV2UpgradeManager;
  v17 = [(HDHRElectrocardiogramRecordingV2UpgradeManager *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_profile, profileCopy);
    objc_storeStrong(&v18->_protectedDataOperation, operation);
    objc_storeStrong(&v18->_v1FeatureAvailabilityManager, manager);
    objc_storeStrong(&v18->_v2FeatureAvailabilityManager, availabilityManager);
    objc_storeStrong(&v18->_analyticsSubmissionManager, submissionManager);
    [(HDProtectedDataOperation *)v18->_protectedDataOperation setDelegate:v18];
    [(HDProtectedDataOperation *)v18->_protectedDataOperation requestWorkWithPriority:2 error:0];
  }

  return v18;
}

uint64_t __124__HDHRElectrocardiogramRecordingV2UpgradeManager_performWorkForOperation_profile_databaseAccessibilityAssertion_completion___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained daemon];
  v6 = [v5 nanoRegistryDeviceCapabilityProvider];
  v7 = v6;
  v8 = *(a1 + 32);
  if (a2)
  {
    [v6 unregisterObserver:v8];
  }

  else
  {
    [v6 registerObserver:v8 queue:0];
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

- (void)doWorkWithCompletion:(uint64_t)completion
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (completion)
  {
    v4 = *(completion + 32);
    v90 = 0;
    v5 = [v4 featureOnboardingRecordWithError:&v90];
    v6 = v90;
    v7 = v6;
    if (!v5)
    {
      v8 = MEMORY[0x277CCACA8];
      domain = [v6 domain];
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
      v11 = [v8 stringWithFormat:@"%@_%@", domain, v10];
      v12 = OUTLINED_FUNCTION_1_4();
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v12 _reportAnalyticsEventForCountryCode:v13 eventType:v14 errorCategory:v15 errorDetail:v11];

      v16 = OUTLINED_FUNCTION_0_3();
      v18 = 0;
      v19 = v7;
LABEL_8:
      v17(v16, v18, v19);
LABEL_30:

      goto LABEL_31;
    }

    if ([v5 isOnboardingPresent])
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = objc_opt_class();
        *buf = 138543362;
        v92 = v22;
        v23 = v22;
        _os_log_impl(&dword_229486000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Already onboarded to ECG2", buf, 0xCu);
      }

      v24 = OUTLINED_FUNCTION_1_4();
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v24 _reportAnalyticsEventForCountryCode:v25 eventType:v26 errorCategory:v27 errorDetail:v28];
      v16 = OUTLINED_FUNCTION_0_3();
      v18 = 1;
      v19 = 0;
      goto LABEL_8;
    }

    v29 = *(completion + 24);
    v89 = v7;
    v30 = [v29 featureOnboardingRecordWithError:&v89];
    v31 = v89;

    if (!v30)
    {
      v32 = MEMORY[0x277CCACA8];
      domain2 = [v31 domain];
      v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v31, "code")}];
      v35 = [v32 stringWithFormat:@"%@_%@", domain2, v34];
      v36 = OUTLINED_FUNCTION_1_4();
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v36 _reportAnalyticsEventForCountryCode:v37 eventType:v38 errorCategory:v39 errorDetail:v35];

      v40 = OUTLINED_FUNCTION_0_3();
      v42 = 0;
      v43 = v31;
LABEL_17:
      v41(v40, v42, v43);
LABEL_29:

      v7 = v31;
      goto LABEL_30;
    }

    if (([v30 isOnboardingPresent] & 1) == 0)
    {
      _HKInitializeLogging();
      v55 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        v56 = v55;
        v57 = objc_opt_class();
        *buf = 138543362;
        v92 = v57;
        v58 = v57;
        _os_log_impl(&dword_229486000, v56, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cannot upgrade to ECG2 as not onboarded to ECG1", buf, 0xCu);
      }

      v59 = OUTLINED_FUNCTION_1_4();
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v59 _reportAnalyticsEventForCountryCode:v60 eventType:v61 errorCategory:v62 errorDetail:v63];
      v40 = OUTLINED_FUNCTION_0_3();
      v42 = 1;
      v43 = 0;
      goto LABEL_17;
    }

    onboardingCompletion = [v30 onboardingCompletion];
    countryCode = [onboardingCompletion countryCode];

    if (countryCode)
    {
      v64 = *(completion + 32);
      v88 = v31;
      v51 = [v64 onboardingEligibilityForCountryCode:countryCode error:&v88];
      v54 = v88;

      if (v51)
      {
        isEligible = [v51 isEligible];
        _HKInitializeLogging();
        v73 = *MEMORY[0x277CCC2D8];
        v74 = os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT);
        if (isEligible)
        {
          if (v74)
          {
            v75 = v73;
            v76 = objc_opt_class();
            *buf = 138543618;
            v92 = v76;
            v93 = 2114;
            v94 = countryCode;
            v77 = v76;
            _os_log_impl(&dword_229486000, v75, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning ECG2 upgrade in country: %{public}@", buf, 0x16u);
          }

          v78 = *(completion + 32);
          _v1featureSettingsUponBackgroundDelivery = [(HDHRElectrocardiogramRecordingV2UpgradeManager *)completion _v1featureSettingsUponBackgroundDelivery];
          v85[0] = MEMORY[0x277D85DD0];
          v85[1] = 3221225472;
          v85[2] = __71__HDHRElectrocardiogramRecordingV2UpgradeManager_doWorkWithCompletion___block_invoke;
          v85[3] = &unk_2786600F8;
          v85[4] = completion;
          v86 = countryCode;
          v87 = v3;
          [v78 setCurrentOnboardingVersionCompletedForCountryCode:v86 countryCodeProvenance:3 date:0 settings:_v1featureSettingsUponBackgroundDelivery completion:v85];

          goto LABEL_28;
        }

        if (v74)
        {
          v80 = v73;
          v81 = objc_opt_class();
          v84 = v81;
          ineligibilityReasonsDescription = [v51 ineligibilityReasonsDescription];
          *buf = 138543874;
          v92 = v81;
          v93 = 2114;
          v94 = countryCode;
          v95 = 2114;
          v96 = ineligibilityReasonsDescription;
          _os_log_impl(&dword_229486000, v80, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cannot upgrade to ECG2 in ECG1 country: %{public}@: %{public}@", buf, 0x20u);
        }

        ineligibilityReasonsDescription2 = [v51 ineligibilityReasonsDescription];
        [(HDHRElectrocardiogramRecordingV2UpgradeManager *)completion _reportAnalyticsEventForCountryCode:countryCode eventType:*MEMORY[0x277D103E8] errorCategory:@"eligibility" errorDetail:ineligibilityReasonsDescription2];

        v69 = OUTLINED_FUNCTION_0_3();
        v71 = 0;
      }

      else
      {
        v65 = MEMORY[0x277CCACA8];
        domain3 = [v54 domain];
        v67 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v54, "code")}];
        v68 = [v65 stringWithFormat:@"%@_%@", domain3, v67];
        [(HDHRElectrocardiogramRecordingV2UpgradeManager *)completion _reportAnalyticsEventForCountryCode:countryCode eventType:*MEMORY[0x277D103E8] errorCategory:@"eligibility" errorDetail:v68];

        v69 = OUTLINED_FUNCTION_0_3();
        v71 = v54;
      }

      v70(v69, 0, v71);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_1_4();
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v46 _reportAnalyticsEventForCountryCode:v47 eventType:v48 errorCategory:v49 errorDetail:v50];
      v51 = [MEMORY[0x277CCA9B8] hk_error:109 description:@"Cannot upgrade V1 user to V2 as no country code exists"];
      v52 = OUTLINED_FUNCTION_0_3();
      v53(v52, 1, v51);
      v54 = v31;
    }

LABEL_28:

    v31 = v54;
    goto LABEL_29;
  }

LABEL_31:
}

- (id)_v1featureSettingsUponBackgroundDelivery
{
  v7[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v1 = objc_alloc(MEMORY[0x277CCD450]);
    v2 = *MEMORY[0x277CCBD10];
    v6[0] = *MEMORY[0x277CCBD18];
    v6[1] = v2;
    v7[0] = MEMORY[0x277CBEC38];
    v7[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
    v4 = [v1 initWithDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __71__HDHRElectrocardiogramRecordingV2UpgradeManager_doWorkWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v6 _reportAnalyticsEventForCountryCode:*MEMORY[0x277D103E0] eventType:0 errorCategory:0 errorDetail:?];
    }
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      v14 = v7;
      objc_opt_class();
      OUTLINED_FUNCTION_2_2();
      v16 = v15;
      OUTLINED_FUNCTION_3_1(&dword_229486000, v17, v18, "[%{public}@] Error saving ECGV2 Upgrade: %{public}@", v19, v20, v21, v22, v23, v24);
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = MEMORY[0x277CCACA8];
    v11 = [v5 domain];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "code")}];
    v13 = [v10 stringWithFormat:@"%@_%@", v11, v12];
    if (v8)
    {
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v8 _reportAnalyticsEventForCountryCode:v9 eventType:*MEMORY[0x277D103E8] errorCategory:@"save" errorDetail:v13];
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __124__HDHRElectrocardiogramRecordingV2UpgradeManager_performWorkForOperation_profile_databaseAccessibilityAssertion_completion___block_invoke;
  v9[3] = &unk_27865FD68;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(HDHRElectrocardiogramRecordingV2UpgradeManager *)self doWorkWithCompletion:v9];
}

- (void)_reportAnalyticsEventForCountryCode:(void *)code eventType:(void *)type errorCategory:(void *)category errorDetail:
{
  v31[4] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v9 = MEMORY[0x277D105D0];
    categoryCopy = category;
    typeCopy = type;
    codeCopy = code;
    v13 = a2;
    v14 = [v9 alloc];
    if (v13)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v14 initWithFeatureIdentifier:*MEMORY[0x277CCC020] eventType:codeCopy countryCode:v13 countryCodeProvenance:v15 errorCategory:typeCopy errorDetail:categoryCopy];

    v17 = *(self + 40);
    v31[0] = 0;
    v18 = [v17 submitEvent:v16 error:v31];
    v19 = v31[0];
    if ((v18 & 1) == 0)
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        objc_opt_class();
        OUTLINED_FUNCTION_2_2();
        *(&v31[2] + 6) = v19;
        v23 = v22;
        OUTLINED_FUNCTION_3_1(&dword_229486000, v24, v25, "[%{public}@] Failed to submit analytics event: %{public}@", v26, v27, v28, v29, v30, v31[0]);
      }
    }
  }
}

@end