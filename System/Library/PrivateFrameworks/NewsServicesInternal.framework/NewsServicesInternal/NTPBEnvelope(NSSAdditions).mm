@interface NTPBEnvelope(NSSAdditions)
+ (id)nss_envelopeWithIdentifier;
@end

@implementation NTPBEnvelope(NSSAdditions)

+ (id)nss_envelopeWithIdentifier
{
  v1 = objc_opt_new();
  v2 = NSSNTPBAnalyticsUUIDData();
  [v1 setIdentifier:v2];

  return v1;
}

@end