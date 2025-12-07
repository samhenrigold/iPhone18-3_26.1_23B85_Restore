@interface BCSConfigResolutionMetric
+ (id)metricForConfigType:(int64_t)type postProcessingMetricHandlers:(id)handlers;
- (NSDictionary)coreAnalyticsPayload;
- (int64_t)type;
@end

@implementation BCSConfigResolutionMetric

- (NSDictionary)coreAnalyticsPayload
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"type";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSConfigResolutionMetric type](self, "type")}];
  v15[0] = v3;
  v14[1] = @"cacheHit";
  v4 = MEMORY[0x277CCABB0];
  cacheHitMeasurement = [(BCSConfigResolutionMetric *)self cacheHitMeasurement];
  v6 = [v4 numberWithBool:{objc_msgSend(cacheHitMeasurement, "flag")}];
  v15[1] = v6;
  v14[2] = @"duration";
  v7 = MEMORY[0x277CCABB0];
  timingMeasurement = [(BCSConfigResolutionMetric *)self timingMeasurement];
  [timingMeasurement duration];
  v10 = [v7 numberWithInteger:(v9 * 1000.0)];
  v15[2] = v10;
  v14[3] = @"errorCode";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSConfigResolutionMetric errorCode](self, "errorCode")}];
  v15[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  return v12;
}

+ (id)metricForConfigType:(int64_t)type postProcessingMetricHandlers:(id)handlers
{
  handlersCopy = handlers;
  v6 = [BCSConfigResolutionMetric alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v8 = [(BCSMetric *)&v6->super.super.isa _initWithType:v7 context:handlersCopy postProcessingMetricHandlers:?];

  return v8;
}

- (int64_t)type
{
  if (self)
  {
    self = self->super._context;
  }

  return [(BCSConfigResolutionMetric *)self integerValue];
}

@end