@interface ASNotificationEvent
+ (id)achievementCompletionEventWithAchievement:(id)achievement;
+ (id)deletedWorkoutEventWithUUID:(id)d;
+ (id)goalCompletionEventWithActivitySummary:(id)summary;
+ (id)notificationEventWithRecord:(id)record friendUUID:(id)d;
+ (id)workoutCompletionEventWithWorkout:(id)workout;
- (NSString)description;
- (id)recordWithZoneID:(id)d recordEncryptionType:(int64_t)type;
@end

@implementation ASNotificationEvent

- (id)recordWithZoneID:(id)d recordEncryptionType:(int64_t)type
{
  dCopy = d;
  type = [(ASNotificationEvent *)self type];
  triggerUUID = [(ASNotificationEvent *)self triggerUUID];
  v9 = ASWorkoutNotificationRecordIDForType(type, triggerUUID, dCopy);

  v10 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingEvent" recordID:v9];
  _ASUpdateSchemaVersionOnRecord(2, v10, type);
  v11 = objc_alloc_init(ASCodableCloudKitNotificationEvent);
  date = [(ASNotificationEvent *)self date];
  [date timeIntervalSinceReferenceDate];
  [(ASCodableCloudKitNotificationEvent *)v11 setDate:?];

  [(ASCodableCloudKitNotificationEvent *)v11 setType:[(ASNotificationEvent *)self type]];
  triggerUUID2 = [(ASNotificationEvent *)self triggerUUID];
  hk_dataForUUIDBytes = [triggerUUID2 hk_dataForUUIDBytes];
  [(ASCodableCloudKitNotificationEvent *)v11 setTriggerUUID:hk_dataForUUIDBytes];

  [(ASCodableCloudKitNotificationEvent *)v11 setTriggerSnapshotIndex:[(ASNotificationEvent *)self triggerSnapshotIndex]];
  data = [(ASCodableCloudKitNotificationEvent *)v11 data];
  encryptedValues = [v10 encryptedValues];
  [encryptedValues setObject:data forKeyedSubscript:@"EncryptedData"];

  return v10;
}

+ (id)notificationEventWithRecord:(id)record friendUUID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v7 = _ASCloudKitSchemaVersionForRecord(recordCopy);
  if (v7 == 2)
  {
    encryptedValues = [recordCopy encryptedValues];
    v10 = [encryptedValues objectForKeyedSubscript:@"EncryptedData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v15 = [[ASCodableCloudKitNotificationEvent alloc] initWithData:v11];
      v12 = objc_alloc_init(ASNotificationEvent);
      v16 = MEMORY[0x277CBEAA8];
      [(ASCodableCloudKitNotificationEvent *)v15 date];
      v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
      [(ASNotificationEvent *)v12 setDate:v17];

      [(ASNotificationEvent *)v12 setType:[(ASCodableCloudKitNotificationEvent *)v15 type]];
      v18 = MEMORY[0x277CCAD78];
      triggerUUID = [(ASCodableCloudKitNotificationEvent *)v15 triggerUUID];
      v20 = [v18 hk_UUIDWithData:triggerUUID];
      [(ASNotificationEvent *)v12 setTriggerUUID:v20];

      [(ASNotificationEvent *)v12 setTriggerSnapshotIndex:[(ASCodableCloudKitNotificationEvent *)v15 triggerSnapshotIndex]];
      [(ASNotificationEvent *)v12 setFriendUUID:dCopy];
    }

    else
    {
      ASLoggingInitialize(v13, v14);
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[ASNotificationEvent(CloudKitCodingSupport) notificationEventWithRecord:friendUUID:];
      }

      v12 = 0;
    }
  }

  else
  {
    ASLoggingInitialize(v7, v8);
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[ASNotificationEvent(CloudKitCodingSupport) notificationEventWithRecord:friendUUID:];
    }

    v12 = 0;
  }

  return v12;
}

+ (id)goalCompletionEventWithActivitySummary:(id)summary
{
  summaryCopy = summary;
  v4 = objc_alloc_init(ASNotificationEvent);
  [(ASNotificationEvent *)v4 setType:0];
  date = [MEMORY[0x277CBEAA8] date];
  [(ASNotificationEvent *)v4 setDate:date];

  [(ASNotificationEvent *)v4 setTriggerUUID:0];
  _activitySummaryIndex = [summaryCopy _activitySummaryIndex];

  [(ASNotificationEvent *)v4 setTriggerSnapshotIndex:_activitySummaryIndex];

  return v4;
}

+ (id)workoutCompletionEventWithWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = objc_alloc_init(ASNotificationEvent);
  [(ASNotificationEvent *)v4 setType:2];
  date = [MEMORY[0x277CBEAA8] date];
  [(ASNotificationEvent *)v4 setDate:date];

  uUID = [workoutCopy UUID];
  [(ASNotificationEvent *)v4 setTriggerUUID:uUID];

  endDate = [workoutCopy endDate];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = _HKActivityCacheDateComponentsFromDate();
  [(ASNotificationEvent *)v4 setTriggerSnapshotIndex:_HKCacheIndexFromDateComponents()];

  return v4;
}

+ (id)achievementCompletionEventWithAchievement:(id)achievement
{
  achievementCopy = achievement;
  v4 = objc_alloc_init(ASNotificationEvent);
  [(ASNotificationEvent *)v4 setType:1];
  date = [MEMORY[0x277CBEAA8] date];
  [(ASNotificationEvent *)v4 setDate:date];

  completedDate = [achievementCopy completedDate];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = _HKActivityCacheDateComponentsFromDate();
  [(ASNotificationEvent *)v4 setTriggerSnapshotIndex:_HKCacheIndexFromDateComponents()];

  uUID = [MEMORY[0x277CCAD78] UUID];
  [(ASNotificationEvent *)v4 setTriggerUUID:uUID];

  return v4;
}

+ (id)deletedWorkoutEventWithUUID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(ASNotificationEvent);
  [(ASNotificationEvent *)v4 setType:3];
  date = [MEMORY[0x277CBEAA8] date];
  [(ASNotificationEvent *)v4 setDate:date];

  [(ASNotificationEvent *)v4 setTriggerUUID:dCopy];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = [(ASNotificationEvent *)self type];
  date = [(ASNotificationEvent *)self date];
  triggerUUID = [(ASNotificationEvent *)self triggerUUID];
  triggerSnapshotIndex = [(ASNotificationEvent *)self triggerSnapshotIndex];
  friendUUID = [(ASNotificationEvent *)self friendUUID];
  v11 = [v3 stringWithFormat:@"%@:%p type:%ld date:%@ triggerUUID:%@ triggerSnapshotIndex:%lld friendUUID:%@", v5, self, type, date, triggerUUID, triggerSnapshotIndex, friendUUID];

  return v11;
}

@end