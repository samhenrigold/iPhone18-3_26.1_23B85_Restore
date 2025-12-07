@interface _CDInteraction(BiomeEvents)
+ (id)eventWithData:()BiomeEvents dataVersion:;
- (id)serialize;
- (void)serialize;
@end

@implementation _CDInteraction(BiomeEvents)

+ (id)eventWithData:()BiomeEvents dataVersion:
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v11];
  v6 = v11;
  objc_autoreleasePoolPop(v4);
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = __atxlog_handle_notification_management(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction(BiomeEvents) eventWithData:v6 dataVersion:v9];
    }
  }

  return v5;
}

- (id)serialize
{
  v2 = objc_autoreleasePoolPush();
  v9 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v9];
  v4 = v9;
  objc_autoreleasePoolPop(v2);
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = __atxlog_handle_notification_management(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(_CDInteraction(BiomeEvents) *)v4 serialize];
    }
  }

  return v3;
}

+ (void)eventWithData:()BiomeEvents dataVersion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Failed to initialize CDInteraction from NSData in ATXInteractionEventProvider with error: %@", &v2, 0xCu);
}

- (void)serialize
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Failed to serialize CDInteraction data in ATXInteractionEventProvider with error: %@", &v2, 0xCu);
}

@end