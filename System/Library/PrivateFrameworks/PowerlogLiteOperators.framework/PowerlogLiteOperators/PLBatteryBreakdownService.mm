@interface PLBatteryBreakdownService
+ (BOOL)canSetQualifier:(int64_t)qualifier forBundleID:(id)d;
+ (id)appNameForBundleID:(id)d;
+ (id)combineQualifiers:(id)qualifiers;
+ (id)installedPlugins;
+ (id)pluginEntryFromRecord:(id)record;
+ (void)load;
- (BOOL)checkHomeKitEvents;
- (BOOL)inDemoMode;
- (BOOL)isBackgroundLocationUsageAlwaysEnabled:(id)enabled withLocationDict:(id)dict;
- (BOOL)isBackgroundRefreshEnabled:(id)enabled;
- (BOOL)shouldShowBatteryBreakdownWithTotalSumEnergy:(double)energy withtotalSumEnergyRatioCutOff:(double)off;
- (BOOL)shouldShowUpgradeInsightWithQueryType:(int)type;
- (BOOL)shouldSuggestAutoBrightnessWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent;
- (BOOL)shouldSuggestAutoLockWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent;
- (BOOL)shouldSuggestReduceBrightnessWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent;
- (BOOL)showRootNodesInInternal;
- (BOOL)wasGizmoConnectedInRange:(_PLTimeIntervalRange)range;
- (NSDictionary)givenNameToMappedName;
- (NSDictionary)gizmoDaemonToAppBundleID;
- (NSDictionary)gizmoIDSTopicToAppBundleID;
- (NSDictionary)installedBundleIDToDisplayName;
- (NSDictionary)installedPluginBundleIDToPluginEntry;
- (NSDictionary)nodeIDToNodeName;
- (NSDictionary)rootNodeNameToRootNodeEnergyKey;
- (NSSet)deletedAppClipNames;
- (NSSet)deletedAppNames;
- (NSSet)intermediateRootNodes;
- (NSSet)nonAppNames;
- (NSSet)rootNodeNames;
- (NSSet)webAppNames;
- (double)computeTotalBackgroundDuration:(id)duration;
- (double)computeTotalForegroundDuration:(id)duration;
- (double)getLastUpgradeTimestamp;
- (double)getfirstEntryTimestampFromDb;
- (double)nonAppRuntimeWithEventForwardTableName:(id)name withRange:(_PLTimeIntervalRange)range andIdentificationKey:(id)key;
- (id)addForegroundAndBackgroundDurations:(id)durations withRange:(_PLTimeIntervalRange)range withQueryType:(int)type;
- (id)addNotificationValues:(id)values withRange:(_PLTimeIntervalRange)range withQueryType:(int)type;
- (id)adjustBackgroundTimesWithEnergyEntries:(id)entries;
- (id)adjustExtensionBackgroundTimeWithEnergyEntries:(id)entries;
- (id)adjustFGBGTimeForNonAppEnergyEntry:(id)entry;
- (id)adjustForegroundTimesWithEnergyEntries:(id)entries;
- (id)applyDynamicNameTransformationsWithEnergyEntries:(id)entries;
- (id)applyStaticNameTransformationsWithEnergyEntries:(id)entries;
- (id)batteryBreakdownWithTimeRange:(_PLTimeIntervalRange)range withDataRange:(_PLTimeIntervalRange)dataRange withEntryTimeInterval:(double)interval withQueryType:(int)type;
- (id)batteryBreakdownWithTimeRange:(_PLTimeIntervalRange)range withDataRange:(_PLTimeIntervalRange)dataRange withEntryTimeInterval:(double)interval withQueryType:(int)type withTotalSumEnergyRatioCutOff:(double)off;
- (id)bundleIDsForMappedName:(id)name;
- (id)combineDuplicatesWithEnergyEntries:(id)entries;
- (id)determineDisplayNamesWithEnergyEntries:(id)entries;
- (id)energyEntriesWithRange:(_PLTimeIntervalRange)range withEntryTimeInterval:(double)interval withQueryType:(int)type;
- (id)filterEnergyEntriesBasedOnTime:(id)time withQueryType:(int)type;
- (id)filterWithEnergyEntries:(id)entries withQueryType:(int)type;
- (id)getUpgradeDataWithLastUpgradeTimestamp:(double)timestamp withFirstEntryTimestampFromDB:(double)b withNow:(id)now withBeforeUpgrade:(BOOL)upgrade withRange:(_PLTimeIntervalRange)range;
- (id)getUsageDataWithStartTime:(double)time withMidTime:(double)midTime withEndTime:(id)endTime;
- (id)mapCloudDocsToAppsWithEnergyEntries:(id)entries;
- (id)mapDeletedAppsWithEnergyEntries:(id)entries;
- (id)mapGizmoToAppsWithEnergyEntries:(id)entries;
- (id)mapPluginsToAppsWithEnergyEntries:(id)entries;
- (id)nonAppsRuntimesWithRange:(_PLTimeIntervalRange)range;
- (id)nonNullValue:(id)value withKey:(id)key;
- (id)pluginBundleIDsforBundleID:(id)d;
- (id)populateBLDKeysWithEnergyEntries:(id)entries;
- (id)populateEnergyBucketKeysWithEntries:(id)entries;
- (id)populateRootNodeEnergyKeysWithEnergyEntries:(id)entries;
- (id)qualifiersWithEnergyEntry:(id)entry bucketSize:(double)size andTotalEnergy:(double)energy;
- (id)reaccountBackupRestoreWithEnergyEntries:(id)entries;
- (id)reaccountExchangeEntriesWithEnergyEntries:(id)entries;
- (id)removeNodesNotToShowInInternalUI:(id)i withQueryType:(int)type;
- (id)shouldSuggestBackgroundCPUWithEnergyEntries:(id)entries;
- (id)shouldSuggestBackgroundLocationWithEnergyEntries:(id)entries;
- (id)suggestionsWithEnergyEntries:(id)entries;
- (int)appTypeForName:(id)name;
- (int)minimumRequiredQueryTypeForAppType:(int)type;
- (signed)energyMetricBucketForRootNodeID:(id)d;
- (void)clearState;
@end

@implementation PLBatteryBreakdownService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLBatteryBreakdownService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)clearState
{
  [(PLBatteryBreakdownService *)self setRootNodeNames:0];
  [(PLBatteryBreakdownService *)self setNonAppNames:0];
  [(PLBatteryBreakdownService *)self setDeletedAppNames:0];
  [(PLBatteryBreakdownService *)self setDeletedAppClipNames:0];
  [(PLBatteryBreakdownService *)self setWebAppNames:0];
  [(PLBatteryBreakdownService *)self setNodeIDToNodeName:0];
  [(PLBatteryBreakdownService *)self setInstalledBundleIDToDisplayName:0];
  [(PLBatteryBreakdownService *)self setInstalledPluginBundleIDToPluginEntry:0];
  [(PLBatteryBreakdownService *)self setRootNodeNameToRootNodeEnergyKey:0];
  [(PLBatteryBreakdownService *)self setGivenNameToMappedName:0];
  [(PLBatteryBreakdownService *)self setGizmoDaemonToAppBundleID:0];
  [(PLBatteryBreakdownService *)self setGizmoIDSTopicToAppBundleID:0];

  [(PLBatteryBreakdownService *)self setHasHomeKitActivity:0];
}

- (NSSet)rootNodeNames
{
  rootNodeNames = self->_rootNodeNames;
  if (!rootNodeNames)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_282C15720];
    v5 = self->_rootNodeNames;
    self->_rootNodeNames = v4;

    rootNodeNames = self->_rootNodeNames;
  }

  return rootNodeNames;
}

- (NSSet)nonAppNames
{
  nonAppNames = self->_nonAppNames;
  if (!nonAppNames)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_282C15738];
    v5 = self->_nonAppNames;
    self->_nonAppNames = v4;

    nonAppNames = self->_nonAppNames;
  }

  return nonAppNames;
}

- (NSSet)intermediateRootNodes
{
  intermediateRootNodes = self->_intermediateRootNodes;
  if (!intermediateRootNodes)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_282C15750];
    v5 = self->_intermediateRootNodes;
    self->_intermediateRootNodes = v4;

    intermediateRootNodes = self->_intermediateRootNodes;
  }

  return intermediateRootNodes;
}

- (NSSet)deletedAppNames
{
  selfCopy = self;
  v54[1] = *MEMORY[0x277D85DE8];
  deletedAppNames = self->_deletedAppNames;
  if (!deletedAppNames)
  {
    v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_282C12B88 withComparisonOperation:1];
    v6 = objc_msgSend_storage(selfCopy);
    v37 = v5;
    v54[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
    v38 = v4;
    v8 = [v6 entriesForKey:v4 withComparisons:v7];

    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v8;
      _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEFAULT, "DeletedAppEntries = %@", buf, 0xCu);
    }

    v10 = 0x277D3F000uLL;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v11 = objc_opt_class();
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __44__PLBatteryBreakdownService_deletedAppNames__block_invoke;
      v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v48[4] = v11;
      if (qword_2811F6450 != -1)
      {
        dispatch_once(&qword_2811F6450, v48);
      }

      if (_MergedGlobals_1_54 == 1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"deletedAppEntries=%@", v8];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService deletedAppNames]"];
        [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:240];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v50 = v12;
          _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    obj = [MEMORY[0x277CBEB58] set];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = v8;
    v42 = [(NSSet *)v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v42)
    {
      v41 = *v45;
      v39 = v18;
      do
      {
        v19 = 0;
        do
        {
          if (*v45 != v41)
          {
            objc_enumerationMutation(v18);
          }

          v20 = *(*(&v44 + 1) + 8 * v19);
          v21 = [v20 objectForKeyedSubscript:@"AppBundleId"];
          v22 = [v20 objectForKeyedSubscript:@"AppIsClip"];
          if ([*(v10 + 384) debugEnabled])
          {
            v23 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __44__PLBatteryBreakdownService_deletedAppNames__block_invoke_295;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v23;
            if (qword_2811F6458 != -1)
            {
              dispatch_once(&qword_2811F6458, block);
            }

            if (byte_2811F6409 == 1)
            {
              v24 = v10;
              v25 = selfCopy;
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v21];
              v27 = MEMORY[0x277D3F178];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent2 = [v28 lastPathComponent];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService deletedAppNames]"];
              [v27 logMessage:v26 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:246];

              v31 = PLLogCommon();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v50 = v26;
                _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              selfCopy = v25;
              v10 = v24;
              v18 = v39;
            }
          }

          v32 = PLLogCommon();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [v22 intValue];
            *buf = 138412546;
            v50 = v21;
            v51 = 1024;
            v52 = intValue;
            _os_log_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEFAULT, "bundleID=%@, appIsClip=%d", buf, 0x12u);
          }

          if (v21 && ([v22 BOOLValue] & 1) == 0)
          {
            [obj addObject:v21];
          }

          ++v19;
        }

        while (v42 != v19);
        v42 = [(NSSet *)v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v42);
    }

    objc_storeStrong(&selfCopy->_deletedAppNames, obj);
    v34 = PLLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = selfCopy->_deletedAppNames;
      *buf = 138412290;
      v50 = v35;
      _os_log_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEFAULT, "DeletedAppNames = %@", buf, 0xCu);
    }

    deletedAppNames = selfCopy->_deletedAppNames;
  }

  return deletedAppNames;
}

void *__44__PLBatteryBreakdownService_deletedAppNames__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_54 = result;
  return result;
}

void *__44__PLBatteryBreakdownService_deletedAppNames__block_invoke_295(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6409 = result;
  return result;
}

- (NSSet)deletedAppClipNames
{
  selfCopy = self;
  v46[1] = *MEMORY[0x277D85DE8];
  deletedAppClipNames = self->_deletedAppClipNames;
  if (!deletedAppClipNames)
  {
    v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_282C12B88 withComparisonOperation:1];
    v6 = objc_msgSend_storage(selfCopy);
    v31 = v5;
    v46[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    v32 = v4;
    v8 = [v6 entriesForKey:v4 withComparisons:v7];

    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v8;
      _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEFAULT, "DeletedAppEntries = %@", buf, 0xCu);
    }

    obj = [MEMORY[0x277CBEB58] set];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v10 = v8;
    v11 = [(NSSet *)v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v35 = *v38;
      do
      {
        v13 = 0;
        v33 = v12;
        do
        {
          if (*v38 != v35)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v37 + 1) + 8 * v13);
          v15 = [v14 objectForKeyedSubscript:@"AppBundleId"];
          v16 = [v14 objectForKeyedSubscript:@"AppIsClip"];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v17 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __48__PLBatteryBreakdownService_deletedAppClipNames__block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v17;
            if (qword_2811F6460 != -1)
            {
              dispatch_once(&qword_2811F6460, block);
            }

            if (byte_2811F640A == 1)
            {
              v18 = v10;
              v19 = selfCopy;
              v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v15];
              v21 = MEMORY[0x277D3F178];
              v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent = [v22 lastPathComponent];
              v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService deletedAppClipNames]"];
              [v21 logMessage:v20 fromFile:lastPathComponent fromFunction:v24 fromLineNumber:273];

              v25 = PLLogCommon();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v42 = v20;
                _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              selfCopy = v19;
              v10 = v18;
              v12 = v33;
            }
          }

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [v16 intValue];
            *buf = 138412546;
            v42 = v15;
            v43 = 1024;
            v44 = intValue;
            _os_log_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEFAULT, "bundleID=%@, appIsClip=%d", buf, 0x12u);
          }

          if (v15 && [v16 BOOLValue])
          {
            [obj addObject:v15];
          }

          ++v13;
        }

        while (v12 != v13);
        v12 = [(NSSet *)v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v12);
    }

    objc_storeStrong(&selfCopy->_deletedAppClipNames, obj);
    v28 = PLLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      deletedAppNames = selfCopy->_deletedAppNames;
      *buf = 138412290;
      v42 = deletedAppNames;
      _os_log_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEFAULT, "DeletedAppNames = %@", buf, 0xCu);
    }

    deletedAppClipNames = selfCopy->_deletedAppClipNames;
  }

  return deletedAppClipNames;
}

void *__48__PLBatteryBreakdownService_deletedAppClipNames__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F640A = result;
  return result;
}

- (NSSet)webAppNames
{
  v21 = *MEMORY[0x277D85DE8];
  webAppNames = self->_webAppNames;
  if (!webAppNames)
  {
    v4 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLXPCAgent" withType:*MEMORY[0x277D3F5D0] withName:@"WebApp"];
    v5 = objc_msgSend_storage(self);
    v6 = [v5 entriesForKey:v4];

    v7 = [MEMORY[0x277CBEB58] set];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * v12) objectForKeyedSubscript:{@"identifier", v16}];
          if (v13)
          {
            [(NSSet *)v7 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v14 = self->_webAppNames;
    self->_webAppNames = v7;

    webAppNames = self->_webAppNames;
  }

  return webAppNames;
}

- (NSDictionary)nodeIDToNodeName
{
  v28[1] = *MEMORY[0x277D85DE8];
  nodeIDToNodeName = self->_nodeIDToNodeName;
  if (!nodeIDToNodeName)
  {
    v4 = objc_msgSend_storage(self, a2);
    entryKey = [MEMORY[0x277D3F0C8] entryKey];
    v27 = @"where";
    whereValidName = [objc_opt_class() whereValidName];
    v26 = whereValidName;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v28[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v9 = [v4 entriesForKey:entryKey withProperties:v8];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          name = [v16 name];
          v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "entryID")}];
          [(NSDictionary *)dictionary setObject:name forKeyedSubscript:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v19 = self->_nodeIDToNodeName;
    self->_nodeIDToNodeName = dictionary;

    nodeIDToNodeName = self->_nodeIDToNodeName;
  }

  return nodeIDToNodeName;
}

- (NSDictionary)installedBundleIDToDisplayName
{
  selfCopy = self;
  v80[1] = *MEMORY[0x277D85DE8];
  installedBundleIDToDisplayName = self->_installedBundleIDToDisplayName;
  if (!installedBundleIDToDisplayName)
  {
    v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_282C12B88 withComparisonOperation:0];
    v6 = objc_msgSend_storage(selfCopy);
    v58 = v5;
    v80[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:1];
    v59 = v4;
    v8 = [v6 entriesForKey:v4 withComparisons:v7];

    v9 = 0x277D3F000uLL;
    v61 = selfCopy;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke;
      v75[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v75[4] = v10;
      if (qword_2811F6468 != -1)
      {
        dispatch_once(&qword_2811F6468, v75);
      }

      if (byte_2811F640B == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"installedAppEntries=%@", v8];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedBundleIDToDisplayName]"];
        [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:323];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v79 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        selfCopy = v61;
      }
    }

    v17 = PLLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v79 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "installedAppEntries=%@", buf, 0xCu);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v71 objects:v77 count:16];
    v60 = v18;
    if (v19)
    {
      v20 = v19;
      v21 = *v72;
      v22 = @"AppType";
      do
      {
        v23 = 0;
        v63 = v20;
        do
        {
          if (*v72 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v71 + 1) + 8 * v23);
          v25 = [v24 objectForKeyedSubscript:v22];
          intValue = [v25 intValue];

          if (intValue == 101)
          {
            v27 = v22;
            v28 = [v24 objectForKeyedSubscript:@"AppBundleId"];
            v29 = [v24 objectForKeyedSubscript:@"AppName"];
            if ([*(v9 + 384) debugEnabled])
            {
              v30 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke_327;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v30;
              if (qword_2811F6470 != -1)
              {
                dispatch_once(&qword_2811F6470, block);
              }

              if (byte_2811F640C == 1)
              {
                v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", v28, v29];
                v32 = MEMORY[0x277D3F178];
                v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent2 = [v33 lastPathComponent];
                v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedBundleIDToDisplayName]"];
                [v32 logMessage:v31 fromFile:lastPathComponent2 fromFunction:v35 fromLineNumber:333];

                v36 = PLLogCommon();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v79 = v31;
                  _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v18 = v60;
                selfCopy = v61;
                v9 = 0x277D3F000;
              }
            }

            [(NSDictionary *)dictionary setObject:v29 forKeyedSubscript:v28];

            v22 = v27;
            v20 = v63;
          }

          else
          {
            v28 = PLLogCommon();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v37 = [v24 objectForKeyedSubscript:@"AppBundleId"];
              *buf = 138412290;
              v79 = v37;
              _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "Skipping non system / non user bundleID=%@", buf, 0xCu);
            }
          }

          ++v23;
        }

        while (v20 != v23);
        v20 = [v18 countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v20);
    }

    v38 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v39 = [v38 countByEnumeratingWithState:&v66 objects:v76 count:16];
    v40 = 0x278257000uLL;
    if (v39)
    {
      v41 = v39;
      v42 = *v67;
      do
      {
        v43 = 0;
        do
        {
          if (*v67 != v42)
          {
            objc_enumerationMutation(v38);
          }

          v44 = *(*(&v66 + 1) + 8 * v43);
          if ([v44 mayBeBUIVisible])
          {
            if (![*(v40 + 2880) hasScreenPresence:v44])
            {
              goto LABEL_48;
            }

            bundleIdentifier = [v44 bundleIdentifier];
            v46 = [(NSDictionary *)dictionary objectForKeyedSubscript:bundleIdentifier];

            if (!v46)
            {
              localizedName = [v44 localizedName];
              if ([MEMORY[0x277D3F180] debugEnabled])
              {
                v48 = objc_opt_class();
                v65[0] = MEMORY[0x277D85DD0];
                v65[1] = 3221225472;
                v65[2] = __59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke_334;
                v65[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v65[4] = v48;
                if (qword_2811F6478 != -1)
                {
                  dispatch_once(&qword_2811F6478, v65);
                }

                if (byte_2811F640D == 1)
                {
                  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", bundleIdentifier, localizedName];
                  v62 = MEMORY[0x277D3F178];
                  v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                  lastPathComponent3 = [v50 lastPathComponent];
                  v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedBundleIDToDisplayName]"];
                  [v62 logMessage:v49 fromFile:lastPathComponent3 fromFunction:v52 fromLineNumber:351];

                  v53 = v49;
                  v54 = PLLogCommon();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v79 = v53;
                    _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  selfCopy = v61;
                  v40 = 0x278257000;
                }
              }

              [(NSDictionary *)dictionary setObject:localizedName forKeyedSubscript:bundleIdentifier];
            }
          }

          else
          {
            bundleIdentifier = PLLogCommon();
            if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEBUG))
            {
              bundleIdentifier2 = [v44 bundleIdentifier];
              *buf = 138412290;
              v79 = bundleIdentifier2;
              _os_log_debug_impl(&dword_21A4C6000, bundleIdentifier, OS_LOG_TYPE_DEBUG, "LSApplicationRecord Skipping non system / non user bundleID=%@", buf, 0xCu);
            }
          }

LABEL_48:
          ++v43;
        }

        while (v41 != v43);
        v41 = [v38 countByEnumeratingWithState:&v66 objects:v76 count:16];
      }

      while (v41);
    }

    v56 = selfCopy->_installedBundleIDToDisplayName;
    selfCopy->_installedBundleIDToDisplayName = dictionary;

    installedBundleIDToDisplayName = selfCopy->_installedBundleIDToDisplayName;
  }

  return installedBundleIDToDisplayName;
}

void *__59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F640B = result;
  return result;
}

void *__59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke_327(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F640C = result;
  return result;
}

void *__59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke_334(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F640D = result;
  return result;
}

- (NSDictionary)installedPluginBundleIDToPluginEntry
{
  selfCopy = self;
  v73[1] = *MEMORY[0x277D85DE8];
  installedPluginBundleIDToPluginEntry = self->_installedPluginBundleIDToPluginEntry;
  if (!installedPluginBundleIDToPluginEntry)
  {
    v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
    v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginDeletedDate" withValue:&unk_282C12B88 withComparisonOperation:0];
    v6 = objc_msgSend_storage(selfCopy);
    v50 = v5;
    v73[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
    v51 = v4;
    v8 = [v6 entriesForKey:v4 withComparisons:v7];

    v9 = 0x277D3F000uLL;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke;
      v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v68[4] = v10;
      if (qword_2811F6480 != -1)
      {
        dispatch_once(&qword_2811F6480, v68);
      }

      if (byte_2811F640E == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"installedPluginEntries=%@", v8];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedPluginBundleIDToPluginEntry]"];
        [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:373];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v72 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = 0x277D3F000uLL;
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v64 objects:v70 count:16];
    v53 = v17;
    v54 = selfCopy;
    if (v18)
    {
      v19 = v18;
      v20 = *v65;
      do
      {
        v21 = 0;
        do
        {
          if (*v65 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v64 + 1) + 8 * v21);
          v23 = [v22 objectForKeyedSubscript:@"PluginId"];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v24 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke_346;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v24;
            if (qword_2811F6488 != -1)
            {
              dispatch_once(&qword_2811F6488, block);
            }

            if (byte_2811F640F == 1)
            {
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"pluginBundleID=%@", v23];
              v26 = MEMORY[0x277D3F178];
              v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent2 = [v27 lastPathComponent];
              v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedPluginBundleIDToPluginEntry]"];
              [v26 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:378];

              v30 = PLLogCommon();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v72 = v25;
                _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v17 = v53;
              selfCopy = v54;
              v9 = 0x277D3F000uLL;
            }
          }

          [(NSDictionary *)dictionary setObject:v22 forKeyedSubscript:v23];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v19);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v31 = +[PLBatteryBreakdownService installedPlugins];
    v32 = dictionary;
    v56 = [v31 countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v56)
    {
      v55 = *v60;
      v52 = v31;
      do
      {
        v33 = 0;
        do
        {
          if (*v60 != v55)
          {
            objc_enumerationMutation(v31);
          }

          v34 = *(*(&v59 + 1) + 8 * v33);
          v35 = [v34 objectForKeyedSubscript:@"PluginId"];
          v36 = [v34 objectForKeyedSubscript:@"PluginParentApp"];
          v37 = [(NSDictionary *)v32 objectForKeyedSubscript:v35];

          if (!v37)
          {
            if ([*(v9 + 384) debugEnabled])
            {
              v38 = objc_opt_class();
              v58[0] = MEMORY[0x277D85DD0];
              v58[1] = 3221225472;
              v58[2] = __65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke_356;
              v58[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v58[4] = v38;
              if (qword_2811F6490 != -1)
              {
                dispatch_once(&qword_2811F6490, v58);
              }

              if (byte_2811F6410 == 1)
              {
                v39 = MEMORY[0x277CCACA8];
                v40 = [v34 objectForKeyedSubscript:@"PluginExecutableName"];
                v41 = [v34 objectForKeyedSubscript:@"PluginType"];
                v42 = [v39 stringWithFormat:@"pluginExecutableName=%@, pluginBundleID=%@, pluginParentApp=%@, pluginType=%@", v40, v35, v36, v41];

                v43 = MEMORY[0x277D3F178];
                v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent3 = [v44 lastPathComponent];
                v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedPluginBundleIDToPluginEntry]"];
                [v43 logMessage:v42 fromFile:lastPathComponent3 fromFunction:v46 fromLineNumber:389];

                v47 = PLLogCommon();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v72 = v42;
                  _os_log_debug_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                selfCopy = v54;
                v9 = 0x277D3F000;
                v32 = dictionary;
                v31 = v52;
              }
            }

            [(NSDictionary *)v32 setObject:v34 forKeyedSubscript:v35];
          }

          ++v33;
        }

        while (v56 != v33);
        v56 = [v31 countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v56);
    }

    v48 = selfCopy->_installedPluginBundleIDToPluginEntry;
    selfCopy->_installedPluginBundleIDToPluginEntry = v32;

    installedPluginBundleIDToPluginEntry = selfCopy->_installedPluginBundleIDToPluginEntry;
  }

  return installedPluginBundleIDToPluginEntry;
}

