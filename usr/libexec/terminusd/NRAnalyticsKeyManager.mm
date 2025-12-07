@interface NRAnalyticsKeyManager
- (void)submit;
@end

@implementation NRAnalyticsKeyManager

- (void)submit
{
  NRDiffMachTimeInSeconds();
  v4 = [NSNumber numberWithDouble:round(v3 * 1000.0) * 0.001];
  if (self)
  {
    [(NSMutableDictionary *)self->super._eventDictionary setObject:v4 forKeyedSubscript:@"queryKeysDurationInSec"];

    if (!self->_queryKeysSuccess)
    {
      goto LABEL_5;
    }

    v4 = [NSNumber numberWithBool:1];
    eventDictionary = self->super._eventDictionary;
    v6 = @"queryKeysSuccess";
  }

  else
  {
    v6 = @"queryKeysDurationInSec";
    eventDictionary = 0;
  }

  [(NSMutableDictionary *)eventDictionary setObject:v4 forKeyedSubscript:v6];

LABEL_5:

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.keyManager");
}

@end