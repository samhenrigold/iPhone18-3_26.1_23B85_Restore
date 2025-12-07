@interface NRAnalyticsPhoneCallRelay
- (void)submit;
@end

@implementation NRAnalyticsPhoneCallRelay

- (void)submit
{
  NRDiffMachTimeInSeconds();
  v4 = [NSNumber numberWithDouble:round(v3 * 1000.0) * 0.001];
  if (self)
  {
    eventDictionary = self->super._eventDictionary;
  }

  else
  {
    eventDictionary = 0;
  }

  [(NSMutableDictionary *)eventDictionary setObject:v4 forKeyedSubscript:@"phoneCallRelayDurationInSec"];

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.phoneCallRelay");
}

@end