void *__65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F640E = result;
  return result;
}

void *__65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke_346(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F640F = result;
  return result;
}

void *__65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke_356(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6410 = result;
  return result;
}

- (id)pluginBundleIDsforBundleID:(id)d
{
  dCopy = d;
  installedPluginBundleIDToPluginEntry = [(PLBatteryBreakdownService *)self installedPluginBundleIDToPluginEntry];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__PLBatteryBreakdownService_pluginBundleIDsforBundleID___block_invoke;
  v10[3] = &unk_2782617F0;
  v11 = dCopy;
  v6 = dCopy;
  v7 = [installedPluginBundleIDToPluginEntry keysOfEntriesPassingTest:v10];

  allObjects = [v7 allObjects];

  return allObjects;
}

uint64_t __56__PLBatteryBreakdownService_pluginBundleIDsforBundleID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"PluginParentApp"];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

+ (id)appNameForBundleID:(id)d
{
  v3 = SBSCopyLocalizedApplicationNameForDisplayIdentifier();

  return v3;
}

+ (id)installedPlugins
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [MEMORY[0x277CC1E50] enumeratorWithOptions:{0, 0}];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [PLBatteryBreakdownService pluginEntryFromRecord:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [array addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v2);

  return array;
}

+ (id)pluginEntryFromRecord:(id)record
{
  recordCopy = record;
  v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
  bundleIdentifier = [recordCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    containingBundleRecord = [recordCopy containingBundleRecord];
    if (containingBundleRecord)
    {
      v7 = containingBundleRecord;
      containingBundleRecord2 = [recordCopy containingBundleRecord];
      bundleIdentifier2 = [containingBundleRecord2 bundleIdentifier];
      if (bundleIdentifier2)
      {
        v10 = bundleIdentifier2;
        executableURL = [recordCopy executableURL];

        if (executableURL)
        {
          bundleIdentifier = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
          bundleIdentifier3 = [recordCopy bundleIdentifier];
          [bundleIdentifier setObject:bundleIdentifier3 forKeyedSubscript:@"PluginId"];

          containingBundleRecord3 = [recordCopy containingBundleRecord];
          bundleIdentifier4 = [containingBundleRecord3 bundleIdentifier];
          [bundleIdentifier setObject:bundleIdentifier4 forKeyedSubscript:@"PluginParentApp"];

          extensionPointRecord = [recordCopy extensionPointRecord];
          identifier = [extensionPointRecord identifier];
          [bundleIdentifier setObject:identifier forKeyedSubscript:@"PluginType"];

          executableURL2 = [recordCopy executableURL];
          path = [executableURL2 path];
          [bundleIdentifier setObject:path forKeyedSubscript:@"PluginExecutableName"];

          [bundleIdentifier setObject:&unk_282C12B88 forKeyedSubscript:@"PluginDeletedDate"];
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

LABEL_8:
    bundleIdentifier = 0;
  }

LABEL_9:

  return bundleIdentifier;
}

- (NSDictionary)gizmoDaemonToAppBundleID
{
  gizmoDaemonToAppBundleID = self->_gizmoDaemonToAppBundleID;
  if (!gizmoDaemonToAppBundleID)
  {
    self->_gizmoDaemonToAppBundleID = &unk_282C192A0;
    gizmoDaemonToAppBundleID = self->_gizmoDaemonToAppBundleID;
  }

  return gizmoDaemonToAppBundleID;
}

- (NSDictionary)gizmoIDSTopicToAppBundleID
{
  gizmoIDSTopicToAppBundleID = self->_gizmoIDSTopicToAppBundleID;
  if (!gizmoIDSTopicToAppBundleID)
  {
    self->_gizmoIDSTopicToAppBundleID = &unk_282C192C8;
    gizmoIDSTopicToAppBundleID = self->_gizmoIDSTopicToAppBundleID;
  }

  return gizmoIDSTopicToAppBundleID;
}

- (NSDictionary)rootNodeNameToRootNodeEnergyKey
{
  v25[17] = *MEMORY[0x277D85DE8];
  rootNodeNameToRootNodeEnergyKey = self->_rootNodeNameToRootNodeEnergyKey;
  if (!rootNodeNameToRootNodeEnergyKey)
  {
    v23 = [&unk_282C15768 objectAtIndexedSubscript:2];
    v24[0] = v23;
    v25[0] = @"PLBatteryUIAppCPUEnergyKey";
    v22 = [&unk_282C15780 objectAtIndexedSubscript:4];
    v24[1] = v22;
    v25[1] = @"PLBatteryUIAppVENCEnergyKey";
    v21 = [&unk_282C15798 objectAtIndexedSubscript:5];
    v24[2] = v21;
    v25[2] = @"PLBatteryUIAppVDECEnergyKey";
    v20 = [&unk_282C157B0 objectAtIndexedSubscript:6];
    v24[3] = v20;
    v25[3] = @"PLBatteryUIAppISPEnergyKey";
    v19 = [&unk_282C157C8 objectAtIndexedSubscript:7];
    v24[4] = v19;
    v25[4] = @"PLBatteryUIAppRestOfSOCEnergyKey";
    v18 = [&unk_282C157E0 objectAtIndexedSubscript:8];
    v24[5] = v18;
    v25[5] = @"PLBatteryUIAppGPUEnergyKey";
    v17 = [&unk_282C157F8 objectAtIndexedSubscript:9];
    v24[6] = v17;
    v25[6] = @"PLBatteryUIAppDRAMEnergyKey";
    v16 = [&unk_282C15810 objectAtIndexedSubscript:10];
    v24[7] = v16;
    v25[7] = @"PLBatteryUIAppDisplayEnergyKey";
    v15 = [&unk_282C15828 objectAtIndexedSubscript:11];
    v24[8] = v15;
    v25[8] = @"PLBatteryUIAppWIFIEnergyKey";
    v4 = [&unk_282C15840 objectAtIndexedSubscript:15];
    v24[9] = v4;
    v25[9] = @"PLBatteryUIAppAUDIOEnergyKey";
    v5 = [&unk_282C15858 objectAtIndexedSubscript:37];
    v24[10] = v5;
    v25[10] = @"PLBatteryUIAppBBEnergyKey";
    v6 = [&unk_282C15870 objectAtIndexedSubscript:48];
    v24[11] = v6;
    v25[11] = @"BLMEnergyGPS";
    v7 = [&unk_282C15888 objectAtIndexedSubscript:12];
    v24[12] = v7;
    v25[12] = @"PLBatteryUIAppWifiLocationEnergyKey";
    v8 = [&unk_282C158A0 objectAtIndexedSubscript:13];
    v24[13] = v8;
    v25[13] = @"PLBatteryUIAppWifiPipelineEnergyKey";
    v9 = [&unk_282C158B8 objectAtIndexedSubscript:50];
    v24[14] = v9;
    v25[14] = @"PLBatteryUIAppBluetoothEnergyKey";
    v10 = [&unk_282C158D0 objectAtIndexedSubscript:20];
    v24[15] = v10;
    v25[15] = @"PLBatteryUIAppAccessoryEnergyKey";
    v11 = [&unk_282C158E8 objectAtIndexedSubscript:16];
    v24[16] = v11;
    v25[16] = @"PLBatteryUIAppNfcEnergyKey";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:17];
    v13 = self->_rootNodeNameToRootNodeEnergyKey;
    self->_rootNodeNameToRootNodeEnergyKey = v12;

    rootNodeNameToRootNodeEnergyKey = self->_rootNodeNameToRootNodeEnergyKey;
  }

  return rootNodeNameToRootNodeEnergyKey;
}

- (NSDictionary)givenNameToMappedName
{
  v11[73] = *MEMORY[0x277D85DE8];
  givenNameToMappedName = self->_givenNameToMappedName;
  if (!givenNameToMappedName)
  {
    v10[0] = @"IMRemoteURLConn";
    v10[1] = @"IMRemoteURLConne";
    v11[0] = @"com.apple.MobileSMS";
    v11[1] = @"com.apple.MobileSMS";
    v10[2] = @"com.apple.mobilesms.notification";
    v10[3] = @"mstreamd";
    v11[2] = @"com.apple.MobileSMS";
    v11[3] = @"com.apple.mobileslideshow";
    v10[4] = @"mediastream.mstreamd";
    v10[5] = @"assetsd";
    v11[4] = @"com.apple.mobileslideshow";
    v11[5] = @"com.apple.mobileslideshow";
    v10[6] = @"cloudphotod";
    v10[7] = @"com.apple.mobileslideshow.Discretionary";
    v11[6] = @"com.apple.mobileslideshow";
    v11[7] = @"com.apple.mobileslideshow";
    v10[8] = @"com.apple.icloud-container.com.apple.photos.cloud";
    v10[9] = @"com.apple.photoanalysisd";
    v11[8] = @"com.apple.mobileslideshow";
    v11[9] = @"com.apple.mobileslideshow";
    v10[10] = @"com.apple.photoanalysisd.backgroundanalysis";
    v10[11] = @"com.apple.mediaanalysisd";
    v11[10] = @"com.apple.mobileslideshow";
    v11[11] = @"com.apple.mobileslideshow";
    v10[12] = @"com.apple.mediaanalysisd.fullanalysis";
    v10[13] = @"com.apple.photos.cloud";
    v11[12] = @"com.apple.mobileslideshow";
    v11[13] = @"com.apple.mobileslideshow";
    v10[14] = @"WirelessRadioManager";
    v10[15] = @"WirelessRadioManagerd";
    v11[14] = @"com.apple.mobilephone";
    v11[15] = @"com.apple.mobilephone";
    v10[16] = @"WirelessRadioMa";
    v10[17] = @"vmd";
    v11[16] = @"com.apple.mobilephone";
    v11[17] = @"com.apple.mobilephone";
    v10[18] = @"ipTelephony";
    v10[19] = @"com.apple.MailCompositionService";
    v11[18] = @"com.apple.mobilephone";
    v11[19] = @"com.apple.mobilemail";
    v10[20] = @"MailCompositionService";
    v10[21] = @"suggestd";
    v11[20] = @"com.apple.mobilemail";
    v11[21] = @"com.apple.mobilemail";
    v10[22] = @"email.maild";
    v10[23] = @"com.apple.email.maild";
    v11[22] = @"com.apple.mobilemail";
    v11[23] = @"com.apple.mobilemail";
    v10[24] = @"com.apple.springboard.lockscreen.navigation";
    v10[25] = @"com.apple.Siri";
    v11[24] = @"com.apple.Maps";
    v11[25] = @"Siri";
    v10[26] = *MEMORY[0x277D0ABB8];
    v10[27] = @"assistantd";
    v11[26] = @"Siri";
    v11[27] = @"Siri";
    v10[28] = @"com.apple.WebKit.Networking";
    v10[29] = @"com.apple.WebKit.WebContent";
    v11[28] = @"com.apple.mobilesafari";
    v11[29] = @"com.apple.mobilesafari";
    v10[30] = @"com.apple.WebKit";
    v10[31] = @"com.apple.WebKi";
    v11[30] = @"com.apple.mobilesafari";
    v11[31] = @"com.apple.mobilesafari";
    v10[32] = @"com.apple.SafariViewService";
    v10[33] = @"safarifetcherd";
    v11[32] = @"com.apple.mobilesafari";
    v11[33] = @"com.apple.mobilesafari";
    v10[34] = @"com.apple.WebKit.WebContent.CaptivePortal";
    v10[35] = @"com.apple.WebKit.WebContent.Development";
    v11[34] = @"com.apple.mobilesafari";
    v11[35] = @"com.apple.mobilesafari";
    v10[36] = @"com.apple.WebKit.GPU";
    v10[37] = @"com.apple.WebKit.GPU.Development";
    v11[36] = @"com.apple.mobilesafari";
    v11[37] = @"com.apple.mobilesafari";
    v10[38] = @"com.apple.PassKitCore";
    v10[39] = @"passd";
    v11[38] = @"com.apple.Passbook";
    v11[39] = @"com.apple.Passbook";
    v10[40] = @"PassbookUIService";
    v10[41] = @"com.apple.PassbookUIService";
    v11[40] = @"com.apple.Passbook";
    v11[41] = @"com.apple.Passbook";
    v10[42] = @"com.apple.calendar";
    v10[43] = @"calaccessd";
    v11[42] = @"com.apple.mobilecal";
    v11[43] = @"com.apple.mobilecal";
    v4 = *MEMORY[0x277D66F48];
    v10[44] = *MEMORY[0x277D66F20];
    v10[45] = v4;
    v11[44] = @"HLS";
    v11[45] = @"HLS";
    v5 = *MEMORY[0x277D66F58];
    v10[46] = *MEMORY[0x277D66F10];
    v10[47] = v5;
    v11[46] = @"HLS";
    v11[47] = @"HLS";
    v6 = *MEMORY[0x277D0AB90];
    v10[48] = *MEMORY[0x277D0AB98];
    v10[49] = v6;
    v11[48] = @"HLS";
    v11[49] = @"HLS";
    v10[50] = *MEMORY[0x277D0ABB0];
    v10[51] = @"LockScreen";
    v11[50] = @"HLS";
    v11[51] = @"HLS";
    v10[52] = @"com.apple.MobileBackup.framework";
    v10[53] = @"backupd";
    v11[52] = @"Backup";
    v11[53] = @"Backup";
    v10[54] = @"com.apple.Restore";
    v10[55] = @"com.apple.atc";
    v11[54] = @"com.apple.AppStore";
    v11[55] = @"com.apple.AppStore";
    v10[56] = @"installd";
    v10[57] = @"com.apple.StreamingUnzipService";
    v11[56] = @"com.apple.AppStore";
    v11[57] = @"com.apple.AppStore";
    v10[58] = @"containermanagerd";
    v10[59] = @"appstored";
    v11[58] = @"com.apple.AppStore";
    v11[59] = @"com.apple.AppStore";
    v10[60] = @"OOS";
    v10[61] = @"healthd";
    v11[60] = @"PoorCellCondition";
    v11[61] = @"com.apple.Health";
    v10[62] = @"com.apple.healthappd";
    v10[63] = @"misd";
    v11[62] = @"com.apple.Health";
    v11[63] = @"Hotspot";
    v10[64] = @"RadarComposeUIService";
    v11[64] = @"com.apple.ist.radar";
    v10[65] = @"remindd";
    v11[65] = @"com.apple.reminders";
    v10[66] = @"homed";
    v11[66] = @"HomeKit";
    v10[67] = @"com.apple.private.alloy.willow";
    v11[67] = @"HomeKit";
    v10[68] = @"atc";
    v11[68] = @"com.apple.Music";
    v10[69] = @"siriactionsd";
    v11[69] = @"com.apple.shortcuts";
    v10[70] = @"com.apple.WorkflowKit.BackgroundShortcutRunner";
    v11[70] = @"com.apple.shortcuts";
    v10[71] = @"weatherd";
    v11[71] = @"com.apple.weather";
    v10[72] = @"synapse.contentlinkingd";
    v11[72] = @"com.apple.mobilenotes";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:73];
    v8 = self->_givenNameToMappedName;
    self->_givenNameToMappedName = v7;

    givenNameToMappedName = self->_givenNameToMappedName;
  }

  return givenNameToMappedName;
}

- (BOOL)inDemoMode
{
  if (qword_2811F6498 != -1)
  {
    dispatch_once(&qword_2811F6498, &__block_literal_global_55);
  }

  return byte_2811F6411;
}

void __39__PLBatteryBreakdownService_inDemoMode__block_invoke()
{
  v0 = [MEMORY[0x277D3F180] objectForKey:@"BUI_DEMO_MODE" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  byte_2811F6411 = v0 != 0;
}

- (id)batteryBreakdownWithTimeRange:(_PLTimeIntervalRange)range withDataRange:(_PLTimeIntervalRange)dataRange withEntryTimeInterval:(double)interval withQueryType:(int)type
{
  v6 = *&type;
  var1 = dataRange.var1;
  var0 = dataRange.var0;
  v10 = range.var1;
  v11 = range.var0;
  [(PLBatteryBreakdownService *)self totalSumEnergyRatioCutOff];

  return [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:v6 withDataRange:v11 withEntryTimeInterval:v10 withQueryType:var0 withTotalSumEnergyRatioCutOff:var1, interval, v13];
}

- (id)batteryBreakdownWithTimeRange:(_PLTimeIntervalRange)range withDataRange:(_PLTimeIntervalRange)dataRange withEntryTimeInterval:(double)interval withQueryType:(int)type withTotalSumEnergyRatioCutOff:(double)off
{
  v8 = *&type;
  var1 = dataRange.var1;
  var0 = dataRange.var0;
  v12 = range.var1;
  v13 = range.var0;
  v239 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    intervalCopy = interval;
    v233 = 1024;
    LODWORD(v234) = v8;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "entryTimeInterval=%f, queryType=%i", buf, 0x12u);
  }

  offCopy = off;
  if (var0 == 0.0 && var1 == 0.0)
  {
    v16 = v12;
    v17 = v12;
    v18 = v13;
    goto LABEL_60;
  }

  v19 = PLLogCommon();
  v20 = v13 + v12;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    intervalCopy = v13;
    v233 = 2048;
    v234 = v13 + v12;
    v235 = 2048;
    v236 = var0;
    v237 = 2048;
    v238 = var0 + var1;
    _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "range=(%f, %f), dataRange=(%f, %f)", buf, 0x2Au);
  }

  if (v13 >= var0 || v20 <= var0)
  {
    v21 = var0 + var1;
    if (var0 >= v13 || v21 <= v13)
    {
      v18 = 0.0;
      if (v13 != var0 || v12 <= 0.0)
      {
        v17 = 0.0;
        goto LABEL_22;
      }

      v17 = 0.0;
      if (var1 <= 0.0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v21 = var0 + var1;
  }

  if (v13 >= var0)
  {
    v18 = v13;
  }

  else
  {
    v18 = var0;
  }

  if (v20 < v21)
  {
    v21 = v13 + v12;
  }

  v17 = v21 - v18;
LABEL_22:
  v22 = v13 + -1800.0;
  v23 = v13 + -1800.0 < var0;
  v24 = v12 + v13 + -1800.0;
  if (v24 <= var0)
  {
    v23 = 0;
  }

  if (v8 != 4)
  {
    if (v23)
    {
      v26 = var0 + var1;
    }

    else
    {
      v26 = var0 + var1;
      if (var0 >= v22 || v26 <= v22)
      {
        v13 = 0.0;
        if (v22 != var0 || v12 <= 0.0)
        {
          goto LABEL_208;
        }

        v27 = var1 <= 0.0;
        v16 = 0.0;
        if (v27)
        {
          goto LABEL_57;
        }
      }
    }

    if (v22 >= var0)
    {
      v13 = v22;
    }

    else
    {
      v13 = var0;
    }

    if (v24 >= v26)
    {
      v24 = v26;
    }

    goto LABEL_56;
  }

  if (v23)
  {
    v25 = var0 + var1;
    goto LABEL_37;
  }

  v25 = var0 + var1;
  v27 = var0 >= v22 || v25 <= v22;
  if (!v27)
  {
LABEL_37:
    if (v22 >= var0)
    {
      v13 = var0;
    }

    else
    {
      v13 = v22;
    }

    if (v24 < v25)
    {
      v24 = v25;
    }

LABEL_56:
    v16 = v24 - v13;
    goto LABEL_57;
  }

  v13 = 0.0;
  if (v22 != var0 || v12 <= 0.0)
  {
LABEL_208:
    v16 = 0.0;
    goto LABEL_57;
  }

  v27 = var1 <= 0.0;
  v16 = 0.0;
  if (!v27)
  {
    goto LABEL_37;
  }

LABEL_57:
  v29 = PLLogCommon();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    intervalCopy = v13;
    v233 = 2048;
    v234 = v13 + v16;
    _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "aggregateQueryRange=(%f, %f)", buf, 0x16u);
  }

