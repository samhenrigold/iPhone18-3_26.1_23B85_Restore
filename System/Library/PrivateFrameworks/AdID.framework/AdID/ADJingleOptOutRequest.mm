@interface ADJingleOptOutRequest
- (id)init:(id)init state:(BOOL)state timestamp:(double)timestamp completionHandler:(id)handler;
@end

@implementation ADJingleOptOutRequest

- (id)init:(id)init state:(BOOL)state timestamp:(double)timestamp completionHandler:(id)handler
{
  stateCopy = state;
  v19[2] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = ADJingleOptOutRequest;
  v8 = [(ADJingleRequest *)&v17 init:init withCompletion:handler];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x277CE9708];
    if (!stateCopy)
    {
      v10 = MEMORY[0x277CE9700];
    }

    [v8 setBagKey:*v10];
    v18[0] = @"dsid";
    dSID = [v9 DSID];
    v18[1] = @"oo-timestamp";
    v19[0] = dSID;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:timestamp];
    v19[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

    aD_jsonString = [v13 AD_jsonString];
    v15 = [aD_jsonString dataUsingEncoding:4];
    [v9 setRequestBody:v15];
  }

  return v9;
}

@end