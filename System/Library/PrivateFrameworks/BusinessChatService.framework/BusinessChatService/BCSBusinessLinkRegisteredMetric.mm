@interface BCSBusinessLinkRegisteredMetric
+ (id)metricWithPostProcessingMetricHandlers:(id)handlers;
- (NSDictionary)coreAnalyticsPayload;
@end

@implementation BCSBusinessLinkRegisteredMetric

- (NSDictionary)coreAnalyticsPayload
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"choppingEnabled";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[BCSBusinessLinkRegisteredMetric isChoppingEnabled](self, "isChoppingEnabled")}];
  v13[0] = v3;
  v12[1] = @"successfulChop";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSBusinessLinkRegisteredMetric successfulChop](self, "successfulChop")}];
  v13[1] = v4;
  v12[2] = @"duration";
  v5 = MEMORY[0x277CCABB0];
  timingMeasurement = [(BCSBusinessLinkRegisteredMetric *)self timingMeasurement];
  [timingMeasurement duration];
  v8 = [v5 numberWithInteger:(v7 * 1000.0)];
  v13[2] = v8;
  v12[3] = @"errorCode";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSBusinessLinkRegisteredMetric errorCode](self, "errorCode")}];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

+ (id)metricWithPostProcessingMetricHandlers:(id)handlers
{
  handlersCopy = handlers;
  v4 = [(BCSMetric *)[BCSBusinessLinkRegisteredMetric alloc] _initWithType:0 context:handlersCopy postProcessingMetricHandlers:?];

  return v4;
}

@end