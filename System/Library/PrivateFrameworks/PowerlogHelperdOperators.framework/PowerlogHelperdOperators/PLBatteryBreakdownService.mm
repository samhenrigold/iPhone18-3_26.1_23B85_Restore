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
    v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_28714BF90];
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
    v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_28714BFA8];
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
    v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_28714BFC0];
    v5 = self->_intermediateRootNodes;
    self->_intermediateRootNodes = v4;

    intermediateRootNodes = self->_intermediateRootNodes;
  }

  return intermediateRootNodes;
}

- (NSSet)deletedAppNames
{
  selfCopy = self;
  v58[1] = *MEMORY[0x277D85DE8];
  deletedAppNames = self->_deletedAppNames;
  if (!deletedAppNames)
  {
    v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871456E8 withComparisonOperation:1];
    v6 = objc_msgSend_storage(selfCopy);
    v41 = v5;
    v58[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
    v42 = v4;
    v8 = [v6 entriesForKey:v4 withComparisons:v7];

    v10 = PLLogCommon(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v8;
      _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEFAULT, "DeletedAppEntries = %@", buf, 0xCu);
    }

    v11 = 0x277D3F000uLL;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __44__PLBatteryBreakdownService_deletedAppNames__block_invoke;
      v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v52[4] = v12;
      if (deletedAppNames_defaultOnce != -1)
      {
        dispatch_once(&deletedAppNames_defaultOnce, v52);
      }

      if (deletedAppNames_classDebugEnabled == 1)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"deletedAppEntries=%@", v8];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService deletedAppNames]"];
        [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:240];

        v19 = PLLogCommon(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    obj = [MEMORY[0x277CBEB58] set];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v20 = v8;
    v46 = [(NSSet *)v20 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v46)
    {
      v45 = *v49;
      v43 = v20;
      do
      {
        v21 = 0;
        do
        {
          if (*v49 != v45)
          {
            objc_enumerationMutation(v20);
          }

          v22 = *(*(&v48 + 1) + 8 * v21);
          v23 = [v22 objectForKeyedSubscript:@"AppBundleId"];
          v24 = [v22 objectForKeyedSubscript:@"AppIsClip"];
          debugEnabled = [*(v11 + 384) debugEnabled];
          if (debugEnabled)
          {
            debugEnabled = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __44__PLBatteryBreakdownService_deletedAppNames__block_invoke_295;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = debugEnabled;
            if (deletedAppNames_defaultOnce_293 != -1)
            {
              dispatch_once(&deletedAppNames_defaultOnce_293, block);
            }

            if (deletedAppNames_classDebugEnabled_294 == 1)
            {
              v26 = v11;
              v27 = selfCopy;
              v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v23];
              v29 = MEMORY[0x277D3F178];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent2 = [v30 lastPathComponent];
              v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService deletedAppNames]"];
              [v29 logMessage:v28 fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:246];

              v34 = PLLogCommon(v33);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v54 = v28;
                _os_log_debug_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              selfCopy = v27;
              v11 = v26;
              v20 = v43;
            }
          }

          v35 = PLLogCommon(debugEnabled);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [v24 intValue];
            *buf = 138412546;
            v54 = v23;
            v55 = 1024;
            v56 = intValue;
            _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_DEFAULT, "bundleID=%@, appIsClip=%d", buf, 0x12u);
          }

          if (v23 && ([v24 BOOLValue] & 1) == 0)
          {
            [obj addObject:v23];
          }

          ++v21;
        }

        while (v46 != v21);
        v46 = [(NSSet *)v20 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v46);
    }

    objc_storeStrong(&selfCopy->_deletedAppNames, obj);
    v38 = PLLogCommon(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = selfCopy->_deletedAppNames;
      *buf = 138412290;
      v54 = v39;
      _os_log_impl(&dword_25EE51000, v38, OS_LOG_TYPE_DEFAULT, "DeletedAppNames = %@", buf, 0xCu);
    }

    deletedAppNames = selfCopy->_deletedAppNames;
  }

  return deletedAppNames;
}

void *__44__PLBatteryBreakdownService_deletedAppNames__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  deletedAppNames_classDebugEnabled = result;
  return result;
}

void *__44__PLBatteryBreakdownService_deletedAppNames__block_invoke_295(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  deletedAppNames_classDebugEnabled_294 = result;
  return result;
}

- (NSSet)deletedAppClipNames
{
  selfCopy = self;
  v49[1] = *MEMORY[0x277D85DE8];
  deletedAppClipNames = self->_deletedAppClipNames;
  if (!deletedAppClipNames)
  {
    v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871456E8 withComparisonOperation:1];
    v6 = objc_msgSend_storage(selfCopy);
    v34 = v5;
    v49[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
    v35 = v4;
    v8 = [v6 entriesForKey:v4 withComparisons:v7];

    v10 = PLLogCommon(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v8;
      _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEFAULT, "DeletedAppEntries = %@", buf, 0xCu);
    }

    obj = [MEMORY[0x277CBEB58] set];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = v8;
    v12 = [(NSSet *)v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v12)
    {
      v13 = v12;
      v38 = *v41;
      do
      {
        v14 = 0;
        v36 = v13;
        do
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v40 + 1) + 8 * v14);
          v16 = [v15 objectForKeyedSubscript:@"AppBundleId"];
          v17 = [v15 objectForKeyedSubscript:@"AppIsClip"];
          debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
          if (debugEnabled)
          {
            debugEnabled = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __48__PLBatteryBreakdownService_deletedAppClipNames__block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = debugEnabled;
            if (deletedAppClipNames_defaultOnce != -1)
            {
              dispatch_once(&deletedAppClipNames_defaultOnce, block);
            }

            if (deletedAppClipNames_classDebugEnabled == 1)
            {
              v19 = v11;
              v20 = selfCopy;
              v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v16];
              v22 = MEMORY[0x277D3F178];
              v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent = [v23 lastPathComponent];
              v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService deletedAppClipNames]"];
              [v22 logMessage:v21 fromFile:lastPathComponent fromFunction:v25 fromLineNumber:273];

              v27 = PLLogCommon(v26);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v45 = v21;
                _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              selfCopy = v20;
              v11 = v19;
              v13 = v36;
            }
          }

          v28 = PLLogCommon(debugEnabled);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [v17 intValue];
            *buf = 138412546;
            v45 = v16;
            v46 = 1024;
            v47 = intValue;
            _os_log_impl(&dword_25EE51000, v28, OS_LOG_TYPE_DEFAULT, "bundleID=%@, appIsClip=%d", buf, 0x12u);
          }

          if (v16 && [v17 BOOLValue])
          {
            [obj addObject:v16];
          }

          ++v14;
        }

        while (v13 != v14);
        v13 = [(NSSet *)v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v13);
    }

    objc_storeStrong(&selfCopy->_deletedAppClipNames, obj);
    v31 = PLLogCommon(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      deletedAppNames = selfCopy->_deletedAppNames;
      *buf = 138412290;
      v45 = deletedAppNames;
      _os_log_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEFAULT, "DeletedAppNames = %@", buf, 0xCu);
    }

    deletedAppClipNames = selfCopy->_deletedAppClipNames;
  }

  return deletedAppClipNames;
}

void *__48__PLBatteryBreakdownService_deletedAppClipNames__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  deletedAppClipNames_classDebugEnabled = result;
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
  v83[1] = *MEMORY[0x277D85DE8];
  installedBundleIDToDisplayName = self->_installedBundleIDToDisplayName;
  if (!installedBundleIDToDisplayName)
  {
    v4 = 0x279A5A000uLL;
    v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v6 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871456E8 withComparisonOperation:0];
    v7 = objc_msgSend_storage(selfCopy);
    v58 = v6;
    v83[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];
    v59 = v5;
    v9 = [v7 entriesForKey:v5 withComparisons:v8];

    v10 = 0x277D3F000uLL;
    debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
    if (debugEnabled)
    {
      debugEnabled = objc_opt_class();
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke;
      v74[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v74[4] = debugEnabled;
      if (installedBundleIDToDisplayName_defaultOnce != -1)
      {
        dispatch_once(&installedBundleIDToDisplayName_defaultOnce, v74);
      }

      if (installedBundleIDToDisplayName_classDebugEnabled == 1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"installedAppEntries=%@", v9];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedBundleIDToDisplayName]"];
        [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:323];

        v18 = PLLogCommon(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v4 = 0x279A5A000uLL;
      }
    }

    v19 = PLLogCommon(debugEnabled);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getBundleIDToDisplayNameMap];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v9;
    v20 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
    v61 = selfCopy;
    if (v20)
    {
      v21 = v20;
      v22 = *v71;
      do
      {
        v23 = 0;
        do
        {
          if (*v71 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v70 + 1) + 8 * v23);
          v25 = [v24 objectForKeyedSubscript:@"AppType"];
          intValue = [v25 intValue];

          if (intValue == 101)
          {
            v28 = [v24 objectForKeyedSubscript:@"AppBundleId"];
            v29 = [v24 objectForKeyedSubscript:@"AppName"];
            if ([*(v10 + 384) debugEnabled])
            {
              v30 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke_327;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v30;
              if (installedBundleIDToDisplayName_defaultOnce_325 != -1)
              {
                dispatch_once(&installedBundleIDToDisplayName_defaultOnce_325, block);
              }

              if (installedBundleIDToDisplayName_classDebugEnabled_326 == 1)
              {
                v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", v28, v29];
                v32 = MEMORY[0x277D3F178];
                v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent2 = [v33 lastPathComponent];
                v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedBundleIDToDisplayName]"];
                [v32 logMessage:v31 fromFile:lastPathComponent2 fromFunction:v35 fromLineNumber:333];

                v37 = PLLogCommon(v36);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v81 = v31;
                  _os_log_debug_impl(&dword_25EE51000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                selfCopy = v61;
                v4 = 0x279A5A000;
                v10 = 0x277D3F000;
              }
            }

            [(NSDictionary *)dictionary setObject:v29 forKeyedSubscript:v28];
          }

          else
          {
            v28 = PLLogCommon(v27);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              [(PLBatteryUIResponseTypeBatteryBreakdown(Utilities) *)&v78 getBundleIDToDisplayNameMap];
            }
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
      }

      while (v21);
    }

    v38 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v39 = [v38 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v66;
      do
      {
        v42 = 0;
        do
        {
          if (*v66 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v65 + 1) + 8 * v42);
          mayBeBUIVisible = [v43 mayBeBUIVisible];
          if (mayBeBUIVisible)
          {
            if (![*(v4 + 3200) hasScreenPresence:v43])
            {
              goto LABEL_48;
            }

            bundleIdentifier = [v43 bundleIdentifier];
            v46 = [(NSDictionary *)dictionary objectForKeyedSubscript:bundleIdentifier];

            if (!v46)
            {
              localizedName = [v43 localizedName];
              if ([MEMORY[0x277D3F180] debugEnabled])
              {
                v48 = objc_opt_class();
                v64[0] = MEMORY[0x277D85DD0];
                v64[1] = 3221225472;
                v64[2] = __59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke_334;
                v64[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v64[4] = v48;
                if (installedBundleIDToDisplayName_defaultOnce_332 != -1)
                {
                  dispatch_once(&installedBundleIDToDisplayName_defaultOnce_332, v64);
                }

                if (installedBundleIDToDisplayName_classDebugEnabled_333 == 1)
                {
                  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", bundleIdentifier, localizedName];
                  v60 = MEMORY[0x277D3F178];
                  v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                  lastPathComponent3 = [v50 lastPathComponent];
                  v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedBundleIDToDisplayName]"];
                  [v60 logMessage:v49 fromFile:lastPathComponent3 fromFunction:v52 fromLineNumber:351];

                  v53 = v49;
                  v55 = PLLogCommon(v54);
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v81 = v53;
                    _os_log_debug_impl(&dword_25EE51000, v55, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  selfCopy = v61;
                  v4 = 0x279A5A000;
                }
              }

              [(NSDictionary *)dictionary setObject:localizedName forKeyedSubscript:bundleIdentifier];
            }
          }

          else
          {
            bundleIdentifier = PLLogCommon(mayBeBUIVisible);
            if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEBUG))
            {
              [(PLBatteryUIResponseTypeBatteryBreakdown(Utilities) *)&v75 getBundleIDToDisplayNameMap];
            }
          }

LABEL_48:
          ++v42;
        }

        while (v40 != v42);
        v40 = [v38 countByEnumeratingWithState:&v65 objects:v77 count:16];
      }

      while (v40);
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
  installedBundleIDToDisplayName_classDebugEnabled = result;
  return result;
}

void *__59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke_327(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  installedBundleIDToDisplayName_classDebugEnabled_326 = result;
  return result;
}

void *__59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke_334(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  installedBundleIDToDisplayName_classDebugEnabled_333 = result;
  return result;
}

- (NSDictionary)installedPluginBundleIDToPluginEntry
{
  selfCopy = self;
  v76[1] = *MEMORY[0x277D85DE8];
  installedPluginBundleIDToPluginEntry = self->_installedPluginBundleIDToPluginEntry;
  if (!installedPluginBundleIDToPluginEntry)
  {
    v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
    v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginDeletedDate" withValue:&unk_2871456E8 withComparisonOperation:0];
    v6 = objc_msgSend_storage(selfCopy);
    v53 = v5;
    v76[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:1];
    v54 = v4;
    v8 = [v6 entriesForKey:v4 withComparisons:v7];

    v9 = 0x277D3F000uLL;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke;
      v71[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v71[4] = v10;
      if (installedPluginBundleIDToPluginEntry_defaultOnce != -1)
      {
        dispatch_once(&installedPluginBundleIDToPluginEntry_defaultOnce, v71);
      }

      if (installedPluginBundleIDToPluginEntry_classDebugEnabled == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"installedPluginEntries=%@", v8];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedPluginBundleIDToPluginEntry]"];
        [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:373];

        v17 = PLLogCommon(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v9 = 0x277D3F000uLL;
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v67 objects:v75 count:16];
    v56 = v18;
    v57 = selfCopy;
    if (v19)
    {
      v20 = v19;
      v21 = *v68;
      do
      {
        v22 = 0;
        do
        {
          if (*v68 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v67 + 1) + 8 * v22);
          v24 = [v23 objectForKeyedSubscript:@"PluginId"];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v25 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke_346;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v25;
            if (installedPluginBundleIDToPluginEntry_defaultOnce_344 != -1)
            {
              dispatch_once(&installedPluginBundleIDToPluginEntry_defaultOnce_344, block);
            }

            if (installedPluginBundleIDToPluginEntry_classDebugEnabled_345 == 1)
            {
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"pluginBundleID=%@", v24];
              v27 = MEMORY[0x277D3F178];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent2 = [v28 lastPathComponent];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedPluginBundleIDToPluginEntry]"];
              [v27 logMessage:v26 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:378];

              v32 = PLLogCommon(v31);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v74 = v26;
                _os_log_debug_impl(&dword_25EE51000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v18 = v56;
              selfCopy = v57;
              v9 = 0x277D3F000uLL;
            }
          }

          [(NSDictionary *)dictionary setObject:v23 forKeyedSubscript:v24];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v20);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v33 = +[PLBatteryBreakdownService installedPlugins];
    v34 = dictionary;
    v59 = [v33 countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (v59)
    {
      v58 = *v63;
      v55 = v33;
      do
      {
        v35 = 0;
        do
        {
          if (*v63 != v58)
          {
            objc_enumerationMutation(v33);
          }

          v36 = *(*(&v62 + 1) + 8 * v35);
          v37 = [v36 objectForKeyedSubscript:@"PluginId"];
          v38 = [v36 objectForKeyedSubscript:@"PluginParentApp"];
          v39 = [(NSDictionary *)v34 objectForKeyedSubscript:v37];

          if (!v39)
          {
            if ([*(v9 + 384) debugEnabled])
            {
              v40 = objc_opt_class();
              v61[0] = MEMORY[0x277D85DD0];
              v61[1] = 3221225472;
              v61[2] = __65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke_356;
              v61[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v61[4] = v40;
              if (installedPluginBundleIDToPluginEntry_defaultOnce_354 != -1)
              {
                dispatch_once(&installedPluginBundleIDToPluginEntry_defaultOnce_354, v61);
              }

              if (installedPluginBundleIDToPluginEntry_classDebugEnabled_355 == 1)
              {
                v41 = MEMORY[0x277CCACA8];
                v42 = [v36 objectForKeyedSubscript:@"PluginExecutableName"];
                v43 = [v36 objectForKeyedSubscript:@"PluginType"];
                v44 = [v41 stringWithFormat:@"pluginExecutableName=%@, pluginBundleID=%@, pluginParentApp=%@, pluginType=%@", v42, v37, v38, v43];

                v45 = MEMORY[0x277D3F178];
                v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent3 = [v46 lastPathComponent];
                v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedPluginBundleIDToPluginEntry]"];
                [v45 logMessage:v44 fromFile:lastPathComponent3 fromFunction:v48 fromLineNumber:389];

                v50 = PLLogCommon(v49);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v74 = v44;
                  _os_log_debug_impl(&dword_25EE51000, v50, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                selfCopy = v57;
                v9 = 0x277D3F000;
                v34 = dictionary;
                v33 = v55;
              }
            }

            [(NSDictionary *)v34 setObject:v36 forKeyedSubscript:v37];
          }

          ++v35;
        }

        while (v59 != v35);
        v59 = [v33 countByEnumeratingWithState:&v62 objects:v72 count:16];
      }

      while (v59);
    }

    v51 = selfCopy->_installedPluginBundleIDToPluginEntry;
    selfCopy->_installedPluginBundleIDToPluginEntry = v34;

    installedPluginBundleIDToPluginEntry = selfCopy->_installedPluginBundleIDToPluginEntry;
  }

  return installedPluginBundleIDToPluginEntry;
}

void *__65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  installedPluginBundleIDToPluginEntry_classDebugEnabled = result;
  return result;
}

