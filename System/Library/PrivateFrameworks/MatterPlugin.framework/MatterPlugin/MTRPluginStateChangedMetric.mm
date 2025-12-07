@interface MTRPluginStateChangedMetric
+ (id)stateChangedMetricForDevice:(id)device homeID:(id)d state:(unint64_t)state remoteMessageID:(id)iD;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginStateChangedMetric

+ (id)stateChangedMetricForDevice:(id)device homeID:(id)d state:(unint64_t)state remoteMessageID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  deviceCopy = device;
  v12 = [(MTRPluginMetric *)[MTRPluginStateChangedMetric alloc] initMetricWithName:@"com.apple.matter.stateChangedEvent" device:deviceCopy homeID:dCopy remoteMessageID:iDCopy];

  [v12 setState:state];

  return v12;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"state";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MTRPluginStateChangedMetric state](self, "state")}];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end