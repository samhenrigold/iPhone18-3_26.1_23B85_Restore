@interface HKRPOxygenSaturationOnboardingManager
- (BOOL)_currentDeviceHasCapability;
- (BOOL)_isAlternateDevice;
- (BOOL)ageIsAppropriate;
- (BOOL)bloodOxygenFeatureEnabled;
- (BOOL)bloodOxygenRemoteDisabled;
- (BOOL)onboardingComplete;
- (BOOL)onboardingDuringPairingShouldAppear;
- (BOOL)onboardingShouldAppear;
- (BOOL)pairedDeviceIsAppropriate;
- (BOOL)settingsShouldAppear;
- (BOOL)shouldAdvertise;
- (HKRPOxygenSaturationOnboardingManager)init;
- (HKRPOxygenSaturationOnboardingManager)initWithDataSource:(id)source;
- (HKRPOxygenSaturationOnboardingManager)initWithDevice:(id)device;
- (void)_currentDeviceHasCapability;
- (void)bloodOxygenRemoteDisabled;
- (void)cacheCompletedOnboardingStateIfNeeded;
- (void)onboardWithCompletion:(id)completion;
- (void)onboardingComplete;
@end

@implementation HKRPOxygenSaturationOnboardingManager

- (HKRPOxygenSaturationOnboardingManager)init
{
  v3 = objc_alloc_init(_HKRPOxygenSaturationOnboardingManagerDataSource);
  v4 = [(HKRPOxygenSaturationOnboardingManager *)self initWithDataSource:v3];

  return v4;
}

- (HKRPOxygenSaturationOnboardingManager)initWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [[_HKRPOxygenSaturationOnboardingManagerStaticDeviceDataSource alloc] initWithDevice:deviceCopy];

  v6 = [(HKRPOxygenSaturationOnboardingManager *)self initWithDataSource:v5];
  return v6;
}

- (HKRPOxygenSaturationOnboardingManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = HKRPOxygenSaturationOnboardingManager;
  v6 = [(HKRPOxygenSaturationOnboardingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (BOOL)settingsShouldAppear
{
  if (![(HKRPOxygenSaturationOnboardingManager *)self bloodOxygenFeatureEnabled]|| ![(HKRPOxygenSaturationOnboardingManager *)self pairedDeviceIsAppropriate])
  {
    return 0;
  }

  return [(HKRPOxygenSaturationOnboardingManager *)self ageIsAppropriate];
}

- (BOOL)bloodOxygenFeatureEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  isBloodOxygenSaturationEnabled = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource isBloodOxygenSaturationEnabled];
  _HKInitializeLogging();
  v3 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 1024;
    v9 = isBloodOxygenSaturationEnabled;
    v4 = v7;
    _os_log_impl(&dword_262078000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature is enabled: %d", &v6, 0x12u);
  }

  return isBloodOxygenSaturationEnabled;
}

- (BOOL)pairedDeviceIsAppropriate
{
  if ([(HKRPOxygenSaturationOnboardingManager *)self _isAlternateDevice])
  {
    return 0;
  }

  return [(HKRPOxygenSaturationOnboardingManager *)self _currentDeviceHasCapability];
}

- (BOOL)_currentDeviceHasCapability
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource skipHardwareCheck])
  {
    _HKInitializeLogging();
    v3 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v4 = v15;
      _os_log_impl(&dword_262078000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Device check override is in place", buf, 0xCu);
    }

    bOOLValue = 1;
  }

  else
  {
    featureAvailabilityProvider = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource featureAvailabilityProvider];
    v13 = 0;
    v7 = [featureAvailabilityProvider isFeatureCapabilitySupportedOnActivePairedDeviceWithError:&v13];
    v3 = v13;

    _HKInitializeLogging();
    v8 = HKLogRespiratoryCategory();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        *buf = 138543618;
        v15 = v10;
        v16 = 2114;
        v17 = v7;
        v11 = v10;
        _os_log_impl(&dword_262078000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Device check result: %{public}@", buf, 0x16u);
      }

      bOOLValue = [v7 BOOLValue];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [HKRPOxygenSaturationOnboardingManager _currentDeviceHasCapability];
      }

      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (BOOL)_isAlternateDevice
{
  v14 = *MEMORY[0x277D85DE8];
  device = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource device];
  v3 = device;
  if (device)
  {
    v4 = [device valueForProperty:*MEMORY[0x277D2BB28]];
    bOOLValue = [v4 BOOLValue];

    _HKInitializeLogging();
    v6 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 1024;
      v13 = bOOLValue;
      v7 = v11;
      _os_log_impl(&dword_262078000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Alternate device check: alternate device flag: %d", &v10, 0x12u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_impl(&dword_262078000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Alternate device check: active device is nil", &v10, 0xCu);
    }

    LOBYTE(bOOLValue) = 1;
  }

  return bOOLValue;
}