void *__65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke_346(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  installedPluginBundleIDToPluginEntry_classDebugEnabled_345 = result;
  return result;
}

void *__65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke_356(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  installedPluginBundleIDToPluginEntry_classDebugEnabled_355 = result;
  return result;
}

- (id)pluginBundleIDsforBundleID:(id)d
{
  dCopy = d;
  installedPluginBundleIDToPluginEntry = [(PLBatteryBreakdownService *)self installedPluginBundleIDToPluginEntry];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__PLBatteryBreakdownService_pluginBundleIDsforBundleID___block_invoke;
  v10[3] = &unk_279A5C2A0;
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

          [bundleIdentifier setObject:&unk_2871456E8 forKeyedSubscript:@"PluginDeletedDate"];
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
    self->_gizmoDaemonToAppBundleID = &unk_287147DC0;

    gizmoDaemonToAppBundleID = self->_gizmoDaemonToAppBundleID;
  }

  return gizmoDaemonToAppBundleID;
}

- (NSDictionary)gizmoIDSTopicToAppBundleID
{
  gizmoIDSTopicToAppBundleID = self->_gizmoIDSTopicToAppBundleID;
  if (!gizmoIDSTopicToAppBundleID)
  {
    self->_gizmoIDSTopicToAppBundleID = &unk_287147DE8;

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
    v23 = [&unk_28714BFD8 objectAtIndexedSubscript:2];
    v24[0] = v23;
    v25[0] = @"PLBatteryUIAppCPUEnergyKey";
    v22 = [&unk_28714BFF0 objectAtIndexedSubscript:4];
    v24[1] = v22;
    v25[1] = @"PLBatteryUIAppVENCEnergyKey";
    v21 = [&unk_28714C008 objectAtIndexedSubscript:5];
    v24[2] = v21;
    v25[2] = @"PLBatteryUIAppVDECEnergyKey";
    v20 = [&unk_28714C020 objectAtIndexedSubscript:6];
    v24[3] = v20;
    v25[3] = @"PLBatteryUIAppISPEnergyKey";
    v19 = [&unk_28714C038 objectAtIndexedSubscript:7];
    v24[4] = v19;
    v25[4] = @"PLBatteryUIAppRestOfSOCEnergyKey";
    v18 = [&unk_28714C050 objectAtIndexedSubscript:8];
    v24[5] = v18;
    v25[5] = @"PLBatteryUIAppGPUEnergyKey";
    v17 = [&unk_28714C068 objectAtIndexedSubscript:9];
    v24[6] = v17;
    v25[6] = @"PLBatteryUIAppDRAMEnergyKey";
    v16 = [&unk_28714C080 objectAtIndexedSubscript:10];
    v24[7] = v16;
    v25[7] = @"PLBatteryUIAppDisplayEnergyKey";
    v15 = [&unk_28714C098 objectAtIndexedSubscript:11];
    v24[8] = v15;
    v25[8] = @"PLBatteryUIAppWIFIEnergyKey";
    v4 = [&unk_28714C0B0 objectAtIndexedSubscript:15];
    v24[9] = v4;
    v25[9] = @"PLBatteryUIAppAUDIOEnergyKey";
    v5 = [&unk_28714C0C8 objectAtIndexedSubscript:37];
    v24[10] = v5;
    v25[10] = @"PLBatteryUIAppBBEnergyKey";
    v6 = [&unk_28714C0E0 objectAtIndexedSubscript:48];
    v24[11] = v6;
    v25[11] = @"BLMEnergyGPS";
    v7 = [&unk_28714C0F8 objectAtIndexedSubscript:12];
    v24[12] = v7;
    v25[12] = @"PLBatteryUIAppWifiLocationEnergyKey";
    v8 = [&unk_28714C110 objectAtIndexedSubscript:13];
    v24[13] = v8;
    v25[13] = @"PLBatteryUIAppWifiPipelineEnergyKey";
    v9 = [&unk_28714C128 objectAtIndexedSubscript:50];
    v24[14] = v9;
    v25[14] = @"PLBatteryUIAppBluetoothEnergyKey";
    v10 = [&unk_28714C140 objectAtIndexedSubscript:20];
    v24[15] = v10;
    v25[15] = @"PLBatteryUIAppAccessoryEnergyKey";
    v11 = [&unk_28714C158 objectAtIndexedSubscript:16];
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
  if (inDemoMode_defaultOnce != -1)
  {
    [PLBatteryBreakdownService inDemoMode];
  }

  return inDemoMode_demoMode;
}

void __39__PLBatteryBreakdownService_inDemoMode__block_invoke()
{
  v0 = [MEMORY[0x277D3F180] objectForKey:@"BUI_DEMO_MODE" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  inDemoMode_demoMode = v0 != 0;
}

- (id)batteryBreakdownWithTimeRange:(_PLTimeIntervalRange)range withDataRange:(_PLTimeIntervalRange)dataRange withEntryTimeInterval:(double)interval withQueryType:(int)type
{
  v6 = *&type;
  length = dataRange.length;
  location = dataRange.location;
  v10 = range.length;
  v11 = range.location;
  [(PLBatteryBreakdownService *)self totalSumEnergyRatioCutOff];

  return [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:v6 withDataRange:v11 withEntryTimeInterval:v10 withQueryType:location withTotalSumEnergyRatioCutOff:length, interval, v13];
}

- (id)batteryBreakdownWithTimeRange:(_PLTimeIntervalRange)range withDataRange:(_PLTimeIntervalRange)dataRange withEntryTimeInterval:(double)interval withQueryType:(int)type withTotalSumEnergyRatioCutOff:(double)off
{
  v8 = *&type;
  length = dataRange.length;
  location = dataRange.location;
  v12 = range.length;
  v13 = range.location;
  v255 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v15 = PLLogCommon(context);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:];
  }

  offCopy = off;
  if (location == 0.0 && length == 0.0)
  {
    v17 = v12;
    v18 = v12;
    v19 = v13;
    goto LABEL_60;
  }

  v20 = PLLogCommon(v16);
  v21 = v13 + v12;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v248 = v13;
    v249 = 2048;
    v250 = v13 + v12;
    v251 = 2048;
    v252 = location;
    v253 = 2048;
    v254 = location + length;
    _os_log_debug_impl(&dword_25EE51000, v20, OS_LOG_TYPE_DEBUG, "range=(%f, %f), dataRange=(%f, %f)", buf, 0x2Au);
  }

  if (v13 >= location || v21 <= location)
  {
    v23 = location + length;
    if (location >= v13 || v23 <= v13)
    {
      v19 = 0.0;
      if (v13 != location || v12 <= 0.0)
      {
        v18 = 0.0;
        goto LABEL_22;
      }

      v18 = 0.0;
      if (length <= 0.0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v23 = location + length;
  }

  if (v13 >= location)
  {
    v19 = v13;
  }

  else
  {
    v19 = location;
  }

  if (v21 < v23)
  {
    v23 = v13 + v12;
  }

  v18 = v23 - v19;
LABEL_22:
  v24 = v13 + -1800.0;
  v25 = v13 + -1800.0 < location;
  v26 = v12 + v13 + -1800.0;
  if (v26 <= location)
  {
    v25 = 0;
  }

  if (v8 != 4)
  {
    if (v25)
    {
      v28 = location + length;
    }

    else
    {
      v28 = location + length;
      if (location >= v24 || v28 <= v24)
      {
        v13 = 0.0;
        if (v24 != location || v12 <= 0.0)
        {
          goto LABEL_209;
        }

        v29 = length <= 0.0;
        v17 = 0.0;
        if (v29)
        {
          goto LABEL_57;
        }
      }
    }

    if (v24 >= location)
    {
      v13 = v24;
    }

    else
    {
      v13 = location;
    }

    if (v26 >= v28)
    {
      v26 = v28;
    }

    goto LABEL_56;
  }

  if (v25)
  {
    v27 = location + length;
    goto LABEL_37;
  }

  v27 = location + length;
  v29 = location >= v24 || v27 <= v24;
  if (!v29)
  {
LABEL_37:
    if (v24 >= location)
    {
      v13 = location;
    }

    else
    {
      v13 = v24;
    }

    if (v26 < v27)
    {
      v26 = v27;
    }

LABEL_56:
    v17 = v26 - v13;
    goto LABEL_57;
  }

  v13 = 0.0;
  if (v24 != location || v12 <= 0.0)
  {
LABEL_209:
    v17 = 0.0;
    goto LABEL_57;
  }

  v29 = length <= 0.0;
  v17 = 0.0;
  if (!v29)
  {
    goto LABEL_37;
  }

LABEL_57:
  v31 = PLLogCommon(v22);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:];
  }

LABEL_60:
  [(PLBatteryBreakdownService *)self setShowGizmoQualifier:[(PLBatteryBreakdownService *)self wasGizmoConnectedInRange:v19, v18]];
  interval = [(PLBatteryBreakdownService *)self energyEntriesWithRange:v8 withEntryTimeInterval:v13 withQueryType:v17, interval];
  v33 = 0x277D3F000uLL;
  v220 = v8;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v34 = objc_opt_class();
    v244[0] = MEMORY[0x277D85DD0];
    v244[1] = 3221225472;
    v244[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke;
    v244[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v244[4] = v34;
    v35 = v244;
    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce != -1)
    {
      dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce, v35);
    }

    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled == 1)
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntries=%@", interval];
      v37 = MEMORY[0x277D3F178];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent = [v38 lastPathComponent];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v37 logMessage:v36 fromFile:lastPathComponent fromFunction:v40 fromLineNumber:754];

      v42 = PLLogCommon(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v8 = v8;
      v33 = 0x277D3F000uLL;
    }
  }

  v43 = [(PLBatteryBreakdownService *)self addForegroundAndBackgroundDurations:interval withRange:v8 withQueryType:v13, v17];

  v44 = [(PLBatteryBreakdownService *)self addNotificationValues:v43 withRange:v8 withQueryType:v13, v17];

  if (v8 == 4)
  {
    v45 = [(PLBatteryBreakdownService *)self populateEnergyBucketKeysWithEntries:v44];
LABEL_69:

LABEL_70:
    v44 = v45;
    goto LABEL_71;
  }

  if (v8 >= 2)
  {
    v45 = [(PLBatteryBreakdownService *)self populateRootNodeEnergyKeysWithEnergyEntries:v44];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_70;
    }

    v127 = objc_opt_class();
    v243[0] = MEMORY[0x277D85DD0];
    v243[1] = 3221225472;
    v243[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1080;
    v243[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v243[4] = v127;
    v128 = v243;
    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1078 != -1)
    {
      dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1078, v128);
    }

    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1079 != 1)
    {
      goto LABEL_70;
    }

    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"after populating root node energy keys: energyEntries=%@", v45];
    v129 = MEMORY[0x277D3F178];
    v130 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
    lastPathComponent2 = [v130 lastPathComponent];
    v132 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
    [v129 logMessage:v44 fromFile:lastPathComponent2 fromFunction:v132 fromLineNumber:784];

    v134 = PLLogCommon(v133);
    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

    goto LABEL_207;
  }

  if (v8 == 1)
  {
    v45 = [(PLBatteryBreakdownService *)self populateBLDKeysWithEnergyEntries:v44];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_70;
    }

    v211 = objc_opt_class();
    v242[0] = MEMORY[0x277D85DD0];
    v242[1] = 3221225472;
    v242[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1086;
    v242[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v242[4] = v211;
    v212 = v242;
    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1084 != -1)
    {
      dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1084, v212);
    }

    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1085 != 1)
    {
      goto LABEL_70;
    }

    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"after populating BLD keys: energyEntries=%@", v45];
    v213 = MEMORY[0x277D3F178];
    v214 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
    lastPathComponent3 = [v214 lastPathComponent];
    v216 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
    [v213 logMessage:v44 fromFile:lastPathComponent3 fromFunction:v216 fromLineNumber:788];

    v134 = PLLogCommon(v217);
    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

LABEL_207:

    v8 = v8;
    v33 = 0x277D3F000;
    goto LABEL_69;
  }

