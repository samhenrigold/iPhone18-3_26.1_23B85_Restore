@interface MTRPluginInvokeCommandMetric
+ (id)invokeBatchCommandMetricForDevice:(id)device homeID:(id)d clientType:(int)type commandPath:(id)path commandFields:(id)fields remoteMessageID:(id)iD;
+ (id)invokeCommandMetricForDevice:(id)device homeID:(id)d clientType:(int)type endpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)self0 expectedValueInterval:(id)self1 timedInvoke:(BOOL)self2 remoteMessageID:(id)self3;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginInvokeCommandMetric

+ (id)invokeCommandMetricForDevice:(id)device homeID:(id)d clientType:(int)type endpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)self0 expectedValueInterval:(id)self1 timedInvoke:(BOOL)self2 remoteMessageID:(id)self3
{
  v16 = *&type;
  v65 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  valuesCopy = values;
  intervalCopy = interval;
  messageIDCopy = messageID;
  v26 = [(MTRPluginMetric *)[MTRPluginInvokeCommandMetric alloc] initMetricWithName:@"com.apple.matter.invokeCommandEvent" device:deviceCopy homeID:dCopy remoteMessageID:messageIDCopy];
  [v26 setClientType:v16];
  [v26 setEndpointID:iDCopy];
  [v26 setClusterID:clusterIDCopy];
  v54 = commandIDCopy;
  [v26 setCommandID:commandIDCopy];
  [v26 setCommandFields:fieldsCopy];
  [v26 setExpectedValues:valuesCopy];
  v55 = intervalCopy;
  [v26 setExpectedValueInterval:intervalCopy];
  [v26 setTimedInvoke:invoke];
  [v26 setBatchCommand:0];
  if (valuesCopy)
  {
    v48 = v26;
    v49 = fieldsCopy;
    v50 = iDCopy;
    v51 = dCopy;
    v52 = deviceCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v47 = valuesCopy;
    obj = valuesCopy;
    v27 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v61;
      v30 = *MEMORY[0x277CD50B8];
      v31 = *MEMORY[0x277CD50D8];
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v61 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v60 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = v33;
          }

          else
          {
            v34 = 0;
          }

          v35 = v34;
          v36 = v35;
          if (v35)
          {
            v37 = [v35 objectForKeyedSubscript:v30];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = [v36 objectForKeyedSubscript:v30];
            }

            else
            {
              v38 = 0;
            }

            v39 = [v36 objectForKeyedSubscript:v31];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = [v36 objectForKeyedSubscript:v31];

              if (v38 && v40)
              {
                [dictionary setObject:v40 forKeyedSubscript:v38];
              }
            }

            else
            {

              v40 = 0;
            }
          }
        }

        v28 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v28);
    }

    if (v55)
    {
      [v55 doubleValue];
      v42 = v41 / 1000.0;
    }

    else
    {
      v42 = 30.0;
    }

    dCopy = v51;
    deviceCopy = v52;
    iDCopy = v50;
    v26 = v48;
    fieldsCopy = v49;
    v43 = [MTRPluginInvokeCommandExpectationMetric invokeCommandExpectationMetricForMetric:v48];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __189__MTRPluginInvokeCommandMetric_invokeCommandMetricForDevice_homeID_clientType_endpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvoke_remoteMessageID___block_invoke;
    v58[3] = &unk_279893B68;
    v59 = v43;
    v44 = v43;
    v45 = [v52 waitForAttributeValues:dictionary timeout:MEMORY[0x277D85CD0] queue:v58 completion:v42];
    [v48 setAttributeValueWaiter:v45];

    valuesCopy = v47;
  }

  return v26;
}

void __189__MTRPluginInvokeCommandMetric_invokeCommandMetricForDevice_homeID_clientType_endpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvoke_remoteMessageID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:*(a1 + 32) error:v3];
}

+ (id)invokeBatchCommandMetricForDevice:(id)device homeID:(id)d clientType:(int)type commandPath:(id)path commandFields:(id)fields remoteMessageID:(id)iD
{
  v10 = *&type;
  iDCopy = iD;
  fieldsCopy = fields;
  pathCopy = path;
  dCopy = d;
  deviceCopy = device;
  v18 = [(MTRPluginMetric *)[MTRPluginInvokeCommandMetric alloc] initMetricWithName:@"com.apple.matter.invokeCommandEvent" device:deviceCopy homeID:dCopy remoteMessageID:iDCopy];

  [v18 setClientType:v10];
  endpoint = [pathCopy endpoint];
  [v18 setEndpointID:endpoint];

  cluster = [pathCopy cluster];
  [v18 setClusterID:cluster];

  command = [pathCopy command];

  [v18 setCommandID:command];
  [v18 setCommandFields:fieldsCopy];

  [v18 setExpectedValues:0];
  [v18 setExpectedValueInterval:0];
  [v18 setTimedInvoke:0];
  [v18 setBatchCommand:1];

  return v18;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = @"endpointID";
  endpointID = [(MTRPluginInvokeCommandMetric *)self endpointID];
  v12[0] = endpointID;
  v11[1] = @"clusterID";
  clusterID = [(MTRPluginInvokeCommandMetric *)self clusterID];
  v12[1] = clusterID;
  v11[2] = @"commandID";
  commandID = [(MTRPluginInvokeCommandMetric *)self commandID];
  v12[2] = commandID;
  v11[3] = @"timedInvoke";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTRPluginInvokeCommandMetric isTimedInvoke](self, "isTimedInvoke")}];
  v12[3] = v6;
  v11[4] = @"clientType";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[MTRPluginInvokeCommandMetric clientType](self, "clientType")}];
  v12[4] = v7;
  v11[5] = @"batchCommand";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTRPluginInvokeCommandMetric isBatchCommand](self, "isBatchCommand")}];
  v12[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

@end