@interface NRAnalyticsDirectToCloud
- (void)submit;
@end

@implementation NRAnalyticsDirectToCloud

- (void)submit
{
  NRDiffMachTimeInSeconds();
  v4 = v3;
  NRDiffMachTimeInSeconds();
  v6 = v5;
  v7 = [NSNumber numberWithDouble:round(v4 * 1000.0) * 0.001];
  if (self)
  {
    eventDictionary = self->super._eventDictionary;
  }

  else
  {
    eventDictionary = 0;
  }

  [(NSMutableDictionary *)eventDictionary setObject:v7 forKeyedSubscript:@"requestDurationInSec"];

  v9 = [NSNumber numberWithDouble:round(v6 * 1000.0) * 0.001];
  if (self)
  {
    v10 = self->super._eventDictionary;
  }

  else
  {
    v10 = 0;
  }

  [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:@"iRATQueryDurationInSec"];

  if (self)
  {
    v11 = self->_timeSinceLastDirectToCloudRequest * 1000.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = [NSNumber numberWithDouble:round(v11) * 0.001];
  if (!self)
  {
    v15 = @"timeSinceLastRequestInSec";
    v14 = 0;
    goto LABEL_12;
  }

  [(NSMutableDictionary *)self->super._eventDictionary setObject:v12 forKeyedSubscript:@"timeSinceLastRequestInSec"];

  if (self->_iRATManagerQueryIncomplete)
  {
    v13 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super._eventDictionary setObject:v13 forKeyedSubscript:@"iRATManagerQueryIncomplete"];
  }

  if (self->_fallbackAdvisoryIssued)
  {
    v12 = [NSNumber numberWithBool:1];
    v14 = self->super._eventDictionary;
    v15 = @"fallbackAdvisoryIssued";
LABEL_12:
    [(NSMutableDictionary *)v14 setObject:v12 forKeyedSubscript:v15];
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.directToCloud");
}

@end