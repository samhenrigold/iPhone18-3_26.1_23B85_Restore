@interface PLAWDNetworkUsage
+ (id)entryAggregateDefinitionNetUsage;
+ (id)entryAggregateDefinitions;
+ (id)getSharedObjWithOperator:(id)operator;
- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn;
- (void)handleNameConnectionCallback:(id)callback;
- (void)handleNetCallback:(id)callback;
- (void)resetNetUsageTable;
- (void)startMetricCollection:(id)collection;
- (void)stopMetricCollection:(id)collection;
@end

@implementation PLAWDNetworkUsage

+ (id)entryAggregateDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"NetworkUsage";
  entryAggregateDefinitionNetUsage = [self entryAggregateDefinitionNetUsage];
  v6[0] = entryAggregateDefinitionNetUsage;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryAggregateDefinitionNetUsage
{
  v30[4] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v27[0] = *MEMORY[0x277D3F568];
  v27[1] = v2;
  v28[0] = &unk_2870FEEA0;
  v28[1] = MEMORY[0x277CBEC28];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v30[0] = v19;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"NetProcessName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v26[0] = commonTypeDict_StringFormat;
  v25[1] = @"WifiIn";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v26[1] = commonTypeDict_IntegerFormat_aggregateFunction_sum;
  v25[2] = @"WifiOut";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v26[2] = commonTypeDict_IntegerFormat_aggregateFunction_sum2;
  v25[3] = @"CellIn";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v26[3] = commonTypeDict_IntegerFormat_aggregateFunction_sum3;
  v25[4] = @"CellOut";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v26[4] = commonTypeDict_IntegerFormat_aggregateFunction_sum4;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];
  v30[1] = v8;
  v29[2] = *MEMORY[0x277D3F478];
  v23 = &unk_2870FEEB0;
  v21 = *MEMORY[0x277D3F470];
  v22 = &unk_2870FEEB0;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v30[2] = v10;
  v29[3] = *MEMORY[0x277D3F488];
  v20[0] = @"WifiIn";
  v20[1] = @"WifiOut";
  v20[2] = @"CellIn";
  v20[3] = @"CellOut";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v30[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  return v12;
}

+ (id)getSharedObjWithOperator:(id)operator
{
  v3 = plAwdNetworkUsage;
  if (!plAwdNetworkUsage)
  {
    operatorCopy = operator;
    v5 = [(PLAWDAuxMetrics *)[PLAWDNetworkUsage alloc] initWithOperator:operatorCopy];

    v6 = plAwdNetworkUsage;
    plAwdNetworkUsage = v5;

    v3 = plAwdNetworkUsage;
  }

  return v3;
}

- (void)startMetricCollection:(id)collection
{
  collectionCopy = collection;
  runningMetrics = [(PLAWDAuxMetrics *)self runningMetrics];
  [runningMetrics addObject:collectionCopy];

  [(PLAWDNetworkUsage *)self resetNetUsageTable];
  LODWORD(runningMetrics) = [collectionCopy unsignedIntValue];

  if (runningMetrics == 2031619)
  {
    [(PLAWDNetworkUsage *)self setNetState:0];
    v6 = [MEMORY[0x277D3F6C0] entryKeyForType:*MEMORY[0x277D3F5D8] andName:*MEMORY[0x277D3F7E0]];
    v7 = objc_alloc(MEMORY[0x277D3F1A8]);
    operator = [(PLAWDAuxMetrics *)self operator];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__PLAWDNetworkUsage_startMetricCollection___block_invoke;
    v18[3] = &unk_279A58F10;
    v18[4] = self;
    v9 = [v7 initWithOperator:operator forEntryKey:v6 withBlock:v18];

    [(PLAWDNetworkUsage *)self setNetEventCallback:v9];
    netEventCallback = [(PLAWDNetworkUsage *)self netEventCallback];
    [netEventCallback requestEntry];

    v11 = [MEMORY[0x277D3F6C0] entryKeyForType:*MEMORY[0x277D3F5E8] andName:*MEMORY[0x277D3F7E8]];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"GroupID_%@", v11];
    v13 = objc_alloc(MEMORY[0x277D3F1A8]);
    operator2 = [(PLAWDAuxMetrics *)self operator];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __43__PLAWDNetworkUsage_startMetricCollection___block_invoke_2;
    v17[3] = &unk_279A58F10;
    v17[4] = self;
    v15 = [v13 initWithOperator:operator2 forEntryKey:v12 withBlock:v17];

    [(PLAWDNetworkUsage *)self setNameConnectionCallback:v15];
    nameConnectionCallback = [(PLAWDNetworkUsage *)self nameConnectionCallback];
    [nameConnectionCallback requestEntry];
  }
}