LABEL_60:
  [(PLBatteryBreakdownService *)self setShowGizmoQualifier:[(PLBatteryBreakdownService *)self wasGizmoConnectedInRange:v18, v17]];
  interval = [(PLBatteryBreakdownService *)self energyEntriesWithRange:v8 withEntryTimeInterval:v13 withQueryType:v16, interval];
  v31 = 0x277D3F000uLL;
  v204 = v8;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = objc_opt_class();
    v228[0] = MEMORY[0x277D85DD0];
    v228[1] = 3221225472;
    v228[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke;
    v228[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v228[4] = v32;
    v33 = v228;
    if (qword_2811F64A0 != -1)
    {
      dispatch_once(&qword_2811F64A0, v33);
    }

    if (byte_2811F6412 == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntries=%@", interval];
      v34 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v35 logMessage:*&v34 fromFile:lastPathComponent fromFunction:v38 fromLineNumber:754];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        intervalCopy = v34;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = v8;
      v31 = 0x277D3F000uLL;
    }
  }

  v40 = [(PLBatteryBreakdownService *)self addForegroundAndBackgroundDurations:interval withRange:v8 withQueryType:v13, v16];

  [(PLBatteryBreakdownService *)self addNotificationValues:v40 withRange:v8 withQueryType:v13, v16];
  v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  if (v8 == 4)
  {
    v42 = [(PLBatteryBreakdownService *)self populateEnergyBucketKeysWithEntries:*&v41];
LABEL_69:

LABEL_70:
    v41 = *&v42;
    goto LABEL_71;
  }

  if (v8 >= 2)
  {
    v42 = [(PLBatteryBreakdownService *)self populateRootNodeEnergyKeysWithEnergyEntries:*&v41];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_70;
    }

    v117 = objc_opt_class();
    v227[0] = MEMORY[0x277D85DD0];
    v227[1] = 3221225472;
    v227[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1080;
    v227[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v227[4] = v117;
    v118 = v227;
    if (qword_2811F64A8 != -1)
    {
      dispatch_once(&qword_2811F64A8, v118);
    }

    if (byte_2811F6413 != 1)
    {
      goto LABEL_70;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"after populating root node energy keys: energyEntries=%@", v42];
    v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v119 = MEMORY[0x277D3F178];
    v120 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
    lastPathComponent2 = [v120 lastPathComponent];
    v122 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
    [v119 logMessage:*&v41 fromFile:lastPathComponent2 fromFunction:v122 fromLineNumber:784];

    v123 = PLLogCommon();
    if (!os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_206;
    }

    *buf = 138412290;
    intervalCopy = v41;
    goto LABEL_210;
  }

  if (v8 == 1)
  {
    v42 = [(PLBatteryBreakdownService *)self populateBLDKeysWithEnergyEntries:*&v41];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_70;
    }

    v196 = objc_opt_class();
    v226[0] = MEMORY[0x277D85DD0];
    v226[1] = 3221225472;
    v226[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1086;
    v226[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v226[4] = v196;
    v197 = v226;
    if (qword_2811F64B0 != -1)
    {
      dispatch_once(&qword_2811F64B0, v197);
    }

    if (byte_2811F6414 != 1)
    {
      goto LABEL_70;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"after populating BLD keys: energyEntries=%@", v42];
    v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v198 = MEMORY[0x277D3F178];
    v199 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
    lastPathComponent3 = [v199 lastPathComponent];
    v201 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
    [v198 logMessage:*&v41 fromFile:lastPathComponent3 fromFunction:v201 fromLineNumber:788];

    v123 = PLLogCommon();
    if (!os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_206;
    }

    *buf = 138412290;
    intervalCopy = v41;
LABEL_210:
    _os_log_debug_impl(&dword_21A4C6000, v123, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
LABEL_206:

    v8 = v8;
    v31 = 0x277D3F000;
    goto LABEL_69;
  }

LABEL_71:
  v43 = [(PLBatteryBreakdownService *)self applyStaticNameTransformationsWithEnergyEntries:*&v41];

  if ([*(v31 + 384) debugEnabled])
  {
    v44 = objc_opt_class();
    v225[0] = MEMORY[0x277D85DD0];
    v225[1] = 3221225472;
    v225[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1092;
    v225[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v225[4] = v44;
    v45 = v225;
    if (qword_2811F64B8 != -1)
    {
      dispatch_once(&qword_2811F64B8, v45);
    }

    if (byte_2811F6415 == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"after static transformations: energyEntries=%@", v43];
      v46 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v47 = MEMORY[0x277D3F178];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent4 = [v48 lastPathComponent];
      v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v47 logMessage:*&v46 fromFile:lastPathComponent4 fromFunction:v50 fromLineNumber:793];

      v51 = PLLogCommon();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        intervalCopy = v46;
        _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = v8;
      v31 = 0x277D3F000uLL;
    }
  }

  v52 = [(PLBatteryBreakdownService *)self combineDuplicatesWithEnergyEntries:v43];

  if ([*(v31 + 384) debugEnabled])
  {
    v53 = objc_opt_class();
    v224[0] = MEMORY[0x277D85DD0];
    v224[1] = 3221225472;
    v224[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1098;
    v224[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v224[4] = v53;
    v54 = v224;
    if (qword_2811F64C0 != -1)
    {
      dispatch_once(&qword_2811F64C0, v54);
    }

    if (byte_2811F6416 == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"after combining duplicates: energyEntries=%@", v52];
      v55 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v56 = MEMORY[0x277D3F178];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent5 = [v57 lastPathComponent];
      v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v56 logMessage:*&v55 fromFile:lastPathComponent5 fromFunction:v59 fromLineNumber:797];

      v60 = PLLogCommon();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        intervalCopy = v55;
        _os_log_debug_impl(&dword_21A4C6000, v60, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = v8;
      v31 = 0x277D3F000uLL;
    }
  }

  v61 = [(PLBatteryBreakdownService *)self adjustExtensionBackgroundTimeWithEnergyEntries:v52];

  if ([*(v31 + 384) debugEnabled])
  {
    v62 = objc_opt_class();
    v223[0] = MEMORY[0x277D85DD0];
    v223[1] = 3221225472;
    v223[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1104;
    v223[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v223[4] = v62;
    v63 = v223;
    if (qword_2811F64C8 != -1)
    {
      dispatch_once(&qword_2811F64C8, v63);
    }

    if (byte_2811F6417 == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"After background time adjustment to extensions: energyEntries=%@", v61];
      v64 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v65 = MEMORY[0x277D3F178];
      v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent6 = [v66 lastPathComponent];
      v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v65 logMessage:*&v64 fromFile:lastPathComponent6 fromFunction:v68 fromLineNumber:801];

      v69 = PLLogCommon();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        intervalCopy = v64;
        _os_log_debug_impl(&dword_21A4C6000, v69, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = v8;
      v31 = 0x277D3F000uLL;
    }
  }

  v70 = [(PLBatteryBreakdownService *)self applyDynamicNameTransformationsWithEnergyEntries:v61];

  if ([*(v31 + 384) debugEnabled])
  {
    v71 = objc_opt_class();
    v222[0] = MEMORY[0x277D85DD0];
    v222[1] = 3221225472;
    v222[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1110;
    v222[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v222[4] = v71;
    v72 = v222;
    if (qword_2811F64D0 != -1)
    {
      dispatch_once(&qword_2811F64D0, v72);
    }

    if (byte_2811F6418 == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"after dynamic transformations: energyEntries=%@", v70];
      v73 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v74 = MEMORY[0x277D3F178];
      v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent7 = [v75 lastPathComponent];
      v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v74 logMessage:*&v73 fromFile:lastPathComponent7 fromFunction:v77 fromLineNumber:806];

      v78 = PLLogCommon();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        intervalCopy = v73;
        _os_log_debug_impl(&dword_21A4C6000, v78, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = v8;
      v31 = 0x277D3F000uLL;
    }
  }

  v79 = [(PLBatteryBreakdownService *)self combineDuplicatesWithEnergyEntries:v70];

  if ([*(v31 + 384) debugEnabled])
  {
    v80 = objc_opt_class();
    v221[0] = MEMORY[0x277D85DD0];
    v221[1] = 3221225472;
    v221[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1116;
    v221[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v221[4] = v80;
    v81 = v221;
    if (qword_2811F64D8 != -1)
    {
      dispatch_once(&qword_2811F64D8, v81);
    }

    if (byte_2811F6419 == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"after combining duplicates: energyEntries=%@", v79];
      v82 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v83 = MEMORY[0x277D3F178];
      v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent8 = [v84 lastPathComponent];
      v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v83 logMessage:*&v82 fromFile:lastPathComponent8 fromFunction:v86 fromLineNumber:810];

      v87 = PLLogCommon();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        intervalCopy = v82;
        _os_log_debug_impl(&dword_21A4C6000, v87, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = v8;
      v31 = 0x277D3F000uLL;
    }
  }

  if (v8 != 4)
  {
    v88 = [(PLBatteryBreakdownService *)self adjustForegroundTimesWithEnergyEntries:v79];

    v79 = [(PLBatteryBreakdownService *)self adjustBackgroundTimesWithEnergyEntries:v88];
  }

  v89 = [(PLBatteryBreakdownService *)self determineDisplayNamesWithEnergyEntries:v79];

  if ([*(v31 + 384) debugEnabled])
  {
    v90 = objc_opt_class();
    v220[0] = MEMORY[0x277D85DD0];
    v220[1] = 3221225472;
    v220[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1119;
    v220[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v220[4] = v90;
    v91 = v220;
    if (qword_2811F64E0 != -1)
    {
      dispatch_once(&qword_2811F64E0, v91);
    }

    if (byte_2811F641A == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"after determining display names: energyEntries=%@", v89];
      v92 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v93 = MEMORY[0x277D3F178];
      v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent9 = [v94 lastPathComponent];
      v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v93 logMessage:*&v92 fromFile:lastPathComponent9 fromFunction:v96 fromLineNumber:820];

      v97 = PLLogCommon();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        intervalCopy = v92;
        _os_log_debug_impl(&dword_21A4C6000, v97, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = v8;
      v31 = 0x277D3F000uLL;
    }
  }

  v98 = [(PLBatteryBreakdownService *)self filterWithEnergyEntries:v89 withQueryType:v8];

  if ([*(v31 + 384) debugEnabled])
  {
    v99 = objc_opt_class();
    v219[0] = MEMORY[0x277D85DD0];
    v219[1] = 3221225472;
    v219[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1125;
    v219[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v219[4] = v99;
    v100 = v219;
    if (qword_2811F64E8 != -1)
    {
      dispatch_once(&qword_2811F64E8, v100);
    }

    if (byte_2811F641B == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"after filtering based on query type: energyEntries=%@", v98];
      v101 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v102 = MEMORY[0x277D3F178];
      v103 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent10 = [v103 lastPathComponent];
      v105 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v102 logMessage:*&v101 fromFile:lastPathComponent10 fromFunction:v105 fromLineNumber:825];

      v106 = PLLogCommon();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        intervalCopy = v101;
        _os_log_debug_impl(&dword_21A4C6000, v106, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = v8;
      v31 = 0x277D3F000uLL;
    }
  }

  v107 = [(PLBatteryBreakdownService *)self filterEnergyEntriesBasedOnTime:v98 withQueryType:v8];

  v108 = [(PLBatteryBreakdownService *)self removeNodesNotToShowInInternalUI:v107 withQueryType:v8];

  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  v109 = v108;
  v110 = [v109 countByEnumeratingWithState:&v215 objects:v230 count:16];
  if (v110)
  {
    v111 = v110;
    v112 = *v216;
    v113 = 0.0;
    do
    {
      for (i = 0; i != v111; ++i)
      {
        if (*v216 != v112)
        {
          objc_enumerationMutation(v109);
        }

        v115 = [*(*(&v215 + 1) + 8 * i) objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v115 doubleValue];
        v113 = v113 + v116;
      }

      v111 = [v109 countByEnumeratingWithState:&v215 objects:v230 count:16];
    }

    while (v111);
  }

  else
  {
    v113 = 0.0;
  }

  if ([*(v31 + 384) debugEnabled])
  {
    v124 = objc_opt_class();
    v214[0] = MEMORY[0x277D85DD0];
    v214[1] = 3221225472;
    v214[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1134;
    v214[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v214[4] = v124;
    v125 = v214;
    if (qword_2811F64F0 != -1)
    {
      dispatch_once(&qword_2811F64F0, v125);
    }

    if (byte_2811F641C == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"totalEnergySum=%f", *&v113];
      v126 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v127 = MEMORY[0x277D3F178];
      v128 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent11 = [v128 lastPathComponent];
      v130 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v127 logMessage:*&v126 fromFile:lastPathComponent11 fromFunction:v130 fromLineNumber:837];

      v131 = PLLogCommon();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        intervalCopy = v126;
        _os_log_debug_impl(&dword_21A4C6000, v131, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v17 == 86400.0)
  {
    [(PLBatteryBreakdownService *)self setTotalEnergyDay:v113];
  }

  else if (v17 == 604800.0)
  {
    [(PLBatteryBreakdownService *)self setTotalEnergyWeek:v113];
  }

  selfCopy = self;
  v212 = 0u;
  v213 = 0u;
  v211 = 0u;
  v210 = 0u;
  obj = v109;
  v132 = [obj countByEnumeratingWithState:&v210 objects:v229 count:16];
  if (v132)
  {
    v133 = v132;
    LODWORD(v134) = 0;
    v135 = 0;
    v136 = *v211;
    do
    {
      for (j = 0; j != v133; ++j)
      {
        if (*v211 != v136)
        {
          objc_enumerationMutation(obj);
        }

        v138 = *(*(&v210 + 1) + 8 * j);
        v139 = [(PLBatteryBreakdownService *)selfCopy qualifiersWithEnergyEntry:v138 bucketSize:v12 andTotalEnergy:v113];
        [v138 setObject:v139 forKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];

        v140 = [v138 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v140 doubleValue];
        v142 = v141;

        v143 = [MEMORY[0x277CCABB0] numberWithDouble:v142];
        [v138 setObject:v143 forKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];

        v144 = llround(v142 * 100.0 / v113);
        if (v142 >= 2.0)
        {
          v145 = v144;
        }

        else
        {
          v145 = 0;
        }

        v146 = [MEMORY[0x277CCABB0] numberWithInt:v145];
        [v138 setObject:v146 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

        v147 = v135;
        if (!v135 || ([v135 objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"], v148 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v148, "doubleValue"), v150 = v149, v148, v142 > v150))
        {
          v135 = v138;
        }

        v134 = (v145 + v134);
      }

      v133 = [obj countByEnumeratingWithState:&v210 objects:v229 count:16];
    }

    while (v133);
  }

  else
  {
    v134 = 0;
    v135 = 0;
  }

  v151 = obj;

  v152 = v204;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v153 = objc_opt_class();
    v209[0] = MEMORY[0x277D85DD0];
    v209[1] = 3221225472;
    v209[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1146;
    v209[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v209[4] = v153;
    v154 = v209;
    if (qword_2811F64F8 != -1)
    {
      dispatch_once(&qword_2811F64F8, v154);
    }

    if (byte_2811F641D == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"totalEnergyPercentSum=%i", v134];
      v155 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v156 = MEMORY[0x277D3F178];
      v157 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent12 = [v157 lastPathComponent];
      v159 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v156 logMessage:*&v155 fromFile:lastPathComponent12 fromFunction:v159 fromLineNumber:869];

      v160 = PLLogCommon();
      if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        intervalCopy = v155;
        _os_log_debug_impl(&dword_21A4C6000, v160, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v152 = v204;
      v151 = obj;
    }
  }

  if (v134 != 100 && v134 >= 1)
  {
    v161 = MEMORY[0x277CCABB0];
    v162 = [v135 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v162 doubleValue];
    v134 = [v161 numberWithDouble:v163 + 100.0 - v134];
    [v135 setObject:v134 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  }

  [(PLBatteryBreakdownService *)selfCopy computeTotalForegroundDuration:v151];
  v166 = v165;
  [(PLBatteryBreakdownService *)selfCopy computeTotalBackgroundDuration:v151];
  v168 = v167;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v170 = [MEMORY[0x277CCABB0] numberWithDouble:v166];
  [dictionary setObject:v170 forKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];

  v171 = [MEMORY[0x277CCABB0] numberWithDouble:v168];
  [dictionary setObject:v171 forKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];

  v172 = [MEMORY[0x277CCABB0] numberWithDouble:v113];
  [dictionary setObject:v172 forKeyedSubscript:@"PLBatteryUITotalEnergyKey"];

  if (v152)
  {
    [MEMORY[0x277D3F258] defaultBatteryEnergyCapacity];
    v173 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.00f%% of Battery", v113 * 100.0 / v173];
    [dictionary setObject:v173 forKeyedSubscript:@"PLBatteryUIBatteryCyclesKey"];
  }

  [v151 enumerateObjectsUsingBlock:&__block_literal_global_1169];
  v175 = [(PLBatteryBreakdownService *)selfCopy shouldShowBatteryBreakdownWithTotalSumEnergy:v113 withtotalSumEnergyRatioCutOff:offCopy];
  if (v152 > 1 || v175 || v166 >= 60.0 || v168 >= 60.0 || [(PLOperator *)selfCopy isDebugEnabled])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v176 = objc_opt_class();
      v208[0] = MEMORY[0x277D85DD0];
      v208[1] = 3221225472;
      v208[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_2;
      v208[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v208[4] = v176;
      v177 = v208;
      if (qword_2811F6500 != -1)
      {
        dispatch_once(&qword_2811F6500, v177);
      }

      if (byte_2811F641E == 1)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"displaying battery breakdown"];
        v178 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v179 = MEMORY[0x277D3F178];
        v180 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent13 = [v180 lastPathComponent];
        v182 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
        [v179 logMessage:*&v178 fromFile:lastPathComponent13 fromFunction:v182 fromLineNumber:904];

        v183 = PLLogCommon();
        if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          intervalCopy = v178;
          _os_log_debug_impl(&dword_21A4C6000, v183, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v151 = obj;
      }
    }

    [dictionary setObject:&unk_282C12B88 forKeyedSubscript:@"PLBatteryUIErrorCodeKey"];
    v184 = dictionary;
    v185 = v151;
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v186 = objc_opt_class();
      v207[0] = MEMORY[0x277D85DD0];
      v207[1] = 3221225472;
      v207[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1186;
      v207[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v207[4] = v186;
      v187 = v207;
      if (qword_2811F6508 != -1)
      {
        dispatch_once(&qword_2811F6508, v187);
      }

      if (byte_2811F641F == 1)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"not enough energy consumed"];
        v188 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v189 = MEMORY[0x277D3F178];
        v190 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent14 = [v190 lastPathComponent];
        v192 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
        [v189 logMessage:*&v188 fromFile:lastPathComponent14 fromFunction:v192 fromLineNumber:909];

        v193 = PLLogCommon();
        if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          intervalCopy = v188;
          _os_log_debug_impl(&dword_21A4C6000, v193, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v151 = obj;
      }
    }

    [dictionary setObject:&unk_282C12BA0 forKeyedSubscript:@"PLBatteryUIErrorCodeKey"];
    v185 = MEMORY[0x277CBEBF8];
    v184 = dictionary;
  }

  [v184 setObject:v185 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v194 = dictionary;

  objc_autoreleasePoolPop(context);

  return v194;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6412 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1080(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6413 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1086(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6414 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1092(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6415 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1098(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6416 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1104(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6417 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1110(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6418 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1116(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6419 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1119(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F641A = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1125(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F641B = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1134(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F641C = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1146(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F641D = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F641E = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1186(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F641F = result;
  return result;
}

- (id)nonNullValue:(id)value withKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = [valueCopy objectForKeyedSubscript:keyCopy];

  if (v7)
  {
    v8 = [valueCopy objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v8 = &stru_282B650A0;
  }

  return v8;
}

- (id)suggestionsWithEnergyEntries:(id)entries
{
  v60 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  array = [MEMORY[0x277CBEB18] array];
  v6 = objc_opt_new();
  v51 = 0.0;
  v7 = 0x277CBE000;
  if ([(PLBatteryBreakdownService *)self shouldSuggestAutoLockWithEnergyEntries:entriesCopy andSavedEnergyPercent:&v51])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v8;
      if (qword_2811F6510 != -1)
      {
        dispatch_once(&qword_2811F6510, block);
      }

      if (byte_2811F6420 == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"suggesting autolock"];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService suggestionsWithEnergyEntries:]"];
        [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:934];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v59 = v9;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v7 = 0x277CBE000uLL;
      }
    }

    v56[0] = @"PLBatteryUISuggestionTypeKey";
    v56[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v57[0] = &unk_282C12BA0;
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v51];
    v57[1] = v15;
    v16 = [*(v7 + 2752) dictionaryWithObjects:v57 forKeys:v56 count:2];
    [array addObject:v16];

    ADClientSetValueForScalarKey();
    [v6 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v6 setObject:@"autoLock" forKeyedSubscript:@"type"];
    v48[5] = MEMORY[0x277D85DD0];
    v48[6] = 3221225472;
    v48[7] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_1222;
    v48[8] = &unk_278259D58;
    v49 = v6;
    AnalyticsSendEventLazy();
  }

  if ([(PLBatteryBreakdownService *)self shouldSuggestAutoBrightnessWithEnergyEntries:entriesCopy andSavedEnergyPercent:&v51])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2;
      v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v48[4] = v17;
      if (qword_2811F6518 != -1)
      {
        dispatch_once(&qword_2811F6518, v48);
      }

      if (byte_2811F6421 == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"suggesting autobrightness"];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent2 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService suggestionsWithEnergyEntries:]"];
        [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:947];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v59 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v7 = 0x277CBE000uLL;
      }
    }

    v54[0] = @"PLBatteryUISuggestionTypeKey";
    v54[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v55[0] = &unk_282C12B88;
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:v51];
    v55[1] = v24;
    v25 = [*(v7 + 2752) dictionaryWithObjects:v55 forKeys:v54 count:2];
    [array addObject:v25];

    ADClientSetValueForScalarKey();
    [v6 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v6 setObject:@"autoBrightness" forKeyedSubscript:@"type"];
    v46[5] = MEMORY[0x277D85DD0];
    v46[6] = 3221225472;
    v46[7] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_1235;
    v46[8] = &unk_278259D58;
    v47 = v6;
    AnalyticsSendEventLazy();
  }

  if ([(PLBatteryBreakdownService *)self shouldSuggestReduceBrightnessWithEnergyEntries:entriesCopy andSavedEnergyPercent:&v51])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v26 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2_1238;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v26;
      if (qword_2811F6520 != -1)
      {
        dispatch_once(&qword_2811F6520, v46);
      }

      if (byte_2811F6422 == 1)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"suggesting reduce brightness"];
        v28 = MEMORY[0x277D3F178];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent3 = [v29 lastPathComponent];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService suggestionsWithEnergyEntries:]"];
        [v28 logMessage:v27 fromFile:lastPathComponent3 fromFunction:v31 fromLineNumber:960];

        v32 = PLLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v59 = v27;
          _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v7 = 0x277CBE000uLL;
      }
    }

    v52[0] = @"PLBatteryUISuggestionTypeKey";
    v52[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v53[0] = &unk_282C12BB8;
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:v51];
    v53[1] = v33;
    v34 = [*(v7 + 2752) dictionaryWithObjects:v53 forKeys:v52 count:2];
    [array addObject:v34];

    ADClientSetValueForScalarKey();
    [v6 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v6 setObject:@"reduceBrightness" forKeyedSubscript:@"type"];
    v44[5] = MEMORY[0x277D85DD0];
    v44[6] = 3221225472;
    v44[7] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_1250;
    v44[8] = &unk_278259D58;
    v45 = v6;
    AnalyticsSendEventLazy();
  }

  if ([(PLBatteryBreakdownService *)self shouldShowUpgradeInsightWithQueryType:0])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v35 = objc_opt_class();
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2_1253;
      v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v44[4] = v35;
      if (qword_2811F6528 != -1)
      {
        dispatch_once(&qword_2811F6528, v44);
      }

      if (byte_2811F6423 == 1)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"suggesting high activity after upgrade"];
        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent4 = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService suggestionsWithEnergyEntries:]"];
        [v37 logMessage:v36 fromFile:lastPathComponent4 fromFunction:v40 fromLineNumber:1037];

        v41 = PLLogCommon();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v59 = v36;
          _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    ADClientSetValueForScalarKey();
    [v6 setObject:@"insight" forKeyedSubscript:@"category"];
    [v6 setObject:@"upgradeUsage" forKeyedSubscript:@"type"];
    v43 = v6;
    AnalyticsSendEventLazy();
    [array addObject:&unk_282C192F0];
  }

  return array;
}

void *__58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6420 = result;
  return result;
}

void *__58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6421 = result;
  return result;
}

void *__58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2_1238(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6422 = result;
  return result;
}

void *__58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2_1253(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6423 = result;
  return result;
}

- (BOOL)isBackgroundRefreshEnabled:(id)enabled
{
  enabledCopy = enabled;
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    bOOLValue = 1;
  }

  else
  {
    v7 = CFPreferencesCopyAppValue(@"KeepAppsUpToDateAppList", @"com.apple.mt");
    v8 = [v7 objectForKey:enabledCopy];
    v9 = v8;
    if (v8)
    {
      bOOLValue = [v8 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }
  }

  return bOOLValue;
}

- (BOOL)isBackgroundLocationUsageAlwaysEnabled:(id)enabled withLocationDict:(id)dict
{
  v4 = [dict objectForKeyedSubscript:enabled];
  v5 = [MEMORY[0x277CBFC10] entityAuthorizationForLocationDictionary:v4] == 4;

  return v5;
}

- (id)shouldSuggestBackgroundCPUWithEnergyEntries:(id)entries
{
  v44 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v5 = 160;
  if (self->_totalEnergyDay == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_opt_class();
    v8 = [&unk_282C15900 objectAtIndexedSubscript:14];
    v9 = [&unk_282C15918 objectAtIndexedSubscript:2];
    v10 = [v7 rootNodeQualificationNameWithQualificationName:v8 withRootNodeName:v9];

    v11 = v10;
    v34 = entriesCopy;
    v35 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = entriesCopy;
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          v18 = [&unk_282C15930 objectAtIndexedSubscript:2];
          v19 = [v17 objectForKeyedSubscript:v18];
          [v19 doubleValue];
          v21 = v20;

          if (v21 != 0.0)
          {
            v22 = [v17 objectForKeyedSubscript:v11];
            [v22 doubleValue];
            v24 = v23;

            if (v24 / v21 * 100.0 > 5.0)
            {
              v25 = v24 / *(&self->super.super.super.isa + v5) * 100.0;
              if (v25 > 5.0)
              {
                v41[0] = @"PLBatteryUISuggestionEnergyKey";
                v36 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
                v41[1] = @"PLBatteryUISuggestionPercentKey";
                v42[0] = v36;
                v26 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
                v42[1] = v26;
                [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
                v27 = v12;
                v28 = v11;
                v29 = v5;
                v31 = v30 = self;
                v32 = [v17 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                [v35 setObject:v31 forKeyedSubscript:v32];

                self = v30;
                v5 = v29;
                v11 = v28;
                v12 = v27;
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v14);
    }

    if ([v35 count])
    {
      v6 = v35;
    }

    else
    {
      v6 = 0;
    }

    entriesCopy = v34;
  }

  return v6;
}

- (id)shouldSuggestBackgroundLocationWithEnergyEntries:(id)entries
{
  v63 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if (self->_totalEnergyDay == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_opt_class();
    [&unk_282C15948 objectAtIndexedSubscript:2];
    v7 = v52 = self;
    v8 = [&unk_282C15960 objectAtIndexedSubscript:48];
    v55 = [v6 rootNodeQualificationNameWithQualificationName:v7 withRootNodeName:v8];

    selfCopy = self;
    v10 = objc_opt_class();
    v11 = [&unk_282C15978 objectAtIndexedSubscript:2];
    v12 = [&unk_282C15990 objectAtIndexedSubscript:12];
    v54 = [v10 rootNodeQualificationNameWithQualificationName:v11 withRootNodeName:v12];

    v13 = objc_opt_class();
    v14 = [&unk_282C159A8 objectAtIndexedSubscript:2];
    v15 = [&unk_282C159C0 objectAtIndexedSubscript:13];
    v53 = [v13 rootNodeQualificationNameWithQualificationName:v14 withRootNodeName:v15];

    v50 = entriesCopy;
    v51 = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v16 = entriesCopy;
    v17 = [v16 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v57;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v57 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v56 + 1) + 8 * i);
          v22 = [&unk_282C159D8 objectAtIndexedSubscript:48];
          v23 = [v21 objectForKeyedSubscript:v22];
          [v23 doubleValue];
          v25 = v24;

          v26 = [&unk_282C159F0 objectAtIndexedSubscript:12];
          v27 = [v21 objectForKeyedSubscript:v26];
          [v27 doubleValue];
          v29 = v25 + v28;

          v30 = [&unk_282C15A08 objectAtIndexedSubscript:13];
          v31 = [v21 objectForKeyedSubscript:v30];
          [v31 doubleValue];
          v33 = v29 + v32;

          if (v33 != 0.0)
          {
            v34 = [v21 objectForKeyedSubscript:v55];
            [v34 doubleValue];
            v36 = v35;

            v37 = [v21 objectForKeyedSubscript:v54];
            [v37 doubleValue];
            v39 = v36 + v38;

            v40 = [v21 objectForKeyedSubscript:v53];
            [v40 doubleValue];
            v42 = v39 + v41;

            v43 = v33 - v42;
            if (v33 - v42 < 0.0)
            {
              v43 = 0.0;
            }

            if (v43 / v33 * 100.0 > 33.0)
            {
              v44 = v43 / selfCopy->_totalEnergyDay * 100.0;
              if (v44 > 5.0)
              {
                v60[0] = @"PLBatteryUISuggestionEnergyKey";
                v45 = [MEMORY[0x277CCABB0] numberWithDouble:?];
                v60[1] = @"PLBatteryUISuggestionPercentKey";
                v61[0] = v45;
                v46 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
                v61[1] = v46;
                v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
                v48 = [v21 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                [v51 setObject:v47 forKeyedSubscript:v48];

                selfCopy = v52;
              }
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v18);
    }

    if ([v51 count])
    {
      v5 = v51;
    }

    else
    {
      v5 = 0;
    }

    entriesCopy = v50;
  }

  return v5;
}

- (BOOL)shouldSuggestAutoLockWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent
{
  v38 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  mEMORY[0x277D26298] = [MEMORY[0x277D26298] sharedConnection];
  v7 = [mEMORY[0x277D26298] effectiveValueForSetting:*MEMORY[0x277D25D70]];

  if ([v7 intValue] == 0x7FFFFFFF)
  {
    v8 = objc_opt_class();
    v9 = [&unk_282C15A20 objectAtIndexedSubscript:9];
    v10 = [&unk_282C15A38 objectAtIndexedSubscript:10];
    v11 = [v8 rootNodeQualificationNameWithQualificationName:v9 withRootNodeName:v10];

    v12 = objc_opt_class();
    v13 = [&unk_282C15A50 objectAtIndexedSubscript:9];
    v14 = [&unk_282C15A68 objectAtIndexedSubscript:56];
    v15 = [v12 rootNodeQualificationNameWithQualificationName:v13 withRootNodeName:v14];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = entriesCopy;
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    percentCopy = percent;
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      v20 = 0.0;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v33 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:v11];
          [v23 doubleValue];
          v25 = v24;
          v26 = [v22 objectForKeyedSubscript:v15];
          [v26 doubleValue];
          v20 = v20 + v25 + v27;
        }

        v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    else
    {
      v20 = 0.0;
    }

    [MEMORY[0x277D3F258] defaultBatteryEnergyCapacity];
    *percentCopy = v20 * 100.0 / v29;
    [MEMORY[0x277D3F258] defaultBatteryEnergyCapacity];
    v28 = v20 > v30 * 0.01;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)shouldSuggestAutoBrightnessWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent
{
  v45 = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogALSPowerSaved])
  {
    v6 = [MEMORY[0x277D3F180] objectForKey:@"BKEnableALS" forApplicationID:@"com.apple.backboardd" synchronize:1];
    v7 = v6;
    if (!v6 || ([v6 BOOLValue] & 1) != 0)
    {
      v8 = 0;
LABEL_21:

      return v8;
    }

    v9 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
    v10 = objc_msgSend_storage(self);
    v11 = [v10 entriesForKey:v9];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v38 = v9;
      percentCopy = percent;
      v15 = 0;
      v16 = *v41;
      v17 = 0.0;
      do
      {
        v18 = 0;
        v19 = v15;
        do
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v40 + 1) + 8 * v18);
          if (v19)
          {
            v21 = [v19 objectForKeyedSubscript:@"Power"];
            [v21 doubleValue];
            v23 = v22;

            entryDate = [v20 entryDate];
            entryDate2 = [v19 entryDate];
            [entryDate timeIntervalSinceDate:entryDate2];
            v27 = v26;

            v17 = v17 + v23 * (v27 / 3600.0);
          }

          v15 = v20;

          ++v18;
          v19 = v15;
        }

        while (v14 != v18);
        v14 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v14);

      if (!v15)
      {
        v9 = v38;
        percent = percentCopy;
        goto LABEL_20;
      }

      v28 = [v15 objectForKeyedSubscript:@"Power"];
      [v28 doubleValue];
      v30 = v29;

      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      entryDate3 = [v15 entryDate];
      [monotonicDate timeIntervalSinceDate:entryDate3];
      v34 = v33;

      v17 = v17 + v30 * (v34 / 3600.0);
      v9 = v38;
      percent = percentCopy;
    }

    else
    {
      v17 = 0.0;
      v15 = v12;
    }

LABEL_20:
    [MEMORY[0x277D3F258] defaultBatteryEnergyCapacity];
    *percent = v17 * 100.0 / v35;
    [MEMORY[0x277D3F258] defaultBatteryEnergyCapacity];
    v8 = v17 > v36 * 0.01;

    goto LABEL_21;
  }

  return 0;
}

- (BOOL)shouldSuggestReduceBrightnessWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent
{
  v27 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if ([MEMORY[0x277D3F258] isALSCurveHigherThanDefault])
  {
    percentCopy = percent;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = entriesCopy;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [&unk_282C15A80 objectAtIndexedSubscript:6];
          v14 = [v12 objectForKeyedSubscript:v13];
          [v14 doubleValue];
          v10 = v10 + v15;

          v16 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v16 doubleValue];
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
    }

    [MEMORY[0x277D3F258] defaultBatteryEnergyCapacity];
    *percentCopy = v10 * 100.0 / v18;
    [MEMORY[0x277D3F258] defaultBatteryEnergyCapacity];
    v17 = v10 > v19 * 0.05;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (double)getLastUpgradeTimestamp
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)getfirstEntryTimestampFromDb
{
  v3 = *MEMORY[0x277D3F5B8];
  v4 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AppRunTime"];
  v5 = [MEMORY[0x277D3F128] entryKeyForType:v3 andName:*MEMORY[0x277D3F318]];
  v6 = [MEMORY[0x277D3F128] entryKeyForType:v3 andName:*MEMORY[0x277D3F2F0]];
  v7 = objc_msgSend_storage(self);
  v8 = [v7 entryForKey:v4 withID:1];

  v9 = objc_msgSend_storage(self);
  v10 = [v9 entryForKey:v5 withID:1];

  v11 = objc_msgSend_storage(self);
  v12 = [v11 entryForKey:v6 withID:1];

  if (v8)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v12 == 0)
  {
    v23 = 9.22337204e18;
  }

  else
  {
    v15 = [v8 objectForKeyedSubscript:@"timestamp"];
    [v15 doubleValue];
    v17 = v16;
    v18 = [v10 objectForKeyedSubscript:@"timestamp"];
    [v18 doubleValue];
    v20 = fmax(v17, v19);
    v21 = [v12 objectForKeyedSubscript:@"timestamp"];
    [v21 doubleValue];
    v23 = fmax(v20, v22);
  }

  return v23;
}

- (id)getUsageDataWithStartTime:(double)time withMidTime:(double)midTime withEndTime:(id)endTime
{
  v63 = *MEMORY[0x277D85DE8];
  endTimeCopy = endTime;
  v9 = COERCE_DOUBLE(objc_alloc_init(MEMORY[0x277CBEB38]));
  [endTimeCopy timeIntervalSince1970];
  v53 = v10;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [endTimeCopy timeIntervalSince1970];
  v14 = v13 - midTime;
  [MEMORY[0x277D3F258] containerPath];
  v15 = _CFPreferencesCopyValueWithContainer();
  v16 = v15;
  if (v15)
  {
    [v15 doubleValue];
    v18 = v17;
  }

  else
  {
    v18 = 86400.0;
  }

  midTimeCopy = midTime;
  if (v14 <= v18)
  {
    [endTimeCopy timeIntervalSince1970];
    v36 = v35;
    v37 = midTime + -86400.0;
    v19 = 0.0;
    timeCopy = time;
    v39 = v37 <= time;
    v28 = 0.0;
    v25 = 0.0;
    v34 = 0.0;
    v31 = 0.0;
    if (!v39)
    {
      v40 = timeCopy;
      do
      {
        v36 = v36 + -86400.0;
        v41 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:0 withDataRange:v37 withEntryTimeInterval:v36 - v37 withQueryType:0.0, 0.0, 3600.0];
        v42 = [v41 objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
        [v42 doubleValue];
        v31 = v31 + v43;

        v44 = [v41 objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
        [v44 doubleValue];
        v34 = v34 + v45;

        v19 = v19 + v36 - v37;
        v37 = v37 + -86400.0;
      }

      while (v37 > v40);
      v25 = 0.0;
      v28 = 0.0;
    }
  }

  else
  {
    v19 = midTime - time;
    [endTimeCopy timeIntervalSince1970];
    v21 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:0 withDataRange:midTime withEntryTimeInterval:v20 - midTime withQueryType:0.0, 0.0, 3600.0];
    v22 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:0 withDataRange:time withEntryTimeInterval:midTime - time withQueryType:0.0, 0.0, 3600.0];
    v23 = [v21 objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
    [v23 doubleValue];
    v25 = v24;

    v26 = [v21 objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
    [v26 doubleValue];
    v28 = v27;

    v29 = [v22 objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
    [v29 doubleValue];
    v31 = v30;

    v32 = [v22 objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
    [v32 doubleValue];
    v34 = v33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v56 = v25;
    v57 = 2048;
    v58 = v28;
    v59 = 2048;
    v60 = v31;
    v61 = 2048;
    v62 = v34;
    _os_log_impl(&dword_21A4C6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "afterUpgradeTotalEnergy: %f afterUpgradeDataTotalForeGroundTime: %f beforeUpgradeDataTotalEnergy: %f beforeUpgradeDataTotalForeGroundTime: %f", buf, 0x2Au);
  }

  v46 = v28;
  v47 = v53 - midTimeCopy;
  if (v19 == 0.0)
  {
    [v11 setObject:0 forKeyedSubscript:@"AvgPower"];
    [v11 setObject:0 forKeyedSubscript:@"AvgForegroundTime"];
  }

  else
  {
    v48 = [MEMORY[0x277CCABB0] numberWithDouble:v31 / v19];
    [v11 setObject:v48 forKeyedSubscript:@"AvgPower"];

    v49 = [MEMORY[0x277CCABB0] numberWithDouble:v34 / v19];
    [v11 setObject:v49 forKeyedSubscript:@"AvgForegroundTime"];
  }

  if (v47 == 0.0)
  {
    [v12 setObject:0 forKeyedSubscript:@"AvgPower"];
    [v12 setObject:0 forKeyedSubscript:@"AvgForegroundTime"];
  }

  else
  {
    v50 = [MEMORY[0x277CCABB0] numberWithDouble:v25 / v47];
    [v12 setObject:v50 forKeyedSubscript:@"AvgPower"];

    v51 = [MEMORY[0x277CCABB0] numberWithDouble:v46 / v47];
    [v12 setObject:v51 forKeyedSubscript:@"AvgForegroundTime"];
  }

  [*&v9 setObject:v11 forKeyedSubscript:@"beforeUpgradeData"];
  [*&v9 setObject:v12 forKeyedSubscript:@"afterUpgradeData"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = v9;
    _os_log_impl(&dword_21A4C6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "-----Usage data--- %@", buf, 0xCu);
  }

  return *&v9;
}

- (id)getUpgradeDataWithLastUpgradeTimestamp:(double)timestamp withFirstEntryTimestampFromDB:(double)b withNow:(id)now withBeforeUpgrade:(BOOL)upgrade withRange:(_PLTimeIntervalRange)range
{
  var1 = range.var1;
  var0 = range.var0;
  upgradeCopy = upgrade;
  nowCopy = now;
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (upgradeCopy && (([nowCopy timeIntervalSince1970], v16 = v15 - timestamp, objc_msgSend(MEMORY[0x277D3F258], "containerPath"), v17 = _CFPreferencesCopyValueWithContainer(), (v18 = v17) == 0) ? (v20 = 86400.0) : (objc_msgSend(v17, "doubleValue"), v20 = v19), v18, v16 <= v20))
  {
    [nowCopy timeIntervalSince1970];
    v32 = timestamp + -86400.0;
    v27 = 0.0;
    v24 = 0.0;
    if (v32 > b)
    {
      v33 = v31;
      do
      {
        v33 = v33 + -86400.0;
        v34 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:0 withDataRange:v32 withEntryTimeInterval:v33 - v32 withQueryType:0.0, 0.0, 3600.0];
        v35 = [v34 objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
        [v35 doubleValue];
        v37 = v24 + v36;

        v38 = [v34 objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
        [v38 doubleValue];
        v24 = v37 + v39;

        v32 = v32 + -86400.0;
      }

      while (v32 > b);
    }
  }

  else
  {
    v21 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:0 withDataRange:var0 withEntryTimeInterval:var1 withQueryType:0.0, 0.0, 3600.0];
    v22 = [v21 objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
    [v22 doubleValue];
    v24 = v23;

    v25 = [v21 objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
    [v25 doubleValue];
    v27 = v26;
  }

  v28 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
  [v14 setObject:v28 forKey:@"TotalEnergy"];

  v29 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  [v14 setObject:v29 forKey:@"TotalForeGroundTime"];

  return v14;
}

- (BOOL)shouldShowUpgradeInsightWithQueryType:(int)type
{
  v68 = *MEMORY[0x277D85DE8];
  [(PLBatteryBreakdownService *)self getLastUpgradeTimestamp];
  if (v4 != 0.0)
  {
    v6 = v4;
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [monotonicDate timeIntervalSince1970];
    v9 = v8 - v6;
    [MEMORY[0x277D3F258] containerPath];
    v10 = _CFPreferencesCopyValueWithContainer();
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
      v13 = v12;
    }

    else
    {
      v13 = 864000.0;
    }

    if (v9 >= v13 || (([MEMORY[0x277D3F258] containerPath], v14 = _CFPreferencesCopyValueWithContainer(), (v15 = v14) == 0) ? (v17 = 86400.0) : (objc_msgSend(v14, "doubleValue"), v17 = v16), v15, v9 <= v17))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v66) = 0;
        v25 = MEMORY[0x277D86220];
        v26 = "After upgrade time criteria not satisfied";
LABEL_16:
        _os_log_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEFAULT, v26, &v66, 2u);
      }
    }

    else
    {
      [(PLBatteryBreakdownService *)self getfirstEntryTimestampFromDb];
      v19 = v18;
      v20 = v6 - v18;
      [MEMORY[0x277D3F258] containerPath];
      v21 = _CFPreferencesCopyValueWithContainer();
      v22 = v21;
      if (v21)
      {
        [v21 doubleValue];
        v24 = v23;
      }

      else
      {
        v24 = 259200.0;
      }

      if (v20 > v24)
      {
        [MEMORY[0x277D3F258] containerPath];
        v28 = _CFPreferencesCopyValueWithContainer();
        v29 = v28;
        if (v28)
        {
          [v28 doubleValue];
          v31 = v30;
        }

        else
        {
          v31 = 864000.0;
        }

        if (v20 >= v31)
        {
          [MEMORY[0x277D3F258] containerPath];
          v32 = _CFPreferencesCopyValueWithContainer();
          v33 = v32;
          if (v32)
          {
            [v32 doubleValue];
            v35 = v34;
          }

          else
          {
            v35 = 864000.0;
          }

          v19 = v6 - v35;
        }

        v36 = [(PLBatteryBreakdownService *)self getUsageDataWithStartTime:monotonicDate withMidTime:v19 withEndTime:v6];
        v37 = [v36 objectForKeyedSubscript:@"beforeUpgradeData"];
        v38 = [v36 objectForKeyedSubscript:@"afterUpgradeData"];
        v39 = [v37 objectForKeyedSubscript:@"AvgPower"];
        [v39 doubleValue];
        v41 = v40;

        [MEMORY[0x277D3F058] defaultBatteryEnergyCapacity];
        v43 = v41 * 86400.0 / v42;
        [MEMORY[0x277D3F258] containerPath];
        v44 = _CFPreferencesCopyValueWithContainer();
        v45 = v44;
        if (v44)
        {
          [v44 doubleValue];
          v47 = v46;
        }

        else
        {
          v47 = 0.3;
        }

        if (v43 >= v47)
        {
          v48 = [v38 objectForKeyedSubscript:@"AvgPower"];
          [v48 doubleValue];
          v50 = v49;

          v51 = [v38 objectForKeyedSubscript:@"AvgForegroundTime"];
          [v51 doubleValue];
          v53 = v52;

          [MEMORY[0x277D3F258] containerPath];
          v54 = _CFPreferencesCopyValueWithContainer();
          v55 = v54;
          v56 = 1.3;
          v57 = 1.3;
          if (v54)
          {
            [v54 doubleValue];
            v57 = v58;
          }

          v59 = v41 * v57;
          v60 = [v37 objectForKeyedSubscript:@"AvgForegroundTime"];
          [v60 doubleValue];
          v62 = v61;
          [MEMORY[0x277D3F258] containerPath];
          v63 = _CFPreferencesCopyValueWithContainer();
          v64 = v63;
          if (v63)
          {
            [v63 doubleValue];
            v56 = v65;
          }

          v5 = v53 >= v62 * v56 && v50 >= v59;
        }

        else
        {
          v5 = 0;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v66 = 134217984;
            v67 = v43 * 100.0;
            _os_log_impl(&dword_21A4C6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Drain prior to upgrade: %f", &v66, 0xCu);
            v5 = 0;
          }
        }

        goto LABEL_18;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v66) = 0;
        v25 = MEMORY[0x277D86220];
        v26 = "There is not enough data pre-upgrade";
        goto LABEL_16;
      }
    }

    v5 = 0;
LABEL_18:

    return v5;
  }

  v5 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v66) = 0;
    _os_log_impl(&dword_21A4C6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Last upgrade timestamp not available", &v66, 2u);
    return 0;
  }

  return v5;
}

- (id)energyEntriesWithRange:(_PLTimeIntervalRange)range withEntryTimeInterval:(double)interval withQueryType:(int)type
{
  var1 = range.var1;
  var0 = range.var0;
  v195 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    v191[0] = MEMORY[0x277D85DD0];
    v191[1] = 3221225472;
    v191[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke;
    v191[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v191[4] = v9;
    if (qword_2811F6530 != -1)
    {
      dispatch_once(&qword_2811F6530, v191);
    }

    if (byte_2811F6424 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"entryTimeInterval=%f", *&interval];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:1476];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v193 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16 = *MEMORY[0x277D3F5B8];
  v17 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F318]];
  v18 = [MEMORY[0x277D3F128] entryKeyForType:v16 andName:*MEMORY[0x277D3F2F0]];
  v19 = MEMORY[0x277CCACA8];
  v20 = *MEMORY[0x277D3F300];
  entryKey = [MEMORY[0x277D3F0C8] entryKey];
  whereValidName = [objc_opt_class() whereValidName];
  v23 = [v19 stringWithFormat:@"%@ IN (SELECT ID FROM '%@' WHERE %@)", v20, entryKey, whereValidName];

  v24 = var0 + var1;
  v162 = v23;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"timestamp>%f AND timestamp<%f AND timeInterval=%f AND (%@)", *&var0, *&v24, *&interval, v23];
  v177 = v17;
  v164 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM '%@' WHERE (%@)", v17, v25];;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v26 = objc_opt_class();
    v190[0] = MEMORY[0x277D85DD0];
    v190[1] = 3221225472;
    v190[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1528;
    v190[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v190[4] = v26;
    if (qword_2811F6538 != -1)
    {
      dispatch_once(&qword_2811F6538, v190);
    }

    if (byte_2811F6425 == 1)
    {
      v164 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateRootNodeEnergyQuery=%@", v164];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent2 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v28 logMessage:v164 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:1489];

      v32 = PLLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v193 = v164;
        _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v33 = objc_msgSend_storage(self);
  v163 = [v33 entriesForKey:v177 withQuery:v164];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v34 = objc_opt_class();
    v189[0] = MEMORY[0x277D85DD0];
    v189[1] = 3221225472;
    v189[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1534;
    v189[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v189[4] = v34;
    if (qword_2811F6540 != -1)
    {
      dispatch_once(&qword_2811F6540, v189);
    }

    if (byte_2811F6426 == 1)
    {
      v163 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateRootNodeEnergyEntries=%@", v163];
      v36 = MEMORY[0x277D3F178];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent3 = [v37 lastPathComponent];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v36 logMessage:v163 fromFile:lastPathComponent3 fromFunction:v39 fromLineNumber:1493];

      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v193 = v163;
        _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v162 = [MEMORY[0x277CCACA8] stringWithFormat:@"timestamp>%f AND timestamp<%f AND timeInterval=%f AND (%@)", *&var0, *&v24, *&interval, v162];

  v157 = v162;
  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM '%@' WHERE (%@)", v18, v162];;
  v161 = v42;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v43 = objc_opt_class();
    v188[0] = MEMORY[0x277D85DD0];
    v188[1] = 3221225472;
    v188[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1540;
    v188[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v188[4] = v43;
    if (qword_2811F6548 != -1)
    {
      dispatch_once(&qword_2811F6548, v188);
    }

    if (byte_2811F6427 == 1)
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyQuery=%@", v42];
      v45 = MEMORY[0x277D3F178];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent4 = [v46 lastPathComponent];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v45 logMessage:v44 fromFile:lastPathComponent4 fromFunction:v48 fromLineNumber:1498];

      v49 = PLLogCommon();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v193 = v44;
        _os_log_debug_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v42 = v161;
    }
  }

  v50 = objc_msgSend_storage(self);
  v51 = [v50 entriesForKey:v18 withQuery:v42];

  v160 = v51;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v52 = objc_opt_class();
    v187[0] = MEMORY[0x277D85DD0];
    v187[1] = 3221225472;
    v187[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1546;
    v187[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v187[4] = v52;
    if (qword_2811F6550 != -1)
    {
      dispatch_once(&qword_2811F6550, v187);
    }

    if (byte_2811F6428 == 1)
    {
      v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyEntries=%@", v51];
      v54 = MEMORY[0x277D3F178];
      v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent5 = [v55 lastPathComponent];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v54 logMessage:v53 fromFile:lastPathComponent5 fromFunction:v57 fromLineNumber:1502];

      v58 = PLLogCommon();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v193 = v53;
        _os_log_debug_impl(&dword_21A4C6000, v58, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v51 = v160;
    }
  }

  v158 = v18;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  obj = [v163 arrayByAddingObjectsFromArray:v51];
  v181 = [obj countByEnumeratingWithState:&v183 objects:v194 count:16];
  if (v181)
  {
    v179 = *MEMORY[0x277D3F328];
    v180 = *v184;
    v175 = *MEMORY[0x277D3F310];
    v172 = *MEMORY[0x277D3F308];
    v167 = *MEMORY[0x277D3F2F8];
    v174 = *MEMORY[0x277D3F330];
    v171 = *MEMORY[0x277D3F320];
    selfCopy = self;
    do
    {
      v59 = 0;
      v60 = 0x277D3F000uLL;
      do
      {
        if (*v184 != v180)
        {
          objc_enumerationMutation(obj);
        }

        v61 = *(*(&v183 + 1) + 8 * v59);
        if ([*(v60 + 384) debugEnabled])
        {
          v62 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1552;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v62;
          if (qword_2811F6558 != -1)
          {
            dispatch_once(&qword_2811F6558, block);
          }

          if (byte_2811F6429 == 1)
          {
            v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateEnergyEntry=%@", v61];
            v64 = MEMORY[0x277D3F178];
            v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent6 = [v65 lastPathComponent];
            v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
            [v64 logMessage:v63 fromFile:lastPathComponent6 fromFunction:v67 fromLineNumber:1507];

            v68 = PLLogCommon();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v193 = v63;
              _os_log_debug_impl(&dword_21A4C6000, v68, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v69 = [v61 objectForKeyedSubscript:v179];
        if (v69)
        {
          v70 = [dictionary objectForKeyedSubscript:v69];
          if (v70)
          {
            goto LABEL_52;
          }

          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:dictionary2 forKeyedSubscript:v69];

          v70 = [dictionary objectForKeyedSubscript:v69];
          nodeIDToNodeName = [(PLBatteryBreakdownService *)self nodeIDToNodeName];
          v73 = [nodeIDToNodeName objectForKeyedSubscript:v69];

          if (!v73)
          {
            goto LABEL_90;
          }

          [v70 setObject:v73 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

LABEL_52:
          entryKey2 = [v61 entryKey];
          v75 = [entryKey2 isEqualToString:v177];

          if (v75)
          {
            v76 = [v61 objectForKeyedSubscript:v174];
            intValue = [v76 intValue];
            if ([&unk_282C15A98 count] > intValue)
            {
              v78 = [&unk_282C15AC8 objectAtIndexedSubscript:{objc_msgSend(v76, "intValue")}];
              v79 = [v61 objectForKeyedSubscript:v171];
              if ([v76 intValue] == 58)
              {
                v80 = PLLogCommon();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
                {
                  intValue2 = [v76 intValue];
                  [v79 doubleValue];
                  *buf = 67109376;
                  *v193 = intValue2;
                  *&v193[4] = 2048;
                  *&v193[6] = v147;
                  _os_log_debug_impl(&dword_21A4C6000, v80, OS_LOG_TYPE_DEBUG, "before clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                }

                v81 = MEMORY[0x277CCABB0];
                [v79 doubleValue];
                v83 = [v81 numberWithDouble:{fmin(v82, 9000.0)}];

                v84 = PLLogCommon();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_93;
                }

                goto LABEL_78;
              }

              if ([v76 intValue] == 59)
              {
                v119 = PLLogCommon();
                if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
                {
                  intValue3 = [v76 intValue];
                  [v79 doubleValue];
                  *buf = 67109376;
                  *v193 = intValue3;
                  *&v193[4] = 2048;
                  *&v193[6] = v151;
                  _os_log_debug_impl(&dword_21A4C6000, v119, OS_LOG_TYPE_DEBUG, "before clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                }

                v120 = MEMORY[0x277CCABB0];
                [v79 doubleValue];
                v83 = [v120 numberWithDouble:{fmin(v121, 5500.0)}];

                v84 = PLLogCommon();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                {
LABEL_93:
                  intValue4 = [v76 intValue];
                  [v83 doubleValue];
                  *buf = 67109376;
                  *v193 = intValue4;
                  *&v193[4] = 2048;
                  *&v193[6] = v153;
                  _os_log_debug_impl(&dword_21A4C6000, v84, OS_LOG_TYPE_DEBUG, "after clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                }

LABEL_78:
                selfCopy3 = self;

                v79 = v83;
              }

              else
              {
                selfCopy3 = self;
              }

              v123 = MEMORY[0x277CCABB0];
              v124 = [v70 objectForKeyedSubscript:v78];
              [v124 doubleValue];
              v126 = v125;
              [v79 doubleValue];
              v128 = [v123 numberWithDouble:v126 + v127 / 1000.0];
              [v70 setObject:v128 forKeyedSubscript:v78];

              v129 = MEMORY[0x277CCABB0];
              v130 = [v70 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
              [v130 doubleValue];
              v132 = v131;
              [v79 doubleValue];
              v134 = [v129 numberWithDouble:v132 + v133 / 1000.0];
              [v70 setObject:v134 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

              self = selfCopy3;
              v60 = 0x277D3F000;
              if (type == 4)
              {
                v135 = [(PLBatteryBreakdownService *)self energyMetricBucketForRootNodeID:v76];
                v136 = MEMORY[0x277CCACA8];
                v137 = [MEMORY[0x277CCABB0] numberWithShort:v135];
                v137 = [v136 stringWithFormat:@"%@", v137];

                if (v137)
                {
                  intValue5 = [v79 intValue];
                  if (intValue5 >= 1)
                  {
                    v140 = intValue5;
                    v141 = MEMORY[0x277CCABB0];
                    v142 = [v70 objectForKeyedSubscript:v137];
                    v143 = [v142 intValue] + v140;
                    v144 = v141;
                    self = selfCopy;
                    v145 = [v144 numberWithInt:v143];
                    [v70 setObject:v145 forKeyedSubscript:v137];

                    v60 = 0x277D3F000;
                  }
                }
              }

LABEL_89:
LABEL_90:

              goto LABEL_91;
            }

            v78 = PLLogCommon();
            if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_89;
            }

            intValue6 = [v76 intValue];
            v115 = [&unk_282C15AB0 count];
            *buf = 67109376;
            *v193 = intValue6;
            *&v193[4] = 2048;
            *&v193[6] = v115;
            v116 = v78;
          }

          else
          {
            v76 = [v61 objectForKeyedSubscript:v175];
            intValue7 = [v76 intValue];
            if ([&unk_282C15AE0 count] > intValue7)
            {
              v78 = [&unk_282C15B10 objectAtIndexedSubscript:{objc_msgSend(v76, "intValue")}];
              v86 = [v61 objectForKeyedSubscript:v172];
              intValue8 = [v86 intValue];
              if ([&unk_282C15B28 count] <= intValue8)
              {
                v88 = PLLogCommon();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                {
                  intValue9 = [v86 intValue];
                  v149 = [&unk_282C15B40 count];
                  *buf = 67109376;
                  *v193 = intValue9;
                  *&v193[4] = 2048;
                  *&v193[6] = v149;
                  _os_log_error_impl(&dword_21A4C6000, v88, OS_LOG_TYPE_ERROR, "qualificationID=%d out of bounds=%lu", buf, 0x12u);
                }
              }

              else
              {
                v88 = [&unk_282C15B58 objectAtIndexedSubscript:{objc_msgSend(v86, "intValue")}];
                v169 = v78;
                [objc_opt_class() rootNodeQualificationNameWithQualificationName:v88 withRootNodeName:v78];
                v90 = v89 = v86;
                v91 = [v61 objectForKeyedSubscript:v167];
                v92 = MEMORY[0x277CCABB0];
                v93 = [v70 objectForKeyedSubscript:v90];
                [v93 doubleValue];
                v95 = v94;
                [v91 doubleValue];
                v97 = [v92 numberWithDouble:v95 + v96 / 1000.0];
                v170 = v90;
                v98 = v90;
                v86 = v89;
                [v70 setObject:v97 forKeyedSubscript:v98];

                v99 = MEMORY[0x277CCABB0];
                v100 = [v70 objectForKeyedSubscript:v88];
                [v100 doubleValue];
                v102 = v101;
                [v91 doubleValue];
                v104 = [v99 numberWithDouble:v102 + v103 / 1000.0];
                [v70 setObject:v104 forKeyedSubscript:v88];

                if (type == 4 && [v89 intValue] == 2)
                {
                  v105 = [(PLBatteryBreakdownService *)selfCopy energyMetricBucketForRootNodeID:v76];
                  v106 = MEMORY[0x277CCACA8];
                  v107 = [MEMORY[0x277CCABB0] numberWithShort:v105];
                  v107 = [v106 stringWithFormat:@"%@", v107];

                  if (v107)
                  {
                    v108 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"fg", v107];
                    intValue10 = [v91 intValue];
                    if (intValue10 >= 1)
                    {
                      v165 = MEMORY[0x277CCABB0];
                      v111 = intValue10;
                      [v70 objectForKeyedSubscript:v108];
                      v112 = v166 = v108;
                      v113 = [v165 numberWithInt:{objc_msgSend(v112, "intValue") + v111}];
                      [v70 setObject:v113 forKeyedSubscript:v166];

                      v108 = v166;
                    }
                  }
                }

                self = selfCopy;
                v78 = v169;
                v60 = 0x277D3F000;
              }

              goto LABEL_89;
            }

            v78 = PLLogCommon();
            if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_89;
            }

            intValue11 = [v76 intValue];
            v118 = [&unk_282C15AF8 count];
            *buf = 67109376;
            *v193 = intValue11;
            *&v193[4] = 2048;
            *&v193[6] = v118;
            v116 = v78;
          }

          _os_log_error_impl(&dword_21A4C6000, v116, OS_LOG_TYPE_ERROR, "rootNodeID=%d out of bounds=%lu", buf, 0x12u);
          goto LABEL_89;
        }

LABEL_91:

        ++v59;
      }

      while (v181 != v59);
      v154 = [obj countByEnumeratingWithState:&v183 objects:v194 count:16];
      v181 = v154;
    }

    while (v154);
  }

  allValues = [dictionary allValues];

  objc_autoreleasePoolPop(context);

  return allValues;
}

void *__88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6424 = result;
  return result;
}

void *__88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1528(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6425 = result;
  return result;
}

void *__88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1534(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6426 = result;
  return result;
}

void *__88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1540(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6427 = result;
  return result;
}

void *__88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1546(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6428 = result;
  return result;
}

void *__88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1552(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6429 = result;
  return result;
}

- (signed)energyMetricBucketForRootNodeID:(id)d
{
  v3 = [d intValue] - 2;
  if (v3 > 0x3C)
  {
    return 0;
  }

  else
  {
    return word_21AA22270[v3];
  }
}

- (id)populateEnergyBucketKeysWithEntries:(id)entries
{
  v51 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = entries;
  v32 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v32)
  {
    v31 = *v37;
    do
    {
      v3 = 0;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v3;
        v4 = *(*(&v36 + 1) + 8 * v3);
        v5 = 1;
        do
        {
          v6 = MEMORY[0x277CCACA8];
          v7 = [MEMORY[0x277CCABB0] numberWithShort:v5];
          v8 = [v6 stringWithFormat:@"%@", v7];

          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"fg", v8];
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bg", v8];
          v11 = [v4 objectForKeyedSubscript:v8];
          intValue = [v11 intValue];

          v13 = [v4 objectForKeyedSubscript:v9];
          intValue2 = [v13 intValue];

          if ([(PLBatteryBreakdownService *)self isForegroundOnlyBucket:v5])
          {
            intValue2 = intValue;
            if (intValue >= 1)
            {
              v15 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
              [v4 setObject:v15 forKeyedSubscript:v9];

              intValue2 = intValue;
            }
          }

          v16 = (intValue - intValue2);
          if (v16 >= 1)
          {
            v17 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v17 doubleValue];
            v19 = v18;

            v20 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v20 doubleValue];
            v22 = v21;

            v23 = v19 + v22;
            if (v19 + v22 <= 0.0 || ((v23 = v19 / v23 * intValue, v24 = v23, v16 >= v23) ? (v16 = v24) : (v16 = v16), v24 >= 1))
            {
              v25 = [MEMORY[0x277CCABB0] numberWithInt:{v16, v23}];
              [v4 setObject:v25 forKeyedSubscript:v10];

              intValue2 = intValue - v16;
              v26 = [MEMORY[0x277CCABB0] numberWithInt:(intValue - v16)];
              [v4 setObject:v26 forKeyedSubscript:v9];
            }
          }

          v27 = PLLogCommon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v34 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            *buf = 138413314;
            v41 = v34;
            v42 = 2112;
            v43 = v8;
            v44 = 1024;
            v45 = intValue;
            v46 = 1024;
            v47 = intValue2;
            v48 = 1024;
            v49 = v16;
            _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@: %@ total:%d fg:%d bg:%d", buf, 0x28u);
          }

          v28 = v5++;
        }

        while (v28 < 0x11);
        v3 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v32);
  }

  return obj;
}

- (id)populateRootNodeEnergyKeysWithEnergyEntries:(id)entries
{
  v61 = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = entries;
  v40 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v40)
  {
    v37 = v52;
    v39 = *v54;
    v4 = 0x277D3F000uLL;
    selfCopy = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v54 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v5;
        v6 = *(*(&v53 + 1) + 8 * v5);
        if ([*(v4 + 384) debugEnabled])
        {
          v7 = objc_opt_class();
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v52[0] = __73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke;
          v52[1] = &__block_descriptor_40_e5_v8__0lu32l8;
          v52[2] = v7;
          if (qword_2811F6560 != -1)
          {
            dispatch_once(&qword_2811F6560, v51);
          }

          if (byte_2811F642A == 1)
          {
            v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v6, v37];
            v9 = MEMORY[0x277D3F178];
            v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v10 lastPathComponent];
            v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService populateRootNodeEnergyKeysWithEnergyEntries:]"];
            [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1741];

            v13 = PLLogCommon();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v59 = v8;
              _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        rootNodeNameToRootNodeEnergyKey = [(PLBatteryBreakdownService *)self rootNodeNameToRootNodeEnergyKey];
        v14 = [rootNodeNameToRootNodeEnergyKey countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v14)
        {
          v15 = v14;
          v44 = *v48;
          do
          {
            v16 = 0;
            do
            {
              if (*v48 != v44)
              {
                objc_enumerationMutation(rootNodeNameToRootNodeEnergyKey);
              }

              v17 = *(*(&v47 + 1) + 8 * v16);
              if ([*(v4 + 384) debugEnabled])
              {
                v18 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke_1603;
                block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                block[4] = v18;
                if (qword_2811F6568 != -1)
                {
                  dispatch_once(&qword_2811F6568, block);
                }

                if (byte_2811F642B == 1)
                {
                  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeName=%@", v17];
                  v20 = MEMORY[0x277D3F178];
                  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                  lastPathComponent2 = [v21 lastPathComponent];
                  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService populateRootNodeEnergyKeysWithEnergyEntries:]"];
                  [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:1743];

                  v24 = PLLogCommon();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v59 = v19;
                    _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  self = selfCopy;
                  v4 = 0x277D3F000uLL;
                }
              }

              rootNodeNameToRootNodeEnergyKey2 = [(PLBatteryBreakdownService *)self rootNodeNameToRootNodeEnergyKey];
              v26 = [rootNodeNameToRootNodeEnergyKey2 objectForKeyedSubscript:v17];

              if ([*(v4 + 384) debugEnabled])
              {
                v27 = objc_opt_class();
                v45[0] = MEMORY[0x277D85DD0];
                v45[1] = 3221225472;
                v45[2] = __73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke_1609;
                v45[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v45[4] = v27;
                if (qword_2811F6570 != -1)
                {
                  dispatch_once(&qword_2811F6570, v45);
                }

                if (byte_2811F642C == 1)
                {
                  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeEnergyKey=%@", v26];
                  v29 = MEMORY[0x277D3F178];
                  v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                  lastPathComponent3 = [v30 lastPathComponent];
                  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService populateRootNodeEnergyKeysWithEnergyEntries:]"];
                  [v29 logMessage:v28 fromFile:lastPathComponent3 fromFunction:v32 fromLineNumber:1746];

                  v33 = PLLogCommon();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v59 = v28;
                    _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  self = selfCopy;
                  v4 = 0x277D3F000;
                }
              }

              v34 = [v6 objectForKeyedSubscript:v17];
              if (v34)
              {
                v35 = v34;
              }

              else
              {
                v35 = &unk_282C12B88;
              }

              [v6 setObject:v35 forKeyedSubscript:v26];

              ++v16;
            }

            while (v15 != v16);
            v15 = [rootNodeNameToRootNodeEnergyKey countByEnumeratingWithState:&v47 objects:v57 count:16];
          }

          while (v15);
        }

        v5 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v40);
  }

  return obj;
}

void *__73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F642A = result;
  return result;
}

