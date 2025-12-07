@interface ADJingleSegmentRequest
- (id)init:(id)init forceSegments:(BOOL)segments withCompletion:(id)completion;
@end

@implementation ADJingleSegmentRequest

- (id)init:(id)init forceSegments:(BOOL)segments withCompletion:(id)completion
{
  v20[3] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = ADJingleSegmentRequest;
  v6 = [(ADJingleRequest *)&v16 init:init withCompletion:completion];
  v7 = v6;
  if (v6)
  {
    [v6 setBagKey:*MEMORY[0x277CE9710]];
    if (segments)
    {
      v19[0] = @"dsid";
      dSID = [v7 DSID];
      v20[0] = dSID;
      v20[1] = @"1";
      v19[1] = @"ioflag";
      v19[2] = @"gflag";
      v20[2] = @"1";
      v9 = MEMORY[0x277CBEAC0];
      v10 = v20;
      v11 = v19;
    }

    else
    {
      v17[0] = @"dsid";
      dSID = [v7 DSID];
      v18[0] = dSID;
      v18[1] = @"0";
      v17[1] = @"ioflag";
      v17[2] = @"gflag";
      v18[2] = @"1";
      v9 = MEMORY[0x277CBEAC0];
      v10 = v18;
      v11 = v17;
    }

    v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:3];

    aD_jsonString = [v12 AD_jsonString];
    v14 = [aD_jsonString dataUsingEncoding:4];
    [v7 setRequestBody:v14];
  }

  return v7;
}

@end