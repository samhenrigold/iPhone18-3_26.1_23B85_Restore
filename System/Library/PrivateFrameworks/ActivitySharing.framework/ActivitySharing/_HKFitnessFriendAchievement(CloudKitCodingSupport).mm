@interface _HKFitnessFriendAchievement(CloudKitCodingSupport)
+ (id)_fitnessFriendAchievementWithCodableAchievement:()CloudKitCodingSupport friendUUID:;
+ (id)fitnessFriendAchievementWithRecord:()CloudKitCodingSupport friendUUID:;
- (ASCodableCloudKitAchievement)codableAchievement;
- (id)recordWithZoneID:()CloudKitCodingSupport recordEncryptionType:;
@end

@implementation _HKFitnessFriendAchievement(CloudKitCodingSupport)

- (ASCodableCloudKitAchievement)codableAchievement
{
  v2 = objc_alloc_init(ASCodableCloudKitAchievement);
  v3 = _ASCodableCloudKitSampleForSample(self);
  [(ASCodableCloudKitAchievement *)v2 setSample:v3];

  completedDate = [self completedDate];
  [completedDate timeIntervalSinceReferenceDate];
  [(ASCodableCloudKitAchievement *)v2 setCompletedDate:?];

  value = [self value];
  objCType = [value objCType];
  if (objCType)
  {
    v7 = *objCType & 0xFD;

    if (v7 == 100)
    {
      value2 = [self value];
      [value2 doubleValue];
      [(ASCodableCloudKitAchievement *)v2 setDoubleValue:?];
      goto LABEL_6;
    }
  }

  else
  {
  }

  value2 = [self value];
  -[ASCodableCloudKitAchievement setIntValue:](v2, "setIntValue:", [value2 longLongValue]);
LABEL_6:

  templateUniqueName = [self templateUniqueName];
  [(ASCodableCloudKitAchievement *)v2 setWorkoutActivityType:ACHWorkoutActivityTypeForTemplateUniqueName()];

  templateUniqueName2 = [self templateUniqueName];
  v11 = ACHLegacyDefinitionIdentifierForTemplateUniqueName();
  [(ASCodableCloudKitAchievement *)v2 setDefinitionIdentifier:v11];

  templateUniqueName3 = [self templateUniqueName];
  [(ASCodableCloudKitAchievement *)v2 setTemplateUniqueName:templateUniqueName3];

  return v2;
}

- (id)recordWithZoneID:()CloudKitCodingSupport recordEncryptionType:
{
  v6 = MEMORY[0x277CBC5D0];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = MEMORY[0x277CCACA8];
  uUID = [self UUID];
  v11 = [v9 stringWithFormat:@"%@-%@", @"ActivitySharingAchievement", uUID];
  v12 = [v8 initWithRecordName:v11 zoneID:v7];

  v13 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingAchievement" recordID:v12];
  _ASUpdateSchemaVersionOnRecord(2, v13, a4);
  codableAchievement = [self codableAchievement];
  data = [codableAchievement data];
  encryptedValues = [v13 encryptedValues];
  [encryptedValues setObject:data forKeyedSubscript:@"EncryptedData"];

  return v13;
}

+ (id)fitnessFriendAchievementWithRecord:()CloudKitCodingSupport friendUUID:
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
      v16 = [[ASCodableCloudKitAchievement alloc] initWithData:v12];
      v13 = [self fitnessFriendAchievementWithCodableAchievement:v16 friendUUID:v7];
    }

    else
    {
      ASLoggingInitialize(v14, v15);
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[_HKFitnessFriendAchievement(CloudKitCodingSupport) fitnessFriendAchievementWithRecord:friendUUID:];
      }

      v13 = 0;
    }
  }

  else
  {
    ASLoggingInitialize(v8, v9);
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[_HKFitnessFriendAchievement(CloudKitCodingSupport) fitnessFriendAchievementWithRecord:friendUUID:];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)_fitnessFriendAchievementWithCodableAchievement:()CloudKitCodingSupport friendUUID:
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBEAA8];
  [v5 completedDate];
  v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  if ([v5 hasTemplateUniqueName])
  {
    templateUniqueName = [v5 templateUniqueName];
    v11 = templateUniqueName;
    if (templateUniqueName)
    {
LABEL_3:
      hasDoubleValue = [v5 hasDoubleValue];
      v13 = MEMORY[0x277CCABB0];
      if (hasDoubleValue)
      {
        [v5 doubleValue];
        [v13 numberWithDouble:?];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "intValue")}];
      }
      v17 = ;
      v16 = [MEMORY[0x277CCDDC0] achievementWithTemplateUniqueName:v11 completedDate:v8 value:v17 friendUUID:v6];
      v18 = MEMORY[0x277CCAD78];
      sample = [v5 sample];
      uuid = [sample uuid];
      v21 = [v18 hk_UUIDWithData:uuid];

      [v16 _setUUID:v21];
      goto LABEL_11;
    }
  }

  else
  {
    definitionIdentifier = [v5 definitionIdentifier];
    [v5 workoutActivityType];
    v11 = ACHTemplateUniqueNameForLegacyAchievementInfo();

    if (v11)
    {
      goto LABEL_3;
    }
  }

  ASLoggingInitialize(templateUniqueName, v10);
  v15 = ASLogCloudKit;
  if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
  {
    [_HKFitnessFriendAchievement(CloudKitCodingSupport) _fitnessFriendAchievementWithCodableAchievement:v15 friendUUID:?];
  }

  v16 = 0;
LABEL_11:

  return v16;
}

+ (void)fitnessFriendAchievementWithRecord:()CloudKitCodingSupport friendUUID:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)fitnessFriendAchievementWithRecord:()CloudKitCodingSupport friendUUID:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_fitnessFriendAchievementWithCodableAchievement:()CloudKitCodingSupport friendUUID:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6() definitionIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_23E4FA000, v4, v5, "Codable achievement had no templateUniqueName and an unknown or missing definitionIdentifier: %{public}@", v6, v7, v8, v9);
}

@end