LABEL_71:
  v46 = [(PLBatteryBreakdownService *)self applyStaticNameTransformationsWithEnergyEntries:v44];

  if ([*(v33 + 384) debugEnabled])
  {
    v47 = objc_opt_class();
    v241[0] = MEMORY[0x277D85DD0];
    v241[1] = 3221225472;
    v241[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1092;
    v241[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v241[4] = v47;
    v48 = v241;
    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1090 != -1)
    {
      dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1090, v48);
    }

    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1091 == 1)
    {
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"after static transformations: energyEntries=%@", v46];
      v50 = MEMORY[0x277D3F178];
      v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent4 = [v51 lastPathComponent];
      v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v50 logMessage:v49 fromFile:lastPathComponent4 fromFunction:v53 fromLineNumber:793];

      v55 = PLLogCommon(v54);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v8 = v8;
      v33 = 0x277D3F000uLL;
    }
  }

  v56 = [(PLBatteryBreakdownService *)self combineDuplicatesWithEnergyEntries:v46];

  if ([*(v33 + 384) debugEnabled])
  {
    v57 = objc_opt_class();
    v240[0] = MEMORY[0x277D85DD0];
    v240[1] = 3221225472;
    v240[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1098;
    v240[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v240[4] = v57;
    v58 = v240;
    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1096 != -1)
    {
      dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1096, v58);
    }

    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1097 == 1)
    {
      v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"after combining duplicates: energyEntries=%@", v56];
      v60 = MEMORY[0x277D3F178];
      v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent5 = [v61 lastPathComponent];
      v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v60 logMessage:v59 fromFile:lastPathComponent5 fromFunction:v63 fromLineNumber:797];

      v65 = PLLogCommon(v64);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v8 = v8;
      v33 = 0x277D3F000uLL;
    }
  }

  v66 = [(PLBatteryBreakdownService *)self adjustExtensionBackgroundTimeWithEnergyEntries:v56];

  if ([*(v33 + 384) debugEnabled])
  {
    v67 = objc_opt_class();
    v239[0] = MEMORY[0x277D85DD0];
    v239[1] = 3221225472;
    v239[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1104;
    v239[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v239[4] = v67;
    v68 = v239;
    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1102 != -1)
    {
      dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1102, v68);
    }

    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1103 == 1)
    {
      v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"After background time adjustment to extensions: energyEntries=%@", v66];
      v70 = MEMORY[0x277D3F178];
      v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent6 = [v71 lastPathComponent];
      v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v70 logMessage:v69 fromFile:lastPathComponent6 fromFunction:v73 fromLineNumber:801];

      v75 = PLLogCommon(v74);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v8 = v8;
      v33 = 0x277D3F000uLL;
    }
  }

  v76 = [(PLBatteryBreakdownService *)self applyDynamicNameTransformationsWithEnergyEntries:v66];

  if ([*(v33 + 384) debugEnabled])
  {
    v77 = objc_opt_class();
    v238[0] = MEMORY[0x277D85DD0];
    v238[1] = 3221225472;
    v238[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1110;
    v238[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v238[4] = v77;
    v78 = v238;
    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1108 != -1)
    {
      dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1108, v78);
    }

    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1109 == 1)
    {
      v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"after dynamic transformations: energyEntries=%@", v76];
      v80 = MEMORY[0x277D3F178];
      v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent7 = [v81 lastPathComponent];
      v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v80 logMessage:v79 fromFile:lastPathComponent7 fromFunction:v83 fromLineNumber:806];

      v85 = PLLogCommon(v84);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v8 = v8;
      v33 = 0x277D3F000uLL;
    }
  }

  v86 = [(PLBatteryBreakdownService *)self combineDuplicatesWithEnergyEntries:v76];

  if ([*(v33 + 384) debugEnabled])
  {
    v87 = objc_opt_class();
    v237[0] = MEMORY[0x277D85DD0];
    v237[1] = 3221225472;
    v237[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1116;
    v237[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v237[4] = v87;
    v88 = v237;
    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1114 != -1)
    {
      dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1114, v88);
    }

    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1115 == 1)
    {
      v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"after combining duplicates: energyEntries=%@", v86];
      v90 = MEMORY[0x277D3F178];
      v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent8 = [v91 lastPathComponent];
      v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v90 logMessage:v89 fromFile:lastPathComponent8 fromFunction:v93 fromLineNumber:810];

      v95 = PLLogCommon(v94);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v8 = v8;
      v33 = 0x277D3F000uLL;
    }
  }

  if (v8 != 4)
  {
    v96 = [(PLBatteryBreakdownService *)self adjustForegroundTimesWithEnergyEntries:v86];

    v86 = [(PLBatteryBreakdownService *)self adjustBackgroundTimesWithEnergyEntries:v96];
  }

  v97 = [(PLBatteryBreakdownService *)self determineDisplayNamesWithEnergyEntries:v86];

  if ([*(v33 + 384) debugEnabled])
  {
    v98 = objc_opt_class();
    v236[0] = MEMORY[0x277D85DD0];
    v236[1] = 3221225472;
    v236[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1119;
    v236[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v236[4] = v98;
    v99 = v236;
    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1117 != -1)
    {
      dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1117, v99);
    }

    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1118 == 1)
    {
      v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"after determining display names: energyEntries=%@", v97];
      v101 = MEMORY[0x277D3F178];
      v102 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent9 = [v102 lastPathComponent];
      v104 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v101 logMessage:v100 fromFile:lastPathComponent9 fromFunction:v104 fromLineNumber:820];

      v106 = PLLogCommon(v105);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v8 = v8;
      v33 = 0x277D3F000uLL;
    }
  }

  v107 = [(PLBatteryBreakdownService *)self filterWithEnergyEntries:v97 withQueryType:v8];

  if ([*(v33 + 384) debugEnabled])
  {
    v108 = objc_opt_class();
    v235[0] = MEMORY[0x277D85DD0];
    v235[1] = 3221225472;
    v235[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1125;
    v235[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v235[4] = v108;
    v109 = v235;
    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1123 != -1)
    {
      dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1123, v109);
    }

    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1124 == 1)
    {
      v107 = [MEMORY[0x277CCACA8] stringWithFormat:@"after filtering based on query type: energyEntries=%@", v107];
      v111 = MEMORY[0x277D3F178];
      v112 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent10 = [v112 lastPathComponent];
      v114 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v111 logMessage:v107 fromFile:lastPathComponent10 fromFunction:v114 fromLineNumber:825];

      v116 = PLLogCommon(v115);
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v8 = v8;
      v33 = 0x277D3F000uLL;
    }
  }

  v117 = [(PLBatteryBreakdownService *)self filterEnergyEntriesBasedOnTime:v107 withQueryType:v8];

  v118 = [(PLBatteryBreakdownService *)self removeNodesNotToShowInInternalUI:v117 withQueryType:v8];

  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v119 = v118;
  v120 = [v119 countByEnumeratingWithState:&v231 objects:v246 count:16];
  if (v120)
  {
    v121 = v120;
    v122 = *v232;
    v123 = 0.0;
    do
    {
      for (i = 0; i != v121; ++i)
      {
        if (*v232 != v122)
        {
          objc_enumerationMutation(v119);
        }

        v125 = [*(*(&v231 + 1) + 8 * i) objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v125 doubleValue];
        v123 = v123 + v126;
      }

      v121 = [v119 countByEnumeratingWithState:&v231 objects:v246 count:16];
    }

    while (v121);
  }

  else
  {
    v123 = 0.0;
  }

  if ([*(v33 + 384) debugEnabled])
  {
    v135 = objc_opt_class();
    v230[0] = MEMORY[0x277D85DD0];
    v230[1] = 3221225472;
    v230[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1134;
    v230[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v230[4] = v135;
    v136 = v230;
    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1132 != -1)
    {
      dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1132, v136);
    }

    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1133 == 1)
    {
      v137 = [MEMORY[0x277CCACA8] stringWithFormat:@"totalEnergySum=%f", *&v123];
      v138 = MEMORY[0x277D3F178];
      v139 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent11 = [v139 lastPathComponent];
      v141 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v138 logMessage:v137 fromFile:lastPathComponent11 fromFunction:v141 fromLineNumber:837];

      v143 = PLLogCommon(v142);
      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if (v18 == 86400.0)
  {
    [(PLBatteryBreakdownService *)self setTotalEnergyDay:v123];
  }

  else if (v18 == 604800.0)
  {
    [(PLBatteryBreakdownService *)self setTotalEnergyWeek:v123];
  }

  selfCopy = self;
  v228 = 0u;
  v229 = 0u;
  v227 = 0u;
  v226 = 0u;
  obj = v119;
  v144 = [obj countByEnumeratingWithState:&v226 objects:v245 count:16];
  if (v144)
  {
    v145 = v144;
    LODWORD(v146) = 0;
    v147 = 0;
    v148 = *v227;
    do
    {
      for (j = 0; j != v145; ++j)
      {
        if (*v227 != v148)
        {
          objc_enumerationMutation(obj);
        }

        v150 = *(*(&v226 + 1) + 8 * j);
        v151 = [(PLBatteryBreakdownService *)selfCopy qualifiersWithEnergyEntry:v150 bucketSize:v12 andTotalEnergy:v123];
        [v150 setObject:v151 forKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];

        v152 = [v150 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v152 doubleValue];
        v154 = v153;

        v155 = [MEMORY[0x277CCABB0] numberWithDouble:v154];
        [v150 setObject:v155 forKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];

        v156 = llround(v154 * 100.0 / v123);
        if (v154 >= 2.0)
        {
          v157 = v156;
        }

        else
        {
          v157 = 0;
        }

        v158 = [MEMORY[0x277CCABB0] numberWithInt:v157];
        [v150 setObject:v158 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

        v159 = v147;
        if (!v147 || ([v147 objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"], v160 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v160, "doubleValue"), v162 = v161, v160, v154 > v162))
        {
          v147 = v150;
        }

        v146 = (v157 + v146);
      }

      v145 = [obj countByEnumeratingWithState:&v226 objects:v245 count:16];
    }

    while (v145);
  }

  else
  {
    v146 = 0;
    v147 = 0;
  }

  v163 = obj;

  v164 = v220;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v165 = objc_opt_class();
    v225[0] = MEMORY[0x277D85DD0];
    v225[1] = 3221225472;
    v225[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1146;
    v225[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v225[4] = v165;
    v166 = v225;
    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1144 != -1)
    {
      dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1144, v166);
    }

    if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1145 == 1)
    {
      v146 = [MEMORY[0x277CCACA8] stringWithFormat:@"totalEnergyPercentSum=%i", v146];
      v168 = MEMORY[0x277D3F178];
      v169 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent12 = [v169 lastPathComponent];
      v171 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
      [v168 logMessage:v146 fromFile:lastPathComponent12 fromFunction:v171 fromLineNumber:869];

      v173 = PLLogCommon(v172);
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v164 = v220;
      v163 = obj;
    }
  }

  if (v146 != 100 && v146 >= 1)
  {
    v174 = MEMORY[0x277CCABB0];
    v175 = [v147 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v175 doubleValue];
    v1462 = [v174 numberWithDouble:v176 + 100.0 - v146];
    [v147 setObject:v1462 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  }

  [(PLBatteryBreakdownService *)selfCopy computeTotalForegroundDuration:v163];
  v179 = v178;
  [(PLBatteryBreakdownService *)selfCopy computeTotalBackgroundDuration:v163];
  v181 = v180;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v183 = [MEMORY[0x277CCABB0] numberWithDouble:v179];
  [dictionary setObject:v183 forKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];

  v184 = [MEMORY[0x277CCABB0] numberWithDouble:v181];
  [dictionary setObject:v184 forKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];

  v185 = [MEMORY[0x277CCABB0] numberWithDouble:v123];
  [dictionary setObject:v185 forKeyedSubscript:@"PLBatteryUITotalEnergyKey"];

  if (v164)
  {
    +[PLUtilities defaultBatteryEnergyCapacity];
    v186 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.00f%% of Battery", v123 * 100.0 / v186];
    [dictionary setObject:v186 forKeyedSubscript:@"PLBatteryUIBatteryCyclesKey"];
  }

  [v163 enumerateObjectsUsingBlock:&__block_literal_global_1169];
  v188 = [(PLBatteryBreakdownService *)selfCopy shouldShowBatteryBreakdownWithTotalSumEnergy:v123 withtotalSumEnergyRatioCutOff:offCopy];
  if (v164 > 1 || v188 || v179 >= 60.0 || v181 >= 60.0 || [(PLOperator *)selfCopy isDebugEnabled])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v189 = objc_opt_class();
      v224[0] = MEMORY[0x277D85DD0];
      v224[1] = 3221225472;
      v224[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_2;
      v224[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v224[4] = v189;
      v190 = v224;
      if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1173 != -1)
      {
        dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1173, v190);
      }

      if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1174 == 1)
      {
        v191 = [MEMORY[0x277CCACA8] stringWithFormat:@"displaying battery breakdown"];
        v192 = MEMORY[0x277D3F178];
        v193 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent13 = [v193 lastPathComponent];
        v195 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
        [v192 logMessage:v191 fromFile:lastPathComponent13 fromFunction:v195 fromLineNumber:904];

        v197 = PLLogCommon(v196);
        if (os_log_type_enabled(v197, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v163 = obj;
      }
    }

    [dictionary setObject:&unk_2871456E8 forKeyedSubscript:@"PLBatteryUIErrorCodeKey"];
    v198 = dictionary;
    v199 = v163;
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v200 = objc_opt_class();
      v223[0] = MEMORY[0x277D85DD0];
      v223[1] = 3221225472;
      v223[2] = __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1186;
      v223[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v223[4] = v200;
      v201 = v223;
      if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1184 != -1)
      {
        dispatch_once(&batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__defaultOnce_1184, v201);
      }

      if (batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1185 == 1)
      {
        v202 = [MEMORY[0x277CCACA8] stringWithFormat:@"not enough energy consumed"];
        v203 = MEMORY[0x277D3F178];
        v204 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent14 = [v204 lastPathComponent];
        v206 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:]"];
        [v203 logMessage:v202 fromFile:lastPathComponent14 fromFunction:v206 fromLineNumber:909];

        v208 = PLLogCommon(v207);
        if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v163 = obj;
      }
    }

    [dictionary setObject:&unk_287145700 forKeyedSubscript:@"PLBatteryUIErrorCodeKey"];
    v199 = MEMORY[0x277CBEBF8];
    v198 = dictionary;
  }

  [v198 setObject:v199 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v209 = dictionary;

  objc_autoreleasePoolPop(context);

  return v209;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1080(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1079 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1086(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1085 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1092(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1091 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1098(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1097 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1104(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1103 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1110(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1109 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1116(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1115 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1119(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1118 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1125(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1124 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1134(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1133 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1146(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1145 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1174 = result;
  return result;
}

void *__139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1186(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1185 = result;
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
    v8 = &stru_287103958;
  }

  return v8;
}

- (id)suggestionsWithEnergyEntries:(id)entries
{
  v61[2] = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  array = [MEMORY[0x277CBEB18] array];
  v6 = objc_opt_new();
  v55 = 0.0;
  v7 = 0x277CBE000;
  if ([(PLBatteryBreakdownService *)self shouldSuggestAutoLockWithEnergyEntries:entriesCopy andSavedEnergyPercent:&v55])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v8;
      if (suggestionsWithEnergyEntries__defaultOnce != -1)
      {
        dispatch_once(&suggestionsWithEnergyEntries__defaultOnce, block);
      }

      if (suggestionsWithEnergyEntries__classDebugEnabled == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"suggesting autolock"];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService suggestionsWithEnergyEntries:]"];
        [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:934];

        v15 = PLLogCommon(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v7 = 0x277CBE000uLL;
      }
    }

    v60[0] = @"PLBatteryUISuggestionTypeKey";
    v60[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v61[0] = &unk_287145700;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
    v61[1] = v16;
    v17 = [*(v7 + 2752) dictionaryWithObjects:v61 forKeys:v60 count:2];
    [array addObject:v17];

    ADClientSetValueForScalarKey();
    [v6 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v6 setObject:@"autoLock" forKeyedSubscript:@"type"];
    v52[5] = MEMORY[0x277D85DD0];
    v52[6] = 3221225472;
    v52[7] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_1222;
    v52[8] = &unk_279A5BF38;
    v53 = v6;
    AnalyticsSendEventLazy();
  }

  if ([(PLBatteryBreakdownService *)self shouldSuggestAutoBrightnessWithEnergyEntries:entriesCopy andSavedEnergyPercent:&v55])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v18 = objc_opt_class();
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2;
      v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v52[4] = v18;
      if (suggestionsWithEnergyEntries__defaultOnce_1224 != -1)
      {
        dispatch_once(&suggestionsWithEnergyEntries__defaultOnce_1224, v52);
      }

      if (suggestionsWithEnergyEntries__classDebugEnabled_1225 == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"suggesting autobrightness"];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent2 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService suggestionsWithEnergyEntries:]"];
        [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:947];

        v25 = PLLogCommon(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v7 = 0x277CBE000uLL;
      }
    }

    v58[0] = @"PLBatteryUISuggestionTypeKey";
    v58[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v59[0] = &unk_2871456E8;
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
    v59[1] = v26;
    v27 = [*(v7 + 2752) dictionaryWithObjects:v59 forKeys:v58 count:2];
    [array addObject:v27];

    ADClientSetValueForScalarKey();
    [v6 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v6 setObject:@"autoBrightness" forKeyedSubscript:@"type"];
    v50[5] = MEMORY[0x277D85DD0];
    v50[6] = 3221225472;
    v50[7] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_1235;
    v50[8] = &unk_279A5BF38;
    v51 = v6;
    AnalyticsSendEventLazy();
  }

  if ([(PLBatteryBreakdownService *)self shouldSuggestReduceBrightnessWithEnergyEntries:entriesCopy andSavedEnergyPercent:&v55])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v28 = objc_opt_class();
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2_1238;
      v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v50[4] = v28;
      if (suggestionsWithEnergyEntries__defaultOnce_1236 != -1)
      {
        dispatch_once(&suggestionsWithEnergyEntries__defaultOnce_1236, v50);
      }

      if (suggestionsWithEnergyEntries__classDebugEnabled_1237 == 1)
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"suggesting reduce brightness"];
        v30 = MEMORY[0x277D3F178];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent3 = [v31 lastPathComponent];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService suggestionsWithEnergyEntries:]"];
        [v30 logMessage:v29 fromFile:lastPathComponent3 fromFunction:v33 fromLineNumber:960];

        v35 = PLLogCommon(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v7 = 0x277CBE000uLL;
      }
    }

    v56[0] = @"PLBatteryUISuggestionTypeKey";
    v56[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v57[0] = &unk_287145718;
    v36 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
    v57[1] = v36;
    v37 = [*(v7 + 2752) dictionaryWithObjects:v57 forKeys:v56 count:2];
    [array addObject:v37];

    ADClientSetValueForScalarKey();
    [v6 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v6 setObject:@"reduceBrightness" forKeyedSubscript:@"type"];
    v48[5] = MEMORY[0x277D85DD0];
    v48[6] = 3221225472;
    v48[7] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_1250;
    v48[8] = &unk_279A5BF38;
    v49 = v6;
    AnalyticsSendEventLazy();
  }

  if ([(PLBatteryBreakdownService *)self shouldShowUpgradeInsightWithQueryType:0])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v38 = objc_opt_class();
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2_1253;
      v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v48[4] = v38;
      if (suggestionsWithEnergyEntries__defaultOnce_1251 != -1)
      {
        dispatch_once(&suggestionsWithEnergyEntries__defaultOnce_1251, v48);
      }

      if (suggestionsWithEnergyEntries__classDebugEnabled_1252 == 1)
      {
        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"suggesting high activity after upgrade"];
        v40 = MEMORY[0x277D3F178];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent4 = [v41 lastPathComponent];
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService suggestionsWithEnergyEntries:]"];
        [v40 logMessage:v39 fromFile:lastPathComponent4 fromFunction:v43 fromLineNumber:1037];

        v45 = PLLogCommon(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    ADClientSetValueForScalarKey();
    [v6 setObject:@"insight" forKeyedSubscript:@"category"];
    [v6 setObject:@"upgradeUsage" forKeyedSubscript:@"type"];
    v47 = v6;
    AnalyticsSendEventLazy();
    [array addObject:&unk_287147E10];
  }

  return array;
}

void *__58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  suggestionsWithEnergyEntries__classDebugEnabled = result;
  return result;
}

void *__58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  suggestionsWithEnergyEntries__classDebugEnabled_1225 = result;
  return result;
}

void *__58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2_1238(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  suggestionsWithEnergyEntries__classDebugEnabled_1237 = result;
  return result;
}

