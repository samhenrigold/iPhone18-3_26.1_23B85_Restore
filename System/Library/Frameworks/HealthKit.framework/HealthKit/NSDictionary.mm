@interface NSDictionary
@end

@implementation NSDictionary

uint64_t __59__NSDictionary_HKMetadata__hk_acceptedMetadataValueClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v0 setWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];
  v6 = hk_acceptedMetadataValueClasses_valueClasses;
  hk_acceptedMetadataValueClasses_valueClasses = v5;

  return MEMORY[0x1EEE66BB8](v5, v6);
}

void __50__NSDictionary_HKMetadata__hk_secureCodingClasses__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) hk_acceptedMetadataValueClasses];
  v1 = [v3 setByAddingObject:objc_opt_class()];
  v2 = hk_secureCodingClasses___secureCodingClasses;
  hk_secureCodingClasses___secureCodingClasses = v1;
}

void __56__NSDictionary_HealthKit__hk_filteredDictionaryForKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void __37__NSDictionary_HealthKit__hk_filter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void __34__NSDictionary_HealthKit__hk_map___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__NSDictionary_HealthKit__hk_map___block_invoke_2;
  v6[3] = &unk_1E7379968;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  (*(v5 + 16))(v5, a2, a3, v6);
}

id *__34__NSDictionary_HealthKit__hk_map___block_invoke_2(id *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return [result[4] setObject:a3 forKeyedSubscript:a2];
    }
  }

  return result;
}

void __121__NSDictionary_HKMetadata__hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys_applicationSDKVersionToken_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if ([MEMORY[0x1E695DF20] hk_acceptsMetadataValue:v8 allowPrivateMetadata:*(a1 + 64)])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((*(a1 + 64) & 1) != 0 || (_HKMetadataKeyIsPrivate(v7, v9) & 1) == 0 && !_HKMetadataKeyIsReadOnly(v7)))
    {
      v10 = *(a1 + 56);
      v11 = *(a1 + 32);
      v12 = *(*(a1 + 40) + 8);
      obj = *(v12 + 40);
      v13 = [v11 _hk_validateMetadataValueContent:v8 forKey:v7 applicationSDKVersionToken:v10 error:&obj];
      objc_storeStrong((v12 + 40), obj);
      if (v13)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 48) format:{@"Invalid metadata key: %@", v7, v17}];
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 48) format:{@"Invalid metadata value: %@, for key: %@", v8, v7}];
  }
  v14 = ;
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

LABEL_11:
  *a4 = 1;
LABEL_12:
}

uint64_t __65__NSDictionary_HKMetadata__hk_acceptedPublicMetadataValueClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [v0 setWithObjects:{v1, v2, v3, objc_opt_class(), 0}];
  v5 = hk_acceptedPublicMetadataValueClasses_valueClasses;
  hk_acceptedPublicMetadataValueClasses_valueClasses = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

