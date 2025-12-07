void sub_229487FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id HDHRBloodPressureJournalPredicateForState(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v5 = [v3 predicateWithProperty:@"c_log_state" value:v4 comparisonType:a2];

  return v5;
}

id OUTLINED_FUNCTION_2(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_22948C218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _SampleClassificationFromRow(uint64_t a1, uint64_t a2)
{
  v3 = HDSQLiteColumnWithNameAsUUID();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsDate();
  HDSQLiteColumnWithNameAsDouble();
  v7 = v6;
  v8 = HDSQLiteColumnWithNameAsString();
  v9 = v8;
  if (v3 && v5 && v8)
  {
    v10 = objc_alloc(MEMORY[0x277D12FF8]);
    v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 duration:v7];
    v12 = [MEMORY[0x277CBEBB0] timeZoneWithName:v9];
    v13 = [v10 initWithSampleUUID:v3 classification:v4 sampleDateInterval:v11 sampleTimeZone:v12];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a2 code:100 format:{@"Unexpectedly found missing values: sampleUUID(%@) date(%@) timeZoneString(%@)", v3, v5, v8}];
    v13 = 0;
  }

  return v13;
}

id HDHRSampleClassificationEntityPropertiesForModel()
{
  v2[5] = *MEMORY[0x277D85DE8];
  v2[0] = @"sample_uuid";
  v2[1] = @"classification";
  v2[2] = @"sample_start_date";
  v2[3] = @"sample_duration";
  v2[4] = @"sample_time_zone";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:5];

  return v0;
}

void sub_22948CBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LocalWatchDeviceSupportsCountryCode(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 currentOSVersion];

  v4 = v1;
  NRRawVersionFromString();
  v5 = HKAtrialFibrillationDetectionSupportedStateForGeolocatedCountryCodeAndWatchOSVersion();

  return (v5 < 5) & (3u >> v5);
}

uint64_t _PairedWatchDeviceSupportsCountryCode(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 valueForProperty:*MEMORY[0x277D2BC20]];
  if (v4)
  {
    v5 = v3;
    NRRawVersionFromString();
    v6 = HKAtrialFibrillationDetectionSupportedStateForGeolocatedCountryCodeAndWatchOSVersion();

    if (v6 <= 4)
    {
      v7 = 3u >> v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      _PairedWatchDeviceSupportsCountryCode_cold_1(v8);
    }

    v7 = 0;
  }

  return v7 & 1;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2)
{

  return objc_opt_class();
}

id OUTLINED_FUNCTION_6(id a1)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2)
{

  return objc_opt_class();
}

void sub_22948FCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22948FEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2294900F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22949030C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229490494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _BPJournalScheduleIntervalPredicateForOwnerID(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v3 = [v1 predicateWithProperty:@"c_log_id" equalToValue:v2];

  return v3;
}

void sub_229491FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id HRHeartHealthDaemonBundle(uint64_t a1)
{
  if (HRHeartHealthDaemonBundle_onceToken != -1)
  {
    HRHeartHealthDaemonBundle_cold_1();
  }

  v2 = HRHeartHealthDaemonBundle_bundle;

  return v2;
}

uint64_t __HRHeartHealthDaemonBundle_block_invoke(uint64_t a1, uint64_t a2)
{
  HRHeartHealthDaemonBundle_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id HRLocalizedStringWithKey(void *a1)
{
  v1 = a1;
  v2 = HRHeartHealthDaemonBundle(v1);
  v3 = [v2 localizedStringForKey:v1 value:&stru_283CC4740 table:@"Localizable-Antimony"];

  return v3;
}

id HRLogSensitiveClassName(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [MEMORY[0x277CCDD30] sharedBehavior];
  v5 = [v4 showSensitiveLogItems];

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v7 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
    v8 = [v3 componentsSeparatedByCharactersInSet:v7];
    v6 = [v8 componentsJoinedByString:&stru_283CC4740];
  }

  return v6;
}