id *__43__PLAWDNetworkUsage_startMetricCollection___block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] handleNetCallback:a2];
  }

  return result;
}

id *__43__PLAWDNetworkUsage_startMetricCollection___block_invoke_2(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] handleNameConnectionCallback:a2];
  }

  return result;
}

- (void)stopMetricCollection:(id)collection
{
  collectionCopy = collection;
  runningMetrics = [(PLAWDAuxMetrics *)self runningMetrics];
  [runningMetrics removeObject:collectionCopy];

  longValue = [collectionCopy longValue];
  if (longValue == 2031619)
  {
    [(PLAWDNetworkUsage *)self setNetEventCallback:0];
  }

  runningMetrics2 = [(PLAWDAuxMetrics *)self runningMetrics];
  v8 = [runningMetrics2 count];

  if (!v8)
  {
    v9 = plAwdNetworkUsage;
    plAwdNetworkUsage = 0;
  }
}

- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn
{
  v69 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  connCopy = conn;
  v8 = [connCopy newMetricContainerWithIdentifier:{objc_msgSend(serverCopy, "unsignedIntValue")}];
  v9 = 0;
  if ([serverCopy longValue] == 2031619 && v8)
  {
    netEventCallback = [(PLAWDNetworkUsage *)self netEventCallback];
    [netEventCallback requestEntry];

    sleep(5u);
    v11 = objc_opt_new();
    v12 = v11;
    if (v11)
    {
      v54 = v11;
      v56 = v8;
      v57 = connCopy;
      v58 = serverCopy;
      v60 = objc_opt_new();
      v59 = objc_opt_new();
      v13 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [v13 timeIntervalSince1970];
      v16 = v15;
      [monotonicDate timeIntervalSince1970];
      v18 = v17 - v16;

      v19 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"NetworkUsage"];
      selfCopy = self;
      operator = [(PLAWDAuxMetrics *)self operator];
      storage = [operator storage];
      v53 = v19;
      v22 = [storage aggregateEntriesForKey:v19 withBucketLength:86400.0 inTimeIntervalRange:{v16, v18}];

      v52 = v22;
      [MEMORY[0x277D3F190] summarizeAggregateEntries:v22];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v67 = 0u;
      v63 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
      if (v63)
      {
        v62 = *v65;
        do
        {
          for (i = 0; i != v63; ++i)
          {
            if (*v65 != v62)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v64 + 1) + 8 * i);
            v25 = objc_opt_new();
            v26 = [v24 objectForKeyedSubscript:@"WifiIn"];
            [v26 doubleValue];
            v28 = v27;

            v29 = [v24 objectForKeyedSubscript:@"WifiOut"];
            [v29 doubleValue];
            v31 = v30;

            v32 = [v24 objectForKeyedSubscript:@"CellIn"];
            [v32 doubleValue];
            v34 = v33;

            v35 = [v24 objectForKeyedSubscript:@"CellOut"];
            [v35 doubleValue];
            v37 = v36;

            v38 = objc_alloc(MEMORY[0x277CCACA8]);
            v39 = [v24 objectForKeyedSubscript:@"NetProcessName"];
            v40 = [v38 initWithFormat:@"%@", v39];

            v41 = [MEMORY[0x277CCABB0] numberWithLong:(v31 + v28 + v34 + v37)];
            if ([v41 intValue])
            {
              v42 = [v24 objectForKeyedSubscript:@"NetProcessName"];
              [v25 setBundleName:v42];

              [v25 setWifiIn:v28];
              [v25 setWifiOut:v31];
              [v25 setCellIn:v34];
              [v25 setCellOut:v37];
              [v25 setNumConnections:0];
              if ([v40 rangeOfString:@"com.apple"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v40, "rangeOfString:", @"system") == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v59 setObject:v25 forKey:v41];
              }

              else
              {
                [v60 addObject:v25];
              }
            }
          }

          v63 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
        }

        while (v63);
      }

      allKeys = [v59 allKeys];
      v44 = [allKeys sortedArrayUsingSelector:sel_compare_];
      reverseObjectEnumerator = [v44 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];

      for (j = 0; j != 10; ++j)
      {
        if ([allObjects count] <= j)
        {
          break;
        }

        v48 = [allObjects objectAtIndexedSubscript:j];
        v49 = [v59 objectForKey:v48];

        [v60 addObject:v49];
      }

      connCopy = v57;
      v12 = v54;
      [v54 setTimestamp:{objc_msgSend(v57, "getAWDTimestamp")}];
      [v54 setUsages:v60];
      v8 = v56;
      [v56 setMetric:v54];

      serverCopy = v58;
      self = selfCopy;
    }

    [(PLAWDNetworkUsage *)self resetNetUsageTable];
    netEventCallback2 = [(PLAWDNetworkUsage *)self netEventCallback];
    [netEventCallback2 requestEntry];

    v9 = [connCopy submitMetric:v8];
  }

  return v9;
}

