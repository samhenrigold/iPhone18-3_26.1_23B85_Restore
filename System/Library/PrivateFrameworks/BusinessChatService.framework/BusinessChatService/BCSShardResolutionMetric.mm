@interface BCSShardResolutionMetric
+ (id)metricForShardIdentifier:(id)identifier postProcessingMetricHandlers:(id)handlers;
- (BCSShardItemIdentifying)shardItemIdentifier;
- (NSDictionary)coreAnalyticsPayload;
@end

@implementation BCSShardResolutionMetric

- (NSDictionary)coreAnalyticsPayload
{
  v17[4] = *MEMORY[0x277D85DE8];
  v16[0] = @"type";
  v3 = MEMORY[0x277CCABB0];
  shardItemIdentifier = [(BCSShardResolutionMetric *)self shardItemIdentifier];
  v5 = [v3 numberWithInteger:{objc_msgSend(shardItemIdentifier, "type")}];
  v17[0] = v5;
  v16[1] = @"cacheHit";
  v6 = MEMORY[0x277CCABB0];
  cacheHitMeasurement = [(BCSShardResolutionMetric *)self cacheHitMeasurement];
  v8 = [v6 numberWithBool:{objc_msgSend(cacheHitMeasurement, "flag")}];
  v17[1] = v8;
  v16[2] = @"duration";
  v9 = MEMORY[0x277CCABB0];
  timingMeasurement = [(BCSShardResolutionMetric *)self timingMeasurement];
  [timingMeasurement duration];
  v12 = [v9 numberWithInteger:(v11 * 1000.0)];
  v17[2] = v12;
  v16[3] = @"errorCode";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSShardResolutionMetric errorCode](self, "errorCode")}];
  v17[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  return v14;
}

+ (id)metricForShardIdentifier:(id)identifier postProcessingMetricHandlers:(id)handlers
{
  handlersCopy = handlers;
  identifierCopy = identifier;
  v7 = [(BCSMetric *)[BCSShardResolutionMetric alloc] _initWithType:identifierCopy context:handlersCopy postProcessingMetricHandlers:?];

  return v7;
}

- (BCSShardItemIdentifying)shardItemIdentifier
{
  if (self)
  {
    self = self->super._context;
  }

  return self;
}

@end