void OUTLINED_FUNCTION_3_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

__CFString *HDHRBloodPressureClassificationAnalyticsString(void *a1)
{
  v1 = a1;
  if (*MEMORY[0x277CCB8B8] == v1)
  {
    v2 = @"Normal";
  }

  else if (*MEMORY[0x277CCB898] == v1)
  {
    v2 = @"Elevated";
  }

  else if (*MEMORY[0x277CCB8A0] == v1)
  {
    v2 = @"High BP Stage 1";
  }

  else if (*MEMORY[0x277CCB8A8] == v1)
  {
    v2 = @"High BP Stage 2";
  }

  else if (*MEMORY[0x277CCB8B0] == v1)
  {
    v2 = @"Hypertensive Crisis";
  }

  else
  {
    v2 = @"(Unexpected classification)";
  }

  return v2;
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x2Au);
}

void sub_229498998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HKHRElectrocardiogramRecordingV1AllowedCountrySet()
{
  v24 = *MEMORY[0x277D85DE8];
  v0 = HKElectrocardiogramSupportedCountries();
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 isAppleWatch];

  if (v3)
  {
    v4 = [MEMORY[0x277CCDD30] sharedBehavior];
    [v4 isRunningSeedBuild];

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v5 = [MEMORY[0x277CCDD30] sharedBehavior];
    v6 = v5;
    if (v5)
    {
      objc_msgSend_currentOSVersionStruct(v5);
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v0;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndWatchOSVersion() <= 1)
          {
            [v1 addObject:{v13, v16}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = [v0 allObjects];
    [v1 addObjectsFromArray:v7];
  }

  v14 = [objc_alloc(MEMORY[0x277CCD260]) initWithSupportedCountryCodes:v1 contentVersion:1 provenance:3];

  return v14;
}

HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *HKHRElectrocardiogramRecordingV2FeatureAvailabilityProvider(void *a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v10 = a1;
  v11 = a2;
  v39 = a3;
  v12 = a4;
  v13 = a5;
  v14 = *MEMORY[0x277CCC020];
  if (!v11)
  {
    v15 = objc_alloc(MEMORY[0x277D10728]);
    v16 = [MEMORY[0x277CCD260] localAvailabilityForElectrocardiogramV2Recording];
    v17 = [v10 daemon];
    v18 = [v15 initWithFeatureIdentifier:v14 defaultCountrySet:v16 healthDaemon:v17];

    v19 = objc_alloc(MEMORY[0x277D107D8]);
    v20 = [MEMORY[0x277CCD3D8] featureAttributesDerivedFromOSBuildAndFeatureVersion:@"2" watchDeviceIdentifier:@"(01)00190199649286" phoneDeviceIdentifier:@"(01)00190199649293"];
    v11 = [v19 initWithFeatureIdentifier:v14 localFeatureAttributes:v20 localCountrySetAvailabilityProvider:v18];
  }

  if ([v10 profileType] == 1)
  {
    [v11 synchronizeLocalProperties];
  }

  v21 = [MEMORY[0x277CCDD30] sharedBehavior];
  v22 = [v21 isAppleWatch];

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"68AB2987-CE75-463C-9EAF-9861B292F01E"];
  }

  v24 = [HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider alloc];
  v25 = [v10 daemon];
  v26 = [v25 nanoRegistryDeviceCapabilityProvider];
  v27 = [(HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider *)v24 initWithPairedFeatureAttributesProvider:v11 pairedDeviceCapabilityProvider:v26];

  v28 = v27;
  if (!v12)
  {
    if (a6)
    {
      v29 = objc_alloc(MEMORY[0x277D10728]);
      v30 = [MEMORY[0x277CCD260] localAvailabilityForElectrocardiogramV2Recording];
      v31 = [v10 daemon];
      v12 = [v29 initWithFeatureIdentifier:v14 defaultCountrySet:v30 healthDaemon:v31];
    }

    else
    {
      v32 = objc_alloc(MEMORY[0x277D10968]);
      v12 = [v32 initWithAllowedCountriesDataSource:v11 profile:v10 featureCapability:v23 loggingCategory:*MEMORY[0x277CCC2D8]];
    }
  }

  v33 = objc_alloc_init(HDHRElectrocardiogramV2DeviceSupportedStateProvider);
  v34 = [HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager alloc];
  v35 = [MEMORY[0x277D12FD0] requirementSetV2];
  LOBYTE(v38) = a6;
  v36 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)v34 initWithProfile:v10 featureIdentifier:v14 onboardingVersion:4 pairedFeatureAttributesProvider:v28 disableAndExpiryProvider:v39 regionAvailabilityProvider:v12 deviceSupportedProvider:v33 availabilityRequirementSet:v35 cacheDefaults:v13 isStandalone:v38];

  return v36;
}

HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *HKHRElectrocardiogramRecordingV1FeatureAvailabilityProvider(void *a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v11 = a1;
  v12 = a2;
  v40 = a3;
  v41 = a4;
  v39 = a5;
  v13 = *MEMORY[0x277CCC018];
  if (!v12)
  {
    v14 = objc_alloc(MEMORY[0x277D10728]);
    v15 = HKHRElectrocardiogramRecordingV1AllowedCountrySet();
    v16 = [v11 daemon];
    v17 = [v14 initWithFeatureIdentifier:v13 defaultCountrySet:v15 healthDaemon:v16];

    v18 = objc_alloc(MEMORY[0x277D107D8]);
    v19 = [MEMORY[0x277CCD3D8] featureAttributesDerivedFromOSBuildAndFeatureVersion:@"1" watchDeviceIdentifier:*MEMORY[0x277CCBD00] phoneDeviceIdentifier:*MEMORY[0x277CCBCF8]];
    v12 = [v18 initWithFeatureIdentifier:v13 localFeatureAttributes:v19 localCountrySetAvailabilityProvider:v17];
  }

  if ([v11 profileType] == 1)
  {
    [v12 synchronizeLocalProperties];
  }

  v20 = [MEMORY[0x277CCDD30] sharedBehavior];
  v21 = [v20 isAppleWatch];

  v22 = a6;
  if (v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"68AB2987-CE75-463C-9EAF-9861B292F01E"];
  }

  v24 = v13;
  v25 = [v11 daemon];
  v26 = [v25 nanoRegistryDeviceCapabilityProvider];

  v27 = [[HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider alloc] initWithPairedFeatureAttributesProvider:v12 pairedDeviceCapabilityProvider:v26];
  if (!v41)
  {
    if (v22)
    {
      v28 = objc_alloc(MEMORY[0x277D10728]);
      v29 = HKHRElectrocardiogramRecordingV1AllowedCountrySet();
      v30 = [v11 daemon];
      v41 = [v28 initWithFeatureIdentifier:v24 defaultCountrySet:v29 healthDaemon:v30];
    }

    else
    {
      v31 = objc_alloc(MEMORY[0x277D10968]);
      v29 = [v31 initWithAllowedCountriesDataSource:v12 profile:v11 featureCapability:v23 loggingCategory:*MEMORY[0x277CCC2D8]];
      v41 = [[HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider alloc] initWithRegionAvailabilityProvider:v29 pairedDeviceCapabilityProvider:v26];
    }
  }

  v32 = objc_alloc_init(HDHRElectrocardiogramV1DeviceSupportedStateProvider);
  v33 = [HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager alloc];
  [MEMORY[0x277CCD420] noRequirements];
  v35 = v34 = v23;
  LOBYTE(v37) = v22;
  v38 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)v33 initWithProfile:v11 featureIdentifier:v24 onboardingVersion:3 pairedFeatureAttributesProvider:v27 disableAndExpiryProvider:v40 regionAvailabilityProvider:v41 deviceSupportedProvider:v32 availabilityRequirementSet:v35 cacheDefaults:v39 isStandalone:v37];

  return v38;
}

