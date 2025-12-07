uint64_t HKRPShouldSkipHardwareCheck()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"HKRPSkipHardwareCheck"];

  return v1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, ...)
{
  va_start(va, a13);
  a9 = 0u;
  a10 = 0u;
  a11 = 0u;
  a12 = 0u;

  return [a1 countByEnumeratingWithState:&a9 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return [v17 countByEnumeratingWithState:&a9 objects:va count:{16, a6, a7, a8}];
}

BOOL OUTLINED_FUNCTION_6(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_7()
{

  return _HKInitializeLogging();
}

id HKRPOxygenSaturationFeatureAvailabilityRequirements()
{
  v42[10] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCC0B0];
  v29 = objc_alloc(MEMORY[0x277CCD420]);
  v40[0] = *MEMORY[0x277CCBE00];
  v36 = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v39[0] = v36;
  v35 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v39[1] = v35;
  v1 = *MEMORY[0x277CCC230];
  v34 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC230]];
  v39[2] = v34;
  v33 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v0];
  v39[3] = v33;
  v32 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v0];
  v39[4] = v32;
  v31 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v0 isSupportedIfCountryListMissing:0];
  v39[5] = v31;
  v30 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v39[6] = v30;
  v28 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v39[7] = v28;
  v27 = [MEMORY[0x277CCD428] activeWatchIsNotUnderInternalDevelopmentImportExclusionForFeatureWithIdentifier:v0];
  v39[8] = v27;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:9];
  v41[0] = v26;
  v40[1] = *MEMORY[0x277CCBE08];
  v25 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v0 supportedOnLocalDevice:MGGetBoolAnswer()];
  v38[0] = v25;
  v24 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v38[1] = v24;
  v2 = *MEMORY[0x277CCC0B8];
  v23 = [MEMORY[0x277CCD428] mutuallyExclusiveFeatureIsOffWithIdentifier:*MEMORY[0x277CCC0B8]];
  v38[2] = v23;
  v22 = [MEMORY[0x277CCD428] currentCountryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v38[3] = v22;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
  v41[1] = v21;
  v40[2] = *MEMORY[0x277CCBE78];
  v20 = HKRPUsageRequirementsForFeatureIdentifier(v0);
  v37[0] = v20;
  v19 = [MEMORY[0x277CCD428] mutuallyExclusiveFeatureIsOffWithIdentifier:v2];
  v37[1] = v19;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v41[2] = v18;
  v40[3] = *MEMORY[0x277CCBEA0];
  v17 = HKRPUsageRequirementsForFeatureIdentifier(v0);
  v41[3] = v17;
  v40[4] = *MEMORY[0x277CCBDF8];
  v16 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v0];
  v42[0] = v16;
  v15 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v42[1] = v15;
  v3 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v42[2] = v3;
  v4 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v0];
  v42[3] = v4;
  v5 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v0];
  v42[4] = v5;
  v6 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v0 isSupportedIfCountryListMissing:0];
  v42[5] = v6;
  v7 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v42[6] = v7;
  v8 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v1];
  v42[7] = v8;
  v9 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v42[8] = v9;
  v10 = [MEMORY[0x277CCD428] bloodOxygenRecordingsAreEnabled];
  v42[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:10];

  v41[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:5];
  v13 = [v29 initWithRequirementsByContext:v12];

  return v13;
}

id HKRPUsageRequirementsForFeatureIdentifier(void *a1)
{
  v16[11] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCD428];
  v2 = a1;
  v15 = [v1 profileIsNotFamilySetupPairingProfile];
  v16[0] = v15;
  v14 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC230]];
  v16[1] = v14;
  v3 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v2];
  v16[2] = v3;
  v4 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v2 supportedOnLocalDevice:MGGetBoolAnswer()];
  v16[3] = v4;
  v5 = [MEMORY[0x277CCD428] bloodOxygenRecordingsAreEnabled];
  v16[4] = v5;
  v6 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v2];
  v16[5] = v6;
  v7 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2 isSupportedIfCountryListMissing:0];
  v16[6] = v7;
  v8 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v2];
  v16[7] = v8;
  v9 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v2];
  v16[8] = v9;
  v10 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v16[9] = v10;
  v11 = [MEMORY[0x277CCD428] activeWatchIsNotUnderInternalDevelopmentImportExclusionForFeatureWithIdentifier:v2];

  v16[10] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:11];

  return v12;
}

id HKRPOxygenSaturationRecordingCompanionAnalysisFeatureAvailabilityRequirements()
{
  v13[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCC0B8];
  v1 = objc_alloc(MEMORY[0x277CCD420]);
  v2 = *MEMORY[0x277CCBEA0];
  v12[0] = *MEMORY[0x277CCBE20];
  v12[1] = v2;
  v13[0] = MEMORY[0x277CBEBF8];
  v3 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v0];
  v11[0] = v3;
  v4 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v0];
  v11[1] = v4;
  v5 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v0];
  v11[2] = v5;
  v6 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [v1 initWithRequirementsByContext:v8];

  return v9;
}

void sub_26207BF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_1_0(id a1)
{

  return a1;
}

id HKRPLocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_28749AF10 table:0];

  return v4;
}

id HKRPCompanionAnalysisLocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_28749AF10 table:@"Localizable-Windbreaker"];

  return v4;
}

__CFString *HKRPStringFromHKRPOxygenSaturationSessionEndReason(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Completed";
  }

  else
  {
    return off_279B0D5E0[a1 - 1];
  }
}

uint64_t HKRPShouldSkipRegionCheck()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"HKRPSkipRegionCheck"];

  return v1;
}

uint64_t HKRPShouldSkipOnboardingCompletedCheck()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"HKRPSkipOnboardingCompletedCheck"];

  return v1;
}

uint64_t HKRPShouldInstallOxygenSaturationWatchAppOnPairedWatch(void *a1)
{
  v1 = a1;
  v2 = [[HKRPWatchAppInstallability alloc] initWithDevice:v1];

  v3 = [(HKRPWatchAppInstallability *)v2 shouldInstallWatchApp];
  return v3;
}

uint64_t sub_26207E37C()
{
  v0 = sub_26207F5B0();
  __swift_allocate_value_buffer(v0, qword_27FF08378);
  __swift_project_value_buffer(v0, qword_27FF08378);
  return sub_26207F5A0();
}

uint64_t static Logger.bloodOxygen.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF08370 != -1)
  {
    swift_once();
  }

  v2 = sub_26207F5B0();
  v3 = __swift_project_value_buffer(v2, qword_27FF08378);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}