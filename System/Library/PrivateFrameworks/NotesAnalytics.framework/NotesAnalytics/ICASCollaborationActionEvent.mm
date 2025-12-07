@interface ICASCollaborationActionEvent
+ (int64_t)timestampGranularity;
- (NSDictionary)eventProperties;
@end

@implementation ICASCollaborationActionEvent

+ (int64_t)timestampGranularity
{
  mEMORY[0x277CEAF38] = [MEMORY[0x277CEAF38] shared];
  v3 = [mEMORY[0x277CEAF38] initWithName:@"jitter"];

  return v3;
}

- (NSDictionary)eventProperties
{
  v17[12] = *MEMORY[0x277D85DE8];
  v16[0] = @"accountData";
  v15 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[0] = v15;
  v16[1] = @"collaborationItemData";
  v14 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[1] = v14;
  v16[2] = @"collaborationActionData";
  v13 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[2] = v13;
  v16[3] = @"startCollaborationCollaboratorData";
  v2 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v17[3] = v2;
  v16[4] = @"endCollaborationCollaboratorData";
  v3 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v17[4] = v3;
  v16[5] = @"orientationData";
  v4 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[5] = v4;
  v16[6] = @"privateUserData";
  v5 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[6] = v5;
  v16[7] = @"privateEventData";
  v6 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[7] = v6;
  v16[8] = @"contextPathData";
  v7 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v17[8] = v7;
  v16[9] = @"noteData";
  v8 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v17[9] = v8;
  v16[10] = @"noteContentData";
  v9 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v17[10] = v9;
  v16[11] = @"eventData";
  v10 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[11] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:12];

  return v11;
}

@end