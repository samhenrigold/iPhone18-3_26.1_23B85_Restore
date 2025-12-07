@interface PLBatteryUIResponseTypeBatteryBreakdown
- (BOOL)canSetQualifier:(int64_t)qualifier forBundleID:(id)d;
- (BOOL)filterFgBg:(id)bg filterArray:(id)array;
- (BOOL)gizmoConnectedInRange:(_PLTimeIntervalRange)range;
- (BOOL)hasHomeKitEvents;
- (BOOL)shouldShowBreakdown:(id)breakdown;
- (_PLTimeIntervalRange)generateRange:(_PLTimeIntervalRange)result withDataRange:(_PLTimeIntervalRange)range;
- (_PLTimeIntervalRange)getDataRange:(id)range;
- (double)getDataDurationFromRange:(_PLTimeIntervalRange)range;
- (double)getEnergyToRemoveForSlopAdjustment:(id)adjustment withEnergyKey:(id)key forBucket:(id)bucket;
- (double)getNonAppRuntimesWith:(id)with identificationKey:(id)key andRange:(_PLTimeIntervalRange)range withNow:(id)now;
- (id)buildBucketWithEnergyEntries:(id)entries andRange:(_PLTimeIntervalRange)range;
- (id)buildEnergyEntriesWithRootNodes:(id)nodes andQualificationNodes:(id)qualificationNodes andRange:(_PLTimeIntervalRange)range;
- (id)combineQualifiers:(id)qualifiers;
- (id)getAppRuntimesInRange:(_PLTimeIntervalRange)range;
- (id)getBundleIDToDisplayNameMap;
- (id)getBundleIDToReplacementBundleIDMap;
- (id)getBundleIDsToEnergyKeyForSlopAdjustmentMap;
- (id)getDeletedAppBundleIDs;
- (id)getDeletedAppClipBundleIDs;
- (id)getDrainPerBucketIn:(_PLTimeIntervalRange)in;
- (id)getEnergyEntry:(id)entry forBundleID:(id)d;
- (id)getInstalledPluginEntries;
- (id)getLastBatteryEntry;
- (id)getNodeEntriesForEntryKey:(id)key withRange:(_PLTimeIntervalRange)range andTimeInterval:(double)interval;
- (id)getNodeIDToNodeNameMap;
- (id)getNonAppRuntimesInRange:(_PLTimeIntervalRange)range withNow:(id)now;
- (id)getNotificationEntriesInRange:(_PLTimeIntervalRange)range;
- (id)getPluginBundleIDToEntryMap;
- (id)getQualificationNodeEntriesInRange:(_PLTimeIntervalRange)range withTimeInterval:(double)interval;
- (id)getRootNodeEntriesInRange:(_PLTimeIntervalRange)range withTimeInterval:(double)interval;
- (id)getRootNodeIDToRootNodeEnergyKeys;
- (id)getWebAppBundleIDs;
- (id)getWidgetUpdateTypeToCount:(id)count inRange:(_PLTimeIntervalRange)range;
- (id)ongoingUpdateRestoreEntryInitializer;
- (id)processAppTimeEntries:(id)entries inRange:(_PLTimeIntervalRange)range withAppArray:(id)array;
- (id)processNotificationEntries:(id)entries inRange:(_PLTimeIntervalRange)range withAppArray:(id)array;
- (id)processQualificationNodes:(id)nodes inRange:(_PLTimeIntervalRange)range;
- (id)processRootNodes:(id)nodes inRange:(_PLTimeIntervalRange)range;
- (id)result;
- (id)stringifyKeysForDict:(id)dict;
- (int)computeNumberOfBuckets;
- (int)getBatteryMaximumCapacityPercentWithError:(id *)error;
- (signed)getEnergyMetricBucketForRootNodeID:(id)d;
- (signed)getWidgetTypeForEnergyEntry:(id)entry;
- (signed)getWidgetTypeForHostName:(id)name;
- (void)addEntryTypes:(id)types;
- (void)addErrorCode:(id)code;
- (void)addQualifiers:(id)qualifiers;
- (void)addTotalEnergy:(id)energy;
- (void)addTotals:(id)totals;
- (void)addTotals:(id)totals with:(int)with;
- (void)adjustEnergyValues:(id)values;
- (void)adjustExtensionBackgroundTimeWithEnergyEntries:(id)entries;
- (void)adjustRuntimes:(id)runtimes;
- (void)applyDisplayNameTransformation:(id)transformation;
- (void)applyDynamicNameTransformation:(id)transformation;
- (void)applySlopAdjustment:(id)adjustment;
- (void)applyStaticNameTransformation:(id)transformation;
- (void)buildBucketsForRange:(_PLTimeIntervalRange)range;
- (void)buildUtilityCache;
- (void)cleanEntries:(id)entries;
- (void)coalesce;
- (void)collapseEnergyEntries:(id)entries;
- (void)configure:(id)configure;
- (void)createPerAppBreakdown:(id)breakdown;
- (void)enumerateBucketsUsingBlock:(id)block;
- (void)filterEnergyEntries:(id)entries;
- (void)filterEnergyEntriesWithRuntimes:(id)runtimes;
- (void)getStaticData;
- (void)identifyBucket:(id)bucket withRange:(_PLTimeIntervalRange)range;
- (void)initializeBucketsWithRange:(_PLTimeIntervalRange)range;
- (void)normalizeBucket:(id)bucket to:(int)to;
- (void)normalizeForBucket:(id)bucket with:(int)with;
- (void)ongoingUpdateRestoreTransformations:(id)transformations;
- (void)prepareBucketsWithRange:(_PLTimeIntervalRange)range;
- (void)reaccountBackupRestore:(id)restore;
- (void)reaccountExchangeEntries:(id)entries;
- (void)transformCloudDocs:(id)docs;
- (void)transformDeletedApps:(id)apps;
- (void)transformGizmoDaemons:(id)daemons;
- (void)transformPlugins:(id)plugins withBucket:(id)bucket;
@end

@implementation PLBatteryUIResponseTypeBatteryBreakdown

- (id)getRootNodeIDToRootNodeEnergyKeys
{
  v22[17] = *MEMORY[0x277D85DE8];
  v20 = [&unk_28714BD50 objectAtIndexedSubscript:2];
  v21[0] = v20;
  v22[0] = @"PLBatteryUIAppCPUEnergyKey";
  v19 = [&unk_28714BD68 objectAtIndexedSubscript:4];
  v21[1] = v19;
  v22[1] = @"PLBatteryUIAppVENCEnergyKey";
  v18 = [&unk_28714BD80 objectAtIndexedSubscript:5];
  v21[2] = v18;
  v22[2] = @"PLBatteryUIAppVDECEnergyKey";
  v17 = [&unk_28714BD98 objectAtIndexedSubscript:6];
  v21[3] = v17;
  v22[3] = @"PLBatteryUIAppISPEnergyKey";
  v16 = [&unk_28714BDB0 objectAtIndexedSubscript:7];
  v21[4] = v16;
  v22[4] = @"PLBatteryUIAppRestOfSOCEnergyKey";
  v15 = [&unk_28714BDC8 objectAtIndexedSubscript:8];
  v21[5] = v15;
  v22[5] = @"PLBatteryUIAppGPUEnergyKey";
  v14 = [&unk_28714BDE0 objectAtIndexedSubscript:9];
  v21[6] = v14;
  v22[6] = @"PLBatteryUIAppDRAMEnergyKey";
  v13 = [&unk_28714BDF8 objectAtIndexedSubscript:10];
  v21[7] = v13;
  v22[7] = @"PLBatteryUIAppDisplayEnergyKey";
  v2 = [&unk_28714BE10 objectAtIndexedSubscript:11];
  v21[8] = v2;
  v22[8] = @"PLBatteryUIAppWIFIEnergyKey";
  v3 = [&unk_28714BE28 objectAtIndexedSubscript:15];
  v21[9] = v3;
  v22[9] = @"PLBatteryUIAppAUDIOEnergyKey";
  v4 = [&unk_28714BE40 objectAtIndexedSubscript:37];
  v21[10] = v4;
  v22[10] = @"PLBatteryUIAppBBEnergyKey";
  v5 = [&unk_28714BE58 objectAtIndexedSubscript:48];
  v21[11] = v5;
  v22[11] = @"BLMEnergyGPS";
  v6 = [&unk_28714BE70 objectAtIndexedSubscript:12];
  v21[12] = v6;
  v22[12] = @"PLBatteryUIAppWifiLocationEnergyKey";
  v7 = [&unk_28714BE88 objectAtIndexedSubscript:13];
  v21[13] = v7;
  v22[13] = @"PLBatteryUIAppWifiPipelineEnergyKey";
  v8 = [&unk_28714BEA0 objectAtIndexedSubscript:50];
  v21[14] = v8;
  v22[14] = @"PLBatteryUIAppBluetoothEnergyKey";
  v9 = [&unk_28714BEB8 objectAtIndexedSubscript:20];
  v21[15] = v9;
  v22[15] = @"PLBatteryUIAppAccessoryEnergyKey";
  v10 = [&unk_28714BED0 objectAtIndexedSubscript:16];
  v21[16] = v10;
  v22[16] = @"PLBatteryUIAppNfcEnergyKey";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:17];

  return v11;
}

- (signed)getEnergyMetricBucketForRootNodeID:(id)d
{
  v3 = [d intValue] - 2;
  if (v3 > 0x3C)
  {
    return 0;
  }

  else
  {
    return word_25F023A38[v3];
  }
}

- (_PLTimeIntervalRange)getDataRange:(id)range
{
  v43 = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  v5 = *MEMORY[0x277D3F5B8];
  v6 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UsageTime"];
  v40 = [MEMORY[0x277D3F128] entryKeyForType:v5 andName:*MEMORY[0x277D3F318]];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v8 = objc_msgSend_storage(responderService);
  v9 = [v8 firstEntryForKey:v6];

  if (v9)
  {
    entryDate = [v9 entryDate];
    v12 = PLLogCommon(entryDate);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getDataRange:];
    }
  }

  else
  {
    v13 = PLLogCommon(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getDataRange:v13];
    }

    entryDate = rangeCopy;
  }

  responderService2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v15 = objc_msgSend_storage(responderService2);
  v16 = [v15 firstEntryForKey:v40];

  if (v16)
  {
    entryDate2 = [v16 entryDate];
    v19 = PLLogCommon(entryDate2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getDataRange:];
    }
  }

  else
  {
    v20 = PLLogCommon(v17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getDataRange:v20];
    }

    entryDate2 = rangeCopy;
  }

  v21 = [entryDate2 laterDate:entryDate];
  v22 = rangeCopy;
  [v21 timeIntervalSince1970];
  v24 = v23;
  [v22 timeIntervalSince1970];
  v26 = v25;

  v27 = v26 - v24;
  v29 = PLLogCommon(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = MEMORY[0x277CCACA8];
    v39 = v9;
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v24];
    v31 = v16;
    v32 = entryDate;
    v34 = v33 = v6;
    v35 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v24 + v27];
    v36 = [v30 stringWithFormat:@"Start: %@, End %@", v34, v35];

    v9 = v39;
    v6 = v33;
    entryDate = v32;
    v16 = v31;
    *buf = 138412290;
    v42 = v36;
    _os_log_impl(&dword_25EE51000, v29, OS_LOG_TYPE_INFO, "dataRange: %@", buf, 0xCu);
  }

  v37 = v24;
  v38 = v27;
  result.length = v38;
  result.location = v37;
  return result;
}

- (double)getDataDurationFromRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v5 = MEMORY[0x277CBEAA8];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  convertFromMonotonicToSystem = [v6 convertFromMonotonicToSystem];
  v8 = [v5 nearestMidnightBeforeDate:convertFromMonotonicToSystem];

  v9 = MEMORY[0x277CBEAA8];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location + length];
  convertFromMonotonicToSystem2 = [v10 convertFromMonotonicToSystem];
  v12 = [v9 nearestMidnightAfterDate:convertFromMonotonicToSystem2];

  [v12 timeIntervalSinceDate:v8];
  v14 = v13;

  return v14;
}

- (id)getNodeEntriesForEntryKey:(id)key withRange:(_PLTimeIntervalRange)range andTimeInterval:(double)interval
{
  length = range.length;
  location = range.location;
  keyCopy = key;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ NOT NULL) AND (%@ NOT LIKE '%%%@%%') AND (%@ NOT LIKE '%%%@%%')", *MEMORY[0x277D3F3E0], *MEMORY[0x277D3F3E0], @"null", *MEMORY[0x277D3F3E0], @"unknown"];
  v11 = MEMORY[0x277CCACA8];
  v12 = *MEMORY[0x277D3F300];
  entryKey = [MEMORY[0x277D3F0C8] entryKey];
  v14 = [v11 stringWithFormat:@"%@ IN (SELECT ID FROM '%@' WHERE %@)", v12, entryKey, v10];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ > %d", *MEMORY[0x277D3F320], 100];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM '%@' WHERE (timestamp>%f AND timestamp<%f AND timeInterval=%f AND (%@) AND (%@))", keyCopy, *&location, location + length, *&interval, v14, v15];;
  v17 = PLLogCommon(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getNodeEntriesForEntryKey:withRange:andTimeInterval:];
  }

  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v19 = objc_msgSend_storage(responderService);
  v20 = [v19 entriesForKey:keyCopy withQuery:v16];

  return v20;
}

- (id)getAppRuntimesInRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v6 = objc_msgSend_storage(responderService);
  v7 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AppRunTime"];
  v8 = [v6 aggregateEntriesForKey:v7 withBucketLength:3600.0 inTimeIntervalRange:{location, length}];

  return v8;
}

- (id)getNonAppRuntimesInRange:(_PLTimeIntervalRange)range withNow:(id)now
{
  length = range.length;
  location = range.location;
  v16[3] = *MEMORY[0x277D85DE8];
  nowCopy = now;
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  if (responderService)
  {
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self getNonAppRuntimesWith:@"PLCameraAgent_EventForward_Torch" identificationKey:@"Level" andRange:nowCopy withNow:location, length];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  array = [MEMORY[0x277CBEB18] array];
  if (v10 > 0.0)
  {
    v15[0] = @"BundleID";
    v15[1] = @"ScreenOnTime";
    v16[0] = @"Flashlight";
    v16[1] = &unk_2871456D0;
    v15[2] = @"BackgroundTime";
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    v16[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

    [array addObject:v13];
  }

  return array;
}

- (double)getNonAppRuntimesWith:(id)with identificationKey:(id)key andRange:(_PLTimeIntervalRange)range withNow:(id)now
{
  length = range.length;
  location = range.location;
  v53[1] = *MEMORY[0x277D85DE8];
  withCopy = with;
  keyCopy = key;
  nowCopy = now;
  v13 = location + 1800.0;
  v14 = objc_alloc(MEMORY[0x277D3F260]);
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v16 = [v14 initWithKey:@"timestamp" withValue:v15 withComparisonOperation:5];

  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v18 = objc_msgSend_storage(responderService);
  v45 = v16;
  v53[0] = v16;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  v20 = [v18 lastEntryForKey:withCopy withComparisons:v19 isSingleton:0];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:keyCopy];
    bOOLValue = [v21 BOOLValue];

    if (bOOLValue)
    {
      v23 = v13;
    }

    else
    {
      v23 = -1.0;
    }
  }

  else
  {
    v23 = -1.0;
  }

  responderService2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v25 = objc_msgSend_storage(responderService2);
  v47 = withCopy;
  v26 = [v25 entriesForKey:withCopy inTimeRange:0 withFilters:{v13, length}];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  reverseObjectEnumerator = [v26 reverseObjectEnumerator];
  v28 = [reverseObjectEnumerator countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v49;
    v31 = 0.0;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v49 != v30)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v33 = *(*(&v48 + 1) + 8 * i);
        v34 = [v33 objectForKeyedSubscript:keyCopy];
        bOOLValue2 = [v34 BOOLValue];

        if (bOOLValue2)
        {
          if (v23 == -1.0)
          {
            entryDate = [v33 entryDate];
            [entryDate timeIntervalSince1970];
            v23 = v37;
          }
        }

        else
        {
          if (v23 != -1.0)
          {
            entryDate2 = [v33 entryDate];
            [entryDate2 timeIntervalSince1970];
            v40 = v39 - v23;

            v31 = v31 + v40;
          }

          v23 = -1.0;
        }
      }

      v29 = [reverseObjectEnumerator countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v29);
  }

  else
  {
    v31 = 0.0;
  }

  if (v23 == -1.0)
  {
    v41 = nowCopy;
    v43 = v47;
  }

  else
  {
    v41 = nowCopy;
    [nowCopy timeIntervalSince1970];
    if (v42 >= length + v13)
    {
      v42 = length + v13;
    }

    v31 = v31 + v42 - v23;
    v43 = v47;
  }

  return v31;
}

- (id)getDeletedAppBundleIDs
{
  v37[1] = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_DEFAULT, "Searching for deleted app names", buf, 2u);
  }

  v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871456D0 withComparisonOperation:1];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v7 = objc_msgSend_storage(responderService);
  v37[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v26 = v4;
  v9 = [v7 entriesForKey:v4 withComparisons:v8];

  v11 = PLLogCommon(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v9;
    _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_DEFAULT, "DeletedAppEntries = %@", buf, 0xCu);
  }

  v27 = [MEMORY[0x277CBEB58] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:@"AppBundleId"];
        v19 = [v17 objectForKeyedSubscript:@"AppIsClip"];
        v20 = PLLogCommon(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          intValue = [v19 intValue];
          *buf = 138412546;
          v33 = v18;
          v34 = 1024;
          v35 = intValue;
          _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_DEFAULT, "bundleID=%@, appIsClip=%d", buf, 0x12u);
        }

        if (v18 && ([v19 BOOLValue] & 1) == 0)
        {
          [v27 addObject:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v14);
  }

  v23 = PLLogCommon(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v27;
    _os_log_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEFAULT, "DeletedAppNames = %@", buf, 0xCu);
  }

  v24 = [v27 copy];

  return v24;
}

- (id)getDeletedAppClipBundleIDs
{
  v37[1] = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_DEFAULT, "Searching for deleted app clip names", buf, 2u);
  }

  v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871456D0 withComparisonOperation:1];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v7 = objc_msgSend_storage(responderService);
  v37[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v26 = v4;
  v9 = [v7 entriesForKey:v4 withComparisons:v8];

  v11 = PLLogCommon(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v9;
    _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_DEFAULT, "DeletedAppEntries = %@", buf, 0xCu);
  }

  v27 = [MEMORY[0x277CBEB58] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:@"AppBundleId"];
        v19 = [v17 objectForKeyedSubscript:@"AppIsClip"];
        v20 = PLLogCommon(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          intValue = [v19 intValue];
          *buf = 138412546;
          v33 = v18;
          v34 = 1024;
          v35 = intValue;
          _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_DEFAULT, "bundleID=%@, appIsClip=%d", buf, 0x12u);
        }

        if (v18 && [v19 BOOLValue])
        {
          [v27 addObject:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v14);
  }

  v23 = PLLogCommon(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v27;
    _os_log_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEFAULT, "DeletedAppNames = %@", buf, 0xCu);
  }

  v24 = [v27 copy];

  return v24;
}

- (id)getWebAppBundleIDs
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLXPCAgent" withType:*MEMORY[0x277D3F5D0] withName:@"WebApp"];
  v4 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v6 = objc_msgSend_storage(responderService);
  v7 = [v6 entriesForKey:v3];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"identifier"];

        if (v13)
        {
          v14 = [v12 objectForKeyedSubscript:@"identifier"];
          [v4 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v4 copy];

  return v15;
}

- (id)getBundleIDToDisplayNameMap
{
  v80[1] = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v4 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871456D0 withComparisonOperation:0];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v6 = objc_msgSend_storage(responderService);
  v57 = v4;
  v80[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:1];
  v58 = v3;
  v8 = [v6 entriesForKey:v3 withComparisons:v7];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = PLLogCommon(dictionary);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getBundleIDToDisplayNameMap];
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v68 objects:v79 count:16];
  v12 = 0x277D3F000uLL;
  v59 = v10;
  if (v11)
  {
    v13 = v11;
    v14 = *v69;
    do
    {
      v15 = 0;
      do
      {
        if (*v69 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v68 + 1) + 8 * v15);
        v17 = [v16 objectForKeyedSubscript:@"AppType"];
        intValue = [v17 intValue];

        if (intValue == 101 || ([v16 objectForKeyedSubscript:@"AppBundleId"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"com.apple.NanoUniverse.AegirProxyApp"), v19, v20))
        {
          v22 = [v16 objectForKeyedSubscript:@"AppBundleId"];
          v23 = [v16 objectForKeyedSubscript:@"AppName"];
          if ([*(v12 + 384) debugEnabled])
          {
            v24 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getBundleIDToDisplayNameMap__block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v24;
            if (getBundleIDToDisplayNameMap_defaultOnce != -1)
            {
              dispatch_once(&getBundleIDToDisplayNameMap_defaultOnce, block);
            }

            if (getBundleIDToDisplayNameMap_classDebugEnabled == 1)
            {
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", v22, v23];
              v26 = MEMORY[0x277D3F178];
              v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown+Utilities.m"];
              lastPathComponent = [v27 lastPathComponent];
              v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getBundleIDToDisplayNameMap]"];
              [v26 logMessage:v25 fromFile:lastPathComponent fromFunction:v29 fromLineNumber:338];

              v31 = PLLogCommon(v30);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v78 = v25;
                _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v10 = v59;
              v12 = 0x277D3F000;
            }
          }

          [dictionary setObject:v23 forKeyedSubscript:v22];
        }

        else
        {
          v22 = PLLogCommon(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [(PLBatteryUIResponseTypeBatteryBreakdown(Utilities) *)&v75 getBundleIDToDisplayNameMap];
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v68 objects:v79 count:16];
    }

    while (v13);
  }

  v32 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v33 = [v32 countByEnumeratingWithState:&v63 objects:v74 count:16];
  v34 = 0x279A5A000uLL;
  if (v33)
  {
    v35 = v33;
    v36 = *v64;
    v60 = v32;
    do
    {
      v37 = 0;
      do
      {
        if (*v64 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v63 + 1) + 8 * v37);
        if (([v38 mayBeBUIVisible] & 1) == 0)
        {
          bundleIdentifier = [v38 bundleIdentifier];
          v40 = [bundleIdentifier isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"];

          if (!v40)
          {
            bundleIdentifier2 = PLLogCommon(v41);
            if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_DEBUG))
            {
              [(PLBatteryUIResponseTypeBatteryBreakdown(Utilities) *)&v72 getBundleIDToDisplayNameMap];
            }

            goto LABEL_42;
          }
        }

        if (([*(v34 + 3200) hasScreenPresence:v38] & 1) != 0 || (objc_msgSend(v38, "bundleIdentifier"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "isEqualToString:", @"com.apple.NanoUniverse.AegirProxyApp"), v42, v43))
        {
          bundleIdentifier2 = [v38 bundleIdentifier];
          v45 = [dictionary objectForKeyedSubscript:bundleIdentifier2];

          if (!v45)
          {
            localizedName = [v38 localizedName];
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v47 = objc_opt_class();
              v62[0] = MEMORY[0x277D85DD0];
              v62[1] = 3221225472;
              v62[2] = __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getBundleIDToDisplayNameMap__block_invoke_401;
              v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v62[4] = v47;
              if (getBundleIDToDisplayNameMap_defaultOnce_399 != -1)
              {
                dispatch_once(&getBundleIDToDisplayNameMap_defaultOnce_399, v62);
              }

              if (getBundleIDToDisplayNameMap_classDebugEnabled_400 == 1)
              {
                v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", bundleIdentifier2, localizedName];
                v49 = MEMORY[0x277D3F178];
                v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown+Utilities.m"];
                lastPathComponent2 = [v50 lastPathComponent];
                v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getBundleIDToDisplayNameMap]"];
                [v49 logMessage:v48 fromFile:lastPathComponent2 fromFunction:v52 fromLineNumber:356];

                v54 = PLLogCommon(v53);
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v78 = v48;
                  _os_log_debug_impl(&dword_25EE51000, v54, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v34 = 0x279A5A000;
                v32 = v60;
              }
            }

            [dictionary setObject:localizedName forKeyedSubscript:bundleIdentifier2];
          }

LABEL_42:
        }

        ++v37;
      }

      while (v35 != v37);
      v35 = [v32 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v35);
  }

  [dictionary setObject:@"Apple Watch" forKeyedSubscript:@"com.apple.Bridge"];
  v55 = [dictionary copy];

  return v55;
}

