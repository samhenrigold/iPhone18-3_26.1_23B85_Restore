@interface NRAnalyticsLinkRecommendation
- (void)submit;
@end

@implementation NRAnalyticsLinkRecommendation

- (void)submit
{
  NRDiffMachTimeInSeconds();
  v4 = v3;
  NRDiffMachTimeInSeconds();
  v6 = v5;
  if (v4 > 0.0)
  {
    v7 = [NSNumber numberWithDouble:round(v4 * 1000.0) * 0.001];
    if (self)
    {
      eventDictionary = self->super._eventDictionary;
    }

    else
    {
      eventDictionary = 0;
    }

    [(NSMutableDictionary *)eventDictionary setObject:v7 forKeyedSubscript:@"btNotRecommendedDurationInSec"];
  }

  if (v6 > 0.0)
  {
    v9 = [NSNumber numberWithDouble:round(v6 * 1000.0) * 0.001];
    if (self)
    {
      v10 = self->super._eventDictionary;
    }

    else
    {
      v10 = 0;
    }

    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:@"cmpWiFiNotRecommendedDurationInSec"];
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.linkRecommendation");
}

@end