@interface MTIDCommon
+ (id)idOptions;
@end

@implementation MTIDCommon

+ (id)idOptions
{
  if (idOptions_onceToken != -1)
  {
    +[MTIDCommon idOptions];
  }

  v3 = idOptions_options;

  return v3;
}

void __23__MTIDCommon_idOptions__block_invoke()
{
  v2[9] = *MEMORY[0x277D85DE8];
  v2[0] = @"date";
  v2[1] = @"syncWaitTime";
  v2[2] = @"idType";
  v2[3] = @"cachePolicy";
  v2[4] = @"reset";
  v2[5] = @"dsId";
  v2[6] = @"iTunesUserRequired";
  v2[7] = @"appBundleID";
  v2[8] = @"existingOnly";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:9];
  v1 = idOptions_options;
  idOptions_options = v0;
}

@end