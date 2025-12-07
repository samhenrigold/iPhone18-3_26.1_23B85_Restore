@interface NRAnalyticsPreferWiFi
- (void)submit;
@end

@implementation NRAnalyticsPreferWiFi

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

  [(NSMutableDictionary *)eventDictionary setObject:v4 forKeyedSubscript:@"requestDurationInSec"];

  if (self)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:self->_preferWiFiRequestTimedOut];
    v7 = self->super._eventDictionary;
  }

  else
  {
    v6 = [NSNumber numberWithUnsignedLongLong:0];
    v7 = 0;
  }

  [(NSMutableDictionary *)v7 setObject:v6 forKeyedSubscript:@"requestTimedOut"];

  if (self)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_preferWiFiRequestSuccessful];
    v9 = self->super._eventDictionary;
  }

  else
  {
    v8 = [NSNumber numberWithUnsignedLongLong:0];
    v9 = 0;
  }

  [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:@"requestSuccessful"];

  if (self)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:self->_linkTransitionsWhileRequestActive];
    v11 = self->super._eventDictionary;
  }

  else
  {
    v10 = [NSNumber numberWithUnsignedLongLong:0];
    v11 = 0;
  }

  [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:@"linkTransitionsWhileRequestActive"];

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.preferWiFi");
}

@end