@interface MORehydrationThresholdMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)error;
- (MORehydrationThresholdMetrics)initWithCategory:(unint64_t)category provider:(unint64_t)provider failureCount:(int)count;
- (MORehydrationThresholdMetrics)initWithLoggingEnabled:(BOOL)enabled;
- (void)setValues;
@end

@implementation MORehydrationThresholdMetrics

- (MORehydrationThresholdMetrics)initWithCategory:(unint64_t)category provider:(unint64_t)provider failureCount:(int)count
{
  result = [(MORehydrationThresholdMetrics *)self initWithLoggingEnabled:1];
  if (result)
  {
    result->_category = category;
    result->_provider = provider;
    result->_failureCount = count;
  }

  return result;
}

- (MORehydrationThresholdMetrics)initWithLoggingEnabled:(BOOL)enabled
{
  v16.receiver = self;
  v16.super_class = MORehydrationThresholdMetrics;
  v3 = [(MOMetric *)&v16 initWithLoggingEnabled:enabled];
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    integerKeys = [objc_opt_class() integerKeys];
    v5 = [integerKeys countByEnumeratingWithState:&v12 objects:v17 count:16];
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
            objc_enumerationMutation(integerKeys);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          metrics = [(MOMetric *)v3 metrics];
          [metrics setObject:&off_100369070 forKeyedSubscript:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [integerKeys countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

+ (id)supportedMetricKeys
{
  integerKeys = [objc_opt_class() integerKeys];
  v3 = [NSMutableSet setWithSet:integerKeys];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)error
{
  v5 = MOAnalyticsEventMOEventRehydrationThreshold;
  [(MORehydrationThresholdMetrics *)self setValues];
  v7.receiver = self;
  v7.super_class = MORehydrationThresholdMetrics;
  return [(MOMetric *)&v7 submitMetricsWithError:error forEvent:v5];
}

- (void)setValues
{
  v3 = [NSNumber numberWithUnsignedInteger:self->_category];
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:v3 forKeyedSubscript:@"category"];

  v5 = [NSNumber numberWithUnsignedInteger:self->_provider];
  metrics2 = [(MOMetric *)self metrics];
  [metrics2 setObject:v5 forKeyedSubscript:@"provider"];

  v8 = [NSNumber numberWithInt:self->_failureCount];
  metrics3 = [(MOMetric *)self metrics];
  [metrics3 setObject:v8 forKeyedSubscript:@"failureCount"];
}

@end