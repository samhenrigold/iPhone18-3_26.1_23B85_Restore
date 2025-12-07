@interface MOMediaPlayMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)error;
- (MOMediaPlayMetrics)initWithFirstPartyAppRatio:(double)ratio firstPartyAppTime:(double)time musciAppTime:(double)appTime;
- (MOMediaPlayMetrics)initWithLoggingEnabled:(BOOL)enabled;
- (void)setValues;
@end

@implementation MOMediaPlayMetrics

- (MOMediaPlayMetrics)initWithFirstPartyAppRatio:(double)ratio firstPartyAppTime:(double)time musciAppTime:(double)appTime
{
  result = [(MOMediaPlayMetrics *)self initWithLoggingEnabled:1];
  if (result)
  {
    if (ratio > 0.0)
    {
      result->_firstPartyAppRatio = (ratio * 100.0);
    }

    if (time > 0.0)
    {
      result->_firstPartyAppTime = (time / 600.0);
    }

    if (appTime > 0.0)
    {
      result->_musicAppTime = (appTime / 600.0);
    }
  }

  return result;
}

- (MOMediaPlayMetrics)initWithLoggingEnabled:(BOOL)enabled
{
  v16.receiver = self;
  v16.super_class = MOMediaPlayMetrics;
  v3 = [(MOMetric *)&v16 initWithLoggingEnabled:enabled];
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    bucketedKeys = [objc_opt_class() bucketedKeys];
    v5 = [bucketedKeys countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(bucketedKeys);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          metrics = [(MOMetric *)v3 metrics];
          [metrics setObject:&off_100369058 forKeyedSubscript:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [bucketedKeys countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

+ (id)supportedMetricKeys
{
  bucketedKeys = [objc_opt_class() bucketedKeys];
  v3 = [NSMutableSet setWithSet:bucketedKeys];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)error
{
  v5 = MOAnalyticsEventMediaPlayMetrics;
  [(MOMediaPlayMetrics *)self setValues];
  v7.receiver = self;
  v7.super_class = MOMediaPlayMetrics;
  return [(MOMetric *)&v7 submitMetricsWithError:error forEvent:v5];
}

- (void)setValues
{
  v3 = [NSNumber numberWithInt:self->_firstPartyAppRatio];
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:v3 forKeyedSubscript:@"firstPartyAppRatio"];

  v5 = [NSNumber numberWithInt:self->_firstPartyAppTime];
  metrics2 = [(MOMetric *)self metrics];
  [metrics2 setObject:v5 forKeyedSubscript:@"firstPartyAppTime"];

  v8 = [NSNumber numberWithInt:self->_musicAppTime];
  metrics3 = [(MOMetric *)self metrics];
  [metrics3 setObject:v8 forKeyedSubscript:@"musicAppTime"];
}

@end