id HKHRCachedActiveECGAlgorithmVersionInUserDefaults(void *a1)
{
  v1 = [a1 objectForKey:*MEMORY[0x277CCBCF0]];
  v2 = v1;
  if (v1 && [v1 integerValue] >= 1)
  {
    v3 = [v2 integerValue];
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(MEMORY[0x277CCD380], "algorithmVersionForOnboardingVersion:", v3)}];
    v5 = v4;
    if (v4 && [v4 integerValue] >= 1 && (v6 = objc_msgSend(v5, "integerValue"), v6 < *MEMORY[0x277CCDEA0]))
    {
      v7 = [v5 stringValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t HKHRCountForSampleWithTypeSinceDate(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x277D10848];
  v7 = a2;
  v8 = a1;
  v9 = HDSampleEntityPredicateForStartDate();
  v14 = 0;
  v10 = [v6 countOfSamplesWithType:v7 profile:v8 matchingPredicate:v9 withError:&v14];

  v11 = v14;
  if (v11)
  {
    if (a4)
    {
      v12 = v11;
      *a4 = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v10;
}

id HKHRAtrialFibrillationEventMinutesBetweenLastSampleAndDate(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x277CCD720];
  v7 = a1;
  v8 = [v6 atrialFibrillationEventType];
  v19 = 0;
  v9 = [MEMORY[0x277D10848] mostRecentSampleWithType:v8 profile:v7 encodingOptions:0 predicate:0 anchor:0 error:&v19];

  v10 = v19;
  v11 = v10;
  if (v9)
  {
    v12 = [v9 endDate];
    [v5 timeIntervalSinceDate:v12];
    v14 = v13 / 60;

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  }

  else
  {
    v16 = v10;
    if (v16)
    {
      if (a3)
      {
        v17 = v16;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v15 = 0;
  }

  return v15;
}

uint64_t HKHRElectrocardiogramAnalyticsBucketForSampleCount(unint64_t a1)
{
  v1 = 1;
  v2 = 6;
  if (a1 < 6)
  {
    v2 = 3;
  }

  if (a1 >= 3)
  {
    v1 = v2;
  }

  if (a1 >= 1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *HKHRAtrialFibrillationEventAnalyticsMinutesBucket(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 integerValue] >= 181)
    {
      v3 = &unk_283CD2728;
    }

    else
    {
      v3 = &unk_283CD2710;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *NSStringFromHKElectPrivaterocardiogramSymptom(uint64_t a1)
{
  v1 = @"RapidPoundingOrFlutteringHeartbeat";
  v2 = @"ShortnessOfBreath";
  v3 = @"SkippedHeartbeat";
  if (a1 != 512)
  {
    v3 = 0;
  }

  if (a1 != 256)
  {
    v2 = v3;
  }

  if (a1 != 128)
  {
    v1 = v2;
  }

  v4 = @"Other";
  if (a1 != 64)
  {
    v4 = 0;
  }

  if (a1 == 16)
  {
    v4 = @"Fainting";
  }

  if (a1 <= 127)
  {
    v1 = v4;
  }

  v5 = @"Dizziness";
  v6 = @"Fatigue";
  if (a1 != 8)
  {
    v6 = 0;
  }

  if (a1 != 4)
  {
    v5 = v6;
  }

  v7 = @"ChestTightnessOrPain";
  if (a1 != 2)
  {
    v7 = 0;
  }

  if (a1 == 1)
  {
    v7 = @"NoSymptoms";
  }

  if (a1 <= 3)
  {
    v5 = v7;
  }

  if (a1 <= 15)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  _os_log_error_impl(a1, v26, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

void sub_22949F07C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_2294A11F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2294A28C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_2294A9818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HDHRIrregularRhythmNotificationsV2PairedFeaturePropertiesSyncManager(void *a1)
{
  v1 = *MEMORY[0x277CCC080];
  v2 = MEMORY[0x277D10728];
  v3 = a1;
  v4 = [v2 alloc];
  v5 = [MEMORY[0x277CCD260] localAvailabilityForIrregularRhythmNotificationsV2];
  v6 = [v4 initWithFeatureIdentifier:v1 defaultCountrySet:v5 healthDaemon:v3];

  v7 = objc_alloc(MEMORY[0x277D107D8]);
  v8 = [MEMORY[0x277CCD3D8] featureAttributesDerivedFromOSBuildAndFeatureVersion:@"2" watchDeviceIdentifier:@"(01)00194252456774" phoneDeviceIdentifier:@"(01)00194252456781"];
  v9 = [v7 initWithFeatureIdentifier:v1 localFeatureAttributes:v8 localCountrySetAvailabilityProvider:v6];

  return v9;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2294B0198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2294B148C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

id HDHRBackgroundHeartRateContextPredicate(void *a1)
{
  v1 = [a1 metadataManager];
  v2 = *MEMORY[0x277CCE030];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283CD2B18, 0}];
  v4 = [v1 predicateWithMetadataKey:v2 allowedValues:v3];

  return v4;
}

id HDHRAnalyticsCountOfSamples(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = HDAnalyticsCountOfSamples();
  v6 = 0;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogAnalytics();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      HDHRAnalyticsCountOfSamples_cold_1(v4, v6, v8);
    }

    v7 = &unk_283CD2B30;
  }

  return v7;
}

void sub_2294B6464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HDStringFromHeartRateWidgetDataManagerReloadReason(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%d)", a1];
  }

  else
  {
    v2 = off_278660A48[a1];
  }

  return v2;
}

void sub_2294BBDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

id _heartbeatSeriesDataForPulseTimes(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB28] dataWithCapacity:{16 * objc_msgSend(v1, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * i) doubleValue];
        HKHeartbeatSeriesAppendDatum();
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t ___aFibHeartbeatSeriesData_block_invoke()
{
  _aFibHeartbeatSeriesData___aFibHeartbeatSeriesData = _heartbeatSeriesDataForPulseTimes(&unk_283CD3460);

  return MEMORY[0x2821F96F8]();
}

uint64_t ___nonAFibHeartbeatSeriesData_block_invoke()
{
  _nonAFibHeartbeatSeriesData___nonAFibHeartbeatSeriesData = _heartbeatSeriesDataForPulseTimes(&unk_283CD3478);

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2294C0818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_1_10(id a1)
{

  return a1;
}

id OUTLINED_FUNCTION_3_4(id a1)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2)
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void sub_2294C3588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id bloodPressureSystolicDiastolicSampleUUIDsFromCodableObjectCollection(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = v1;
  v3 = [v1 quantitySamples];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = MEMORY[0x277CCAD78];
        v9 = [*(*(&v15 + 1) + 8 * i) sample];
        v10 = [v9 object];
        v11 = [v10 uuid];
        v12 = [v8 hk_UUIDWithData:v11];
        [v2 hk_addNonNilObject:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v2;
}

id correlationSampleUUIDsFromCodableObjectCollection(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = v1;
  v3 = [v1 correlations];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = MEMORY[0x277CCAD78];
        v9 = [*(*(&v15 + 1) + 8 * i) sample];
        v10 = [v9 object];
        v11 = [v10 uuid];
        v12 = [v8 hk_UUIDWithData:v11];
        [v2 hk_addNonNilObject:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_2294C799C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double HDHRHypertensionNotificationsAnalysisWindowIntervalRespectingOverride()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCDD30] sharedBehavior];
  v1 = [v0 isAppleInternalInstall];

  if (!v1)
  {
    return 2592000.0;
  }

  v2 = [MEMORY[0x277CBEBD0] hkhr_hypertensionNotificationsDefaults];
  v3 = [v2 objectForKey:@"AnalysisWindowIntervalOverride"];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
    _HKInitializeLogging();
    v7 = HKLogHeartRateCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6 > 0.0)
    {
      if (v8)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "!!! [HDHRHypertensionNotificationsAnalysisScheduler] Using overriden scheduler analysis window interval: %@", &v12, 0xCu);
      }
    }

    else
    {
      if (v8)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[HDHRHypertensionNotificationsAnalysisScheduler] Overriden scheduler analysis window interval is %@, which is equal or less than zero, returning default value", &v12, 0xCu);
      }

      v6 = 2592000.0;
    }
  }

  else
  {
    v6 = 2592000.0;
  }

  return v6;
}

