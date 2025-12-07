@interface MORehydrationMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)error;
- (MORehydrationMetrics)initWithCategory:(unint64_t)category provider:(unint64_t)provider spiSuccess:(BOOL)success spiError:(id)error failCount:(double)count successAfterPreFailCount:(double)failCount totalCount:(int)totalCount rehydrationTrigger:(int)self0;
- (MORehydrationMetrics)initWithLoggingEnabled:(BOOL)enabled;
- (void)setValues;
@end

@implementation MORehydrationMetrics

- (MORehydrationMetrics)initWithCategory:(unint64_t)category provider:(unint64_t)provider spiSuccess:(BOOL)success spiError:(id)error failCount:(double)count successAfterPreFailCount:(double)failCount totalCount:(int)totalCount rehydrationTrigger:(int)self0
{
  errorCopy = error;
  v20 = [(MORehydrationMetrics *)self initWithLoggingEnabled:1];
  v21 = v20;
  if (v20)
  {
    v20->_category = category;
    v20->_provider = provider;
    v20->_spiSuccess = success;
    objc_storeStrong(&v20->_spiError, error);
    v21->_totalCount = totalCount;
    v21->_failCount = count;
    v21->_successAfterPreFailCount = failCount;
    if (totalCount < 1)
    {
      v21->_failPercentage = 0.0;
      v22 = 0.0;
    }

    else
    {
      v21->_failPercentage = count / totalCount * 100.0;
      v22 = failCount / totalCount * 100.0;
    }

    v21->_successAfterPreFailPercentage = v22;
    v21->_rehydrationTrigger = trigger;
    v21->_rehydrationSuccess = v21->_failCount == 0;
    v21->_rehydrationSuccessAfterPreFail = v21->_successAfterPreFailCount != 0;
  }

  return v21;
}

- (MORehydrationMetrics)initWithLoggingEnabled:(BOOL)enabled
{
  v49.receiver = self;
  v49.super_class = MORehydrationMetrics;
  v3 = [(MOMetric *)&v49 initWithLoggingEnabled:enabled];
  if (v3)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
    v5 = [bOOLeanKeys countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v46;
      do
      {
        v8 = 0;
        do
        {
          if (*v46 != v7)
          {
            objc_enumerationMutation(bOOLeanKeys);
          }

          v9 = *(*(&v45 + 1) + 8 * v8);
          metrics = [(MOMetric *)v3 metrics];
          [metrics setObject:&__kCFBooleanFalse forKeyedSubscript:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [bOOLeanKeys countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v6);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    integerKeys = [objc_opt_class() integerKeys];
    v12 = [integerKeys countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        v15 = 0;
        do
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(integerKeys);
          }

          v16 = *(*(&v41 + 1) + 8 * v15);
          metrics2 = [(MOMetric *)v3 metrics];
          [metrics2 setObject:&off_1003690A0 forKeyedSubscript:v16];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [integerKeys countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v13);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    bucketedKeys = [objc_opt_class() bucketedKeys];
    v19 = [bucketedKeys countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        v22 = 0;
        do
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(bucketedKeys);
          }

          v23 = *(*(&v37 + 1) + 8 * v22);
          metrics3 = [(MOMetric *)v3 metrics];
          [metrics3 setObject:&off_1003690A0 forKeyedSubscript:v23];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [bucketedKeys countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v20);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    stringKeys = [objc_opt_class() stringKeys];
    v26 = [stringKeys countByEnumeratingWithState:&v33 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        v29 = 0;
        do
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(stringKeys);
          }

          v30 = *(*(&v33 + 1) + 8 * v29);
          metrics4 = [(MOMetric *)v3 metrics];
          [metrics4 setObject:&off_1003690B8 forKeyedSubscript:v30];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [stringKeys countByEnumeratingWithState:&v33 objects:v50 count:16];
      }

      while (v27);
    }
  }

  return v3;
}

+ (id)supportedMetricKeys
{
  integerKeys = [objc_opt_class() integerKeys];
  v3 = [NSMutableSet setWithSet:integerKeys];

  bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
  allObjects = [bOOLeanKeys allObjects];
  [v3 addObjectsFromArray:allObjects];

  bucketedKeys = [objc_opt_class() bucketedKeys];
  allObjects2 = [bucketedKeys allObjects];
  [v3 addObjectsFromArray:allObjects2];

  stringKeys = [objc_opt_class() stringKeys];
  allObjects3 = [stringKeys allObjects];
  [v3 addObjectsFromArray:allObjects3];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)error
{
  v5 = MOAnalyticsEventEventRehydration;
  [(MORehydrationMetrics *)self setValues];
  v7.receiver = self;
  v7.super_class = MORehydrationMetrics;
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

  v7 = [NSNumber numberWithInt:self->_rehydrationTrigger];
  metrics3 = [(MOMetric *)self metrics];
  [metrics3 setObject:v7 forKeyedSubscript:@"rehydrationTrigger"];

  v9 = [NSNumber numberWithBool:self->_spiSuccess];
  metrics4 = [(MOMetric *)self metrics];
  [metrics4 setObject:v9 forKeyedSubscript:@"spiSuccess"];

  v11 = [NSNumber numberWithBool:self->_rehydrationSuccess];
  metrics5 = [(MOMetric *)self metrics];
  [metrics5 setObject:v11 forKeyedSubscript:@"rehydrationSuccess"];

  v13 = [NSNumber numberWithInt:self->_successAfterPreFailCount];
  metrics6 = [(MOMetric *)self metrics];
  [metrics6 setObject:v13 forKeyedSubscript:@"successAfterPreFailEventCount"];

  v15 = [NSNumber numberWithInt:self->_totalCount];
  metrics7 = [(MOMetric *)self metrics];
  [metrics7 setObject:v15 forKeyedSubscript:@"totalEventCount"];

  v17 = [NSNumber numberWithInt:self->_failCount];
  metrics8 = [(MOMetric *)self metrics];
  [metrics8 setObject:v17 forKeyedSubscript:@"failEventCount"];

  v19 = [NSNumber numberWithBool:self->_rehydrationSuccessAfterPreFail];
  metrics9 = [(MOMetric *)self metrics];
  [metrics9 setObject:v19 forKeyedSubscript:@"rehydrationSuccessAfterPreFail"];

  spiError = self->_spiError;
  metrics10 = [(MOMetric *)self metrics];
  v23 = metrics10;
  if (spiError)
  {
    v24 = spiError;
  }

  else
  {
    v24 = &stru_1003416B0;
  }

  [metrics10 setObject:v24 forKeyedSubscript:@"spiError"];

  v25 = [NSNumber numberWithDouble:self->_failPercentage];
  metrics11 = [(MOMetric *)self metrics];
  [metrics11 setObject:v25 forKeyedSubscript:@"failPercentage"];

  v28 = [NSNumber numberWithDouble:self->_successAfterPreFailPercentage];
  metrics12 = [(MOMetric *)self metrics];
  [metrics12 setObject:v28 forKeyedSubscript:@"successAfterPreFailPercentage"];
}

@end