void *__73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke_1603(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F642B = result;
  return result;
}

void *__73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke_1609(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F642C = result;
  return result;
}

- (id)populateBLDKeysWithEnergyEntries:(id)entries
{
  v76 = *MEMORY[0x277D85DE8];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = entries;
  v62 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (v62)
  {
    v61 = *v72;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v72 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v71 + 1) + 8 * i);
        v5 = [&unk_282C15B70 objectAtIndexedSubscript:15];
        v6 = [v4 objectForKeyedSubscript:v5];

        v70 = v6;
        if (v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = &unk_282C12B88;
        }

        [v4 setObject:v7 forKeyedSubscript:@"BLDEnergyAudio"];
        v8 = [&unk_282C15B88 objectAtIndexedSubscript:50];
        v9 = [v4 objectForKeyedSubscript:v8];

        v69 = v9;
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = &unk_282C12B88;
        }

        [v4 setObject:v10 forKeyedSubscript:@"BLDEnergyBluetooth"];
        v11 = [&unk_282C15BA0 objectAtIndexedSubscript:37];
        v12 = [v4 objectForKeyedSubscript:v11];

        v68 = v12;
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = &unk_282C12B88;
        }

        [v4 setObject:v13 forKeyedSubscript:@"BLDEnergyCellData"];
        v14 = [&unk_282C15BB8 objectAtIndexedSubscript:10];
        v15 = [v4 objectForKeyedSubscript:v14];

        v67 = v15;
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = &unk_282C12B88;
        }

        [v4 setObject:v16 forKeyedSubscript:@"BLDEnergyDisplay"];
        v17 = [&unk_282C15BD0 objectAtIndexedSubscript:38];
        v18 = [v4 objectForKeyedSubscript:v17];

        v66 = v18;
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = &unk_282C12B88;
        }

        [v4 setObject:v19 forKeyedSubscript:@"BLDEnergyVoice"];
        v20 = [&unk_282C15BE8 objectAtIndexedSubscript:11];
        v21 = [v4 objectForKeyedSubscript:v20];

        v65 = v21;
        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = &unk_282C12B88;
        }

        [v4 setObject:v22 forKeyedSubscript:@"BLDEnergyWiFi"];
        v23 = [&unk_282C15C00 objectAtIndexedSubscript:1];
        v24 = [v4 objectForKeyedSubscript:v23];

        v64 = v24;
        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = &unk_282C12B88;
        }

        [v4 setObject:v25 forKeyedSubscript:@"BBCondition"];
        v26 = objc_opt_class();
        v27 = [&unk_282C15C18 objectAtIndexedSubscript:2];
        v28 = [&unk_282C15C30 objectAtIndexedSubscript:2];
        v63 = [v26 rootNodeQualificationNameWithQualificationName:v27 withRootNodeName:v28];

        v29 = [v4 objectForKeyedSubscript:v63];
        v30 = v29;
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = &unk_282C12B88;
        }

        [v4 setObject:v31 forKeyedSubscript:@"BLDEnergyFGCPU"];
        v32 = [&unk_282C15C48 objectAtIndexedSubscript:2];
        v33 = [v4 objectForKeyedSubscript:v32];

        if (v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = &unk_282C12B88;
        }

        v35 = v34;

        v36 = MEMORY[0x277CCABB0];
        [v35 doubleValue];
        v38 = v37;
        [v30 doubleValue];
        v40 = v38 - v39;
        if (v40 < 0.0)
        {
          v40 = 0.0;
        }

        v41 = [v36 numberWithDouble:v40];
        [v4 setObject:v41 forKeyedSubscript:@"BLDEnergyBGCPU"];
        v42 = objc_opt_class();
        v43 = [&unk_282C15C60 objectAtIndexedSubscript:2];
        v44 = [&unk_282C15C78 objectAtIndexedSubscript:48];
        v45 = [v42 rootNodeQualificationNameWithQualificationName:v43 withRootNodeName:v44];

        v46 = [v4 objectForKeyedSubscript:v45];
        v47 = v46;
        if (v46)
        {
          v48 = v46;
        }

        else
        {
          v48 = &unk_282C12B88;
        }

        [v4 setObject:v48 forKeyedSubscript:@"BLDEnergyFGLocation"];
        v49 = [&unk_282C15C90 objectAtIndexedSubscript:48];
        v50 = [v4 objectForKeyedSubscript:v49];

        if (v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = &unk_282C12B88;
        }

        v52 = v51;

        v53 = MEMORY[0x277CCABB0];
        [v52 doubleValue];
        v55 = v54;
        [v47 doubleValue];
        v57 = v55 - v56;
        if (v57 < 0.0)
        {
          v57 = 0.0;
        }

        v58 = [v53 numberWithDouble:v57];
        [v4 setObject:v58 forKeyedSubscript:@"BLDEnergyBGLocation"];
      }

      v62 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
    }

    while (v62);
  }

  return obj;
}