- (BOOL)ageIsAppropriate
{
  v13 = *MEMORY[0x277D85DE8];
  isAgeGated = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource isAgeGated];
  _HKInitializeLogging();
  v3 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = MEMORY[0x277CCABB0];
    v6 = v4;
    v7 = [v5 numberWithBool:isAgeGated ^ 1u];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_262078000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Age is appropriate for oxygen saturation: %{public}@", &v9, 0x16u);
  }

  return isAgeGated ^ 1;
}

- (BOOL)shouldAdvertise
{
  v13 = *MEMORY[0x277D85DE8];
  shouldAdvertise = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource shouldAdvertise];
  _HKInitializeLogging();
  v3 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = MEMORY[0x277CCABB0];
    v6 = v4;
    v7 = [v5 numberWithBool:shouldAdvertise];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_262078000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Should advertise onboarding of feature: %{public}@", &v9, 0x16u);
  }

  return shouldAdvertise;
}

- (BOOL)onboardingShouldAppear
{
  settingsShouldAppear = [(HKRPOxygenSaturationOnboardingManager *)self settingsShouldAppear];
  if (settingsShouldAppear)
  {
    LOBYTE(settingsShouldAppear) = ![(HKRPOxygenSaturationOnboardingManager *)self onboardingComplete];
  }

  return settingsShouldAppear;
}

- (BOOL)onboardingDuringPairingShouldAppear
{
  if (![(HKRPOxygenSaturationOnboardingManager *)self onboardingShouldAppear]|| [(HKRPOxygenSaturationOnboardingManager *)self bloodOxygenRemoteDisabled])
  {
    return 0;
  }

  return [(HKRPOxygenSaturationOnboardingManager *)self shouldAdvertise];
}

- (BOOL)onboardingComplete
{
  v18 = *MEMORY[0x277D85DE8];
  featureAvailabilityProvider = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource featureAvailabilityProvider];
  v13 = 0;
  v3 = [featureAvailabilityProvider onboardedCountryCodeSupportedStateWithError:&v13];
  v4 = v13;

  if (v3)
  {
    integerValue = [v3 integerValue];
    _HKInitializeLogging();
    v6 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = NSStringFromHKFeatureAvailabilityOnboardedCountrySupportedState();
      *buf = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_262078000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding completed state: %{public}@", buf, 0x16u);
    }

    if (integerValue <= 5)
    {
      v10 = 5u >> integerValue;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HKRPOxygenSaturationOnboardingManager onboardingComplete];
    }

    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)bloodOxygenRemoteDisabled
{
  v24 = *MEMORY[0x277D85DE8];
  featureAvailabilityProvider = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource featureAvailabilityProvider];
  v19 = 0;
  v4 = [featureAvailabilityProvider onboardedCountryCodeSupportedStateWithError:&v19];
  v5 = v19;

  if (!v4)
  {
    _HKInitializeLogging();
    v15 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [HKRPOxygenSaturationOnboardingManager bloodOxygenRemoteDisabled];
    }

    goto LABEL_14;
  }

  integerValue = [v4 integerValue];
  _HKInitializeLogging();
  v7 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKFeatureAvailabilityOnboardedCountrySupportedState();
    *buf = 138543618;
    v21 = v8;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_262078000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding completed state: %{public}@", buf, 0x16u);
  }

  if ((integerValue - 2) < 2 || integerValue == 5)
  {
LABEL_14:
    LOBYTE(v14) = 0;
    goto LABEL_15;
  }

  if (integerValue == 1)
  {

    featureAvailabilityProvider2 = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource featureAvailabilityProvider];
    v18 = 0;
    v13 = [featureAvailabilityProvider2 onboardingEligibilityForCountryCode:0 error:&v18];
    v5 = v18;

    if (v13)
    {
      v14 = ([v13 ineligibilityReasons] >> 6) & 1;
    }

    else
    {
      _HKInitializeLogging();
      v17 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [HKRPOxygenSaturationOnboardingManager bloodOxygenRemoteDisabled];
      }

      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 1;
  }

LABEL_15:

  return v14;
}

