@interface _HKFitnessFriendWorkout(CloudKitCodingSupport)
+ (id)_fitnessFriendWorkoutWithCodableWorkout:()CloudKitCodingSupport friendUUID:;
+ (id)fitnessFriendWorkoutWithRecord:()CloudKitCodingSupport friendUUID:;
- (ASCodableCloudKitWorkout)codableWorkout;
- (id)recordWithZoneID:()CloudKitCodingSupport recordEncryptionType:;
@end

@implementation _HKFitnessFriendWorkout(CloudKitCodingSupport)

- (ASCodableCloudKitWorkout)codableWorkout
{
  v2 = objc_alloc_init(ASCodableCloudKitWorkout);
  v3 = _ASCodableCloudKitSampleForSample(self);
  [(ASCodableCloudKitWorkout *)v2 setSample:v3];

  -[ASCodableCloudKitWorkout setType:](v2, "setType:", [self workoutActivityType]);
  [self duration];
  [(ASCodableCloudKitWorkout *)v2 setDuration:?];
  totalEnergyBurned = [self totalEnergyBurned];

  if (totalEnergyBurned)
  {
    totalEnergyBurned2 = [self totalEnergyBurned];
    v6 = _HKWorkoutCanonicalEnergyBurnedUnit();
    [totalEnergyBurned2 doubleValueForUnit:v6];
    [(ASCodableCloudKitWorkout *)v2 setTotalEnergyBurnedInCanonicalUnit:?];
  }

  totalBasalEnergyBurned = [self totalBasalEnergyBurned];

  if (totalBasalEnergyBurned)
  {
    totalBasalEnergyBurned2 = [self totalBasalEnergyBurned];
    v9 = _HKWorkoutCanonicalEnergyBurnedUnit();
    [totalBasalEnergyBurned2 doubleValueForUnit:v9];
    [(ASCodableCloudKitWorkout *)v2 setTotalBasalEnergyBurnedInCanonicalUnit:?];
  }

  totalDistance = [self totalDistance];

  if (totalDistance)
  {
    totalDistance2 = [self totalDistance];
    v12 = _HKWorkoutCanonicalDistanceUnit();
    [totalDistance2 doubleValueForUnit:v12];
    [(ASCodableCloudKitWorkout *)v2 setTotalDistanceInCanonicalUnit:?];
  }

  -[ASCodableCloudKitWorkout setGoalType:](v2, "setGoalType:", [self goalType]);
  goal = [self goal];
  if (goal)
  {
    v14 = goal;
    [self goalType];
    IsValidForGoal = _HKWorkoutGoalTypeIsValidForGoal();

    if (IsValidForGoal)
    {
      goal2 = [self goal];
      [self goalType];
      v17 = _HKWorkoutCanonicalUnitForGoalType();
      [goal2 doubleValueForUnit:v17];
      [(ASCodableCloudKitWorkout *)v2 setGoalInCanonicalUnit:?];
    }
  }

  bundleID = [self bundleID];
  [(ASCodableCloudKitWorkout *)v2 setBundleID:bundleID];

  -[ASCodableCloudKitWorkout setIsWatchWorkout:](v2, "setIsWatchWorkout:", [self isWatchWorkout]);
  -[ASCodableCloudKitWorkout setIsIndoorWorkout:](v2, "setIsIndoorWorkout:", [self isIndoorWorkout]);
  deviceManufacturer = [self deviceManufacturer];
  [(ASCodableCloudKitWorkout *)v2 setDeviceManufacturer:deviceManufacturer];

  deviceModel = [self deviceModel];
  [(ASCodableCloudKitWorkout *)v2 setDeviceModel:deviceModel];

  seymourCatalogWorkoutIdentifier = [self seymourCatalogWorkoutIdentifier];
  [(ASCodableCloudKitWorkout *)v2 setSeymourCatalogWorkoutIdentifier:seymourCatalogWorkoutIdentifier];

  seymourMediaType = [self seymourMediaType];
  [(ASCodableCloudKitWorkout *)v2 setSeymourMediaType:seymourMediaType];

  return v2;
}