double HDHRHypertensionNotificationsAnalysisWindowGraceIntervalRespectingOverride()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCDD30] sharedBehavior];
  v1 = [v0 isAppleInternalInstall];

  if (!v1)
  {
    return 86400.0;
  }

  v2 = [MEMORY[0x277CBEBD0] hkhr_hypertensionNotificationsDefaults];
  v3 = [v2 objectForKey:@"AnalysisWindowGraceIntervalOverride"];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
    _HKInitializeLogging();
    v7 = HKLogHeartRateCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6 >= 0.0)
    {
      if (v8)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "!!! [HDHRHypertensionNotificationsAnalysisScheduler] Using overriden scheduler analysis window grace interval: %@", &v12, 0xCu);
      }
    }

    else
    {
      if (v8)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[HDHRHypertensionNotificationsAnalysisScheduler] Overriden scheduler analysis window grace interval is %@, which is equal or less than zero, returning default value", &v12, 0xCu);
      }

      v6 = 86400.0;
    }
  }

  else
  {
    v6 = 86400.0;
  }

  return v6;
}

double HDHRHypertensionNotificationsAnalysisCadenceIntervalRespectingOverride()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCDD30] sharedBehavior];
  v1 = [v0 isAppleInternalInstall];

  if (!v1)
  {
    return 86400.0;
  }

  v2 = [MEMORY[0x277CBEBD0] hkhr_hypertensionNotificationsDefaults];
  v3 = [v2 objectForKey:@"AnalysisCadenceIntervalOverride"];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
    _HKInitializeLogging();
    v7 = HKLogHeartRateCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6 >= 360.0)
    {
      if (v8)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "!!! [HDHRHypertensionNotificationsAnalysisScheduler] Using overriden scheduler analysis cadence interval: %@", &v12, 0xCu);
      }
    }

    else
    {
      if (v8)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[HDHRHypertensionNotificationsAnalysisScheduler] Overriden scheduler analysis cadence interval is %@, which is equal or less than zero, returning default value", &v12, 0xCu);
      }

      v6 = 86400.0;
    }
  }

  else
  {
    v6 = 86400.0;
  }

  return v6;
}