void *__58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2_1253(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  suggestionsWithEnergyEntries__classDebugEnabled_1252 = result;
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
    v8 = [&unk_28714C170 objectAtIndexedSubscript:14];
    v9 = [&unk_28714C188 objectAtIndexedSubscript:2];
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
          v18 = [&unk_28714C1A0 objectAtIndexedSubscript:2];
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
    [&unk_28714C1B8 objectAtIndexedSubscript:2];
    v7 = v52 = self;
    v8 = [&unk_28714C1D0 objectAtIndexedSubscript:48];
    v55 = [v6 rootNodeQualificationNameWithQualificationName:v7 withRootNodeName:v8];

    selfCopy = self;
    v10 = objc_opt_class();
    v11 = [&unk_28714C1E8 objectAtIndexedSubscript:2];
    v12 = [&unk_28714C200 objectAtIndexedSubscript:12];
    v54 = [v10 rootNodeQualificationNameWithQualificationName:v11 withRootNodeName:v12];

    v13 = objc_opt_class();
    v14 = [&unk_28714C218 objectAtIndexedSubscript:2];
    v15 = [&unk_28714C230 objectAtIndexedSubscript:13];
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
          v22 = [&unk_28714C248 objectAtIndexedSubscript:48];
          v23 = [v21 objectForKeyedSubscript:v22];
          [v23 doubleValue];
          v25 = v24;

          v26 = [&unk_28714C260 objectAtIndexedSubscript:12];
          v27 = [v21 objectForKeyedSubscript:v26];
          [v27 doubleValue];
          v29 = v25 + v28;

          v30 = [&unk_28714C278 objectAtIndexedSubscript:13];
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
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v7 = [mEMORY[0x277D262A0] effectiveValueForSetting:*MEMORY[0x277D25D78]];

  if ([v7 intValue] == 0x7FFFFFFF)
  {
    v8 = objc_opt_class();
    v9 = [&unk_28714C290 objectAtIndexedSubscript:9];
    v10 = [&unk_28714C2A8 objectAtIndexedSubscript:10];
    v11 = [v8 rootNodeQualificationNameWithQualificationName:v9 withRootNodeName:v10];

    v12 = objc_opt_class();
    v13 = [&unk_28714C2C0 objectAtIndexedSubscript:9];
    v14 = [&unk_28714C2D8 objectAtIndexedSubscript:56];
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

    +[PLUtilities defaultBatteryEnergyCapacity];
    *percentCopy = v20 * 100.0 / v29;
    +[PLUtilities defaultBatteryEnergyCapacity];
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
    [PLUtilities defaultBatteryEnergyCapacity:v38];
    *percent = v17 * 100.0 / v35;
    +[PLUtilities defaultBatteryEnergyCapacity];
    v8 = v17 > v36 * 0.01;

    goto LABEL_21;
  }

  return 0;
}

- (BOOL)shouldSuggestReduceBrightnessWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent
{
  v27 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if (+[PLUtilities isALSCurveHigherThanDefault])
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
          v13 = [&unk_28714C2F0 objectAtIndexedSubscript:6];
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

    +[PLUtilities defaultBatteryEnergyCapacity];
    *percentCopy = v10 * 100.0 / v18;
    +[PLUtilities defaultBatteryEnergyCapacity];
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
  +[PLUtilities containerPath];
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
    _os_log_impl(&dword_25EE51000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "afterUpgradeTotalEnergy: %f afterUpgradeDataTotalForeGroundTime: %f beforeUpgradeDataTotalEnergy: %f beforeUpgradeDataTotalForeGroundTime: %f", buf, 0x2Au);
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
    _os_log_impl(&dword_25EE51000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "-----Usage data--- %@", buf, 0xCu);
  }

  return *&v9;
}

- (id)getUpgradeDataWithLastUpgradeTimestamp:(double)timestamp withFirstEntryTimestampFromDB:(double)b withNow:(id)now withBeforeUpgrade:(BOOL)upgrade withRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  upgradeCopy = upgrade;
  nowCopy = now;
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (upgradeCopy && (([nowCopy timeIntervalSince1970], v16 = v15 - timestamp, +[PLUtilities containerPath](PLUtilities, "containerPath"), v17 = _CFPreferencesCopyValueWithContainer(), (v18 = v17) == 0) ? (v20 = 86400.0) : (objc_msgSend(v17, "doubleValue"), v20 = v19), v18, v16 <= v20))
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
    v21 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:0 withDataRange:location withEntryTimeInterval:length withQueryType:0.0, 0.0, 3600.0];
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
    +[PLUtilities containerPath];
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

    if (v9 >= v13 || ((+[PLUtilities containerPath](PLUtilities, "containerPath"), v14 = _CFPreferencesCopyValueWithContainer(), (v15 = v14) == 0) ? (v17 = 86400.0) : ([v14 doubleValue], v17 = v16), v15, v9 <= v17))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v66) = 0;
        v25 = MEMORY[0x277D86220];
        v26 = "After upgrade time criteria not satisfied";
LABEL_16:
        _os_log_impl(&dword_25EE51000, v25, OS_LOG_TYPE_DEFAULT, v26, &v66, 2u);
      }
    }

    else
    {
      [(PLBatteryBreakdownService *)self getfirstEntryTimestampFromDb];
      v19 = v18;
      v20 = v6 - v18;
      +[PLUtilities containerPath];
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
        +[PLUtilities containerPath];
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
          +[PLUtilities containerPath];
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
        +[PLUtilities containerPath];
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

          +[PLUtilities containerPath];
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
          +[PLUtilities containerPath];
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
            _os_log_impl(&dword_25EE51000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Drain prior to upgrade: %f", &v66, 0xCu);
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
    _os_log_impl(&dword_25EE51000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Last upgrade timestamp not available", &v66, 2u);
    return 0;
  }

  return v5;
}

- (id)energyEntriesWithRange:(_PLTimeIntervalRange)range withEntryTimeInterval:(double)interval withQueryType:(int)type
{
  length = range.length;
  location = range.location;
  v208 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    v204[0] = MEMORY[0x277D85DD0];
    v204[1] = 3221225472;
    v204[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke;
    v204[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v204[4] = v9;
    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce != -1)
    {
      dispatch_once(&energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce, v204);
    }

    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"entryTimeInterval=%f", *&interval];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:1476];

      v16 = PLLogCommon(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v17 = *MEMORY[0x277D3F5B8];
  v18 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F318]];
  v19 = [MEMORY[0x277D3F128] entryKeyForType:v17 andName:*MEMORY[0x277D3F2F0]];
  v20 = MEMORY[0x277CCACA8];
  v21 = *MEMORY[0x277D3F300];
  entryKey = [MEMORY[0x277D3F0C8] entryKey];
  whereValidName = [objc_opt_class() whereValidName];
  v24 = [v20 stringWithFormat:@"%@ IN (SELECT ID FROM '%@' WHERE %@)", v21, entryKey, whereValidName];

  v25 = location + length;
  v175 = v24;
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"timestamp>%f AND timestamp<%f AND timeInterval=%f AND (%@)", *&location, *&v25, *&interval, v24];
  v190 = v18;
  v177 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM '%@' WHERE (%@)", v18, v26];;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v27 = objc_opt_class();
    v203[0] = MEMORY[0x277D85DD0];
    v203[1] = 3221225472;
    v203[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1528;
    v203[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v203[4] = v27;
    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1526 != -1)
    {
      dispatch_once(&energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1526, v203);
    }

    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1527 == 1)
    {
      v177 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateRootNodeEnergyQuery=%@", v177];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent2 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v29 logMessage:v177 fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:1489];

      v34 = PLLogCommon(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v35 = objc_msgSend_storage(self);
  v176 = [v35 entriesForKey:v190 withQuery:v177];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v36 = objc_opt_class();
    v202[0] = MEMORY[0x277D85DD0];
    v202[1] = 3221225472;
    v202[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1534;
    v202[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v202[4] = v36;
    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1532 != -1)
    {
      dispatch_once(&energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1532, v202);
    }

    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1533 == 1)
    {
      v176 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateRootNodeEnergyEntries=%@", v176];
      v38 = MEMORY[0x277D3F178];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent3 = [v39 lastPathComponent];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v38 logMessage:v176 fromFile:lastPathComponent3 fromFunction:v41 fromLineNumber:1493];

      v43 = PLLogCommon(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v175 = [MEMORY[0x277CCACA8] stringWithFormat:@"timestamp>%f AND timestamp<%f AND timeInterval=%f AND (%@)", *&location, *&v25, *&interval, v175];

  v170 = v175;
  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM '%@' WHERE (%@)", v19, v175];;
  v174 = v45;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v46 = objc_opt_class();
    v201[0] = MEMORY[0x277D85DD0];
    v201[1] = 3221225472;
    v201[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1540;
    v201[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v201[4] = v46;
    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1538 != -1)
    {
      dispatch_once(&energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1538, v201);
    }

    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1539 == 1)
    {
      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyQuery=%@", v45];
      v48 = MEMORY[0x277D3F178];
      v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent4 = [v49 lastPathComponent];
      v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v48 logMessage:v47 fromFile:lastPathComponent4 fromFunction:v51 fromLineNumber:1498];

      v53 = PLLogCommon(v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v45 = v174;
    }
  }

  v54 = objc_msgSend_storage(self);
  v55 = [v54 entriesForKey:v19 withQuery:v45];

  v173 = v55;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v56 = objc_opt_class();
    v200[0] = MEMORY[0x277D85DD0];
    v200[1] = 3221225472;
    v200[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1546;
    v200[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v200[4] = v56;
    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1544 != -1)
    {
      dispatch_once(&energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1544, v200);
    }

    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1545 == 1)
    {
      v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyEntries=%@", v55];
      v58 = MEMORY[0x277D3F178];
      v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent5 = [v59 lastPathComponent];
      v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v58 logMessage:v57 fromFile:lastPathComponent5 fromFunction:v61 fromLineNumber:1502];

      v63 = PLLogCommon(v62);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v55 = v173;
    }
  }

  v171 = v19;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  obj = [v176 arrayByAddingObjectsFromArray:v55];
  v194 = [obj countByEnumeratingWithState:&v196 objects:v207 count:16];
  if (v194)
  {
    v192 = *MEMORY[0x277D3F328];
    v193 = *v197;
    v187 = *MEMORY[0x277D3F310];
    v180 = *MEMORY[0x277D3F2F8];
    v186 = *MEMORY[0x277D3F330];
    v183 = *MEMORY[0x277D3F320];
    v184 = *MEMORY[0x277D3F308];
    selfCopy = self;
    do
    {
      v64 = 0;
      v65 = 0x277D3F000uLL;
      do
      {
        if (*v197 != v193)
        {
          objc_enumerationMutation(obj);
        }

        v66 = *(*(&v196 + 1) + 8 * v64);
        if ([*(v65 + 384) debugEnabled])
        {
          v67 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1552;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v67;
          if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1550 != -1)
          {
            dispatch_once(&energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1550, block);
          }

          if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1551 == 1)
          {
            v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateEnergyEntry=%@", v66];
            v69 = MEMORY[0x277D3F178];
            v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent6 = [v70 lastPathComponent];
            v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
            [v69 logMessage:v68 fromFile:lastPathComponent6 fromFunction:v72 fromLineNumber:1507];

            v74 = PLLogCommon(v73);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v206 = v68;
              _os_log_debug_impl(&dword_25EE51000, v74, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v75 = [v66 objectForKeyedSubscript:v192];
        if (v75)
        {
          v76 = [dictionary objectForKeyedSubscript:v75];
          if (v76)
          {
            goto LABEL_52;
          }

          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:dictionary2 forKeyedSubscript:v75];

          v76 = [dictionary objectForKeyedSubscript:v75];
          nodeIDToNodeName = [(PLBatteryBreakdownService *)self nodeIDToNodeName];
          v79 = [nodeIDToNodeName objectForKeyedSubscript:v75];

          if (!v79)
          {
            goto LABEL_90;
          }

          [v76 setObject:v79 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

LABEL_52:
          entryKey2 = [v66 entryKey];
          v81 = [entryKey2 isEqualToString:v190];

          if (v81)
          {
            v82 = [v66 objectForKeyedSubscript:v186];
            intValue = [v82 intValue];
            v84 = [&unk_28714C308 count];
            if (v84 > intValue)
            {
              v85 = [&unk_28714C338 objectAtIndexedSubscript:{objc_msgSend(v82, "intValue")}];
              v86 = [v66 objectForKeyedSubscript:v183];
              intValue2 = [v82 intValue];
              if (intValue2 == 58)
              {
                v88 = PLLogCommon(intValue2);
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                {
                  intValue3 = [v82 intValue];
                  [v86 doubleValue];
                  *buf = 67109376;
                  *v206 = intValue3;
                  *&v206[4] = 2048;
                  *&v206[6] = v160;
                  _os_log_debug_impl(&dword_25EE51000, v88, OS_LOG_TYPE_DEBUG, "before clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                }

                v89 = MEMORY[0x277CCABB0];
                [v86 doubleValue];
                v91 = [v89 numberWithDouble:{fmin(v90, 9000.0)}];

                v93 = PLLogCommon(v92);
                if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_93;
                }

                goto LABEL_78;
              }

              intValue4 = [v82 intValue];
              if (intValue4 == 59)
              {
                v131 = PLLogCommon(intValue4);
                if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
                {
                  intValue5 = [v82 intValue];
                  [v86 doubleValue];
                  *buf = 67109376;
                  *v206 = intValue5;
                  *&v206[4] = 2048;
                  *&v206[6] = v164;
                  _os_log_debug_impl(&dword_25EE51000, v131, OS_LOG_TYPE_DEBUG, "before clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                }

                v132 = MEMORY[0x277CCABB0];
                [v86 doubleValue];
                v91 = [v132 numberWithDouble:{fmin(v133, 5500.0)}];

                v93 = PLLogCommon(v134);
                if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
                {
LABEL_93:
                  intValue6 = [v82 intValue];
                  [v91 doubleValue];
                  *buf = 67109376;
                  *v206 = intValue6;
                  *&v206[4] = 2048;
                  *&v206[6] = v166;
                  _os_log_debug_impl(&dword_25EE51000, v93, OS_LOG_TYPE_DEBUG, "after clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                }

LABEL_78:
                selfCopy3 = self;

                v86 = v91;
              }

              else
              {
                selfCopy3 = self;
              }

              v136 = MEMORY[0x277CCABB0];
              v137 = [v76 objectForKeyedSubscript:v85];
              [v137 doubleValue];
              v139 = v138;
              [v86 doubleValue];
              v141 = [v136 numberWithDouble:v139 + v140 / 1000.0];
              [v76 setObject:v141 forKeyedSubscript:v85];

              v142 = MEMORY[0x277CCABB0];
              v143 = [v76 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
              [v143 doubleValue];
              v145 = v144;
              [v86 doubleValue];
              v147 = [v142 numberWithDouble:v145 + v146 / 1000.0];
              [v76 setObject:v147 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

              self = selfCopy3;
              v65 = 0x277D3F000;
              if (type == 4)
              {
                v148 = [(PLBatteryBreakdownService *)self energyMetricBucketForRootNodeID:v82];
                v149 = MEMORY[0x277CCACA8];
                v150 = [MEMORY[0x277CCABB0] numberWithShort:v148];
                v150 = [v149 stringWithFormat:@"%@", v150];

                if (v150)
                {
                  intValue7 = [v86 intValue];
                  if (intValue7 >= 1)
                  {
                    v153 = intValue7;
                    v154 = MEMORY[0x277CCABB0];
                    v155 = [v76 objectForKeyedSubscript:v150];
                    v156 = [v155 intValue] + v153;
                    v157 = v154;
                    self = selfCopy;
                    v158 = [v157 numberWithInt:v156];
                    [v76 setObject:v158 forKeyedSubscript:v150];

                    v65 = 0x277D3F000;
                  }
                }
              }

LABEL_89:
LABEL_90:

              goto LABEL_91;
            }

            v85 = PLLogCommon(v84);
            if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_89;
            }

            intValue8 = [v82 intValue];
            v126 = [&unk_28714C320 count];
            *buf = 67109376;
            *v206 = intValue8;
            *&v206[4] = 2048;
            *&v206[6] = v126;
            v127 = v85;
          }

          else
          {
            v82 = [v66 objectForKeyedSubscript:v187];
            intValue9 = [v82 intValue];
            v95 = [&unk_28714C350 count];
            if (v95 > intValue9)
            {
              v85 = [&unk_28714C380 objectAtIndexedSubscript:{objc_msgSend(v82, "intValue")}];
              v96 = [v66 objectForKeyedSubscript:v184];
              intValue10 = [v96 intValue];
              v98 = [&unk_28714C398 count];
              v188 = v96;
              if (v98 <= intValue10)
              {
                v99 = PLLogCommon(v98);
                if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                {
                  intValue11 = [v188 intValue];
                  v162 = [&unk_28714C3B0 count];
                  *buf = 67109376;
                  *v206 = intValue11;
                  *&v206[4] = 2048;
                  *&v206[6] = v162;
                  _os_log_error_impl(&dword_25EE51000, v99, OS_LOG_TYPE_ERROR, "qualificationID=%d out of bounds=%lu", buf, 0x12u);
                }
              }

              else
              {
                v99 = [&unk_28714C3C8 objectAtIndexedSubscript:{objc_msgSend(v96, "intValue")}];
                v100 = [objc_opt_class() rootNodeQualificationNameWithQualificationName:v99 withRootNodeName:v85];
                v101 = [v66 objectForKeyedSubscript:v180];
                v102 = MEMORY[0x277CCABB0];
                v103 = [v76 objectForKeyedSubscript:v100];
                [v103 doubleValue];
                v105 = v104;
                [v101 doubleValue];
                v107 = [v102 numberWithDouble:v105 + v106 / 1000.0];
                v182 = v100;
                v108 = v100;
                v109 = v101;
                [v76 setObject:v107 forKeyedSubscript:v108];

                v110 = MEMORY[0x277CCABB0];
                v111 = [v76 objectForKeyedSubscript:v99];
                [v111 doubleValue];
                v113 = v112;
                [v101 doubleValue];
                v115 = [v110 numberWithDouble:v113 + v114 / 1000.0];
                [v76 setObject:v115 forKeyedSubscript:v99];

                if (type == 4 && [v188 intValue] == 2)
                {
                  v116 = [(PLBatteryBreakdownService *)selfCopy energyMetricBucketForRootNodeID:v82];
                  v117 = MEMORY[0x277CCACA8];
                  v118 = [MEMORY[0x277CCABB0] numberWithShort:v116];
                  v118 = [v117 stringWithFormat:@"%@", v118];

                  if (v118)
                  {
                    v119 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"fg", v118];
                    intValue12 = [v109 intValue];
                    if (intValue12 >= 1)
                    {
                      v178 = MEMORY[0x277CCABB0];
                      v122 = intValue12;
                      [v76 objectForKeyedSubscript:v119];
                      v123 = v179 = v119;
                      v124 = [v178 numberWithInt:{objc_msgSend(v123, "intValue") + v122}];
                      [v76 setObject:v124 forKeyedSubscript:v179];

                      v119 = v179;
                    }
                  }
                }

                self = selfCopy;
                v65 = 0x277D3F000;
              }

              goto LABEL_89;
            }

            v85 = PLLogCommon(v95);
            if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_89;
            }

            intValue13 = [v82 intValue];
            v129 = [&unk_28714C368 count];
            *buf = 67109376;
            *v206 = intValue13;
            *&v206[4] = 2048;
            *&v206[6] = v129;
            v127 = v85;
          }

          _os_log_error_impl(&dword_25EE51000, v127, OS_LOG_TYPE_ERROR, "rootNodeID=%d out of bounds=%lu", buf, 0x12u);
          goto LABEL_89;
        }

LABEL_91:

        ++v64;
      }

      while (v194 != v64);
      v167 = [obj countByEnumeratingWithState:&v196 objects:v207 count:16];
      v194 = v167;
    }

    while (v167);
  }

  allValues = [dictionary allValues];

  objc_autoreleasePoolPop(context);

  return allValues;
}

void *__88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled = result;
  return result;
}

void *__88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1528(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1527 = result;
  return result;
}

void *__88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1534(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1533 = result;
  return result;
}

void *__88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1540(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1539 = result;
  return result;
}

void *__88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1546(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1545 = result;
  return result;
}

void *__88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1552(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1551 = result;
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
    return word_25F023B40[v3];
  }
}

- (id)populateEnergyBucketKeysWithEntries:(id)entries
{
  v52 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = entries;
  v33 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v33)
  {
    v32 = *v38;
    do
    {
      v3 = 0;
      do
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v3;
        v4 = *(*(&v37 + 1) + 8 * v3);
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

          v15 = [(PLBatteryBreakdownService *)self isForegroundOnlyBucket:v5];
          if (v15)
          {
            intValue2 = intValue;
            if (intValue >= 1)
            {
              v16 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
              [v4 setObject:v16 forKeyedSubscript:v9];

              intValue2 = intValue;
            }
          }

          v17 = (intValue - intValue2);
          if (v17 >= 1)
          {
            v18 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v18 doubleValue];
            v20 = v19;

            v21 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v21 doubleValue];
            v23 = v22;

            v24 = v20 + v23;
            if (v20 + v23 <= 0.0 || ((v24 = v20 / v24 * intValue, v25 = v24, v17 >= v24) ? (v17 = v25) : (v17 = v17), v25 >= 1))
            {
              v26 = [MEMORY[0x277CCABB0] numberWithInt:{v17, v24}];
              [v4 setObject:v26 forKeyedSubscript:v10];

              intValue2 = intValue - v17;
              v27 = [MEMORY[0x277CCABB0] numberWithInt:(intValue - v17)];
              [v4 setObject:v27 forKeyedSubscript:v9];
            }
          }

          v28 = PLLogCommon(v15);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v35 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            *buf = 138413314;
            v42 = v35;
            v43 = 2112;
            v44 = v8;
            v45 = 1024;
            v46 = intValue;
            v47 = 1024;
            v48 = intValue2;
            v49 = 1024;
            v50 = v17;
            _os_log_debug_impl(&dword_25EE51000, v28, OS_LOG_TYPE_DEBUG, "%@: %@ total:%d fg:%d bg:%d", buf, 0x28u);
          }

          v29 = v5++;
        }

        while (v29 < 0x11);
        v3 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v33);
  }

  return obj;
}