void *__81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getBundleIDToDisplayNameMap__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBundleIDToDisplayNameMap_classDebugEnabled = result;
  return result;
}

void *__81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getBundleIDToDisplayNameMap__block_invoke_401(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBundleIDToDisplayNameMap_classDebugEnabled_400 = result;
  return result;
}

- (id)getNodeIDToNodeNameMap
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ NOT NULL) AND (%@ NOT LIKE '%%%@%%') AND (%@ NOT LIKE '%%%@%%')", *MEMORY[0x277D3F3E0], *MEMORY[0x277D3F3E0], @"null", *MEMORY[0x277D3F3E0], @"unknown"];
  v4 = MEMORY[0x277CCACA8];
  v5 = *MEMORY[0x277D3F300];
  entryKey = [MEMORY[0x277D3F0C8] entryKey];
  v24 = v3;
  v7 = [v4 stringWithFormat:@"%@ IN (SELECT ID FROM '%@' WHERE %@)", v5, entryKey, v3];

  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v9 = objc_msgSend_storage(responderService);
  v10 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3D0]];
  v30 = @"WHERE";
  v31[0] = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v12 = [v9 entriesForKey:v10 withProperties:v11];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        name = [v19 name];
        v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v19, "entryID")}];
        [dictionary setObject:name forKeyedSubscript:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  v22 = [dictionary copy];

  return v22;
}

- (id)getPluginBundleIDToEntryMap
{
  v75[1] = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
  v4 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginDeletedDate" withValue:&unk_2871456D0 withComparisonOperation:0];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v6 = objc_msgSend_storage(responderService);
  v52 = v4;
  v75[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:1];
  v53 = v3;
  v8 = [v6 entriesForKey:v3 withComparisons:v7];

  v9 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getPluginBundleIDToEntryMap__block_invoke;
    v70[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v70[4] = v10;
    if (getPluginBundleIDToEntryMap_defaultOnce != -1)
    {
      dispatch_once(&getPluginBundleIDToEntryMap_defaultOnce, v70);
    }

    if (getPluginBundleIDToEntryMap_classDebugEnabled == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"installedPluginEntries=%@", v8];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown+Utilities.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getPluginBundleIDToEntryMap]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:396];

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v9 = 0x277D3F000uLL;
    }
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v66 objects:v74 count:16];
  v55 = v18;
  selfCopy = self;
  if (v19)
  {
    v20 = v19;
    v21 = *v67;
    do
    {
      v22 = 0;
      do
      {
        if (*v67 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v66 + 1) + 8 * v22);
        v24 = [v23 objectForKeyedSubscript:@"PluginId"];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v25 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getPluginBundleIDToEntryMap__block_invoke_422;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v25;
          if (getPluginBundleIDToEntryMap_defaultOnce_420 != -1)
          {
            dispatch_once(&getPluginBundleIDToEntryMap_defaultOnce_420, block);
          }

          if (getPluginBundleIDToEntryMap_classDebugEnabled_421 == 1)
          {
            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"pluginBundleID=%@", v24];
            v27 = MEMORY[0x277D3F178];
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown+Utilities.m"];
            lastPathComponent2 = [v28 lastPathComponent];
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getPluginBundleIDToEntryMap]"];
            [v27 logMessage:v26 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:401];

            v32 = PLLogCommon(v31);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v73 = v26;
              _os_log_debug_impl(&dword_25EE51000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v18 = v55;
            self = selfCopy;
            v9 = 0x277D3F000uLL;
          }
        }

        [dictionary setObject:v23 forKeyedSubscript:v24];

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v20);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  getInstalledPluginEntries = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getInstalledPluginEntries];
  v34 = dictionary;
  v58 = [getInstalledPluginEntries countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v58)
  {
    v57 = *v62;
    v54 = getInstalledPluginEntries;
    do
    {
      v35 = 0;
      do
      {
        if (*v62 != v57)
        {
          objc_enumerationMutation(getInstalledPluginEntries);
        }

        v36 = *(*(&v61 + 1) + 8 * v35);
        v37 = [v36 objectForKeyedSubscript:@"PluginId"];
        v38 = [v36 objectForKeyedSubscript:@"PluginParentApp"];
        v39 = [v34 objectForKeyedSubscript:v37];

        if (!v39)
        {
          if ([*(v9 + 384) debugEnabled])
          {
            v40 = objc_opt_class();
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getPluginBundleIDToEntryMap__block_invoke_431;
            v60[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v60[4] = v40;
            if (getPluginBundleIDToEntryMap_defaultOnce_429 != -1)
            {
              dispatch_once(&getPluginBundleIDToEntryMap_defaultOnce_429, v60);
            }

            if (getPluginBundleIDToEntryMap_classDebugEnabled_430 == 1)
            {
              v41 = MEMORY[0x277CCACA8];
              v42 = [v36 objectForKeyedSubscript:@"PluginExecutableName"];
              v43 = [v36 objectForKeyedSubscript:@"PluginType"];
              v44 = [v41 stringWithFormat:@"pluginExecutableName=%@, pluginBundleID=%@, pluginParentApp=%@, pluginType=%@", v42, v37, v38, v43];

              v45 = MEMORY[0x277D3F178];
              v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown+Utilities.m"];
              lastPathComponent3 = [v46 lastPathComponent];
              v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getPluginBundleIDToEntryMap]"];
              [v45 logMessage:v44 fromFile:lastPathComponent3 fromFunction:v48 fromLineNumber:412];

              v50 = PLLogCommon(v49);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v73 = v44;
                _os_log_debug_impl(&dword_25EE51000, v50, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v9 = 0x277D3F000;
              v34 = dictionary;
              getInstalledPluginEntries = v54;
            }
          }

          [v34 setObject:v36 forKeyedSubscript:v37];
        }

        ++v35;
      }

      while (v58 != v35);
      v58 = [getInstalledPluginEntries countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v58);
  }

  return v34;
}

void *__81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getPluginBundleIDToEntryMap__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getPluginBundleIDToEntryMap_classDebugEnabled = result;
  return result;
}

void *__81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getPluginBundleIDToEntryMap__block_invoke_422(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getPluginBundleIDToEntryMap_classDebugEnabled_421 = result;
  return result;
}

void *__81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getPluginBundleIDToEntryMap__block_invoke_431(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getPluginBundleIDToEntryMap_classDebugEnabled_430 = result;
  return result;
}

- (id)getNotificationEntriesInRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v6 = objc_msgSend_storage(responderService);
  v7 = [v6 aggregateEntriesForKey:@"PLSpringBoardAgent_Aggregate_SBNotifications_Aggregate" withBucketLength:3600.0 inTimeIntervalRange:{location, length}];

  v8 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getNotificationEntriesInRange___block_invoke;
  v12[3] = &unk_279A5C278;
  v14 = location;
  v15 = length;
  v13 = v8;
  v9 = v8;
  [v7 enumerateObjectsUsingBlock:v12];
  v10 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v9 withPrimaryKeys:&unk_28714BF00];

  return v10;
}

void __84__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getNotificationEntriesInRange___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 entryDate];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v3;
  if (v6)
  {
    v7 = v6;
    [v6 timeIntervalSince1970];
    v9 = v8;
    v10 = v4 + v5;

    if (v4 <= v9 && v9 < v10)
    {
      [*(a1 + 32) addObject:v12];
    }
  }
}

- (id)getInstalledPluginEntries
{
  v39 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v2 = [MEMORY[0x277CC1E50] enumeratorWithOptions:0];
  v3 = [v2 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v35;
    v30 = *MEMORY[0x277D3F5E0];
    do
    {
      v6 = 0;
      v31 = v4;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v34 + 1) + 8 * v6);
        bundleIdentifier = [v7 bundleIdentifier];
        if (!bundleIdentifier)
        {
          goto LABEL_20;
        }

        v9 = bundleIdentifier;
        executableURL = [v7 executableURL];
        if (!executableURL)
        {
          goto LABEL_19;
        }

        v11 = executableURL;
        containingBundleRecord = [v7 containingBundleRecord];
        if (!containingBundleRecord)
        {
          goto LABEL_12;
        }

        containingBundleRecord2 = [v7 containingBundleRecord];
        bundleIdentifier2 = [containingBundleRecord2 bundleIdentifier];
        if (!bundleIdentifier2)
        {
          v32 = 0;
LABEL_12:
          v15 = v5;
          v16 = v2;
          extensionPointRecord = [v7 extensionPointRecord];
          identifier = [extensionPointRecord identifier];
          v14 = [identifier isEqualToString:@"com.apple.posterkit.provider"];

          if (!containingBundleRecord)
          {

            v2 = v16;
            v5 = v15;
            v4 = v31;
            if (!v14)
            {
              goto LABEL_20;
            }

LABEL_17:
            v19 = objc_alloc(MEMORY[0x277D3F190]);
            v20 = [(PLOperator *)PLApplicationAgent entryKeyForType:v30 andName:@"AllPlugins"];
            v9 = [v19 initWithEntryKey:v20];

            bundleIdentifier3 = [v7 bundleIdentifier];
            [v9 setObject:bundleIdentifier3 forKeyedSubscript:@"PluginId"];

            containingBundleRecord3 = [v7 containingBundleRecord];
            bundleIdentifier4 = [containingBundleRecord3 bundleIdentifier];
            [v9 setObject:bundleIdentifier4 forKeyedSubscript:@"PluginParentApp"];

            extensionPointRecord2 = [v7 extensionPointRecord];
            identifier2 = [extensionPointRecord2 identifier];
            [v9 setObject:identifier2 forKeyedSubscript:@"PluginType"];

            executableURL2 = [v7 executableURL];
            path = [executableURL2 path];
            [v9 setObject:path forKeyedSubscript:@"PluginExecutableName"];

            [v9 setObject:&unk_2871456D0 forKeyedSubscript:@"PluginDeletedDate"];
            if (!v9)
            {
              goto LABEL_20;
            }

            [array addObject:v9];
LABEL_19:

            goto LABEL_20;
          }

          v2 = v16;
          v5 = v15;
          v4 = v31;
          bundleIdentifier2 = v32;
          goto LABEL_14;
        }

        LOBYTE(v14) = 1;
LABEL_14:
        v32 = bundleIdentifier2;

        if (v14)
        {
          goto LABEL_17;
        }

LABEL_20:
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v4);
  }

  return array;
}

- (id)getLastBatteryEntry
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLBatteryAgent" withType:*MEMORY[0x277D3F5C8] withName:@"Battery"];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v5 = objc_msgSend_storage(responderService);
  v6 = [v5 lastEntryForKey:v3];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"DesignCapacity"];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v6 objectForKeyedSubscript:@"Voltage"];
    [v10 doubleValue];
    v12 = v11 / 1000.0;
  }

  else
  {
    v12 = 0.0;
    v9 = 0.0;
  }

  v17[0] = @"DesignCapacity";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v17[1] = @"Voltage";
  v18[0] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v15;
}

- (BOOL)gizmoConnectedInRange:(_PLTimeIntervalRange)range
{
  location = range.location;
  v5 = range.location + range.length;
  v6 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLIdentityServicesAgent" withType:*MEMORY[0x277D3F5D0] withName:@"LocalLinkType"];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"select * from %@ where linkType=1 and timestamp>=%f and timestamp<=%f limit 1", v6, *&location, *&v5];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v9 = objc_msgSend_storage(responderService);
  v10 = [v9 entriesForKey:v6 withQuery:v7];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__gizmoConnectedInRange___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (gizmoConnectedInRange__defaultOnce != -1)
    {
      dispatch_once(&gizmoConnectedInRange__defaultOnce, block);
    }

    if (gizmoConnectedInRange__classDebugEnabled == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Query Result %@", v10];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown+Utilities.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown(Utilities) gizmoConnectedInRange:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:493];

      v18 = PLLogCommon(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v19 = v10 && [v10 count];

  return v19;
}

void *__76__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__gizmoConnectedInRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  gizmoConnectedInRange__classDebugEnabled = result;
  return result;
}

- (BOOL)hasHomeKitEvents
{
  v3 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLHomeKitAgent" withType:*MEMORY[0x277D3F5E8] withName:@"HomeKitEvents"];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v5 = objc_msgSend_storage(responderService);
  v6 = [v5 countOfEntriesForKey:v3] > 0;

  return v6;
}

- (id)getBundleIDToReplacementBundleIDMap
{
  v153[172] = *MEMORY[0x277D85DE8];
  v9[0] = @"IMRemoteURLConn";
  v9[1] = @"IMRemoteURLConne";
  v153[0] = @"com.apple.MobileSMS";
  v153[1] = @"com.apple.MobileSMS";
  v9[2] = @"com.apple.mobilesms.notification";
  v9[3] = @"GenerativePlaygroundApp.MessagesExtension";
  v153[2] = @"com.apple.MobileSMS";
  v153[3] = @"com.apple.MobileSMS";
  v9[4] = @"com.apple.GenerativePlaygroundApp.MessagesExtension";
  v9[5] = @"mstreamd";
  v153[4] = @"com.apple.MobileSMS";
  v153[5] = @"com.apple.mobileslideshow";
  v9[6] = @"mediastream.mstreamd";
  v9[7] = @"assetsd";
  v153[6] = @"com.apple.mobileslideshow";
  v153[7] = @"com.apple.mobileslideshow";
  v9[8] = @"cloudphotod";
  v9[9] = @"com.apple.mobileslideshow.Discretionary";
  v153[8] = @"com.apple.mobileslideshow";
  v153[9] = @"com.apple.mobileslideshow";
  v9[10] = @"com.apple.icloud-container.com.apple.photos.cloud";
  v9[11] = @"com.apple.photoanalysisd";
  v153[10] = @"com.apple.mobileslideshow";
  v153[11] = @"com.apple.mobileslideshow";
  v9[12] = @"com.apple.photoanalysisd.backgroundanalysis";
  v9[13] = @"com.apple.photos.cloud";
  v153[12] = @"com.apple.mobileslideshow";
  v153[13] = @"com.apple.mobileslideshow";
  v9[14] = @"WirelessRadioManager";
  v9[15] = @"WirelessRadioManagerd";
  v153[14] = @"com.apple.mobilephone";
  v153[15] = @"com.apple.mobilephone";
  v9[16] = @"WirelessRadioMa";
  v9[17] = @"vmd";
  v153[16] = @"com.apple.mobilephone";
  v153[17] = @"com.apple.mobilephone";
  v9[18] = @"ipTelephony";
  v9[19] = @"ContactsUI.MonogramPosterExtension";
  v153[18] = @"com.apple.mobilephone";
  v153[19] = @"com.apple.mobilephone";
  v9[20] = @"com.apple.ContactsUI.MonogramPosterExtension";
  v9[21] = @"com.apple.MailCompositionService";
  v153[20] = @"com.apple.mobilephone";
  v153[21] = @"com.apple.mobilemail";
  v9[22] = @"MailCompositionService";
  v9[23] = @"suggestd";
  v153[22] = @"com.apple.mobilemail";
  v153[23] = @"com.apple.mobilemail";
  v9[24] = @"email.maild";
  v9[25] = @"com.apple.email.maild";
  v153[24] = @"com.apple.mobilemail";
  v153[25] = @"com.apple.mobilemail";
  v9[26] = @"maild";
  v9[27] = @"com.apple.springboard.lockscreen.navigation";
  v153[26] = @"com.apple.mobilemail";
  v153[27] = @"com.apple.Maps";
  v2 = *MEMORY[0x277D0ABB8];
  v9[28] = @"com.apple.Siri";
  v10 = v2;
  v153[28] = @"Siri";
  v153[29] = @"Siri";
  v11 = @"assistantd";
  v12 = @"omniSearch.SearchToolExtension";
  v153[30] = @"Siri";
  v153[31] = @"Siri";
  v13 = @"com.apple.WebKit.Networking";
  v14 = @"com.apple.WebKit.WebContent";
  v153[32] = @"com.apple.mobilesafari";
  v153[33] = @"com.apple.mobilesafari";
  v15 = @"com.apple.WebKit";
  v16 = @"com.apple.WebKi";
  v153[34] = @"com.apple.mobilesafari";
  v153[35] = @"com.apple.mobilesafari";
  v17 = @"com.apple.SafariViewService";
  v18 = @"safarifetcherd";
  v153[36] = @"com.apple.mobilesafari";
  v153[37] = @"com.apple.mobilesafari";
  v19 = @"com.apple.WebKit.WebContent.CaptivePortal";
  v20 = @"com.apple.WebKit.WebContent.Development";
  v153[38] = @"com.apple.mobilesafari";
  v153[39] = @"com.apple.mobilesafari";
  v21 = @"com.apple.WebKit.GPU";
  v22 = @"com.apple.WebKit.GPU.Development";
  v153[40] = @"com.apple.mobilesafari";
  v153[41] = @"com.apple.mobilesafari";
  v23 = @"com.apple.PassKitCore";
  v24 = @"passd";
  v153[42] = @"com.apple.Passbook";
  v153[43] = @"com.apple.Passbook";
  v25 = @"PassbookUIService";
  v26 = @"com.apple.PassbookUIService";
  v153[44] = @"com.apple.Passbook";
  v153[45] = @"com.apple.Passbook";
  v27 = @"com.apple.calendar";
  v28 = @"calaccessd";
  v153[46] = @"com.apple.mobilecal";
  v153[47] = @"com.apple.mobilecal";
  v3 = *MEMORY[0x277D66F48];
  v29 = *MEMORY[0x277D66F20];
  v30 = v3;
  v153[48] = @"HLS";
  v153[49] = @"HLS";
  v4 = *MEMORY[0x277D66F58];
  v31 = *MEMORY[0x277D66F10];
  v32 = v4;
  v153[50] = @"HLS";
  v153[51] = @"HLS";
  v33 = *MEMORY[0x277D0AB98];
  v153[52] = @"HLS";
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v33, @"aod", @"IMRemoteURLConn", @"IMRemoteURLConne", @"com.apple.mobilesms.notification", @"GenerativePlaygroundApp.MessagesExtension", @"com.apple.GenerativePlaygroundApp.MessagesExtension", @"mstreamd", @"mediastream.mstreamd", @"assetsd", @"cloudphotod", @"com.apple.mobileslideshow.Discretionary", @"com.apple.icloud-container.com.apple.photos.cloud", @"com.apple.photoanalysisd", @"com.apple.photoanalysisd.backgroundanalysis", @"com.apple.photos.cloud", @"WirelessRadioManager", @"WirelessRadioManagerd", @"WirelessRadioMa", @"vmd", @"ipTelephony", @"ContactsUI.MonogramPosterExtension", @"com.apple.ContactsUI.MonogramPosterExtension", @"com.apple.MailCompositionService", @"MailCompositionService", @"suggestd", @"email.maild", @"com.apple.email.maild", @"maild", @"com.apple.springboard.lockscreen.navigation", @"com.apple.Siri", v10, @"assistantd", @"omniSearch.SearchToolExtension", @"com.apple.WebKit.Networking", @"com.apple.WebKit.WebContent", @"com.apple.WebKit", @"com.apple.WebKi", @"com.apple.SafariViewService", @"safarifetcherd", @"com.apple.WebKit.WebContent.CaptivePortal", @"com.apple.WebKit.WebContent.Development", @"com.apple.WebKit.GPU", @"com.apple.WebKit.GPU.Development", @"com.apple.PassKitCore", @"passd", @"PassbookUIService", @"com.apple.PassbookUIService", @"com.apple.calendar", @"calaccessd", v29, v30, v31, v4, v33];
  v6 = *MEMORY[0x277D0AB90];
  v34 = v5;
  v35 = v6;
  v153[53] = @"AlwaysOnDisplay";
  v153[54] = @"HLS";
  v36 = *MEMORY[0x277D0ABB0];
  v37 = @"LockScreen";
  v153[55] = @"HLS";
  v153[56] = @"HLS";
  v38 = @"com.apple.PosterBoard";
  v39 = @"PosterBoard";
  v153[57] = @"HLS";
  v153[58] = @"HLS";
  v40 = @"com.apple.MobileBackup.framework";
  v41 = @"backupd";
  v153[59] = @"Backup";
  v153[60] = @"Backup";
  v42 = @"com.apple.backupd";
  v43 = @"softwareupdateservicesd";
  v153[61] = @"Backup";
  v153[62] = @"Backup";
  v44 = @"mobile.softwareupdated";
  v45 = @"com.apple.Restore";
  v153[63] = @"Backup";
  v153[64] = @"com.apple.AppStore";
  v46 = @"com.apple.atc";
  v153[65] = @"com.apple.AppStore";
  v47 = @"installd";
  v153[66] = @"com.apple.AppStore";
  v48 = @"com.apple.StreamingUnzipService";
  v153[67] = @"com.apple.AppStore";
  v49 = @"containermanagerd";
  v153[68] = @"com.apple.AppStore";
  v50 = @"appstored";
  v153[69] = @"com.apple.AppStore";
  v51 = @"OOS";
  v153[70] = @"PoorCellCondition";
  v52 = @"healthd";
  v153[71] = @"com.apple.Health";
  v53 = @"com.apple.healthappd";
  v153[72] = @"com.apple.Health";
  v54 = @"misd";
  v153[73] = @"Hotspot";
  v55 = @"RadarComposeUIService";
  v153[74] = @"com.apple.ist.radar";
  v56 = @"remindd";
  v153[75] = @"com.apple.reminders";
  v57 = @"homed";
  v153[76] = @"HomeKit";
  v58 = @"com.apple.private.alloy.willow";
  v153[77] = @"HomeKit";
  v59 = @"atc";
  v153[78] = @"com.apple.Music";
  v60 = @"siriactionsd";
  v153[79] = @"com.apple.shortcuts";
  v61 = @"com.apple.WorkflowKit.BackgroundShortcutRunner";
  v153[80] = @"com.apple.shortcuts";
  v62 = @"weatherd";
  v153[81] = @"com.apple.weather";
  v63 = @"synapse.contentlinkingd";
  v153[82] = @"com.apple.mobilenotes";
  v64 = @"com.apple.sportsd";
  v153[83] = @"com.apple.tv";
  v65 = @"sportsd";
  v153[84] = @"com.apple.tv";
  v66 = @"com.apple.continuitycaptured";
  v153[85] = @"com.apple.sidecar.extension.capture";
  v67 = @"com.apple.ContinuityCaptureShieldUI";
  v153[86] = @"com.apple.sidecar.extension.capture";
  v68 = @"com.apple.ScreenContinuityShell";
  v153[87] = @"ScreenContinuityShell";
  v69 = @"GenerativePlaygroundApp";
  v153[88] = @"com.apple.GenerativePlaygroundApp";
  v70 = @"eventkitsyncd";
  v153[89] = @"com.apple.mobilecal";
  v71 = @"companioncamerad";
  v153[90] = @"com.apple.camera";
  v72 = @"nanomailbootstrapd";
  v153[91] = @"com.apple.mobilemail";
  v73 = @"nanomapscd";
  v153[92] = @"com.apple.Maps";
  v74 = @"companionmessagesd";
  v153[93] = @"com.apple.MobileSMS";
  v75 = @"NPKCompanionAgent";
  v153[94] = @"com.apple.Passbook";
  v76 = @"tursd";
  v153[95] = @"com.apple.mobilephone";
  v77 = @"nptocompaniond";
  v153[96] = @"com.apple.mobileslideshow";
  v78 = @"remotemediaservicesd";
  v153[97] = @"com.apple.RemoteMediaServices";
  v79 = @"companionfindlocallyd";
  v153[98] = @"com.apple.companionfindlocallyd";
  v80 = @"pairedunlockd";
  v153[99] = @"com.apple.pairedunlockd";
  v81 = @"nanoweatherprefsd";
  v153[100] = @"com.apple.weather";
  v82 = @"com.apple.ess";
  v153[101] = @"com.apple.mobilephone";
  v83 = @"com.apple.madrid";
  v153[102] = @"com.apple.MobileSMS";
  v84 = @"com.apple.private.alloy.accountssync";
  v153[103] = @"accountsd";
  v85 = @"com.apple.private.alloy.addressbooksync";
  v153[104] = @"addressbooksyncd";
  v86 = @"com.apple.private.alloy.appregistrysync";
  v153[105] = @"nanoappregistryd";
  v87 = @"com.apple.private.alloy.audiocontrol.bridge";
  v153[106] = @"com.apple.Bridge";
  v88 = @"com.apple.private.alloy.audiocontrol.music";
  v153[107] = @"com.apple.Music";
  v89 = @"com.apple.private.alloy.bluetoothregistry";
  v153[108] = @"nanoregistryd";
  v90 = @"com.apple.private.alloy.bulletindistributor.settings";
  v153[109] = @"bulletindistributord";
  v91 = @"com.apple.private.alloy.bulletindistributor";
  v153[110] = @"bulletindistributord";
  v92 = @"com.apple.private.alloy.callhistorysync";
  v153[111] = @"CallHistorySyncHelper";
  v93 = @"com.apple.private.alloy.camera.proxy";
  v153[112] = @"com.apple.camera";
  v94 = @"com.apple.private.alloy.continuity.activity";
  v153[113] = @"sharingd";
  v95 = @"com.apple.private.alloy.continuity.auth";
  v153[114] = @"sharingd";
  v96 = @"com.apple.private.alloy.continuity.encryption";
  v153[115] = @"sharingd";
  v97 = @"com.apple.private.alloy.continuity.tethering";
  v153[116] = @"sharingd";
  v98 = @"com.apple.private.alloy.coreduet";
  v153[117] = @"coreduetd";
  v99 = @"com.apple.private.alloy.eventkitsync";
  v153[118] = @"com.apple.mobilecal";
  v100 = @"com.apple.private.alloy.fignero";
  v153[119] = @"mediaserverd";
  v101 = @"com.apple.private.alloy.findmylocaldevice";
  v153[120] = @"com.apple.companionfindlocallyd";
  v102 = @"com.apple.private.alloy.fmf";
  v153[121] = @"fmfd";
  v103 = @"com.apple.private.alloy.health.general";
  v153[122] = @"com.apple.Health";
  v104 = @"com.apple.private.alloy.health.sync";
  v153[123] = @"com.apple.Health";
  v105 = @"com.apple.private.alloy.icloudpairing";
  v153[124] = @"bluetoothd";
  v106 = @"com.apple.private.alloy.idscredentials";
  v153[125] = @"IDSCredentialsAgent";
  v107 = @"com.apple.private.alloy.idsremoteurlconnection";
  v153[126] = @"IDSRemoteURLConnectionAgent";
  v108 = @"com.apple.private.alloy.idstransfers";
  v153[127] = @"IMTransferAgent";
  v109 = @"com.apple.private.alloy.iosdiagnostics";
  v153[128] = @"Diagnostics";
  v110 = @"com.apple.private.alloy.location.auth";
  v153[129] = @"locationd";
  v111 = @"com.apple.private.alloy.location.motion";
  v153[130] = @"locationd";
  v112 = @"com.apple.private.alloy.location.usage";
  v153[131] = @"locationd";
  v113 = @"com.apple.private.alloy.location.wifitilesync";
  v153[132] = @"locationd";
  v114 = @"com.apple.private.alloy.mail.fetches";
  v153[133] = @"com.apple.mobilemail";
  v115 = @"com.apple.private.alloy.mail.sync.accounts";
  v153[134] = @"com.apple.mobilemail";
  v116 = @"com.apple.private.alloy.mail.sync.content";
  v153[135] = @"com.apple.mobilemail";
  v117 = @"com.apple.private.alloy.mail.sync.messages";
  v153[136] = @"com.apple.mobilemail";
  v118 = @"com.apple.private.alloy.maps.proxy";
  v153[137] = @"com.apple.Maps";
  v119 = @"com.apple.private.alloy.maps.sync";
  v153[138] = @"com.apple.Maps";
  v120 = @"com.apple.private.alloy.maps";
  v153[139] = @"com.apple.Maps";
  v121 = @"com.apple.private.alloy.messages";
  v153[140] = @"com.apple.MobileSMS";
  v122 = @"com.apple.private.alloy.nsurlsessionproxy";
  v153[141] = @"sharingd";
  v123 = @"com.apple.private.alloy.otaupdate";
  v153[142] = @"Restore";
  v124 = @"com.apple.private.alloy.pairedunlock";
  v153[143] = @"com.apple.pairedunlockd";
  v125 = @"com.apple.private.alloy.passbook.general";
  v153[144] = @"com.apple.Passbook";
  v126 = @"com.apple.private.alloy.passbook.maintenance";
  v153[145] = @"com.apple.Passbook";
  v127 = @"com.apple.private.alloy.passbook.provisioning";
  v153[146] = @"com.apple.Passbook";
  v128 = @"com.apple.private.alloy.passbook.relevancy";
  v153[147] = @"com.apple.Passbook";
  v129 = @"com.apple.private.alloy.passbook.remoteadmin";
  v153[148] = @"com.apple.Passbook";
  v130 = @"com.apple.private.alloy.pbbridge";
  v153[149] = @"com.apple.Bridge";
  v131 = @"com.apple.private.alloy.phonecontinuity";
  v153[150] = @"com.apple.mobilephone";
  v132 = @"com.apple.private.alloy.photos.proxy";
  v153[151] = @"com.apple.mobileslideshow";
  v133 = @"com.apple.private.alloy.photostream";
  v153[152] = @"com.apple.mobileslideshow";
  v134 = @"com.apple.private.alloy.preferencessync";
  v153[153] = @"nanoprefsyncd";
  v135 = @"com.apple.private.alloy.proxiedcrashcopier";
  v153[154] = @"ProxiedCrashCopier";
  v136 = @"com.apple.private.alloy.pushproxy";
  v153[155] = @"apsd";
  v137 = @"com.apple.private.alloy.remotemediaservices";
  v153[156] = @"com.apple.RemoteMediaServices";
  v138 = @"com.apple.private.alloy.resourcegrabber";
  v153[157] = @"resourcegrabberd";
  v139 = @"com.apple.private.alloy.screenshotter";
  v153[158] = @"screenshotsyncd";
  v140 = @"com.apple.private.alloy.siri.device";
  v153[159] = @"Siri";
  v141 = @"com.apple.private.alloy.siri.location";
  v153[160] = @"Siri";
  v142 = @"com.apple.private.alloy.siri.proxy";
  v153[161] = @"Siri";
  v143 = @"com.apple.private.alloy.sms";
  v153[162] = @"com.apple.MobileSMS";
  v144 = @"com.apple.private.alloy.sockpuppet";
  v153[163] = @"companionappd";
  v145 = @"com.apple.private.alloy.systemsettings";
  v153[164] = @"nanosystemsettingsd";
  v146 = @"com.apple.private.alloy.telephonyutilitiestemporary";
  v153[165] = @"com.apple.mobilephone";
  v147 = @"com.apple.private.alloy.timesync";
  v153[166] = @"timed";
  v148 = @"com.apple.private.alloy.timezonesync";
  v153[167] = @"tzd";
  v149 = @"com.apple.private.alloy.utilitybelt";
  v153[168] = @"com.apple.Bridge";
  v150 = @"com.apple.private.alloy.voicemailsync";
  v153[169] = @"com.apple.mobilephone";
  v151 = @"com.apple.private.alloy.wifi.networksync";
  v153[170] = @"wifid";
  v152 = @"com.apple.private.alloy.continuity.notifications";
  v153[171] = @"ScreenContinuityShell";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:v9 count:172];

  return v7;
}

