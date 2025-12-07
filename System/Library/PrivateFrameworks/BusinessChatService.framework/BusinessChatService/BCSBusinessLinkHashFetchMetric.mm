@interface BCSBusinessLinkHashFetchMetric
+ (id)metricWithPostProcessingMetricHandlers:(id)handlers;
- (NSDictionary)coreAnalyticsPayload;
@end

@implementation BCSBusinessLinkHashFetchMetric

- (NSDictionary)coreAnalyticsPayload
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"duration";
  v3 = MEMORY[0x277CCABB0];
  timingMeasurement = [(BCSBusinessLinkHashFetchMetric *)self timingMeasurement];
  [timingMeasurement duration];
  v6 = [v3 numberWithInteger:(v5 * 1000.0)];
  v10[1] = @"errorCode";
  v11[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSBusinessLinkHashFetchMetric errorCode](self, "errorCode")}];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

+ (id)metricWithPostProcessingMetricHandlers:(id)handlers
{
  handlersCopy = handlers;
  v4 = [(BCSMetric *)[BCSBusinessLinkHashFetchMetric alloc] _initWithType:0 context:handlersCopy postProcessingMetricHandlers:?];

  return v4;
}

@end