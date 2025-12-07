@interface NRAnalyticsLocalDevice
- (void)submit;
@end

@implementation NRAnalyticsLocalDevice

- (void)submit
{
  NRDiffMachTimeInSeconds();
  v4 = [NSNumber numberWithDouble:round(v3 * 1000.0) * 0.001];
  if (!self)
  {
    v7 = @"deviceRegistrationTimeInSec";
    eventDictionary = 0;
    goto LABEL_6;
  }

  [(NSMutableDictionary *)self->super._eventDictionary setObject:v4 forKeyedSubscript:@"deviceRegistrationTimeInSec"];

  if (self->_deviceRegistrationSuccess)
  {
    v5 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super._eventDictionary setObject:v5 forKeyedSubscript:@"deviceRegistrationSuccess"];
  }

  if (self->_devicePairedWithOOBKey)
  {
    v4 = [NSNumber numberWithBool:1];
    eventDictionary = self->super._eventDictionary;
    v7 = @"devicePairedWithOOBKey";
LABEL_6:
    [(NSMutableDictionary *)eventDictionary setObject:v4 forKeyedSubscript:v7];
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.localDevice");
}

@end