- (id)getEnergyEntry:(id)entry forBundleID:(id)d
{
  entryCopy = entry;
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getEnergyEntry_forBundleID___block_invoke;
  v10[3] = &unk_279A5C168;
  v7 = dCopy;
  v11 = v7;
  v12 = &v13;
  [entryCopy enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getEnergyEntry_forBundleID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)getBundleIDsToEnergyKeyForSlopAdjustmentMap
{
  v2 = objc_opt_new();
  v3 = [&unk_28714BF60 objectAtIndexedSubscript:58];
  [v2 setObject:v3 forKeyedSubscript:@"EN"];

  v4 = [&unk_28714BF78 objectAtIndexedSubscript:59];
  [v2 setObject:v4 forKeyedSubscript:@"com.apple.findmy"];

  if ([MEMORY[0x277D3F208] hasAOD])
  {
    [v2 setObject:@"AlwaysOnEnergy" forKeyedSubscript:@"AlwaysOnDisplay"];
  }

  return v2;
}

- (void)configure:(id)configure
{
  configureCopy = configure;
  v5 = [configureCopy objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [configureCopy objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = v9;

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setPercentageOption:2];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setPercentageOption:0];
  }

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setExcludeTimeOnCharger:1];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setExcludeTimeOnCharger:0];
  }

  v11 = [configureCopy objectForKeyedSubscript:@"isDynamicEnd"];
  -[PLBatteryUIResponseTypeBatteryBreakdown setIsDynamicEnd:](self, "setIsDynamicEnd:", [v11 BOOLValue]);

  v12 = +[PLUtilities getOverridableMonotonicNow];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setMonotonicNow:v12];

  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setStart:v13];

  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setEnd:v14];

  v15 = [configureCopy objectForKeyedSubscript:@"bucket"];
  [v15 doubleValue];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBucketSize:?];

  if ([(PLBatteryUIResponseTypeBatteryBreakdown *)self isDynamicEnd])
  {
    monotonicNow = [(PLBatteryUIResponseTypeBatteryBreakdown *)self monotonicNow];
    [monotonicNow timeIntervalSince1970];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setDynamicEndOffset:v10 - v17];
  }

  else
  {
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setDynamicEndOffset:0.0];
  }

  getNodeIDToNodeNameMap = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getNodeIDToNodeNameMap];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setNodeIDsToNodeNames:getNodeIDToNodeNameMap];

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setHasHomeKit:[(PLBatteryUIResponseTypeBatteryBreakdown *)self hasHomeKitEvents]];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setIsSlopAdjustmentEnabled:1];
  getLastBatteryEntry = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getLastBatteryEntry];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setLastBatteryEntry:getLastBatteryEntry];

  v20 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  [v20 doubleValue];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setLastUpgradeTimestamp:?];

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self buildUtilityCache];
  start = [(PLBatteryUIResponseTypeBatteryBreakdown *)self start];
  v22 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self end];
  [start timeIntervalSince1970];
  v24 = v23;
  [v22 timeIntervalSince1970];
  v26 = v25 - v24;

  v27 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self end];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self getDataRange:v27];
  v29 = v28;
  v31 = v30;

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self generateRange:v24 + -1800.0 withDataRange:v26 + 1800.0, v29, v31];
  v33 = v32;
  v35 = v34;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setGizmoConnected:[(PLBatteryUIResponseTypeBatteryBreakdown *)self gizmoConnectedInRange:?]];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self getDataDurationFromRange:v33, v35];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setDataDuration:?];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self buildBucketsForRange:v33, v35];
  if (_os_feature_enabled_impl())
  {
    v36 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getDrainPerBucketIn:v33, v35];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setUiLevelDrainEntries:v36];

    uiLevelDrainEntries = [(PLBatteryUIResponseTypeBatteryBreakdown *)self uiLevelDrainEntries];

    if (!uiLevelDrainEntries)
    {
      v39 = PLLogCommon(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown configure:];
      }
    }
  }
}

- (id)getDrainPerBucketIn:(_PLTimeIntervalRange)in
{
  length = in.length;
  location = in.location;
  v6 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UILevel"];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v8 = objc_msgSend_storage(responderService);
  v35 = v6;
  v9 = [v8 entriesForKey:v6 inTimeRange:0 withFilters:{location, length}];

  v37 = objc_opt_new();
  v10 = location + length;
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  computeNumberOfBuckets = [(PLBatteryUIResponseTypeBatteryBreakdown *)self computeNumberOfBuckets];
  if (computeNumberOfBuckets >= 1)
  {
    v13 = 0;
    LODWORD(v14) = 0;
    do
    {
      v15 = v12;
      v16 = v11;
      v11 = [v12 copy];

      [(PLBatteryUIResponseTypeBatteryBreakdown *)self bucketSize];
      v12 = [v11 dateByAddingTimeInterval:-v17];

      if ([v9 count] <= v14)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        v14 = v14;
        while (1)
        {
          v19 = [v9 objectAtIndexedSubscript:v14];
          [v12 timeIntervalSince1970];
          v21 = v20;
          entryDate = [v19 entryDate];
          [entryDate timeIntervalSince1970];
          v24 = v23;

          if (v21 > v24)
          {
            break;
          }

          [v11 timeIntervalSince1970];
          v26 = v25;
          [(PLBatteryUIResponseTypeBatteryBreakdown *)self dynamicEndOffset];
          v28 = v26 - v27;
          entryDate2 = [v19 entryDate];
          [entryDate2 timeIntervalSince1970];
          v31 = v30;

          if (v28 > v31)
          {
            v32 = [v19 objectForKeyedSubscript:@"Level"];
            v18 = [v32 intValue] + v18;
          }

          ++v14;

          if ([v9 count] <= v14)
          {
            goto LABEL_12;
          }
        }
      }

LABEL_12:
      v33 = [MEMORY[0x277CCABB0] numberWithInt:v18];
      [v37 addObject:v33];

      ++v13;
    }

    while (v13 != computeNumberOfBuckets);
  }

  return v37;
}

- (void)coalesce
{
  buckets = [(PLBatteryUIResponseTypeBatteryBreakdown *)self buckets];
  v4 = [buckets count];

  if (v4)
  {
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self getStaticData];
    buckets2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self buckets];
    v6 = [buckets2 count];

    if (v6 >= 1)
    {
      v7 = 0;
      while (1)
      {
        buckets3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self buckets];
        v9 = [buckets3 objectAtIndexedSubscript:v7];

        [(PLBatteryUIResponseTypeBatteryBreakdown *)self populateEnergyBucketKeysWithEntries:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self populateInternalRootNodeEnergyKeys:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self populateBLDKeysWithEnergyEntries:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self applyStaticNameTransformation:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self adjustExtensionBackgroundTimeWithEnergyEntries:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self applyDynamicNameTransformation:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self adjustRuntimes:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self applyDisplayNameTransformation:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self addEntryTypes:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self filterEnergyEntries:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self filterEnergyEntriesWithRuntimes:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self addTotalEnergy:v9];
        LODWORD(buckets3) = [(PLBatteryUIResponseTypeBatteryBreakdown *)self percentageOption];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self addTotals:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self adjustEnergyValues:v9];
        if (buckets3)
        {
          break;
        }

        if (_os_feature_enabled_impl())
        {
          goto LABEL_8;
        }

LABEL_9:
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self addQualifiers:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self addErrorCode:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self cleanEntries:v9];
        if (_os_feature_enabled_impl())
        {
          [(PLBatteryUIResponseTypeBatteryBreakdown *)self createPerAppBreakdown:v9];
        }

        if ((v6 & 0x7FFFFFFF) == ++v7)
        {
          return;
        }
      }

      if ([(PLBatteryUIResponseTypeBatteryBreakdown *)self percentageOption]== 2)
      {
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self normalizeForBucket:v9 with:v7];
      }

LABEL_8:
      [(PLBatteryUIResponseTypeBatteryBreakdown *)self addTotals:v9 with:v7];
      goto LABEL_9;
    }
  }
}

- (void)normalizeForBucket:(id)bucket with:(int)with
{
  bucketCopy = bucket;
  uiLevelDrainEntries = [(PLBatteryUIResponseTypeBatteryBreakdown *)self uiLevelDrainEntries];
  v7 = [uiLevelDrainEntries count];

  if (v7 <= with)
  {
    intValue = 0;
  }

  else
  {
    uiLevelDrainEntries2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self uiLevelDrainEntries];
    v9 = [uiLevelDrainEntries2 objectAtIndexedSubscript:with];
    intValue = [v9 intValue];
  }

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self normalizeBucket:bucketCopy to:intValue];
}

- (void)addTotals:(id)totals with:(int)with
{
  v36 = *&with;
  v45 = *MEMORY[0x277D85DE8];
  totalsCopy = totals;
  [totalsCopy setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
  [totalsCopy setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];
  [totalsCopy setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [totalsCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v5 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v39 = *v41;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v40 + 1) + 8 * i);
        v9 = MEMORY[0x277CCABB0];
        v10 = [totalsCopy objectForKeyedSubscript:{@"PLBatteryUIForegroundTimeKey", v36}];
        [v10 doubleValue];
        v12 = v11;
        v13 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v13 doubleValue];
        v15 = [v9 numberWithDouble:v12 + v14];
        [totalsCopy setObject:v15 forKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];

        v16 = MEMORY[0x277CCABB0];
        v17 = [totalsCopy objectForKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];
        [v17 doubleValue];
        v19 = v18;
        v20 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        [v20 doubleValue];
        v22 = [v16 numberWithDouble:v19 + v21];
        [totalsCopy setObject:v22 forKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];

        v23 = MEMORY[0x277CCABB0];
        v24 = [totalsCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
        [v24 doubleValue];
        v26 = v25;
        v27 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v27 doubleValue];
        v29 = [v23 numberWithDouble:v26 + v28];
        [totalsCopy setObject:v29 forKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
      }

      v6 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v6);
  }

  if (_os_feature_enabled_impl())
  {
    uiLevelDrainEntries = [(PLBatteryUIResponseTypeBatteryBreakdown *)self uiLevelDrainEntries];
    v31 = [uiLevelDrainEntries count];

    if (v31 <= v36)
    {
      [totalsCopy setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
    }

    else
    {
      uiLevelDrainEntries2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self uiLevelDrainEntries];
      v33 = [uiLevelDrainEntries2 objectAtIndexedSubscript:v36];
      intValue = [v33 intValue];

      v35 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
      [totalsCopy setObject:v35 forKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
    }
  }
}

- (id)result
{
  v11[2] = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToDisplayNames:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setDeletedAppBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setDeletedAppClipBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setPluginBundleIDsToEntries:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setWebAppBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setRootNodeBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setNonAppBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setExchangeBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToReplacementBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToForegroundTimes:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToBackgroundTimes:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setRootNodeIDToRootNodeEnergyKeys:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setIntermediateRootNodes:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setIsDynamicEnd:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setDynamicEndOffset:0.0];
  v10[0] = @"PLBatteryUIBreakdownKey";
  buckets = [(PLBatteryUIResponseTypeBatteryBreakdown *)self buckets];
  reverseObjectEnumerator = [buckets reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v10[1] = @"PLBatteryUIDataDurationKey";
  v11[0] = allObjects;
  v6 = MEMORY[0x277CCABB0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self dataDuration];
  v7 = [v6 numberWithDouble:?];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (_PLTimeIntervalRange)generateRange:(_PLTimeIntervalRange)result withDataRange:(_PLTimeIntervalRange)range
{
  if (range.location == 0.0 && range.length == 0.0)
  {
    location = result.location;
    goto LABEL_21;
  }

  v5 = result.location + result.length;
  if (result.location < range.location)
  {
    v6 = v5 == range.location;
    v7 = v5 < range.location;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && !v6)
  {
    v8 = range.location + range.length;
LABEL_14:
    if (result.location >= range.location)
    {
      location = result.location;
    }

    else
    {
      location = range.location;
    }

    if (v5 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    result.length = v9 - location;
    goto LABEL_21;
  }

  v8 = range.location + range.length;
  if (range.location < result.location && v8 > result.location)
  {
    goto LABEL_14;
  }

  location = 0.0;
  if (result.location != range.location || result.length <= 0.0)
  {
    result.length = 0.0;
    goto LABEL_21;
  }

  result.length = 0.0;
  if (range.length > 0.0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v10 = location;
  result.location = v10;
  return result;
}

- (void)addTotalEnergy:(id)energy
{
  v20 = *MEMORY[0x277D85DE8];
  energyCopy = energy;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [energyCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v10 doubleValue];
        v8 = v8 + v11;
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
    v12 = v8 * 100.0;
  }

  else
  {
    v12 = 0.0;
  }

  +[PLUtilities defaultBatteryEnergyCapacity];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.00f%% of Battery", v12 / v13];
  [energyCopy setObject:v14 forKeyedSubscript:@"PLBatteryUIBatteryCyclesKey"];
}

- (BOOL)filterFgBg:(id)bg filterArray:(id)array
{
  bgCopy = bg;
  arrayCopy = array;
  v7 = [bgCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v8 = [bgCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [bgCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [bgCopy objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
  [v14 doubleValue];
  v16 = v15;

  v17 = 0;
  if (v16 <= 0.0 && v10 == 0.0 && v13 < 60.0)
  {
    if ([v7 isEqualToString:@"com.apple.findmy"])
    {
      v18 = [&unk_28714D628 objectAtIndexedSubscript:59];
      v19 = [bgCopy objectForKeyedSubscript:v18];
      [v19 doubleValue];
      v21 = v20;

      if (v21 > 0.0)
      {
        v23 = PLLogCommon(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryUIResponseTypeBatteryBreakdown filterFgBg:filterArray:];
        }

        [arrayCopy addObject:bgCopy];
      }
    }

    v17 = 1;
  }

  return v17;
}

- (id)getRootNodeEntriesInRange:(_PLTimeIntervalRange)range withTimeInterval:(double)interval
{
  length = range.length;
  location = range.location;
  v8 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F318]];
  interval = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getNodeEntriesForEntryKey:v8 withRange:location andTimeInterval:length, interval];

  return interval;
}

- (id)getQualificationNodeEntriesInRange:(_PLTimeIntervalRange)range withTimeInterval:(double)interval
{
  length = range.length;
  location = range.location;
  v8 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F2F0]];
  interval = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getNodeEntriesForEntryKey:v8 withRange:location andTimeInterval:length, interval];

  return interval;
}

- (void)getStaticData
{
  rootNodeBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self rootNodeBundleIDs];

  if (!rootNodeBundleIDs)
  {
    getRootNodeBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getRootNodeBundleIDs];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setRootNodeBundleIDs:getRootNodeBundleIDs];
  }

  nonAppBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nonAppBundleIDs];

  if (!nonAppBundleIDs)
  {
    getNonAppBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getNonAppBundleIDs];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setNonAppBundleIDs:getNonAppBundleIDs];
  }

  exchangeBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self exchangeBundleIDs];

  if (!exchangeBundleIDs)
  {
    getExchangeBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getExchangeBundleIDs];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setExchangeBundleIDs:getExchangeBundleIDs];
  }

  bundleIDsToReplacementBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];

  if (!bundleIDsToReplacementBundleIDs)
  {
    getBundleIDToReplacementBundleIDMap = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getBundleIDToReplacementBundleIDMap];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToReplacementBundleIDs:getBundleIDToReplacementBundleIDMap];
  }

  bundleIDsToForegroundTimes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToForegroundTimes];

  if (!bundleIDsToForegroundTimes)
  {
    getBundleIDToForegroundTimeMap = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getBundleIDToForegroundTimeMap];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToForegroundTimes:getBundleIDToForegroundTimeMap];
  }

  bundleIDsToBackgroundTimes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToBackgroundTimes];

  if (!bundleIDsToBackgroundTimes)
  {
    getBundleIDToBackgroundTimeMap = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getBundleIDToBackgroundTimeMap];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToBackgroundTimes:getBundleIDToBackgroundTimeMap];
  }

  bundleIDsToEnergyKeyForSlopAdjustment = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToEnergyKeyForSlopAdjustment];

  if (!bundleIDsToEnergyKeyForSlopAdjustment)
  {
    getBundleIDsToEnergyKeyForSlopAdjustmentMap = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getBundleIDsToEnergyKeyForSlopAdjustmentMap];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToEnergyKeyForSlopAdjustment:getBundleIDsToEnergyKeyForSlopAdjustmentMap];
  }

  rootNodeIDToRootNodeEnergyKeys = [(PLBatteryUIResponseTypeBatteryBreakdown *)self rootNodeIDToRootNodeEnergyKeys];

  if (!rootNodeIDToRootNodeEnergyKeys)
  {
    getRootNodeIDToRootNodeEnergyKeys = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getRootNodeIDToRootNodeEnergyKeys];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setRootNodeIDToRootNodeEnergyKeys:getRootNodeIDToRootNodeEnergyKeys];
  }

  intermediateRootNodes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self intermediateRootNodes];

  if (!intermediateRootNodes)
  {
    getIntermediateRootNodes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getIntermediateRootNodes];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setIntermediateRootNodes:getIntermediateRootNodes];
  }
}

