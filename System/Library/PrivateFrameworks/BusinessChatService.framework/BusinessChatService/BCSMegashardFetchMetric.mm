@interface BCSMegashardFetchMetric
+ (id)metricForMegashardType:(int64_t)type postProcessingMetricHandlers:(id)handlers;
- (NSDictionary)coreAnalyticsPayload;
- (int64_t)type;
@end

@implementation BCSMegashardFetchMetric

- (NSDictionary)coreAnalyticsPayload
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"type";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSMegashardFetchMetric type](self, "type")}];
  v11[0] = v3;
  v10[1] = @"reason";
  v4 = NSStringFromBCSFetchReason([(BCSMegashardFetchMetric *)self reason]);
  v11[1] = v4;
  v10[2] = @"errorCode";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSMegashardFetchMetric errorCode](self, "errorCode")}];
  v11[2] = v5;
  v10[3] = @"isUsingCellular";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(objc_opt_class(), "isUsingExpensiveNetwork")}];
  v11[3] = v6;
  v10[4] = @"timeSinceLastSuccess";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSMegashardFetchMetric hoursSinceLastSuccessfulFetch](self, "hoursSinceLastSuccessfulFetch")}];
  v11[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

+ (id)metricForMegashardType:(int64_t)type postProcessingMetricHandlers:(id)handlers
{
  handlersCopy = handlers;
  v6 = [BCSMegashardFetchMetric alloc];
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

  return [(BCSMegashardFetchMetric *)self integerValue];
}

@end