double HDHRHypertensionNotificationsAnalysisSchedulerRetryIntervalRespectingOverride()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCDD30] sharedBehavior];
  v1 = [v0 isAppleInternalInstall];

  if (!v1)
  {
    return *MEMORY[0x277D862A0];
  }

  v2 = [MEMORY[0x277CBEBD0] hkhr_hypertensionNotificationsDefaults];
  v3 = [v2 objectForKey:@"AnalysisSchedulerRetryIntervalOverride"];
  v4 = v3;
  if (!v3)
  {
LABEL_7:

    return *MEMORY[0x277D862A0];
  }

  [v3 doubleValue];
  v6 = v5;
  _HKInitializeLogging();
  v7 = HKLogHeartRateCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 < 360.0)
  {
    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[HDHRHypertensionNotificationsAnalysisScheduler] Using scheduler retry interval: %@", &v12, 0xCu);
    }

    goto LABEL_7;
  }

  if (v8)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "!!! [HDHRHypertensionNotificationsAnalysisScheduler] Using overriden scheduler retry interval: %@", &v12, 0xCu);
  }

  return v6;
}

id HDHRHypertensionNotificationsAnalysisResultForceHypertensionOverride()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCDD30] sharedBehavior];
  v1 = [v0 isAppleInternalInstall];

  if (v1)
  {
    v2 = [MEMORY[0x277CBEBD0] hkhr_hypertensionNotificationsDefaults];
    v3 = [v2 objectForKey:@"AnalysisResultForceHypertensionOverride"];
    if (v3)
    {
      _HKInitializeLogging();
      v4 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = v3;
        _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "!!! [HDHRHypertensionMeasurementAnalyzer] Overriding analyzer result, should force hypertension: %@", &v6, 0xCu);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id HDHRHypertensionNotificationRequestForEvent(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HYPERTENSION_NOTIFICATION_TITLE" value:&stru_283CC4740 table:@"Localizable-Hermit"];
  [v2 setTitle:v4];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HYPERTENSION_NOTIFICATION_BODY" value:&stru_283CC4740 table:@"Localizable-Hermit"];
  [v2 setBody:v6];

  [v2 setCategoryIdentifier:*MEMORY[0x277D13040]];
  [v2 setThreadIdentifier:*MEMORY[0x277D13030]];
  v7 = [MEMORY[0x277CE1FE0] soundWithAlertType:25];
  [v2 setSound:v7];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:&unk_283CD3298 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  if (v1)
  {
    v9 = [v1 UUID];
    v10 = [v9 UUIDString];

    v11 = [v1 UUID];
    v12 = [v11 UUIDString];
    v13 = HKHRHypertensionEventSampleDetailsLink();
    v14 = [v13 absoluteString];
    [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCE4E0]];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v10 = [v11 UUIDString];
  }

  [v2 setUserInfo:v8];
  v15 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v10 content:v2 trigger:0];

  return v15;
}