- (void)addEntryTypes:(id)types
{
  v43 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  rootNodeBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self rootNodeBundleIDs];

  if (rootNodeBundleIDs)
  {
    nonAppBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nonAppBundleIDs];

    if (nonAppBundleIDs)
    {
      webAppBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self webAppBundleIDs];

      if (webAppBundleIDs)
      {
        bundleIDsToDisplayNames = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];

        if (bundleIDsToDisplayNames)
        {
          [typesCopy setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          obj = [typesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
          v13 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v13)
          {
            v14 = v13;
            v37 = *v39;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v39 != v37)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = *(*(&v38 + 1) + 8 * i);
                v17 = MEMORY[0x277CCABB0];
                v18 = [typesCopy objectForKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];
                [v18 doubleValue];
                v20 = v19;
                v21 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v21 doubleValue];
                v23 = [v17 numberWithDouble:v20 + v22];
                [typesCopy setObject:v23 forKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];

                rootNodeBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self rootNodeBundleIDs];
                v25 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                LOBYTE(v21) = [rootNodeBundleIDs2 containsObject:v25];

                v26 = &unk_287146A38;
                if ((v21 & 1) == 0)
                {
                  nonAppBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nonAppBundleIDs];
                  v28 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  v29 = [nonAppBundleIDs2 containsObject:v28];

                  v26 = &unk_287146A50;
                  if ((v29 & 1) == 0)
                  {
                    webAppBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self webAppBundleIDs];
                    v31 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                    v32 = [webAppBundleIDs2 containsObject:v31];

                    v26 = &unk_287146A68;
                    if ((v32 & 1) == 0)
                    {
                      bundleIDsToDisplayNames2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];
                      v34 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                      v35 = [bundleIDsToDisplayNames2 objectForKeyedSubscript:v34];

                      if (v35)
                      {
                        v26 = &unk_287146A20;
                      }

                      else
                      {
                        v26 = &unk_287146A80;
                      }
                    }
                  }
                }

                [v16 setObject:v26 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];
              }

              v14 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
            }

            while (v14);
          }
        }

        else
        {
          obj = PLLogCommon(v12);
          if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIResponseTypeBatteryBreakdown addEntryTypes:];
          }
        }
      }

      else
      {
        obj = PLLogCommon(v10);
        if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryUIResponseTypeBatteryBreakdown addEntryTypes:];
        }
      }
    }

    else
    {
      obj = PLLogCommon(v8);
      if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown addEntryTypes:];
      }
    }
  }

  else
  {
    obj = PLLogCommon(v6);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown addEntryTypes:];
    }
  }
}

- (void)addQualifiers:(id)qualifiers
{
  v244 = *MEMORY[0x277D85DE8];
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  qualifiersCopy = qualifiers;
  obj = [qualifiersCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v4 = [obj countByEnumeratingWithState:&v231 objects:v243 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v232;
    v7 = 0x277CBE000uLL;
    v8 = 0.33;
    selfCopy = self;
    v218 = *v232;
    do
    {
      v9 = 0;
      v219 = v5;
      do
      {
        if (*v232 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v231 + 1) + 8 * v9);
        array = [*(v7 + 2840) array];
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v12 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];
        [v12 doubleValue];
        v14 = v13;

        v15 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v15 doubleValue];
        v17 = v16;

        if (v17 >= 1.0 || [v11 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"])
        {
          v18 = v8;
          v19 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          [v19 doubleValue];
          v21 = v20;

          v22 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v22 doubleValue];
          v24 = v23;

          v25 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
          [v25 doubleValue];
          v27 = v26;

          v28 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
          [v28 doubleValue];
          v30 = v29;

          [(PLBatteryUIResponseTypeBatteryBreakdown *)self bgLocationAudioTimeRuntimes:v10 bundleID:v11];
          v226 = v24;
          v31 = v21 + v24;
          v32 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeOriginalKey"];
          [v32 doubleValue];
          v34 = v33;

          v36 = PLLogCommon(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218240;
            v236 = v34;
            v237 = 2048;
            v238 = v31;
            _os_log_debug_impl(&dword_25EE51000, v36, OS_LOG_TYPE_DEBUG, "adding AlwaysOnTimeInSecs=%f to totalRuntime=%f for AppQualifierPluggedIn calculation", buf, 0x16u);
          }

          [(PLBatteryUIResponseTypeBatteryBreakdown *)self bucketSize];
          v38 = v37;
          defaultBatteryEnergyCapacity = [MEMORY[0x277D3F058] defaultBatteryEnergyCapacity];
          if (v40 <= 0.0)
          {
            v41 = 0;
          }

          else
          {
            v40 = v14 / v40;
            v41 = v40 > dbl_25F023B30[v38 > 3600.0];
          }

          v42 = v31 + v34;
          if (v42 > 0.0)
          {
            v43 = v27 + v30;
            v40 = v43 / v42;
            if (v43 / v42 >= 0.8 && !v41)
            {
              v44 = PLLogCommon(defaultBatteryEnergyCapacity);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218240;
                v236 = v43;
                v237 = 2048;
                v238 = v42;
                _os_log_debug_impl(&dword_25EE51000, v44, OS_LOG_TYPE_DEBUG, "adding AppQualifierPluggedIn pluggedInSecs=%f, totalRuntime=%f", buf, 0x16u);
              }

              [array addObject:&unk_287146A98];
            }
          }

          if (v14 == 0.0)
          {
            [v10 setObject:&unk_287146A20 forKeyedSubscript:{@"PLBatteryUIAppAlwaysOnRuntimeKey", v40}];
            [v10 setObject:array forKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];
            v8 = v18;
          }

          else
          {
            v45 = [&unk_28714D640 objectAtIndexedSubscript:{1, v40}];
            v46 = [v10 objectForKeyedSubscript:v45];
            [v46 doubleValue];
            v48 = v47;

            v49 = v48 / v14;
            v8 = v18;
            if (v48 / v14 > v18 && [(PLBatteryUIResponseTypeBatteryBreakdown *)self canSetQualifier:1 forBundleID:v11, v49])
            {
              [array addObject:&unk_287146AB0];
            }

            v50 = [&unk_28714D658 objectAtIndexedSubscript:{2, v49}];
            v51 = [v10 objectForKeyedSubscript:v50];
            [v51 doubleValue];
            v53 = v52;

            v54 = v14 - v53;
            v55 = v54 / v14;
            if (v54 / v14 > 0.5 && [(PLBatteryUIResponseTypeBatteryBreakdown *)self canSetQualifier:2 forBundleID:v11])
            {
              debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
              if (v21 < 300.0 || (v57 = v21 / v226, v21 / v226 < v18))
              {
                if (debugEnabled)
                {
                  v70 = objc_opt_class();
                  v229[0] = MEMORY[0x277D85DD0];
                  v229[1] = 3221225472;
                  v229[2] = __57__PLBatteryUIResponseTypeBatteryBreakdown_addQualifiers___block_invoke_375;
                  v229[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v229[4] = v70;
                  v71 = v229;
                  if (addQualifiers__defaultOnce_373 != -1)
                  {
                    dispatch_once(&addQualifiers__defaultOnce_373, v71);
                  }

                  if (addQualifiers__classDebugEnabled_374 == 1)
                  {
                    v72 = MEMORY[0x277CCACA8];
                    v73 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
                    v74 = [MEMORY[0x277CCABB0] numberWithDouble:v226];
                    v75 = [v72 stringWithFormat:@"BGQualifier: Removing qualifier based on BGTime %@, FGTime %@", v73, v74];

                    v76 = MEMORY[0x277D3F178];
                    v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
                    lastPathComponent = [v77 lastPathComponent];
                    v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown addQualifiers:]"];
                    [v76 logMessage:v75 fromFile:lastPathComponent fromFunction:v79 fromLineNumber:563];

                    v81 = PLLogCommon(v80);
                    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v236 = *&v75;
                      _os_log_debug_impl(&dword_25EE51000, v81, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }
                  }
                }
              }

              else
              {
                if (debugEnabled)
                {
                  v58 = objc_opt_class();
                  v230[0] = MEMORY[0x277D85DD0];
                  v230[1] = 3221225472;
                  v230[2] = __57__PLBatteryUIResponseTypeBatteryBreakdown_addQualifiers___block_invoke;
                  v230[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v230[4] = v58;
                  v59 = v230;
                  if (addQualifiers__defaultOnce != -1)
                  {
                    dispatch_once(&addQualifiers__defaultOnce, v59);
                  }

                  if (addQualifiers__classDebugEnabled == 1)
                  {
                    v60 = MEMORY[0x277CCACA8];
                    v61 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
                    v62 = [MEMORY[0x277CCABB0] numberWithDouble:v226];
                    v63 = [v60 stringWithFormat:@"BGQualifier: Adding qualifier based on BGTime %@, FGTime %@", v61, v62];

                    v64 = MEMORY[0x277D3F178];
                    v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
                    lastPathComponent2 = [v65 lastPathComponent];
                    v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown addQualifiers:]"];
                    [v64 logMessage:v63 fromFile:lastPathComponent2 fromFunction:v67 fromLineNumber:560];

                    v69 = PLLogCommon(v68);
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v236 = *&v63;
                      _os_log_debug_impl(&dword_25EE51000, v69, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }
                  }
                }

                [array addObject:{&unk_287146AC8, v57}];
              }
            }

            if ([v11 isEqualToString:@"com.apple.findmy"])
            {
              v82 = [&unk_28714D670 objectAtIndexedSubscript:59];
              v83 = [v10 objectForKeyedSubscript:v82];
              [v83 doubleValue];
              v85 = v84;

              if (v85 / v14 > v18)
              {
                v86 = [array containsObject:{&unk_287146AC8, v85 / v14}];
                if ((v86 & 1) == 0)
                {
                  v86 = [array addObject:&unk_287146AC8];
                }
              }

              v87 = PLLogCommon(v86);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v236 = *&array;
                _os_log_debug_impl(&dword_25EE51000, v87, OS_LOG_TYPE_DEBUG, "IT Qualifier: %@", buf, 0xCu);
              }
            }

            v223 = v9;
            v88 = [&unk_28714D688 objectAtIndexedSubscript:48];
            v89 = [v10 objectForKeyedSubscript:v88];
            [v89 doubleValue];
            v91 = v90;

            v92 = [&unk_28714D6A0 objectAtIndexedSubscript:12];
            v93 = [v10 objectForKeyedSubscript:v92];
            [v93 doubleValue];
            v95 = v91 + v94;

            v96 = [&unk_28714D6B8 objectAtIndexedSubscript:13];
            v97 = [v10 objectForKeyedSubscript:v96];
            [v97 doubleValue];
            v99 = v95 + v98;

            v100 = MEMORY[0x277CCACA8];
            v101 = [&unk_28714D6D0 objectAtIndexedSubscript:15];
            v102 = [&unk_28714D6E8 objectAtIndexedSubscript:2];
            [v100 stringWithFormat:@"%@-%@", v101, v102];
            v103 = v225 = v11;

            v104 = MEMORY[0x277CCACA8];
            v105 = [&unk_28714D700 objectAtIndexedSubscript:15];
            v106 = [&unk_28714D718 objectAtIndexedSubscript:7];
            v106 = [v104 stringWithFormat:@"%@-%@", v105, v106];

            v108 = MEMORY[0x277CCACA8];
            v109 = [&unk_28714D730 objectAtIndexedSubscript:15];
            v110 = [&unk_28714D748 objectAtIndexedSubscript:9];
            v110 = [v108 stringWithFormat:@"%@-%@", v109, v110];

            v112 = MEMORY[0x277CCACA8];
            v113 = [&unk_28714D760 objectAtIndexedSubscript:15];
            v114 = [&unk_28714D778 objectAtIndexedSubscript:52];
            v114 = [v112 stringWithFormat:@"%@-%@", v113, v114];

            v116 = MEMORY[0x277CCACA8];
            v117 = [&unk_28714D790 objectAtIndexedSubscript:15];
            v118 = [&unk_28714D7A8 objectAtIndexedSubscript:54];
            v118 = [v116 stringWithFormat:@"%@-%@", v117, v118];

            v227 = v103;
            v120 = v103;
            v11 = v225;
            v121 = [v10 objectForKeyedSubscript:v120];
            [v121 doubleValue];
            v123 = v99 + v122;

            v224 = v106;
            v124 = [v10 objectForKeyedSubscript:v106];
            [v124 doubleValue];
            v126 = v123 + v125;

            v222 = v110;
            v127 = [v10 objectForKeyedSubscript:v110];
            [v127 doubleValue];
            v129 = v126 + v128;

            v221 = v114;
            v130 = [v10 objectForKeyedSubscript:v114];
            [v130 doubleValue];
            v132 = v129 + v131;

            v133 = [v10 objectForKeyedSubscript:v118];
            [v133 doubleValue];
            v135 = v132 + v134;

            v137 = PLLogCommon(v136);
            if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v236 = *&v225;
              v237 = 2048;
              v238 = v135;
              _os_log_debug_impl(&dword_25EE51000, v137, OS_LOG_TYPE_DEBUG, "%@ locEnergy: %.3f", buf, 0x16u);
            }

            v138 = v135 / v14;
            v9 = v223;
            if (v135 / v14 > v18 && [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:3 forBundleID:v225, v138])
            {
              v139 = [&unk_28714D7C0 objectAtIndexedSubscript:15];
              v140 = [v10 objectForKeyedSubscript:v139];
              [v140 doubleValue];
              v142 = v141;

              v144 = PLLogCommon(v143);
              if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v236 = *&v225;
                v237 = 2048;
                v238 = v142;
                _os_log_debug_impl(&dword_25EE51000, v144, OS_LOG_TYPE_DEBUG, "%@ bgLocEnergy: %.3f", buf, 0x16u);
              }

              if (v142 / v54 > v18 && [array containsObject:{&unk_287146AC8, v142 / v54}])
              {
                [array removeObject:&unk_287146AC8];
                v145 = &unk_287146AE0;
              }

              else
              {
                v145 = &unk_287146AF8;
              }

              [array addObject:v145];
            }

            v146 = [&unk_28714D7D8 objectAtIndexedSubscript:{17, v138}];
            v147 = [v10 objectForKeyedSubscript:v146];
            [v147 doubleValue];
            v149 = v148;

            v150 = v149 + 0.0;
            v151 = [v10 objectForKeyedSubscript:@"NotificationInfo"];

            if (v151)
            {
              v153 = [v10 objectForKeyedSubscript:@"NotificationInfo"];
              [v153 notificationEnergy];
              v150 = v150 + v154;
            }

            v155 = PLLogCommon(v152);
            if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v236 = v150;
              _os_log_debug_impl(&dword_25EE51000, v155, OS_LOG_TYPE_DEBUG, "Notification energy: %.3f", buf, 0xCu);
            }

            if (v150 > 0.0 && [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:9 forBundleID:v225])
            {
              v156 = +[PLUtilities defaultBatteryEnergyCapacity];
              v158 = v150 * 100.0 / v157;
              v159 = PLLogCommon(v156);
              if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v236 = *&v225;
                v237 = 2048;
                v238 = v150;
                v239 = 2048;
                v240 = v158;
                _os_log_debug_impl(&dword_25EE51000, v159, OS_LOG_TYPE_DEBUG, "%@, energy: %.3f, batteryPercent %.3f", buf, 0x20u);
              }

              v160 = v150 / v14;
              if (v150 / v14 > v8 || (v160 = 1.0, v158 > 1.0))
              {
                [array addObject:{&unk_287146B10, v160}];
              }
            }

            v161 = [&unk_28714D7F0 objectAtIndexedSubscript:3];
            v162 = [v10 objectForKeyedSubscript:v161];
            [v162 doubleValue];
            v164 = v163;

            v165 = v164 / v14;
            if (v164 / v14 > v8 && [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:4 forBundleID:v225, v165])
            {
              [array addObject:&unk_287146B28];
            }

            v166 = [&unk_28714D808 objectAtIndexedSubscript:{4, v165}];
            v167 = [v10 objectForKeyedSubscript:v166];
            [v167 doubleValue];
            v169 = v168;

            v170 = v169 / v14;
            if (v169 / v14 > v8 && [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:5 forBundleID:v225, v170])
            {
              [array addObject:&unk_287146B40];
            }

            v171 = [&unk_28714D820 objectAtIndexedSubscript:{14, v170}];
            v172 = [v10 objectForKeyedSubscript:v171];
            [v172 doubleValue];
            v174 = v173;

            v175 = [&unk_28714D838 objectAtIndexedSubscript:15];
            v176 = [v10 objectForKeyedSubscript:v175];
            [v176 doubleValue];
            v178 = v177;

            v179 = [&unk_28714D850 objectAtIndexedSubscript:55];
            v180 = [v10 objectForKeyedSubscript:v179];
            [v180 doubleValue];
            v182 = v181;

            if ((v174 + v178 + v182) / v14 > v8 && [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:7 forBundleID:v225])
            {
              [array addObject:&unk_287146B58];
            }

            v183 = [v10 objectForKeyedSubscript:@"WatchEnergy"];
            [v183 doubleValue];
            v185 = v184;

            if ([(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy gizmoConnected])
            {
              v186 = v185 / v14;
              if (v185 / v14 > v8)
              {
                if ([(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:10 forBundleID:v225, v186])
                {
                  [array addObject:&unk_287146B70];
                }
              }
            }

            v187 = [v10 objectForKeyedSubscript:{@"PosterEnergy", v186}];
            [v187 doubleValue];
            v189 = v188;

            v190 = v189 / v14;
            if (v189 / v14 > v8 && (v191 = -[PLBatteryUIResponseTypeBatteryBreakdown canSetQualifier:forBundleID:](selfCopy, "canSetQualifier:forBundleID:", 14, v225, v190), (v191 & 1) != 0) || (v191 = [v225 isEqualToString:{@"com.apple.NanoUniverse.AegirProxyApp", v190}], v191))
            {
              v192 = PLLogCommon(v191);
              if (os_log_type_enabled(v192, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138413058;
                v236 = *&v10;
                v237 = 2048;
                v238 = v189;
                v239 = 2048;
                v240 = v14;
                v241 = 2112;
                v242 = v225;
                _os_log_debug_impl(&dword_25EE51000, v192, OS_LOG_TYPE_DEBUG, "Adding Poster Qualifer: energyEntry=%@, posterEnergy=%f, energy=%f, bundleID=%@", buf, 0x2Au);
              }

              [array addObject:&unk_287146B88];
            }

            v193 = [v10 objectForKeyedSubscript:@"ChronoWidgetEnergy"];
            [v193 doubleValue];
            v195 = v194;

            v196 = v195 / v14;
            if (v195 / v14 > v8)
            {
              if ([(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:12 forBundleID:v225, v196])
              {
                [array addObject:&unk_287146BA0];
                if ([(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy getWidgetTypeForEnergyEntry:v10]== 2)
                {
                  if ([(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:16 forBundleID:v225])
                  {
                    [array removeObject:&unk_287146BA0];
                    [array addObject:&unk_287146BB8];
                  }
                }
              }
            }

            v197 = [&unk_28714D868 objectAtIndexedSubscript:{10, v196}];
            v198 = [v10 objectForKeyedSubscript:v197];
            [v198 doubleValue];
            v200 = v199;

            v201 = v200 / v14;
            if (v200 / v14 > v8 && [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:9 forBundleID:v225, v201])
            {
              [array addObject:&unk_287146B10];
            }

            v202 = [v10 objectForKeyedSubscript:{@"PLBatteryUIAppBundleIDKey", v201}];
            v203 = [v202 isEqualToString:@"com.apple.Home"];

            if (v203)
            {
              v205 = [v10 objectForKeyedSubscript:@"HomeKitEnergy"];
              [v205 doubleValue];
              v207 = v206;

              v204 = v207 / v14;
              if (v207 / v14 > v8)
              {
                if ([(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:13 forBundleID:v225, v204])
                {
                  [array addObject:&unk_287146BD0];
                }
              }
            }

            v204 = [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy combineQualifiers:array, v204];
            if ([array containsObject:&unk_287146B58])
            {
              v209 = [array containsObject:&unk_287146AC8];
              if (v55 > 0.5 && v209 && ([v204 containsObject:&unk_287146A98] & 1) == 0)
              {
                v210 = [v204 arrayByAddingObject:&unk_287146AC8];

                v204 = v210;
              }
            }

            array2 = [MEMORY[0x277CBEB18] array];
            if ([v204 containsObject:&unk_287146A98])
            {
              [array2 addObject:&unk_287146A98];
            }

            if ([v204 count])
            {
              v212 = 0;
              do
              {
                v213 = [v204 objectAtIndexedSubscript:v212];
                intValue = [v213 intValue];

                if (intValue != 11)
                {
                  v215 = [v204 objectAtIndexedSubscript:v212];
                  [array2 addObject:v215];
                }

                if ([array2 count] == 2)
                {
                  break;
                }

                ++v212;
              }

              while ([v204 count] > v212);
            }

            [v10 setObject:array2 forKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];

            self = selfCopy;
            v6 = v218;
            v5 = v219;
            v7 = 0x277CBE000;
          }
        }

        ++v9;
      }

      while (v9 != v5);
      v5 = [obj countByEnumeratingWithState:&v231 objects:v243 count:16];
    }

    while (v5);
  }
}

void *__57__PLBatteryUIResponseTypeBatteryBreakdown_addQualifiers___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addQualifiers__classDebugEnabled = result;
  return result;
}

void *__57__PLBatteryUIResponseTypeBatteryBreakdown_addQualifiers___block_invoke_375(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addQualifiers__classDebugEnabled_374 = result;
  return result;
}

- (void)applyStaticNameTransformation:(id)transformation
{
  v88 = *MEMORY[0x277D85DE8];
  transformationCopy = transformation;
  bundleIDsToReplacementBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];

  if (!bundleIDsToReplacementBundleIDs)
  {
    v71 = PLLogCommon(v6);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown applyStaticNameTransformation:];
    }

    goto LABEL_50;
  }

  bundleIDsToDisplayNames = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];

  if (!bundleIDsToDisplayNames)
  {
    v71 = PLLogCommon(v8);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown addEntryTypes:];
    }

LABEL_50:

    goto LABEL_51;
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v72 = transformationCopy;
  obj = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v9 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
  if (!v9)
  {
    goto LABEL_45;
  }

  v10 = v9;
  v11 = *v78;
  v74 = *MEMORY[0x277D0AB98];
  v12 = 0x277CCA000uLL;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v78 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v77 + 1) + 8 * i);
      v15 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      v76 = v15;
      if ([v15 isEqualToString:@"com.apple.springboard.lockscreen.navigation"])
      {
        v16 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        v17 = *(v12 + 2992);
        [v16 doubleValue];
        v19 = [v17 numberWithDouble:-v18];
        [v14 setObject:v19 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

LABEL_10:
        goto LABEL_34;
      }

      if ([v15 isEqualToString:@"com.apple.PassbookUIService"])
      {
        [v14 setObject:&unk_28714B778 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
      }

      else if (_os_feature_enabled_impl())
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v74, @"aod"];
        v21 = [v15 isEqualToString:v20];

        if (v21)
        {
          v23 = PLLogCommon(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v82 = *&v15;
            v83 = 2112;
            v84 = *&v14;
            _os_log_debug_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEBUG, "processing aod entry with bundleID=%@, energyEntry=%@", buf, 0x16u);
          }

          v24 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v14 setObject:v24 forKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];

          v25 = *(v12 + 2992);
          v26 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v26 doubleValue];
          v27 = [v25 numberWithDouble:?];
          [v14 setObject:v27 forKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeOriginalKey"];

          v28 = *(v12 + 2992);
          v29 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v29 doubleValue];
          v30 = [v28 numberWithDouble:?];
          [v14 setObject:v30 forKeyedSubscript:@"AlwaysOnEnergyBeforeClamp"];

          v31 = PLLogCommon([v14 setObject:&unk_28714B778 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"]);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v73 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
            v67 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
            *buf = 138412802;
            v82 = *&v73;
            v83 = 2112;
            v84 = *&v67;
            v68 = v67;
            v85 = 2112;
            v86 = v15;
            _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "Subtracting foregroundPluggedInTime=%@ from alwaysOnRuntime=%@ for bundleID=%@", buf, 0x20u);
          }

          v32 = *(v12 + 2992);
          v33 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v33 doubleValue];
          v35 = v34;
          v36 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
          [v36 doubleValue];
          v38 = v35 - v37;

          if (v38 >= 0.0)
          {
            v39 = v38;
          }

          else
          {
            v39 = 0.0;
          }

          v40 = [v32 numberWithDouble:v39];
          [v14 setObject:v40 forKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];

          v42 = PLLogCommon(v41);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            v69 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
            v70 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeOriginalKey"];
            *buf = 138412546;
            v82 = *&v69;
            v83 = 2112;
            v84 = *&v70;
            _os_log_debug_impl(&dword_25EE51000, v42, OS_LOG_TYPE_DEBUG, "After subtracting plugged in time, alwaysOnRuntime=%@, alwaysOnRuntimeOriginal=%@", buf, 0x16u);
          }

          v43 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v43 doubleValue];
          v45 = v44;

          v46 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v46 doubleValue];
          v48 = v47 / 3600.0;

          v50 = PLLogCommon(v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218496;
            v82 = v45;
            v83 = 2048;
            v84 = v48;
            v85 = 2048;
            v86 = 0x4075E00000000000;
            _os_log_debug_impl(&dword_25EE51000, v50, OS_LOG_TYPE_DEBUG, "AODEnergy=%f, AODUnpluggedTime=%f, kAODModeledPowerUpperBound=%f", buf, 0x20u);
          }

          v15 = v76;
          if (v48 > 0.0)
          {
            v52 = v45 / v48;
            if (v45 / v48 > 350.0)
            {
              v53 = PLLogCommon(v51);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                [PLBatteryUIResponseTypeBatteryBreakdown applyStaticNameTransformation:];
              }

              v54 = [*(v12 + 2992) numberWithDouble:v48 * 350.0];
              [v14 setObject:v54 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

              v56 = PLLogCommon(v55);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                [PLBatteryUIResponseTypeBatteryBreakdown applyStaticNameTransformation:];
              }
            }
          }

          v16 = [v14 objectForKeyedSubscript:{@"PLBatteryUIAppEnergyValueKey", v52}];
          [v14 setObject:v16 forKeyedSubscript:@"AlwaysOnEnergy"];
          goto LABEL_10;
        }
      }

