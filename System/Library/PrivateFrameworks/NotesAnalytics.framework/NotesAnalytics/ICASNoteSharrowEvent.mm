@interface ICASNoteSharrowEvent
+ (int64_t)timestampGranularity;
- (NSDictionary)eventProperties;
@end

@implementation ICASNoteSharrowEvent

+ (int64_t)timestampGranularity
{
  mEMORY[0x277CEAF38] = [MEMORY[0x277CEAF38] shared];
  v3 = [mEMORY[0x277CEAF38] initWithName:@"jitter"];

  return v3;
}

- (NSDictionary)eventProperties
{
  v19[14] = *MEMORY[0x277D85DE8];
  v18[0] = @"noteData";
  v17 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[0] = v17;
  v18[1] = @"noteContentData";
  v16 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[1] = v16;
  v18[2] = @"folderData";
  v15 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[2] = v15;
  v18[3] = @"sharrowContextData";
  v14 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[3] = v14;
  v18[4] = @"accountData";
  v13 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[4] = v13;
  v18[5] = @"privateUserData";
  v2 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[5] = v2;
  v18[6] = @"privateEventData";
  v3 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[6] = v3;
  v18[7] = @"contextPathData";
  v4 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v19[7] = v4;
  v18[8] = @"noteAccessData";
  v5 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[8] = v5;
  v18[9] = @"startCollaborationCollaboratorData";
  v6 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[9] = v6;
  v18[10] = @"endCollaborationCollaboratorData";
  v7 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[10] = v7;
  v18[11] = @"collaboratorData";
  v8 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[11] = v8;
  v18[12] = @"shareFlowData";
  v9 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[12] = v9;
  v18[13] = @"eventData";
  v10 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v19[13] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:14];

  return v11;
}

@end