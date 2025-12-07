@interface ICASAppSessionResignEvent
+ (int64_t)timestampGranularity;
- (NSDictionary)eventProperties;
@end

@implementation ICASAppSessionResignEvent

+ (int64_t)timestampGranularity
{
  mEMORY[0x277CEAF38] = [MEMORY[0x277CEAF38] shared];
  v3 = [mEMORY[0x277CEAF38] initWithName:@"jitter"];

  return v3;
}

- (NSDictionary)eventProperties
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"orientationData";
  v2 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v8[0] = v2;
  v7[1] = @"eventData";
  v3 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v8[1] = v3;
  v7[2] = @"timedData";
  v4 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

@end