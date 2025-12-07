@interface _ATXCoreAnalyticsMetric
- (_ATXCoreAnalyticsMetric)init;
- (_ATXCoreAnalyticsMetric)initWithDimensions:(id)dimensions;
- (id)coreAnalyticsDictionary;
- (id)coreAnalyticsDictionaryWithDimensions;
- (id)metricName;
- (void)coreAnalyticsDictionary;
- (void)logToCoreAnalytics;
- (void)metricName;
@end

@implementation _ATXCoreAnalyticsMetric

- (id)metricName
{
  v3 = __atxlog_handle_metrics(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(_ATXCoreAnalyticsMetric *)self metricName];
  }

  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"Attempted to call metricName on %@ without overriding in a subclass", v7}];

  return 0;
}

- (_ATXCoreAnalyticsMetric)init
{
  v3 = objc_opt_new();
  v4 = [(_ATXCoreAnalyticsMetric *)self initWithDimensions:v3];

  return v4;
}

- (_ATXCoreAnalyticsMetric)initWithDimensions:(id)dimensions
{
  dimensionsCopy = dimensions;
  v9.receiver = self;
  v9.super_class = _ATXCoreAnalyticsMetric;
  v6 = [(_ATXCoreAnalyticsMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dimensionSet, dimensions);
  }

  return v7;
}

- (id)coreAnalyticsDictionary
{
  v3 = __atxlog_handle_metrics(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(_ATXCoreAnalyticsMetric *)self coreAnalyticsDictionary];
  }

  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"Attempted to call coreAnalyticsDictionary on %@ without overriding in a subclass", v7}];

  return MEMORY[0x277CBEC10];
}

- (id)coreAnalyticsDictionaryWithDimensions
{
  v3 = objc_opt_new();
  coreAnalyticsDictionary = [(_ATXCoreAnalyticsDimensionSet *)self->_dimensionSet coreAnalyticsDictionary];
  [v3 addEntriesFromDictionary:coreAnalyticsDictionary];

  coreAnalyticsDictionary2 = [(_ATXCoreAnalyticsMetric *)self coreAnalyticsDictionary];
  [v3 addEntriesFromDictionary:coreAnalyticsDictionary2];

  return v3;
}

- (void)logToCoreAnalytics
{
  metricName = [(_ATXCoreAnalyticsMetric *)self metricName];
  coreAnalyticsDictionaryWithDimensions = [(_ATXCoreAnalyticsMetric *)self coreAnalyticsDictionaryWithDimensions];
  AnalyticsSendEvent();
}

- (void)metricName
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v3, v4, "Attempted to call metricName on %@ without overriding in a subclass", v5, v6, v7, v8, v9, DWORD2(v9));
}

- (void)coreAnalyticsDictionary
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v3, v4, "Attempted to call coreAnalyticsDictionary on %@ without overriding in a subclass", v5, v6, v7, v8, v9, DWORD2(v9));
}

@end