- (void)onboardWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_opt_class();
  _HKInitializeLogging();
  v6 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_262078000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting to onboard feature, checking country code...", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  mobileCountryCodeManager = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource mobileCountryCodeManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke;
  v9[3] = &unk_279B0D568;
  v11[1] = v5;
  v8 = completionCopy;
  v9[4] = self;
  v10 = v8;
  objc_copyWeak(v11, buf);
  [mobileCountryCodeManager fetchMobileCountryCodeFromCellularWithCompletion:v9];

  objc_destroyWeak(v11);
  objc_destroyWeak(buf);
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogRespiratoryCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      v10 = [v5 ISOCode];
      *buf = 138543618;
      v34 = v9;
      v35 = 2114;
      v36 = v10;
      _os_log_impl(&dword_262078000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting current onboarding version completed for %{public}@...", buf, 0x16u);
    }

    v11 = [*(*(a1 + 32) + 8) featureAvailabilityProvider];
    v12 = [v5 ISOCode];
    v29 = 0;
    v13 = [v11 canCompleteOnboardingForCountryCode:v12 error:&v29];
    v14 = v29;

    if (v13)
    {
      if ([v13 BOOLValue])
      {
        v15 = [*(*(a1 + 32) + 8) featureAvailabilityProvider];
        v16 = [v5 ISOCode];
        v17 = [v5 provenance];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_3;
        v21[3] = &unk_279B0D540;
        v24[1] = *(a1 + 56);
        v22 = v5;
        objc_copyWeak(v24, (a1 + 48));
        v23 = *(a1 + 40);
        [v15 setCurrentOnboardingVersionCompletedForCountryCode:v16 countryCodeProvenance:v17 date:0 settings:0 completion:v21];

        objc_destroyWeak(v24);
        v18 = &v22;
LABEL_15:

        goto LABEL_16;
      }

      v20 = v25;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_2;
      v25[3] = &unk_279B0D4F0;
      v25[4] = v5;
      v26 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], v25);
    }

    else
    {
      _HKInitializeLogging();
      v19 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_cold_1(a1, v5);
      }

      v20 = v27;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_300;
      v27[3] = &unk_279B0D4F0;
      v27[4] = v5;
      v28 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], v27);
    }

    v18 = (v20 + 4);
    goto LABEL_15;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_cold_2(a1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_294;
  block[3] = &unk_279B0D4F0;
  v31 = v6;
  v32 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);

  v14 = v31;
LABEL_16:
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_294(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hk_error:109 description:@"country code not found" underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_300(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) ISOCode];
  v5 = [v2 stringWithFormat:@"Feature unavailable for country code %@ (error)", v3];

  v4 = [MEMORY[0x277CCA9B8] hk_error:110 description:v5];
  (*(*(a1 + 40) + 16))();
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) ISOCode];
  v5 = [v2 stringWithFormat:@"Feature unavailable for country code %@", v3];

  v4 = [MEMORY[0x277CCA9B8] hk_error:110 description:v5];
  (*(*(a1 + 40) + 16))();
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v8 = [v5 domain];
    v9 = *MEMORY[0x277CCBDB0];
    if ([v8 isEqualToString:*MEMORY[0x277CCBDB0]])
    {
      v10 = [v6 code];

      if (v10 == 115)
      {
        _HKInitializeLogging();
        v11 = HKLogRespiratoryCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 56);
          *buf = 138543362;
          v25 = v12;
          _os_log_impl(&dword_262078000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] The user has previously onboarded this feature, ignoring feature availability store error", buf, 0xCu);
        }

        v13 = 0;
        v7 = 1;
LABEL_18:

        v6 = v13;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v14 = v6;
    v15 = [v14 domain];
    if ([v15 isEqualToString:v9])
    {
      v16 = [v14 code];

      if (v16 == 3)
      {
        v13 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature unavailable" underlyingError:v14];

        _HKInitializeLogging();
        v6 = HKLogRespiratoryCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_3_cold_2(a1);
        }

        v7 = 0;
        goto LABEL_18;
      }
    }

    else
    {
    }

    _HKInitializeLogging();
    v6 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_3_cold_1();
    }

    v7 = 0;
    v13 = v14;
    goto LABEL_18;
  }

  v7 = 1;
LABEL_19:
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_311;
  v19[3] = &unk_279B0D518;
  objc_copyWeak(&v22, (a1 + 48));
  v17 = *(a1 + 40);
  v23 = v7;
  v20 = v6;
  v21 = v17;
  v18 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v19);

  objc_destroyWeak(&v22);
}

uint64_t __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_311(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained cacheCompletedOnboardingStateIfNeeded];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)cacheCompletedOnboardingStateIfNeeded
{
  OUTLINED_FUNCTION_3_0();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_currentDeviceHasCapability
{
  OUTLINED_FUNCTION_3_0();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)onboardingComplete
{
  OUTLINED_FUNCTION_3_0();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)bloodOxygenRemoteDisabled
{
  OUTLINED_FUNCTION_3_0();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 ISOCode];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_cold_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  v4 = 138543618;
  v5 = v1;
  OUTLINED_FUNCTION_2_0();
  v6 = v2;
  _os_log_error_impl(&dword_262078000, v3, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to onboard feature: %{public}@", &v4, 0x16u);
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [*(v0 + 32) ISOCode];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_3_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 32) ISOCode];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end