uint64_t _HDDropHeartCLogTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CD3508 error:a4];

  return a4 ^ 1;
}

uint64_t _HDAddHeartCLogTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CD3520 error:a4];

  return a4 ^ 1;
}

void sub_2294CA6E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2294CA908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2294CC504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2294CC714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2294D063C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2294D0874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2294D1978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2294D1FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2294D2C58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_5_3()
{

  return objc_loadWeakRetained((v0 + 32));
}

void sub_2294D55D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2294D6290(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_2294D6BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v49 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_2294D71A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 192), 8);
  _Block_object_dispose((v32 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_2294D761C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_5_4(id a1, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;

  return a1;
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_8(uint64_t a1, void *a2)
{

  return a2;
}

void sub_2294D7F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2294D8208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2294D9754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HDMigrateHeartRateNotificationsUserDefaultsIfNecessary(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 integerForKey:@"MigrationVersion"];
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = &unk_283CD3418;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[Migration] Migrating if necessary from version %{public}@ to %{public}@", &v10, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (!v2)
  {
    v6 = v1;
    if (([v6 BOOLForKey:*MEMORY[0x277CCE438]] & 1) != 0 || objc_msgSend(v6, "BOOLForKey:", *MEMORY[0x277CCE448]))
    {
      HKHRSubmitNotificationsEnabledSignal();
    }

    [v6 setInteger:1 forKey:@"MigrationVersion"];
    v7 = [MEMORY[0x277CBEB98] setWithObject:@"MigrationVersion"];

    [v5 unionSet:v7];
  }

  v8 = [v5 copy];

  return v8;
}

void sub_2294E15CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2294E1CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2294E2CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2294E3418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2294E4C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 248), 8);
  _Block_object_dispose((v29 - 216), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _PairedWatchDeviceSupportsCountryCode_cold_1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_7(v2, v3);
  OUTLINED_FUNCTION_2_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0(&dword_229486000, v6, v7, "[%{public}@] Watch version is nil", v8, v9, v10, v11);
}

void HDHRAnalyticsCountOfSamples_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "Could not get count of samples of type %{public}@ with error: %{public}@", &v3, 0x16u);
}