- (id)populateRootNodeEnergyKeysWithEnergyEntries:(id)entries
{
  v64 = *MEMORY[0x277D85DE8];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = entries;
  v43 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v43)
  {
    v40 = v55;
    v42 = *v57;
    v4 = 0x277D3F000uLL;
    selfCopy = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v57 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v5;
        v6 = *(*(&v56 + 1) + 8 * v5);
        if ([*(v4 + 384) debugEnabled])
        {
          v7 = objc_opt_class();
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v55[0] = __73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke;
          v55[1] = &__block_descriptor_40_e5_v8__0lu32l8;
          v55[2] = v7;
          if (populateRootNodeEnergyKeysWithEnergyEntries__defaultOnce != -1)
          {
            dispatch_once(&populateRootNodeEnergyKeysWithEnergyEntries__defaultOnce, v54);
          }

          if (populateRootNodeEnergyKeysWithEnergyEntries__classDebugEnabled == 1)
          {
            v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v6, v40];
            v9 = MEMORY[0x277D3F178];
            v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v10 lastPathComponent];
            v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService populateRootNodeEnergyKeysWithEnergyEntries:]"];
            [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1741];

            v14 = PLLogCommon(v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v62 = v8;
              _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        rootNodeNameToRootNodeEnergyKey = [(PLBatteryBreakdownService *)self rootNodeNameToRootNodeEnergyKey];
        v15 = [rootNodeNameToRootNodeEnergyKey countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v15)
        {
          v16 = v15;
          v47 = *v51;
          do
          {
            v17 = 0;
            do
            {
              if (*v51 != v47)
              {
                objc_enumerationMutation(rootNodeNameToRootNodeEnergyKey);
              }

              v18 = *(*(&v50 + 1) + 8 * v17);
              if ([*(v4 + 384) debugEnabled])
              {
                v19 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke_1603;
                block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                block[4] = v19;
                if (populateRootNodeEnergyKeysWithEnergyEntries__defaultOnce_1601 != -1)
                {
                  dispatch_once(&populateRootNodeEnergyKeysWithEnergyEntries__defaultOnce_1601, block);
                }

                if (populateRootNodeEnergyKeysWithEnergyEntries__classDebugEnabled_1602 == 1)
                {
                  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeName=%@", v18];
                  v21 = MEMORY[0x277D3F178];
                  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                  lastPathComponent2 = [v22 lastPathComponent];
                  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService populateRootNodeEnergyKeysWithEnergyEntries:]"];
                  [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:1743];

                  v26 = PLLogCommon(v25);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v62 = v20;
                    _os_log_debug_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  self = selfCopy;
                  v4 = 0x277D3F000uLL;
                }
              }

              rootNodeNameToRootNodeEnergyKey2 = [(PLBatteryBreakdownService *)self rootNodeNameToRootNodeEnergyKey];
              v28 = [rootNodeNameToRootNodeEnergyKey2 objectForKeyedSubscript:v18];

              if ([*(v4 + 384) debugEnabled])
              {
                v29 = objc_opt_class();
                v48[0] = MEMORY[0x277D85DD0];
                v48[1] = 3221225472;
                v48[2] = __73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke_1609;
                v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v48[4] = v29;
                if (populateRootNodeEnergyKeysWithEnergyEntries__defaultOnce_1607 != -1)
                {
                  dispatch_once(&populateRootNodeEnergyKeysWithEnergyEntries__defaultOnce_1607, v48);
                }

                if (populateRootNodeEnergyKeysWithEnergyEntries__classDebugEnabled_1608 == 1)
                {
                  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeEnergyKey=%@", v28];
                  v31 = MEMORY[0x277D3F178];
                  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                  lastPathComponent3 = [v32 lastPathComponent];
                  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService populateRootNodeEnergyKeysWithEnergyEntries:]"];
                  [v31 logMessage:v30 fromFile:lastPathComponent3 fromFunction:v34 fromLineNumber:1746];

                  v36 = PLLogCommon(v35);
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v62 = v30;
                    _os_log_debug_impl(&dword_25EE51000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  self = selfCopy;
                  v4 = 0x277D3F000;
                }
              }

              v37 = [v6 objectForKeyedSubscript:v18];
              if (v37)
              {
                v38 = v37;
              }

              else
              {
                v38 = &unk_2871456E8;
              }

              [v6 setObject:v38 forKeyedSubscript:v28];

              ++v17;
            }

            while (v16 != v17);
            v16 = [rootNodeNameToRootNodeEnergyKey countByEnumeratingWithState:&v50 objects:v60 count:16];
          }

          while (v16);
        }

        v5 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v43);
  }

  return obj;
}

void *__73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  populateRootNodeEnergyKeysWithEnergyEntries__classDebugEnabled = result;
  return result;
}

void *__73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke_1603(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  populateRootNodeEnergyKeysWithEnergyEntries__classDebugEnabled_1602 = result;
  return result;
}