- (id)addForegroundAndBackgroundDurations:(id)durations withRange:(_PLTimeIntervalRange)range withQueryType:(int)type
{
  var1 = range.var1;
  var0 = range.var0;
  v168 = *MEMORY[0x277D85DE8];
  durationsCopy = durations;
  v10 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AppRunTime"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  typeCopy = type;
  v123 = durationsCopy;
  if (type == 4)
  {
    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    dictionary7 = [MEMORY[0x277CBEB38] dictionary];
    dictionary8 = [MEMORY[0x277CBEB38] dictionary];
    dictionary9 = [MEMORY[0x277CBEB38] dictionary];
    dictionary10 = [MEMORY[0x277CBEB38] dictionary];
  }

  else
  {
    dictionary10 = 0;
    dictionary9 = 0;
    dictionary8 = 0;
    dictionary7 = 0;
    dictionary6 = 0;
    dictionary5 = 0;
  }

  selfCopy = self;
  v11 = objc_msgSend_storage(self);
  v126 = v10;
  v12 = [v11 aggregateEntriesForKey:v10 withBucketLength:3600.0 inTimeIntervalRange:{var0, var1}];

  array = [MEMORY[0x277CBEB18] array];
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v159 objects:v167 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v160;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v160 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v159 + 1) + 8 * i);
        entryDate = [v19 entryDate];
        if (entryDate)
        {
          v21 = entryDate;
          [entryDate timeIntervalSince1970];
          v23 = v22;

          if (var0 <= v23 && v23 < var0 + var1)
          {
            [array addObject:v19];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v159 objects:v167 count:16];
    }

    while (v16);
  }

  v124 = v14;

  v125 = array;
  v25 = [MEMORY[0x277D3F190] summarizeAggregateEntries:array];
  v26 = [MEMORY[0x277CBEB58] set];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  obj = v25;
  v27 = [obj countByEnumeratingWithState:&v155 objects:v166 count:16];
  if (v27)
  {
    v28 = v27;
    v129 = *v156;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v156 != v129)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v155 + 1) + 8 * j);
        v31 = [v30 objectForKeyedSubscript:@"BundleID"];
        [v26 addObject:v31];
        v32 = [v30 objectForKeyedSubscript:@"ScreenOnTime"];
        [dictionary setObject:v32 forKeyedSubscript:v31];

        v33 = [v30 objectForKeyedSubscript:@"BackgroundTime"];
        [dictionary2 setObject:v33 forKeyedSubscript:v31];

        v34 = [v30 objectForKeyedSubscript:@"ScreenOnPluggedInTime"];
        [dictionary3 setObject:v34 forKeyedSubscript:v31];

        v35 = [v30 objectForKeyedSubscript:@"BackgroundPluggedInTime"];
        [dictionary4 setObject:v35 forKeyedSubscript:v31];

        if (typeCopy == 4)
        {
          v36 = [v30 objectForKeyedSubscript:@"BackgroundLocationTime"];
          [dictionary5 setObject:v36 forKeyedSubscript:v31];

          v37 = [v30 objectForKeyedSubscript:@"BackgroundLocationPluggedInTime"];
          [dictionary6 setObject:v37 forKeyedSubscript:v31];

          v38 = [v30 objectForKeyedSubscript:@"BackgroundAudioPlayingTime"];
          [dictionary7 setObject:v38 forKeyedSubscript:v31];

          v39 = [v30 objectForKeyedSubscript:@"BackgroundAudioPlayingTimePluggedIn"];
          [dictionary8 setObject:v39 forKeyedSubscript:v31];

          v40 = [v30 objectForKeyedSubscript:@"BackgroundLocationAudioTime"];
          [dictionary9 setObject:v40 forKeyedSubscript:v31];

          v41 = [v30 objectForKeyedSubscript:@"BackgroundLocationAudioPluggedInTime"];
          [dictionary10 setObject:v41 forKeyedSubscript:v31];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v155 objects:v166 count:16];
    }

    while (v28);
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  var1 = [(PLBatteryBreakdownService *)selfCopy nonAppsRuntimesWithRange:var0, var1];
  v42 = [var1 countByEnumeratingWithState:&v151 objects:v165 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v152;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v152 != v44)
        {
          objc_enumerationMutation(var1);
        }

        v46 = *(*(&v151 + 1) + 8 * k);
        v47 = [v46 objectForKeyedSubscript:@"BundleID"];
        [v26 addObject:v47];

        v48 = [v46 objectForKeyedSubscript:@"ScreenOnTime"];
        v49 = [v46 objectForKeyedSubscript:@"BundleID"];
        [dictionary setObject:v48 forKeyedSubscript:v49];

        v50 = [v46 objectForKeyedSubscript:@"BackgroundTime"];
        v51 = [v46 objectForKeyedSubscript:@"BundleID"];
        [dictionary2 setObject:v50 forKeyedSubscript:v51];
      }

      v43 = [var1 countByEnumeratingWithState:&v151 objects:v165 count:16];
    }

    while (v43);
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v131 = v123;
  v52 = [v131 countByEnumeratingWithState:&v147 objects:v164 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v148;
    do
    {
      for (m = 0; m != v53; ++m)
      {
        if (*v148 != v54)
        {
          objc_enumerationMutation(v131);
        }

        v56 = *(*(&v147 + 1) + 8 * m);
        v57 = [v56 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v58 = [v26 containsObject:v57];

        if (v58)
        {
          v59 = [v56 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          [v26 removeObject:v59];
        }

        v60 = [v56 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v61 = MEMORY[0x277CCABB0];
        v62 = [dictionary objectForKeyedSubscript:v60];
        [v62 doubleValue];
        v63 = [v61 numberWithDouble:?];
        [v56 setObject:v63 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];

        v64 = MEMORY[0x277CCABB0];
        v65 = [dictionary2 objectForKeyedSubscript:v60];
        [v65 doubleValue];
        v66 = [v64 numberWithDouble:?];
        [v56 setObject:v66 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

        v67 = MEMORY[0x277CCABB0];
        v68 = [dictionary3 objectForKeyedSubscript:v60];
        [v68 doubleValue];
        v69 = [v67 numberWithDouble:?];
        [v56 setObject:v69 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

        v70 = MEMORY[0x277CCABB0];
        v71 = [dictionary4 objectForKeyedSubscript:v60];
        [v71 doubleValue];
        v72 = [v70 numberWithDouble:?];
        [v56 setObject:v72 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];

        if (typeCopy == 4)
        {
          v73 = MEMORY[0x277CCABB0];
          v74 = [dictionary5 objectForKeyedSubscript:v60];
          [v74 doubleValue];
          v75 = [v73 numberWithDouble:?];
          [v56 setObject:v75 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationRuntimeKey"];

          v76 = MEMORY[0x277CCABB0];
          v77 = [dictionary6 objectForKeyedSubscript:v60];
          [v77 doubleValue];
          v78 = [v76 numberWithDouble:?];
          [v56 setObject:v78 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationPluggedInRuntimeKey"];

          v79 = MEMORY[0x277CCABB0];
          v80 = [dictionary7 objectForKeyedSubscript:v60];
          [v80 doubleValue];
          v81 = [v79 numberWithDouble:?];
          [v56 setObject:v81 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];

          v82 = MEMORY[0x277CCABB0];
          v83 = [dictionary8 objectForKeyedSubscript:v60];
          [v83 doubleValue];
          v84 = [v82 numberWithDouble:?];
          [v56 setObject:v84 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioPluggedInRuntimeKey"];

          v85 = MEMORY[0x277CCABB0];
          v86 = [dictionary9 objectForKeyedSubscript:v60];
          [v86 doubleValue];
          v87 = [v85 numberWithDouble:?];
          [v56 setObject:v87 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioRuntimeKey"];

          v88 = MEMORY[0x277CCABB0];
          v89 = [dictionary10 objectForKeyedSubscript:v60];
          [v89 doubleValue];
          v90 = [v88 numberWithDouble:?];
          [v56 setObject:v90 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioPluggedInRuntimeKey"];
        }
      }

      v53 = [v131 countByEnumeratingWithState:&v147 objects:v164 count:16];
    }

    while (v53);
  }

  v91 = [v131 mutableCopy];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v128 = v26;
  v92 = [v128 countByEnumeratingWithState:&v143 objects:v163 count:16];
  v93 = 0x277CBE000uLL;
  if (v92)
  {
    v94 = v92;
    v95 = *v144;
    do
    {
      for (n = 0; n != v94; ++n)
      {
        if (*v144 != v95)
        {
          objc_enumerationMutation(v128);
        }

        v97 = *(*(&v143 + 1) + 8 * n);
        dictionary11 = [*(v93 + 2872) dictionary];
        [dictionary11 setObject:v97 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        [dictionary11 setObject:&unk_282C12B88 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        v99 = [dictionary objectForKeyedSubscript:v97];
        [dictionary11 setObject:v99 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];

        v100 = [dictionary2 objectForKeyedSubscript:v97];
        [dictionary11 setObject:v100 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

        v101 = [dictionary3 objectForKeyedSubscript:v97];
        [dictionary11 setObject:v101 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

        v102 = [dictionary4 objectForKeyedSubscript:v97];
        [dictionary11 setObject:v102 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];

        if (typeCopy == 4)
        {
          v103 = MEMORY[0x277CCABB0];
          v104 = [dictionary5 objectForKeyedSubscript:v97];
          [v104 doubleValue];
          v105 = [v103 numberWithDouble:?];
          [dictionary11 setObject:v105 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationRuntimeKey"];

          v106 = MEMORY[0x277CCABB0];
          v107 = [dictionary6 objectForKeyedSubscript:v97];
          [v107 doubleValue];
          v108 = [v106 numberWithDouble:?];
          [dictionary11 setObject:v108 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationPluggedInRuntimeKey"];

          v109 = MEMORY[0x277CCABB0];
          v110 = [dictionary7 objectForKeyedSubscript:v97];
          [v110 doubleValue];
          v111 = [v109 numberWithDouble:?];
          [dictionary11 setObject:v111 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];

          v112 = MEMORY[0x277CCABB0];
          v113 = [dictionary8 objectForKeyedSubscript:v97];
          [v113 doubleValue];
          v114 = [v112 numberWithDouble:?];
          [dictionary11 setObject:v114 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioPluggedInRuntimeKey"];

          v115 = MEMORY[0x277CCABB0];
          v116 = [dictionary9 objectForKeyedSubscript:v97];
          [v116 doubleValue];
          v117 = [v115 numberWithDouble:?];
          [dictionary11 setObject:v117 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioRuntimeKey"];

          v93 = 0x277CBE000;
          v118 = MEMORY[0x277CCABB0];
          v119 = [dictionary10 objectForKeyedSubscript:v97];
          [v119 doubleValue];
          v120 = [v118 numberWithDouble:?];
          [dictionary11 setObject:v120 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioPluggedInRuntimeKey"];
        }

        [dictionary11 setObject:&unk_282C12B88 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v91 addObject:dictionary11];
      }

      v94 = [v128 countByEnumeratingWithState:&v143 objects:v163 count:16];
    }

    while (v94);
  }

  return v91;
}

- (id)addNotificationValues:(id)values withRange:(_PLTimeIntervalRange)range withQueryType:(int)type
{
  var1 = range.var1;
  var0 = range.var0;
  valuesCopy = values;
  v9 = objc_msgSend_storage(self);
  v10 = [v9 aggregateEntriesForKey:@"PLSpringBoardAgent_Aggregate_SBNotifications_Aggregate" withBucketLength:3600.0 inTimeIntervalRange:{var0, var1}];

  v11 = objc_opt_new();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke;
  v22[3] = &unk_278261838;
  v24 = var0;
  v25 = var1;
  v23 = v11;
  v12 = v11;
  [v10 enumerateObjectsUsingBlock:v22];
  v13 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v12 withPrimaryKeys:&unk_282C15CA8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2;
  v20[3] = &unk_278261860;
  v15 = dictionary;
  v21 = v15;
  [v13 enumerateObjectsUsingBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_1726;
  v18[3] = &unk_278261888;
  v19 = v15;
  v16 = v15;
  [valuesCopy enumerateObjectsUsingBlock:v18];

  return valuesCopy;
}

void __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke(uint64_t a1, void *a2)
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

void __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(PLBatteryBreakdownNotificationInfo *)v3 objectForKeyedSubscript:@"NotificationType"];
  if (v4)
  {
    v5 = v4;
    v6 = [(PLBatteryBreakdownNotificationInfo *)v3 objectForKeyedSubscript:@"NotificationType"];
    if (![v6 intValue])
    {
LABEL_5:

      goto LABEL_6;
    }

    v7 = [(PLBatteryBreakdownNotificationInfo *)v3 objectForKeyedSubscript:@"NotificationType"];
    if ([v7 intValue] == 3)
    {

      goto LABEL_5;
    }

    v13 = [(PLBatteryBreakdownNotificationInfo *)v3 objectForKeyedSubscript:@"NotificationType"];
    v14 = [v13 intValue];

    if (v14 == -1)
    {
LABEL_6:
      v8 = [(PLBatteryBreakdownNotificationInfo *)v3 objectForKeyedSubscript:@"NotificationBundleID"];
      if (!v8)
      {
LABEL_17:

        goto LABEL_18;
      }

      v9 = [[PLBatteryBreakdownNotificationInfo alloc] initWithEntry:v3];
      if (v9)
      {
        v10 = [*(a1 + 32) objectForKeyedSubscript:v8];

        v11 = *(a1 + 32);
        if (v10)
        {
          v12 = [v11 objectForKeyedSubscript:v8];
          [v12 combineWith:v9];
        }

        else
        {
          [v11 setObject:v9 forKeyedSubscript:v8];
        }

        v15 = PLLogCommon();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_16;
        }

        v17 = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = v9;
        v16 = "notification: %@ -> %@";
      }

      else
      {
        v15 = PLLogCommon();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
LABEL_16:

          goto LABEL_17;
        }

        v17 = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = v3;
        v16 = "failed to init notification info for %@ %@";
      }

      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, v16, &v17, 0x16u);
      goto LABEL_16;
    }
  }

LABEL_18:
}

void __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_1726(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (![*(a1 + 32) count])
  {
    *a4 = 1;
  }

  v6 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (v7)
  {
    [v8 setObject:v7 forKeyedSubscript:@"NotificationInfo"];
    [*(a1 + 32) removeObjectForKey:v6];
  }
}

- (id)nonAppsRuntimesWithRange:(_PLTimeIntervalRange)range
{
  var1 = range.var1;
  var0 = range.var0;
  v12[3] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v7 = [(PLOperator *)PLCameraAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Torch"];
  [(PLBatteryBreakdownService *)self nonAppRuntimeWithEventForwardTableName:v7 withRange:@"Level" andIdentificationKey:var0, var1];
  v11[0] = @"BundleID";
  v11[1] = @"ScreenOnTime";
  v12[0] = @"Flashlight";
  v12[1] = &unk_282C12B88;
  v11[2] = @"BackgroundTime";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  [array addObject:v9];

  return array;
}

- (double)nonAppRuntimeWithEventForwardTableName:(id)name withRange:(_PLTimeIntervalRange)range andIdentificationKey:(id)key
{
  var1 = range.var1;
  var0 = range.var0;
  v45[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  keyCopy = key;
  v11 = objc_alloc(MEMORY[0x277D3F260]);
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:var0];
  v13 = [v11 initWithKey:@"timestamp" withValue:v12 withComparisonOperation:5];

  v14 = objc_msgSend_storage(self);
  v38 = v13;
  v45[0] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  v16 = [v14 lastEntryForKey:nameCopy withComparisons:v15 isSingleton:0];

  if (v16)
  {
    v17 = [v16 objectForKeyedSubscript:keyCopy];
    bOOLValue = [v17 BOOLValue];

    if (bOOLValue)
    {
      v19 = var0;
    }

    else
    {
      v19 = -1.0;
    }
  }

  else
  {
    v19 = -1.0;
  }

  v20 = objc_msgSend_storage(self);
  v39 = nameCopy;
  v21 = [v20 entriesForKey:nameCopy inTimeRange:0 withFilters:{var0, var1}];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  reverseObjectEnumerator = [v21 reverseObjectEnumerator];
  v23 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    v26 = 0.0;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v28 = *(*(&v40 + 1) + 8 * i);
        v29 = [v28 objectForKeyedSubscript:keyCopy];
        bOOLValue2 = [v29 BOOLValue];

        if (bOOLValue2)
        {
          if (v19 == -1.0)
          {
            entryDate = [v28 entryDate];
            [entryDate timeIntervalSince1970];
            v19 = v32;
          }
        }

        else
        {
          if (v19 != -1.0)
          {
            entryDate2 = [v28 entryDate];
            [entryDate2 timeIntervalSince1970];
            v35 = v34 - v19;

            v26 = v26 + v35;
          }

          v19 = -1.0;
        }
      }

      v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v24);
  }

  else
  {
    v26 = 0.0;
  }

  if (v19 == -1.0)
  {
    v36 = v26;
  }

  else
  {
    v36 = v26 + var0 + var1 - v19;
  }

  return v36;
}

- (id)removeNodesNotToShowInInternalUI:(id)i withQueryType:(int)type
{
  v26 = *MEMORY[0x277D85DE8];
  iCopy = i;
  if (type == 2 && ![(PLBatteryBreakdownService *)self showRootNodesInInternal])
  {
    v19 = iCopy;
    v20 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = iCopy;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:{@"PLBatteryUIAppTypeKey", v19}];
          intValue = [v13 intValue];

          if (intValue != 5)
          {
            v15 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            intermediateRootNodes = [(PLBatteryBreakdownService *)self intermediateRootNodes];
            v17 = [intermediateRootNodes containsObject:v15];

            if ((v17 & 1) == 0 && [v15 rangeOfString:@"AssertionPID"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v20 addObject:v12];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    iCopy = v19;
  }

  else
  {
    v20 = iCopy;
  }

  return v20;
}

- (id)filterEnergyEntriesBasedOnTime:(id)time withQueryType:(int)type
{
  v83 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v7 = timeCopy;
  typeCopy = type;
  if (type == 4)
  {
    v70 = timeCopy;
    goto LABEL_62;
  }

  v70 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v66 = v7;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (!v8)
  {
    goto LABEL_61;
  }

  v9 = v8;
  v10 = *v77;
  v11 = 0x277D3F000uLL;
  v67 = *v77;
  do
  {
    v12 = 0;
    do
    {
      if (*v77 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v76 + 1) + 8 * v12);
      v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      if ([*(v11 + 384) debugEnabled])
      {
        v15 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v15;
        if (qword_2811F6578 != -1)
        {
          dispatch_once(&qword_2811F6578, block);
        }

        if (byte_2811F642D == 1)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Entry: %@ ========= %@", v14, v13];
          v17 = MEMORY[0x277D3F178];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
          lastPathComponent = [v18 lastPathComponent];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
          [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:2090];

          v21 = PLLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v81 = v16;
            _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v10 = v67;
          v11 = 0x277D3F000uLL;
        }
      }

      if ([(PLBatteryBreakdownService *)self appTypeForName:v14]== 1)
      {
        v22 = [(PLBatteryBreakdownService *)self adjustFGBGTimeForNonAppEnergyEntry:v13];
        [v70 addObject:v22];

        if ([*(v11 + 384) debugEnabled])
        {
          v23 = objc_opt_class();
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1736;
          v74[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v74[4] = v23;
          if (qword_2811F6580 != -1)
          {
            dispatch_once(&qword_2811F6580, v74);
          }

          if (byte_2811F642E == 1)
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Adding: NON APP"];
            v25 = MEMORY[0x277D3F178];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v26 lastPathComponent];
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
            [v25 logMessage:v24 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:2096];

            v29 = PLLogCommon();
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
LABEL_48:

              v10 = v67;
              v11 = 0x277D3F000;
              goto LABEL_56;
            }

LABEL_58:
            *buf = 138412290;
            v81 = v24;
            _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            goto LABEL_48;
          }
        }
      }

      else
      {
        v30 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v30 doubleValue];
        v32 = v31;

        v33 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        [v33 doubleValue];
        v35 = v34;

        if (typeCopy > 1 || (v32 == 0.0 ? (v36 = v35 < 60.0) : (v36 = 0), !v36))
        {
          if (v32 > 0.0 && v32 < 60.0)
          {
            v55 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
            [v55 doubleValue];
            v57 = v56;

            v58 = [MEMORY[0x277CCABB0] numberWithDouble:60.0 / v32 * v57];
            [v13 setObject:v58 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

            [v13 setObject:&unk_282C12C30 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            if ([*(v11 + 384) debugEnabled])
            {
              v59 = objc_opt_class();
              v72[0] = MEMORY[0x277D85DD0];
              v72[1] = 3221225472;
              v72[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1756;
              v72[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v72[4] = v59;
              if (qword_2811F6590 != -1)
              {
                dispatch_once(&qword_2811F6590, v72);
              }

              if (byte_2811F6430 == 1)
              {
                v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Adding with Corrected FGTime"];
                v60 = MEMORY[0x277D3F178];
                v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent3 = [v61 lastPathComponent];
                v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
                [v60 logMessage:v44 fromFile:lastPathComponent3 fromFunction:v63 fromLineNumber:2128];

                v49 = PLLogCommon();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_59;
                }

                goto LABEL_54;
              }
            }
          }

          else if ([*(v11 + 384) debugEnabled])
          {
            v43 = objc_opt_class();
            v71[0] = MEMORY[0x277D85DD0];
            v71[1] = 3221225472;
            v71[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1762;
            v71[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v71[4] = v43;
            if (qword_2811F6598 != -1)
            {
              dispatch_once(&qword_2811F6598, v71);
            }

            if (byte_2811F6431 == 1)
            {
              v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Adding without any changes"];
              v45 = MEMORY[0x277D3F178];
              v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent4 = [v46 lastPathComponent];
              v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
              [v45 logMessage:v44 fromFile:lastPathComponent4 fromFunction:v48 fromLineNumber:2130];

              v49 = PLLogCommon();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
LABEL_59:
                *buf = 138412290;
                v81 = v44;
                _os_log_debug_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

LABEL_54:
              v10 = v67;

              v11 = 0x277D3F000;
            }
          }

          [v70 addObject:v13];
          goto LABEL_56;
        }

        if ([v14 isEqualToString:@"com.apple.findmy"] && (objc_msgSend(&unk_282C15CC0, "objectAtIndexedSubscript:", 59), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKeyedSubscript:", v37), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "doubleValue"), v40 = v39, v38, v37, v40 > 0.0))
        {
          [v70 addObject:v13];
          v41 = PLLogCommon();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v81 = @"com.apple.findmy";
            _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "skipping runtime filter for %@", buf, 0xCu);
          }
        }

        else if ([*(v11 + 384) debugEnabled])
        {
          v50 = objc_opt_class();
          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v73[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1748;
          v73[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v73[4] = v50;
          if (qword_2811F6588 != -1)
          {
            dispatch_once(&qword_2811F6588, v73);
          }

          if (byte_2811F642F == 1)
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dropping: Low FG BG Time"];
            v51 = MEMORY[0x277D3F178];
            v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent5 = [v52 lastPathComponent];
            v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
            [v51 logMessage:v24 fromFile:lastPathComponent5 fromFunction:v54 fromLineNumber:2112];

            v29 = PLLogCommon();
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_48;
            }

            goto LABEL_58;
          }
        }
      }

LABEL_56:

      ++v12;
    }

    while (v9 != v12);
    v64 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
    v9 = v64;
  }

  while (v64);
LABEL_61:

  v7 = v66;
LABEL_62:

  return v70;
}

void *__74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F642D = result;
  return result;
}

void *__74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1736(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F642E = result;
  return result;
}

void *__74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1748(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F642F = result;
  return result;
}

void *__74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1756(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6430 = result;
  return result;
}

void *__74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1762(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6431 = result;
  return result;
}

- (id)adjustFGBGTimeForNonAppEnergyEntry:(id)entry
{
  entryCopy = entry;
  v4 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  if (([v4 isEqualToString:@"HLS"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Siri") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"DeletedApp") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"DeletedAppClip") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"DeletedAppAndAppClip"))
  {
    v5 = @"PLBatteryUIAppForegroundRuntimeKey";
  }

  else
  {
    if (![v4 isEqualToString:@"Flashlight"])
    {
      goto LABEL_10;
    }

    v5 = @"PLBatteryUIAppBackgroundRuntimeKey";
  }

  v6 = [entryCopy objectForKeyedSubscript:v5];
  [v6 doubleValue];
  v8 = v7;

  if (v8 < 60.0 && v8 > 0.0)
  {
    [entryCopy setObject:&unk_282C12C30 forKeyedSubscript:v5];
  }

LABEL_10:

  return entryCopy;
}

- (double)computeTotalForegroundDuration:(id)duration
{
  v17 = *MEMORY[0x277D85DE8];
  durationCopy = duration;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [durationCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(durationCopy);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v9 doubleValue];
        v7 = v7 + v10;
      }

      v5 = [durationCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (double)computeTotalBackgroundDuration:(id)duration
{
  v17 = *MEMORY[0x277D85DE8];
  durationCopy = duration;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [durationCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(durationCopy);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        [v9 doubleValue];
        v7 = v7 + v10;
      }

      v5 = [durationCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (BOOL)checkHomeKitEvents
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLHomeKitAgent" withType:*MEMORY[0x277D3F5E8] withName:@"HomeKitEvents"];
  v4 = objc_msgSend_storage(self);
  v5 = [v4 countOfEntriesForKey:v3];

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Count of HomeKit events: %ld", &v8, 0xCu);
  }

  return v5 > 0;
}

- (id)applyStaticNameTransformationsWithEnergyEntries:(id)entries
{
  v67 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if (![(PLBatteryBreakdownService *)self hasHomeKitActivity])
  {
    [(PLBatteryBreakdownService *)self setHasHomeKitActivity:[(PLBatteryBreakdownService *)self checkHomeKitEvents]];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v5 = entriesCopy;
  v55 = [v5 countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v55)
  {
    v54 = *v61;
    v6 = 0x277D3F000uLL;
    obj = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v61 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v60 + 1) + 8 * v7);
        v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([*(v6 + 384) debugEnabled])
        {
          v10 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v10;
          if (qword_2811F65A0 != -1)
          {
            dispatch_once(&qword_2811F65A0, block);
          }

          if (byte_2811F6432 == 1)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"givenName=%@", v9];
            v12 = MEMORY[0x277D3F178];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v13 lastPathComponent];
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService applyStaticNameTransformationsWithEnergyEntries:]"];
            [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2199];

            v16 = PLLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v65 = v11;
              _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v6 = 0x277D3F000uLL;
          }
        }

        if ([v9 isEqualToString:@"com.apple.springboard.lockscreen.navigation"])
        {
          v17 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

          if (v17)
          {
            if ([*(v6 + 384) debugEnabled])
            {
              v18 = objc_opt_class();
              v58[0] = MEMORY[0x277D85DD0];
              v58[1] = 3221225472;
              v58[2] = __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1777;
              v58[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v58[4] = v18;
              if (qword_2811F65A8 != -1)
              {
                dispatch_once(&qword_2811F65A8, v58);
              }

              if (byte_2811F6433 == 1)
              {
                v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error lockscreen-navigation background time not zero"];
                v20 = MEMORY[0x277D3F178];
                v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent2 = [v21 lastPathComponent];
                v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService applyStaticNameTransformationsWithEnergyEntries:]"];
                [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:2203];

                v24 = PLLogCommon();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v65 = v19;
                  _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v6 = 0x277D3F000uLL;
              }
            }

            if ([*(v6 + 384) debugEnabled])
            {
              v25 = objc_opt_class();
              v57[0] = MEMORY[0x277D85DD0];
              v57[1] = 3221225472;
              v57[2] = __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1783;
              v57[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v57[4] = v25;
              if (qword_2811F65B0 != -1)
              {
                dispatch_once(&qword_2811F65B0, v57);
              }

              if (byte_2811F6434 == 1)
              {
                v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"lockscreen-navigation energyEntry = %@", v8];
                v27 = MEMORY[0x277D3F178];
                v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent3 = [v28 lastPathComponent];
                v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService applyStaticNameTransformationsWithEnergyEntries:]"];
                [v27 logMessage:v26 fromFile:lastPathComponent3 fromFunction:v30 fromLineNumber:2204];

                v31 = PLLogCommon();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v65 = v26;
                  _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v6 = 0x277D3F000;
              }
            }
          }

          v32 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          v33 = MEMORY[0x277CCABB0];
          [v32 doubleValue];
          v35 = [v33 numberWithDouble:-v34];
          [v8 setObject:v35 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        }

        else if ([v9 isEqualToString:@"com.apple.PassbookUIService"])
        {
          [v8 setObject:&unk_282C1CA18 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        }

        givenNameToMappedName = [(PLBatteryBreakdownService *)self givenNameToMappedName];
        v37 = [givenNameToMappedName objectForKeyedSubscript:v9];

        if ([*(v6 + 384) debugEnabled])
        {
          v38 = objc_opt_class();
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1791;
          v56[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v56[4] = v38;
          if (qword_2811F65B8 != -1)
          {
            dispatch_once(&qword_2811F65B8, v56);
          }

          if (byte_2811F6435 == 1)
          {
            v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"mappedName=%@", v37];
            v40 = MEMORY[0x277D3F178];
            v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent4 = [v41 lastPathComponent];
            v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService applyStaticNameTransformationsWithEnergyEntries:]"];
            [v40 logMessage:v39 fromFile:lastPathComponent4 fromFunction:v43 fromLineNumber:2214];

            v44 = PLLogCommon();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v65 = v39;
              _os_log_debug_impl(&dword_21A4C6000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v6 = 0x277D3F000;
          }
        }

        if (v37)
        {
          [v8 setObject:v37 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        }

        if ([(PLBatteryBreakdownService *)self hasHomeKitActivity])
        {
          v45 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v46 = [v45 isEqualToString:@"HomeKit"];

          if (v46)
          {
            v47 = PLLogCommon();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v65 = v8;
              _os_log_debug_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_DEBUG, "Energy Entry before mapping: %@", buf, 0xCu);
            }

            installedBundleIDToDisplayName = [(PLBatteryBreakdownService *)self installedBundleIDToDisplayName];
            v49 = [installedBundleIDToDisplayName objectForKeyedSubscript:@"com.apple.Home"];

            if (v49)
            {
              [v8 setObject:@"com.apple.Home" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            }

            v50 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v8 setObject:v50 forKeyedSubscript:@"HomeKitEnergy"];

            v51 = PLLogCommon();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v65 = v8;
              _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "Energy Entry after mapping: %@", buf, 0xCu);
            }
          }
        }

        ++v7;
      }

      while (v55 != v7);
      v5 = obj;
      v55 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v55);
  }

  return v5;
}

void *__77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6432 = result;
  return result;
}

void *__77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1777(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6433 = result;
  return result;
}

void *__77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1783(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6434 = result;
  return result;
}

void *__77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1791(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6435 = result;
  return result;
}

- (id)bundleIDsForMappedName:(id)name
{
  nameCopy = name;
  givenNameToMappedName = [(PLBatteryBreakdownService *)self givenNameToMappedName];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PLBatteryBreakdownService_bundleIDsForMappedName___block_invoke;
  v10[3] = &unk_2782618B0;
  v11 = nameCopy;
  v6 = nameCopy;
  v7 = [givenNameToMappedName keysOfEntriesPassingTest:v10];

  allObjects = [v7 allObjects];

  return allObjects;
}

- (id)adjustExtensionBackgroundTimeWithEnergyEntries:(id)entries
{
  v16 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [entriesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(entriesCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if (([v9 isEqualToString:@"com.apple.store.Jolly.spotlightindex"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"com.apple.mobilemail.DiagnosticExtension"))
        {
          [v8 setObject:&unk_282C12B88 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          [v8 setObject:&unk_282C12B88 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
        }
      }

      v5 = [entriesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return entriesCopy;
}

- (id)applyDynamicNameTransformationsWithEnergyEntries:(id)entries
{
  v4 = [(PLBatteryBreakdownService *)self mapDeletedAppsWithEnergyEntries:entries];
  v5 = [(PLBatteryBreakdownService *)self mapPluginsToAppsWithEnergyEntries:v4];

  v6 = [(PLBatteryBreakdownService *)self mapGizmoToAppsWithEnergyEntries:v5];

  v7 = [(PLBatteryBreakdownService *)self reaccountExchangeEntriesWithEnergyEntries:v6];

  v8 = [(PLBatteryBreakdownService *)self reaccountBackupRestoreWithEnergyEntries:v7];

  v9 = [(PLBatteryBreakdownService *)self mapCloudDocsToAppsWithEnergyEntries:v8];

  return v9;
}

- (id)mapDeletedAppsWithEnergyEntries:(id)entries
{
  v58 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  deletedAppNames = [(PLBatteryBreakdownService *)self deletedAppNames];
  if ([deletedAppNames count])
  {
  }

  else
  {
    deletedAppClipNames = [(PLBatteryBreakdownService *)self deletedAppClipNames];
    v7 = [deletedAppClipNames count];

    if (!v7)
    {
      goto LABEL_46;
    }
  }

  deletedAppClipNames2 = [(PLBatteryBreakdownService *)self deletedAppClipNames];
  if (![deletedAppClipNames2 count])
  {

LABEL_8:
    deletedAppNames2 = [(PLBatteryBreakdownService *)self deletedAppNames];
    v13 = [deletedAppNames2 count];

    if (v13)
    {
      v11 = @"DeletedApp";
    }

    else
    {
      deletedAppClipNames3 = [(PLBatteryBreakdownService *)self deletedAppClipNames];
      v15 = [deletedAppClipNames3 count];

      v11 = @"DeletedAppClip";
      if (!v15)
      {
        v11 = 0;
      }
    }

    goto LABEL_12;
  }

  deletedAppNames3 = [(PLBatteryBreakdownService *)self deletedAppNames];
  v10 = [deletedAppNames3 count];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = @"DeletedAppAndAppClip";
LABEL_12:
  v47 = v11;
  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v57 = v47;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "Display Name for Deleted entry: %@", buf, 0xCu);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v45 = entriesCopy;
  obj = entriesCopy;
  v17 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v17)
  {
    v18 = v17;
    v48 = *v52;
    do
    {
      v19 = 0;
      do
      {
        if (*v52 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v51 + 1) + 8 * v19);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v21 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __61__PLBatteryBreakdownService_mapDeletedAppsWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v21;
          if (qword_2811F65C0 != -1)
          {
            dispatch_once(&qword_2811F65C0, block);
          }

          if (byte_2811F6436 == 1)
          {
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v20];
            v23 = MEMORY[0x277D3F178];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v24 lastPathComponent];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService mapDeletedAppsWithEnergyEntries:]"];
            [v23 logMessage:v22 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:2279];

            v27 = PLLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v57 = v22;
              _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        deletedAppNames4 = [(PLBatteryBreakdownService *)self deletedAppNames];
        v29 = [v20 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([deletedAppNames4 containsObject:v29])
        {
        }

        else
        {
          deletedAppClipNames4 = [(PLBatteryBreakdownService *)self deletedAppClipNames];
          v31 = [v20 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v32 = [deletedAppClipNames4 containsObject:v31];

          if (!v32)
          {
            goto LABEL_39;
          }
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v33 = objc_opt_class();
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __61__PLBatteryBreakdownService_mapDeletedAppsWithEnergyEntries___block_invoke_1810;
          v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v49[4] = v33;
          if (qword_2811F65C8 != -1)
          {
            dispatch_once(&qword_2811F65C8, v49);
          }

          if (byte_2811F6437 == 1)
          {
            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"this is a deleted app"];
            v35 = MEMORY[0x277D3F178];
            v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v36 lastPathComponent];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService mapDeletedAppsWithEnergyEntries:]"];
            [v35 logMessage:v34 fromFile:lastPathComponent2 fromFunction:v38 fromLineNumber:2282];

            v39 = PLLogCommon();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v57 = v34;
              _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v40 = PLLogCommon();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "This is a deleted entity", buf, 2u);
        }

        [v20 setObject:v47 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
LABEL_39:
        v41 = [v20 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v42 = [v41 containsString:@"Unspecified"];

        if (v42)
        {
          v43 = PLLogCommon();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEFAULT, "AppDeletion : Found an unspecified entry so refactoring", buf, 2u);
          }

          [v20 setObject:@"DeletedApp" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        }

        ++v19;
      }

      while (v18 != v19);
      v18 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v18);
  }

  entriesCopy = v45;
LABEL_46:

  return entriesCopy;
}

void *__61__PLBatteryBreakdownService_mapDeletedAppsWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6436 = result;
  return result;
}

void *__61__PLBatteryBreakdownService_mapDeletedAppsWithEnergyEntries___block_invoke_1810(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6437 = result;
  return result;
}

- (id)mapPluginsToAppsWithEnergyEntries:(id)entries
{
  v54 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = entries;
  v42 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v42)
  {
    v4 = *v46;
    v5 = 0x277D3F000uLL;
    v6 = @"PluginType";
    v40 = *v46;
    do
    {
      v7 = 0;
      do
      {
        if (*v46 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = v6;
        v9 = *(*(&v45 + 1) + 8 * v7);
        if ([*(v5 + 384) debugEnabled])
        {
          v10 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __63__PLBatteryBreakdownService_mapPluginsToAppsWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v10;
          if (qword_2811F65D0 != -1)
          {
            dispatch_once(&qword_2811F65D0, block);
          }

          if (byte_2811F6438 == 1)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v9];
            v12 = MEMORY[0x277D3F178];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v13 lastPathComponent];
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService mapPluginsToAppsWithEnergyEntries:]"];
            [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2305];

            v16 = PLLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v50 = v11;
              _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v4 = v40;
            v5 = 0x277D3F000uLL;
          }
        }

        installedPluginBundleIDToPluginEntry = [(PLBatteryBreakdownService *)self installedPluginBundleIDToPluginEntry];
        v18 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v19 = [installedPluginBundleIDToPluginEntry objectForKeyedSubscript:v18];

        v6 = v8;
        if (v19)
        {
          if ([*(v5 + 384) debugEnabled])
          {
            v20 = objc_opt_class();
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __63__PLBatteryBreakdownService_mapPluginsToAppsWithEnergyEntries___block_invoke_1819;
            v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v43[4] = v20;
            if (qword_2811F65D8 != -1)
            {
              dispatch_once(&qword_2811F65D8, v43);
            }

            if (byte_2811F6439 == 1)
            {
              v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"this is a plugin"];
              v22 = MEMORY[0x277D3F178];
              v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent2 = [v23 lastPathComponent];
              v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService mapPluginsToAppsWithEnergyEntries:]"];
              [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:2310];

              v26 = PLLogCommon();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v50 = v21;
                _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v4 = v40;
              v5 = 0x277D3F000;
              v6 = v8;
            }
          }

          v27 = [v19 objectForKeyedSubscript:@"PluginId"];
          v28 = [v27 isEqualToString:@"com.apple.AppStore.ProductPageExtension"];

          if ((v28 & 1) == 0)
          {
            v29 = [v19 objectForKeyedSubscript:@"PluginParentApp"];
            [v9 setObject:v29 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

            v30 = [v19 objectForKeyedSubscript:v6];
            v31 = [v30 isEqualToString:@"com.apple.watchkit"];

            if (v31)
            {
              v32 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
              [v9 setObject:v32 forKeyedSubscript:@"WatchEnergy"];
            }

            else
            {
              v33 = [v19 objectForKeyedSubscript:v6];
              v34 = [v33 isEqualToString:@"com.apple.widgetkit-extension"];

              if (!v34)
              {
                goto LABEL_28;
              }

              v35 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
              [v9 setObject:v35 forKeyedSubscript:@"ChronoWidgetEnergy"];

              v32 = PLLogCommon();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v36 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                v37 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v37 doubleValue];
                *buf = 138412546;
                v50 = v36;
                v51 = 2048;
                v52 = v38;
                _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "Widget Energy for %@ : %f", buf, 0x16u);
              }
            }

            v6 = v8;
          }
        }

LABEL_28:

        ++v7;
      }

      while (v42 != v7);
      v42 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v42);
  }

  return obj;
}

