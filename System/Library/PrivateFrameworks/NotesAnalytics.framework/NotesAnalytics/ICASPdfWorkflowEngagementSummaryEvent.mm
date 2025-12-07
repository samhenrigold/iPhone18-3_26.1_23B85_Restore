@interface ICASPdfWorkflowEngagementSummaryEvent
+ (int64_t)timestampGranularity;
- (NSDictionary)eventProperties;
@end

@implementation ICASPdfWorkflowEngagementSummaryEvent

+ (int64_t)timestampGranularity
{
  mEMORY[0x277CEAF38] = [MEMORY[0x277CEAF38] shared];
  v3 = [mEMORY[0x277CEAF38] initWithName:@"jitter"];

  return v3;
}

- (NSDictionary)eventProperties
{
  v15[10] = *MEMORY[0x277D85DE8];
  v14[0] = @"privateUserData";
  v13 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v15[0] = v13;
  v14[1] = @"privateEventData";
  v2 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v15[1] = v2;
  v14[2] = @"noteData";
  v3 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v15[2] = v3;
  v14[3] = @"noteContentData";
  v4 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v15[3] = v4;
  v14[4] = @"pdfAttachmentData";
  v5 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v15[4] = v5;
  v14[5] = @"pdfStateData";
  v6 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v15[5] = v6;
  v14[6] = @"pdfPageData";
  v7 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v15[6] = v7;
  v14[7] = @"pdfNavIxData";
  v8 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v15[7] = v8;
  v14[8] = @"pdfCollabIxData";
  v9 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v15[8] = v9;
  v14[9] = @"eventData";
  v10 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v15[9] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:10];

  return v11;
}

@end