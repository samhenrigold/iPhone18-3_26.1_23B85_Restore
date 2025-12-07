@interface NRAnalyticsCmpnLinkWiFi
- (void)submit;
@end

@implementation NRAnalyticsCmpnLinkWiFi

- (void)submit
{
  sub_1001554F0(self);
  NRDiffMachTimeInSeconds();
  v4 = [NSNumber numberWithDouble:round(v3 * 1000.0) * 0.001];
  if (!self)
  {
    v8 = @"symptomsNOIRegistrationTimeInSec";
    eventDictionary = 0;
    goto LABEL_8;
  }

  [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v4 forKeyedSubscript:@"symptomsNOIRegistrationTimeInSec"];

  if (self->_symptomsAdvisoryFalsePositivesCounter)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v5 forKeyedSubscript:@"symptomsAdvisoryFalsePositivesCounter"];
  }

  if (self->_virtualInterfaceRetryCounter)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v6 forKeyedSubscript:@"virtualInterfaceRetryCounter"];
  }

  if (self->_symptomsNOIRegistrationCounter)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:?];
    eventDictionary = self->super.super._eventDictionary;
    v8 = @"symptomsNOIRegistrationCounter";
LABEL_8:
    [(NSMutableDictionary *)eventDictionary setObject:v4 forKeyedSubscript:v8];
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.cmpnLinkWiFi");
}

@end