void *__63__PLBatteryBreakdownService_mapPluginsToAppsWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6438 = result;
  return result;
}

void *__63__PLBatteryBreakdownService_mapPluginsToAppsWithEnergyEntries___block_invoke_1819(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6439 = result;
  return result;
}

- (id)mapGizmoToAppsWithEnergyEntries:(id)entries
{
  v63 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v5 = [entriesCopy countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v56;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v9 = *(*(&v55 + 1) + 8 * i);
        gizmoDaemonToAppBundleID = [(PLBatteryBreakdownService *)self gizmoDaemonToAppBundleID];
        v11 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v12 = [gizmoDaemonToAppBundleID objectForKeyedSubscript:v11];

        if (v12)
        {
          [v9 setObject:v12 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v13 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v9 setObject:v13 forKeyedSubscript:@"WatchEnergy"];
        }
      }

      v6 = [entriesCopy countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v6);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v14 = entriesCopy;
  v15 = [v14 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v52;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v51 + 1) + 8 * j);
        v20 = [v19 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([v20 hasSuffix:@"/watch"])
        {
          v21 = [v20 substringWithRange:{0, objc_msgSend(v20, "length") - 6}];
          [v19 setObject:v21 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          v22 = [v19 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v19 setObject:v22 forKeyedSubscript:@"WatchEnergy"];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v16);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = v14;
  v24 = [v23 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v48;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v48 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v47 + 1) + 8 * k);
        v29 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([v29 hasSuffix:@".watchkitextension"])
        {
          v30 = [v29 substringWithRange:{0, objc_msgSend(v29, "length") - 18}];
          [v28 setObject:v30 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          v31 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v28 setObject:v31 forKeyedSubscript:@"WatchEnergy"];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v25);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v32 = v23;
  v33 = [v32 countByEnumeratingWithState:&v43 objects:v59 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v44;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v43 + 1) + 8 * m);
        gizmoIDSTopicToAppBundleID = [(PLBatteryBreakdownService *)self gizmoIDSTopicToAppBundleID];
        v39 = [v37 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v40 = [gizmoIDSTopicToAppBundleID objectForKeyedSubscript:v39];

        if (v40)
        {
          [v37 setObject:v40 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v41 = [v37 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v37 setObject:v41 forKeyedSubscript:@"WatchEnergy"];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v43 objects:v59 count:16];
    }

    while (v34);
  }

  return v32;
}

