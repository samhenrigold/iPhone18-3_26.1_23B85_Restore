@interface ICASMiniDeviceSnapshotOnColdLaunchEvent
+ (int64_t)timestampGranularity;
- (NSDictionary)eventProperties;
@end

@implementation ICASMiniDeviceSnapshotOnColdLaunchEvent

+ (int64_t)timestampGranularity
{
  mEMORY[0x277CEAF38] = [MEMORY[0x277CEAF38] shared];
  v3 = [mEMORY[0x277CEAF38] initWithName:@"jitter"];

  return v3;
}

- (NSDictionary)eventProperties
{
  v10[5] = *MEMORY[0x277D85DE8];
  v9[0] = @"miniSnapshotData";
  v2 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v10[0] = v2;
  v9[1] = @"snapshotHealthPrivateDeviceData";
  v3 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v10[1] = v3;
  v9[2] = @"snapshotHealthPrivateEventData";
  v4 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v10[2] = v4;
  v9[3] = @"snapshotHealthPrivateUserData";
  v5 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v10[3] = v5;
  v9[4] = @"eventData";
  v6 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v10[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

@end