@interface NTPBSessionBatch(NSSAdditions)
+ (id)nss_sessionBatchWithIdentifier;
@end

@implementation NTPBSessionBatch(NSSAdditions)

+ (id)nss_sessionBatchWithIdentifier
{
  v1 = objc_opt_new();
  v2 = NSSNTPBAnalyticsUUIDData();
  [v1 setIdentifier:v2];

  return v1;
}

@end