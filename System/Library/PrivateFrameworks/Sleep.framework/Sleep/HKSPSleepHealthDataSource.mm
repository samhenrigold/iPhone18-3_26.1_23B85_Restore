@interface HKSPSleepHealthDataSource
- (HKFeatureAvailabilityHealthDataSource)healthDataSource;
- (HKFeatureAvailabilityHealthDataSource)weakHealthDataSource;
- (HKProfileIdentifier)profileIdentifier;
- (HKSPSleepHealthDataSource)initWithSleepStore:(id)store healthDataSource:(id)source;
- (HKSPSleepHealthDataSource)initWithSleepStore:(id)store healthDataSource:(id)source pairedDeviceRegistry:(id)registry;
- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)identifier;
- (id)healthDataRequirementEvaluationProvider;
- (id)requirementSatisfactionOverridesDataSource;
- (id)sharedRequirementEvaluationDataSource;
- (id)userCharacteristicForDataType:(id)type error:(id *)error;
- (id)watchLowPowerModeDataSource;
- (id)wristDetectionSettingManager;
@end

@implementation HKSPSleepHealthDataSource

- (HKSPSleepHealthDataSource)initWithSleepStore:(id)store healthDataSource:(id)source
{
  sourceCopy = source;
  storeCopy = store;
  v8 = objc_alloc_init(HKSPPairedDeviceRegistryProvider);
  v9 = [(HKSPSleepHealthDataSource *)self initWithSleepStore:storeCopy healthDataSource:sourceCopy pairedDeviceRegistry:v8];

  return v9;
}

- (HKSPSleepHealthDataSource)initWithSleepStore:(id)store healthDataSource:(id)source pairedDeviceRegistry:(id)registry
{
  v21 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  sourceCopy = source;
  registryCopy = registry;
  v18.receiver = self;
  v18.super_class = HKSPSleepHealthDataSource;
  v12 = [(HKSPSleepHealthDataSource *)&v18 init];
  if (v12)
  {
    v13 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&dword_269A84000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing...", buf, 0xCu);
    }

    objc_storeStrong(&v12->_sleepStore, store);
    objc_storeStrong(&v12->_pairedDeviceRegistry, registry);
    if ([sourceCopy requiresWeakRetention])
    {
      objc_storeWeak(&v12->_weakHealthDataSource, sourceCopy);
      v14 = 0;
    }

    else
    {
      objc_storeWeak(&v12->_weakHealthDataSource, 0);
      v14 = sourceCopy;
    }

    strongHealthDataSource = v12->_strongHealthDataSource;
    v12->_strongHealthDataSource = v14;

    v16 = v12;
  }

  return v12;
}

- (HKFeatureAvailabilityHealthDataSource)healthDataSource
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_weakHealthDataSource);
  strongHealthDataSource = WeakRetained;
  if (WeakRetained || (strongHealthDataSource = self->_strongHealthDataSource) != 0)
  {
    v5 = strongHealthDataSource;
  }

  else
  {
    v7 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      selfCopy = self;
      _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "%{public}@ health data source is nil", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (HKProfileIdentifier)profileIdentifier
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ returning profile identifier", &v7, 0xCu);
  }

  healthDataSource = [(HKSPSleepHealthDataSource *)self healthDataSource];
  profileIdentifier = [healthDataSource profileIdentifier];

  return profileIdentifier;
}

- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  IsProvidedBySleepDaemon = HKFeatureIdentifierIsProvidedBySleepDaemon();
  v6 = HKSPLogForCategory(1uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (IsProvidedBySleepDaemon)
  {
    if (v7)
    {
      v13 = 138543618;
      selfCopy2 = self;
      v15 = 2114;
      v16 = identifierCopy;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ returning sleep feature availability store for featureIdentifier: %{public}@", &v13, 0x16u);
    }

    v8 = [HKSPFeatureAvailabilityStore alloc];
    sleepStore = [(HKSPSleepHealthDataSource *)self sleepStore];
    pairedDeviceRegistry = [(HKSPSleepHealthDataSource *)self pairedDeviceRegistry];
    v11 = [(HKSPFeatureAvailabilityStore *)v8 initWithFeatureIdentifier:identifierCopy sleepStore:sleepStore pairedDeviceRegistry:pairedDeviceRegistry];
  }

  else
  {
    if (v7)
    {
      v13 = 138543618;
      selfCopy2 = self;
      v15 = 2114;
      v16 = identifierCopy;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ returning health feature availability store for featureIdentifier: %{public}@", &v13, 0x16u);
    }

    sleepStore = [(HKSPSleepHealthDataSource *)self healthDataSource];
    v11 = [sleepStore featureAvailabilityProvidingForFeatureIdentifier:identifierCopy];
  }

  return v11;
}

- (id)sharedRequirementEvaluationDataSource
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ shared requirement evaluation data source", &v7, 0xCu);
  }

  healthDataSource = [(HKSPSleepHealthDataSource *)self healthDataSource];
  sharedRequirementEvaluationDataSource = [healthDataSource sharedRequirementEvaluationDataSource];

  return sharedRequirementEvaluationDataSource;
}

- (id)healthDataRequirementEvaluationProvider
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ returning health data requirement evaluation provider", &v7, 0xCu);
  }

  healthDataSource = [(HKSPSleepHealthDataSource *)self healthDataSource];
  healthDataRequirementEvaluationProvider = [healthDataSource healthDataRequirementEvaluationProvider];

  return healthDataRequirementEvaluationProvider;
}

- (id)requirementSatisfactionOverridesDataSource
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ returning requirement satisfaction overrides data source", &v7, 0xCu);
  }

  healthDataSource = [(HKSPSleepHealthDataSource *)self healthDataSource];
  requirementSatisfactionOverridesDataSource = [healthDataSource requirementSatisfactionOverridesDataSource];

  return requirementSatisfactionOverridesDataSource;
}

- (id)watchLowPowerModeDataSource
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ returning watch low power mode data source", &v7, 0xCu);
  }

  healthDataSource = [(HKSPSleepHealthDataSource *)self healthDataSource];
  watchLowPowerModeDataSource = [healthDataSource watchLowPowerModeDataSource];

  return watchLowPowerModeDataSource;
}

- (id)wristDetectionSettingManager
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ returning wrist detection manager", &v7, 0xCu);
  }

  healthDataSource = [(HKSPSleepHealthDataSource *)self healthDataSource];
  wristDetectionSettingManager = [healthDataSource wristDetectionSettingManager];

  return wristDetectionSettingManager;
}

- (id)userCharacteristicForDataType:(id)type error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = typeCopy;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ returning user characteristics for datatype: %{public}@", &v11, 0x16u);
  }

  healthDataSource = [(HKSPSleepHealthDataSource *)self healthDataSource];
  v9 = [healthDataSource userCharacteristicForDataType:typeCopy error:error];

  return v9;
}

- (HKFeatureAvailabilityHealthDataSource)weakHealthDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_weakHealthDataSource);

  return WeakRetained;
}

@end