LABEL_34:
      bundleIDsToReplacementBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];
      v58 = [bundleIDsToReplacementBundleIDs2 objectForKeyedSubscript:v15];

      if (v58)
      {
        v60 = PLLogCommon(v59);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v66 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          *buf = 138412546;
          v82 = *&v66;
          v83 = 2112;
          v84 = *&v58;
          _os_log_debug_impl(&dword_25EE51000, v60, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);
        }

        [v14 setObject:v58 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      }

      if ([(PLBatteryUIResponseTypeBatteryBreakdown *)self hasHomeKit])
      {
        v61 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v62 = [v61 isEqualToString:@"HomeKit"];

        if (v62)
        {
          bundleIDsToDisplayNames2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];
          v64 = [bundleIDsToDisplayNames2 objectForKeyedSubscript:@"com.apple.Home"];

          if (v64)
          {
            [v14 setObject:@"com.apple.Home" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          }

          v65 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v14 setObject:v65 forKeyedSubscript:@"HomeKitEnergy"];

          v12 = 0x277CCA000;
        }
      }
    }

    v10 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
  }

  while (v10);
LABEL_45:

  transformationCopy = v72;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self collapseEnergyEntries:v72];
LABEL_51:
}

- (void)applyDynamicNameTransformation:(id)transformation
{
  transformationCopy = transformation;
  v4 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self transformDeletedApps:v4];

  v5 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self transformPlugins:v5 withBucket:transformationCopy];

  v6 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self transformGizmoDaemons:v6];

  v7 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self reaccountExchangeEntries:v7];

  v8 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self reaccountBackupRestore:v8];

  v9 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self ongoingUpdateRestoreTransformations:v9];

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self collapseEnergyEntries:transformationCopy];
}

- (void)applyDisplayNameTransformation:(id)transformation
{
  v24 = *MEMORY[0x277D85DE8];
  transformationCopy = transformation;
  bundleIDsToDisplayNames = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];

  if (bundleIDsToDisplayNames)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
    v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v17 = transformationCopy;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:{@"PLBatteryUIAppBundleIDKey", v17}];
          bundleIDsToDisplayNames2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];
          v14 = [bundleIDsToDisplayNames2 objectForKeyedSubscript:v12];
          if (v14)
          {
            bundleIDsToDisplayNames3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];
            v16 = [bundleIDsToDisplayNames3 objectForKeyedSubscript:v12];
            [v11 setObject:v16 forKeyedSubscript:@"PLBatteryUIAppNameKey"];
          }

          else
          {
            [v11 setObject:v12 forKeyedSubscript:@"PLBatteryUIAppNameKey"];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
      transformationCopy = v17;
    }
  }

  else
  {
    obj = PLLogCommon(v6);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown addEntryTypes:];
    }
  }
}

- (void)filterEnergyEntries:(id)entries
{
  v19 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [entriesCopy objectForKeyedSubscript:{@"PLBatteryUIAppArrayKey", 0}];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        intValue = [v11 intValue];

        if (intValue != 2 && intValue != 5)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [entriesCopy setObject:array forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
}

- (void)filterEnergyEntriesWithRuntimes:(id)runtimes
{
  v47 = *MEMORY[0x277D85DE8];
  runtimesCopy = runtimes;
  array = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = runtimesCopy;
  obj = [runtimesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v5 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v43;
    do
    {
      v8 = 0;
      do
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v42 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v11 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        if ([v11 intValue] == 1)
        {

LABEL_9:
          if (([v10 isEqualToString:@"HLS"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"Siri") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"DeletedApp") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"DeletedAppClip") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"DeletedAppAndAppClip"))
          {
            v13 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v13 doubleValue];
            v15 = v14;

            if (v15 < 60.0)
            {
              v16 = @"PLBatteryUIAppForegroundRuntimeKey";
              if (v15 > 0.0)
              {
                goto LABEL_16;
              }
            }
          }

          else if ([v10 isEqualToString:@"Flashlight"])
          {
            v29 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v29 doubleValue];
            v31 = v30;

            if (v31 < 60.0 && v31 > 0.0)
            {
              goto LABEL_16;
            }
          }

          else if ([v10 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"])
          {
            v32 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v32 doubleValue];
            v34 = v33;

            v35 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v35 doubleValue];
            v37 = v36;

            if (v34 < 60.0 && v37 > 2.0)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_17;
        }

        v12 = [v10 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"];

        if (v12)
        {
          goto LABEL_9;
        }

        v17 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v17 doubleValue];
        v19 = v18;

        if (![(PLBatteryUIResponseTypeBatteryBreakdown *)self filterFgBg:v9 filterArray:array])
        {
          if (v19 > 0.0 && v19 < 60.0)
          {
            v21 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
            [v21 doubleValue];
            v23 = v22;

            v24 = [MEMORY[0x277CCABB0] numberWithDouble:60.0 / v19 * v23];
            [v9 setObject:v24 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

            [v9 setObject:&unk_287146BE8 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          }

          v25 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v25 doubleValue];
          v27 = v26;

          v28 = v27 > 0.0 && v27 < 60.0;
          v16 = @"PLBatteryUIAppAlwaysOnRuntimeKey";
          if (!v28)
          {
            goto LABEL_17;
          }

LABEL_16:
          [v9 setObject:&unk_287146BE8 forKeyedSubscript:?];
LABEL_17:
          [array addObject:{v9, v16}];
        }

        ++v8;
      }

      while (v6 != v8);
      v38 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      v6 = v38;
    }

    while (v38);
  }

  [v39 setObject:array forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
}

- (void)adjustEnergyValues:(id)values
{
  v69 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  if ([(PLBatteryUIResponseTypeBatteryBreakdown *)self isSlopAdjustmentEnabled])
  {
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self applySlopAdjustment:valuesCopy];
  }

  if ([(PLBatteryUIResponseTypeBatteryBreakdown *)self percentageOption]== 1)
  {
    v66 = 0;
    v4 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getBatteryMaximumCapacityPercentWithError:&v66];
    v5 = v66;
    obj = v5;
    if (v5)
    {
      v6 = PLLogCommon(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown adjustEnergyValues:];
      }
    }

    +[PLUtilities defaultBatteryEnergyCapacity];
    v8 = v7;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v9 = [valuesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
    v10 = [v9 countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = v4 / 100.0 * v8;
      v13 = *v63;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v63 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v62 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v16 doubleValue];
          v18 = v17;

          if (v18 <= 2.0)
          {
            v16 = 0;
          }

          else
          {
            LODWORD(v16) = llround(v18 * 100.0 / v12);
          }

          v19 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
          [v15 setObject:v19 forKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];

          v20 = [MEMORY[0x277CCABB0] numberWithInt:v16];
          [v15 setObject:v20 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        }

        v11 = [v9 countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v11);
    }

    goto LABEL_43;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [valuesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v21 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (!v21)
  {
LABEL_43:
    v23 = 0;
LABEL_44:

    goto LABEL_45;
  }

  v22 = v21;
  v23 = 0;
  v24 = 0;
  v56 = *v59;
  do
  {
    for (j = 0; j != v22; ++j)
    {
      if (*v59 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v58 + 1) + 8 * j);
      v27 = [v26 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
      [v27 doubleValue];
      v29 = v28;

      v30 = [v26 objectForKeyedSubscript:@"PLBatteryUIAppEnergyToRemoveForPercentageAdjustmentKey"];
      [v30 doubleValue];
      v32 = v29 - v31;

      if (v32 < 0.0)
      {
        v32 = 0.0;
      }

      v33 = [valuesCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
      [v33 doubleValue];
      v35 = v34;
      v36 = [valuesCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyToRemoveForPercentageAdjustmentKey"];
      [v36 doubleValue];
      v38 = v37;

      if (v29 <= 2.0)
      {
        v33 = 0;
      }

      else
      {
        v39 = v35 - v38;
        if (v35 - v38 < 0.0)
        {
          v39 = 0.0;
        }

        LODWORD(v33) = llround(v32 * 100.0 / v39);
      }

      v40 = [MEMORY[0x277CCABB0] numberWithDouble:v32];
      [v26 setObject:v40 forKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];

      v41 = [MEMORY[0x277CCABB0] numberWithInt:v33];
      [v26 setObject:v41 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

      v42 = [v23 objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];
      [v42 doubleValue];
      v44 = v43;
      v45 = [v23 objectForKeyedSubscript:@"PLBatteryUIAppEnergyToRemoveForPercentageAdjustmentKey"];
      [v45 doubleValue];
      v47 = v46;

      if (!v23)
      {
        goto LABEL_35;
      }

      v48 = v44 - v47;
      if (v44 - v47 < 0.0)
      {
        v48 = 0.0;
      }

      if (v48 < v32)
      {
LABEL_35:
        v49 = v26;

        v23 = v49;
      }

      v24 += v33;
    }

    v22 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
  }

  while (v22);

  if (v24 >= 1 && v24 != 100)
  {
    v50 = MEMORY[0x277CCABB0];
    v51 = [v23 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v51 doubleValue];
    v53 = [v50 numberWithDouble:v52 + (100 - v24)];
    [v23 setObject:v53 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

    if (v24 >= 0x65)
    {
      obj = PLLogCommon(v54);
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown adjustEnergyValues:];
      }

      goto LABEL_44;
    }
  }

LABEL_45:
}

- (void)applySlopAdjustment:(id)adjustment
{
  v49 = *MEMORY[0x277D85DE8];
  adjustmentCopy = adjustment;
  v5 = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
  [v5 doubleValue];
  v7 = v6;

  v37 = adjustmentCopy;
  v8 = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];
  [v8 doubleValue];
  v10 = v9;

  v12 = PLLogCommon(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown applySlopAdjustment:];
  }

  if (v10 > 0.0 && v7 <= v10)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v10];
    [adjustmentCopy setObject:v16 forKeyedSubscript:@"PLBatteryUIExternalDrainRatio"];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
    v17 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v17)
    {
      v19 = v17;
      v20 = *v39;
      v21 = 0.0;
      *&v18 = 138412802;
      v35 = v18;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          v24 = [v23 objectForKeyedSubscript:{@"PLBatteryUIAppBundleIDKey", v35}];
          bundleIDsToEnergyKeyForSlopAdjustment = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToEnergyKeyForSlopAdjustment];
          v26 = [v23 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v27 = [bundleIDsToEnergyKeyForSlopAdjustment objectForKey:v26];

          if (v27)
          {
            bundleIDsToEnergyKeyForSlopAdjustment2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToEnergyKeyForSlopAdjustment];
            v29 = [bundleIDsToEnergyKeyForSlopAdjustment2 objectForKeyedSubscript:v24];

            v30 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getEnergyToRemoveForSlopAdjustment:v23 withEnergyKey:v29 forBucket:v37];
            v32 = v31;
            v33 = PLLogCommon(v30);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = v35;
              v43 = v24;
              v44 = 2112;
              v45 = v29;
              v46 = 2048;
              v47 = v32;
              _os_log_debug_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEBUG, "bundleIDKey=%@, energyKey=%@, energyToRemove=%f", buf, 0x20u);
            }

            v21 = v21 + v32;
          }
        }

        v19 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v19);
    }

    v15 = PLLogCommon(v34);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown applySlopAdjustment:];
    }
  }

  else
  {
    v15 = PLLogCommon(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown applySlopAdjustment:];
    }
  }
}

- (double)getEnergyToRemoveForSlopAdjustment:(id)adjustment withEnergyKey:(id)key forBucket:(id)bucket
{
  v42 = *MEMORY[0x277D85DE8];
  adjustmentCopy = adjustment;
  keyCopy = key;
  bucketCopy = bucket;
  bundleIDsToEnergyKeyForSlopAdjustment = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToEnergyKeyForSlopAdjustment];
  v12 = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v13 = [bundleIDsToEnergyKeyForSlopAdjustment objectForKey:v12];
  if (v13)
  {
    v14 = v13;
    v15 = [adjustmentCopy objectForKeyedSubscript:keyCopy];
    [v15 doubleValue];
    v17 = v16;

    if (v17 > 0.0)
    {
      v19 = [adjustmentCopy objectForKeyedSubscript:keyCopy];
      [v19 doubleValue];
      v21 = v20;

      v22 = [bucketCopy objectForKeyedSubscript:@"PLBatteryUIExternalDrainRatio"];
      [v22 doubleValue];
      v24 = v23;

      if (v21 - v21 * v24 >= 0.0)
      {
        v26 = v21 - v21 * v24;
      }

      else
      {
        v26 = 0.0;
      }

      v27 = PLLogCommon(v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v34 = 134218752;
        v35 = v21;
        v36 = 2048;
        v37 = v24;
        v38 = 2048;
        v39 = v21 * v24;
        v40 = 2048;
        v41 = v26;
        _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "energyToAdjust=%f, adjustmentFactor=%f, adjustedEnergy=%f, energyToRemove=%f", &v34, 0x2Au);
      }

      v28 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
      [adjustmentCopy setObject:v28 forKeyedSubscript:@"PLBatteryUIAppEnergyToRemoveForPercentageAdjustmentKey"];

      v29 = MEMORY[0x277CCABB0];
      v30 = [bucketCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyToRemoveForPercentageAdjustmentKey"];
      [v30 doubleValue];
      v32 = [v29 numberWithDouble:v26 + v31];
      [bucketCopy setObject:v32 forKeyedSubscript:@"PLBatteryUITotalEnergyToRemoveForPercentageAdjustmentKey"];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v30 = PLLogCommon(v18);
  v26 = 0.0;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown getEnergyToRemoveForSlopAdjustment:adjustmentCopy withEnergyKey:keyCopy forBucket:?];
  }

LABEL_12:

  return v26;
}

- (void)adjustRuntimes:(id)runtimes
{
  v30 = *MEMORY[0x277D85DE8];
  runtimesCopy = runtimes;
  bundleIDsToForegroundTimes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToForegroundTimes];

  if (bundleIDsToForegroundTimes)
  {
    bundleIDsToBackgroundTimes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToBackgroundTimes];

    if (bundleIDsToBackgroundTimes)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = [runtimesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v24 = runtimesCopy;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            if (v15)
            {
              bundleIDsToForegroundTimes2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToForegroundTimes];
              v17 = [bundleIDsToForegroundTimes2 objectForKeyedSubscript:v15];

              if (v17)
              {
                bundleIDsToForegroundTimes3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToForegroundTimes];
                v19 = [bundleIDsToForegroundTimes3 objectForKeyedSubscript:v15];
                [v14 setObject:v19 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
              }

              bundleIDsToBackgroundTimes2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToBackgroundTimes];
              v21 = [bundleIDsToBackgroundTimes2 objectForKeyedSubscript:v15];

              if (v21)
              {
                bundleIDsToBackgroundTimes3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToBackgroundTimes];
                v23 = [bundleIDsToBackgroundTimes3 objectForKeyedSubscript:v15];
                [v14 setObject:v23 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
        runtimesCopy = v24;
      }
    }

    else
    {
      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown adjustRuntimes:];
      }
    }
  }

  else
  {
    v9 = PLLogCommon(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown adjustRuntimes:];
    }
  }
}

- (void)adjustExtensionBackgroundTimeWithEnergyEntries:(id)entries
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [entries objectForKeyedSubscript:{@"PLBatteryUIAppArrayKey", 0}];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v10 = v9;
        if (v9 && (([v9 isEqualToString:@"com.apple.store.Jolly.spotlightindex"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"com.apple.mobilemail.DiagnosticExtension")))
        {
          [v8 setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          [v8 setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)addTotals:(id)totals
{
  v36 = *MEMORY[0x277D85DE8];
  totalsCopy = totals;
  [totalsCopy setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
  [totalsCopy setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];
  [totalsCopy setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [totalsCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v4 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v30 = *v32;
    do
    {
      v6 = 0;
      do
      {
        if (*v32 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * v6);
        v8 = MEMORY[0x277CCABB0];
        v9 = [totalsCopy objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
        [v9 doubleValue];
        v11 = v10;
        v12 = [v7 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v12 doubleValue];
        v14 = [v8 numberWithDouble:v11 + v13];
        [totalsCopy setObject:v14 forKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];

        v15 = MEMORY[0x277CCABB0];
        v16 = [totalsCopy objectForKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];
        [v16 doubleValue];
        v18 = v17;
        v19 = [v7 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        [v19 doubleValue];
        v21 = [v15 numberWithDouble:v18 + v20];
        [totalsCopy setObject:v21 forKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];

        v22 = MEMORY[0x277CCABB0];
        v23 = [totalsCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
        [v23 doubleValue];
        v25 = v24;
        v26 = [v7 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v26 doubleValue];
        v28 = [v22 numberWithDouble:v25 + v27];
        [totalsCopy setObject:v28 forKeyedSubscript:@"PLBatteryUITotalEnergyKey"];

        ++v6;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }
}

- (void)addErrorCode:(id)code
{
  codeCopy = code;
  if (![(PLBatteryUIResponseTypeBatteryBreakdown *)self shouldShowBreakdown:?])
  {
    v4 = [codeCopy objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
    [v4 doubleValue];
    if (v5 >= 60.0)
    {
    }

    else
    {
      v6 = [codeCopy objectForKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];
      [v6 doubleValue];
      v8 = v7;

      if (v8 < 60.0)
      {
        [codeCopy setObject:&unk_287146A50 forKeyedSubscript:@"PLBatteryUIErrorCodeKey"];
        v9 = MEMORY[0x277CBEBF8];
        v10 = @"PLBatteryUIAppArrayKey";
        goto LABEL_7;
      }
    }
  }

  v9 = &unk_287146A20;
  v10 = @"PLBatteryUIErrorCodeKey";
LABEL_7:
  [codeCopy setObject:v9 forKeyedSubscript:v10];
}

- (BOOL)shouldShowBreakdown:(id)breakdown
{
  breakdownCopy = breakdown;
  lastBatteryEntry = [(PLBatteryUIResponseTypeBatteryBreakdown *)self lastBatteryEntry];
  v6 = [lastBatteryEntry objectForKeyedSubscript:@"DesignCapacity"];
  [v6 doubleValue];
  v8 = v7;

  lastBatteryEntry2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self lastBatteryEntry];
  v10 = [lastBatteryEntry2 objectForKeyedSubscript:@"Voltage"];
  [v10 doubleValue];
  v12 = v11 / 1000.0;

  v13 = [breakdownCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];

  [v13 doubleValue];
  LOBYTE(breakdownCopy) = v14 > v8 * v12 * 0.001;

  return breakdownCopy;
}

- (void)cleanEntries:(id)entries
{
  v4 = [entries objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__PLBatteryUIResponseTypeBatteryBreakdown_cleanEntries___block_invoke;
  v5[3] = &unk_279A5C310;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __56__PLBatteryUIResponseTypeBatteryBreakdown_cleanEntries___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 removeObjectForKey:@"NotificationInfo"];
  v3 = [v5 objectForKeyedSubscript:@"WidgetUpdateTypeToCount"];
  if ([v3 count])
  {
    v4 = [*(a1 + 32) stringifyKeysForDict:v3];
    [v5 setObject:v4 forKeyedSubscript:@"WidgetUpdateTypeToCount"];
  }
}

- (void)normalizeBucket:(id)bucket to:(int)to
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = [bucket objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (!v6)
  {
    v9 = 0.0;
LABEL_11:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v33 + 1) + 8 * i) setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        }

        v15 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v15);
    }

    goto LABEL_19;
  }

  v7 = v6;
  v8 = *v38;
  v9 = 0.0;
  do
  {
    for (j = 0; j != v7; ++j)
    {
      if (*v38 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [*(*(&v37 + 1) + 8 * j) objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];
      [v11 doubleValue];
      v9 = v9 + v12;
    }

    v7 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
  }

  while (v7);
  if (v9 <= 0.0)
  {
    goto LABEL_11;
  }

LABEL_19:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * k);
        v24 = [v23 objectForKeyedSubscript:{@"PLBatteryUIAppEnergyUsedKey", v29}];
        [v24 doubleValue];
        v26 = v25;

        LODWORD(v27) = llround(v26 / v9 * to);
        v28 = [MEMORY[0x277CCABB0] numberWithInt:v27];
        [v23 setObject:v28 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v20);
  }
}

- (void)createPerAppBreakdown:(id)breakdown
{
  breakdownCopy = breakdown;
  v4 = [breakdownCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_29];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __65__PLBatteryUIResponseTypeBatteryBreakdown_createPerAppBreakdown___block_invoke_2;
  v13 = &unk_279A5E4F0;
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];
  [breakdownCopy setObject:v9 forKeyedSubscript:{@"PLBatteryUIPerAppBreakdownKey", v10, v11, v12, v13}];
  [breakdownCopy setObject:v8 forKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];
}

uint64_t __65__PLBatteryUIResponseTypeBatteryBreakdown_createPerAppBreakdown___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

  [v8 doubleValue];
  v10 = v9;

  if (v7 > v10)
  {
    return -1;
  }

  else
  {
    return v7 < v10;
  }
}

void __65__PLBatteryUIResponseTypeBatteryBreakdown_createPerAppBreakdown___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];

  [*(a1 + 40) addObject:v4];
}

- (void)collapseEnergyEntries:(id)entries
{
  v23 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [entriesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if (v11)
        {
          v12 = [dictionary objectForKeyedSubscript:v11];

          if (v12)
          {
            v15[0] = MEMORY[0x277D85DD0];
            v15[1] = 3221225472;
            v15[2] = __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke;
            v15[3] = &unk_279A5C140;
            v16 = dictionary;
            v17 = v11;
            [v10 enumerateKeysAndObjectsUsingBlock:v15];
          }

          else
          {
            [dictionary setObject:v10 forKeyedSubscript:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  allValues = [dictionary allValues];
  v14 = [allValues mutableCopy];
  [entriesCopy setObject:v14 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
}

void __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"NotificationInfo"])
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v8 = [v7 objectForKeyedSubscript:@"NotificationInfo"];

    v9 = v6;
    if (!v9 || v8)
    {
      [v8 combineWith:v9];
    }

    else
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
      [v10 setObject:v9 forKeyedSubscript:@"NotificationInfo"];
    }

LABEL_19:

    goto LABEL_20;
  }

  if ([v5 isEqualToString:@"WidgetUpdateTypeToCount"])
  {
    v11 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v8 = [v11 objectForKeyedSubscript:@"WidgetUpdateTypeToCount"];

    v9 = v6;
    v12 = PLLogCommon(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke_cold_1();
    }

    if ([v8 count] || !objc_msgSend(v9, "count"))
    {
      v13 = [v8 mutableCopy];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke_569;
      v25[3] = &unk_279A5E518;
      v14 = v13;
      v26 = v14;
      v15 = PLLogCommon([v9 enumerateKeysAndObjectsUsingBlock:v25]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke_cold_2();
      }

      v16 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
      [v16 setObject:v14 forKeyedSubscript:@"WidgetUpdateTypeToCount"];
    }

    else
    {
      v14 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
      [v14 setObject:v9 forKeyedSubscript:@"WidgetUpdateTypeToCount"];
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = MEMORY[0x277CCABB0];
    [v6 doubleValue];
    v19 = v18;
    v20 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v21 = [v20 objectForKeyedSubscript:v5];
    [v21 doubleValue];
    v23 = [v17 numberWithDouble:v19 + v22];
    v24 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    [v24 setObject:v23 forKeyedSubscript:v5];
  }

LABEL_20:
}

void __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke_569(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = MEMORY[0x277CCABB0];
  if (v7)
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v10 = [v8 numberWithInt:{objc_msgSend(v11, "intValue") + objc_msgSend(v9, "intValue")}];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v6];

    v6 = v10;
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "intValue")}];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v6];
  }
}

