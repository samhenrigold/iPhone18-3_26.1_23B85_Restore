@interface HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector
- (BOOL)shouldAllowAnalysisWithFeatureStatus:(id)status;
- (HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector)initWithOnboardingEligibilityDeterminer:(id)determiner breadcrumbManager:(id)manager;
- (id)pairedDevices;
@end

@implementation HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector

- (HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector)initWithOnboardingEligibilityDeterminer:(id)determiner breadcrumbManager:(id)manager
{
  determinerCopy = determiner;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector;
  v9 = [(HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_onboardingEligibilityDeterminer, determiner);
    objc_storeStrong(&v10->_breadcrumbManager, manager);
  }

  return v10;
}

- (BOOL)shouldAllowAnalysisWithFeatureStatus:(id)status
{
  v64 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  areAllRequirementsSatisfied = [v5 areAllRequirementsSatisfied];

  if (areAllRequirementsSatisfied)
  {
    _HKInitializeLogging();
    v7 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy6 = self;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Usage context supported, allowing analysis", buf, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    v9 = *MEMORY[0x277D12E58];
    v10 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277D12E58]];
    areAllRequirementsSatisfied2 = [v10 areAllRequirementsSatisfied];

    if (areAllRequirementsSatisfied2)
    {
      pairedDevices = [(HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector *)self pairedDevices];
      if ([pairedDevices count])
      {
        onboardingRecord = [statusCopy onboardingRecord];
        allOnboardingCompletionsRegardlessOfSupportedState = [onboardingRecord allOnboardingCompletionsRegardlessOfSupportedState];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v15 = pairedDevices;
        v16 = [v15 countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v56;
          v46 = pairedDevices;
          v48 = v15;
          v49 = allOnboardingCompletionsRegardlessOfSupportedState;
          v44 = *v56;
          while (2)
          {
            v19 = 0;
            v45 = v17;
            do
            {
              if (*v56 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v55 + 1) + 8 * v19);
              onboardingEligibilityDeterminer = self->_onboardingEligibilityDeterminer;
              v54 = 0;
              v22 = [(HDFeatureAvailabilityOnboardingEligibilityDeterminer *)onboardingEligibilityDeterminer onboardingEligibilitiesForDevice:v20 onboardingCompletions:allOnboardingCompletionsRegardlessOfSupportedState error:&v54, v44];
              v23 = v54;
              v8 = v23 == 0;
              if (v23)
              {
                v24 = v23;
                _HKInitializeLogging();
                v43 = HKHRAFibBurdenLogForCategory();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  [(HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector *)self shouldAllowAnalysisWithFeatureStatus:v24, v43];
                }

                [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"Error determining onboarding eligibility"];
                pairedDevices = v46;
LABEL_40:

                goto LABEL_41;
              }

              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              v47 = v22;
              v24 = v22;
              v25 = [v24 countByEnumeratingWithState:&v50 objects:v59 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v51;
                while (2)
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v51 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    onboardingEligibility = [*(*(&v50 + 1) + 8 * i) onboardingEligibility];
                    isEligible = [onboardingEligibility isEligible];

                    if (isEligible)
                    {
                      _HKInitializeLogging();
                      v41 = HKHRAFibBurdenLogForCategory();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543362;
                        selfCopy6 = self;
                        _os_log_impl(&dword_229486000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] At least one paired device has supported onboarding completion, allowing analysis", buf, 0xCu);
                      }

                      pairedDevices = v46;
                      v22 = v47;
                      v15 = v48;
                      allOnboardingCompletionsRegardlessOfSupportedState = v49;
                      goto LABEL_40;
                    }
                  }

                  v26 = [v24 countByEnumeratingWithState:&v50 objects:v59 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }
              }

              ++v19;
              v18 = v44;
              v15 = v48;
              allOnboardingCompletionsRegardlessOfSupportedState = v49;
            }

            while (v19 != v45);
            v17 = [v48 countByEnumeratingWithState:&v55 objects:v60 count:16];
            pairedDevices = v46;
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        _HKInitializeLogging();
        v31 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy6 = self;
          _os_log_impl(&dword_229486000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] No paired devices had supported onboarding completion, not allowing analysis", buf, 0xCu);
        }

        [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"No devices supported for onboarding completions"];
        v8 = 0;
LABEL_41:
      }

      else
      {
        _HKInitializeLogging();
        v40 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy6 = self;
          _os_log_impl(&dword_229486000, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@] No devices present, not allowing analysis", buf, 0xCu);
        }

        [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"Analysis feature context allowed but no paired devices"];
        v8 = 0;
      }
    }

    else
    {
      v32 = [statusCopy objectForKeyedSubscript:v9];
      unsatisfiedRequirementIdentifiers = [v32 unsatisfiedRequirementIdentifiers];
      v61 = *MEMORY[0x277CCBF38];
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
      v35 = [unsatisfiedRequirementIdentifiers isEqualToArray:v34];

      _HKInitializeLogging();
      v36 = HKHRAFibBurdenLogForCategory();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (v35)
      {
        if (v37)
        {
          *buf = 138543362;
          selfCopy6 = self;
          _os_log_impl(&dword_229486000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analysis context not supported exclusively due to setting being toggled off, not allowing analysis", buf, 0xCu);
        }

        breadcrumbManager = self->_breadcrumbManager;
        v39 = @"Feature turned off";
      }

      else
      {
        if (v37)
        {
          *buf = 138543362;
          selfCopy6 = self;
          _os_log_impl(&dword_229486000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analysis context not supported, not allowing analysis", buf, 0xCu);
        }

        breadcrumbManager = self->_breadcrumbManager;
        v39 = @"Usage feature status not allowed";
      }

      [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)breadcrumbManager dropAnalysisResultBreadcrumbWithContext:v39];
      v8 = 0;
    }
  }

  return v8;
}

- (id)pairedDevices
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  pairedDevicesSelectorBlock = [MEMORY[0x277D2BCF8] pairedDevicesSelectorBlock];
  v4 = [mEMORY[0x277D2BCF8] getDevicesMatching:pairedDevicesSelectorBlock];

  return v4;
}

- (void)shouldAllowAnalysisWithFeatureStatus:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Error when retrieving onboarding eligibility: %{public}@", &v3, 0x16u);
}

@end