@interface MTRPluginWriteAttributeMetric
+ (id)writeAttributeMetricForDevice:(id)device homeID:(id)d clientType:(int)type endpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID timedWrite:(BOOL)write remoteMessageID:(id)self0;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginWriteAttributeMetric

+ (id)writeAttributeMetricForDevice:(id)device homeID:(id)d clientType:(int)type endpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID timedWrite:(BOOL)write remoteMessageID:(id)self0
{
  v13 = *&type;
  messageIDCopy = messageID;
  attributeIDCopy = attributeID;
  clusterIDCopy = clusterID;
  iDCopy = iD;
  dCopy = d;
  deviceCopy = device;
  v22 = [(MTRPluginMetric *)[MTRPluginWriteAttributeMetric alloc] initMetricWithName:@"com.apple.matter.writeAttributeEvent" device:deviceCopy homeID:dCopy remoteMessageID:messageIDCopy];

  [v22 setClientType:v13];
  [v22 setEndpointID:iDCopy];

  [v22 setClusterID:clusterIDCopy];
  [v22 setAttributeID:attributeIDCopy];

  [v22 setTimedWrite:write];

  return v22;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"endpointID";
  endpointID = [(MTRPluginWriteAttributeMetric *)self endpointID];
  v11[0] = endpointID;
  v10[1] = @"clusterID";
  clusterID = [(MTRPluginWriteAttributeMetric *)self clusterID];
  v11[1] = clusterID;
  v10[2] = @"attributeID";
  attributeID = [(MTRPluginWriteAttributeMetric *)self attributeID];
  v11[2] = attributeID;
  v10[3] = @"clientType";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[MTRPluginWriteAttributeMetric clientType](self, "clientType")}];
  v11[3] = v6;
  v10[4] = @"timedWrite";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTRPluginWriteAttributeMetric isTimedWrite](self, "isTimedWrite")}];
  v11[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

@end