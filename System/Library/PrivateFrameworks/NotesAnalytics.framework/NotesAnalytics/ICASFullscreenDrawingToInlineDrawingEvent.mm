@interface ICASFullscreenDrawingToInlineDrawingEvent
+ (int64_t)timestampGranularity;
- (NSDictionary)eventProperties;
@end

@implementation ICASFullscreenDrawingToInlineDrawingEvent

+ (int64_t)timestampGranularity
{
  mEMORY[0x277CEAF38] = [MEMORY[0x277CEAF38] shared];
  v3 = [mEMORY[0x277CEAF38] initWithName:@"jitter"];

  return v3;
}

- (NSDictionary)eventProperties
{
  v16[11] = *MEMORY[0x277D85DE8];
  v15[0] = @"noteData";
  v14 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[0] = v14;
  v15[1] = @"noteAccessData";
  v13 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[1] = v13;
  v15[2] = @"accountData";
  v2 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[2] = v2;
  v15[3] = @"drawingData";
  v3 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[3] = v3;
  v15[4] = @"startDrawingStrokeData";
  v4 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[4] = v4;
  v15[5] = @"endDrawingStrokeData";
  v5 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v16[5] = v5;
  v15[6] = @"orientationData";
  v6 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[6] = v6;
  v15[7] = @"privateUserData";
  v7 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[7] = v7;
  v15[8] = @"privateEventData";
  v8 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[8] = v8;
  v15[9] = @"drawingConversionData";
  v9 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[9] = v9;
  v15[10] = @"eventData";
  v10 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[10] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:11];

  return v11;
}

@end