void *__73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke_1609(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  populateRootNodeEnergyKeysWithEnergyEntries__classDebugEnabled_1608 = result;
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
        v5 = [&unk_28714C3E0 objectAtIndexedSubscript:15];
        v6 = [v4 objectForKeyedSubscript:v5];

        v70 = v6;
        if (v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = &unk_2871456E8;
        }

        [v4 setObject:v7 forKeyedSubscript:@"BLDEnergyAudio"];
        v8 = [&unk_28714C3F8 objectAtIndexedSubscript:50];
        v9 = [v4 objectForKeyedSubscript:v8];

        v69 = v9;
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = &unk_2871456E8;
        }

        [v4 setObject:v10 forKeyedSubscript:@"BLDEnergyBluetooth"];
        v11 = [&unk_28714C410 objectAtIndexedSubscript:37];
        v12 = [v4 objectForKeyedSubscript:v11];

        v68 = v12;
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = &unk_2871456E8;
        }

        [v4 setObject:v13 forKeyedSubscript:@"BLDEnergyCellData"];
        v14 = [&unk_28714C428 objectAtIndexedSubscript:10];
        v15 = [v4 objectForKeyedSubscript:v14];

        v67 = v15;
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = &unk_2871456E8;
        }

        [v4 setObject:v16 forKeyedSubscript:@"BLDEnergyDisplay"];
        v17 = [&unk_28714C440 objectAtIndexedSubscript:38];
        v18 = [v4 objectForKeyedSubscript:v17];

        v66 = v18;
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = &unk_2871456E8;
        }

        [v4 setObject:v19 forKeyedSubscript:@"BLDEnergyVoice"];
        v20 = [&unk_28714C458 objectAtIndexedSubscript:11];
        v21 = [v4 objectForKeyedSubscript:v20];

        v65 = v21;
        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = &unk_2871456E8;
        }

        [v4 setObject:v22 forKeyedSubscript:@"BLDEnergyWiFi"];
        v23 = [&unk_28714C470 objectAtIndexedSubscript:1];
        v24 = [v4 objectForKeyedSubscript:v23];

        v64 = v24;
        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = &unk_2871456E8;
        }

        [v4 setObject:v25 forKeyedSubscript:@"BBCondition"];
        v26 = objc_opt_class();
        v27 = [&unk_28714C488 objectAtIndexedSubscript:2];
        v28 = [&unk_28714C4A0 objectAtIndexedSubscript:2];
        v63 = [v26 rootNodeQualificationNameWithQualificationName:v27 withRootNodeName:v28];

        v29 = [v4 objectForKeyedSubscript:v63];
        v30 = v29;
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = &unk_2871456E8;
        }

        [v4 setObject:v31 forKeyedSubscript:@"BLDEnergyFGCPU"];
        v32 = [&unk_28714C4B8 objectAtIndexedSubscript:2];
        v33 = [v4 objectForKeyedSubscript:v32];

        if (v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = &unk_2871456E8;
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
        v43 = [&unk_28714C4D0 objectAtIndexedSubscript:2];
        v44 = [&unk_28714C4E8 objectAtIndexedSubscript:48];
        v45 = [v42 rootNodeQualificationNameWithQualificationName:v43 withRootNodeName:v44];

        v46 = [v4 objectForKeyedSubscript:v45];
        v47 = v46;
        if (v46)
        {
          v48 = v46;
        }

        else
        {
          v48 = &unk_2871456E8;
        }

        [v4 setObject:v48 forKeyedSubscript:@"BLDEnergyFGLocation"];
        v49 = [&unk_28714C500 objectAtIndexedSubscript:48];
        v50 = [v4 objectForKeyedSubscript:v49];

        if (v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = &unk_2871456E8;
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
  length = range.length;
  location = range.location;
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
  v12 = [v11 aggregateEntriesForKey:v10 withBucketLength:3600.0 inTimeIntervalRange:{location, length}];

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

          if (location <= v23 && v23 < location + length)
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
  v130 = [(PLBatteryBreakdownService *)selfCopy nonAppsRuntimesWithRange:location, length];
  v42 = [v130 countByEnumeratingWithState:&v151 objects:v165 count:16];
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
          objc_enumerationMutation(v130);
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

      v43 = [v130 countByEnumeratingWithState:&v151 objects:v165 count:16];
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
        [dictionary11 setObject:&unk_2871456E8 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];
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

        [dictionary11 setObject:&unk_2871456E8 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
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
  length = range.length;
  location = range.location;
  valuesCopy = values;
  v9 = objc_msgSend_storage(self);
  v10 = [v9 aggregateEntriesForKey:@"PLSpringBoardAgent_Aggregate_SBNotifications_Aggregate" withBucketLength:3600.0 inTimeIntervalRange:{location, length}];

  v11 = objc_opt_new();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke;
  v22[3] = &unk_279A5C278;
  v24 = location;
  v25 = length;
  v23 = v11;
  v12 = v11;
  [v10 enumerateObjectsUsingBlock:v22];
  v13 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v12 withPrimaryKeys:&unk_28714C518];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2;
  v20[3] = &unk_279A5C2E8;
  v15 = dictionary;
  v21 = v15;
  [v13 enumerateObjectsUsingBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_1726;
  v18[3] = &unk_279A5C310;
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
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"NotificationType"];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v6 = [v3 objectForKeyedSubscript:@"NotificationType"];
  if ([v6 intValue])
  {
    v7 = [v3 objectForKeyedSubscript:@"NotificationType"];
    if ([v7 intValue] != 3)
    {
      v14 = [v3 objectForKeyedSubscript:@"NotificationType"];
      v15 = [v14 intValue];

      if (v15 != -1)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  v8 = [v3 objectForKeyedSubscript:@"NotificationBundleID"];
  if (v8)
  {
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
        v13 = [v11 setObject:v9 forKeyedSubscript:v8];
      }

      v16 = PLLogCommon(v13);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2_cold_1();
      }
    }

    else
    {
      v16 = PLLogCommon(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2_cold_2();
      }
    }
  }

LABEL_19:
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
  length = range.length;
  location = range.location;
  v12[3] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v7 = [(PLOperator *)PLCameraAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Torch"];
  [(PLBatteryBreakdownService *)self nonAppRuntimeWithEventForwardTableName:v7 withRange:@"Level" andIdentificationKey:location, length];
  v11[0] = @"BundleID";
  v11[1] = @"ScreenOnTime";
  v12[0] = @"Flashlight";
  v12[1] = &unk_2871456E8;
  v11[2] = @"BackgroundTime";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  [array addObject:v9];

  return array;
}

- (double)nonAppRuntimeWithEventForwardTableName:(id)name withRange:(_PLTimeIntervalRange)range andIdentificationKey:(id)key
{
  length = range.length;
  location = range.location;
  v45[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  keyCopy = key;
  v11 = objc_alloc(MEMORY[0x277D3F260]);
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:location];
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
      v19 = location;
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
  v21 = [v20 entriesForKey:nameCopy inTimeRange:0 withFilters:{location, length}];

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
    v36 = v26 + location + length - v19;
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
  v90 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v7 = timeCopy;
  typeCopy = type;
  if (type == 4)
  {
    v75 = timeCopy;
    goto LABEL_62;
  }

  v75 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v71 = v7;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
  if (!v8)
  {
    goto LABEL_61;
  }

  v9 = v8;
  v10 = *v82;
  v11 = 0x277D3F000uLL;
  v72 = *v82;
  do
  {
    v12 = 0;
    do
    {
      if (*v82 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v81 + 1) + 8 * v12);
      v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      if ([*(v11 + 384) debugEnabled])
      {
        v15 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v15;
        if (filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce != -1)
        {
          dispatch_once(&filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce, block);
        }

        if (filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled == 1)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Entry: %@ ========= %@", v14, v13];
          v17 = MEMORY[0x277D3F178];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
          lastPathComponent = [v18 lastPathComponent];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
          [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:2090];

          v22 = PLLogCommon(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v88 = v16;
            _os_log_debug_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v10 = v72;
          v11 = 0x277D3F000uLL;
        }
      }

      if ([(PLBatteryBreakdownService *)self appTypeForName:v14]== 1)
      {
        v23 = [(PLBatteryBreakdownService *)self adjustFGBGTimeForNonAppEnergyEntry:v13];
        [v75 addObject:v23];

        if ([*(v11 + 384) debugEnabled])
        {
          v24 = objc_opt_class();
          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1736;
          v79[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v79[4] = v24;
          if (filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1734 != -1)
          {
            dispatch_once(&filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1734, v79);
          }

          if (filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1735 == 1)
          {
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Adding: NON APP"];
            v26 = MEMORY[0x277D3F178];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v27 lastPathComponent];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
            [v26 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:2096];

            v31 = PLLogCommon(v30);
            if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
LABEL_48:

              v10 = v72;
              v11 = 0x277D3F000;
              goto LABEL_56;
            }

LABEL_58:
            *buf = 138412290;
            v88 = v25;
            _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            goto LABEL_48;
          }
        }
      }

      else
      {
        v32 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v32 doubleValue];
        v34 = v33;

        v35 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        [v35 doubleValue];
        v37 = v36;

        if (typeCopy > 1 || (v34 == 0.0 ? (v38 = v37 < 60.0) : (v38 = 0), !v38))
        {
          if (v34 > 0.0 && v34 < 60.0)
          {
            v59 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
            [v59 doubleValue];
            v61 = v60;

            v62 = [MEMORY[0x277CCABB0] numberWithDouble:60.0 / v34 * v61];
            [v13 setObject:v62 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

            [v13 setObject:&unk_287145790 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            if ([*(v11 + 384) debugEnabled])
            {
              v63 = objc_opt_class();
              v77[0] = MEMORY[0x277D85DD0];
              v77[1] = 3221225472;
              v77[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1756;
              v77[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v77[4] = v63;
              if (filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1754 != -1)
              {
                dispatch_once(&filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1754, v77);
              }

              if (filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1755 == 1)
              {
                v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Adding with Corrected FGTime"];
                v64 = MEMORY[0x277D3F178];
                v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent3 = [v65 lastPathComponent];
                v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
                [v64 logMessage:v46 fromFile:lastPathComponent3 fromFunction:v67 fromLineNumber:2128];

                v52 = PLLogCommon(v68);
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_59;
                }

                goto LABEL_54;
              }
            }
          }

          else if ([*(v11 + 384) debugEnabled])
          {
            v45 = objc_opt_class();
            v76[0] = MEMORY[0x277D85DD0];
            v76[1] = 3221225472;
            v76[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1762;
            v76[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v76[4] = v45;
            if (filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1760 != -1)
            {
              dispatch_once(&filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1760, v76);
            }

            if (filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1761 == 1)
            {
              v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Adding without any changes"];
              v47 = MEMORY[0x277D3F178];
              v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent4 = [v48 lastPathComponent];
              v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
              [v47 logMessage:v46 fromFile:lastPathComponent4 fromFunction:v50 fromLineNumber:2130];

              v52 = PLLogCommon(v51);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
LABEL_59:
                *buf = 138412290;
                v88 = v46;
                _os_log_debug_impl(&dword_25EE51000, v52, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

LABEL_54:
              v10 = v72;

              v11 = 0x277D3F000;
            }
          }

          [v75 addObject:v13];
          goto LABEL_56;
        }

        if ([v14 isEqualToString:@"com.apple.findmy"] && (objc_msgSend(&unk_28714C530, "objectAtIndexedSubscript:", 59), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKeyedSubscript:", v39), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "doubleValue"), v42 = v41, v40, v39, v42 > 0.0))
        {
          v43 = PLLogCommon([v75 addObject:v13]);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:v85 withQueryType:&v86];
          }
        }

        else if ([*(v11 + 384) debugEnabled])
        {
          v53 = objc_opt_class();
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1748;
          v78[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v78[4] = v53;
          if (filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1746 != -1)
          {
            dispatch_once(&filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1746, v78);
          }

          if (filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1747 == 1)
          {
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dropping: Low FG BG Time"];
            v54 = MEMORY[0x277D3F178];
            v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent5 = [v55 lastPathComponent];
            v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
            [v54 logMessage:v25 fromFile:lastPathComponent5 fromFunction:v57 fromLineNumber:2112];

            v31 = PLLogCommon(v58);
            if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
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
    v69 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
    v9 = v69;
  }

  while (v69);
LABEL_61:

  v7 = v71;
LABEL_62:

  return v75;
}

void *__74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled = result;
  return result;
}

void *__74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1736(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1735 = result;
  return result;
}

void *__74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1748(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1747 = result;
  return result;
}

void *__74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1756(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1755 = result;
  return result;
}

void *__74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1762(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1761 = result;
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
    [entryCopy setObject:&unk_287145790 forKeyedSubscript:v5];
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
  v3 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLHomeKitAgent" withType:*MEMORY[0x277D3F5E8] withName:@"HomeKitEvents"];
  v4 = objc_msgSend_storage(self);
  v5 = [v4 countOfEntriesForKey:v3];

  v7 = PLLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryBreakdownService checkHomeKitEvents];
  }

  return v5 > 0;
}

- (id)applyStaticNameTransformationsWithEnergyEntries:(id)entries
{
  v73 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if (![(PLBatteryBreakdownService *)self hasHomeKitActivity])
  {
    [(PLBatteryBreakdownService *)self setHasHomeKitActivity:[(PLBatteryBreakdownService *)self checkHomeKitEvents]];
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v5 = entriesCopy;
  v61 = [v5 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v61)
  {
    v60 = *v67;
    v6 = 0x277D3F000uLL;
    obj = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v67 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v66 + 1) + 8 * v7);
        v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([*(v6 + 384) debugEnabled])
        {
          v10 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v10;
          if (applyStaticNameTransformationsWithEnergyEntries__defaultOnce != -1)
          {
            dispatch_once(&applyStaticNameTransformationsWithEnergyEntries__defaultOnce, block);
          }

          if (applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled == 1)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"givenName=%@", v9];
            v12 = MEMORY[0x277D3F178];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v13 lastPathComponent];
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService applyStaticNameTransformationsWithEnergyEntries:]"];
            [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2199];

            v17 = PLLogCommon(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v71 = v11;
              _os_log_debug_impl(&dword_25EE51000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v6 = 0x277D3F000uLL;
          }
        }

        if ([v9 isEqualToString:@"com.apple.springboard.lockscreen.navigation"])
        {
          v18 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

          if (v18)
          {
            if ([*(v6 + 384) debugEnabled])
            {
              v19 = objc_opt_class();
              v64[0] = MEMORY[0x277D85DD0];
              v64[1] = 3221225472;
              v64[2] = __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1777;
              v64[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v64[4] = v19;
              if (applyStaticNameTransformationsWithEnergyEntries__defaultOnce_1775 != -1)
              {
                dispatch_once(&applyStaticNameTransformationsWithEnergyEntries__defaultOnce_1775, v64);
              }

              if (applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled_1776 == 1)
              {
                v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error lockscreen-navigation background time not zero"];
                v21 = MEMORY[0x277D3F178];
                v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent2 = [v22 lastPathComponent];
                v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService applyStaticNameTransformationsWithEnergyEntries:]"];
                [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:2203];

                v26 = PLLogCommon(v25);
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v71 = v20;
                  _os_log_debug_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v6 = 0x277D3F000uLL;
              }
            }

            if ([*(v6 + 384) debugEnabled])
            {
              v27 = objc_opt_class();
              v63[0] = MEMORY[0x277D85DD0];
              v63[1] = 3221225472;
              v63[2] = __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1783;
              v63[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v63[4] = v27;
              if (applyStaticNameTransformationsWithEnergyEntries__defaultOnce_1781 != -1)
              {
                dispatch_once(&applyStaticNameTransformationsWithEnergyEntries__defaultOnce_1781, v63);
              }

              if (applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled_1782 == 1)
              {
                v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"lockscreen-navigation energyEntry = %@", v8];
                v29 = MEMORY[0x277D3F178];
                v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent3 = [v30 lastPathComponent];
                v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService applyStaticNameTransformationsWithEnergyEntries:]"];
                [v29 logMessage:v28 fromFile:lastPathComponent3 fromFunction:v32 fromLineNumber:2204];

                v34 = PLLogCommon(v33);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v71 = v28;
                  _os_log_debug_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v6 = 0x277D3F000;
              }
            }
          }

          v35 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          v36 = MEMORY[0x277CCABB0];
          [v35 doubleValue];
          v38 = [v36 numberWithDouble:-v37];
          [v8 setObject:v38 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        }

        else if ([v9 isEqualToString:@"com.apple.PassbookUIService"])
        {
          [v8 setObject:&unk_28714B1C8 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        }

        givenNameToMappedName = [(PLBatteryBreakdownService *)self givenNameToMappedName];
        v40 = [givenNameToMappedName objectForKeyedSubscript:v9];

        if ([*(v6 + 384) debugEnabled])
        {
          v41 = objc_opt_class();
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1791;
          v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v62[4] = v41;
          if (applyStaticNameTransformationsWithEnergyEntries__defaultOnce_1789 != -1)
          {
            dispatch_once(&applyStaticNameTransformationsWithEnergyEntries__defaultOnce_1789, v62);
          }

          if (applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled_1790 == 1)
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"mappedName=%@", v40];
            v43 = MEMORY[0x277D3F178];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent4 = [v44 lastPathComponent];
            v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService applyStaticNameTransformationsWithEnergyEntries:]"];
            [v43 logMessage:v42 fromFile:lastPathComponent4 fromFunction:v46 fromLineNumber:2214];

            v48 = PLLogCommon(v47);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v71 = v42;
              _os_log_debug_impl(&dword_25EE51000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v6 = 0x277D3F000;
          }
        }

        if (v40)
        {
          [v8 setObject:v40 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        }

        if ([(PLBatteryBreakdownService *)self hasHomeKitActivity])
        {
          v49 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v50 = [v49 isEqualToString:@"HomeKit"];

          if (v50)
          {
            v52 = PLLogCommon(v51);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v71 = v8;
              _os_log_debug_impl(&dword_25EE51000, v52, OS_LOG_TYPE_DEBUG, "Energy Entry before mapping: %@", buf, 0xCu);
            }

            installedBundleIDToDisplayName = [(PLBatteryBreakdownService *)self installedBundleIDToDisplayName];
            v54 = [installedBundleIDToDisplayName objectForKeyedSubscript:@"com.apple.Home"];

            if (v54)
            {
              [v8 setObject:@"com.apple.Home" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            }

            v55 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v8 setObject:v55 forKeyedSubscript:@"HomeKitEnergy"];

            v57 = PLLogCommon(v56);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v71 = v8;
              _os_log_debug_impl(&dword_25EE51000, v57, OS_LOG_TYPE_DEBUG, "Energy Entry after mapping: %@", buf, 0xCu);
            }
          }
        }

        ++v7;
      }

      while (v61 != v7);
      v5 = obj;
      v61 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v61);
  }

  return v5;
}

void *__77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled = result;
  return result;
}

void *__77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1777(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled_1776 = result;
  return result;
}

void *__77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1783(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled_1782 = result;
  return result;
}

void *__77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1791(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled_1790 = result;
  return result;
}

- (id)bundleIDsForMappedName:(id)name
{
  nameCopy = name;
  givenNameToMappedName = [(PLBatteryBreakdownService *)self givenNameToMappedName];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PLBatteryBreakdownService_bundleIDsForMappedName___block_invoke;
  v10[3] = &unk_279A5C338;
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
          [v8 setObject:&unk_2871456E8 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          [v8 setObject:&unk_2871456E8 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
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
  v64 = *MEMORY[0x277D85DE8];
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
    v14 = [deletedAppNames2 count];

    if (v14)
    {
      v12 = @"DeletedApp";
    }

    else
    {
      deletedAppClipNames3 = [(PLBatteryBreakdownService *)self deletedAppClipNames];
      v16 = [deletedAppClipNames3 count];

      v12 = @"DeletedAppClip";
      if (!v16)
      {
        v12 = 0;
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

  v12 = @"DeletedAppAndAppClip";
LABEL_12:
  v51 = v12;
  v17 = PLLogCommon(v11);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryBreakdownService mapDeletedAppsWithEnergyEntries:];
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v49 = entriesCopy;
  obj = entriesCopy;
  v18 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v18)
  {
    v19 = v18;
    v52 = *v58;
    do
    {
      v20 = 0;
      do
      {
        if (*v58 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v57 + 1) + 8 * v20);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v22 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __61__PLBatteryBreakdownService_mapDeletedAppsWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v22;
          if (mapDeletedAppsWithEnergyEntries__defaultOnce != -1)
          {
            dispatch_once(&mapDeletedAppsWithEnergyEntries__defaultOnce, block);
          }

          if (mapDeletedAppsWithEnergyEntries__classDebugEnabled == 1)
          {
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v21];
            v24 = MEMORY[0x277D3F178];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v25 lastPathComponent];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService mapDeletedAppsWithEnergyEntries:]"];
            [v24 logMessage:v23 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:2279];

            v29 = PLLogCommon(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v62 = v23;
              _os_log_debug_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        deletedAppNames4 = [(PLBatteryBreakdownService *)self deletedAppNames];
        v31 = [v21 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([deletedAppNames4 containsObject:v31])
        {
        }

        else
        {
          deletedAppClipNames4 = [(PLBatteryBreakdownService *)self deletedAppClipNames];
          v33 = [v21 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v34 = [deletedAppClipNames4 containsObject:v33];

          if (!v34)
          {
            goto LABEL_39;
          }
        }

        debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
        if (debugEnabled)
        {
          debugEnabled = objc_opt_class();
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __61__PLBatteryBreakdownService_mapDeletedAppsWithEnergyEntries___block_invoke_1810;
          v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v55[4] = debugEnabled;
          if (mapDeletedAppsWithEnergyEntries__defaultOnce_1808 != -1)
          {
            dispatch_once(&mapDeletedAppsWithEnergyEntries__defaultOnce_1808, v55);
          }

          if (mapDeletedAppsWithEnergyEntries__classDebugEnabled_1809 == 1)
          {
            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"this is a deleted app"];
            v37 = MEMORY[0x277D3F178];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v38 lastPathComponent];
            v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService mapDeletedAppsWithEnergyEntries:]"];
            [v37 logMessage:v36 fromFile:lastPathComponent2 fromFunction:v40 fromLineNumber:2282];

            v42 = PLLogCommon(v41);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v62 = v36;
              _os_log_debug_impl(&dword_25EE51000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v43 = PLLogCommon(debugEnabled);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryBreakdownService *)&v53 mapDeletedAppsWithEnergyEntries:v54];
        }

        [v21 setObject:v51 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
LABEL_39:
        v44 = [v21 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v45 = [v44 containsString:@"Unspecified"];

        if (v45)
        {
          v47 = PLLogCommon(v46);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EE51000, v47, OS_LOG_TYPE_DEFAULT, "AppDeletion : Found an unspecified entry so refactoring", buf, 2u);
          }

          [v21 setObject:@"DeletedApp" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        }

        ++v20;
      }

      while (v19 != v20);
      v19 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v19);
  }

  entriesCopy = v49;
LABEL_46:

  return entriesCopy;
}

void *__61__PLBatteryBreakdownService_mapDeletedAppsWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  mapDeletedAppsWithEnergyEntries__classDebugEnabled = result;
  return result;
}

void *__61__PLBatteryBreakdownService_mapDeletedAppsWithEnergyEntries___block_invoke_1810(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  mapDeletedAppsWithEnergyEntries__classDebugEnabled_1809 = result;
  return result;
}

- (id)mapPluginsToAppsWithEnergyEntries:(id)entries
{
  v57 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = entries;
  v45 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v45)
  {
    v4 = *v49;
    v5 = 0x277D3F000uLL;
    v6 = @"PluginType";
    v43 = *v49;
    do
    {
      v7 = 0;
      do
      {
        if (*v49 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = v6;
        v9 = *(*(&v48 + 1) + 8 * v7);
        if ([*(v5 + 384) debugEnabled])
        {
          v10 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __63__PLBatteryBreakdownService_mapPluginsToAppsWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v10;
          if (mapPluginsToAppsWithEnergyEntries__defaultOnce != -1)
          {
            dispatch_once(&mapPluginsToAppsWithEnergyEntries__defaultOnce, block);
          }

          if (mapPluginsToAppsWithEnergyEntries__classDebugEnabled == 1)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v9];
            v12 = MEMORY[0x277D3F178];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v13 lastPathComponent];
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService mapPluginsToAppsWithEnergyEntries:]"];
            [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2305];

            v17 = PLLogCommon(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v53 = v11;
              _os_log_debug_impl(&dword_25EE51000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v4 = v43;
            v5 = 0x277D3F000uLL;
          }
        }

        installedPluginBundleIDToPluginEntry = [(PLBatteryBreakdownService *)self installedPluginBundleIDToPluginEntry];
        v19 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v20 = [installedPluginBundleIDToPluginEntry objectForKeyedSubscript:v19];

        v6 = v8;
        if (v20)
        {
          if ([*(v5 + 384) debugEnabled])
          {
            v21 = objc_opt_class();
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = __63__PLBatteryBreakdownService_mapPluginsToAppsWithEnergyEntries___block_invoke_1819;
            v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v46[4] = v21;
            if (mapPluginsToAppsWithEnergyEntries__defaultOnce_1817 != -1)
            {
              dispatch_once(&mapPluginsToAppsWithEnergyEntries__defaultOnce_1817, v46);
            }

            if (mapPluginsToAppsWithEnergyEntries__classDebugEnabled_1818 == 1)
            {
              v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"this is a plugin"];
              v23 = MEMORY[0x277D3F178];
              v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent2 = [v24 lastPathComponent];
              v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService mapPluginsToAppsWithEnergyEntries:]"];
              [v23 logMessage:v22 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:2310];

              v28 = PLLogCommon(v27);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v53 = v22;
                _os_log_debug_impl(&dword_25EE51000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v4 = v43;
              v5 = 0x277D3F000;
              v6 = v8;
            }
          }

          v29 = [v20 objectForKeyedSubscript:@"PluginId"];
          v30 = [v29 isEqualToString:@"com.apple.AppStore.ProductPageExtension"];

          if ((v30 & 1) == 0)
          {
            v31 = [v20 objectForKeyedSubscript:@"PluginParentApp"];
            [v9 setObject:v31 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

            v32 = [v20 objectForKeyedSubscript:v6];
            v33 = [v32 isEqualToString:@"com.apple.watchkit"];

            if (v33)
            {
              v34 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
              [v9 setObject:v34 forKeyedSubscript:@"WatchEnergy"];
            }

            else
            {
              v35 = [v20 objectForKeyedSubscript:v6];
              v36 = [v35 isEqualToString:@"com.apple.widgetkit-extension"];

              if (!v36)
              {
                goto LABEL_28;
              }

              v37 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
              [v9 setObject:v37 forKeyedSubscript:@"ChronoWidgetEnergy"];

              v34 = PLLogCommon(v38);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                v39 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                v40 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v40 doubleValue];
                *buf = 138412546;
                v53 = v39;
                v54 = 2048;
                v55 = v41;
                _os_log_debug_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEBUG, "Widget Energy for %@ : %f", buf, 0x16u);
              }
            }

            v6 = v8;
          }
        }