- (void)handleNetCallback:(id)callback
{
  v4 = [callback objectForKey:@"entry"];
  if (v4)
  {
    v31 = v4;
    v5 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"NetworkUsage"];
    v6 = [v31 objectForKeyedSubscript:@"BundleName"];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
      v8 = [v31 objectForKeyedSubscript:@"BundleName"];
      [v7 setObject:v8 forKeyedSubscript:@"NetProcessName"];

      v9 = [v31 objectForKeyedSubscript:@"WifiIn"];
      [v7 setObject:v9 forKeyedSubscript:@"WifiIn"];

      v10 = [v31 objectForKeyedSubscript:@"WifiOut"];
      [v7 setObject:v10 forKeyedSubscript:@"WifiOut"];

      v11 = [v31 objectForKeyedSubscript:@"CellIn"];
      [v7 setObject:v11 forKeyedSubscript:@"CellIn"];

      v12 = [v31 objectForKeyedSubscript:@"CellOut"];
      [v7 setObject:v12 forKeyedSubscript:@"CellOut"];

      operator = [(PLAWDAuxMetrics *)self operator];
      [operator logEntry:v7];

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v18 = [v31 objectForKeyedSubscript:@"WifiIn"];
      [v18 doubleValue];
      v17 = (v19 + 0.0);

      v20 = [v31 objectForKeyedSubscript:@"WifiOut"];
      [v20 doubleValue];
      v14 = (v21 + 0.0);

      v22 = [v31 objectForKeyedSubscript:@"CellIn"];
      [v22 doubleValue];
      v15 = (v23 + 0.0);

      v7 = [v31 objectForKeyedSubscript:@"CellOut"];
      [v7 doubleValue];
      v16 = (v24 + 0.0);
    }

    v25 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    [v25 setObject:@"system" forKeyedSubscript:@"NetProcessName"];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
    [v25 setObject:v26 forKeyedSubscript:@"WifiIn"];

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
    [v25 setObject:v27 forKeyedSubscript:@"WifiOut"];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
    [v25 setObject:v28 forKeyedSubscript:@"CellIn"];

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
    [v25 setObject:v29 forKeyedSubscript:@"CellOut"];

    operator2 = [(PLAWDAuxMetrics *)self operator];
    [operator2 logEntry:v25];
  }

  MEMORY[0x2821F96F8]();
}

- (void)handleNameConnectionCallback:(id)callback
{
  v3 = [callback objectForKey:@"group"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PLAWDNetworkUsage_handleNameConnectionCallback___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleNameConnectionCallback__defaultOnce != -1)
    {
      dispatch_once(&handleNameConnectionCallback__defaultOnce, block);
    }

    if (handleNameConnectionCallback__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s = %@", "-[PLAWDNetworkUsage handleNameConnectionCallback:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDNetworkUsage.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDNetworkUsage handleNameConnectionCallback:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:278];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PLAWDNetworkUsage *)v5 handleNameConnectionCallback:v10];
      }
    }
  }
}

void *__50__PLAWDNetworkUsage_handleNameConnectionCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleNameConnectionCallback__classDebugEnabled = result;
  return result;
}

- (void)resetNetUsageTable
{
  v3 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"NetworkUsage"];
  v4.receiver = self;
  v4.super_class = PLAWDNetworkUsage;
  [(PLAWDAuxMetrics *)&v4 resetTableWithEntryKey:v3];
}

- (void)handleNameConnectionCallback:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_25EE16000, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

@end