void __78__NSDictionary_HKMetadata___hk_validateMetadataBaseValueContent_forKey_error___block_invoke()
{
  v3[52] = *MEMORY[0x1E69E9840];
  v2[0] = @"_HKPrivateCoreMotionSourceIdentifier";
  v3[0] = objc_opt_class();
  v2[1] = @"_HKPrivateFallActionRequested";
  v3[1] = objc_opt_class();
  v2[2] = @"_HKPrivateHeartRateContext";
  v3[2] = objc_opt_class();
  v2[3] = @"_HKPrivateMetadataKeyInternalLiveOnAlgorithmVersion";
  v3[3] = objc_opt_class();
  v2[4] = @"_HKPrivateMetadataKeySkinSurfaceTemperature";
  v3[4] = objc_opt_class();
  v2[5] = @"HKActivityType";
  v3[5] = objc_opt_class();
  v2[6] = @"HKMetadataKeyAppleFitnessPlusCatalogIdentifier";
  v3[6] = objc_opt_class();
  v2[7] = @"HKMetadataKeyAppleFitnessPlusSession";
  v3[7] = objc_opt_class();
  v2[8] = @"HKBloodGlucoseMealTime";
  v3[8] = objc_opt_class();
  v2[9] = @"HKBodyTemperatureSensorLocation";
  v3[9] = objc_opt_class();
  v2[10] = @"HKCoachedWorkout";
  v3[10] = objc_opt_class();
  v2[11] = @"HKCyclingCyclingFunctionalThresholdPowerTestType";
  v3[11] = objc_opt_class();
  v2[12] = @"HKDeviceManufacturerName";
  v3[12] = objc_opt_class();
  v2[13] = @"HKDeviceName";
  v3[13] = objc_opt_class();
  v2[14] = @"HKDeviceSerialNumber";
  v3[14] = objc_opt_class();
  v2[15] = @"HKDigitalSignature";
  v3[15] = objc_opt_class();
  v2[16] = @"HKExternalUUID";
  v3[16] = objc_opt_class();
  v2[17] = @"HKFoodType";
  v3[17] = objc_opt_class();
  v2[18] = @"HKGroupFitness";
  v3[18] = objc_opt_class();
  v2[19] = @"HKHeartRateEventThreshold";
  v3[19] = objc_opt_class();
  v2[20] = @"HKMetadataKeyHeartRateMotionContext";
  v3[20] = objc_opt_class();
  v2[21] = @"HKMetadataKeyHeartRateRecoveryActivityDuration";
  v3[21] = objc_opt_class();
  v2[22] = @"HKMetadataKeyHeartRateRecoveryActivityType";
  v3[22] = objc_opt_class();
  v2[23] = @"HKMetadataKeyHeartRateRecoveryMaxObservedRecoveryHeartRate";
  v3[23] = objc_opt_class();
  v2[24] = @"HKMetadataKeyHeartRateRecoveryTestType";
  v3[24] = objc_opt_class();
  v2[25] = @"HKHeartRateSensorLocation";
  v3[25] = objc_opt_class();
  v2[26] = @"HKIndoorWorkout";
  v3[26] = objc_opt_class();
  v2[27] = @"HKInsulinDeliveryReason";
  v3[27] = objc_opt_class();
  v2[28] = @"HKLapLength";
  v3[28] = objc_opt_class();
  v2[29] = @"HKMetadataKeyMaximumLightIntensity";
  v3[29] = objc_opt_class();
  v2[30] = @"HKMenstrualCycleStart";
  v3[30] = objc_opt_class();
  v2[31] = @"HKPhysicalEffortEstimationType";
  v3[31] = objc_opt_class();
  v2[32] = @"HKMetadataKeyQuantityClampedToLowerBound";
  v3[32] = objc_opt_class();
  v2[33] = @"HKMetadataKeyQuantityClampedToUpperBound";
  v3[33] = objc_opt_class();
  v2[34] = @"HKReferenceRangeLowerLimit";
  v3[34] = objc_opt_class();
  v2[35] = @"HKReferenceRangeUpperLimit";
  v3[35] = objc_opt_class();
  v2[36] = @"HKMetadataKeySessionEstimate";
  v3[36] = objc_opt_class();
  v2[37] = @"HKSwimmingLocationType";
  v3[37] = objc_opt_class();
  v2[38] = @"HKSwimmingStrokeStyle";
  v3[38] = objc_opt_class();
  v2[39] = @"HKMetadataKeySyncIdentifier";
  v3[39] = objc_opt_class();
  v2[40] = @"HKMetadataKeySyncVersion";
  v3[40] = objc_opt_class();
  v2[41] = @"HKTimeZone";
  v3[41] = objc_opt_class();
  v2[42] = @"HKUDIDeviceIdentifier";
  v3[42] = objc_opt_class();
  v2[43] = @"HKUDIProductionIdentifier";
  v3[43] = objc_opt_class();
  v2[44] = @"HKMetadataKeyUserMotionContext";
  v3[44] = objc_opt_class();
  v2[45] = @"HKWasTakenInLab";
  v3[45] = objc_opt_class();
  v2[46] = @"HKWasUserEntered";
  v3[46] = objc_opt_class();
  v2[47] = @"HKMetadataKeyWaterSalinity";
  v3[47] = objc_opt_class();
  v2[48] = @"HKWeatherCondition";
  v3[48] = objc_opt_class();
  v2[49] = @"HKWeatherHumidity";
  v3[49] = objc_opt_class();
  v2[50] = @"HKWeatherTemperature";
  v3[50] = objc_opt_class();
  v2[51] = @"HKWorkoutBrandName";
  v3[51] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:52];
  v1 = _hk_validateMetadataBaseValueContent_forKey_error__supportedKeyLookupTableBase;
  _hk_validateMetadataBaseValueContent_forKey_error__supportedKeyLookupTableBase = v0;
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS13WithValue_forKey_error___block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v2[0] = @"HKElevationAscended";
  v3[0] = objc_opt_class();
  v2[1] = @"HKElevationDescended";
  v3[1] = objc_opt_class();
  v2[2] = @"HKSexualActivityProtectionUsed";
  v3[2] = objc_opt_class();
  v2[3] = @"HKAverageSpeed";
  v3[3] = objc_opt_class();
  v2[4] = @"HKMaximumSpeed";
  v3[4] = objc_opt_class();
  v2[5] = @"HKAlpineSlopeGrade";
  v3[5] = objc_opt_class();
  v2[6] = @"HKFitnessMachineDuration";
  v3[6] = objc_opt_class();
  v2[7] = @"HKIndoorBikeDistance";
  v3[7] = objc_opt_class();
  v2[8] = @"HKCrossTrainerDistance";
  v3[8] = objc_opt_class();
  v2[9] = @"HKAverageMETs";
  v3[9] = objc_opt_class();
  v2[10] = @"HKMetadataKeyAudioExposureLevel";
  v3[10] = objc_opt_class();
  v2[11] = @"_HKPrivateWorkoutActivityMoveMode";
  v3[11] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = _hk_validateMetadataIntroducedWithIOS13WithValue_forKey_error__supportedKeyLookupTableYukon;
  _hk_validateMetadataIntroducedWithIOS13WithValue_forKey_error__supportedKeyLookupTableYukon = v0;
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS14WithValue_forKey_error___block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v2[0] = @"HKMetadataKeyAudioExposureDuration";
  v3[0] = objc_opt_class();
  v2[1] = @"HKMetadataKeyAppleECGAlgorithmVersion";
  v3[1] = objc_opt_class();
  v2[2] = @"HKMetadataKeyDevicePlacementSide";
  v3[2] = objc_opt_class();
  v2[3] = @"HKMetadataKeyAppleDeviceCalibrated";
  v3[3] = objc_opt_class();
  v2[4] = @"HKVO2MaxValue";
  v3[4] = objc_opt_class();
  v2[5] = @"HKLowCardioFitnessEventThreshold";
  v3[5] = objc_opt_class();
  v2[6] = @"_HKPrivateMetadataKeyUserOnBetaBlocker";
  v3[6] = objc_opt_class();
  v2[7] = @"_HKPrivateMetadataKeySessionUUID";
  v3[7] = objc_opt_class();
  v2[8] = @"_HKPrivateMetadataKeyRepeatNotification";
  v3[8] = objc_opt_class();
  v2[9] = @"_HKPrivateMetadataKeyAudioExposureLimit";
  v3[9] = objc_opt_class();
  v2[10] = @"_HKPrivateMetadataKeyHeadphoneAudioDataIsTransient";
  v3[10] = objc_opt_class();
  v2[11] = @"_HKPrivateMetadataKeyNotificationIncludesPrunableData";
  v3[11] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = _hk_validateMetadataIntroducedWithIOS14WithValue_forKey_error__supportedKeyLookupTableAzul;
  _hk_validateMetadataIntroducedWithIOS14WithValue_forKey_error__supportedKeyLookupTableAzul = v0;
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS15WithValue_forKey_error___block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"_HKPrivateMetadataKeyAppleHeartbeatSeriesAlgorithmVersion";
  v3[0] = objc_opt_class();
  v2[1] = @"HKMetadataKeyAppleIrregularRhythmNotificationsAlgorithmVersion";
  v3[1] = objc_opt_class();
  v2[2] = @"HKDateOfEarliestDataUsedForEstimate";
  v3[2] = objc_opt_class();
  v2[3] = @"HKAlgorithmVersion";
  v3[3] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = _hk_validateMetadataIntroducedWithIOS15WithValue_forKey_error__supportedKeyLookupTableSky;
  _hk_validateMetadataIntroducedWithIOS15WithValue_forKey_error__supportedKeyLookupTableSky = v0;
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS16WithValue_forKey_error___block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"HKSWOLFScore";
  v3[0] = objc_opt_class();
  v2[1] = @"_HKPrivateWorkoutWeatherSourceName";
  v3[1] = objc_opt_class();
  v2[2] = @"_HKPrivateWorkoutExtendedMode";
  v3[2] = objc_opt_class();
  v2[3] = @"HKMetadataKeyHeadphoneGain";
  v3[3] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = _hk_validateMetadataIntroducedWithIOS16WithValue_forKey_error__supportedKeyLookupTableSydney;
  _hk_validateMetadataIntroducedWithIOS16WithValue_forKey_error__supportedKeyLookupTableSydney = v0;
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS17WithValue_forKey_error___block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"HKCyclingCyclingFunctionalThresholdPowerTestType";
  v3[0] = objc_opt_class();
  v2[1] = @"HKActivityType";
  v3[1] = objc_opt_class();
  v2[2] = @"HKPhysicalEffortEstimationType";
  v3[2] = objc_opt_class();
  v2[3] = @"HKMetadataKeyWaterSalinity";
  v3[3] = objc_opt_class();
  v2[4] = @"HKMetadataKeyAppleFitnessPlusSession";
  v3[4] = objc_opt_class();
  v2[5] = @"HKMetadataKeyMaximumLightIntensity";
  v3[5] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = _hk_validateMetadataIntroducedWithIOS17WithValue_forKey_error__supportedKeyLookupTableDawn;
  _hk_validateMetadataIntroducedWithIOS17WithValue_forKey_error__supportedKeyLookupTableDawn = v0;
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS18WithValue_forKey_error___block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v2[0] = @"_HKPrivateMetadataKeyHearingTestTakenWithCongestion";
  v3[0] = objc_opt_class();
  v2[1] = @"_HKPrivateMetadataKeyHearingTestTakenWithRecentLoudNoiseExposure";
  v3[1] = objc_opt_class();
  v2[2] = @"_HKPrivateMetadataKeyHearingTestTakenFromFirstParty";
  v3[2] = objc_opt_class();
  v2[3] = @"_HKPrivateMetadataKeyHearingTestTakenWithLeftEarNoiseLevel";
  v3[3] = objc_opt_class();
  v2[4] = @"_HKPrivateMetadataKeyHearingTestTakenWithRightEarNoiseLevel";
  v3[4] = objc_opt_class();
  v2[5] = @"_HKPrivateMetadataKeyPregnancyStartSourceMethod";
  v3[5] = objc_opt_class();
  v2[6] = @"_HKPrivateMetadataKeyPregnancyEmbryoAgeDays";
  v3[6] = objc_opt_class();
  v2[7] = @"_HKPrivateMetadataKeyPregnancyDetailsRecordedDate";
  v3[7] = objc_opt_class();
  v2[8] = @"_HKPrivateMetadataKeyWorkoutActivityUUID";
  v3[8] = objc_opt_class();
  v2[9] = @"_HKPrivateMetadataKeyTransientRatingOfEstimatedExertion";
  v3[9] = objc_opt_class();
  v2[10] = @"_HKPrivateMetadataKeySessionIncomplete";
  v3[10] = objc_opt_class();
  v2[11] = @"HKMetadataKeyAppleFitnessPlusCatalogIdentifier";
  v3[11] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = _hk_validateMetadataIntroducedWithIOS18WithValue_forKey_error__supportedKeyLookupTableIOS18;
  _hk_validateMetadataIntroducedWithIOS18WithValue_forKey_error__supportedKeyLookupTableIOS18 = v0;
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS19WithValue_forKey_error___block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"_HKPrivateMetadataKeyHeartRateConfidenceValue";
  v3[0] = objc_opt_class();
  v2[1] = @"_HKPrivateMetadataKeyWorkoutEventSource";
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = _hk_validateMetadataIntroducedWithIOS19WithValue_forKey_error__supportedKeyLookupTableIOS19;
  _hk_validateMetadataIntroducedWithIOS19WithValue_forKey_error__supportedKeyLookupTableIOS19 = v0;
}