- (id)combineQualifiers:(id)qualifiers
{
  qualifiersCopy = qualifiers;
  v4 = qualifiersCopy;
  if (qualifiersCopy && [qualifiersCopy count])
  {
    v5 = [MEMORY[0x277CBEB58] setWithArray:v4];
    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146B58))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146A98))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    if ([v5 containsObject:&unk_287146AE0] && objc_msgSend(v5, "containsObject:", &unk_287146A98))
    {
      [v5 removeObject:&unk_287146AE0];
    }

    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146AB0))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    if ([v5 containsObject:&unk_287146B58] && objc_msgSend(v5, "containsObject:", &unk_287146B28))
    {
      [v5 removeObject:&unk_287146B58];
    }

    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146B40))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    if ([v5 containsObject:&unk_287146B40] && objc_msgSend(v5, "containsObject:", &unk_287146B28))
    {
      [v5 removeObject:&unk_287146B40];
    }

    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146B70))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146BD0))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146B10))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    allObjects = [v5 allObjects];
  }

  else
  {
    allObjects = MEMORY[0x277CBEBF8];
  }

  return allObjects;
}

- (void)reaccountExchangeEntries:(id)entries
{
  v61 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  exchangeBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self exchangeBundleIDs];

  if (exchangeBundleIDs)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v41 = entriesCopy;
    v8 = entriesCopy;
    v9 = [v8 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v55;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v55 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v54 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v14)
          {
            v15 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v13 forKeyedSubscript:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v10);
    }

    v16 = [dictionary objectForKeyedSubscript:@"com.apple.activesync"];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
      [v18 doubleValue];
      v20 = v19;

      if (v20 != 0.0)
      {
        v40 = v17;
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        v50 = 0u;
        exchangeBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self exchangeBundleIDs];
        v22 = [exchangeBundleIDs2 countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v51;
          v25 = 0.0;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v51 != v24)
              {
                objc_enumerationMutation(exchangeBundleIDs2);
              }

              v27 = [dictionary objectForKeyedSubscript:*(*(&v50 + 1) + 8 * j)];
              v28 = v27;
              if (v27)
              {
                v29 = [v27 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v29 doubleValue];
                v31 = v30;

                if (v31 >= 0.0)
                {
                  v32 = v31;
                }

                else
                {
                  v32 = 0.0;
                }

                v25 = v25 + v32;
              }
            }

            v23 = [exchangeBundleIDs2 countByEnumeratingWithState:&v50 objects:v59 count:16];
          }

          while (v23);
        }

        else
        {
          v25 = 0.0;
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        exchangeBundleIDs3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self exchangeBundleIDs];
        v34 = [exchangeBundleIDs3 countByEnumeratingWithState:&v46 objects:v58 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v47;
          do
          {
            for (k = 0; k != v35; ++k)
            {
              if (*v47 != v36)
              {
                objc_enumerationMutation(exchangeBundleIDs3);
              }

              v38 = [dictionary objectForKeyedSubscript:*(*(&v46 + 1) + 8 * k)];
              v39 = v38;
              if (v38)
              {
                v42[0] = MEMORY[0x277D85DD0];
                v42[1] = 3221225472;
                v42[2] = __68__PLBatteryUIResponseTypeBatteryBreakdown_reaccountExchangeEntries___block_invoke;
                v42[3] = &unk_279A5C0F0;
                v43 = v38;
                v44 = v20;
                v45 = v25;
                [v43 enumerateKeysAndObjectsUsingBlock:v42];
              }
            }

            v35 = [exchangeBundleIDs3 countByEnumeratingWithState:&v46 objects:v58 count:16];
          }

          while (v35);
        }

        v17 = v40;
        [v8 removeObject:v40];
      }
    }

    entriesCopy = v41;
  }

  else
  {
    dictionary = PLLogCommon(v6);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown applyStaticNameTransformation:];
    }
  }
}

void __68__PLBatteryUIResponseTypeBatteryBreakdown_reaccountExchangeEntries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "rangeOfString:", @"time") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v8 = [v6 numberWithDouble:v7 * (*(a1 + 40) / *(a1 + 48) + 1.0)];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

- (id)ongoingUpdateRestoreEntryInitializer
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"DeviceSetup" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  [dictionary setObject:&unk_287146A50 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];
  [dictionary setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
  [dictionary setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
  [dictionary setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
  [dictionary setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
  [dictionary setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

  return dictionary;
}

- (void)ongoingUpdateRestoreTransformations:(id)transformations
{
  v57 = *MEMORY[0x277D85DE8];
  transformationsCopy = transformations;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = [transformationsCopy countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (!v5)
  {
    ongoingUpdateRestoreEntryInitializer = 0;
    goto LABEL_36;
  }

  v6 = v5;
  selfCopy = self;
  ongoingUpdateRestoreEntryInitializer = 0;
  v8 = *v47;
  v9 = 0.0;
  v43 = transformationsCopy;
  do
  {
    v10 = 0;
    do
    {
      if (*v47 != v8)
      {
        objc_enumerationMutation(transformationsCopy);
      }

      v11 = *(*(&v46 + 1) + 8 * v10);
      v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      v13 = [v12 rangeOfString:@"Backup"];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL || (v13 = [v12 rangeOfString:@"Restore"], v13 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v25 = PLLogCommon(v13);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryUIResponseTypeBatteryBreakdown *)&v44 ongoingUpdateRestoreTransformations:v45];
        }

        [v11 setObject:@"DeviceSetup" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v26 = v11;

        v24 = [v26 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v24 doubleValue];
        v9 = v27;
        ongoingUpdateRestoreEntryInitializer = v26;
        goto LABEL_18;
      }

      v14 = [&unk_28714D880 objectAtIndexedSubscript:16];
      v15 = [v11 objectForKeyedSubscript:v14];
      [v15 doubleValue];
      v17 = v16;

      if (v17 > 0.0)
      {
        v18 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v18 doubleValue];
        v20 = v19;

        v22 = PLLogCommon(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v32 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          *buf = 134218498;
          v51 = v17;
          v52 = 2048;
          v53 = v20;
          v54 = 2112;
          v55 = *&v32;
          _os_log_debug_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEBUG, "Ongoing Restore: energyEntryOngoingRestoreEnergy is %f and energy is %f for Bundle ID is %@", buf, 0x20u);
        }

        if (v17 <= v20)
        {
          v28 = [MEMORY[0x277CCABB0] numberWithDouble:v20 - v17];
          [v11 setObject:v28 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

          v30 = PLLogCommon(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIResponseTypeBatteryBreakdown ongoingUpdateRestoreTransformations:];
          }

          v9 = v9 + v17;
          v24 = PLLogCommon(v31);
          transformationsCopy = v43;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v51 = v9;
            _os_log_debug_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEBUG, "Ongoing Restore: Total ongoing restore energy is %f", buf, 0xCu);
          }
        }

        else
        {
          v24 = PLLogCommon(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v33 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            *buf = 138412802;
            v51 = *&v33;
            v52 = 2048;
            v53 = v17;
            v54 = 2048;
            v55 = v20;
            _os_log_error_impl(&dword_25EE51000, v24, OS_LOG_TYPE_ERROR, "Ongoing Restore: qualified ongoing restore energy for Bundle ID %@ is %f but total energy is %f", buf, 0x20u);
          }

          transformationsCopy = v43;
        }

LABEL_18:

        goto LABEL_19;
      }

      transformationsCopy = v43;
LABEL_19:

      ++v10;
    }

    while (v6 != v10);
    v34 = [transformationsCopy countByEnumeratingWithState:&v46 objects:v56 count:16];
    v6 = v34;
  }

  while (v34);
  if (v9 != 0.0)
  {
    if (!ongoingUpdateRestoreEntryInitializer)
    {
      ongoingUpdateRestoreEntryInitializer = [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy ongoingUpdateRestoreEntryInitializer];
      v35 = PLLogCommon([transformationsCopy addObject:ongoingUpdateRestoreEntryInitializer]);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown ongoingUpdateRestoreTransformations:];
      }
    }

    v36 = MEMORY[0x277CCABB0];
    v37 = [ongoingUpdateRestoreEntryInitializer objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v37 doubleValue];
    v39 = [v36 numberWithDouble:v9 + v38];
    [ongoingUpdateRestoreEntryInitializer setObject:v39 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

    v41 = PLLogCommon(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown ongoingUpdateRestoreTransformations:];
    }

    transformationsCopy = v43;
  }

LABEL_36:
}

- (void)reaccountBackupRestore:(id)restore
{
  v45 = *MEMORY[0x277D85DE8];
  restoreCopy = restore;
  v4 = restoreCopy;
  if (restoreCopy && [restoreCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v41;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v40 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v12)
          {
            v13 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v11 forKeyedSubscript:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v8);
    }

    v14 = [dictionary objectForKeyedSubscript:@"Backup"];
    v15 = [dictionary objectForKeyedSubscript:@"Restore"];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__PLBatteryUIResponseTypeBatteryBreakdown_reaccountBackupRestore___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v16;
      if (reaccountBackupRestore__defaultOnce != -1)
      {
        dispatch_once(&reaccountBackupRestore__defaultOnce, block);
      }

      if (reaccountBackupRestore__classDebugEnabled == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"backupEnergyEntry=%@, restoreEnergyEntry=%@", v14, v15];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
        lastPathComponent = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown reaccountBackupRestore:]"];
        [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:1407];

        v23 = PLLogCommon(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }

    if (v14 && v15)
    {
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppNameKey"];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __66__PLBatteryUIResponseTypeBatteryBreakdown_reaccountBackupRestore___block_invoke_601;
      v36[3] = &unk_279A5C118;
      v24 = v14;
      v37 = v24;
      v25 = v15;
      v38 = v25;
      [v24 enumerateKeysAndObjectsUsingBlock:v36];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v26 = objc_opt_class();
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __66__PLBatteryUIResponseTypeBatteryBreakdown_reaccountBackupRestore___block_invoke_2;
        v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v35[4] = v26;
        if (reaccountBackupRestore__defaultOnce_602 != -1)
        {
          dispatch_once(&reaccountBackupRestore__defaultOnce_602, v35);
        }

        if (reaccountBackupRestore__classDebugEnabled_603 == 1)
        {
          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"combined backupEnergyEntry=%@", v24];
          v34 = MEMORY[0x277D3F178];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
          lastPathComponent2 = [v28 lastPathComponent];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown reaccountBackupRestore:]"];
          [v34 logMessage:v27 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:1421];

          v31 = v27;
          v33 = PLLogCommon(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
          }
        }
      }

      [v6 removeObject:v25];
    }
  }
}

void *__66__PLBatteryUIResponseTypeBatteryBreakdown_reaccountBackupRestore___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reaccountBackupRestore__classDebugEnabled = result;
  return result;
}

void __66__PLBatteryUIResponseTypeBatteryBreakdown_reaccountBackupRestore___block_invoke_601(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v12, "rangeOfString:", @"time") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v8 = v7;
    v9 = [*(a1 + 40) objectForKeyedSubscript:v12];
    [v9 doubleValue];
    v11 = [v6 numberWithDouble:v8 + v10];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v12];
  }
}

void *__66__PLBatteryUIResponseTypeBatteryBreakdown_reaccountBackupRestore___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reaccountBackupRestore__classDebugEnabled_603 = result;
  return result;
}

- (void)transformDeletedApps:(id)apps
{
  v56 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  deletedAppBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppBundleIDs];
  if ([deletedAppBundleIDs count])
  {
  }

  else
  {
    deletedAppClipBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppClipBundleIDs];
    v7 = [deletedAppClipBundleIDs count];

    if (!v7)
    {
      obj = PLLogCommon(v8);
      if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown transformDeletedApps:];
      }

      goto LABEL_39;
    }
  }

  deletedAppClipBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppClipBundleIDs];
  if ([deletedAppClipBundleIDs2 count])
  {
    deletedAppBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppBundleIDs];
    v11 = [deletedAppBundleIDs2 count];

    if (v11)
    {
      v13 = @"DeletedAppAndAppClip";
      goto LABEL_12;
    }
  }

  else
  {
  }

  deletedAppBundleIDs3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppBundleIDs];
  v15 = [deletedAppBundleIDs3 count];

  if (v15)
  {
    v13 = @"DeletedApp";
  }

  else
  {
    deletedAppClipBundleIDs3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppClipBundleIDs];
    v17 = [deletedAppClipBundleIDs3 count];

    v13 = @"DeletedAppClip";
    if (!v17)
    {
      v13 = 0;
    }
  }

LABEL_12:
  v44 = v13;
  v18 = PLLogCommon(v12);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown transformDeletedApps:];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = appsCopy;
  v19 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v19)
  {
    v20 = v19;
    v42 = appsCopy;
    v45 = *v50;
    while (1)
    {
      v21 = 0;
      do
      {
        if (*v50 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v49 + 1) + 8 * v21);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v23 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __64__PLBatteryUIResponseTypeBatteryBreakdown_transformDeletedApps___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v23;
          if (transformDeletedApps__defaultOnce != -1)
          {
            dispatch_once(&transformDeletedApps__defaultOnce, block);
          }

          if (transformDeletedApps__classDebugEnabled == 1)
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v22];
            v25 = MEMORY[0x277D3F178];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
            lastPathComponent = [v26 lastPathComponent];
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown transformDeletedApps:]"];
            [v25 logMessage:v24 fromFile:lastPathComponent fromFunction:v28 fromLineNumber:1447];

            v30 = PLLogCommon(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v54 = v24;
              _os_log_debug_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        deletedAppBundleIDs4 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppBundleIDs];
        v32 = [v22 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([deletedAppBundleIDs4 containsObject:v32])
        {
        }

        else
        {
          deletedAppClipBundleIDs4 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppClipBundleIDs];
          v35 = [v22 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v36 = [deletedAppClipBundleIDs4 containsObject:v35];

          if (!v36)
          {
            goto LABEL_32;
          }
        }

        v37 = PLLogCommon(v33);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryBreakdownService *)&v46 mapDeletedAppsWithEnergyEntries:v47];
        }

        [v22 setObject:v44 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
LABEL_32:
        v38 = [v22 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v39 = [v38 containsString:@"Unspecified"];

        if (v39)
        {
          v41 = PLLogCommon(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EE51000, v41, OS_LOG_TYPE_DEFAULT, "AppDeletion : Found an unspecified entry so refactoring", buf, 2u);
          }

          [v22 setObject:@"DeletedApp" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        }

        ++v21;
      }

      while (v20 != v21);
      v20 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (!v20)
      {
        appsCopy = v42;
        break;
      }
    }
  }

LABEL_39:
}

void *__64__PLBatteryUIResponseTypeBatteryBreakdown_transformDeletedApps___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  transformDeletedApps__classDebugEnabled = result;
  return result;
}

- (void)transformPlugins:(id)plugins withBucket:(id)bucket
{
  v128 = *MEMORY[0x277D85DE8];
  pluginsCopy = plugins;
  bucketCopy = bucket;
  pluginBundleIDsToEntries = [(PLBatteryUIResponseTypeBatteryBreakdown *)self pluginBundleIDsToEntries];

  if (pluginBundleIDsToEntries)
  {
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v9 = pluginsCopy;
    v10 = [v9 countByEnumeratingWithState:&v113 objects:v127 count:16];
    if (v10)
    {
      v11 = v10;
      v102 = pluginsCopy;
      v110 = *v114;
      v12 = 0x277D3F000uLL;
      v105 = *MEMORY[0x277D0AB98];
      v107 = v9;
      while (1)
      {
        v13 = 0;
        v108 = v11;
        do
        {
          if (*v114 != v110)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v113 + 1) + 8 * v13);
          if ([*(v12 + 384) debugEnabled])
          {
            v15 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __71__PLBatteryUIResponseTypeBatteryBreakdown_transformPlugins_withBucket___block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v15;
            if (transformPlugins_withBucket__defaultOnce != -1)
            {
              dispatch_once(&transformPlugins_withBucket__defaultOnce, block);
            }

            if (transformPlugins_withBucket__classDebugEnabled == 1)
            {
              v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v14];
              v17 = MEMORY[0x277D3F178];
              v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
              lastPathComponent = [v18 lastPathComponent];
              v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown transformPlugins:withBucket:]"];
              [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:1470];

              v22 = PLLogCommon(v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v118 = v16;
                _os_log_debug_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v12 = 0x277D3F000uLL;
            }
          }

          pluginBundleIDsToEntries2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self pluginBundleIDsToEntries];
          v24 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v25 = [pluginBundleIDsToEntries2 objectForKeyedSubscript:v24];

          if (v25)
          {
            if ([*(v12 + 384) debugEnabled])
            {
              v26 = objc_opt_class();
              v111[0] = MEMORY[0x277D85DD0];
              v111[1] = 3221225472;
              v111[2] = __71__PLBatteryUIResponseTypeBatteryBreakdown_transformPlugins_withBucket___block_invoke_615;
              v111[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v111[4] = v26;
              if (transformPlugins_withBucket__defaultOnce_613 != -1)
              {
                dispatch_once(&transformPlugins_withBucket__defaultOnce_613, v111);
              }

              if (transformPlugins_withBucket__classDebugEnabled_614 == 1)
              {
                v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"this is a plugin"];
                v28 = MEMORY[0x277D3F178];
                v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
                lastPathComponent2 = [v29 lastPathComponent];
                v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown transformPlugins:withBucket:]"];
                [v28 logMessage:v27 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:1475];

                v33 = PLLogCommon(v32);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v118 = v27;
                  _os_log_debug_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v11 = v108;
                v12 = 0x277D3F000;
              }
            }

            v34 = [v25 objectForKeyedSubscript:@"PluginId"];
            v35 = [v34 isEqualToString:@"com.apple.AppStore.ProductPageExtension"];

            if ((v35 & 1) == 0)
            {
              v36 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v37 = [v25 objectForKeyedSubscript:@"PluginParentApp"];
              v38 = [(__CFString *)v36 isEqualToString:@"com.apple.sidecar.extension.capture"];
              if (v38)
              {
                v38 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getEnergyEntry:v9 forBundleID:v37];
                v39 = v38;
              }

              else
              {
                v39 = 0;
              }

              v40 = PLLogCommon(v38);
              v109 = v37;
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                v92 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                *buf = 138412546;
                v118 = v92;
                v119 = 2112;
                v120 = v109;
                _os_log_debug_impl(&dword_25EE51000, v40, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);

                v37 = v109;
              }

              [(__CFString *)v14 setObject:v37 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v41 = [v25 objectForKeyedSubscript:@"PluginType"];
              v42 = [v41 isEqualToString:@"com.apple.watchkit"];

              if (v42)
              {
                v43 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [(__CFString *)v14 setObject:v43 forKeyedSubscript:@"WatchEnergy"];
                goto LABEL_30;
              }

              v53 = [v25 objectForKeyedSubscript:@"PluginType"];
              v54 = [v53 isEqualToString:@"com.apple.widgetkit-extension"];

              if (v54)
              {
                v55 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [(__CFString *)v14 setObject:v55 forKeyedSubscript:@"ChronoWidgetEnergy"];

                v57 = PLLogCommon(v56);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                {
                  v94 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  v104 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                  [v104 doubleValue];
                  *buf = 138412546;
                  v118 = v94;
                  v119 = 2048;
                  v120 = v95;
                  _os_log_debug_impl(&dword_25EE51000, v57, OS_LOG_TYPE_DEBUG, "Widget Energy for %@ : %f", buf, 0x16u);
                }

                v58 = [(__CFString *)v14 objectForKeyedSubscript:@"ChronoWidgetEnergy"];
                [v58 doubleValue];
                v60 = v59;

                v44 = v39;
                if (v60 > 0.0)
                {
                  v61 = [bucketCopy objectForKeyedSubscript:@"PLBatteryUIBucketStartKey"];
                  [v61 doubleValue];
                  v63 = v62;
                  v64 = [bucketCopy objectForKeyedSubscript:@"PLBatteryUIBucketEndKey"];
                  [v64 doubleValue];
                  v66 = v65;
                  v67 = [bucketCopy objectForKeyedSubscript:@"PLBatteryUIBucketStartKey"];
                  [v67 doubleValue];
                  v69 = v66 - v68;

                  v43 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getWidgetUpdateTypeToCount:v36 inRange:v63, v69];
                  if ([v43 count])
                  {
                    [(__CFString *)v14 setObject:v43 forKeyedSubscript:@"WidgetUpdateTypeToCount"];
                  }

                  v9 = v107;
LABEL_30:
                  v44 = v39;
LABEL_31:
                }
              }

              else
              {
                v70 = [v25 objectForKeyedSubscript:@"PluginType"];
                v71 = [v70 isEqualToString:@"com.apple.posterkit.provider"];

                v9 = v107;
                v44 = v39;
                if (v71)
                {
                  v72 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                  [(__CFString *)v14 setObject:v72 forKeyedSubscript:@"PosterEnergy"];

                  v74 = PLLogCommon(v73);
                  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
                  {
                    v96 = [(__CFString *)v14 objectForKeyedSubscript:@"PosterEnergy"];
                    *buf = 138412802;
                    v118 = v36;
                    v119 = 2112;
                    v120 = v96;
                    v121 = 2112;
                    v122 = v109;
                    _os_log_debug_impl(&dword_25EE51000, v74, OS_LOG_TYPE_DEBUG, "bundleID=%@, posterEnergy=%@, parentApp=%@", buf, 0x20u);
                  }

                  v9 = v107;
                  if (!v109)
                  {
                    v76 = PLLogCommon(v75);
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                    {
                      v98 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                      bundleIDsToReplacementBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];
                      v100 = [bundleIDsToReplacementBundleIDs objectForKeyedSubscript:v105];
                      *buf = 138412546;
                      v118 = v98;
                      v119 = 2112;
                      v120 = v100;
                      _os_log_debug_impl(&dword_25EE51000, v76, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);
                    }

                    bundleIDsToReplacementBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];
                    v78 = [bundleIDsToReplacementBundleIDs2 objectForKeyedSubscript:v105];
                    [(__CFString *)v14 setObject:v78 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

                    v9 = v107;
                  }

                  v79 = [(__CFString *)v36 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
                  if (v79)
                  {
                    v80 = 1;
                  }

                  else
                  {
                    v79 = [(__CFString *)v36 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider"];
                    v80 = v79;
                  }

                  v81 = PLLogCommon(v79);
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 67109120;
                    LODWORD(v118) = v80;
                    _os_log_debug_impl(&dword_25EE51000, v81, OS_LOG_TYPE_DEBUG, "isPhotosPoster=%d", buf, 8u);
                  }

                  if (v80)
                  {
                    v83 = PLLogCommon(v82);
                    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
                    {
                      v97 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                      *buf = 138412546;
                      v118 = v97;
                      v119 = 2112;
                      v120 = @"com.apple.mobileslideshow";
                      _os_log_debug_impl(&dword_25EE51000, v83, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);

                      v9 = v107;
                    }

                    v82 = [(__CFString *)v14 setObject:@"com.apple.mobileslideshow" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  }

                  v43 = PLLogCommon(v82);
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                  {
                    v84 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                    v103 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                    [v103 doubleValue];
                    v86 = v85;
                    v87 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
                    [v87 doubleValue];
                    v89 = v88;
                    v90 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
                    [v90 doubleValue];
                    *buf = 138413314;
                    v118 = v36;
                    v119 = 2112;
                    v120 = v84;
                    v121 = 2048;
                    v122 = v86;
                    v123 = 2048;
                    v124 = v89;
                    v125 = 2048;
                    v126 = v91;
                    _os_log_debug_impl(&dword_25EE51000, v43, OS_LOG_TYPE_DEBUG, "Mapping Poster %@ to %@ – energy:%f, foregroundRunTime:%f, bgRunTime:%f", buf, 0x34u);

                    v9 = v107;
                  }

                  goto LABEL_31;
                }
              }

              v45 = [(__CFString *)v36 isEqualToString:@"com.apple.sidecar.extension.capture"];
              if (v45)
              {
                v46 = PLLogCommon(v45);
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  v93 = [(__CFString *)v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  *buf = 138412546;
                  v118 = v93;
                  v119 = 2112;
                  v120 = @"ContinuityCamera";
                  _os_log_debug_impl(&dword_25EE51000, v46, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);

                  v9 = v107;
                }

                v47 = PLLogCommon([(__CFString *)v14 setObject:@"ContinuityCamera" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"]);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v118 = v44;
                  v119 = 2112;
                  v120 = v14;
                  _os_log_debug_impl(&dword_25EE51000, v47, OS_LOG_TYPE_DEBUG, "continuityParentAppEnergyEntry=%@, energyEntry=%@", buf, 0x16u);
                }

                if (v44)
                {
                  v49 = [(__CFString *)v44 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
                  [v49 doubleValue];
                  v51 = v50;

                  v9 = v107;
                  if (v51 > 0.0)
                  {
                    [(__CFString *)v44 setObject:@"ContinuityCamera" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                    v48 = [(__CFString *)v44 setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
                  }
                }

                v52 = PLLogCommon(v48);
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v118 = v14;
                  _os_log_debug_impl(&dword_25EE51000, v52, OS_LOG_TYPE_DEBUG, "After adjusting Continuity Camera extension energyEntry=%@", buf, 0xCu);
                }
              }

              v11 = v108;
              v12 = 0x277D3F000;
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v101 = [v9 countByEnumeratingWithState:&v113 objects:v127 count:16];
        v11 = v101;
        if (!v101)
        {
          pluginsCopy = v102;
          break;
        }
      }
    }
  }

  else
  {
    v9 = PLLogCommon(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown transformPlugins:withBucket:];
    }
  }
}

