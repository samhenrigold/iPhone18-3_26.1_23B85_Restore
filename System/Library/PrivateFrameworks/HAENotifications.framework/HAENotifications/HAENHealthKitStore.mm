@interface HAENHealthKitStore
+ (id)createHKCategorySampleForEvent:(id)event;
+ (id)sharedInstance;
- (HAENHealthKitStore)init;
- (id)saveNotificationEventToHealthKit:(id)kit;
- (id)saveNotificationEventToHealthKit:(id)kit withDelegate:(id)delegate;
@end

@implementation HAENHealthKitStore

+ (id)sharedInstance
{
  if (sharedInstance_once_1 != -1)
  {
    +[HAENHealthKitStore sharedInstance];
  }

  v3 = sharedInstance_instance_1;

  return v3;
}

uint64_t __36__HAENHealthKitStore_sharedInstance__block_invoke()
{
  sharedInstance_instance_1 = objc_alloc_init(HAENHealthKitStore);

  return MEMORY[0x2821F96F8]();
}

- (HAENHealthKitStore)init
{
  v7.receiver = self;
  v7.super_class = HAENHealthKitStore;
  v2 = [(HAENHealthKitStore *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.coreaudio.hae.notifications.hkq", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    healthStore = v2->_healthStore;
    v2->_healthStore = 0;
  }

  return v2;
}

+ (id)createHKCategorySampleForEvent:(id)event
{
  v31 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  eventType = [eventCopy eventType];
  if (eventType != 2003133803)
  {
    v5 = HAENotificationsLog(eventType);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(HAENHealthKitStore *)eventCopy createHKCategorySampleForEvent:v5];
    }

    v22 = 0;
    goto LABEL_13;
  }

  if (objc_opt_class())
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    metadata = [eventCopy metadata];
    v7 = [metadata objectForKey:@"_HAENMetadataIdentifierWeeklyExposureDuration"];

    if (v7)
    {
      v8 = MEMORY[0x277CCD7E0];
      secondUnit = [MEMORY[0x277CCDAB8] secondUnit];
      [v7 doubleValue];
      v10 = [v8 quantityWithUnit:secondUnit doubleValue:?];
      [v5 setObject:v10 forKey:*MEMORY[0x277CCC448]];
    }

    metadata2 = [eventCopy metadata];
    v12 = [metadata2 objectForKey:@"_HAENMetadataIdentifierWeeklyIncludesPrunableData"];

    if (v12)
    {
      [v5 setObject:v12 forKey:@"_HKPrivateMetadataKeyNotificationIncludesPrunableData"];
    }

    v13 = MEMORY[0x277CCD7E0];
    decibelAWeightedSoundPressureLevelUnit = [MEMORY[0x277CCDAB8] decibelAWeightedSoundPressureLevelUnit];
    [eventCopy level];
    v15 = [v13 quantityWithUnit:decibelAWeightedSoundPressureLevelUnit doubleValue:?];
    [v5 setObject:v15 forKey:*MEMORY[0x277CCC460]];

    v16 = MEMORY[0x277CCD0B8];
    v17 = [MEMORY[0x277CCD728] categoryTypeForIdentifier:*MEMORY[0x277CCB9A8]];
    dateInterval = [eventCopy dateInterval];
    startDate = [dateInterval startDate];
    dateInterval2 = [eventCopy dateInterval];
    endDate = [dateInterval2 endDate];
    v22 = [v16 categorySampleWithType:v17 value:1 startDate:startDate endDate:endDate device:0 metadata:v5];

    v24 = HAENotificationsLog(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [eventCopy uuid];
      v27 = 138412546;
      v28 = v22;
      v29 = 2112;
      v30 = uuid;
      _os_log_impl(&dword_25081E000, v24, OS_LOG_TYPE_DEFAULT, "created HKCategorySample [ %@ ] for event [ %@ ]", &v27, 0x16u);
    }

LABEL_13:
    goto LABEL_14;
  }

  v22 = 0;
