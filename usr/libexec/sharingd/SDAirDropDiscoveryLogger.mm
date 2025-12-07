@interface SDAirDropDiscoveryLogger
+ (id)discoverabilityMetricsForNode:(__SFNode *)node;
+ (id)updateMetrics:(id)metrics withNode:(__SFNode *)node;
- (SDAirDropDiscoveryLogger)init;
- (void)logMetricsWithSessionTime:(double)time;
- (void)updateWithAirDropNodes:(id)nodes;
@end

@implementation SDAirDropDiscoveryLogger

- (SDAirDropDiscoveryLogger)init
{
  v6.receiver = self;
  v6.super_class = SDAirDropDiscoveryLogger;
  v2 = [(SDAirDropDiscoveryLogger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    realNameToMetricsMap = v2->_realNameToMetricsMap;
    v2->_realNameToMetricsMap = v3;
  }

  return v2;
}

- (void)updateWithAirDropNodes:(id)nodes
{
  nodesCopy = nodes;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [nodesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(nodesCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = SFNodeCopyRealName();
        v11 = [(NSMutableDictionary *)self->_realNameToMetricsMap objectForKeyedSubscript:v10];
        if (!v11)
        {
          v11 = objc_opt_new();
        }

        v12 = [SDAirDropDiscoveryLogger updateMetrics:v11 withNode:v9];

        [(NSMutableDictionary *)self->_realNameToMetricsMap setObject:v12 forKeyedSubscript:v10];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [nodesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)logMetricsWithSessionTime:(double)time
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_realNameToMetricsMap allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v17 = @"sessionTime";
        if (time == 0.0)
        {
          v11 = &off_10090BDC0;
        }

        else
        {
          v3 = [NSNumber numberWithDouble:time];
          v11 = v3;
        }

        v18 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        [v10 addEntriesFromDictionary:v12];

        if (time != 0.0)
        {
        }

        SFMetricsLog();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }
}

+ (id)updateMetrics:(id)metrics withNode:(__SFNode *)node
{
  metricsCopy = metrics;
  v6 = [metricsCopy objectForKeyedSubscript:@"contactLevel"];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = -1;
  }

  v53 = v7;

  v8 = [metricsCopy objectForKeyedSubscript:@"foundBonjour"];
  bOOLValueSafe = [v8 BOOLValueSafe];

  v9 = [metricsCopy objectForKeyedSubscript:@"foundRapport"];
  bOOLValueSafe2 = [v9 BOOLValueSafe];

  v10 = [metricsCopy objectForKeyedSubscript:@"rpFlagMyiCloud"];
  bOOLValueSafe3 = [v10 BOOLValueSafe];

  v12 = [metricsCopy objectForKeyedSubscript:@"rpFlagFriend"];
  bOOLValueSafe4 = [v12 BOOLValueSafe];

  v14 = [metricsCopy objectForKeyedSubscript:@"rpFlagFamily"];
  bOOLValueSafe5 = [v14 BOOLValueSafe];

  v16 = [metricsCopy objectForKeyedSubscript:@"rpFlagSharedHome"];
  bOOLValueSafe6 = [v16 BOOLValueSafe];

  v18 = [metricsCopy objectForKeyedSubscript:@"rpFlagStranger"];
  bOOLValueSafe7 = [v18 BOOLValueSafe];

  v20 = SFNodeCopySiblingNodes();
  v21 = [v20 mutableCopy];

  if (!v21)
  {
    v21 = [[NSArray alloc] initWithObjects:{node, 0}];
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v21;
  v54 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v54)
  {
    v48 = metricsCopy;
    v22 = 0;
    v23 = 0;
    v52 = *v60;
    v51 = kSFNodeKindBonjour;
    v50 = kSFNodeKindRapport;
    v24 = bOOLValueSafe2;
    do
    {
      v25 = 0;
      v26 = v22;
      v27 = v23;
      do
      {
        v57 = v26;
        if (*v60 != v52)
        {
          objc_enumerationMutation(obj);
        }

        if (*(*(&v59 + 1) + 8 * v25))
        {
          v56 = v24;
          v28 = bOOLValueSafe3;
          v29 = bOOLValueSafe4;
          v30 = bOOLValueSafe5;
          v31 = bOOLValueSafe6;
          v32 = bOOLValueSafe7;
          v33 = sub_100090360(*(*(&v59 + 1) + 8 * v25));
          v34 = SFNodeCopyContactIdentifier();
          v35 = SFNodeCopyUserName();
          v36 = 2;
          if (!v35)
          {
            v36 = 3;
          }

          if (v34)
          {
            v36 = 1;
          }

          v37 = (v33 & 1) == 0;
          LOBYTE(bOOLValueSafe7) = v32;
          LOBYTE(bOOLValueSafe6) = v31;
          LOBYTE(bOOLValueSafe5) = v30;
          LOBYTE(bOOLValueSafe4) = v29;
          LOBYTE(bOOLValueSafe3) = v28;
          v24 = v56;
          if (!v37)
          {
            v36 = 0;
          }

          v53 = v36;
        }

        else
        {
          v53 = -1;
        }

        v23 = SFNodeCopyKinds();

        bOOLValueSafe |= [v23 containsObject:v51];
        v24 |= [v23 containsObject:v50];
        v22 = SFNodeCopyRapportFlags();

        unsignedIntegerValue = [v22 unsignedIntegerValue];
        bOOLValueSafe3 = ((unsignedIntegerValue | bOOLValueSafe3) & 1);
        bOOLValueSafe4 = (bOOLValueSafe4 & 1u | ((unsignedIntegerValue & 4) != 0));
        bOOLValueSafe5 = (bOOLValueSafe5 & 1u | ((unsignedIntegerValue & 8) != 0));
        bOOLValueSafe6 = (bOOLValueSafe6 & 1u | ((unsignedIntegerValue & 0x40) != 0));
        bOOLValueSafe7 = ((bOOLValueSafe7 | HIBYTE(unsignedIntegerValue)) & 1);
        v25 = v25 + 1;
        v26 = v22;
        v27 = v23;
      }

      while (v54 != v25);
      v54 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v54);
    LOBYTE(bOOLValueSafe2) = v24;

    metricsCopy = v48;
  }

  v39 = [NSNumber numberWithInteger:v53];
  [metricsCopy setObject:v39 forKeyedSubscript:@"contactLevel"];

  v40 = [NSNumber numberWithBool:bOOLValueSafe & 1];
  [metricsCopy setObject:v40 forKeyedSubscript:@"foundBonjour"];

  v41 = [NSNumber numberWithBool:bOOLValueSafe2 & 1];
  [metricsCopy setObject:v41 forKeyedSubscript:@"foundRapport"];

  v42 = [NSNumber numberWithBool:bOOLValueSafe3];
  [metricsCopy setObject:v42 forKeyedSubscript:@"rpFlagMyiCloud"];

  v43 = [NSNumber numberWithBool:bOOLValueSafe4];
  [metricsCopy setObject:v43 forKeyedSubscript:@"rpFlagFriend"];

  v44 = [NSNumber numberWithBool:bOOLValueSafe5];
  [metricsCopy setObject:v44 forKeyedSubscript:@"rpFlagFamily"];

  v45 = [NSNumber numberWithBool:bOOLValueSafe6];
  [metricsCopy setObject:v45 forKeyedSubscript:@"rpFlagSharedHome"];

  v46 = [NSNumber numberWithBool:bOOLValueSafe7];
  [metricsCopy setObject:v46 forKeyedSubscript:@"rpFlagStranger"];

  return metricsCopy;
}

+ (id)discoverabilityMetricsForNode:(__SFNode *)node
{
  v4 = objc_opt_new();
  v5 = [SDAirDropDiscoveryLogger updateMetrics:v4 withNode:node];

  return v5;
}

@end