void *__71__PLBatteryUIResponseTypeBatteryBreakdown_transformPlugins_withBucket___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  transformPlugins_withBucket__classDebugEnabled = result;
  return result;
}

void *__71__PLBatteryUIResponseTypeBatteryBreakdown_transformPlugins_withBucket___block_invoke_615(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  transformPlugins_withBucket__classDebugEnabled_614 = result;
  return result;
}

- (void)transformGizmoDaemons:(id)daemons
{
  v83 = *MEMORY[0x277D85DE8];
  daemonsCopy = daemons;
  bundleIDsToReplacementBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];

  if (bundleIDsToReplacementBundleIDs)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v7 = daemonsCopy;
    v8 = [v7 countByEnumeratingWithState:&v71 objects:v82 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v72;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v72 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v71 + 1) + 8 * i);
          bundleIDsToReplacementBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];
          v14 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v15 = [bundleIDsToReplacementBundleIDs2 objectForKeyedSubscript:v14];

          if (v15)
          {
            v17 = PLLogCommon(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v19 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              *buf = 138412546;
              v79 = v19;
              v80 = 2112;
              v81 = v15;
              _os_log_debug_impl(&dword_25EE51000, v17, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);
            }

            [v12 setObject:v15 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            v18 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v12 setObject:v18 forKeyedSubscript:@"WatchEnergy"];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v71 objects:v82 count:16];
      }

      while (v9);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v68;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v68 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v67 + 1) + 8 * j);
          v26 = [v25 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v27 = [v26 hasSuffix:@"/watch"];
          if (v27)
          {
            v28 = PLLogCommon(v27);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v57 = [v25 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v55 = [v26 substringWithRange:{0, objc_msgSend(v26, "length") - 6}];
              *buf = 138412546;
              v79 = v57;
              v80 = 2112;
              v81 = v55;
              _os_log_debug_impl(&dword_25EE51000, v28, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);
            }

            v29 = [v26 substringWithRange:{0, objc_msgSend(v26, "length") - 6}];
            [v25 setObject:v29 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

            v30 = [v25 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v25 setObject:v30 forKeyedSubscript:@"WatchEnergy"];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v22);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v31 = v20;
    v32 = [v31 countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v64;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v64 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v63 + 1) + 8 * k);
          v37 = [v36 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v38 = [v37 hasSuffix:@".watchkitextension"];
          if (v38)
          {
            v39 = PLLogCommon(v38);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v58 = [v36 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v56 = [v37 substringWithRange:{0, objc_msgSend(v37, "length") - 18}];
              *buf = 138412546;
              v79 = v58;
              v80 = 2112;
              v81 = v56;
              _os_log_debug_impl(&dword_25EE51000, v39, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);
            }

            v40 = [v37 substringWithRange:{0, objc_msgSend(v37, "length") - 18}];
            [v36 setObject:v40 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

            v41 = [v36 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v36 setObject:v41 forKeyedSubscript:@"WatchEnergy"];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v33);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v42 = v31;
    v43 = [v42 countByEnumeratingWithState:&v59 objects:v75 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v60;
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v60 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v59 + 1) + 8 * m);
          bundleIDsToReplacementBundleIDs3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];
          v49 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v50 = [bundleIDsToReplacementBundleIDs3 objectForKeyedSubscript:v49];

          if (v50)
          {
            v52 = PLLogCommon(v51);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              v54 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              *buf = 138412546;
              v79 = v54;
              v80 = 2112;
              v81 = v50;
              _os_log_debug_impl(&dword_25EE51000, v52, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);
            }

            [v47 setObject:v50 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            v53 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v47 setObject:v53 forKeyedSubscript:@"WatchEnergy"];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v59 objects:v75 count:16];
      }

      while (v44);
    }
  }

  else
  {
    v42 = PLLogCommon(v6);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown applyStaticNameTransformation:];
    }
  }
}

- (void)transformCloudDocs:(id)docs
{
  v26 = *MEMORY[0x277D85DE8];
  docsCopy = docs;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [docsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v7 = @"com.apple.clouddocs.";
    v8 = @".";
    do
    {
      v9 = 0;
      v20 = v5;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(docsCopy);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([v11 hasPrefix:v7])
        {
          v12 = [v11 substringFromIndex:{-[__CFString length](v7, "length")}];
          v13 = [v12 rangeOfString:v8];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = v6;
            v16 = v7;
            v17 = docsCopy;
            v18 = v8;
            v19 = [v12 substringFromIndex:v13 + v14];
            if (v19)
            {
              [v10 setObject:v19 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            }

            v8 = v18;
            docsCopy = v17;
            v7 = v16;
            v6 = v15;
            v5 = v20;
          }
        }

        ++v9;
      }

      while (v5 != v9);
      v5 = [docsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }
}

- (BOOL)canSetQualifier:(int64_t)qualifier forBundleID:(id)d
{
  dCopy = d;
  v6 = [dCopy isEqualToString:@"com.apple.mobilephone"];
  if (qualifier == 2 && (v6 & 1) != 0)
  {
    goto LABEL_9;
  }

  v7 = [dCopy isEqualToString:@"com.apple.facetime"];
  if (qualifier == 2 && (v7 & 1) != 0)
  {
    goto LABEL_9;
  }

  v8 = [dCopy isEqualToString:@"HLS"];
  if (qualifier == 2 && (v8 & 1) != 0)
  {
    goto LABEL_9;
  }

  v9 = [dCopy isEqualToString:@"Flashlight"];
  if (qualifier == 2 && (v9 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (([dCopy isEqualToString:@"Backup & Restore"] & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"Backup") & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"Restore") & 1) == 0 && !objc_msgSend(dCopy, "isEqualToString:", @"SoundRecognition"))
  {
    v13 = [dCopy isEqualToString:@"com.apple.mobilesafari"];
    if (qualifier != 2 || (v13 & 1) == 0)
    {
      v14 = [dCopy isEqualToString:@"Hotspot"];
      if (qualifier != 2 || (v14 & 1) == 0)
      {
        v15 = [dCopy isEqualToString:@"com.apple.Maps"];
        if (qualifier != 2 || (v15 & 1) == 0)
        {
          v16 = [dCopy isEqualToString:@"Siri"];
          if ((qualifier != 2 || (v16 & 1) == 0) && ([dCopy isEqualToString:@"Flashlight"] & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"PowerOutAccessories") & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"DeletedApp") & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"DeletedAppClip") & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"DeletedAppAndAppClip") & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"EN") & 1) == 0)
          {
            if ([dCopy isEqualToString:@"com.apple.Bridge"])
            {
              if (qualifier < 0xB)
              {
                v10 = 0x2FBu >> qualifier;
                goto LABEL_10;
              }

LABEL_42:
              LOBYTE(v10) = 1;
              goto LABEL_10;
            }

            v17 = [dCopy isEqualToString:@"com.apple.camera"];
            if ((qualifier != 10 || (v17 & 1) == 0) && ([dCopy isEqualToString:@"PoorCellCondition"] & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.Preferences") & 1) == 0)
            {
              goto LABEL_42;
            }
          }
        }
      }
    }

LABEL_9:
    LOBYTE(v10) = 0;
    goto LABEL_10;
  }

  LOBYTE(v10) = qualifier != 7 && qualifier != 2;
LABEL_10:

  return v10 & 1;
}

- (int)computeNumberOfBuckets
{
  selfCopy = self;
  v3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self end];
  start = [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy start];
  [v3 timeIntervalSinceDate:start];
  v6 = v5;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy bucketSize];
  LODWORD(selfCopy) = llround(v6 / v7);

  return selfCopy;
}

- (void)enumerateBucketsUsingBlock:(id)block
{
  blockCopy = block;
  computeNumberOfBuckets = [(PLBatteryUIResponseTypeBatteryBreakdown *)self computeNumberOfBuckets];
  if (computeNumberOfBuckets >= 1)
  {
    v5 = computeNumberOfBuckets;
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = 0.0;
      if (v6)
      {
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self dynamicEndOffset];
        v8 = v9;
      }

      v10 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self end];
      [(PLBatteryUIResponseTypeBatteryBreakdown *)self bucketSize];
      v12 = [v10 dateByAddingTimeInterval:-(v8 + v7 * v11)];

      [(PLBatteryUIResponseTypeBatteryBreakdown *)self bucketSize];
      v14 = [v12 dateByAddingTimeInterval:-v13];
      v15 = v12;
      [v14 timeIntervalSince1970];
      v17 = v16;
      [v15 timeIntervalSince1970];
      v19 = v18;

      blockCopy[2](blockCopy, v6, v14, v15, v17 + -1800.0, v19 - v17);
      v7 = v7 + 1.0;
      v6 = (v6 + 1);
    }

    while (v5 != v6);
  }
}

- (void)buildUtilityCache
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)buildBucketsForRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  computeNumberOfBuckets = [(PLBatteryUIResponseTypeBatteryBreakdown *)self computeNumberOfBuckets];
  v7 = computeNumberOfBuckets;
  v8 = PLLogCommon(computeNumberOfBuckets);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown buildBucketsForRange:];
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBuckets:v9];

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self initializeBucketsWithRange:location, length];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self prepareBucketsWithRange:location, length];
}

- (void)identifyBucket:(id)bucket withRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  bucketCopy = bucket;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self lastUpgradeTimestamp];
  if (location <= v7 && location + length >= v7)
  {
    v9 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self lastUpgradeTimestamp];
    v10 = [v9 numberWithDouble:?];
    [bucketCopy setObject:v10 forKeyedSubscript:@"PLBatteryUIHasUpgradeKey"];
  }
}

- (void)initializeBucketsWithRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getRootNodeEntriesInRange:range.location withTimeInterval:range.length, 3600.0];
  v7 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getQualificationNodeEntriesInRange:location withTimeInterval:length, 3600.0];
  v8 = PLLogCommon(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown initializeBucketsWithRange:v6];
  }

  v10 = PLLogCommon(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown initializeBucketsWithRange:v7];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__PLBatteryUIResponseTypeBatteryBreakdown_initializeBucketsWithRange___block_invoke;
  v13[3] = &unk_279A5E540;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self enumerateBucketsUsingBlock:v13];
}

void __70__PLBatteryUIResponseTypeBatteryBreakdown_initializeBucketsWithRange___block_invoke(uint64_t a1, int a2, double a3, double a4)
{
  v7 = (a1 + 32);
  v8 = [*(a1 + 32) buildEnergyEntriesWithRootNodes:*(a1 + 40) andQualificationNodes:*(a1 + 48) andRange:?];
  v9 = [*v7 buildBucketWithEnergyEntries:v8 andRange:{a3, a4}];
  v10 = [*v7 buckets];
  [v10 setObject:v9 atIndexedSubscript:a2];

  v11 = *v7;
  v12 = [*v7 buckets];
  v13 = [v12 objectAtIndexedSubscript:a2];
  [v11 collapseEnergyEntries:v13];

  v15 = PLLogCommon(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __70__PLBatteryUIResponseTypeBatteryBreakdown_initializeBucketsWithRange___block_invoke_cold_1(v7);
  }
}

- (void)prepareBucketsWithRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getAppRuntimesInRange:?];
  v7 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getNotificationEntriesInRange:location, length];
  v8 = PLLogCommon(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown prepareBucketsWithRange:v6];
  }

  v10 = PLLogCommon(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown prepareBucketsWithRange:v7];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__PLBatteryUIResponseTypeBatteryBreakdown_prepareBucketsWithRange___block_invoke;
  v13[3] = &unk_279A5E540;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self enumerateBucketsUsingBlock:v13];
}

void __67__PLBatteryUIResponseTypeBatteryBreakdown_prepareBucketsWithRange___block_invoke(uint64_t a1, int a2, void *a3, void *a4, double a5, double a6)
{
  v11 = a3;
  v12 = a4;
  v13 = (a1 + 32);
  v14 = [*(a1 + 32) buckets];
  v15 = [v14 objectAtIndexedSubscript:a2];
  v16 = [v15 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

  v17 = [*(a1 + 32) processAppTimeEntries:*(a1 + 40) inRange:v16 withAppArray:{a5, a6}];

  v19 = PLLogCommon(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __67__PLBatteryUIResponseTypeBatteryBreakdown_prepareBucketsWithRange___block_invoke_cold_1((a1 + 32));
  }

  v20 = [*(a1 + 32) processNotificationEntries:*(a1 + 48) inRange:v17 withAppArray:{a5, a6}];

  v22 = PLLogCommon(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __67__PLBatteryUIResponseTypeBatteryBreakdown_prepareBucketsWithRange___block_invoke_cold_2(v13);
  }

  v23 = _os_feature_enabled_impl();
  v24 = MEMORY[0x277CCABB0];
  if (v23)
  {
    v25 = [v11 convertFromMonotonicToSystem];
    [v25 timeIntervalSince1970];
    v26 = [v24 numberWithDouble:?];
    v27 = [*v13 buckets];
    v28 = [v27 objectAtIndexedSubscript:a2];
    [v28 setObject:v26 forKeyedSubscript:@"PLBatteryUIBucketStartKey"];

    v29 = MEMORY[0x277CCABB0];
    v30 = [v12 convertFromMonotonicToSystem];
    [v30 timeIntervalSince1970];
    v32 = v31;
    [*v13 dynamicEndOffset];
    v34 = [v29 numberWithDouble:v32 + v33];
    v35 = [*v13 buckets];
    v36 = [v35 objectAtIndexedSubscript:a2];
    [v36 setObject:v34 forKeyedSubscript:@"PLBatteryUIBucketEndKey"];
  }

  else
  {
    [v11 timeIntervalSince1970];
    v37 = [v24 numberWithDouble:?];
    v38 = [*v13 buckets];
    v39 = [v38 objectAtIndexedSubscript:a2];
    [v39 setObject:v37 forKeyedSubscript:@"PLBatteryUIBucketStartKey"];

    v40 = MEMORY[0x277CCABB0];
    [v12 timeIntervalSince1970];
    v30 = [v40 numberWithDouble:?];
    v34 = [*v13 buckets];
    v35 = [v34 objectAtIndexedSubscript:a2];
    [v35 setObject:v30 forKeyedSubscript:@"PLBatteryUIBucketEndKey"];
  }

  v41 = [*v13 buckets];
  v42 = [v41 objectAtIndexedSubscript:a2];
  [v42 setObject:v20 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
}

- (id)buildBucketWithEnergyEntries:(id)entries andRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithObject:entries forKey:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self identifyBucket:v7 withRange:location, length];

  return v7;
}

- (id)buildEnergyEntriesWithRootNodes:(id)nodes andQualificationNodes:(id)qualificationNodes andRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  qualificationNodesCopy = qualificationNodes;
  v10 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self processRootNodes:nodes inRange:location, length];
  v11 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self processQualificationNodes:qualificationNodesCopy inRange:location, length];

  v12 = [v10 arrayByAddingObjectsFromArray:v11];
  v13 = [v12 mutableCopy];

  return v13;
}

- (id)processRootNodes:(id)nodes inRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v93 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v9 = nodesCopy;
  v10 = [v9 countByEnumeratingWithState:&v86 objects:v92 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v87;
    v13 = location + length;
    v84 = *MEMORY[0x277D3F328];
    v81 = *MEMORY[0x277D3F330];
    v77 = *MEMORY[0x277D3F320];
    v76 = *MEMORY[0x277D0AB98];
    v78 = dictionary;
    v82 = *v87;
    v83 = v9;
    selfCopy = self;
    do
    {
      v14 = 0;
      do
      {
        if (*v87 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v86 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        entryDate = [v15 entryDate];
        v18 = entryDate;
        if (entryDate)
        {
          [entryDate timeIntervalSince1970];
          if (location <= v19)
          {
            v20 = v19;

            if (v13 < v20)
            {
              goto LABEL_36;
            }

            v18 = [v15 objectForKeyedSubscript:v84];
            if (v18)
            {
              v21 = [dictionary objectForKeyedSubscript:v18];

              if (v21)
              {
                goto LABEL_13;
              }

              nodeIDsToNodeNames = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nodeIDsToNodeNames];
              v23 = [nodeIDsToNodeNames objectForKeyedSubscript:v18];

              if (v23)
              {
                v24 = MEMORY[0x277CBEB38];
                nodeIDsToNodeNames2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nodeIDsToNodeNames];
                v26 = [nodeIDsToNodeNames2 objectForKeyedSubscript:v18];
                v27 = [v24 dictionaryWithObject:v26 forKey:@"PLBatteryUIAppBundleIDKey"];
                [dictionary setObject:v27 forKeyedSubscript:v18];

LABEL_13:
                v28 = [dictionary objectForKeyedSubscript:v18];
                v29 = [v15 objectForKeyedSubscript:v81];
                intValue = [v29 intValue];
                v31 = [&unk_28714D898 count];
                if (v31 <= intValue)
                {
                  log = PLLogCommon(v31);
                  v9 = v83;
                  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                  {
                    intValue2 = [v29 intValue];
                    v41 = [&unk_28714D8B0 count];
                    *buf = 67109376;
                    *v91 = intValue2;
                    *&v91[4] = 2048;
                    *&v91[6] = v41;
                    _os_log_error_impl(&dword_25EE51000, log, OS_LOG_TYPE_ERROR, "rootNodeID=%d out of bounds=%lu", buf, 0x12u);
                  }
                }

                else
                {
                  log = [&unk_28714D8C8 objectAtIndexedSubscript:{objc_msgSend(v29, "intValue")}];
                  v32 = [v15 objectForKeyedSubscript:v77];
                  intValue3 = [v29 intValue];
                  if (intValue3 == 58)
                  {
                    v34 = PLLogCommon(intValue3);
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                    {
                      intValue4 = [v29 intValue];
                      [v32 doubleValue];
                      *buf = 67109376;
                      *v91 = intValue4;
                      *&v91[4] = 2048;
                      *&v91[6] = v67;
                      _os_log_debug_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEBUG, "before clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                    }

                    v35 = MEMORY[0x277CCABB0];
                    [v32 doubleValue];
                    v37 = [v35 numberWithDouble:{fmin(v36, 9000.0)}];

                    v39 = PLLogCommon(v38);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_42;
                    }

                    goto LABEL_25;
                  }

                  intValue5 = [v29 intValue];
                  if (intValue5 == 59)
                  {
                    v43 = PLLogCommon(intValue5);
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                    {
                      intValue6 = [v29 intValue];
                      [v32 doubleValue];
                      *buf = 67109376;
                      *v91 = intValue6;
                      *&v91[4] = 2048;
                      *&v91[6] = v69;
                      _os_log_debug_impl(&dword_25EE51000, v43, OS_LOG_TYPE_DEBUG, "before clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                    }

                    v44 = MEMORY[0x277CCABB0];
                    [v32 doubleValue];
                    v37 = [v44 numberWithDouble:{fmin(v45, 5500.0)}];

                    v39 = PLLogCommon(v46);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                    {
LABEL_42:
                      intValue7 = [v29 intValue];
                      [v37 doubleValue];
                      *buf = 67109376;
                      *v91 = intValue7;
                      *&v91[4] = 2048;
                      *&v91[6] = v71;
                      _os_log_debug_impl(&dword_25EE51000, v39, OS_LOG_TYPE_DEBUG, "after clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                    }

LABEL_25:

                    v32 = v37;
                  }

                  nodeIDsToNodeNames3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nodeIDsToNodeNames];
                  v48 = [nodeIDsToNodeNames3 objectForKeyedSubscript:v18];

                  v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v76, @"aod"];
                  v80 = v48;
                  v49 = [v48 isEqualToString:?];
                  if (!v49)
                  {
                    goto LABEL_31;
                  }

                  v50 = PLLogCommon(v49);
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v91 = log;
                    _os_log_impl(&dword_25EE51000, v50, OS_LOG_TYPE_DEFAULT, "found AOD in root node %@", buf, 0xCu);
                  }

                  if ([v29 intValue] == 56 || (v51 = objc_msgSend(v29, "intValue"), v51 == 57))
                  {
LABEL_31:
                    v52 = MEMORY[0x277CCABB0];
                    v53 = [v28 objectForKeyedSubscript:log];
                    [v53 doubleValue];
                    v55 = v54;
                    [v32 doubleValue];
                    v57 = [v52 numberWithDouble:v55 + v56 / 1000.0];
                    [v28 setObject:v57 forKeyedSubscript:log];

                    v58 = MEMORY[0x277CCABB0];
                    v59 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                    [v59 doubleValue];
                    v61 = v60;
                    [v32 doubleValue];
                    v63 = [v58 numberWithDouble:v61 + v62 / 1000.0];
                    [v28 setObject:v63 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

                    self = selfCopy;
                    [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy addRNEForMetrics:v29 rootNodeEnergy:v32 energyEntry:v28];
                  }

                  else
                  {
                    v64 = PLLogCommon(v51);
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                    {
                      [v32 doubleValue];
                      *buf = 138412546;
                      *v91 = log;
                      *&v91[8] = 2048;
                      *&v91[10] = v65 / 1000.0;
                      _os_log_impl(&dword_25EE51000, v64, OS_LOG_TYPE_DEFAULT, "Adjusting %@ root node energy of %f mWh", buf, 0x16u);
                    }
                  }

                  dictionary = v78;
                  v9 = v83;
                }
              }

              else
              {
                v9 = v83;
              }

              v12 = v82;
            }
          }
        }

LABEL_36:
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v11 != v14);
      v72 = [v9 countByEnumeratingWithState:&v86 objects:v92 count:16];
      v11 = v72;
    }

    while (v72);
  }

  allValues = [dictionary allValues];

  return allValues;
}

