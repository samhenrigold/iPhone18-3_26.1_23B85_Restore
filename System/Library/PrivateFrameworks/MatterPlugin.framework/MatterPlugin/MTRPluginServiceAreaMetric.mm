@interface MTRPluginServiceAreaMetric
+ (id)commandPaths;
+ (id)transformInvokeCommandExpectationMetric:(id)metric;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginServiceAreaMetric

+ (id)commandPaths
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CD52F0] commandPathWithEndpointID:&unk_28697C5D0 clusterID:&unk_28697C678 commandID:&unk_28697C600];
  v6[0] = v2;
  v3 = [MEMORY[0x277CD52F0] commandPathWithEndpointID:&unk_28697C5D0 clusterID:&unk_28697C678 commandID:&unk_28697C690];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)transformInvokeCommandExpectationMetric:(id)metric
{
  metricCopy = metric;
  v4 = [MTRPluginServiceAreaMetric alloc];
  invokeCommandMetric = [metricCopy invokeCommandMetric];
  v6 = [(MTRPluginMetric *)v4 initMetricWithName:@"com.apple.matter.serviceAreaEvent" sourceMetric:invokeCommandMetric];

  invokeCommandMetric2 = [metricCopy invokeCommandMetric];
  [v6 setInvokeCommandMetric:invokeCommandMetric2];

  error = [metricCopy error];

  [v6 setError:error];

  return v6;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  selfCopy = self;
  v48 = *MEMORY[0x277D85DE8];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  invokeCommandMetric = [(MTRPluginServiceAreaMetric *)self invokeCommandMetric];
  expectedValues = [invokeCommandMetric expectedValues];

  obj = expectedValues;
  v42 = [expectedValues countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v42)
  {
    v23 = @"allAreasSelected";
    goto LABEL_31;
  }

  v35 = selfCopy;
  v37 = 0;
  v41 = *v44;
  v5 = *MEMORY[0x277CD50B8];
  v6 = *MEMORY[0x277CD50D8];
  v39 = *MEMORY[0x277CD5188];
  v38 = *MEMORY[0x277CD50B0];
  v36 = *MEMORY[0x277CD51A0];
  do
  {
    for (i = 0; i != v42; ++i)
    {
      if (*v44 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v43 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      v11 = v10;
      if (v10)
      {
        v12 = [v10 objectForKeyedSubscript:v5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v11 objectForKeyedSubscript:v5];
        }

        else
        {
          v13 = 0;
        }

        v14 = [v11 objectForKeyedSubscript:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v11 objectForKeyedSubscript:v6];
        }

        else
        {
          v15 = 0;
        }

        cluster = [v13 cluster];
        if ([cluster unsignedIntValue] == 336)
        {
          v17 = v5;
          attribute = [v13 attribute];
          unsignedIntValue = [attribute unsignedIntValue];

          if (unsignedIntValue == 2)
          {
            v20 = [v15 objectForKeyedSubscript:v39];
            v21 = [v20 isEqual:v38];

            v5 = v17;
            if (v21)
            {
              cluster = [v15 objectForKeyedSubscript:v36];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = [v15 objectForKeyedSubscript:v36];
                v37 = [v22 count];

                v5 = v17;
              }

              else
              {
                v37 = [0 count];
              }

              goto LABEL_23;
            }
          }

          else
          {
            v5 = v17;
          }
        }

        else
        {
LABEL_23:
        }
      }
    }

    v42 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v42);
  v23 = @"allAreasSelected";
  if (v37)
  {
    v23 = @"areasSelected";
  }

  selfCopy = v35;
LABEL_31:

  v24 = MEMORY[0x277CBEB38];
  invokeCommandMetric2 = [(MTRPluginServiceAreaMetric *)selfCopy invokeCommandMetric];
  additionalCoreAnalyticsEventDictionary = [invokeCommandMetric2 additionalCoreAnalyticsEventDictionary];
  v27 = [v24 dictionaryWithDictionary:additionalCoreAnalyticsEventDictionary];

  invokeCommandMetric3 = [(MTRPluginServiceAreaMetric *)selfCopy invokeCommandMetric];
  commandID = [invokeCommandMetric3 commandID];
  unsignedIntValue2 = [commandID unsignedIntValue];

  if (unsignedIntValue2 == 2)
  {
    v23 = @"areaSkipped";
    goto LABEL_34;
  }

  invokeCommandMetric4 = [(MTRPluginServiceAreaMetric *)selfCopy invokeCommandMetric];
  commandID2 = [invokeCommandMetric4 commandID];
  unsignedIntValue3 = [commandID2 unsignedIntValue];

  if (!unsignedIntValue3)
  {
LABEL_34:
    [v27 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:{v23, v35}];
  }

  return v27;
}

@end