void __121__NSDictionary_HKWorkoutEventMetadata__hk_validateMetadataKeysAndValuesForWorkoutEvent_applicationSDKVersionToken_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if ([MEMORY[0x1E695DF20] hk_acceptsMetadataValue:v8 allowPrivateMetadata:1])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = a1[8];
      v12 = *(a1[6] + 8);
      obj = *(v12 + 40);
      v13 = [v9 _hk_validateMetadataValueForWorkoutEvent:v10 valueContent:v8 forKey:v7 applicationSDKVersionToken:v11 error:&obj];
      objc_storeStrong((v12 + 40), obj);
      if (v13)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[7] format:{@"Invalid metadata key: %@", v7, v17}];
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[7] format:{@"Invalid metadata value: %@, for key: %@", v8, v7}];
  }
  v14 = ;
  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

LABEL_8:
  *a4 = 1;
LABEL_9:
}

void __109__NSDictionary_HKWorkoutEventMetadata___hk_validateYukonMetadataValueForWorkoutEvent_valueContent_key_error___block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"HKElevationAscended";
  v3[0] = objc_opt_class();
  v2[1] = @"HKElevationDescended";
  v3[1] = objc_opt_class();
  v2[2] = @"HKAverageSpeed";
  v3[2] = objc_opt_class();
  v2[3] = @"HKMaximumSpeed";
  v3[3] = objc_opt_class();
  v2[4] = @"HKAlpineSlopeGrade";
  v3[4] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = _hk_validateYukonMetadataValueForWorkoutEvent_valueContent_key_error__supportedWorkoutKeyLookupTableYukon;
  _hk_validateYukonMetadataValueForWorkoutEvent_valueContent_key_error__supportedWorkoutKeyLookupTableYukon = v0;
}

void __90__NSDictionary_HKAttachmentMetadata__hk_validateAttachmentMetadataKeysAndValuesWithError___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E695DF20] hk_acceptedAttachmentMetadataValueClasses];

    if (v8)
    {
      goto LABEL_6;
    }

    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[6] format:{@"Invalid metadata value: %@, for key: %@", v7, v13}];
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[6] format:{@"Invalid metadata key: %@", v13, v12}];
  }
  v9 = ;
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a4 = 1;
LABEL_6:
}

uint64_t __79__NSDictionary_HKAttachmentMetadata__hk_acceptedAttachmentMetadataValueClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = hk_acceptedAttachmentMetadataValueClasses_valueClasses;
  hk_acceptedAttachmentMetadataValueClasses_valueClasses = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __70__NSDictionary_HKAttachmentMetadata__hk_secureAttachmentCodingClasses__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) hk_acceptedAttachmentMetadataValueClasses];
  v1 = [v3 setByAddingObject:objc_opt_class()];
  v2 = hk_secureAttachmentCodingClasses__secureCodingClasses;
  hk_secureAttachmentCodingClasses__secureCodingClasses = v1;
}

@end