- (id)recordWithZoneID:()CloudKitCodingSupport recordEncryptionType:
{
  v6 = a3;
  uUID = [self UUID];
  v8 = ASWorkoutRecordIDForUUID(uUID, v6);

  v9 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingWorkout" recordID:v8];
  _ASUpdateSchemaVersionOnRecord(2, v9, a4);
  codableWorkout = [self codableWorkout];
  data = [codableWorkout data];
  encryptedValues = [v9 encryptedValues];
  [encryptedValues setObject:data forKeyedSubscript:@"EncryptedData"];

  ASLoggingInitialize(v13, v14);
  v15 = os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_DEBUG);
  if (v15)
  {
    [_HKFitnessFriendWorkout(CloudKitCodingSupport) recordWithZoneID:recordEncryptionType:];
  }

  ASLoggingInitialize(v15, v16);
  v17 = ASLogCloudKit;
  if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_DEBUG))
  {
    [_HKFitnessFriendWorkout(CloudKitCodingSupport) recordWithZoneID:v17 recordEncryptionType:self];
  }

  return v9;
}

+ (id)fitnessFriendWorkoutWithRecord:()CloudKitCodingSupport friendUUID:
{
  v6 = a3;
  v7 = a4;
  v8 = _ASCloudKitSchemaVersionForRecord(v6);
  if (v8 == 2)
  {
    encryptedValues = [v6 encryptedValues];
    v11 = [encryptedValues objectForKeyedSubscript:@"EncryptedData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v16 = [[ASCodableCloudKitWorkout alloc] initWithData:v12];
      v13 = [self fitnessFriendWorkoutWithCodableWorkout:v16 friendUUID:v7];
    }

    else
    {
      ASLoggingInitialize(v14, v15);
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[_HKFitnessFriendWorkout(CloudKitCodingSupport) fitnessFriendWorkoutWithRecord:friendUUID:];
      }

      v13 = 0;
    }
  }

  else
  {
    ASLoggingInitialize(v8, v9);
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[_HKFitnessFriendWorkout(CloudKitCodingSupport) fitnessFriendWorkoutWithRecord:friendUUID:];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)_fitnessFriendWorkoutWithCodableWorkout:()CloudKitCodingSupport friendUUID:
{
  v5 = a3;
  v6 = MEMORY[0x277CCAD78];
  v55 = a4;
  sample = [v5 sample];
  uuid = [sample uuid];
  v58 = [v6 hk_UUIDWithData:uuid];

  type = [v5 type];
  v9 = MEMORY[0x277CBEAA8];
  sample2 = [v5 sample];
  [sample2 startDate];
  v11 = [v9 dateWithTimeIntervalSinceReferenceDate:?];

  v12 = MEMORY[0x277CBEAA8];
  sample3 = [v5 sample];
  [sample3 endDate];
  v14 = [v12 dateWithTimeIntervalSinceReferenceDate:?];

  if ([v5 hasTotalEnergyBurnedInCanonicalUnit])
  {
    v15 = MEMORY[0x277CCD7E8];
    v16 = _HKWorkoutCanonicalEnergyBurnedUnit();
    v17 = [v15 quantityWithUnit:v16 doubleValue:0.0];

    if (([v5 isAmm] & 1) == 0)
    {
      v18 = MEMORY[0x277CCD7E8];
      v19 = _HKWorkoutCanonicalEnergyBurnedUnit();
      [v5 totalEnergyBurnedInCanonicalUnit];
      v20 = [v18 quantityWithUnit:v19 doubleValue:?];

      v17 = v20;
    }
  }

  else
  {
    v17 = 0;
  }

  if ([v5 hasTotalBasalEnergyBurnedInCanonicalUnit])
  {
    v21 = MEMORY[0x277CCD7E8];
    v22 = _HKWorkoutCanonicalEnergyBurnedUnit();
    v23 = [v21 quantityWithUnit:v22 doubleValue:0.0];

    if (([v5 isAmm] & 1) == 0)
    {
      v24 = MEMORY[0x277CCD7E8];
      v25 = _HKWorkoutCanonicalEnergyBurnedUnit();
      [v5 totalBasalEnergyBurnedInCanonicalUnit];
      v26 = [v24 quantityWithUnit:v25 doubleValue:?];

      v23 = v26;
    }
  }

  else
  {
    v23 = 0;
  }

  if ([v5 hasTotalDistanceInCanonicalUnit])
  {
    v27 = MEMORY[0x277CCD7E8];
    v28 = _HKWorkoutCanonicalDistanceUnit();
    [v5 totalDistanceInCanonicalUnit];
    v59 = [v27 quantityWithUnit:v28 doubleValue:?];
  }

  else
  {
    v59 = 0;
  }

  v61 = v11;
  v56 = v17;
  v57 = v14;
  v60 = v23;
  goalType = [v5 goalType];
  if ([v5 hasGoalInCanonicalUnit])
  {
    v29 = MEMORY[0x277CCD7E8];
    v30 = _HKWorkoutCanonicalUnitForGoalType();
    [v5 goalInCanonicalUnit];
    v31 = [v29 quantityWithUnit:v30 doubleValue:?];
  }

  else
  {
    v31 = 0;
  }

  isIndoorWorkout = [v5 isIndoorWorkout];
  v51 = MEMORY[0x277CCDDD0];
  [v5 duration];
  v34 = v33;
  bundleID = [v5 bundleID];
  isWatchWorkout = [v5 isWatchWorkout];
  deviceManufacturer = [v5 deviceManufacturer];
  deviceModel = [v5 deviceModel];
  v39 = [v5 amm];
  seymourCatalogWorkoutIdentifier = [v5 seymourCatalogWorkoutIdentifier];
  seymourMediaType = [v5 seymourMediaType];
  BYTE1(v50) = isIndoorWorkout;
  LOBYTE(v50) = isWatchWorkout;
  v53 = v31;
  v42 = [v51 fitnessFriendworkoutWithActivityType:type friendUUID:v55 startDate:v61 endDate:v57 duration:v56 totalActiveEnergyBurned:v60 totalBasalEnergyBurned:v34 totalDistance:v59 goalType:goalType goal:v31 bundleID:bundleID isWatchWorkout:v50 isIndoorWorkout:deviceManufacturer deviceManufacturer:deviceModel deviceModel:v39 amm:seymourCatalogWorkoutIdentifier seymourCatalogWorkoutIdentifier:seymourMediaType seymourMediaType:?];

  [v42 _setUUID:v58];
  [v42 workoutActivityType];
  IsValid = _HKWorkoutActivityTypeIsValid();
  if ((IsValid & 1) == 0)
  {
    IsValid = [v42 setWorkoutActivityType:3000];
  }

  ASLoggingInitialize(IsValid, v44);
  v45 = ASLogCloudKit;
  v46 = os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_DEBUG);
  if (v46)
  {
    [_HKFitnessFriendWorkout(CloudKitCodingSupport) _fitnessFriendWorkoutWithCodableWorkout:v45 friendUUID:v42];
  }

  ASLoggingInitialize(v46, v47);
  v48 = ASLogCloudKit;
  if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_DEBUG))
  {
    [_HKFitnessFriendWorkout(CloudKitCodingSupport) _fitnessFriendWorkoutWithCodableWorkout:v48 friendUUID:v42];
  }

  [v42 goalType];
  if ((_HKWorkoutGoalTypeIsValidForGoal() & 1) == 0)
  {
    [v42 setGoal:0];
  }

  return v42;
}

- (void)recordWithZoneID:()CloudKitCodingSupport recordEncryptionType:.cold.2(void *a1, void *a2)
{
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_6() bundleID];
  [a2 isWatchWorkout];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x12u);
}

+ (void)fitnessFriendWorkoutWithRecord:()CloudKitCodingSupport friendUUID:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)fitnessFriendWorkoutWithRecord:()CloudKitCodingSupport friendUUID:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_fitnessFriendWorkoutWithCodableWorkout:()CloudKitCodingSupport friendUUID:.cold.1(void *a1, void *a2)
{
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_6() UUID];
  v11 = [a2 friendUUID];
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

+ (void)_fitnessFriendWorkoutWithCodableWorkout:()CloudKitCodingSupport friendUUID:.cold.2(void *a1, void *a2)
{
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_6() bundleID];
  [a2 isWatchWorkout];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x12u);
}

@end