LABEL_14:

  return v22;
}

- (id)saveNotificationEventToHealthKit:(id)kit
{
  v17 = *MEMORY[0x277D85DE8];
  kitCopy = kit;
  v5 = HAENotificationsLog(kitCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [kitCopy uuid];
    *buf = 138412290;
    v16 = uuid;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "saving notification event [ %@ ] to HealthKit", buf, 0xCu);
  }

  v7 = [HAENHealthKitStore createHKCategorySampleForEvent:kitCopy];
  v8 = v7;
  if (v7)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__HAENHealthKitStore_saveNotificationEventToHealthKit___block_invoke;
    v12[3] = &unk_27969F240;
    v13 = v7;
    selfCopy = self;
    dispatch_async(queue, v12);

    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAENotficiationsError" code:*"skh!" userInfo:0];
  }

  return v10;
}

void __55__HAENHealthKitStore_saveNotificationEventToHealthKit___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = HAENotificationsLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UUID];
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_25081E000, v2, OS_LOG_TYPE_DEFAULT, "saving HKCategorySample [ %@ ] to healthkit", buf, 0xCu);
  }

  if (!*(*(a1 + 40) + 16) && objc_opt_class())
  {
    v4 = objc_alloc_init(MEMORY[0x277CCD4E0]);
    v5 = *(a1 + 40);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;
  }

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HAENHealthKitStore_saveNotificationEventToHealthKit___block_invoke_304;
  v9[3] = &unk_27969F290;
  v10 = v7;
  [v8 saveObject:v10 withCompletion:v9];
}

void __55__HAENHealthKitStore_saveNotificationEventToHealthKit___block_invoke_304(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = HAENotificationsLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__HAENHealthKitStore_saveNotificationEventToHealthKit___block_invoke_304_cold_1(a1, v6, v7);
    }
  }
}

- (id)saveNotificationEventToHealthKit:(id)kit withDelegate:(id)delegate
{
  v22 = *MEMORY[0x277D85DE8];
  kitCopy = kit;
  delegateCopy = delegate;
  v8 = HAENotificationsLog(delegateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [kitCopy uuid];
    *buf = 138412546;
    v19 = uuid;
    v20 = 2112;
    v21 = delegateCopy;
    _os_log_impl(&dword_25081E000, v8, OS_LOG_TYPE_DEFAULT, "saving notification event [ %@ ] to HealthKit using delegate: %@", buf, 0x16u);
  }

  if (delegateCopy)
  {
    v10 = [HAENHealthKitStore createHKCategorySampleForEvent:kitCopy];
    v11 = v10;
    if (v10)
    {
      queue = self->_queue;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __68__HAENHealthKitStore_saveNotificationEventToHealthKit_withDelegate___block_invoke;
      v15[3] = &unk_27969F240;
      v16 = v10;
      v17 = delegateCopy;
      dispatch_async(queue, v15);

      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAENotficiationsError" code:*"skh!" userInfo:0];
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAENotficiationsError" code:*"gld!" userInfo:0];
  }

  return v13;
}

uint64_t __68__HAENHealthKitStore_saveNotificationEventToHealthKit_withDelegate___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HAENotificationsLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UUID];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25081E000, v2, OS_LOG_TYPE_DEFAULT, "saving HKCategorySample [ %@ ] to HealthKit through HAENotificationCenterUserDelegate", &v5, 0xCu);
  }

  return [*(a1 + 40) saveHAENotificationEventAsHKCategorySample:*(a1 + 32)];
}

+ (void)createHKCategorySampleForEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25081E000, a2, OS_LOG_TYPE_ERROR, "unknown event type %@", &v2, 0xCu);
}

void __55__HAENHealthKitStore_saveNotificationEventToHealthKit___block_invoke_304_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) UUID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_25081E000, a3, OS_LOG_TYPE_ERROR, "failed to write healthkit sample [ %@ ], error: %@", &v6, 0x16u);
}

@end