- (id)processQualificationNodes:(id)nodes inRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v86 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v9 = nodesCopy;
  v10 = [v9 countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v80;
    v13 = location + length;
    v77 = *MEMORY[0x277D3F328];
    v74 = *MEMORY[0x277D3F310];
    v70 = *MEMORY[0x277D3F308];
    v64 = *MEMORY[0x277D0AB98];
    v65 = *MEMORY[0x277D3F2F8];
    v75 = v9;
    v76 = dictionary;
    selfCopy = self;
    do
    {
      v14 = 0;
      do
      {
        if (*v80 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v79 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        entryDate = [v15 entryDate];
        v18 = entryDate;
        if (entryDate)
        {
          [entryDate timeIntervalSince1970];
          if (location <= v19)
          {
            v20 = v19;

            if (v13 < v20)
            {
              goto LABEL_30;
            }

            v18 = [v15 objectForKeyedSubscript:v77];
            if (v18)
            {
              v21 = [dictionary objectForKeyedSubscript:v18];

              if (v21)
              {
                goto LABEL_13;
              }

              nodeIDsToNodeNames = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nodeIDsToNodeNames];
              v23 = [nodeIDsToNodeNames objectForKeyedSubscript:v18];

              if (v23)
              {
                v24 = MEMORY[0x277CBEB38];
                nodeIDsToNodeNames2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nodeIDsToNodeNames];
                v26 = [nodeIDsToNodeNames2 objectForKeyedSubscript:v18];
                v27 = [v24 dictionaryWithObject:v26 forKey:@"PLBatteryUIAppBundleIDKey"];
                [v76 setObject:v27 forKeyedSubscript:v18];

                dictionary = v76;
LABEL_13:
                v78 = [dictionary objectForKeyedSubscript:v18];
                v28 = [v15 objectForKeyedSubscript:v74];
                intValue = [v28 intValue];
                v30 = [&unk_28714D8E0 count];
                if (v30 <= intValue)
                {
                  v31 = PLLogCommon(v30);
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    intValue2 = [v28 intValue];
                    v56 = [&unk_28714D8F8 count];
                    *buf = 67109376;
                    *v84 = intValue2;
                    *&v84[4] = 2048;
                    *&v84[6] = v56;
                    _os_log_error_impl(&dword_25EE51000, v31, OS_LOG_TYPE_ERROR, "rootNodeID=%d out of bounds=%lu", buf, 0x12u);
                  }
                }

                else
                {
                  v31 = [&unk_28714D910 objectAtIndexedSubscript:{objc_msgSend(v28, "intValue")}];
                  v32 = [v15 objectForKeyedSubscript:v70];
                  intValue3 = [v32 intValue];
                  v34 = [&unk_28714D928 count];
                  if (v34 <= intValue3)
                  {
                    v35 = PLLogCommon(v34);
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                    {
                      intValue4 = [v32 intValue];
                      v60 = [&unk_28714D940 count];
                      *buf = 67109376;
                      *v84 = intValue4;
                      *&v84[4] = 2048;
                      *&v84[6] = v60;
                      _os_log_error_impl(&dword_25EE51000, v35, OS_LOG_TYPE_ERROR, "qualificationID=%d out of bounds=%lu", buf, 0x12u);
                    }
                  }

                  else
                  {
                    v69 = v32;
                    v35 = [&unk_28714D958 objectAtIndexedSubscript:{objc_msgSend(v32, "intValue")}];
                    v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v35, v31];
                    v71 = [v15 objectForKeyedSubscript:v65];
                    nodeIDsToNodeNames3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy nodeIDsToNodeNames];
                    v37 = [nodeIDsToNodeNames3 objectForKeyedSubscript:v18];

                    v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v64, @"aod"];
                    v67 = v37;
                    v38 = [v37 isEqualToString:?];
                    v72 = v28;
                    if (!v38)
                    {
                      goto LABEL_20;
                    }

                    v39 = PLLogCommon(v38);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *v84 = v31;
                      _os_log_impl(&dword_25EE51000, v39, OS_LOG_TYPE_DEFAULT, "found AOD in qual for root node %@", buf, 0xCu);
                    }

                    if ([v28 intValue] == 56 || (v40 = objc_msgSend(v28, "intValue"), v40 == 57))
                    {
LABEL_20:
                      v41 = MEMORY[0x277CCABB0];
                      v42 = [v78 objectForKeyedSubscript:v68];
                      [v42 doubleValue];
                      v44 = v43;
                      v45 = v71;
                      [v71 doubleValue];
                      v47 = [v41 numberWithDouble:v44 + v46 / 1000.0];
                      [v78 setObject:v47 forKeyedSubscript:v68];

                      v48 = MEMORY[0x277CCABB0];
                      v49 = [v78 objectForKeyedSubscript:v35];
                      [v49 doubleValue];
                      v51 = v50;
                      [v71 doubleValue];
                      v53 = [v48 numberWithDouble:v51 + v52 / 1000.0];
                      [v78 setObject:v53 forKeyedSubscript:v35];

                      v54 = v68;
                      v32 = v69;
                      [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy addFgEnergyForMetrics:v72 qualificationID:v69 rootNodeQualificationEnergy:v71 energyEntry:v78];
                    }

                    else
                    {
                      v57 = PLLogCommon(v40);
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                      {
                        [v71 doubleValue];
                        *buf = 138412546;
                        *v84 = v31;
                        *&v84[8] = 2048;
                        *&v84[10] = v58 / 1000.0;
                        _os_log_impl(&dword_25EE51000, v57, OS_LOG_TYPE_DEFAULT, "Adjusting %@ root node qual energy of %f mWh", buf, 0x16u);
                      }

                      v54 = v68;
                      v32 = v69;
                      v45 = v71;
                    }

                    v28 = v72;
                  }

                  self = selfCopy;
                }

                dictionary = v76;
              }

              v9 = v75;
            }
          }
        }

LABEL_30:
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v11 != v14);
      v61 = [v9 countByEnumeratingWithState:&v79 objects:v85 count:16];
      v11 = v61;
    }

    while (v61);
  }

  allValues = [dictionary allValues];

  return allValues;
}

- (id)processAppTimeEntries:(id)entries inRange:(_PLTimeIntervalRange)range withAppArray:(id)array
{
  length = range.length;
  location = range.location;
  v158 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  arrayCopy = array;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  [MEMORY[0x277CBEB38] dictionary];
  v126 = v125 = self;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self initBackgroundLocationAudioTime];
  array = [MEMORY[0x277CBEB18] array];
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v11 = entriesCopy;
  v12 = [v11 countByEnumeratingWithState:&v149 objects:v157 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v150;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v150 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v149 + 1) + 8 * i);
        entryDate = [v16 entryDate];
        if (entryDate)
        {
          v18 = entryDate;
          [entryDate timeIntervalSince1970];
          v20 = v19;

          if (location <= v20 && v20 < location + length)
          {
            [array addObject:v16];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v149 objects:v157 count:16];
    }

    while (v13);
  }

  v118 = v11;

  v129 = [MEMORY[0x277CBEB58] set];
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v117 = array;
  obj = [MEMORY[0x277D3F190] summarizeAggregateEntries:array];
  v22 = [obj countByEnumeratingWithState:&v145 objects:v156 count:16];
  if (v22)
  {
    v23 = v22;
    v122 = *v146;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v146 != v122)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v145 + 1) + 8 * j);
        v26 = [v25 objectForKeyedSubscript:@"BundleID"];
        [v129 addObject:v26];
        v27 = MEMORY[0x277CCABB0];
        v28 = [v25 objectForKeyedSubscript:@"ScreenOnTime"];
        [v28 doubleValue];
        v30 = v29;
        v31 = [v25 objectForKeyedSubscript:@"InCallScreenOnTime"];
        [v31 doubleValue];
        v33 = v30 + v32;
        v34 = [v25 objectForKeyedSubscript:@"InCallBackgroundTime"];
        [v34 doubleValue];
        v36 = [v27 numberWithDouble:v33 + v35];
        [dictionary setObject:v36 forKeyedSubscript:v26];

        v37 = [v25 objectForKeyedSubscript:@"BackgroundTime"];
        [dictionary2 setObject:v37 forKeyedSubscript:v26];

        v38 = [v25 objectForKeyedSubscript:@"InCallBackgroundTime"];
        [dictionary3 setObject:v38 forKeyedSubscript:v26];

        v39 = [v25 objectForKeyedSubscript:@"ScreenOnPluggedInTime"];
        [dictionary4 setObject:v39 forKeyedSubscript:v26];

        v40 = [v25 objectForKeyedSubscript:@"BackgroundPluggedInTime"];
        [v126 setObject:v40 forKeyedSubscript:v26];

        [(PLBatteryUIResponseTypeBatteryBreakdown *)v125 populateBackgroundLocationAudioTime:v25 bundleID:v26];
      }

      v23 = [obj countByEnumeratingWithState:&v145 objects:v156 count:16];
    }

    while (v23);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  monotonicNow = [(PLBatteryUIResponseTypeBatteryBreakdown *)v125 monotonicNow];
  v42 = [(PLBatteryUIResponseTypeBatteryBreakdown *)v125 getNonAppRuntimesInRange:monotonicNow withNow:location, length];

  v120 = v42;
  v43 = [v42 countByEnumeratingWithState:&v141 objects:v155 count:16];
  if (v43)
  {
    v44 = v43;
    v123 = *v142;
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v142 != v123)
        {
          objc_enumerationMutation(v120);
        }

        v46 = *(*(&v141 + 1) + 8 * k);
        v47 = [v46 objectForKeyedSubscript:@"BundleID"];
        [v129 addObject:v47];

        v48 = MEMORY[0x277CCABB0];
        v49 = [v46 objectForKeyedSubscript:@"ScreenOnTime"];
        [v49 doubleValue];
        v51 = v50;
        v52 = [v46 objectForKeyedSubscript:@"InCallScreenOnTime"];
        [v52 doubleValue];
        v54 = v51 + v53;
        v55 = [v46 objectForKeyedSubscript:@"InCallBackgroundTime"];
        [v55 doubleValue];
        v57 = [v48 numberWithDouble:v54 + v56];
        v58 = [v46 objectForKeyedSubscript:@"BundleID"];
        [dictionary setObject:v57 forKeyedSubscript:v58];

        v59 = [v46 objectForKeyedSubscript:@"BackgroundTime"];
        v60 = [v46 objectForKeyedSubscript:@"BundleID"];
        [dictionary2 setObject:v59 forKeyedSubscript:v60];
      }

      v44 = [v120 countByEnumeratingWithState:&v141 objects:v155 count:16];
    }

    while (v44);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v61 = arrayCopy;
  v62 = [v61 countByEnumeratingWithState:&v137 objects:v154 count:16];
  v121 = v61;
  if (v62)
  {
    v63 = v62;
    v124 = *v138;
    do
    {
      for (m = 0; m != v63; ++m)
      {
        if (*v138 != v124)
        {
          objc_enumerationMutation(v61);
        }

        v65 = *(*(&v137 + 1) + 8 * m);
        v66 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v67 = [v129 containsObject:v66];

        if (v67)
        {
          v68 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          [v129 removeObject:v68];
        }

        v69 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v70 = MEMORY[0x277CCABB0];
        v71 = [dictionary objectForKeyedSubscript:v69];
        [v71 doubleValue];
        v72 = [v70 numberWithDouble:?];
        [v65 setObject:v72 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];

        v73 = MEMORY[0x277CCABB0];
        v74 = [dictionary2 objectForKeyedSubscript:v69];
        [v74 doubleValue];
        v75 = [v73 numberWithDouble:?];
        [v65 setObject:v75 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

        v76 = MEMORY[0x277CCABB0];
        v77 = [dictionary3 objectForKeyedSubscript:v69];
        [v77 doubleValue];
        v78 = [v76 numberWithDouble:?];
        [v65 setObject:v78 forKeyedSubscript:@"PLBatteryUIAppCallOffScreenTimeKey"];

        v79 = MEMORY[0x277CCABB0];
        v80 = [dictionary4 objectForKeyedSubscript:v69];
        [v80 doubleValue];
        v81 = [v79 numberWithDouble:?];
        [v65 setObject:v81 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

        v82 = MEMORY[0x277CCABB0];
        v83 = [v126 objectForKeyedSubscript:v69];
        [v83 doubleValue];
        v84 = [v82 numberWithDouble:?];
        [v65 setObject:v84 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];

        if (_os_feature_enabled_impl() && [(PLBatteryUIResponseTypeBatteryBreakdown *)v125 excludeTimeOnCharger])
        {
          v85 = MEMORY[0x277CCABB0];
          v86 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v86 doubleValue];
          v88 = v87;
          v89 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
          [v89 doubleValue];
          v91 = v88 - v90;

          if (v91 >= 0.0)
          {
            v92 = v91;
          }

          else
          {
            v92 = 0.0;
          }

          v93 = [v85 numberWithDouble:v92];
          [v65 setObject:v93 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];

          v94 = MEMORY[0x277CCABB0];
          v61 = v121;
          v95 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          [v95 doubleValue];
          v97 = v96;
          v98 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
          [v98 doubleValue];
          v100 = v97 - v99;

          if (v100 >= 0.0)
          {
            v101 = v100;
          }

          else
          {
            v101 = 0.0;
          }

          v102 = [v94 numberWithDouble:v101];
          [v65 setObject:v102 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        }
      }

      v63 = [v61 countByEnumeratingWithState:&v137 objects:v154 count:16];
    }

    while (v63);
  }

  v103 = [v61 mutableCopy];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v130 = v129;
  v104 = [v130 countByEnumeratingWithState:&v133 objects:v153 count:16];
  if (v104)
  {
    v105 = v104;
    v106 = *v134;
    do
    {
      for (n = 0; n != v105; ++n)
      {
        if (*v134 != v106)
        {
          objc_enumerationMutation(v130);
        }

        v108 = *(*(&v133 + 1) + 8 * n);
        dictionary5 = [MEMORY[0x277CBEB38] dictionary];
        [dictionary5 setObject:v108 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        [dictionary5 setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        v110 = [dictionary objectForKeyedSubscript:v108];
        [dictionary5 setObject:v110 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];

        v111 = [dictionary2 objectForKeyedSubscript:v108];
        [dictionary5 setObject:v111 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

        v112 = [dictionary3 objectForKeyedSubscript:v108];
        [dictionary5 setObject:v112 forKeyedSubscript:@"PLBatteryUIAppCallOffScreenTimeKey"];

        v113 = [dictionary4 objectForKeyedSubscript:v108];
        [dictionary5 setObject:v113 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

        v114 = [v126 objectForKeyedSubscript:v108];
        [dictionary5 setObject:v114 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];

        [(PLBatteryUIResponseTypeBatteryBreakdown *)v125 bgLocationAudioTimeApps:dictionary5];
        [dictionary5 setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v103 addObject:dictionary5];
      }

      v105 = [v130 countByEnumeratingWithState:&v133 objects:v153 count:16];
    }

    while (v105);
  }

  return v103;
}

- (id)processNotificationEntries:(id)entries inRange:(_PLTimeIntervalRange)range withAppArray:(id)array
{
  length = range.length;
  location = range.location;
  v61 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  arrayCopy = array;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v10 = entriesCopy;
  v11 = [v10 countByEnumeratingWithState:&v51 objects:v60 count:16];
  v46 = dictionary;
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    v14 = location + length;
    do
    {
      v15 = 0;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v51 + 1) + 8 * v15);
        entryDate = [(PLBatteryBreakdownNotificationInfo *)v16 entryDate];
        v18 = entryDate;
        if (!entryDate)
        {
          goto LABEL_8;
        }

        [entryDate timeIntervalSince1970];
        if (location > v19)
        {
          goto LABEL_8;
        }

        v20 = v19;

        if (v14 >= v20)
        {
          v21 = [(PLBatteryBreakdownNotificationInfo *)v16 objectForKeyedSubscript:@"NotificationType"];
          if (v21)
          {
            v22 = v21;
            v23 = [(PLBatteryBreakdownNotificationInfo *)v16 objectForKeyedSubscript:@"NotificationType"];
            if (![v23 intValue])
            {
              goto LABEL_16;
            }

            v24 = [(PLBatteryBreakdownNotificationInfo *)v16 objectForKeyedSubscript:@"NotificationType"];
            if ([v24 intValue] == 3)
            {

LABEL_16:
LABEL_17:
              v18 = [(PLBatteryBreakdownNotificationInfo *)v16 objectForKeyedSubscript:@"NotificationBundleID"];
              if (v18)
              {
                v25 = [[PLBatteryBreakdownNotificationInfo alloc] initWithEntry:v16];
                if (v25)
                {
                  v26 = [dictionary objectForKeyedSubscript:v18];

                  if (v26)
                  {
                    v27 = [dictionary objectForKeyedSubscript:v18];
                    [v27 combineWith:v25];
                  }

                  else
                  {
                    v28 = [dictionary setObject:v25 forKeyedSubscript:v18];
                  }

                  v32 = PLLogCommon(v28);
                  if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                  {
LABEL_28:

                    goto LABEL_8;
                  }

                  *buf = 138412546;
                  v57 = v18;
                  v58 = 2112;
                  v59 = v25;
                  v33 = v32;
                  v34 = "notification: %@ -> %@";
                }

                else
                {
                  v32 = PLLogCommon(0);
                  if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_28;
                  }

                  *buf = 138412546;
                  v57 = v18;
                  v58 = 2112;
                  v59 = v16;
                  v33 = v32;
                  v34 = "failed to init notification info for %@ %@";
                }

                _os_log_debug_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEBUG, v34, buf, 0x16u);
                goto LABEL_28;
              }

LABEL_8:

              goto LABEL_9;
            }

            v29 = [(PLBatteryBreakdownNotificationInfo *)v16 objectForKeyedSubscript:@"NotificationType"];
            intValue = [v29 intValue];

            v31 = intValue == -1;
            dictionary = v46;
            if (v31)
            {
              goto LABEL_17;
            }
          }
        }

LABEL_9:
        ++v15;
      }

      while (v12 != v15);
      v35 = [v10 countByEnumeratingWithState:&v51 objects:v60 count:16];
      v12 = v35;
    }

    while (v35);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v36 = arrayCopy;
  v37 = [v36 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v48;
LABEL_34:
    v40 = 0;
    while (1)
    {
      if (*v48 != v39)
      {
        objc_enumerationMutation(v36);
      }

      v41 = *(*(&v47 + 1) + 8 * v40);
      dictionary = v46;
      if (![v46 count])
      {
        break;
      }

      v42 = [v41 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      v43 = [v46 objectForKeyedSubscript:v42];
      if (v43)
      {
        [v41 setObject:v43 forKeyedSubscript:@"NotificationInfo"];
        [v46 removeObjectForKey:v42];
      }

      if (v38 == ++v40)
      {
        v38 = [v36 countByEnumeratingWithState:&v47 objects:v55 count:16];
        dictionary = v46;
        if (v38)
        {
          goto LABEL_34;
        }

        break;
      }
    }
  }

  return v36;
}

- (id)getWidgetUpdateTypeToCount:(id)count inRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v25[2] = *MEMORY[0x277D85DE8];
  countCopy = count;
  v8 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"WidgetUpdates"];
  countCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@='%@'", @"bundleID", countCopy];
  0x40AC200000000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%f", @"timeInterval", 0x40AC200000000000];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v12 = objc_msgSend_storage(responderService);
  v25[0] = countCopy;
  v25[1] = 0x40AC200000000000;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v14 = [v12 entriesForKey:v8 inTimeRange:v13 withFilters:{location, length}];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__12;
  v23 = __Block_byref_object_dispose__12;
  v24 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__PLBatteryUIResponseTypeBatteryBreakdown_getWidgetUpdateTypeToCount_inRange___block_invoke;
  v18[3] = &unk_279A5E568;
  v18[4] = self;
  v18[5] = &v19;
  v15 = PLLogCommon([v14 enumerateObjectsUsingBlock:v18]);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown getWidgetUpdateTypeToCount:inRange:];
  }

  v16 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v16;
}

void __78__PLBatteryUIResponseTypeBatteryBreakdown_getWidgetUpdateTypeToCount_inRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = [v3 objectForKeyedSubscript:@"host"];
  v4 = [*(a1 + 32) getWidgetTypeForHostName:?];
  v5 = [v3 objectForKeyedSubscript:@"Count"];

  v6 = [v5 intValue];
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [MEMORY[0x277CCABB0] numberWithShort:v4];
  v9 = [v7 objectForKey:v8];

  v10 = MEMORY[0x277CCABB0];
  if (v9)
  {
    v11 = *(*(*(a1 + 40) + 8) + 40);
    v12 = [MEMORY[0x277CCABB0] numberWithShort:v4];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = [v10 numberWithInt:{objc_msgSend(v13, "intValue") + v6}];
    v15 = *(*(*(a1 + 40) + 8) + 40);
    v16 = [MEMORY[0x277CCABB0] numberWithShort:v4];
    [v15 setObject:v14 forKeyedSubscript:v16];
  }

  else
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    v17 = *(*(*(a1 + 40) + 8) + 40);
    v13 = [MEMORY[0x277CCABB0] numberWithShort:v4];
    [v17 setObject:v12 forKeyedSubscript:v13];
  }
}

- (signed)getWidgetTypeForEnergyEntry:(id)entry
{
  entryCopy = entry;
  v4 = [entryCopy objectForKeyedSubscript:@"WidgetUpdateTypeToCount"];
  allValues = [v4 allValues];
  v6 = [allValues valueForKeyPath:@"@max.self"];

  v7 = [v4 allKeysForObject:v6];
  firstObject = [v7 firstObject];
  v9 = PLLogCommon(firstObject);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown getWidgetTypeForEnergyEntry:entryCopy];
  }

  if ([v7 containsObject:&unk_287146C00])
  {

    firstObject = &unk_287146C00;
  }

  if ([v6 intValue] < 1)
  {
    intValue = 0;
  }

  else
  {
    intValue = [firstObject intValue];
  }

  return intValue;
}

- (signed)getWidgetTypeForHostName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Local"])
  {
    v4 = 1;
  }

  else if ([nameCopy isEqualToString:@"Remote-NotificationCenter"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stringifyKeysForDict:(id)dict
{
  dictCopy = dict;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PLBatteryUIResponseTypeBatteryBreakdown_stringifyKeysForDict___block_invoke;
  v7[3] = &unk_279A5E518;
  v5 = v4;
  v8 = v5;
  [dictCopy enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __64__PLBatteryUIResponseTypeBatteryBreakdown_stringifyKeysForDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 stringValue];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (int)getBatteryMaximumCapacityPercentWithError:(id *)error
{
  v4 = IOPSCopyPowerSourcesByType();
  v5 = v4;
  if (v4 && [v4 count] && (objc_msgSend(v5, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", @"Maximum Capacity Percent"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    v9 = [v8 objectForKeyedSubscript:@"Maximum Capacity Percent"];
    intValue = [v9 intValue];
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"noBatteryData" code:-1 userInfo:0];
    }

    intValue = -1;
  }

  return intValue;
}

- (void)configure:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addEntryTypes:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addEntryTypes:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addEntryTypes:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addEntryTypes:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)applyStaticNameTransformation:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v3 doubleValue];
  *v1 = 134217984;
  *v0 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "Before clamping: energyEntry[PLBatteryUIAppEnergyValueKey]=%f");
}

- (void)applyStaticNameTransformation:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v3 doubleValue];
  *v1 = 134217984;
  *v0 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "After clamping: energyEntry[PLBatteryUIAppEnergyValueKey]=%f");
}

- (void)applyStaticNameTransformation:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)adjustEnergyValues:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)applySlopAdjustment:.cold.1()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)applySlopAdjustment:.cold.3()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)getEnergyToRemoveForSlopAdjustment:(void *)a1 withEnergyKey:(uint64_t)a2 forBucket:.cold.1(void *a1, uint64_t a2)
{
  v4 = [a1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v5 = [a1 objectForKeyedSubscript:a2];
  [v5 doubleValue];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

- (void)adjustRuntimes:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)adjustRuntimes:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)ongoingUpdateRestoreTransformations:(_BYTE *)a1 .cold.1(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)ongoingUpdateRestoreTransformations:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v3 doubleValue];
  *v1 = 134217984;
  *v0 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "Ongoing Restore: After adjustments, energy in entry is %f");
}

- (void)ongoingUpdateRestoreTransformations:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)transformDeletedApps:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)transformDeletedApps:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)transformPlugins:withBucket:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initializeBucketsWithRange:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)initializeBucketsWithRange:(void *)a1 .cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void __70__PLBatteryUIResponseTypeBatteryBreakdown_initializeBucketsWithRange___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 buckets];
  [v1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

- (void)prepareBucketsWithRange:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)prepareBucketsWithRange:(void *)a1 .cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void __67__PLBatteryUIResponseTypeBatteryBreakdown_prepareBucketsWithRange___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 buckets];
  [v1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void __67__PLBatteryUIResponseTypeBatteryBreakdown_prepareBucketsWithRange___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 buckets];
  [v1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

- (void)getWidgetUpdateTypeToCount:inRange:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)getWidgetTypeForEnergyEntry:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end