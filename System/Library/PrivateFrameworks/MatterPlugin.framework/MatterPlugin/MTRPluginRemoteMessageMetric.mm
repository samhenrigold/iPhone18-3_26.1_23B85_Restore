@interface MTRPluginRemoteMessageMetric
+ (id)remoteIncomingRequestMessageMetric:(id)metric;
+ (id)remoteOutgoingRequestMessageMetric:(id)metric;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginRemoteMessageMetric

+ (id)remoteIncomingRequestMessageMetric:(id)metric
{
  metricCopy = metric;
  v4 = [MTRPluginRemoteMessageMetric alloc];
  homeID = [metricCopy homeID];
  uuid = [homeID uuid];
  messageID = [metricCopy messageID];
  uuid2 = [messageID uuid];
  v9 = [(MTRPluginMetric *)v4 initMetricWithName:@"com.apple.matter.remoteIncomingRequestMessageEvent" device:0 homeID:uuid remoteMessageID:uuid2];

  [v9 setMessageHeader:metricCopy];

  return v9;
}

+ (id)remoteOutgoingRequestMessageMetric:(id)metric
{
  metricCopy = metric;
  v4 = [MTRPluginRemoteMessageMetric alloc];
  homeID = [metricCopy homeID];
  uuid = [homeID uuid];
  messageID = [metricCopy messageID];
  uuid2 = [messageID uuid];
  v9 = [(MTRPluginMetric *)v4 initMetricWithName:@"com.apple.matter.remoteOngoingRequestMessageEvent" device:0 homeID:uuid remoteMessageID:uuid2];

  [v9 setMessageHeader:metricCopy];

  return v9;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v21[5] = *MEMORY[0x277D85DE8];
  v20[0] = @"version";
  v3 = MEMORY[0x277CCABB0];
  messageHeader = [(MTRPluginRemoteMessageMetric *)self messageHeader];
  v4 = [v3 numberWithInt:{objc_msgSend(messageHeader, "version")}];
  v21[0] = v4;
  v20[1] = @"schema";
  v5 = MEMORY[0x277CCABB0];
  messageHeader2 = [(MTRPluginRemoteMessageMetric *)self messageHeader];
  v7 = [v5 numberWithInt:{objc_msgSend(messageHeader2, "schema")}];
  v21[1] = v7;
  v20[2] = @"protocol";
  v8 = MEMORY[0x277CCABB0];
  messageHeader3 = [(MTRPluginRemoteMessageMetric *)self messageHeader];
  v10 = [v8 numberWithInt:{objc_msgSend(messageHeader3, "protocol")}];
  v21[2] = v10;
  v20[3] = @"messageType";
  v11 = MEMORY[0x277CCABB0];
  messageHeader4 = [(MTRPluginRemoteMessageMetric *)self messageHeader];
  v13 = [v11 numberWithUnsignedInt:{objc_msgSend(messageHeader4, "messageType")}];
  v21[3] = v13;
  v20[4] = @"messageDirection";
  v14 = MEMORY[0x277CCABB0];
  messageHeader5 = [(MTRPluginRemoteMessageMetric *)self messageHeader];
  v16 = [v14 numberWithInt:{objc_msgSend(messageHeader5, "messageDirection")}];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];

  return v17;
}

@end