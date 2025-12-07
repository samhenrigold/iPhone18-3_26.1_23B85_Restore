@interface MTRPluginEventReportMetric
+ (id)eventReportMetricForDevice:(id)device homeID:(id)d eventReport:(id)report remoteMessageID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (id)additionalCoreAnalyticsEventDictionary;
- (unint64_t)hash;
- (void)submitMetric;
@end

@implementation MTRPluginEventReportMetric

+ (id)eventReportMetricForDevice:(id)device homeID:(id)d eventReport:(id)report remoteMessageID:(id)iD
{
  iDCopy = iD;
  reportCopy = report;
  dCopy = d;
  deviceCopy = device;
  v13 = [(MTRPluginMetric *)[MTRPluginEventReportMetric alloc] initMetricWithName:@"com.apple.matter.eventReportEvent" device:deviceCopy homeID:dCopy remoteMessageID:iDCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = reportCopy;
  }

  else
  {
    v14 = 0;
  }

  [v13 setEventReport:v14];

  return v13;
}

- (void)submitMetric
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  eventReport = [(MTRPluginEventReportMetric *)self eventReport];
  v3 = [eventReport countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    v6 = *MEMORY[0x277CD5140];
    v7 = 0x277CBE000uLL;
    v8 = 0x277CD5000uLL;
    v25 = *MEMORY[0x277CD5140];
    v26 = *v29;
    v24 = eventReport;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(eventReport);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        v13 = v12;
        if (v12)
        {
          v14 = [v12 objectForKeyedSubscript:v6];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v13 objectForKeyedSubscript:v6];

            if (!v15)
            {
              goto LABEL_14;
            }

            v16 = [MTRPluginEventReportMetric alloc];
            [(MTRPluginMetric *)self device];
            v18 = v17 = v7;
            [(HMMHomeLogEvent *)self homeUUID];
            v20 = v19 = v8;
            remoteMessageID = [(MTRPluginMetric *)self remoteMessageID];
            v22 = [(MTRPluginMetric *)v16 initMetricWithName:@"com.apple.matter.eventReportEvent" device:v18 homeID:v20 remoteMessageID:remoteMessageID];

            v8 = v19;
            v7 = v17;
            [v22 setEventPath:v15];
            v23 = +[MTRPluginMetricsCollector sharedInstance];
            [v23 countMetric:v22];

            eventReport = v24;
            v6 = v25;
            v5 = v26;

            v14 = v15;
          }
        }

LABEL_14:

        ++v9;
      }

      while (v4 != v9);
      v4 = [eventReport countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v18[3] = *MEMORY[0x277D85DE8];
  eventPath = [(MTRPluginEventReportMetric *)self eventPath];
  if (eventPath && (v4 = eventPath, [(MTRPluginMetric *)self count], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MEMORY[0x277CBEB38];
    v17[0] = @"endpointID";
    eventPath2 = [(MTRPluginEventReportMetric *)self eventPath];
    endpoint = [eventPath2 endpoint];
    v18[0] = endpoint;
    v17[1] = @"clusterID";
    eventPath3 = [(MTRPluginEventReportMetric *)self eventPath];
    cluster = [eventPath3 cluster];
    v18[1] = cluster;
    v17[2] = @"eventID";
    eventPath4 = [(MTRPluginEventReportMetric *)self eventPath];
    event = [eventPath4 event];
    v18[2] = event;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v14 = [v6 dictionaryWithDictionary:v13];

    v15 = [(MTRPluginMetric *)self count];
    [v14 setObject:v15 forKeyedSubscript:@"eventCounter"];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if ([(MTRPluginEventReportMetric *)v6 isMemberOfClass:objc_opt_class()])
    {
      eventPath = [(MTRPluginEventReportMetric *)self eventPath];
      eventPath2 = [(MTRPluginEventReportMetric *)v6 eventPath];
      if (MTRPluginEqualObjects(eventPath, eventPath2))
      {
        device = [(MTRPluginMetric *)self device];
        device2 = [(MTRPluginMetric *)v6 device];
        v11 = MTRPluginEqualObjects(device, device2);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  eventPath = [(MTRPluginEventReportMetric *)self eventPath];
  v4 = [eventPath hash];
  device = [(MTRPluginMetric *)self device];
  v6 = [device hash];

  return v6 ^ v4;
}

@end