LABEL_28:

        ++v7;
      }

      while (v45 != v7);
      v45 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v45);
  }

  return obj;
}

void *__63__PLBatteryBreakdownService_mapPluginsToAppsWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  mapPluginsToAppsWithEnergyEntries__classDebugEnabled = result;
  return result;
}

void *__63__PLBatteryBreakdownService_mapPluginsToAppsWithEnergyEntries___block_invoke_1819(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  mapPluginsToAppsWithEnergyEntries__classDebugEnabled_1818 = result;
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
      v20 = [&unk_28714C548 countByEnumeratingWithState:&v48 objects:v57 count:16];
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
              objc_enumerationMutation(&unk_28714C548);
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

          v21 = [&unk_28714C548 countByEnumeratingWithState:&v48 objects:v57 count:16];
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
      v31 = [&unk_28714C548 countByEnumeratingWithState:&v44 objects:v56 count:16];
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
              objc_enumerationMutation(&unk_28714C548);
            }

            v35 = [dictionary objectForKeyedSubscript:*(*(&v44 + 1) + 8 * k)];
            v36 = v35;
            if (v35)
            {
              v40[0] = MEMORY[0x277D85DD0];
              v40[1] = 3221225472;
              v40[2] = __71__PLBatteryBreakdownService_reaccountExchangeEntriesWithEnergyEntries___block_invoke;
              v40[3] = &unk_279A5C0F0;
              v41 = v35;
              v42 = v18;
              v43 = v23;
              [v41 enumerateKeysAndObjectsUsingBlock:v40];
            }
          }

          v32 = [&unk_28714C548 countByEnumeratingWithState:&v44 objects:v56 count:16];
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
  v47 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v4 = entriesCopy;
  if (entriesCopy && [entriesCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v43;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v43 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v42 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v12)
          {
            v13 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v11 forKeyedSubscript:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
      if (reaccountBackupRestoreWithEnergyEntries__defaultOnce != -1)
      {
        dispatch_once(&reaccountBackupRestoreWithEnergyEntries__defaultOnce, block);
      }

      if (reaccountBackupRestoreWithEnergyEntries__classDebugEnabled == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"backupEnergyEntry=%@, restoreEnergyEntry=%@", v14, v15];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService reaccountBackupRestoreWithEnergyEntries:]"];
        [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:2473];

        v23 = PLLogCommon(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    if (v14 && v15)
    {
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppNameKey"];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke_1872;
      v38[3] = &unk_279A5C118;
      v24 = v14;
      v39 = v24;
      v25 = v15;
      v40 = v25;
      [v24 enumerateKeysAndObjectsUsingBlock:v38];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v26 = objc_opt_class();
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke_2;
        v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v37[4] = v26;
        if (reaccountBackupRestoreWithEnergyEntries__defaultOnce_1873 != -1)
        {
          dispatch_once(&reaccountBackupRestoreWithEnergyEntries__defaultOnce_1873, v37);
        }

        if (reaccountBackupRestoreWithEnergyEntries__classDebugEnabled_1874 == 1)
        {
          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"combined backupEnergyEntry=%@", v24];
          v36 = MEMORY[0x277D3F178];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
          lastPathComponent2 = [v28 lastPathComponent];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService reaccountBackupRestoreWithEnergyEntries:]"];
          [v36 logMessage:v27 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:2485];

          v31 = v27;
          v33 = PLLogCommon(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v34 = [v6 mutableCopy];
      [v34 removeObject:v25];
    }

    else
    {
      v34 = v6;
    }
  }

  else
  {
    v34 = MEMORY[0x277CBEBF8];
  }

  return v34;
}

void *__69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reaccountBackupRestoreWithEnergyEntries__classDebugEnabled = result;
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
  reaccountBackupRestoreWithEnergyEntries__classDebugEnabled_1874 = result;
  return result;
}

- (id)combineDuplicatesWithEnergyEntries:(id)entries
{
  v53 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = entriesCopy;
  v40 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v40)
  {
    v39 = *v47;
    v37 = dictionary;
    do
    {
      v5 = 0;
      do
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v46 + 1) + 8 * v5);
        v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v8 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v8;
          if (combineDuplicatesWithEnergyEntries__defaultOnce != -1)
          {
            dispatch_once(&combineDuplicatesWithEnergyEntries__defaultOnce, block);
          }

          if (combineDuplicatesWithEnergyEntries__classDebugEnabled == 1)
          {
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"name=%@", v7];
            v10 = MEMORY[0x277D3F178];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v11 lastPathComponent];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService combineDuplicatesWithEnergyEntries:]"];
            [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:2496];

            v15 = PLLogCommon(v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v51 = v9;
              _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            dictionary = v37;
          }
        }

        if (v7)
        {
          v16 = [dictionary objectForKeyedSubscript:v7];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v17 = objc_opt_class();
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_1883;
            v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v44[4] = v17;
            if (combineDuplicatesWithEnergyEntries__defaultOnce_1881 != -1)
            {
              dispatch_once(&combineDuplicatesWithEnergyEntries__defaultOnce_1881, v44);
            }

            if (combineDuplicatesWithEnergyEntries__classDebugEnabled_1882 == 1)
            {
              v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"storedEnergyEntry=%@", v16];
              v19 = MEMORY[0x277D3F178];
              v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent2 = [v20 lastPathComponent];
              v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService combineDuplicatesWithEnergyEntries:]"];
              [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:2500];

              v24 = PLLogCommon(v23);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v51 = v18;
                _os_log_debug_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              dictionary = v37;
            }
          }

          if (v16)
          {
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_1887;
            v42[3] = &unk_279A5C360;
            v43 = v16;
            [v6 enumerateKeysAndObjectsUsingBlock:v42];
          }

          else
          {
            [dictionary setObject:v6 forKeyedSubscript:v7];
          }

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v25 = objc_opt_class();
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_2;
            v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v41[4] = v25;
            if (combineDuplicatesWithEnergyEntries__defaultOnce_1888 != -1)
            {
              dispatch_once(&combineDuplicatesWithEnergyEntries__defaultOnce_1888, v41);
            }

            if (combineDuplicatesWithEnergyEntries__classDebugEnabled_1889 == 1)
            {
              v26 = MEMORY[0x277CCACA8];
              v27 = [dictionary objectForKeyedSubscript:v7];
              v28 = [v26 stringWithFormat:@"nameToEnergyEntry[name]=%@", v27];

              v29 = MEMORY[0x277D3F178];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent3 = [v30 lastPathComponent];
              v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService combineDuplicatesWithEnergyEntries:]"];
              [v29 logMessage:v28 fromFile:lastPathComponent3 fromFunction:v32 fromLineNumber:2528];

              v34 = PLLogCommon(v33);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v51 = v28;
                _os_log_debug_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }
        }

        ++v5;
      }

      while (v40 != v5);
      v40 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v40);
  }

  allValues = [dictionary allValues];

  return allValues;
}

void *__64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  combineDuplicatesWithEnergyEntries__classDebugEnabled = result;
  return result;
}

void *__64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_1883(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  combineDuplicatesWithEnergyEntries__classDebugEnabled_1882 = result;
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
  combineDuplicatesWithEnergyEntries__classDebugEnabled_1889 = result;
  return result;
}

- (id)determineDisplayNamesWithEnergyEntries:(id)entries
{
  v44 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = [entriesCopy countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    v33 = *v38;
    selfCopy = self;
    do
    {
      v8 = 0;
      v34 = v6;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v9 = *(*(&v37 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v11 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __68__PLBatteryBreakdownService_determineDisplayNamesWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v11;
          if (determineDisplayNamesWithEnergyEntries__defaultOnce != -1)
          {
            dispatch_once(&determineDisplayNamesWithEnergyEntries__defaultOnce, block);
          }

          if (determineDisplayNamesWithEnergyEntries__classDebugEnabled == 1)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v10];
            v13 = MEMORY[0x277D3F178];
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v14 lastPathComponent];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService determineDisplayNamesWithEnergyEntries:]"];
            [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:2536];

            v18 = PLLogCommon(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v42 = v12;
              _os_log_debug_impl(&dword_25EE51000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v6 = v34;
            v7 = v33;
          }
        }

        installedBundleIDToDisplayName = [(PLBatteryBreakdownService *)self installedBundleIDToDisplayName];
        v20 = [installedBundleIDToDisplayName objectForKeyedSubscript:v10];

        if ([(__CFString *)v10 isEqualToString:@"com.apple.Bridge"])
        {

          v20 = @"Apple Watch";
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v21 = objc_opt_class();
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __68__PLBatteryBreakdownService_determineDisplayNamesWithEnergyEntries___block_invoke_1898;
          v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v35[4] = v21;
          if (determineDisplayNamesWithEnergyEntries__defaultOnce_1896 != -1)
          {
            dispatch_once(&determineDisplayNamesWithEnergyEntries__defaultOnce_1896, v35);
          }

          if (determineDisplayNamesWithEnergyEntries__classDebugEnabled_1897 == 1)
          {
            v22 = entriesCopy;
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayName=%@", v20];
            v24 = MEMORY[0x277D3F178];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v25 lastPathComponent];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService determineDisplayNamesWithEnergyEntries:]"];
            [v24 logMessage:v23 fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:2542];

            v29 = PLLogCommon(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v42 = v23;
              _os_log_debug_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            entriesCopy = v22;
            self = selfCopy;
            v6 = v34;
            v7 = v33;
          }
        }

        if (v20)
        {
          v30 = v20;
        }

        else
        {
          v30 = v10;
        }

        [v9 setObject:v30 forKeyedSubscript:@"PLBatteryUIAppNameKey"];

        ++v8;
      }

      while (v6 != v8);
      v6 = [entriesCopy countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v6);
  }

  return entriesCopy;
}

void *__68__PLBatteryBreakdownService_determineDisplayNamesWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  determineDisplayNamesWithEnergyEntries__classDebugEnabled = result;
  return result;
}

void *__68__PLBatteryBreakdownService_determineDisplayNamesWithEnergyEntries___block_invoke_1898(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  determineDisplayNamesWithEnergyEntries__classDebugEnabled_1897 = result;
  return result;
}

- (id)filterWithEnergyEntries:(id)entries withQueryType:(int)type
{
  v64 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  array = [MEMORY[0x277CBEB18] array];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = entriesCopy;
  v52 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v52)
  {
    v51 = *v58;
    v7 = 0x277D3F000uLL;
    typeCopy = type;
    selfCopy = self;
    do
    {
      v8 = 0;
      do
      {
        if (*v58 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v57 + 1) + 8 * v8);
        if ([*(v7 + 384) debugEnabled])
        {
          v10 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v10;
          if (filterWithEnergyEntries_withQueryType__defaultOnce != -1)
          {
            dispatch_once(&filterWithEnergyEntries_withQueryType__defaultOnce, block);
          }

          if (filterWithEnergyEntries_withQueryType__classDebugEnabled == 1)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v9];
            v12 = MEMORY[0x277D3F178];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v13 lastPathComponent];
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterWithEnergyEntries:withQueryType:]"];
            [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2552];

            v17 = PLLogCommon(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v62 = v11;
              _os_log_debug_impl(&dword_25EE51000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v18 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v19 = [(PLBatteryBreakdownService *)self appTypeForName:v18];
        if ([*(v7 + 384) debugEnabled])
        {
          v20 = objc_opt_class();
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1904;
          v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v55[4] = v20;
          if (filterWithEnergyEntries_withQueryType__defaultOnce_1902 != -1)
          {
            dispatch_once(&filterWithEnergyEntries_withQueryType__defaultOnce_1902, v55);
          }

          if (filterWithEnergyEntries_withQueryType__classDebugEnabled_1903 == 1)
          {
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"appType=%i", v19];
            v22 = MEMORY[0x277D3F178];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v23 lastPathComponent];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterWithEnergyEntries:withQueryType:]"];
            [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:2558];

            v27 = PLLogCommon(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v62 = v21;
              _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = selfCopy;
            v7 = 0x277D3F000uLL;
          }
        }

        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
        [v9 setObject:v28 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];

        v29 = [(PLBatteryBreakdownService *)self minimumRequiredQueryTypeForAppType:v19];
        if ([*(v7 + 384) debugEnabled])
        {
          v30 = objc_opt_class();
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1910;
          v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v54[4] = v30;
          if (filterWithEnergyEntries_withQueryType__defaultOnce_1908 != -1)
          {
            dispatch_once(&filterWithEnergyEntries_withQueryType__defaultOnce_1908, v54);
          }

          if (filterWithEnergyEntries_withQueryType__classDebugEnabled_1909 == 1)
          {
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"minimumRequiredQueryType=%i", v29];
            v32 = MEMORY[0x277D3F178];
            v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent3 = [v33 lastPathComponent];
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterWithEnergyEntries:withQueryType:]"];
            [v32 logMessage:v31 fromFile:lastPathComponent3 fromFunction:v35 fromLineNumber:2564];

            v37 = PLLogCommon(v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v62 = v31;
              _os_log_debug_impl(&dword_25EE51000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            type = typeCopy;
            self = selfCopy;
            v7 = 0x277D3F000uLL;
          }
        }

        if (type == 4)
        {
          if ((v19 & 0xFFFFFFFB) != 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v29 > type)
          {
            goto LABEL_39;
          }

          if ([*(v7 + 384) debugEnabled])
          {
            v38 = objc_opt_class();
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1916;
            v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v53[4] = v38;
            if (filterWithEnergyEntries_withQueryType__defaultOnce_1914 != -1)
            {
              dispatch_once(&filterWithEnergyEntries_withQueryType__defaultOnce_1914, v53);
            }

            if (filterWithEnergyEntries_withQueryType__classDebugEnabled_1915 == 1)
            {
              v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"adding entry"];
              v40 = MEMORY[0x277D3F178];
              v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent4 = [v41 lastPathComponent];
              v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterWithEnergyEntries:withQueryType:]"];
              [v40 logMessage:v39 fromFile:lastPathComponent4 fromFunction:v43 fromLineNumber:2575];

              v45 = PLLogCommon(v44);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v62 = v39;
                _os_log_debug_impl(&dword_25EE51000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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

      while (v52 != v8);
      v52 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v52);
  }

  return array;
}

void *__67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterWithEnergyEntries_withQueryType__classDebugEnabled = result;
  return result;
}

void *__67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1904(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterWithEnergyEntries_withQueryType__classDebugEnabled_1903 = result;
  return result;
}

void *__67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1910(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterWithEnergyEntries_withQueryType__classDebugEnabled_1909 = result;
  return result;
}

