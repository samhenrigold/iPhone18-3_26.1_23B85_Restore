@interface ICASPartialCloudErrorData
- (ICASPartialCloudErrorData)initWithPartialErrorSummary:(id)summary;
- (id)toDict;
@end

@implementation ICASPartialCloudErrorData

- (ICASPartialCloudErrorData)initWithPartialErrorSummary:(id)summary
{
  summaryCopy = summary;
  v9.receiver = self;
  v9.super_class = ICASPartialCloudErrorData;
  v6 = [(ICASPartialCloudErrorData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_partialErrorSummary, summary);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"partialErrorSummary";
  partialErrorSummary = [(ICASPartialCloudErrorData *)self partialErrorSummary];
  if (partialErrorSummary)
  {
    partialErrorSummary2 = [(ICASPartialCloudErrorData *)self partialErrorSummary];
  }

  else
  {
    partialErrorSummary2 = objc_opt_new();
  }

  v5 = partialErrorSummary2;
  v9[0] = partialErrorSummary2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end