- (id)mapCloudDocsToAppsWithEnergyEntries:(id)entries
{
  v27 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [entriesCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = @"com.apple.clouddocs.";
    v8 = @".";
    do
    {
      v9 = 0;
      v21 = v5;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([v11 hasPrefix:v7])
        {
          v12 = [v11 substringFromIndex:{-[__CFString length](v7, "length")}];
          v13 = [v12 rangeOfString:v8];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = v6;
            v16 = v7;
            v17 = entriesCopy;
            v18 = v8;
            v19 = [v12 substringFromIndex:v13 + v14];
            if (v19)
            {
              [v10 setObject:v19 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            }

            v8 = v18;
            entriesCopy = v17;
            v7 = v16;
            v6 = v15;
            v5 = v21;
          }
        }

        ++v9;
      }

      while (v5 != v9);
      v5 = [entriesCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  return entriesCopy;
}

- (id)reaccountExchangeEntriesWithEnergyEntries:(id)entries
{
  v59 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v4 = entriesCopy;
  if (entriesCopy && [entriesCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v53;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v52 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v12)
          {
            v13 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v11 forKeyedSubscript:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v8);
    }

    v14 = [dictionary objectForKeyedSubscript:@"com.apple.activesync"];
    v15 = v14;
    if (v14 && ([v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "doubleValue"), v18 = v17, v16, v18 != 0.0))
    {
      v38 = v15;
      v39 = v4;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      v48 = 0u;
      v20 = [&unk_282C15CD8 countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v49;
        v23 = 0.0;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v49 != v22)
            {
              objc_enumerationMutation(&unk_282C15CD8);
            }

            v25 = [dictionary objectForKeyedSubscript:*(*(&v48 + 1) + 8 * j)];
            v26 = v25;
            if (v25)
            {
              v27 = [v25 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
              [v27 doubleValue];
              v29 = v28;

              if (v29 >= 0.0)
              {
                v30 = v29;
              }

              else
              {
                v30 = 0.0;
              }

              v23 = v23 + v30;
            }
          }

          v21 = [&unk_282C15CD8 countByEnumeratingWithState:&v48 objects:v57 count:16];
        }

        while (v21);
      }

      else
      {
        v23 = 0.0;
      }

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v31 = [&unk_282C15CD8 countByEnumeratingWithState:&v44 objects:v56 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v45;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v45 != v33)
            {
              objc_enumerationMutation(&unk_282C15CD8);
            }

            v35 = [dictionary objectForKeyedSubscript:*(*(&v44 + 1) + 8 * k)];
            v36 = v35;
            if (v35)
            {
              v40[0] = MEMORY[0x277D85DD0];
              v40[1] = 3221225472;
              v40[2] = __71__PLBatteryBreakdownService_reaccountExchangeEntriesWithEnergyEntries___block_invoke;
              v40[3] = &unk_2782618D8;
              v41 = v35;
              v42 = v18;
              v43 = v23;
              [v41 enumerateKeysAndObjectsUsingBlock:v40];
            }
          }

          v32 = [&unk_282C15CD8 countByEnumeratingWithState:&v44 objects:v56 count:16];
        }

        while (v32);
      }

      v19 = [v6 mutableCopy];
      v15 = v38;
      [v19 removeObject:v38];
      v4 = v39;
    }

    else
    {
      v19 = v6;
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  return v19;
}

void __71__PLBatteryBreakdownService_reaccountExchangeEntriesWithEnergyEntries___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)reaccountBackupRestoreWithEnergyEntries:(id)entries
{
  v48 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v4 = entriesCopy;
  if (entriesCopy && [entriesCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v12)
          {
            v13 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v11 forKeyedSubscript:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
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
      block[2] = __69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v16;
      if (qword_2811F65E0 != -1)
      {
        dispatch_once(&qword_2811F65E0, block);
      }

      if (byte_2811F643A == 1)
      {
        v34 = v15;
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"backupEnergyEntry=%@, restoreEnergyEntry=%@", v14, v15];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService reaccountBackupRestoreWithEnergyEntries:]"];
        [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:2473];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v17;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v15 = v34;
      }
    }

    if (v14 && v15)
    {
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppNameKey"];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke_1872;
      v37[3] = &unk_27825B2D0;
      v23 = v14;
      v38 = v23;
      v24 = v15;
      v39 = v24;
      [v23 enumerateKeysAndObjectsUsingBlock:v37];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v25 = objc_opt_class();
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke_2;
        v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v36[4] = v25;
        if (qword_2811F65E8 != -1)
        {
          dispatch_once(&qword_2811F65E8, v36);
        }

        if (byte_2811F643B == 1)
        {
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"combined backupEnergyEntry=%@", v23];
          v35 = MEMORY[0x277D3F178];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
          lastPathComponent2 = [v27 lastPathComponent];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService reaccountBackupRestoreWithEnergyEntries:]"];
          [v35 logMessage:v26 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:2485];

          v30 = v26;
          v31 = PLLogCommon();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v46 = v30;
            _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v32 = [v6 mutableCopy];
      [v32 removeObject:v24];
    }

    else
    {
      v32 = v6;
    }
  }

  else
  {
    v32 = MEMORY[0x277CBEBF8];
  }

  return v32;
}

void *__69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F643A = result;
  return result;
}

void __69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke_1872(uint64_t a1, void *a2, void *a3)
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

void *__69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F643B = result;
  return result;
}

- (id)combineDuplicatesWithEnergyEntries:(id)entries
{
  v50 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = entriesCopy;
  v37 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v37)
  {
    v36 = *v44;
    v34 = dictionary;
    do
    {
      v5 = 0;
      do
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v43 + 1) + 8 * v5);
        v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v8 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v8;
          if (qword_2811F65F0 != -1)
          {
            dispatch_once(&qword_2811F65F0, block);
          }

          if (byte_2811F643C == 1)
          {
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"name=%@", v7];
            v10 = MEMORY[0x277D3F178];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v11 lastPathComponent];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService combineDuplicatesWithEnergyEntries:]"];
            [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:2496];

            v14 = PLLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v48 = v9;
              _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            dictionary = v34;
          }
        }

        if (v7)
        {
          v15 = [dictionary objectForKeyedSubscript:v7];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v16 = objc_opt_class();
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_1883;
            v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v41[4] = v16;
            if (qword_2811F65F8 != -1)
            {
              dispatch_once(&qword_2811F65F8, v41);
            }

            if (byte_2811F643D == 1)
            {
              v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"storedEnergyEntry=%@", v15];
              v18 = MEMORY[0x277D3F178];
              v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent2 = [v19 lastPathComponent];
              v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService combineDuplicatesWithEnergyEntries:]"];
              [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:2500];

              v22 = PLLogCommon();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v48 = v17;
                _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              dictionary = v34;
            }
          }

          if (v15)
          {
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_1887;
            v39[3] = &unk_278261900;
            v40 = v15;
            [v6 enumerateKeysAndObjectsUsingBlock:v39];
          }

          else
          {
            [dictionary setObject:v6 forKeyedSubscript:v7];
          }

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v23 = objc_opt_class();
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_2;
            v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v38[4] = v23;
            if (qword_2811F6600 != -1)
            {
              dispatch_once(&qword_2811F6600, v38);
            }

            if (byte_2811F643E == 1)
            {
              v24 = MEMORY[0x277CCACA8];
              v25 = [dictionary objectForKeyedSubscript:v7];
              v26 = [v24 stringWithFormat:@"nameToEnergyEntry[name]=%@", v25];

              v27 = MEMORY[0x277D3F178];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent3 = [v28 lastPathComponent];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService combineDuplicatesWithEnergyEntries:]"];
              [v27 logMessage:v26 fromFile:lastPathComponent3 fromFunction:v30 fromLineNumber:2528];

              v31 = PLLogCommon();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v48 = v26;
                _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }
        }

        ++v5;
      }

      while (v37 != v5);
      v37 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v37);
  }

  allValues = [dictionary allValues];

  return allValues;
}

void *__64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F643C = result;
  return result;
}

void *__64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_1883(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F643D = result;
  return result;
}

void __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_1887(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v13 isEqualToString:@"NotificationInfo"])
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"NotificationInfo"];
    v7 = v6;
    if (!v5 || v6)
    {
      [v6 combineWith:v5];
    }

    else
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:@"NotificationInfo"];
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v10 = v9;
    v7 = [*(a1 + 32) objectForKeyedSubscript:v13];
    [v7 doubleValue];
    v12 = [v8 numberWithDouble:v10 + v11];
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v13];

LABEL_9:
  }
}

void *__64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F643E = result;
  return result;
}

- (id)determineDisplayNamesWithEnergyEntries:(id)entries
{
  v42 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [entriesCopy countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    v31 = *v36;
    selfCopy = self;
    do
    {
      v8 = 0;
      v32 = v6;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v11 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __68__PLBatteryBreakdownService_determineDisplayNamesWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v11;
          if (qword_2811F6608 != -1)
          {
            dispatch_once(&qword_2811F6608, block);
          }

          if (byte_2811F643F == 1)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v10];
            v13 = MEMORY[0x277D3F178];
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v14 lastPathComponent];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService determineDisplayNamesWithEnergyEntries:]"];
            [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:2536];

            v17 = PLLogCommon();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v40 = v12;
              _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v6 = v32;
            v7 = v31;
          }
        }

        installedBundleIDToDisplayName = [(PLBatteryBreakdownService *)self installedBundleIDToDisplayName];
        v19 = [installedBundleIDToDisplayName objectForKeyedSubscript:v10];

        if ([(__CFString *)v10 isEqualToString:@"com.apple.Bridge"])
        {

          v19 = @"Apple Watch";
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v20 = objc_opt_class();
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __68__PLBatteryBreakdownService_determineDisplayNamesWithEnergyEntries___block_invoke_1898;
          v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v33[4] = v20;
          if (qword_2811F6610 != -1)
          {
            dispatch_once(&qword_2811F6610, v33);
          }

          if (byte_2811F6440 == 1)
          {
            v21 = entriesCopy;
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayName=%@", v19];
            v23 = MEMORY[0x277D3F178];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v24 lastPathComponent];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService determineDisplayNamesWithEnergyEntries:]"];
            [v23 logMessage:v22 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:2542];

            v27 = PLLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v40 = v22;
              _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            entriesCopy = v21;
            self = selfCopy;
            v6 = v32;
            v7 = v31;
          }
        }

        if (v19)
        {
          v28 = v19;
        }

        else
        {
          v28 = v10;
        }

        [v9 setObject:v28 forKeyedSubscript:@"PLBatteryUIAppNameKey"];

        ++v8;
      }

      while (v6 != v8);
      v6 = [entriesCopy countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v6);
  }

  return entriesCopy;
}

void *__68__PLBatteryBreakdownService_determineDisplayNamesWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F643F = result;
  return result;
}

void *__68__PLBatteryBreakdownService_determineDisplayNamesWithEnergyEntries___block_invoke_1898(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6440 = result;
  return result;
}

- (id)filterWithEnergyEntries:(id)entries withQueryType:(int)type
{
  v60 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  array = [MEMORY[0x277CBEB18] array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = entriesCopy;
  v48 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v48)
  {
    v47 = *v54;
    v7 = 0x277D3F000uLL;
    typeCopy = type;
    selfCopy = self;
    do
    {
      v8 = 0;
      do
      {
        if (*v54 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v53 + 1) + 8 * v8);
        if ([*(v7 + 384) debugEnabled])
        {
          v10 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v10;
          if (qword_2811F6618 != -1)
          {
            dispatch_once(&qword_2811F6618, block);
          }

          if (byte_2811F6441 == 1)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v9];
            v12 = MEMORY[0x277D3F178];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v13 lastPathComponent];
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterWithEnergyEntries:withQueryType:]"];
            [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2552];

            v16 = PLLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v58 = v11;
              _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v17 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v18 = [(PLBatteryBreakdownService *)self appTypeForName:v17];
        if ([*(v7 + 384) debugEnabled])
        {
          v19 = objc_opt_class();
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1904;
          v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v51[4] = v19;
          if (qword_2811F6620 != -1)
          {
            dispatch_once(&qword_2811F6620, v51);
          }

          if (byte_2811F6442 == 1)
          {
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"appType=%i", v18];
            v21 = MEMORY[0x277D3F178];
            v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v22 lastPathComponent];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterWithEnergyEntries:withQueryType:]"];
            [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:2558];

            v25 = PLLogCommon();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v58 = v20;
              _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = selfCopy;
            v7 = 0x277D3F000uLL;
          }
        }

        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
        [v9 setObject:v26 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];

        v27 = [(PLBatteryBreakdownService *)self minimumRequiredQueryTypeForAppType:v18];
        if ([*(v7 + 384) debugEnabled])
        {
          v28 = objc_opt_class();
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1910;
          v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v50[4] = v28;
          if (qword_2811F6628 != -1)
          {
            dispatch_once(&qword_2811F6628, v50);
          }

          if (byte_2811F6443 == 1)
          {
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"minimumRequiredQueryType=%i", v27];
            v30 = MEMORY[0x277D3F178];
            v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent3 = [v31 lastPathComponent];
            v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterWithEnergyEntries:withQueryType:]"];
            [v30 logMessage:v29 fromFile:lastPathComponent3 fromFunction:v33 fromLineNumber:2564];

            v34 = PLLogCommon();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v58 = v29;
              _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            type = typeCopy;
            self = selfCopy;
            v7 = 0x277D3F000uLL;
          }
        }

        if (type == 4)
        {
          if ((v18 & 0xFFFFFFFB) != 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v27 > type)
          {
            goto LABEL_39;
          }

          if ([*(v7 + 384) debugEnabled])
          {
            v35 = objc_opt_class();
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1916;
            v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v49[4] = v35;
            if (qword_2811F6630 != -1)
            {
              dispatch_once(&qword_2811F6630, v49);
            }

            if (byte_2811F6444 == 1)
            {
              v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"adding entry"];
              v37 = MEMORY[0x277D3F178];
              v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent4 = [v38 lastPathComponent];
              v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterWithEnergyEntries:withQueryType:]"];
              [v37 logMessage:v36 fromFile:lastPathComponent4 fromFunction:v40 fromLineNumber:2575];

              v41 = PLLogCommon();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v58 = v36;
                _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              type = typeCopy;
              self = selfCopy;
              v7 = 0x277D3F000;
            }
          }
        }

        [array addObject:v9];