void *__67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1916(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterWithEnergyEntries_withQueryType__classDebugEnabled_1915 = result;
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
        v10 = [&unk_287147E60 objectForKeyedSubscript:v9];
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
        v10 = [&unk_287147E88 objectForKeyedSubscript:v9];
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
  v236 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    v227[0] = MEMORY[0x277D85DD0];
    v227[1] = 3221225472;
    v227[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke;
    v227[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v227[4] = v8;
    v9 = v227;
    if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce != -1)
    {
      dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce, v9);
    }

    if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled == 1)
    {
      entryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", entryCopy];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:]"];
      [v11 logMessage:entryCopy fromFile:lastPathComponent fromFunction:v14 fromLineNumber:2702];

      v16 = PLLogCommon(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if (entryCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v18 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
    v19 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v19 doubleValue];
    v21 = v20;

    v22 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
    [v22 doubleValue];
    v24 = v23;

    v25 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
    [v25 doubleValue];
    v27 = v26;

    v28 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
    [v28 doubleValue];
    v30 = v29;

    v31 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
    [v31 doubleValue];
    v33 = v32;

    v34 = v24 + v27;
    [MEMORY[0x277D3F058] defaultBatteryEnergyCapacity];
    v36 = v35 > 0.0 && v21 / v35 > dbl_25F023B30[size > 3600.0];
    if (v34 > 0.0)
    {
      v38 = (v30 + v33) / v34;
      +[PLUtilities containerPath];
      v39 = _CFPreferencesCopyValueWithContainer();
      v40 = v39;
      if (v39)
      {
        [v39 doubleValue];
        v42 = v41;
      }

      else
      {
        v42 = 0.8;
      }

      if (v38 >= v42 && !v36)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v43 = objc_opt_class();
          v226[0] = MEMORY[0x277D85DD0];
          v226[1] = 3221225472;
          v226[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1939;
          v226[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v226[4] = v43;
          v44 = v226;
          if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1937 != -1)
          {
            dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1937, v44);
          }

          if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled_1938 == 1)
          {
            v45 = MEMORY[0x277CCACA8];
            v46 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
            v47 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
            v48 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
            v49 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
            v50 = [v45 stringWithFormat:@"PluggedInQualifier: Adding plugged in qualifier based on BGTime %@, FGTime %@, BGPluggedInTime %@, FGPluggedInTime %@", v46, v47, v48, v49];

            v51 = MEMORY[0x277D3F178];
            v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v52 lastPathComponent];
            v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:]"];
            [v51 logMessage:v50 fromFile:lastPathComponent2 fromFunction:v54 fromLineNumber:2732];

            v56 = PLLogCommon(v55);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }

        [array addObject:&unk_2871457A8];
      }
    }

    if (v21 == 0.0)
    {
      v37 = array;
    }

    else
    {
      v57 = [&unk_28714C560 objectAtIndexedSubscript:1];
      v58 = [entryCopy objectForKeyedSubscript:v57];
      [v58 doubleValue];
      v60 = v59;

      v61 = v60 / v21;
      if (v60 / v21 > 0.33 && [objc_opt_class() canSetQualifier:1 forBundleID:v18])
      {
        [array addObject:&unk_2871457C0];
      }

      v62 = [&unk_28714C578 objectAtIndexedSubscript:{2, v61}];
      v63 = [entryCopy objectForKeyedSubscript:v62];
      [v63 doubleValue];
      v65 = v64;

      v66 = v21 - v65;
      v67 = v66 / v21;
      if (v66 / v21 > 0.5 && [objc_opt_class() canSetQualifier:2 forBundleID:v18])
      {
        debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
        if (v24 < 300.0 || (v69 = v24 / v27, v24 / v27 < 0.33))
        {
          if (debugEnabled)
          {
            v82 = objc_opt_class();
            v224[0] = MEMORY[0x277D85DD0];
            v224[1] = 3221225472;
            v224[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1964;
            v224[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v224[4] = v82;
            v83 = v224;
            if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1962 != -1)
            {
              dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1962, v83);
            }

            if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled_1963 == 1)
            {
              v84 = MEMORY[0x277CCACA8];
              v85 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
              v86 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
              v87 = [v84 stringWithFormat:@"BGQualifier: Removing qualifier based on BGTime %@, FGTime %@", v85, v86];

              v88 = MEMORY[0x277D3F178];
              v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent3 = [v89 lastPathComponent];
              v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:]"];
              [v88 logMessage:v87 fromFile:lastPathComponent3 fromFunction:v91 fromLineNumber:2754];

              v93 = PLLogCommon(v92);
              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }
            }
          }
        }

        else
        {
          if (debugEnabled)
          {
            v70 = objc_opt_class();
            v225[0] = MEMORY[0x277D85DD0];
            v225[1] = 3221225472;
            v225[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1956;
            v225[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v225[4] = v70;
            v71 = v225;
            if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1954 != -1)
            {
              dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1954, v71);
            }

            if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled_1955 == 1)
            {
              v72 = MEMORY[0x277CCACA8];
              v73 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
              v74 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
              v75 = [v72 stringWithFormat:@"BGQualifier: Adding qualifier based on BGTime %@, FGTime %@", v73, v74];

              v76 = MEMORY[0x277D3F178];
              v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent4 = [v77 lastPathComponent];
              v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:]"];
              [v76 logMessage:v75 fromFile:lastPathComponent4 fromFunction:v79 fromLineNumber:2751];

              v81 = PLLogCommon(v80);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }
            }
          }

          [array addObject:{&unk_2871457D8, v69}];
        }
      }

      if ([v18 isEqualToString:@"com.apple.findmy"])
      {
        v94 = +[PLBatteryBreakdownService defaults];
        v95 = [v94 objectForKeyedSubscript:@"energyRatioIT"];
        [v95 doubleValue];
        v97 = v96;

        v98 = [&unk_28714C590 objectAtIndexedSubscript:59];
        v99 = [entryCopy objectForKeyedSubscript:v98];
        [v99 doubleValue];
        v101 = v100;

        if (v101 / v21 > v97)
        {
          v102 = [array containsObject:{&unk_2871457D8, v101 / v21}];
          if ((v102 & 1) == 0)
          {
            v102 = [array addObject:&unk_2871457D8];
          }
        }

        v103 = PLLogCommon(v102);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:];
        }
      }

      v223[0] = MEMORY[0x277D85DD0];
      v223[1] = 3221225472;
      v223[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1972;
      v223[3] = &unk_279A5BDC0;
      v223[4] = self;
      v104 = v223;
      if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1971 != -1)
      {
        dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1971, v104);
      }

      v105 = *&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey;
      v106 = [&unk_28714C5A8 objectAtIndexedSubscript:48];
      v107 = [entryCopy objectForKeyedSubscript:v106];
      [v107 doubleValue];
      v109 = v108;

      v110 = [&unk_28714C5C0 objectAtIndexedSubscript:12];
      v111 = [entryCopy objectForKeyedSubscript:v110];
      [v111 doubleValue];
      v113 = v109 + v112;

      v114 = [&unk_28714C5D8 objectAtIndexedSubscript:13];
      v115 = [entryCopy objectForKeyedSubscript:v114];
      [v115 doubleValue];
      v117 = v113 + v116;

      v118 = [&unk_28714C5F0 objectAtIndexedSubscript:15];
      v119 = [&unk_28714C608 objectAtIndexedSubscript:2];
      v120 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v118 withRootNodeName:v119];

      v121 = [entryCopy objectForKeyedSubscript:v120];
      [v121 doubleValue];
      v123 = v117 + v122;

      v124 = [&unk_28714C620 objectAtIndexedSubscript:15];
      v125 = [&unk_28714C638 objectAtIndexedSubscript:7];
      v126 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v124 withRootNodeName:v125];

      v127 = [entryCopy objectForKeyedSubscript:v126];
      [v127 doubleValue];
      v129 = v123 + v128;

      v130 = [&unk_28714C650 objectAtIndexedSubscript:15];
      v131 = [&unk_28714C668 objectAtIndexedSubscript:9];
      v132 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v130 withRootNodeName:v131];

      v133 = [entryCopy objectForKeyedSubscript:v132];
      [v133 doubleValue];
      v135 = v129 + v134;

      v136 = [&unk_28714C680 objectAtIndexedSubscript:15];
      v137 = [&unk_28714C698 objectAtIndexedSubscript:52];
      v138 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v136 withRootNodeName:v137];

      v139 = [entryCopy objectForKeyedSubscript:v138];
      [v139 doubleValue];
      v141 = v135 + v140;

      v142 = [&unk_28714C6B0 objectAtIndexedSubscript:15];
      v143 = [&unk_28714C6C8 objectAtIndexedSubscript:54];
      v144 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v142 withRootNodeName:v143];

      v145 = [entryCopy objectForKeyedSubscript:v144];
      [v145 doubleValue];
      v147 = v141 + v146;

      v149 = PLLogCommon(v148);
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:];
      }

      if (v147 / v21 > v105 && [objc_opt_class() canSetQualifier:3 forBundleID:v18])
      {
        v222[0] = MEMORY[0x277D85DD0];
        v222[1] = 3221225472;
        v222[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2014;
        v222[3] = &unk_279A5BDC0;
        v222[4] = self;
        v150 = v222;
        if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_2012 != -1)
        {
          dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_2012, v150);
        }

        v151 = *&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey_2013;
        v152 = [&unk_28714C6E0 objectAtIndexedSubscript:15];
        v153 = [entryCopy objectForKeyedSubscript:v152];
        [v153 doubleValue];
        v155 = v154;

        v157 = PLLogCommon(v156);
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:];
        }

        if (v155 / v66 > v151 && [array containsObject:{&unk_2871457D8, v155 / v66}])
        {
          [array removeObject:&unk_2871457D8];
          v158 = &unk_2871457F0;
        }

        else
        {
          v158 = &unk_287145808;
        }

        [array addObject:v158];
      }

      v221[0] = MEMORY[0x277D85DD0];
      v221[1] = 3221225472;
      v221[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2024;
      v221[3] = &unk_279A5BDC0;
      v221[4] = self;
      v159 = v221;
      if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_2022 != -1)
      {
        dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_2022, v159);
      }

      v160 = *&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey_2023;
      v220[0] = MEMORY[0x277D85DD0];
      v220[1] = 3221225472;
      v220[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2;
      v220[3] = &unk_279A5BDC0;
      v220[4] = self;
      v161 = v220;
      if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_2025 != -1)
      {
        dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_2025, v161);
      }

      v162 = *&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey_2026;
      v163 = [entryCopy objectForKeyedSubscript:@"NotificationInfo"];

      if (v163 && [objc_opt_class() canSetQualifier:9 forBundleID:v18])
      {
        v164 = [entryCopy objectForKeyedSubscript:@"NotificationInfo"];
        [v164 notificationEnergy];
        v166 = v165;
        v167 = +[PLUtilities defaultBatteryEnergyCapacity];
        v169 = v166 * 100.0 / v168;
        v170 = PLLogCommon(v167);
        if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v229 = v18;
          v230 = 2112;
          v231 = v164;
          v232 = 2048;
          v233 = v166;
          v234 = 2048;
          v235 = v169;
          _os_log_debug_impl(&dword_25EE51000, v170, OS_LOG_TYPE_DEBUG, "%@ notificationInfo: %@, energy: %.3f, batteryPercent %.3f", buf, 0x2Au);
        }

        if (v166 / v21 > v160 || v169 > v162)
        {
          [array addObject:{&unk_287145820, v166 / v21}];
        }
      }

      v171 = [&unk_28714C6F8 objectAtIndexedSubscript:3];
      v172 = [entryCopy objectForKeyedSubscript:v171];
      [v172 doubleValue];
      v174 = v173;

      v175 = v174 / v21;
      if (v174 / v21 > 0.33 && [objc_opt_class() canSetQualifier:4 forBundleID:v18])
      {
        [array addObject:&unk_287145838];
      }

      v176 = [&unk_28714C710 objectAtIndexedSubscript:{4, v175}];
      v177 = [entryCopy objectForKeyedSubscript:v176];
      [v177 doubleValue];
      v179 = v178;

      v180 = v179 / v21;
      if (v179 / v21 > 0.33 && [objc_opt_class() canSetQualifier:5 forBundleID:v18])
      {
        [array addObject:&unk_287145850];
      }

      v181 = [&unk_28714C728 objectAtIndexedSubscript:{14, v180}];
      v182 = [entryCopy objectForKeyedSubscript:v181];
      [v182 doubleValue];
      v184 = v183;

      v185 = [&unk_28714C740 objectAtIndexedSubscript:15];
      v186 = [entryCopy objectForKeyedSubscript:v185];
      [v186 doubleValue];
      v188 = v187;

      v189 = [&unk_28714C758 objectAtIndexedSubscript:55];
      v190 = [entryCopy objectForKeyedSubscript:v189];
      [v190 doubleValue];
      v192 = v191;

      if ((v184 + v188 + v192) / v21 > 0.03 && [objc_opt_class() canSetQualifier:7 forBundleID:v18])
      {
        [array addObject:&unk_287145868];
      }

      v193 = [entryCopy objectForKeyedSubscript:@"WatchEnergy"];
      [v193 doubleValue];
      v195 = v194;

      if ([(PLBatteryBreakdownService *)self showGizmoQualifier])
      {
        v196 = v195 / v21;
        if (v195 / v21 > 0.33)
        {
          if ([objc_opt_class() canSetQualifier:10 forBundleID:v18])
          {
            [array addObject:&unk_287145880];
          }
        }
      }

      v197 = [entryCopy objectForKeyedSubscript:{@"ChronoWidgetEnergy", v196}];
      [v197 doubleValue];
      v199 = v198;

      v200 = v199 / v21;
      if (v199 / v21 > 0.33 && [objc_opt_class() canSetQualifier:12 forBundleID:v18])
      {
        [array addObject:&unk_287145898];
      }

      v201 = [&unk_28714C770 objectAtIndexedSubscript:{10, v200}];
      v202 = [entryCopy objectForKeyedSubscript:v201];
      [v202 doubleValue];
      v204 = v203;

      v205 = v204 / v21;
      if (v204 / v21 > 0.33 && [objc_opt_class() canSetQualifier:9 forBundleID:v18])
      {
        [array addObject:&unk_287145820];
      }

      v206 = [entryCopy objectForKeyedSubscript:{@"PLBatteryUIAppBundleIDKey", v205}];
      v207 = [v206 isEqualToString:@"com.apple.Home"];

      if (v207)
      {
        v208 = [entryCopy objectForKeyedSubscript:@"HomeKitEnergy"];
        [v208 doubleValue];
        v210 = v209;

        if (v210 / v21 > 0.33)
        {
          if ([objc_opt_class() canSetQualifier:13 forBundleID:v18])
          {
            [array addObject:&unk_2871458B0];
          }
        }
      }

      v211 = [objc_opt_class() combineQualifiers:array];
      if ([array containsObject:&unk_287145868])
      {
        v212 = [array containsObject:&unk_2871457D8];
        if (v67 > 0.5 && v212 && ([v211 containsObject:&unk_2871457A8] & 1) == 0)
        {
          v213 = [v211 arrayByAddingObject:&unk_2871457D8];

          v211 = v213;
        }
      }

      array2 = [MEMORY[0x277CBEB18] array];
      if ([v211 containsObject:&unk_2871457A8])
      {
        [array2 addObject:&unk_2871457A8];
      }

      if ([v211 count])
      {
        v215 = 0;
        do
        {
          v216 = [v211 objectAtIndexedSubscript:v215];
          intValue = [v216 intValue];

          if (intValue != 11)
          {
            v218 = [v211 objectAtIndexedSubscript:v215];
            [array2 addObject:v218];
          }

          if ([array2 count] == 2)
          {
            break;
          }

          ++v215;
        }

        while ([v211 count] > v215);
      }

      v37 = array2;
    }
  }

  else
  {
    v37 = MEMORY[0x277CBEBF8];
  }

  return v37;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled = result;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1939(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled_1938 = result;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1956(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled_1955 = result;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1964(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled_1963 = result;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1972(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"energyRatioLocation"];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey = v2;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2014(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"energyRatioBackgroundLocation"];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey_2013 = v2;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2024(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"energyRatioNotifications"];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey_2023 = v2;
  return result;
}

void *__81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"energyAbsoluteNotifications"];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey_2026 = v2;
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
    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_287145868))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_2871457A8))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    if ([v5 containsObject:&unk_2871457F0] && objc_msgSend(v5, "containsObject:", &unk_2871457A8))
    {
      [v5 removeObject:&unk_2871457F0];
    }

    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_2871457C0))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    if ([v5 containsObject:&unk_287145868] && objc_msgSend(v5, "containsObject:", &unk_287145838))
    {
      [v5 removeObject:&unk_287145868];
    }

    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_287145850))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    if ([v5 containsObject:&unk_287145850] && objc_msgSend(v5, "containsObject:", &unk_287145838))
    {
      [v5 removeObject:&unk_287145850];
    }

    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_287145880))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_2871458B0))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_287145820))
    {
      [v5 removeObject:&unk_2871457D8];
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
  location = range.location;
  v4 = range.location + range.length;
  v5 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLIdentityServicesAgent" withType:*MEMORY[0x277D3F5D0] withName:@"LocalLinkType"];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"select * from %@ where linkType=1 and timestamp>=%f and timestamp<=%f limit 1", v5, *&location, *&v4];
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
    if (wasGizmoConnectedInRange__defaultOnce != -1)
    {
      dispatch_once(&wasGizmoConnectedInRange__defaultOnce, block);
    }

    if (wasGizmoConnectedInRange__classDebugEnabled == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Query Result %@", v9];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService wasGizmoConnectedInRange:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:3064];

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v18 = v9 && [v9 count];

  return v18;
}

void *__54__PLBatteryBreakdownService_wasGizmoConnectedInRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  wasGizmoConnectedInRange__classDebugEnabled = result;
  return result;
}

- (BOOL)showRootNodesInInternal
{
  if (showRootNodesInInternal_onceToken != -1)
  {
    [PLBatteryBreakdownService showRootNodesInInternal];
  }

  v3 = showRootNodesInInternal_val;
  if (showRootNodesInInternal_val)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

uint64_t __52__PLBatteryBreakdownService_showRootNodesInInternal__block_invoke()
{
  +[PLUtilities containerPath];
  v0 = _CFPreferencesCopyValueWithContainer();
  showRootNodesInInternal_val = v0;

  return MEMORY[0x2821F96F8](v0);
}

void __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)filterEnergyEntriesBasedOnTime:(_DWORD *)a1 withQueryType:(void *)a2 .cold.1(_DWORD *a1, void *a2)
{
  *a1 = 138412290;
  *a2 = @"com.apple.findmy";
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mapDeletedAppsWithEnergyEntries:(_BYTE *)a1 .cold.2(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:.cold.6()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:.cold.7()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end