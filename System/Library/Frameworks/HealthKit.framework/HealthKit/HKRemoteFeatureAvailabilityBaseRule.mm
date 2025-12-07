@interface HKRemoteFeatureAvailabilityBaseRule
+ (Class)ruleClassForRawValue:(id)value;
- (BOOL)evaluate;
- (HKRemoteFeatureAvailabilityBaseRule)initWithRawValue:(id)value dataSource:(id)source;
- (HKRemoteFeatureAvailabilityDataSource)dataSource;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityBaseRule

+ (Class)ruleClassForRawValue:(id)value
{
  valueCopy = value;
  if (ruleClassForRawValue__onceToken != -1)
  {
    +[HKRemoteFeatureAvailabilityBaseRule ruleClassForRawValue:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [valueCopy objectForKeyedSubscript:@"ruleIdentifier"];
    if (v4)
    {
      v5 = [ruleClassForRawValue__allRules objectForKeyedSubscript:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __60__HKRemoteFeatureAvailabilityBaseRule_ruleClassForRawValue___block_invoke()
{
  v28[25] = *MEMORY[0x1E69E9840];
  v26 = +[HKRemoteFeatureAvailabilityAlwaysFalseRule ruleIdentifier];
  v27[0] = v26;
  v28[0] = objc_opt_class();
  v25 = +[HKRemoteFeatureAvailabilityAlwaysTrueRule ruleIdentifier];
  v27[1] = v25;
  v28[1] = objc_opt_class();
  v24 = +[HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionEqualsRule ruleIdentifier];
  v27[2] = v24;
  v28[2] = objc_opt_class();
  v23 = +[HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionGreaterThanRule ruleIdentifier];
  v27[3] = v23;
  v28[3] = objc_opt_class();
  v22 = +[HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionLessThanRule ruleIdentifier];
  v27[4] = v22;
  v28[4] = objc_opt_class();
  v21 = +[HKRemoteFeatureAvailabilityCompoundRule ruleIdentifier];
  v27[5] = v21;
  v28[5] = objc_opt_class();
  v20 = +[HKRemoteFeatureAvailabilityDeviceClassEqualsRule ruleIdentifier];
  v27[6] = v20;
  v28[6] = objc_opt_class();
  v19 = +[HKRemoteFeatureAvailabilityIOSBuildVersionEqualsRule ruleIdentifier];
  v27[7] = v19;
  v28[7] = objc_opt_class();
  v18 = +[HKRemoteFeatureAvailabilityIOSBuildVersionGreaterThanRule ruleIdentifier];
  v27[8] = v18;
  v28[8] = objc_opt_class();
  v17 = +[HKRemoteFeatureAvailabilityIOSBuildVersionLessThanRule ruleIdentifier];
  v27[9] = v17;
  v28[9] = objc_opt_class();
  v16 = +[HKRemoteFeatureAvailabilityIOSVersionEqualsRule ruleIdentifier];
  v27[10] = v16;
  v28[10] = objc_opt_class();
  v15 = +[HKRemoteFeatureAvailabilityIOSVersionGreaterThanRule ruleIdentifier];
  v27[11] = v15;
  v28[11] = objc_opt_class();
  v14 = +[HKRemoteFeatureAvailabilityIOSVersionLessThanRule ruleIdentifier];
  v27[12] = v14;
  v28[12] = objc_opt_class();
  v13 = +[HKRemoteFeatureAvailabilityOnboardingCountryCodeRule ruleIdentifier];
  v27[13] = v13;
  v28[13] = objc_opt_class();
  v12 = +[HKRemoteFeatureAvailabilityWatchBuildTypeEqualsRule ruleIdentifier];
  v27[14] = v12;
  v28[14] = objc_opt_class();
  v11 = +[HKRemoteFeatureAvailabilityWatchOSBuildVersionEqualsRule ruleIdentifier];
  v27[15] = v11;
  v28[15] = objc_opt_class();
  v0 = +[HKRemoteFeatureAvailabilityWatchOSBuildVersionGreaterThanRule ruleIdentifier];
  v27[16] = v0;
  v28[16] = objc_opt_class();
  v1 = +[HKRemoteFeatureAvailabilityWatchOSBuildVersionLessThanRule ruleIdentifier];
  v27[17] = v1;
  v28[17] = objc_opt_class();
  v2 = +[HKRemoteFeatureAvailabilityWatchOSVersionEqualsRule ruleIdentifier];
  v27[18] = v2;
  v28[18] = objc_opt_class();
  v3 = +[HKRemoteFeatureAvailabilityWatchOSVersionGreaterThanRule ruleIdentifier];
  v27[19] = v3;
  v28[19] = objc_opt_class();
  v4 = +[HKRemoteFeatureAvailabilityWatchModelNumberHasPrefixRule ruleIdentifier];
  v27[20] = v4;
  v28[20] = objc_opt_class();
  v5 = +[HKRemoteFeatureAvailabilityWatchOSVersionLessThanRule ruleIdentifier];
  v27[21] = v5;
  v28[21] = objc_opt_class();
  v6 = +[HKRemoteFeatureAvailabilityWatchProductTypeHasPrefixRule ruleIdentifier];
  v27[22] = v6;
  v28[22] = objc_opt_class();
  v7 = +[HKRemoteFeatureAvailabilityWatchRegionEqualsRule ruleIdentifier];
  v27[23] = v7;
  v28[23] = objc_opt_class();
  v8 = +[HKRemoteFeatureAvailabilityWatchRegionInfoEqualsRule ruleIdentifier];
  v27[24] = v8;
  v28[24] = objc_opt_class();
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:25];
  v10 = ruleClassForRawValue__allRules;
  ruleClassForRawValue__allRules = v9;
}

- (HKRemoteFeatureAvailabilityBaseRule)initWithRawValue:(id)value dataSource:(id)source
{
  valueCopy = value;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = HKRemoteFeatureAvailabilityBaseRule;
  v8 = [(HKRemoteFeatureAvailabilityBaseRule *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    v10 = [valueCopy objectForKeyedSubscript:@"userInfo"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F8];
    }

    [(HKRemoteFeatureAvailabilityBaseRule *)v9 processUserInfo:v12];
  }

  return v9;
}

- (HKRemoteFeatureAvailabilityDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)processUserInfo:(id)info
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (BOOL)evaluate
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end