LABEL_39:

        ++v8;
      }

      while (v48 != v8);
      v48 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v48);
  }

  return array;
}

void *__67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6441 = result;
  return result;
}

void *__67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1904(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6442 = result;
  return result;
}

void *__67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1910(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6443 = result;
  return result;
}

void *__67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1916(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6444 = result;
  return result;
}

- (int)appTypeForName:(id)name
{
  nameCopy = name;
  rootNodeNames = [(PLBatteryBreakdownService *)self rootNodeNames];
  v6 = [rootNodeNames containsObject:nameCopy];

  if (v6)
  {
    v7 = 5;
  }

  else
  {
    nonAppNames = [(PLBatteryBreakdownService *)self nonAppNames];
    v9 = [nonAppNames containsObject:nameCopy];

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      webAppNames = [(PLBatteryBreakdownService *)self webAppNames];
      v11 = [webAppNames containsObject:nameCopy];

      if (v11)
      {
        v7 = 4;
      }

      else
      {
        installedBundleIDToDisplayName = [(PLBatteryBreakdownService *)self installedBundleIDToDisplayName];
        v13 = [installedBundleIDToDisplayName objectForKeyedSubscript:nameCopy];
        v14 = v13 == 0;

        v7 = 2 * v14;
      }
    }
  }

  return v7;
}

- (int)minimumRequiredQueryTypeForAppType:(int)type
{
  if (type == 5)
  {
    return 3;
  }

  else
  {
    return 2 * (type == 2);
  }
}

- (id)adjustForegroundTimesWithEnergyEntries:(id)entries
{
  v17 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [entriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v10 = [&unk_282C19340 objectForKeyedSubscript:v9];
        if (v10)
        {
          [v8 setObject:v10 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        }
      }

      v5 = [entriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return entriesCopy;
}

- (id)adjustBackgroundTimesWithEnergyEntries:(id)entries
{
  v17 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [entriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v10 = [&unk_282C19368 objectForKeyedSubscript:v9];
        if (v10)
        {
          [v8 setObject:v10 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        }
      }

      v5 = [entriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return entriesCopy;
}

- (id)qualifiersWithEnergyEntry:(id)entry bucketSize:(double)size andTotalEnergy:(double)energy
{
  v228 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    v219[0] = MEMORY[0x277D85DD0];
    v219[1] = 3221225472;
    v219[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke;
    v219[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v219[4] = v8;
    v9 = v219;
    if (qword_2811F6638 != -1)
    {
      dispatch_once(&qword_2811F6638, v9);
    }

    if (byte_2811F6445 == 1)
    {
      entryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", entryCopy];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:]"];
      [v11 logMessage:entryCopy fromFile:lastPathComponent fromFunction:v14 fromLineNumber:2702];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v221 = entryCopy;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (entryCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v17 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
    v18 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v18 doubleValue];
    v20 = v19;

    v21 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
    [v21 doubleValue];
    v23 = v22;

    v24 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
    [v24 doubleValue];
    v26 = v25;

    v27 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
    [v27 doubleValue];
    v29 = v28;

    v30 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
    [v30 doubleValue];
    v32 = v31;

    v33 = v23 + v26;
    [MEMORY[0x277D3F058] defaultBatteryEnergyCapacity];
    v35 = v34 > 0.0 && v20 / v34 > dbl_21AA22260[size > 3600.0];
    if (v33 > 0.0)
    {
      v37 = (v29 + v32) / v33;
      [MEMORY[0x277D3F258] containerPath];
      v38 = _CFPreferencesCopyValueWithContainer();
      v39 = v38;
      if (v38)
      {
        [v38 doubleValue];
        v41 = v40;
      }

      else
      {
        v41 = 0.8;
      }

      if (v37 >= v41 && !v35)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v42 = objc_opt_class();
          v218[0] = MEMORY[0x277D85DD0];
          v218[1] = 3221225472;
          v218[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1939;
          v218[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v218[4] = v42;
          v43 = v218;
          if (qword_2811F6640 != -1)
          {
            dispatch_once(&qword_2811F6640, v43);
          }

          if (byte_2811F6446 == 1)
          {
            v44 = MEMORY[0x277CCACA8];
            v45 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
            v46 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
            v47 = [MEMORY[0x277CCABB0] numberWithDouble:v32];
            v48 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
            v49 = [v44 stringWithFormat:@"PluggedInQualifier: Adding plugged in qualifier based on BGTime %@, FGTime %@, BGPluggedInTime %@, FGPluggedInTime %@", v45, v46, v47, v48];

            v50 = MEMORY[0x277D3F178];
            v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v51 lastPathComponent];
            v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:]"];
            [v50 logMessage:v49 fromFile:lastPathComponent2 fromFunction:v53 fromLineNumber:2732];

            v54 = PLLogCommon();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v221 = v49;
              _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        [array addObject:&unk_282C12C48];
      }
    }

    if (v20 == 0.0)
    {
      v36 = array;
    }

    else
    {
      v55 = [&unk_282C15CF0 objectAtIndexedSubscript:1];
      v56 = [entryCopy objectForKeyedSubscript:v55];
      [v56 doubleValue];
      v58 = v57;

      v59 = v58 / v20;
      if (v58 / v20 > 0.33 && [objc_opt_class() canSetQualifier:1 forBundleID:v17])
      {
        [array addObject:&unk_282C12C60];
      }

      v60 = [&unk_282C15D08 objectAtIndexedSubscript:{2, v59}];
      v61 = [entryCopy objectForKeyedSubscript:v60];
      [v61 doubleValue];
      v63 = v62;

      v64 = v20 - v63;
      v65 = v64 / v20;
      if (v64 / v20 > 0.5 && [objc_opt_class() canSetQualifier:2 forBundleID:v17])
      {
        debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
        if (v23 < 300.0 || (v67 = v23 / v26, v23 / v26 < 0.33))
        {
          if (debugEnabled)
          {
            v79 = objc_opt_class();
            v216[0] = MEMORY[0x277D85DD0];
            v216[1] = 3221225472;
            v216[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1964;
            v216[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v216[4] = v79;
            v80 = v216;
            if (qword_2811F6650 != -1)
            {
              dispatch_once(&qword_2811F6650, v80);
            }

            if (byte_2811F6448 == 1)
            {
              v81 = MEMORY[0x277CCACA8];
              v82 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
              v83 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
              v84 = [v81 stringWithFormat:@"BGQualifier: Removing qualifier based on BGTime %@, FGTime %@", v82, v83];

              v85 = MEMORY[0x277D3F178];
              v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent3 = [v86 lastPathComponent];
              v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:]"];
              [v85 logMessage:v84 fromFile:lastPathComponent3 fromFunction:v88 fromLineNumber:2754];

              v89 = PLLogCommon();
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v221 = v84;
                _os_log_debug_impl(&dword_21A4C6000, v89, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }
        }

        else
        {
          if (debugEnabled)
          {
            v68 = objc_opt_class();
            v217[0] = MEMORY[0x277D85DD0];
            v217[1] = 3221225472;
            v217[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1956;
            v217[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v217[4] = v68;
            v69 = v217;
            if (qword_2811F6648 != -1)
            {
              dispatch_once(&qword_2811F6648, v69);
            }

            if (byte_2811F6447 == 1)
            {
              v70 = MEMORY[0x277CCACA8];
              v71 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
              v72 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
              v73 = [v70 stringWithFormat:@"BGQualifier: Adding qualifier based on BGTime %@, FGTime %@", v71, v72];

              v74 = MEMORY[0x277D3F178];
              v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent4 = [v75 lastPathComponent];
              v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:]"];
              [v74 logMessage:v73 fromFile:lastPathComponent4 fromFunction:v77 fromLineNumber:2751];

              v78 = PLLogCommon();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v221 = v73;
                _os_log_debug_impl(&dword_21A4C6000, v78, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          [array addObject:{&unk_282C12C78, v67}];
        }
      }

      if ([v17 isEqualToString:@"com.apple.findmy"])
      {
        v90 = +[PLBatteryBreakdownService defaults];
        v91 = [v90 objectForKeyedSubscript:@"energyRatioIT"];
        [v91 doubleValue];
        v93 = v92;

        v94 = [&unk_282C15D20 objectAtIndexedSubscript:59];
        v95 = [entryCopy objectForKeyedSubscript:v94];
        [v95 doubleValue];
        v97 = v96;

        if (v97 / v20 > v93 && ([array containsObject:{&unk_282C12C78, v97 / v20}] & 1) == 0)
        {
          [array addObject:&unk_282C12C78];
        }

        v98 = PLLogCommon();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v221 = array;
          _os_log_debug_impl(&dword_21A4C6000, v98, OS_LOG_TYPE_DEBUG, "IT Qualifier: %@", buf, 0xCu);
        }
      }

      v215[0] = MEMORY[0x277D85DD0];
      v215[1] = 3221225472;
      v215[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1972;
      v215[3] = &unk_2782591D0;
      v215[4] = self;
      v99 = v215;
      if (qword_2811F6658 != -1)
      {
        dispatch_once(&qword_2811F6658, v99);
      }

      v100 = *&qword_2811F6660;
      v101 = [&unk_282C15D38 objectAtIndexedSubscript:48];
      v102 = [entryCopy objectForKeyedSubscript:v101];
      [v102 doubleValue];
      v104 = v103;

      v105 = [&unk_282C15D50 objectAtIndexedSubscript:12];
      v106 = [entryCopy objectForKeyedSubscript:v105];
      [v106 doubleValue];
      v108 = v104 + v107;

      v109 = [&unk_282C15D68 objectAtIndexedSubscript:13];
      v110 = [entryCopy objectForKeyedSubscript:v109];
      [v110 doubleValue];
      v112 = v108 + v111;

      v113 = [&unk_282C15D80 objectAtIndexedSubscript:15];
      v114 = [&unk_282C15D98 objectAtIndexedSubscript:2];
      v115 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v113 withRootNodeName:v114];

      v116 = [entryCopy objectForKeyedSubscript:v115];
      [v116 doubleValue];
      v118 = v112 + v117;

      v119 = [&unk_282C15DB0 objectAtIndexedSubscript:15];
      v120 = [&unk_282C15DC8 objectAtIndexedSubscript:7];
      v121 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v119 withRootNodeName:v120];

      v122 = [entryCopy objectForKeyedSubscript:v121];
      [v122 doubleValue];
      v124 = v118 + v123;

      v125 = [&unk_282C15DE0 objectAtIndexedSubscript:15];
      v126 = [&unk_282C15DF8 objectAtIndexedSubscript:9];
      v127 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v125 withRootNodeName:v126];

      v128 = [entryCopy objectForKeyedSubscript:v127];
      [v128 doubleValue];
      v130 = v124 + v129;

      v131 = [&unk_282C15E10 objectAtIndexedSubscript:15];
      v132 = [&unk_282C15E28 objectAtIndexedSubscript:52];
      v133 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v131 withRootNodeName:v132];

      v134 = [entryCopy objectForKeyedSubscript:v133];
      [v134 doubleValue];
      v136 = v130 + v135;

      v137 = [&unk_282C15E40 objectAtIndexedSubscript:15];
      v138 = [&unk_282C15E58 objectAtIndexedSubscript:54];
      v139 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v137 withRootNodeName:v138];

      v140 = [entryCopy objectForKeyedSubscript:v139];
      [v140 doubleValue];
      v142 = v136 + v141;

      v143 = PLLogCommon();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v221 = v17;
        v222 = 2048;
        v223 = v142;
        _os_log_debug_impl(&dword_21A4C6000, v143, OS_LOG_TYPE_DEBUG, "%@ locEnergy: %.3f", buf, 0x16u);
      }

      if (v142 / v20 > v100 && [objc_opt_class() canSetQualifier:3 forBundleID:v17])
      {
        v214[0] = MEMORY[0x277D85DD0];
        v214[1] = 3221225472;
        v214[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2014;
        v214[3] = &unk_2782591D0;
        v214[4] = self;
        v144 = v214;
        if (qword_2811F6668 != -1)
        {
          dispatch_once(&qword_2811F6668, v144);
        }

        v145 = *&qword_2811F6670;
        v146 = [&unk_282C15E70 objectAtIndexedSubscript:15];
        v147 = [entryCopy objectForKeyedSubscript:v146];
        [v147 doubleValue];
        v149 = v148;

        v150 = PLLogCommon();
        if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v221 = v17;
          v222 = 2048;
          v223 = v149;
          _os_log_debug_impl(&dword_21A4C6000, v150, OS_LOG_TYPE_DEBUG, "%@ bgLocEnergy: %.3f", buf, 0x16u);
        }

        if (v149 / v64 > v145 && [array containsObject:{&unk_282C12C78, v149 / v64}])
        {
          [array removeObject:&unk_282C12C78];
          v151 = &unk_282C12C90;
        }

        else
        {
          v151 = &unk_282C12CA8;
        }

        [array addObject:v151];
      }

      v213[0] = MEMORY[0x277D85DD0];
      v213[1] = 3221225472;
      v213[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2024;
      v213[3] = &unk_2782591D0;
      v213[4] = self;
      v152 = v213;
      if (qword_2811F6678 != -1)
      {
        dispatch_once(&qword_2811F6678, v152);
      }

      v153 = *&qword_2811F6680;
      v212[0] = MEMORY[0x277D85DD0];
      v212[1] = 3221225472;
      v212[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2;
      v212[3] = &unk_2782591D0;
      v212[4] = self;
      v154 = v212;
      if (qword_2811F6688 != -1)
      {
        dispatch_once(&qword_2811F6688, v154);
      }

      v155 = *&qword_2811F6690;
      v156 = [entryCopy objectForKeyedSubscript:@"NotificationInfo"];

      if (v156 && [objc_opt_class() canSetQualifier:9 forBundleID:v17])
      {
        v157 = [entryCopy objectForKeyedSubscript:@"NotificationInfo"];
        [v157 notificationEnergy];
        v159 = v158;
        [MEMORY[0x277D3F258] defaultBatteryEnergyCapacity];
        v161 = v159 * 100.0 / v160;
        v162 = PLLogCommon();
        if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v221 = v17;
          v222 = 2112;
          v223 = *&v157;
          v224 = 2048;
          v225 = v159;
          v226 = 2048;
          v227 = v161;
          _os_log_debug_impl(&dword_21A4C6000, v162, OS_LOG_TYPE_DEBUG, "%@ notificationInfo: %@, energy: %.3f, batteryPercent %.3f", buf, 0x2Au);
        }

        if (v159 / v20 > v153 || v161 > v155)
        {
          [array addObject:{&unk_282C12CC0, v159 / v20}];
        }
      }

      v163 = [&unk_282C15E88 objectAtIndexedSubscript:3];
      v164 = [entryCopy objectForKeyedSubscript:v163];
      [v164 doubleValue];
      v166 = v165;

      v167 = v166 / v20;
      if (v166 / v20 > 0.33 && [objc_opt_class() canSetQualifier:4 forBundleID:v17])
      {
        [array addObject:&unk_282C12CD8];
      }

      v168 = [&unk_282C15EA0 objectAtIndexedSubscript:{4, v167}];
      v169 = [entryCopy objectForKeyedSubscript:v168];
      [v169 doubleValue];
      v171 = v170;

      v172 = v171 / v20;
      if (v171 / v20 > 0.33 && [objc_opt_class() canSetQualifier:5 forBundleID:v17])
      {
        [array addObject:&unk_282C12CF0];
      }

      v173 = [&unk_282C15EB8 objectAtIndexedSubscript:{14, v172}];
      v174 = [entryCopy objectForKeyedSubscript:v173];
      [v174 doubleValue];
      v176 = v175;

      v177 = [&unk_282C15ED0 objectAtIndexedSubscript:15];
      v178 = [entryCopy objectForKeyedSubscript:v177];
      [v178 doubleValue];
      v180 = v179;

      v181 = [&unk_282C15EE8 objectAtIndexedSubscript:55];
      v182 = [entryCopy objectForKeyedSubscript:v181];
      [v182 doubleValue];
      v184 = v183;

      if ((v176 + v180 + v184) / v20 > 0.03 && [objc_opt_class() canSetQualifier:7 forBundleID:v17])
      {
        [array addObject:&unk_282C12D08];
      }

      v185 = [entryCopy objectForKeyedSubscript:@"WatchEnergy"];
      [v185 doubleValue];
      v187 = v186;

      if ([(PLBatteryBreakdownService *)self showGizmoQualifier])
      {
        v188 = v187 / v20;
        if (v187 / v20 > 0.33)
        {
          if ([objc_opt_class() canSetQualifier:10 forBundleID:v17])
          {
            [array addObject:&unk_282C12D20];
          }
        }
      }

      v189 = [entryCopy objectForKeyedSubscript:{@"ChronoWidgetEnergy", v188}];
      [v189 doubleValue];
      v191 = v190;

      v192 = v191 / v20;
      if (v191 / v20 > 0.33 && [objc_opt_class() canSetQualifier:12 forBundleID:v17])
      {
        [array addObject:&unk_282C12D38];
      }

      v193 = [&unk_282C15F00 objectAtIndexedSubscript:{10, v192}];
      v194 = [entryCopy objectForKeyedSubscript:v193];
      [v194 doubleValue];
      v196 = v195;

      v197 = v196 / v20;
      if (v196 / v20 > 0.33 && [objc_opt_class() canSetQualifier:9 forBundleID:v17])
      {
        [array addObject:&unk_282C12CC0];
      }

      v198 = [entryCopy objectForKeyedSubscript:{@"PLBatteryUIAppBundleIDKey", v197}];
      v199 = [v198 isEqualToString:@"com.apple.Home"];

      if (v199)
      {
        v200 = [entryCopy objectForKeyedSubscript:@"HomeKitEnergy"];
        [v200 doubleValue];
        v202 = v201;

        if (v202 / v20 > 0.33)
        {
          if ([objc_opt_class() canSetQualifier:13 forBundleID:v17])
          {
            [array addObject:&unk_282C12D50];
          }
        }
      }

      v203 = [objc_opt_class() combineQualifiers:array];
      if ([array containsObject:&unk_282C12D08])
      {
        v204 = [array containsObject:&unk_282C12C78];
        if (v65 > 0.5 && v204 && ([v203 containsObject:&unk_282C12C48] & 1) == 0)
        {
          v205 = [v203 arrayByAddingObject:&unk_282C12C78];

          v203 = v205;
        }
      }

      array2 = [MEMORY[0x277CBEB18] array];
      if ([v203 containsObject:&unk_282C12C48])
      {
        [array2 addObject:&unk_282C12C48];
      }

      if ([v203 count])
      {
        v207 = 0;
        do
        {
          v208 = [v203 objectAtIndexedSubscript:v207];
          intValue = [v208 intValue];

          if (intValue != 11)
          {
            v210 = [v203 objectAtIndexedSubscript:v207];
            [array2 addObject:v210];
          }

          if ([array2 count] == 2)
          {
            break;
          }

          ++v207;
        }

        while ([v203 count] > v207);
      }

      v36 = array2;
    }
  }

  else
  {
    v36 = MEMORY[0x277CBEBF8];
  }

  return v36;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6445 = result;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1939(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6446 = result;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1956(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6447 = result;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1964(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6448 = result;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1972(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"energyRatioLocation"];
  qword_2811F6660 = v2;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2014(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"energyRatioBackgroundLocation"];
  qword_2811F6670 = v2;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2024(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"energyRatioNotifications"];
  qword_2811F6680 = v2;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"energyAbsoluteNotifications"];
  qword_2811F6690 = v2;
  return result;
}

+ (BOOL)canSetQualifier:(int64_t)qualifier forBundleID:(id)d
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

  if (([dCopy isEqualToString:@"Backup & Restore"] & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"Backup") & 1) == 0 && !objc_msgSend(dCopy, "isEqualToString:", @"Restore"))
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

LABEL_41:
              LOBYTE(v10) = 1;
              goto LABEL_10;
            }

            v17 = [dCopy isEqualToString:@"com.apple.camera"];
            if ((qualifier != 10 || (v17 & 1) == 0) && ([dCopy isEqualToString:@"PoorCellCondition"] & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.Preferences") & 1) == 0)
            {
              goto LABEL_41;
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

+ (id)combineQualifiers:(id)qualifiers
{
  qualifiersCopy = qualifiers;
  v4 = qualifiersCopy;
  if (qualifiersCopy && [qualifiersCopy count])
  {
    v5 = [MEMORY[0x277CBEB58] setWithArray:v4];
    if ([v5 containsObject:&unk_282C12C78] && objc_msgSend(v5, "containsObject:", &unk_282C12D08))
    {
      [v5 removeObject:&unk_282C12C78];
    }

    if ([v5 containsObject:&unk_282C12C78] && objc_msgSend(v5, "containsObject:", &unk_282C12C48))
    {
      [v5 removeObject:&unk_282C12C78];
    }

    if ([v5 containsObject:&unk_282C12C90] && objc_msgSend(v5, "containsObject:", &unk_282C12C48))
    {
      [v5 removeObject:&unk_282C12C90];
    }

    if ([v5 containsObject:&unk_282C12C78] && objc_msgSend(v5, "containsObject:", &unk_282C12C60))
    {
      [v5 removeObject:&unk_282C12C78];
    }

    if ([v5 containsObject:&unk_282C12D08] && objc_msgSend(v5, "containsObject:", &unk_282C12CD8))
    {
      [v5 removeObject:&unk_282C12D08];
    }

    if ([v5 containsObject:&unk_282C12C78] && objc_msgSend(v5, "containsObject:", &unk_282C12CF0))
    {
      [v5 removeObject:&unk_282C12C78];
    }

    if ([v5 containsObject:&unk_282C12CF0] && objc_msgSend(v5, "containsObject:", &unk_282C12CD8))
    {
      [v5 removeObject:&unk_282C12CF0];
    }

    if ([v5 containsObject:&unk_282C12C78] && objc_msgSend(v5, "containsObject:", &unk_282C12D20))
    {
      [v5 removeObject:&unk_282C12C78];
    }

    if ([v5 containsObject:&unk_282C12C78] && objc_msgSend(v5, "containsObject:", &unk_282C12D50))
    {
      [v5 removeObject:&unk_282C12C78];
    }

    if ([v5 containsObject:&unk_282C12C78] && objc_msgSend(v5, "containsObject:", &unk_282C12CC0))
    {
      [v5 removeObject:&unk_282C12C78];
    }

    allObjects = [v5 allObjects];
  }

  else
  {
    allObjects = MEMORY[0x277CBEBF8];
  }

  return allObjects;
}

- (BOOL)shouldShowBatteryBreakdownWithTotalSumEnergy:(double)energy withtotalSumEnergyRatioCutOff:(double)off
{
  v7 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLBatteryAgent" withType:*MEMORY[0x277D3F5C8] withName:@"Battery"];
  v8 = objc_msgSend_storage(self);
  v9 = [v8 lastEntryForKey:v7];

  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"DesignCapacity"];
    [v10 doubleValue];
    v12 = v11;

    v13 = [v9 objectForKeyedSubscript:@"Voltage"];
    [v13 doubleValue];
    v15 = v14 / 1000.0;

    v16 = v12 * v15 * off < energy;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)wasGizmoConnectedInRange:(_PLTimeIntervalRange)range
{
  var0 = range.var0;
  v22 = *MEMORY[0x277D85DE8];
  v4 = range.var0 + range.var1;
  v5 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLIdentityServicesAgent" withType:*MEMORY[0x277D3F5D0] withName:@"LocalLinkType"];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"select * from %@ where linkType=1 and timestamp>=%f and timestamp<=%f limit 1", v5, *&var0, *&v4];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  v8 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
  v9 = [v8 entriesForKey:v5 withQuery:v6];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__PLBatteryBreakdownService_wasGizmoConnectedInRange___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F6698 != -1)
    {
      dispatch_once(&qword_2811F6698, block);
    }

    if (byte_2811F6449 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Query Result %@", v9];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService wasGizmoConnectedInRange:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:3064];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v17 = v9 && [v9 count];

  return v17;
}

void *__54__PLBatteryBreakdownService_wasGizmoConnectedInRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6449 = result;
  return result;
}

- (BOOL)showRootNodesInInternal
{
  if (qword_2811F66A0 != -1)
  {
    dispatch_once(&qword_2811F66A0, &__block_literal_global_2094);
  }

  v3 = qword_2811F66A8;
  if (qword_2811F66A8)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

uint64_t __52__PLBatteryBreakdownService_showRootNodesInInternal__block_invoke()
{
  [MEMORY[0x277D3F258] containerPath];
  v0 = _CFPreferencesCopyValueWithContainer();
  qword_2811F66A8 = v0;

  return MEMORY[0x2821F96F8](v0);
}

@end