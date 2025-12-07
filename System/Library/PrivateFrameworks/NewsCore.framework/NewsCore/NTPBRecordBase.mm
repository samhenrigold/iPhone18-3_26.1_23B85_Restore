@interface NTPBRecordBase
- (uint64_t)hasExpiredAssetURLs;
- (uint64_t)needsAssetURLRefresh;
@end

@implementation NTPBRecordBase

- (uint64_t)needsAssetURLRefresh
{
  selfCopy = self;
  if (self)
  {
    assetURLsDate = [self assetURLsDate];
    if (assetURLsDate)
    {
      v3 = MEMORY[0x1E695DF00];
      assetURLsDate2 = [selfCopy assetURLsDate];
      v5 = [v3 dateWithPBDate:assetURLsDate2];
      [v5 fc_timeIntervalUntilNow];
      selfCopy = v6 >= 604800.0;
    }

    else
    {
      selfCopy = 1;
    }
  }

  return selfCopy;
}

- (uint64_t)hasExpiredAssetURLs
{
  selfCopy = self;
  if (self)
  {
    assetURLsDate = [self assetURLsDate];
    if (assetURLsDate)
    {
      v3 = MEMORY[0x1E695DF00];
      assetURLsDate2 = [selfCopy assetURLsDate];
      v5 = [v3 dateWithPBDate:assetURLsDate2];
      [v5 fc_timeIntervalUntilNow];
      selfCopy = v6 >= 2592000.0;
    }

    else
    {
      selfCopy = 1;
    }
  }

  return selfCopy;
}

@end