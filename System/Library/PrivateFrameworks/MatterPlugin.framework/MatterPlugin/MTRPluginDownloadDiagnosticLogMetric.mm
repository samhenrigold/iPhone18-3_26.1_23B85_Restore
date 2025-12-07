@interface MTRPluginDownloadDiagnosticLogMetric
+ (id)downloadDiagnosticMetricForDevice:(id)device homeID:(id)d clientType:(int)type logType:(int64_t)logType remoteMessageID:(id)iD;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginDownloadDiagnosticLogMetric

+ (id)downloadDiagnosticMetricForDevice:(id)device homeID:(id)d clientType:(int)type logType:(int64_t)logType remoteMessageID:(id)iD
{
  v8 = *&type;
  iDCopy = iD;
  dCopy = d;
  deviceCopy = device;
  v14 = [(MTRPluginMetric *)[MTRPluginDownloadDiagnosticLogMetric alloc] initMetricWithName:@"com.apple.matter.downloadDiagnosticLogEvent" device:deviceCopy homeID:dCopy remoteMessageID:iDCopy];

  [v14 setLogType:logType];
  [v14 setClientType:v8];

  return v14;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"logType";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MTRPluginDownloadDiagnosticLogMetric logType](self, "logType")}];
  v7[1] = @"clientType";
  v8[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[MTRPluginDownloadDiagnosticLogMetric clientType](self, "clientType")}];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end