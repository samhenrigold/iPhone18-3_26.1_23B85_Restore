@interface TPSHKFeatureStatusValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSHKFeatureStatusValidation

- (void)validateWithCompletion:(id)completion
{
  v38[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  value = [(TPSTargetingValidation *)self value];
  v6 = [value TPSSafeIntegerForKey:@"featureIdentifier"];

  value2 = [(TPSTargetingValidation *)self value];
  v8 = [value2 TPSSafeIntegerForKey:@"statusType"];

  v9 = [TPSHealthKitDefines identifierForFeature:v6];
  v10 = [TPSHealthKitDefines featureAvailabilityContextForStatusType:v8];
  v11 = v10;
  v12 = 0x277D71000uLL;
  if (v9 && v10)
  {
    targeting2 = +[TPSHealthKitDefines sharedHealthStore];
    v14 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureIdentifier:v9 healthStore:targeting2 countryCodeSource:1];
    v32 = 0;
    v15 = [v14 featureStatusWithError:&v32];
    v16 = v32;
    v31 = v11;
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:v11];
      areAllRequirementsSatisfied = [v17 areAllRequirementsSatisfied];

      value3 = [(TPSTargetingValidation *)self value];
      v20 = [value3 TPSSafeBoolForKey:@"value"];

      v21 = areAllRequirementsSatisfied ^ v20 ^ 1u;
    }

    else
    {
      targeting = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(targeting, OS_LOG_TYPE_ERROR))
      {
        name = [(TPSTargetingValidation *)self name];
        v30 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
        *buf = 138412802;
        v34 = name;
        v35 = 2112;
        v36 = v30;
        v37 = 2112;
        v38[0] = v16;
        _os_log_error_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_ERROR, "%@ - unable to query feature status (%@). Error: %@", buf, 0x20u);
      }

      v21 = 0;
    }

    v11 = v31;
    v12 = 0x277D71000uLL;
  }

  else
  {
    targeting2 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting2, OS_LOG_TYPE_ERROR))
    {
      name2 = [(TPSTargetingValidation *)self name];
      v27 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      *buf = 138412802;
      v34 = name2;
      v35 = 2112;
      v36 = v27;
      v37 = 2112;
      v38[0] = v28;
      _os_log_error_impl(&dword_232D6F000, targeting2, OS_LOG_TYPE_ERROR, "%@ - unrecognized feature (%@) or statusType (%@)", buf, 0x20u);

      v12 = 0x277D71000;
    }

    v16 = 0;
    v21 = 0;
  }

  targeting3 = [*(v12 + 1912) targeting];
  if (os_log_type_enabled(targeting3, OS_LOG_TYPE_DEBUG))
  {
    name3 = [(TPSTargetingValidation *)self name];
    targetContext = [(TPSTargetingValidation *)self targetContext];
    *buf = 138413058;
    v34 = name3;
    v35 = 2112;
    v36 = targetContext;
    v37 = 1024;
    LODWORD(v38[0]) = v21;
    WORD2(v38[0]) = 2112;
    *(v38 + 6) = v16;
    _os_log_debug_impl(&dword_232D6F000, targeting3, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Valid: %d. Error: %@", buf, 0x26u);
  }

  completionCopy[2](completionCopy, v21, v16);
}

@end