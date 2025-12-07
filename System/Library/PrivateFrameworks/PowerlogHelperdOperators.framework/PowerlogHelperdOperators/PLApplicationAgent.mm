@interface PLApplicationAgent
+ (BOOL)hasScreenPresence:(id)presence;
+ (BOOL)isVisible:(id)visible;
+ (id)appVersionForBundle:(id)bundle;
+ (id)entryAggregateDefinitionApplicationReason;
+ (id)entryAggregateDefinitions;
+ (id)entryAggregateDefintionWidgetUpdates;
+ (id)entryEventBackwardDefinitionApplicationMemory;
+ (id)entryEventBackwardDefinitionControlCenterStats;
+ (id)entryEventBackwardDefinitionWidgetStats;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionAmbientActiveFace;
+ (id)entryEventForwardDefinitionAmbientMode;
+ (id)entryEventForwardDefinitionAmbientModeLifetimeCounter;
+ (id)entryEventForwardDefinitionApplication;
+ (id)entryEventForwardDefinitionApplicationDidUninstall;
+ (id)entryEventForwardDefinitionLiveActivityStats;
+ (id)entryEventForwardDefinitionMotionToWake;
+ (id)entryEventForwardDefinitionRBSApplication;
+ (id)entryEventForwardDefinitionSystemAperture;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventNoneAllApps;
+ (id)entryEventNoneAllPlugins;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionAppDocking;
+ (id)entryEventPointDefinitionAppPrewarm;
+ (id)entryEventPointDefinitionApplicationExitReason;
+ (id)entryEventPointDefinitionControlCenterUpdates;
+ (id)entryEventPointDefinitionLiveActivityUpdates;
+ (id)entryEventPointDefinitionPosterUpdates;
+ (id)entryEventPointDefinitionSuggestedWidgetReload;
+ (id)entryEventPointDefinitionWidgetUpdates;
+ (id)entryEventPointDefinitions;
+ (id)getReasons:(id)reasons;
+ (id)installedPlugins;
+ (id)pluginEntryFromRecord:(id)record;
+ (void)addAppVersion:(id)version withVersion:(id)withVersion;
+ (void)load;
+ (void)removeAppVersion:(id)version forVersion:(id)forVersion;
- (BOOL)checkAppReferenceCleanupNeeded;
- (BOOL)isAppClipWithBundleID:(id)d;
- (BOOL)isApplication:(int)application;
- (BOOL)stateDidChange:(id)change state:(id)state prevState:(id)prevState;
- (PLApplicationAgent)init;
- (id)getApplicationRecordSet:(id)set;
- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date;
- (int)RBSStatetoPLState:(id)state state:(id)a4;
- (void)appReferenceCleanup;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)buildAppVersionDictionary:(id)dictionary;
- (void)createWidgetStatsAccountingEvents:(id)events;
- (void)dealloc;
- (void)displayIdentifiersDidChange;
- (void)initOperatorDependancies;
- (void)logAllApps;
- (void)logAllPlugins;
- (void)logEventBackwardApplicationMemoryWithBundleId:(id)id withSuspendedMemory:(id)memory withPeakMemory:(id)peakMemory;
- (void)logEventBackwardControlCenterStats:(id)stats;
- (void)logEventBackwardWidgetStats:(id)stats;
- (void)logEventForwardAmbientMode:(id)mode;
- (void)logEventForwardAmbientModeActiveFace:(id)face;
- (void)logEventForwardAmbientModeLifetimeCounter:(id)counter;
- (void)logEventForwardApplicationDidUninstall:(id)uninstall withAppName:(id)name;
- (void)logEventForwardLiveActivityStats:(id)stats;
- (void)logEventForwardMotionToWake:(id)wake;
- (void)logEventForwardRBSApplicationForBundleID:(id)d withPid:(int)pid withState:(int)state withReasons:(id)reasons withVisibility:(BOOL)visibility;
- (void)logEventForwardSystemAperture:(id)aperture;
- (void)logEventPointApplication;
- (void)logEventPointApplicationExitReason:(id)reason;
- (void)logEventPointApplicationForDisplayID:(id)d;
- (void)logEventPointApplicationForDisplayID:(id)d withPid:(int)pid withState:(id)state withReasons:(id)reasons;
- (void)logEventPointControlCenterUpdates:(id)updates;
- (void)logEventPointDASAppDocking:(id)docking;
- (void)logEventPointDASAppPrewarm:(id)prewarm;
- (void)logEventPointLiveActivityUpdates:(id)updates;
- (void)logEventPointPosterUpdates:(id)updates;
- (void)logEventPointSuggestedWidgetReload:(id)reload;
- (void)logEventPointWidgetUpdates:(id)updates;
- (void)logInstalledAppWithRecord:(id)record withBundleID:(id)d shouldMaskTimestamp:(BOOL)timestamp;
- (void)logInstalledPlugin:(id)plugin;
- (void)logUninstalledApp:(id)app;
- (void)logUninstalledAppVersion:(id)version;
- (void)logUpdatedAppVersion:(id)version;
- (void)refreshAllAppsAndPlugins;
- (void)sendApplicationMetadataToCA;
@end

@implementation PLApplicationAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLApplicationAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (void)addAppVersion:(id)version withVersion:(id)withVersion
{
  versionCopy = version;
  withVersionCopy = withVersion;
  if (addAppVersion_withVersion__onceToken != -1)
  {
    +[PLApplicationAgent addAppVersion:withVersion:];
  }

  if (versionCopy && withVersionCopy)
  {
    v6 = _appVersions;
    objc_sync_enter(v6);
    [_appVersions setObject:withVersionCopy forKey:versionCopy];
    objc_sync_exit(v6);
  }
}

uint64_t __48__PLApplicationAgent_addAppVersion_withVersion___block_invoke()
{
  v0 = objc_opt_new();
  _appVersions = v0;

  return MEMORY[0x2821F96F8](v0);
}

+ (void)removeAppVersion:(id)version forVersion:(id)forVersion
{
  versionCopy = version;
  forVersionCopy = forVersion;
  if (forVersionCopy && versionCopy && _appVersions)
  {
    v6 = _appVersions;
    objc_sync_enter(v6);
    v7 = [_appVersions objectForKeyedSubscript:versionCopy];
    v8 = [v7 isEqualToString:forVersionCopy];

    if (v8)
    {
      [_appVersions removeObjectForKey:versionCopy];
    }

    objc_sync_exit(v6);
  }
}

+ (id)appVersionForBundle:(id)bundle
{
  bundleCopy = bundle;
  if (_appVersions)
  {
    v4 = _appVersions;
    objc_sync_enter(v4);
    v5 = [_appVersions objectForKeyedSubscript:bundleCopy];
    objc_sync_exit(v4);
  }

  else
  {
    v5 = &stru_287103958;
  }

  return v5;
}

+ (id)entryEventPointDefinitions
{
  v14[8] = *MEMORY[0x277D85DE8];
  v13[0] = @"SuggestedWidgetReload";
  entryEventPointDefinitionSuggestedWidgetReload = [self entryEventPointDefinitionSuggestedWidgetReload];
  v14[0] = entryEventPointDefinitionSuggestedWidgetReload;
  v13[1] = @"WidgetUpdates";
  entryEventPointDefinitionWidgetUpdates = [self entryEventPointDefinitionWidgetUpdates];
  v14[1] = entryEventPointDefinitionWidgetUpdates;
  v13[2] = @"ApplicationExitReason";
  entryEventPointDefinitionApplicationExitReason = [self entryEventPointDefinitionApplicationExitReason];
  v14[2] = entryEventPointDefinitionApplicationExitReason;
  v13[3] = @"AppDocking";
  entryEventPointDefinitionAppDocking = [self entryEventPointDefinitionAppDocking];
  v14[3] = entryEventPointDefinitionAppDocking;
  v13[4] = @"AppPrewarm";
  entryEventPointDefinitionAppPrewarm = [self entryEventPointDefinitionAppPrewarm];
  v14[4] = entryEventPointDefinitionAppPrewarm;
  v13[5] = @"PosterUpdates";
  entryEventPointDefinitionPosterUpdates = [self entryEventPointDefinitionPosterUpdates];
  v14[5] = entryEventPointDefinitionPosterUpdates;
  v13[6] = @"LiveActivityUpdates";
  entryEventPointDefinitionLiveActivityUpdates = [self entryEventPointDefinitionLiveActivityUpdates];
  v14[6] = entryEventPointDefinitionLiveActivityUpdates;
  v13[7] = @"ControlCenterUpdates";
  entryEventPointDefinitionControlCenterUpdates = [self entryEventPointDefinitionControlCenterUpdates];
  v14[7] = entryEventPointDefinitionControlCenterUpdates;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v11;
}

+ (id)entryEventPointDefinitionSuggestedWidgetReload
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_28714B288;
  v18[1] = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"bundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v16[0] = commonTypeDict_StringFormat_withBundleID;
  v15[1] = @"kind";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v16[1] = commonTypeDict_StringFormat;
  v15[2] = @"size";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v16[2] = commonTypeDict_IntegerFormat;
  v15[3] = @"suggestionIdentifier";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v16[3] = commonTypeDict_StringFormat2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  return v12;
}

+ (id)entryEventPointDefinitionWidgetUpdates
{
  v32[2] = *MEMORY[0x277D85DE8];
  v31[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v29[0] = *MEMORY[0x277D3F568];
  v29[1] = v2;
  v30[0] = &unk_28714B298;
  v30[1] = MEMORY[0x277CBEC38];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v32[0] = v26;
  v31[1] = *MEMORY[0x277D3F540];
  v27[0] = @"bundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v28[0] = commonTypeDict_StringFormat_withBundleID;
  v27[1] = @"cost";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v28[1] = commonTypeDict_IntegerFormat;
  v27[2] = @"identifier";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v28[2] = commonTypeDict_StringFormat;
  v27[3] = @"kind";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v28[3] = commonTypeDict_StringFormat2;
  v27[4] = @"reason";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v28[4] = commonTypeDict_IntegerFormat2;
  v27[5] = @"remainingBudget";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v28[5] = commonTypeDict_IntegerFormat3;
  v27[6] = @"suggestionIdentifier";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v28[6] = commonTypeDict_StringFormat3;
  v27[7] = @"executionTime";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
  v28[7] = commonTypeDict_RealFormat;
  v27[8] = @"host";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v28[8] = commonTypeDict_StringFormat4;
  v27[9] = @"errorReason";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v28[9] = commonTypeDict_IntegerFormat4;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:10];
  v32[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  return v12;
}

+ (id)entryEventPointDefinitionPosterUpdates
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_28714B288;
  v16[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"BundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v14[0] = commonTypeDict_StringFormat_withBundleID;
  v13[1] = @"Reason";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v14[1] = commonTypeDict_IntegerFormat;
  v13[2] = @"updateType";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v14[2] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v11;
}

+ (id)entryEventPointDefinitionLiveActivityUpdates
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v23[0] = *MEMORY[0x277D3F568];
  v23[1] = v2;
  v24[0] = &unk_28714B2A8;
  v24[1] = MEMORY[0x277CBEC38];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v26[0] = v20;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"bundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v22[0] = commonTypeDict_StringFormat_withBundleID;
  v21[1] = @"activityIdentifier";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v22[1] = commonTypeDict_StringFormat;
  v21[2] = @"source";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v22[2] = commonTypeDict_IntegerFormat;
  v21[3] = @"pushPriority";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v22[3] = commonTypeDict_IntegerFormat2;
  v21[4] = @"isAlert";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]5 commonTypeDict_BoolFormat];
  v22[4] = commonTypeDict_BoolFormat;
  v21[5] = @"state";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v22[5] = commonTypeDict_IntegerFormat3;
  v21[6] = @"reason";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v22[6] = commonTypeDict_IntegerFormat4;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
  v26[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v12;
}

+ (id)entryEventPointDefinitionApplicationExitReason
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_28714B2B8;
  v18[1] = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"Identifier";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v16[0] = commonTypeDict_StringFormat_withBundleID;
  v15[1] = @"pid";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v16[1] = commonTypeDict_IntegerFormat;
  v15[2] = @"Reason";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v16[2] = commonTypeDict_IntegerFormat2;
  v15[3] = @"Subcode";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v16[3] = commonTypeDict_IntegerFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  return v12;
}

+ (id)entryEventPointDefinitionAppDocking
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_28714B288;
  v16[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"BundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v14[0] = commonTypeDict_StringFormat_withBundleID;
  v13[1] = @"PID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v14[1] = commonTypeDict_IntegerFormat;
  v13[2] = @"State";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v14[2] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v11;
}

+ (id)entryEventPointDefinitionAppPrewarm
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_28714B288;
  v14[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"BundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v11[1] = @"PID";
  v12[0] = commonTypeDict_StringFormat_withBundleID;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventPointDefinitionControlCenterUpdates
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_28714B288;
  v20[1] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"bundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v18[0] = commonTypeDict_StringFormat_withBundleID;
  v17[1] = @"identifier";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v18[1] = commonTypeDict_StringFormat;
  v17[2] = @"reason";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v18[2] = commonTypeDict_IntegerFormat;
  v17[3] = @"location";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v18[3] = commonTypeDict_IntegerFormat2;
  v17[4] = @"executionTime";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v18[4] = commonTypeDict_RealFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  return v12;
}

+ (id)entryEventForwardDefinitions
{
  v17[11] = *MEMORY[0x277D85DE8];
  v16[0] = @"Application";
  entryEventForwardDefinitionApplication = [self entryEventForwardDefinitionApplication];
  v17[0] = entryEventForwardDefinitionApplication;
  v16[1] = @"ApplicationDidUninstall";
  entryEventForwardDefinitionApplicationDidUninstall = [self entryEventForwardDefinitionApplicationDidUninstall];
  v17[1] = entryEventForwardDefinitionApplicationDidUninstall;
  v16[2] = @"SystemAperture";
  entryEventForwardDefinitionSystemAperture = [self entryEventForwardDefinitionSystemAperture];
  v17[2] = entryEventForwardDefinitionSystemAperture;
  v16[3] = @"LiveActivityStats";
  entryEventForwardDefinitionLiveActivityStats = [self entryEventForwardDefinitionLiveActivityStats];
  v17[3] = entryEventForwardDefinitionLiveActivityStats;
  v16[4] = @"HomeScreenConfiguration";
  entryEventForwardDefinitionHomeScreenConfiguration = [self entryEventForwardDefinitionHomeScreenConfiguration];
  v17[4] = entryEventForwardDefinitionHomeScreenConfiguration;
  v16[5] = @"AmbientMode";
  entryEventForwardDefinitionAmbientMode = [self entryEventForwardDefinitionAmbientMode];
  v17[5] = entryEventForwardDefinitionAmbientMode;
  v16[6] = @"HomeScreenPresentation";
  entryEventForwardDefinitionHomeScreenPresentation = [self entryEventForwardDefinitionHomeScreenPresentation];
  v17[6] = entryEventForwardDefinitionHomeScreenPresentation;
  v16[7] = @"AmbientModeActiveFace";
  entryEventForwardDefinitionAmbientActiveFace = [self entryEventForwardDefinitionAmbientActiveFace];
  v17[7] = entryEventForwardDefinitionAmbientActiveFace;
  v16[8] = @"AmbientModeLifetimeCounter";
  entryEventForwardDefinitionAmbientModeLifetimeCounter = [self entryEventForwardDefinitionAmbientModeLifetimeCounter];
  v17[8] = entryEventForwardDefinitionAmbientModeLifetimeCounter;
  v16[9] = @"MotionToWake";
  entryEventForwardDefinitionMotionToWake = [self entryEventForwardDefinitionMotionToWake];
  v17[9] = entryEventForwardDefinitionMotionToWake;
  v16[10] = @"RBSApplication";
  entryEventForwardDefinitionRBSApplication = [self entryEventForwardDefinitionRBSApplication];
  v17[10] = entryEventForwardDefinitionRBSApplication;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:11];

  return v12;
}

+ (id)entryEventForwardDefinitionRBSApplication
{
  v24[3] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_28714B2C8;
  v22[1] = MEMORY[0x277CBEC38];
  v21[2] = *MEMORY[0x277D3F570];
  v22[2] = &unk_28714C8D8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v24[0] = v16;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"Identifier";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v20[0] = commonTypeDict_StringFormat_withBundleID;
  v19[1] = @"pid";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v20[1] = commonTypeDict_IntegerFormat;
  v19[2] = @"State";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v20[2] = commonTypeDict_IntegerFormat2;
  v19[3] = @"Reason";
  v8 = *MEMORY[0x277D3F5A0];
  v17[0] = *MEMORY[0x277D3F5A8];
  v17[1] = v8;
  v18[0] = &unk_287145AC0;
  v18[1] = &unk_287145AD8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[3] = v9;
  v19[4] = @"Visibility";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
  v20[4] = commonTypeDict_BoolFormat;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v23[2] = *MEMORY[0x277D3F4B0];
  v24[1] = v12;
  v24[2] = &unk_28714C8F0;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  return v13;
}

+ (id)entryEventForwardDefinitionApplication
{
  v23[3] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_28714B2C8;
  v21[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F548];
  v20[2] = *MEMORY[0x277D3F570];
  v20[3] = v3;
  v21[2] = &unk_28714C908;
  v21[3] = @"logEventPointApplication";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v23[0] = v4;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"Identifier";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v19[0] = commonTypeDict_StringFormat_withBundleID;
  v18[1] = @"pid";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v19[1] = commonTypeDict_IntegerFormat;
  v18[2] = @"State";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v19[2] = commonTypeDict_IntegerFormat2;
  v18[3] = @"Reason";
  v11 = *MEMORY[0x277D3F5A0];
  v16[0] = *MEMORY[0x277D3F5A8];
  v16[1] = v11;
  v17[0] = &unk_287145AC0;
  v17[1] = &unk_287145AD8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v22[2] = *MEMORY[0x277D3F4B0];
  v23[1] = v13;
  v23[2] = &unk_28714C920;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

  return v14;
}

+ (id)entryEventForwardDefinitionApplicationDidUninstall
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_28714B2C8;
  v14[1] = &unk_287145AF0;
  v13[2] = *MEMORY[0x277D3F588];
  v14[2] = &unk_28714B2D8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"AppBundleId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v11[1] = @"AppName";
  v12[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v12[1] = commonTypeDict_StringFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventForwardDefinitionSystemAperture
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_28714B288;
  v20[1] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"PrimaryClient";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v18[0] = commonTypeDict_StringFormat_withBundleID;
  v17[1] = @"PrimaryElement";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v18[1] = commonTypeDict_StringFormat;
  v17[2] = @"SecondaryClient";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v18[2] = commonTypeDict_StringFormat_withBundleID2;
  v17[3] = @"SecondaryElement";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v18[3] = commonTypeDict_StringFormat2;
  v17[4] = @"Layout";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v18[4] = commonTypeDict_IntegerFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  return v12;
}

+ (id)entryEventForwardDefinitionLiveActivityStats
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_28714B2B8;
  v20[1] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"bundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v18[0] = commonTypeDict_StringFormat_withBundleID;
  v17[1] = @"activityIdentifier";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v18[1] = commonTypeDict_StringFormat;
  v17[2] = @"source";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v18[2] = commonTypeDict_IntegerFormat;
  v17[3] = @"eventType";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v18[3] = commonTypeDict_IntegerFormat2;
  v17[4] = @"updateBudget";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v18[4] = commonTypeDict_IntegerFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  return v12;
}

+ (id)entryEventForwardDefinitionAmbientMode
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_28714B288;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"Mode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"Enabled";
  v11[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventForwardDefinitionAmbientActiveFace
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_28714B288;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"ActiveFaceType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"ActiveFaceDescriptor";
  v11[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventForwardDefinitionAmbientModeLifetimeCounter
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_28714B288;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"LifetimePresentationCounter";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v9 = commonTypeDict_IntegerFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)entryEventForwardDefinitionMotionToWake
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_28714B288;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"Enabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v9 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)entryEventBackwardDefinitions
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"ApplicationMemory";
  entryEventBackwardDefinitionApplicationMemory = [self entryEventBackwardDefinitionApplicationMemory];
  v9[0] = entryEventBackwardDefinitionApplicationMemory;
  v8[1] = @"WidgetStats";
  entryEventBackwardDefinitionWidgetStats = [self entryEventBackwardDefinitionWidgetStats];
  v9[1] = entryEventBackwardDefinitionWidgetStats;
  v8[2] = @"ControlCenterStats";
  entryEventBackwardDefinitionControlCenterStats = [self entryEventBackwardDefinitionControlCenterStats];
  v9[2] = entryEventBackwardDefinitionControlCenterStats;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (id)entryEventBackwardDefinitionApplicationMemory
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_28714B288;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F588];
  v16[2] = *MEMORY[0x277D3F590];
  v16[3] = v3;
  v17[2] = &unk_287145AF0;
  v17[3] = &unk_28714B2E8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v19[0] = v4;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"AppBundleId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v15[0] = commonTypeDict_StringFormat_withBundleID;
  v14[1] = @"SuspendedMemory";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat;
  v14[2] = @"PeakMemory";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v15[2] = commonTypeDict_IntegerFormat2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v12;
}

+ (id)entryEventBackwardDefinitionWidgetStats
{
  v34[2] = *MEMORY[0x277D85DE8];
  v33[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v31[0] = *MEMORY[0x277D3F568];
  v31[1] = v2;
  v32[0] = &unk_28714B2B8;
  v32[1] = MEMORY[0x277CBEC38];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v34[0] = v28;
  v33[1] = *MEMORY[0x277D3F540];
  v29[0] = @"bundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v30[0] = commonTypeDict_StringFormat_withBundleID;
  v29[1] = @"identifier";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v30[1] = commonTypeDict_StringFormat;
  v29[2] = @"isInStack";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v30[2] = commonTypeDict_BoolFormat;
  v29[3] = @"kind";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v30[3] = commonTypeDict_StringFormat2;
  v29[4] = @"location";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v30[4] = commonTypeDict_IntegerFormat;
  v29[5] = @"page";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v30[5] = commonTypeDict_IntegerFormat2;
  v29[6] = @"size";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v30[6] = commonTypeDict_IntegerFormat3;
  v29[7] = @"suggestionIdentifier";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v30[7] = commonTypeDict_StringFormat3;
  v29[8] = @"totalFramesRendered";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v30[8] = commonTypeDict_IntegerFormat4;
  v29[9] = @"totalRenderWorkload";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]10 commonTypeDict_RealFormat];
  v30[9] = commonTypeDict_RealFormat;
  v29[10] = @"totalTimeSpentOnScreen";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]11 commonTypeDict_RealFormat];
  v30[10] = commonTypeDict_RealFormat2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:11];
  v34[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  return v12;
}

+ (id)entryEventBackwardDefinitionControlCenterStats
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_28714B288;
  v22[1] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"bundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v20[0] = commonTypeDict_StringFormat_withBundleID;
  v19[1] = @"identifier";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v20[1] = commonTypeDict_StringFormat;
  v19[2] = @"kind";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v20[2] = commonTypeDict_StringFormat2;
  v19[3] = @"location";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v20[3] = commonTypeDict_IntegerFormat;
  v19[4] = @"stateBased";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v20[4] = commonTypeDict_IntegerFormat2;
  v19[5] = @"totalTimeSpentOnScreen";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v20[5] = commonTypeDict_RealFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v12;
}

+ (id)entryEventNoneDefinitions
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"AllApps";
  v2 = +[PLApplicationAgent entryEventNoneAllApps];
  v6[1] = @"AllPlugins";
  v7[0] = v2;
  v3 = +[PLApplicationAgent entryEventNoneAllPlugins];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)entryEventNoneAllApps
{
  v49[3] = *MEMORY[0x277D85DE8];
  v48[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v46[0] = *MEMORY[0x277D3F568];
  v46[1] = v2;
  v47[0] = &unk_28714B2F8;
  v47[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F590];
  v46[2] = *MEMORY[0x277D3F4A0];
  v46[3] = v3;
  v47[2] = MEMORY[0x277CBEC38];
  v47[3] = &unk_287145B08;
  v46[4] = *MEMORY[0x277D3F578];
  v47[4] = @"AppBundleId";
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:5];
  v49[0] = v43;
  v48[1] = *MEMORY[0x277D3F540];
  v44[0] = @"AppBundleId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v45[0] = commonTypeDict_StringFormat_withBundleID;
  v44[1] = @"AppName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withAppName = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withAppName];
  v45[1] = commonTypeDict_StringFormat_withAppName;
  v44[2] = @"AppBuildVersion";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v45[2] = commonTypeDict_StringFormat;
  v44[3] = @"AppBundleVersion";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v45[3] = commonTypeDict_StringFormat2;
  v44[4] = @"AppExecutable";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat_withProcessName];
  v45[4] = commonTypeDict_StringFormat_withProcessName;
  v44[5] = @"AppVendorID";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v45[5] = commonTypeDict_StringFormat3;
  v44[6] = @"AppItemID";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v45[6] = commonTypeDict_IntegerFormat;
  v44[7] = @"AppCohort";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v45[7] = commonTypeDict_StringFormat4;
  v44[8] = @"AppStoreFront";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v45[8] = commonTypeDict_IntegerFormat2;
  v44[9] = @"AppDistributorID";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]10 commonTypeDict_StringFormat];
  v45[9] = commonTypeDict_StringFormat5;
  v44[10] = @"AppIsBeta";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]11 commonTypeDict_BoolFormat];
  v45[10] = commonTypeDict_BoolFormat;
  v44[11] = @"AppIs3rdParty";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]12 commonTypeDict_BoolFormat];
  v45[11] = commonTypeDict_BoolFormat2;
  v44[12] = @"AppIsClip";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]13 commonTypeDict_BoolFormat];
  v45[12] = commonTypeDict_BoolFormat3;
  v44[13] = @"AppArchitecture";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat6 = [mEMORY[0x277D3F198]14 commonTypeDict_StringFormat];
  v45[13] = commonTypeDict_StringFormat6;
  v44[14] = @"AppUUID";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat7 = [mEMORY[0x277D3F198]15 commonTypeDict_StringFormat];
  v45[14] = commonTypeDict_StringFormat7;
  v44[15] = @"AppDeletedDate";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v45[15] = commonTypeDict_IntegerFormat3;
  v44[16] = @"AppType";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v45[16] = commonTypeDict_IntegerFormat4;
  v44[17] = @"AppUpdatedDate";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v45[17] = commonTypeDict_IntegerFormat5;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:18];
  v48[2] = *MEMORY[0x277D3F528];
  v49[1] = v12;
  v49[2] = &unk_28714C938;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];

  return v13;
}

+ (id)entryEventNoneAllPlugins
{
  v23[3] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_28714B2C8;
  v21[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F578];
  v20[2] = *MEMORY[0x277D3F590];
  v20[3] = v3;
  v21[2] = &unk_287145B08;
  v21[3] = @"PluginId";
  v20[4] = *MEMORY[0x277D3F4A0];
  v21[4] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"PluginId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v19[0] = commonTypeDict_StringFormat_withBundleID;
  v18[1] = @"PluginParentApp";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v19[1] = commonTypeDict_StringFormat_withBundleID2;
  v18[2] = @"PluginType";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v19[2] = commonTypeDict_StringFormat;
  v18[3] = @"PluginExecutableName";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat_withProcessName];
  v19[3] = commonTypeDict_StringFormat_withProcessName;
  v18[4] = @"PluginDeletedDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v19[4] = commonTypeDict_IntegerFormat;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v22[2] = *MEMORY[0x277D3F528];
  v23[1] = v12;
  v23[2] = &unk_28714C950;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

  return v13;
}

+ (id)entryAggregateDefinitions
{
  v12[1] = *MEMORY[0x277D85DE8];
  if ([self isDebugEnabledForKey:@"Aggregate"])
  {
    v11 = @"ApplicationReason";
    entryAggregateDefinitionApplicationReason = [self entryAggregateDefinitionApplicationReason];
    v12[0] = entryAggregateDefinitionApplicationReason;
    v4 = MEMORY[0x277CBEAC0];
    v5 = v12;
    v6 = &v11;
  }

  else
  {
    v9 = @"WidgetUpdates";
    entryAggregateDefinitionApplicationReason = [self entryAggregateDefintionWidgetUpdates];
    v10 = entryAggregateDefinitionApplicationReason;
    v4 = MEMORY[0x277CBEAC0];
    v5 = &v10;
    v6 = &v9;
  }

  v7 = [v4 dictionaryWithObjects:v5 forKeys:v6 count:1];

  return v7;
}

+ (id)entryAggregateDefinitionApplicationReason
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_28714B288;
  v27[1] = MEMORY[0x277CBEC28];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v29[0] = v15;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"Reason";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v24[1] = @"Count";
  v25[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[1] = commonTypeDict_IntegerFormat_aggregateFunction_sum;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v29[1] = v7;
  v28[2] = *MEMORY[0x277D3F478];
  v22[0] = &unk_28714B308;
  v20 = *MEMORY[0x277D3F470];
  v8 = v20;
  v21 = &unk_28714B318;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23[0] = v9;
  v22[1] = &unk_28714B318;
  v18 = v8;
  v19 = &unk_28714B328;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v23[1] = v10;
  v22[2] = &unk_28714B328;
  v16 = v8;
  v17 = &unk_28714B338;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v23[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v28[3] = *MEMORY[0x277D3F488];
  v29[2] = v12;
  v29[3] = &unk_28714C968;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  return v13;
}

+ (id)entryAggregateDefintionWidgetUpdates
{
  v24[4] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_28714B288;
  v22[1] = MEMORY[0x277CBEC28];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v24[0] = v14;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"bundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v20[0] = commonTypeDict_StringFormat;
  v19[1] = @"host";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v20[1] = commonTypeDict_StringFormat2;
  v19[2] = @"Count";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v20[2] = commonTypeDict_IntegerFormat_aggregateFunction_sum;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v24[1] = v9;
  v23[2] = *MEMORY[0x277D3F478];
  v17 = &unk_28714B348;
  v15 = *MEMORY[0x277D3F470];
  v16 = &unk_28714B328;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v23[3] = *MEMORY[0x277D3F488];
  v24[2] = v11;
  v24[3] = &unk_28714C980;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];

  return v12;
}

- (PLApplicationAgent)init
{
  v3.receiver = self;
  v3.super_class = PLApplicationAgent;
  return [(PLAgent *)&v3 init];
}

- (void)dealloc
{
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    if (defaultWorkspace)
    {
      null = [MEMORY[0x277CBEB68] null];

      if (defaultWorkspace != null)
      {
        [defaultWorkspace removeObserver:self];
        [defaultWorkspace _LSClearSchemaCaches];
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"PLAppDeletionActivityComplete" object:0];
  }

  v6.receiver = self;
  v6.super_class = PLApplicationAgent;
  [(PLAgent *)&v6 dealloc];
}

- (void)sendApplicationMetadataToCA
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

id __49__PLApplicationAgent_sendApplicationMetadataToCA__block_invoke(int64x2_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = @"AppBundleId";
  v3[1] = @"AppDistributorID";
  v4 = vbslq_s8(vceqzq_s64(a1[2]), vdupq_n_s64(@"nil"), a1[2]);
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v4 forKeys:v3 count:2];

  return v1;
}

- (void)initOperatorDependancies
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __46__PLApplicationAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogApplication(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  return [*(a1 + 32) sendApplicationMetadataToCA];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_394(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2;
  block[3] = &unk_279A5BDC0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_3(uint64_t a1)
{
  v2 = PLLogApplication(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_3_cold_1();
  }

  v3 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_397;
  block[3] = &unk_279A5BDC0;
  block[4] = *(a1 + 32);
  dispatch_async_and_wait(v3, block);
}

uint64_t __46__PLApplicationAgent_initOperatorDependancies__block_invoke_397(uint64_t a1)
{
  v2 = PLLogApplication(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_397_cold_1();
  }

  return [*(a1 + 32) refreshAllAppsAndPlugins];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_402(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277CEEE80];
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 intValue];
  }

  else
  {
    v6 = -1;
  }

  v7 = [v4 objectForKey:*MEMORY[0x277CEEE68]];
  v8 = [v4 objectForKey:*MEMORY[0x277CEEE70]];
  v9 = [v4 objectForKey:*MEMORY[0x277CEEE88]];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_404;
  block[3] = &unk_279A5CD00;
  objc_copyWeak(&v19, (a1 + 32));
  v20 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_404(uint64_t a1)
{
  v44[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained logEventPointApplicationForDisplayID:*(a1 + 32) withPid:*(a1 + 64) withState:*(a1 + 40) withReasons:*(a1 + 48)];

  if (+[PLUtilities isAppAnalyticsEnabled](PLUtilities, "isAppAnalyticsEnabled") && [*(a1 + 40) intValue] >= 4)
  {
    v3 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppBundleId" withValue:*(a1 + 32) withComparisonOperation:0];
    v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v5 = objc_loadWeakRetained((a1 + 56));
    v6 = objc_msgSend_storage(v5);
    v44[0] = v3;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    v8 = [v6 lastEntryForKey:v4 withComparisons:v7 isSingleton:1];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *buffer = 0u;
    v25 = 0u;
    if (proc_pid_rusage(*(a1 + 64), 0, buffer))
    {
      v9 = 0;
    }

    else
    {
      memset(out, 0, 37);
      uuid_unparse(buffer, out);
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:out];
    }

    size = 0;
    *out = 0xE00000001;
    v11 = *(a1 + 64);
    out[2] = 1;
    out[3] = v11;
    if (sysctl(out, 4u, 0, &size, 0, 0) < 0 || (v12 = malloc_type_malloc(size, 0x3215B771uLL)) == 0)
    {
      v14 = 0;
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v7 = v12;
      if (sysctl(out, 4u, v12, &size, 0, 0) < 0)
      {
        v14 = 0;
      }

      else
      {
        if ((v7[8] & 4) != 0)
        {
          v13 = @"arm-64bit";
        }

        else
        {
          v13 = @"arm-32bit";
        }

        v14 = v13;
      }

      free(v7);
      if (!v9)
      {
LABEL_23:
        if (!v14)
        {
LABEL_29:

          goto LABEL_30;
        }

        goto LABEL_24;
      }
    }

    v7 = [v8 objectForKeyedSubscript:@"AppUUID"];
    if (([v9 isEqualToString:v7] & 1) == 0)
    {

LABEL_27:
      v17 = objc_loadWeakRetained((a1 + 56));
      v18 = objc_msgSend_storage(v17);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_3_414;
      v19[3] = &unk_279A5C768;
      v20 = v8;
      v21 = v9;
      v22 = v14;
      [v18 updateEntry:v20 withBlock:v19];

      v7 = v20;
LABEL_28:

      goto LABEL_29;
    }

    if (!v14)
    {
      goto LABEL_28;
    }

LABEL_24:
    v15 = [v8 objectForKeyedSubscript:@"AppArchitecture"];
    v16 = [(__CFString *)v14 isEqualToString:v15];

    if (v9)
    {
    }

    if (v16)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if ([*(a1 + 40) intValue] == 2)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *buffer = 0u;
    v25 = 0u;
    if (!proc_pid_rusage(*(a1 + 64), 4, buffer))
    {
      v3 = objc_loadWeakRetained((a1 + 56));
      v10 = *(a1 + 32);
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v28 + 1)];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v39];
      [v3 logEventBackwardApplicationMemoryWithBundleId:v10 withSuspendedMemory:v4 withPeakMemory:v8];
LABEL_30:
    }
  }
}

uint64_t __46__PLApplicationAgent_initOperatorDependancies__block_invoke_3_414(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"AppUUID"];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setObject:v2 forKeyedSubscript:@"AppArchitecture"];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 previousState];
  v9 = [v7 state];
  if ([*(a1 + 32) stateDidChange:v6 state:v9 prevState:v8])
  {
    v24 = [v6 pid];
    v10 = [v6 bundle];
    v11 = [v10 identifier];

    v12 = [v7 state];
    v13 = [v12 assertions];
    v14 = [PLApplicationAgent getReasons:v13];

    v16 = PLLogCommon(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67110146;
      v33 = v24;
      v34 = 2112;
      v35 = v11;
      v36 = 2112;
      v37 = v9;
      v38 = 2112;
      v39 = v8;
      v40 = 2112;
      v41 = v14;
      _os_log_debug_impl(&dword_25EE51000, v16, OS_LOG_TYPE_DEBUG, "pid: %d, name: %@, state: %@, prevState: %@ reasons: %@", buf, 0x30u);
    }

    v23 = [*(a1 + 32) RBSStatetoPLState:v6 state:v9];
    v17 = v8;
    v18 = [PLApplicationAgent isVisible:v9];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v20 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_418;
    block[3] = &unk_279A5CD50;
    objc_copyWeak(&v28, (a1 + 40));
    v29 = v24;
    v30 = v23;
    v26 = v11;
    v27 = v14;
    v31 = v18;
    v8 = v17;
    v21 = v14;
    v22 = v11;
    dispatch_async(v20, block);

    objc_destroyWeak(&v28);
  }
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_418(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained logEventForwardRBSApplicationForBundleID:*(a1 + 32) withPid:*(a1 + 56) withState:*(a1 + 60) withReasons:*(a1 + 40) withVisibility:*(a1 + 64)];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_421(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D46FA0];
  v4 = a2;
  v5 = [v3 predicatePowerLogProcesses];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v4 setPredicates:v6];

  v7 = [MEMORY[0x277D46FB0] descriptor];
  [v7 setValues:25];
  [v7 setEndowmentNamespaces:&unk_28714C998];
  [v4 setStateDescriptor:v7];
  v8 = [*(a1 + 32) copy];
  [v4 setUpdateHandler:v8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_447(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_447_cold_1();
  }

  [*(a1 + 32) logEventBackwardWidgetStats:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_453(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_453_cold_1();
  }

  [*(a1 + 32) logEventPointWidgetUpdates:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_458_cold_1();
  }

  [*(a1 + 32) logEventPointSuggestedWidgetReload:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_465(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_465_cold_1();
  }

  [*(a1 + 32) logEventPointPosterUpdates:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_475(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_475_cold_1();
  }

  [*(a1 + 32) logEventForwardSystemAperture:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_482(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_482_cold_1();
  }

  [*(a1 + 32) logEventForwardAmbientMode:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_489(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_489_cold_1();
  }

  [*(a1 + 32) logEventPointLiveActivityUpdates:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_494_cold_1();
  }

  [*(a1 + 32) logEventForwardLiveActivityStats:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_499(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_499_cold_1();
  }

  [*(a1 + 32) logEventForwardAmbientModeActiveFace:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_507(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_507_cold_1();
  }

  [*(a1 + 32) logEventForwardAmbientModeLifetimeCounter:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_515(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_515_cold_1();
  }

  [*(a1 + 32) logEventForwardMotionToWake:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_520_cold_1();
  }

  [*(a1 + 32) logEventPointControlCenterUpdates:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_525(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_525_cold_1();
  }

  [*(a1 + 32) logEventBackwardControlCenterStats:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_526(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D46FA0];
  v4 = a2;
  v5 = [v3 predicateMatchingLaunchServicesProcesses];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v4 setPredicates:v6];

  [v4 setEvents:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_527;
  v7[3] = &unk_279A5CDC8;
  v7[4] = *(a1 + 32);
  [v4 setUpdateHandler:v7];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_527(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = [a4 exitEvent];
  v8 = [v7 context];
  v9 = [v8 status];
  v10 = [v7 process];
  v11 = [v10 pid];

  v13 = PLLogApplication(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_527_cold_1();
  }

  if ([*(a1 + 32) isApplication:v11])
  {
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    [v14 setObject:v15 forKeyedSubscript:@"pid"];

    v16 = [v6 bundle];
    v17 = [v16 identifier];
    [v14 setObject:v17 forKeyedSubscript:@"Identifier"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "domain")}];
    [v14 setObject:v18 forKeyedSubscript:@"Reason"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "code")}];
    [v14 setObject:v19 forKeyedSubscript:@"Subcode"];

    v20 = [v8 timestamp];
    [v14 setObject:v20 forKeyedSubscript:@"timestamp"];

    v22 = PLLogApplication(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_527_cold_2();
    }

    [*(a1 + 32) logEventPointApplicationExitReason:v14];
  }
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_540_cold_1();
  }

  [*(a1 + 32) logEventPointDASAppDocking:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_548_cold_1();
  }

  [*(a1 + 32) logEventPointDASAppPrewarm:v6];
}

- (void)logEventPointDASAppDocking:(id)docking
{
  v4 = *MEMORY[0x277D3F5E8];
  dockingCopy = docking;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"AppDocking"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:dockingCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointDASAppPrewarm:(id)prewarm
{
  v4 = *MEMORY[0x277D3F5E8];
  prewarmCopy = prewarm;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"AppPrewarm"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:prewarmCopy];

  [(PLOperator *)self logEntry:v6];
}

- (BOOL)isApplication:(int)application
{
  v3 = MEMORY[0x277D46F48];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&application];
  v10 = 0;
  v5 = [v3 handleForIdentifier:v4 error:&v10];
  v6 = v10;
  identity = [v5 identity];
  isApplication = [identity isApplication];

  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [PLApplicationAgent isApplication:];
  }

  return isApplication;
}

- (BOOL)checkAppReferenceCleanupNeeded
{
  v23 = *MEMORY[0x277D85DE8];
  if (!+[PLUtilities AppDeletionEnabled])
  {
    return 0;
  }

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  v3 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
  v4 = [v3 entriesForKey:@"PLApplicationAgent_EventForward_ApplicationDidUninstall"];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"AppBundleId"];
        if (([v11 containsString:@"Unspecified"] & 1) == 0)
        {

LABEL_15:
          v15 = PLLogAppDeletion();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEFAULT, "AppDeletion : Cleanup pending", v17, 2u);
          }

          v14 = 1;
          goto LABEL_18;
        }

        v12 = [v10 objectForKeyedSubscript:@"AppName"];
        v13 = [v12 containsString:@"Unspecified"];

        if ((v13 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v14 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_18:

  return v14;
}

+ (BOOL)hasScreenPresence:(id)presence
{
  presenceCopy = presence;
  v4 = presenceCopy;
  if (presenceCopy)
  {
    appTags = [presenceCopy appTags];
    if ([appTags containsObject:@"Hidden"])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      appTags2 = [v4 appTags];
      if ([appTags2 containsObject:@"hidden"])
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        applicationState = [v4 applicationState];
        if ([applicationState isRestricted])
        {
          LOBYTE(v6) = 0;
        }

        else
        {
          applicationState2 = [v4 applicationState];
          if ([applicationState2 isRemovedSystemApp])
          {
            LOBYTE(v6) = 0;
          }

          else
          {
            v6 = [v4 isLaunchProhibited] ^ 1;
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isAppClipWithBundleID:(id)d
{
  v3 = MEMORY[0x277CC1E70];
  dCopy = d;
  v9 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:dCopy allowPlaceholder:1 error:&v9];

  if (v9)
  {
    v6 = 0;
  }

  else
  {
    appClipMetadata = [v5 appClipMetadata];

    v6 = appClipMetadata != 0;
  }

  return v6;
}

- (void)refreshAllAppsAndPlugins
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventBackwardApplicationMemoryWithBundleId:(id)id withSuspendedMemory:(id)memory withPeakMemory:(id)peakMemory
{
  idCopy = id;
  memoryCopy = memory;
  peakMemoryCopy = peakMemory;
  if (idCopy && [idCopy length])
  {
    v10 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ApplicationMemory"];
    v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
    [v11 setObject:idCopy forKeyedSubscript:@"AppBundleId"];
    [v11 setObject:memoryCopy forKeyedSubscript:@"SuspendedMemory"];
    [v11 setObject:peakMemoryCopy forKeyedSubscript:@"PeakMemory"];
    [(PLOperator *)self logEntry:v11];
  }
}

- (void)logEventBackwardWidgetStats:(id)stats
{
  v25[1] = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  v5 = [statsCopy objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = [statsCopy objectForKeyedSubscript:@"stats"];

  v11 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"WidgetStats"];
  array = [MEMORY[0x277CBEB18] array];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __50__PLApplicationAgent_logEventBackwardWidgetStats___block_invoke;
  v20 = &unk_279A5CE18;
  v13 = v11;
  v21 = v13;
  v14 = convertFromSystemToMonotonic;
  v22 = v14;
  v15 = array;
  v23 = v15;
  [v10 enumerateObjectsUsingBlock:&v17];
  if ([v15 count])
  {
    v24 = v13;
    v25[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [(PLOperator *)self logEntries:v16 withGroupID:v13];

    [(PLApplicationAgent *)self createWidgetStatsAccountingEvents:v15];
  }
}

void __50__PLApplicationAgent_logEventBackwardWidgetStats___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];

  [v5 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v5];
}

- (void)createWidgetStatsAccountingEvents:(id)events
{
  eventsCopy = events;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x2020000000;
  v17[2] = 0;
  v4 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__PLApplicationAgent_createWidgetStatsAccountingEvents___block_invoke;
  v15[3] = &unk_279A5CE40;
  v15[4] = &v16;
  v5 = [eventsCopy enumerateObjectsUsingBlock:v15];
  if (*(v17[0] + 24) > 0.0)
  {
    v6 = PLLogApplication(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLApplicationAgent createWidgetStatsAccountingEvents:];
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__PLApplicationAgent_createWidgetStatsAccountingEvents___block_invoke_578;
    v12[3] = &unk_279A5CE68;
    v14 = &v16;
    v7 = v4;
    v13 = v7;
    v8 = PLLogApplication([eventsCopy enumerateObjectsUsingBlock:v12]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(PLApplicationAgent *)v17 createWidgetStatsAccountingEvents:v7, v8];
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    lastObject = [eventsCopy lastObject];
    entryDate = [lastObject entryDate];
    [mEMORY[0x277D3F0C0] createDistributionEventBackwardWithDistributionID:50 withChildNodeNameToWeight:v7 withEndDate:entryDate];
  }

  _Block_object_dispose(&v16, 8);
}

void __56__PLApplicationAgent_createWidgetStatsAccountingEvents___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"totalTimeSpentOnScreen"];
  [v4 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v3 + *(*(*(a1 + 32) + 8) + 24);
}

void __56__PLApplicationAgent_createWidgetStatsAccountingEvents___block_invoke_578(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = [v3 objectForKeyedSubscript:@"bundleID"];
  v4 = MEMORY[0x277CCABB0];
  v5 = [v3 objectForKeyedSubscript:@"totalTimeSpentOnScreen"];

  [v5 doubleValue];
  v7 = [v4 numberWithDouble:v6 / *(*(*(a1 + 40) + 8) + 24)];

  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v15];

    if (v8)
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = [*(a1 + 32) objectForKeyedSubscript:v15];
      [v10 doubleValue];
      v12 = v11;
      [v7 doubleValue];
      v14 = [v9 numberWithDouble:v12 + v13];
      [*(a1 + 32) setObject:v14 forKeyedSubscript:v15];
    }

    else
    {
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v15];
    }
  }
}

- (void)logEventBackwardControlCenterStats:(id)stats
{
  v25[1] = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  v5 = [statsCopy objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = [statsCopy objectForKeyedSubscript:@"stats"];

  v11 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ControlCenterStats"];
  array = [MEMORY[0x277CBEB18] array];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __57__PLApplicationAgent_logEventBackwardControlCenterStats___block_invoke;
  v20 = &unk_279A5CE18;
  v13 = v11;
  v21 = v13;
  v14 = convertFromSystemToMonotonic;
  v22 = v14;
  v15 = array;
  v23 = v15;
  [v10 enumerateObjectsUsingBlock:&v17];
  if ([v15 count])
  {
    v24 = v13;
    v25[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [(PLOperator *)self logEntries:v16 withGroupID:v13];
  }
}

void __57__PLApplicationAgent_logEventBackwardControlCenterStats___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];

  [v5 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v5];
}

- (void)logEventForwardApplicationDidUninstall:(id)uninstall withAppName:(id)name
{
  v6 = *MEMORY[0x277D3F5D0];
  nameCopy = name;
  uninstallCopy = uninstall;
  v10 = [(PLOperator *)PLApplicationAgent entryKeyForType:v6 andName:@"ApplicationDidUninstall"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  [v9 setObject:uninstallCopy forKeyedSubscript:@"AppBundleId"];

  [v9 setObject:nameCopy forKeyedSubscript:@"AppName"];
  [(PLOperator *)self logEntry:v9];
}

- (void)logEventForwardSystemAperture:(id)aperture
{
  v4 = *MEMORY[0x277D3F5D0];
  apertureCopy = aperture;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"SystemAperture"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:apertureCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardAmbientMode:(id)mode
{
  v4 = *MEMORY[0x277D3F5D0];
  modeCopy = mode;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"AmbientMode"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:modeCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardAmbientModeActiveFace:(id)face
{
  v4 = *MEMORY[0x277D3F5D0];
  faceCopy = face;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"AmbientModeActiveFace"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:faceCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardAmbientModeLifetimeCounter:(id)counter
{
  v4 = *MEMORY[0x277D3F5D0];
  counterCopy = counter;
  v6 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"AmbientModeLifetimeCounter"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v8 = [counterCopy objectForKeyedSubscript:@"LifetimePresentationCounter"];

  intValue = [v8 intValue];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", intValue, 2)}];
  [v7 setObject:v10 forKeyedSubscript:@"LifetimePresentationCounter"];

  v12 = PLLogApplication(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(PLApplicationAgent *)v7 logEventForwardAmbientModeLifetimeCounter:intValue, v12];
  }

  [(PLOperator *)self logEntry:v7];
}

- (void)logEventForwardMotionToWake:(id)wake
{
  v4 = *MEMORY[0x277D3F5D0];
  wakeCopy = wake;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"MotionToWake"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:wakeCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointApplicationExitReason:(id)reason
{
  reasonCopy = reason;
  v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ApplicationExitReason"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:reasonCopy];
  v6 = [reasonCopy objectForKey:@"timestamp"];

  if (v6)
  {
    v7 = [reasonCopy objectForKeyedSubscript:@"timestamp"];
    convertFromSystemToMonotonic = [v7 convertFromSystemToMonotonic];

    [v5 setEntryDate:convertFromSystemToMonotonic];
  }

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventPointApplication
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = SBSCopyApplicationDisplayIdentifiers();
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(PLApplicationAgent *)self logEventPointApplicationForDisplayID:*(*(&v9 + 1) + 8 * v8++), v9];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [(PLApplicationAgent *)self logEventPointApplicationForDisplayID:@"noApplications" withPid:4294967196 withState:0 withReasons:0];
  }
}

- (void)logEventPointApplicationForDisplayID:(id)d
{
  dCopy = d;
  SBSProcessIDForDisplayIdentifier();
  v5 = [MEMORY[0x277CCABB0] numberWithInt:SBSGetApplicationState()];
  [(PLApplicationAgent *)self logEventPointApplicationForDisplayID:dCopy withPid:0 withState:v5 withReasons:0];
}

- (void)logEventPointApplicationForDisplayID:(id)d withPid:(int)pid withState:(id)state withReasons:(id)reasons
{
  v8 = *&pid;
  v61 = *MEMORY[0x277D85DE8];
  dCopy = d;
  stateCopy = state;
  reasonsCopy = reasons;
  v13 = objc_autoreleasePoolPush();
  v14 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Application"];
  v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14];
  v16 = v15;
  if (v8 == -100)
  {
    [v15 setIsErrorEntry:1];
    [v16 setObject:dCopy forKeyedSubscript:@"__PLEntryErrorString__"];
    [(PLOperator *)self logEntry:v16];
  }

  else
  {
    v54 = objc_opt_new();
    if (reasonsCopy)
    {
      v51 = stateCopy;
      v52 = dCopy;
      v48 = v14;
      v49 = v13;
      v47 = v16;
      v46 = v8;
      if ([(PLOperator *)self isDebugEnabledForKey:@"Aggregate"])
      {
        v53 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"ApplicationReason"];
      }

      else
      {
        v53 = 0;
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v50 = reasonsCopy;
      obj = reasonsCopy;
      v17 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      v18 = v54;
      if (v17)
      {
        v19 = v17;
        v20 = *v57;
        v21 = *MEMORY[0x277D66D10];
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v57 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v56 + 1) + 8 * i);
            if ([MEMORY[0x277D3F180] BOOLForKey:@"EnableRunningBoardServices" ifNotSet:0])
            {
              v24 = v23;
            }

            else
            {
              v24 = [v23 objectForKeyedSubscript:v21];
            }

            v25 = v24;
            [v18 addObject:v24];
            if ([(PLOperator *)self isDebugEnabledForKey:@"Aggregate"])
            {
              selfCopy = self;
              v27 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v53];
              [v27 setObject:v25 forKeyedSubscript:@"Reason"];
              [v27 setObject:&unk_287145BB0 forKeyedSubscript:@"Count"];
              [(PLOperator *)selfCopy logEntry:v27];

              self = selfCopy;
              v18 = v54;
            }
          }

          v19 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
        }

        while (v19);
      }

      if ([(PLOperator *)self isDebugEnabledForKey:@"Aggregate"])
      {
        monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
        [monotonicDate timeIntervalSince1970];
        v30 = v29 + -86400.0;

        selfCopy2 = self;
        v32 = objc_msgSend_storage(self);
        v33 = [v32 aggregateEntriesForKey:v53 withBucketLength:1800.0 inTimeIntervalRange:{v30, 172800.0}];

        v34 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v33];
        v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"results=%@\naggregatedResults=%@", v33, v34];
        v36 = MEMORY[0x277D3F178];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLApplicationAgent.m"];
        lastPathComponent = [v37 lastPathComponent];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLApplicationAgent logEventPointApplicationForDisplayID:withPid:withState:withReasons:]"];
        [v36 logMessage:v35 fromFile:lastPathComponent fromFunction:v39 fromLineNumber:1557];

        v41 = PLLogCommon(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }

        self = selfCopy2;
      }

      stateCopy = v51;
      dCopy = v52;
      v13 = v49;
      reasonsCopy = v50;
      v16 = v47;
      v14 = v48;
      v8 = v46;
    }

    [v16 setObject:dCopy forKeyedSubscript:@"Identifier"];
    v42 = [MEMORY[0x277CCABB0] numberWithInt:v8];
    [v16 setObject:v42 forKeyedSubscript:@"pid"];

    [v16 setObject:stateCopy forKeyedSubscript:@"State"];
    allObjects = [v54 allObjects];
    [v16 setObject:allObjects forKeyedSubscript:@"Reason"];

    v45 = PLLogApplication(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [PLApplicationAgent logEventPointApplicationForDisplayID:withPid:withState:withReasons:];
    }

    [(PLOperator *)self logEntry:v16];
  }

  objc_autoreleasePoolPop(v13);
}

- (void)logEventForwardRBSApplicationForBundleID:(id)d withPid:(int)pid withState:(int)state withReasons:(id)reasons withVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  v9 = *&state;
  v10 = *&pid;
  dCopy = d;
  reasonsCopy = reasons;
  v14 = objc_autoreleasePoolPush();
  v15 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"RBSApplication"];
  v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15];
  v17 = v16;
  if (v10 == -1)
  {
    [v16 setIsErrorEntry:1];
    [v17 setObject:dCopy forKeyedSubscript:@"__PLEntryErrorString__"];
  }

  else
  {
    [v16 setObject:dCopy forKeyedSubscript:@"Identifier"];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    [v17 setObject:v18 forKeyedSubscript:@"pid"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    [v17 setObject:v19 forKeyedSubscript:@"State"];

    [v17 setObject:reasonsCopy forKeyedSubscript:@"Reason"];
    v20 = [MEMORY[0x277CCABB0] numberWithBool:visibilityCopy];
    [v17 setObject:v20 forKeyedSubscript:@"Visibility"];

    v22 = PLLogApplication(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [PLApplicationAgent logEventForwardRBSApplicationForBundleID:withPid:withState:withReasons:withVisibility:];
    }
  }

  [(PLOperator *)self logEntry:v17];

  objc_autoreleasePoolPop(v14);
}

- (void)logEventPointSuggestedWidgetReload:(id)reload
{
  v25[1] = *MEMORY[0x277D85DE8];
  reloadCopy = reload;
  v5 = [reloadCopy objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = [reloadCopy objectForKeyedSubscript:@"stats"];

  v11 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SuggestedWidgetReload"];
  array = [MEMORY[0x277CBEB18] array];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __57__PLApplicationAgent_logEventPointSuggestedWidgetReload___block_invoke;
  v20 = &unk_279A5CE18;
  v13 = v11;
  v21 = v13;
  v14 = convertFromSystemToMonotonic;
  v22 = v14;
  v15 = array;
  v23 = v15;
  [v10 enumerateObjectsUsingBlock:&v17];
  if ([v15 count])
  {
    v24 = v13;
    v25[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [(PLOperator *)self logEntries:v16 withGroupID:v13];
  }
}

void __57__PLApplicationAgent_logEventPointSuggestedWidgetReload___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];

  [v5 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v5];
}

- (void)logEventPointWidgetUpdates:(id)updates
{
  v23[1] = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  v5 = [updatesCopy objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = [updatesCopy objectForKeyedSubscript:@"stats"];

  v11 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"WidgetUpdates"];
  array = [MEMORY[0x277CBEB18] array];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__PLApplicationAgent_logEventPointWidgetUpdates___block_invoke;
  v17[3] = &unk_279A5CE90;
  v13 = v11;
  v18 = v13;
  v14 = convertFromSystemToMonotonic;
  v19 = v14;
  v15 = array;
  v20 = v15;
  selfCopy = self;
  [v10 enumerateObjectsUsingBlock:v17];
  if ([v15 count])
  {
    v22 = v13;
    v23[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [(PLOperator *)self logEntries:v16 withGroupID:v13];
  }
}

void __49__PLApplicationAgent_logEventPointWidgetUpdates___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v10 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];
  v5 = [v4 objectForKeyedSubscript:@"host"];

  LODWORD(v4) = [v5 isEqualToString:@"com.apple.chronod.timeline-host"];
  if (v4)
  {
    [v10 setObject:@"Local" forKeyedSubscript:@"host"];
  }

  [v10 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v10];
  v6 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"WidgetUpdates"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v8 = [v10 objectForKeyedSubscript:@"bundleID"];
  [v7 setObject:v8 forKeyedSubscript:@"bundleID"];

  v9 = [v10 objectForKeyedSubscript:@"host"];
  [v7 setObject:v9 forKeyedSubscript:@"host"];

  [v7 setObject:&unk_287145BB0 forKeyedSubscript:@"Count"];
  [*(a1 + 56) logEntry:v7];
}

- (void)logEventPointPosterUpdates:(id)updates
{
  v4 = *MEMORY[0x277D3F5E8];
  updatesCopy = updates;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"PosterUpdates"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:updatesCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardLiveActivityStats:(id)stats
{
  v4 = *MEMORY[0x277D3F5D0];
  statsCopy = stats;
  v9 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"LiveActivityStats"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:statsCopy];
  v7 = [statsCopy objectForKeyedSubscript:@"timestamp"];

  convertFromSystemToMonotonic = [v7 convertFromSystemToMonotonic];
  [v6 setEntryDate:convertFromSystemToMonotonic];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointLiveActivityUpdates:(id)updates
{
  v4 = *MEMORY[0x277D3F5E8];
  updatesCopy = updates;
  v9 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"LiveActivityUpdates"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:updatesCopy];
  v7 = [updatesCopy objectForKeyedSubscript:@"timestamp"];

  convertFromSystemToMonotonic = [v7 convertFromSystemToMonotonic];
  [v6 setEntryDate:convertFromSystemToMonotonic];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointControlCenterUpdates:(id)updates
{
  v25[1] = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  v5 = [updatesCopy objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = [updatesCopy objectForKeyedSubscript:@"stats"];

  v11 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ControlCenterUpdates"];
  array = [MEMORY[0x277CBEB18] array];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __56__PLApplicationAgent_logEventPointControlCenterUpdates___block_invoke;
  v20 = &unk_279A5CE18;
  v13 = v11;
  v21 = v13;
  v14 = convertFromSystemToMonotonic;
  v22 = v14;
  v15 = array;
  v23 = v15;
  [v10 enumerateObjectsUsingBlock:&v17];
  if ([v15 count])
  {
    v24 = v13;
    v25[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [(PLOperator *)self logEntries:v16 withGroupID:v13];
  }
}

void __56__PLApplicationAgent_logEventPointControlCenterUpdates___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];

  [v5 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v5];
}

- (void)displayIdentifiersDidChange
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  context = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        bundleIdentifier = [v9 bundleIdentifier];
        [v3 addObject:bundleIdentifier];
        currentDisplayIdentifiers = [(PLApplicationAgent *)self currentDisplayIdentifiers];
        v12 = [currentDisplayIdentifiers containsObject:bundleIdentifier];

        if ((v12 & 1) == 0)
        {
          [(PLApplicationAgent *)self logInstalledAppWithRecord:v9 withBundleID:bundleIdentifier shouldMaskTimestamp:1];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);
  v13 = MEMORY[0x277CBEB58];
  currentDisplayIdentifiers2 = [(PLApplicationAgent *)self currentDisplayIdentifiers];
  v15 = [v13 setWithSet:currentDisplayIdentifiers2];

  v16 = [MEMORY[0x277CBEB58] setWithSet:v3];
  [v15 minusSet:v3];
  currentDisplayIdentifiers3 = [(PLApplicationAgent *)self currentDisplayIdentifiers];
  [v16 minusSet:currentDisplayIdentifiers3];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(PLApplicationAgent *)self logUninstalledApp:*(*(&v26 + 1) + 8 * j)];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  if ([v16 count] || objc_msgSend(v18, "count"))
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    v24 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
    [v24 flushCachesWithReason:@"AppAddedOrRemoved"];
  }

  [(PLApplicationAgent *)self setCurrentDisplayIdentifiers:v3];
}

+ (id)pluginEntryFromRecord:(id)record
{
  recordCopy = record;
  v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
  bundleIdentifier = [recordCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    executableURL = [recordCopy executableURL];
    if (executableURL)
    {
      v8 = executableURL;
      containingBundleRecord = [recordCopy containingBundleRecord];
      if (containingBundleRecord)
      {
        containingBundleRecord2 = [recordCopy containingBundleRecord];
        bundleIdentifier2 = [containingBundleRecord2 bundleIdentifier];
        if (bundleIdentifier2)
        {

LABEL_10:
          bundleIdentifier = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
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

          [bundleIdentifier setObject:&unk_287145BC8 forKeyedSubscript:@"PluginDeletedDate"];
          goto LABEL_12;
        }
      }

      extensionPointRecord2 = [recordCopy extensionPointRecord];
      identifier2 = [extensionPointRecord2 identifier];
      v13 = [identifier2 isEqualToString:@"com.apple.posterkit.provider"];

      if (containingBundleRecord)
      {
      }

      if (v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    bundleIdentifier = 0;
  }

LABEL_12:

  return bundleIdentifier;
}

- (void)logInstalledAppWithRecord:(id)record withBundleID:(id)d shouldMaskTimestamp:(BOOL)timestamp
{
  v116 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  v11 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
  storageLocked = [v11 storageLocked];

  if ((storageLocked & 1) == 0)
  {
    v95 = dCopy;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    applicationExtensionRecords = [recordCopy applicationExtensionRecords];
    v14 = [applicationExtensionRecords countByEnumeratingWithState:&v111 objects:v115 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v112;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v112 != v16)
          {
            objc_enumerationMutation(applicationExtensionRecords);
          }

          v18 = *(*(&v111 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [PLApplicationAgent pluginEntryFromRecord:v18];
          [(PLApplicationAgent *)self logInstalledPlugin:v20];

          objc_autoreleasePoolPop(v19);
        }

        v15 = [applicationExtensionRecords countByEnumeratingWithState:&v111 objects:v115 count:16];
      }

      while (v15);
    }

    v21 = *MEMORY[0x277D3F5E0];
    v22 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v23 = objc_msgSend_storage(self);
    v24 = v95;
    v25 = [v23 lastEntryForKey:v22 withSubEntryKey:v95];

    if (v25)
    {
      shortVersionString = [recordCopy shortVersionString];
      if (shortVersionString)
      {
        [recordCopy shortVersionString];
      }

      else
      {
        [recordCopy bundleVersion];
      }
      monotonicDate = ;

      v41 = [v25 objectForKeyedSubscript:@"AppBundleVersion"];
      v42 = [v41 isEqualToString:monotonicDate];

      v43 = [v25 objectForKeyedSubscript:@"AppDeletedDate"];
      [v43 doubleValue];
      v45 = v44;

      if (v45 == 0.0)
      {
        v52 = [v25 objectForKeyedSubscript:@"AppUpdatedDate"];
        [v52 doubleValue];
        v54 = v53;

        if (v54 == 0.0)
        {
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke_2;
          v96[3] = &unk_279A5CEE0;
          v48 = &v97;
          v60 = v25;
          v97 = v60;
          v50 = &v98;
          v98 = monotonicDate;
          v51 = &v99;
          v99 = recordCopy;
          v100 = v95;
          [(PLOperator *)self updateEntry:v60 withBlock:v96];
        }

        else
        {
          v56 = PLLogApplication(v55);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
          }

          v101[0] = MEMORY[0x277D85DD0];
          v101[1] = 3221225472;
          v101[2] = __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke_618;
          v101[3] = &unk_279A5CEE0;
          v48 = &v102;
          v57 = v25;
          v102 = v57;
          v50 = &v103;
          v103 = monotonicDate;
          v51 = &v104;
          v104 = recordCopy;
          v105 = v95;
          [(PLOperator *)self updateEntry:v57 withBlock:v101];
        }
      }

      else
      {
        v47 = PLLogApplication(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
        }

        v106[0] = MEMORY[0x277D85DD0];
        v106[1] = 3221225472;
        v106[2] = __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke;
        v106[3] = &unk_279A5CEB8;
        v48 = &v107;
        v49 = v25;
        v107 = v49;
        v110 = v42;
        v50 = &v108;
        v108 = monotonicDate;
        v51 = &v109;
        v109 = recordCopy;
        [(PLOperator *)self updateEntry:v49 withBlock:v106];
      }

      v61 = *v48;
      dCopy = v95;
    }

    else
    {
      v28 = PLLogApplication(v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
      }

      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      fullMode = [MEMORY[0x277D3F180] fullMode];
      if ((fullMode & 1) == 0)
      {
        v31 = PLLogApplication(fullMode);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
        }

        if (timestamp)
        {
          v33 = PLLogApplication(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
          }

          v34 = [(PLOperator *)PLApplicationAgent entryKeyForType:v21 andName:@"AllApps"];
          v35 = objc_msgSend_storage(self);
          v36 = [v35 lastEntryForKey:v34];

          if (v36)
          {
            v38 = MEMORY[0x277CBEAA8];
            v39 = [v36 objectForKeyedSubscript:@"timestamp"];
            [v39 doubleValue];
            v40 = [v38 dateWithTimeIntervalSince1970:?];
          }

          else
          {
            v62 = PLLogApplication(v37);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
            }

            v63 = MEMORY[0x277CBEAA8];
            [monotonicDate timeIntervalSince1970];
            v40 = [v63 dateWithTimeIntervalSince1970:round(v64 / 1800.0) * 1800.0];
          }

          monotonicDate = v34;
        }

        else
        {
          v58 = MEMORY[0x277CBEAA8];
          [monotonicDate timeIntervalSince1970];
          v40 = [v58 dateWithTimeIntervalSince1970:round(v59 / 1800.0) * 1800.0];
        }

        monotonicDate = v40;
        v24 = v95;
      }

      v65 = PLLogApplication(fullMode);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
      }

      v61 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v22 withDate:monotonicDate];
      [v61 setObject:v24 forKeyedSubscript:@"AppBundleId"];
      iTunesMetadata = [recordCopy iTunesMetadata];
      distributorInfo = [iTunesMetadata distributorInfo];
      distributorID = [distributorInfo distributorID];
      [v61 setObject:distributorID forKeyedSubscript:@"AppDistributorID"];

      v70 = PLLogApplication(v69);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        [PLApplicationAgent logInstalledAppWithRecord:recordCopy withBundleID:v95 shouldMaskTimestamp:v70];
      }

      localizedName = [recordCopy localizedName];
      [v61 setObject:localizedName forKeyedSubscript:@"AppName"];

      bundleVersion = [recordCopy bundleVersion];
      [v61 setObject:bundleVersion forKeyedSubscript:@"AppBuildVersion"];

      shortVersionString2 = [recordCopy shortVersionString];
      if (shortVersionString2)
      {
        [recordCopy shortVersionString];
      }

      else
      {
        [recordCopy bundleVersion];
      }
      v74 = ;
      [v61 setObject:v74 forKeyedSubscript:@"AppBundleVersion"];

      executableURL = [recordCopy executableURL];
      lastPathComponent = [executableURL lastPathComponent];
      [v61 setObject:lastPathComponent forKeyedSubscript:@"AppExecutable"];

      v77 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLApplicationAgent isAppClipWithBundleID:](self, "isAppClipWithBundleID:", v95)}];
      [v61 setObject:v77 forKeyedSubscript:@"AppIsClip"];

      [v61 setObject:&unk_287145BC8 forKeyedSubscript:@"AppDeletedDate"];
      v78 = &unk_287145BF8;
      if ([recordCopy mayBeBUIVisible] && +[PLApplicationAgent hasScreenPresence:](PLApplicationAgent, "hasScreenPresence:", recordCopy))
      {
        v78 = &unk_287145BE0;
      }

      [v61 setObject:v78 forKeyedSubscript:@"AppType"];
      v79 = [v61 objectForKeyedSubscript:@"AppBundleId"];
      v80 = [v79 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"];

      if (v80)
      {
        [v61 setObject:&unk_287145BE0 forKeyedSubscript:@"AppType"];
      }

      [v61 setObject:&unk_287145BC8 forKeyedSubscript:@"AppUpdatedDate"];
      if (+[PLUtilities isAppAnalyticsEnabled])
      {
        deviceIdentifierForVendor = [recordCopy deviceIdentifierForVendor];
        uUIDString = [deviceIdentifierForVendor UUIDString];
        [v61 setObject:uUIDString forKeyedSubscript:@"AppVendorID"];

        v83 = MEMORY[0x277CCABB0];
        iTunesMetadata2 = [recordCopy iTunesMetadata];
        v85 = [v83 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata2, "storeItemIdentifier")}];
        [v61 setObject:v85 forKeyedSubscript:@"AppItemID"];

        iTunesMetadata3 = [recordCopy iTunesMetadata];
        storeCohort = [iTunesMetadata3 storeCohort];
        [v61 setObject:storeCohort forKeyedSubscript:@"AppCohort"];

        v88 = MEMORY[0x277CCABB0];
        iTunesMetadata4 = [recordCopy iTunesMetadata];
        v90 = [v88 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata4, "storeFront")}];
        [v61 setObject:v90 forKeyedSubscript:@"AppStoreFront"];

        v91 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(recordCopy, "isBeta")}];
        [v61 setObject:v91 forKeyedSubscript:@"AppIsBeta"];

        v92 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(recordCopy, "developerType") == 3}];
        [v61 setObject:v92 forKeyedSubscript:@"AppIs3rdParty"];
      }

      v93 = PLLogApplication([(PLOperator *)self logEntry:v61]);
      dCopy = v95;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
      {
        [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
      }

      v94 = [v61 objectForKeyedSubscript:@"AppBundleVersion"];
      [PLApplicationAgent addAppVersion:v95 withVersion:v94];
    }
  }
}

void __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke(uint64_t a1)
{
  v10 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:2700.0];
  if ([MEMORY[0x277D3F180] fullMode])
  {
    v2 = v10;
  }

  else
  {
    v3 = MEMORY[0x277CBEAA8];
    [v10 timeIntervalSince1970];
    v5 = [v3 dateWithTimeIntervalSince1970:round(v4 / 1800.0) * 1800.0];

    v2 = v5;
  }

  v11 = v2;
  [*(a1 + 32) setEntryDate:?];
  [*(a1 + 32) setObject:&unk_287145BC8 forKeyedSubscript:@"AppDeletedDate"];
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"AppBundleVersion"];
    v6 = [*(a1 + 48) bundleVersion];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"AppBuildVersion"];
  }

  v7 = [*(a1 + 48) iTunesMetadata];
  v8 = [v7 distributorInfo];
  v9 = [v8 distributorID];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"AppDistributorID"];
}

uint64_t __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke_618(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"AppBundleVersion"];
  v2 = [*(a1 + 48) bundleVersion];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"AppBuildVersion"];

  v3 = [*(a1 + 48) iTunesMetadata];
  v4 = [v3 distributorInfo];
  v5 = [v4 distributorID];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"AppDistributorID"];

  v6 = *(a1 + 56);
  v7 = *(a1 + 40);

  return [PLApplicationAgent addAppVersion:v6 withVersion:v7];
}

uint64_t __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"AppBundleVersion"];
  v2 = [*(a1 + 48) bundleVersion];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"AppBuildVersion"];

  v3 = [*(a1 + 48) iTunesMetadata];
  v4 = [v3 distributorInfo];
  v5 = [v4 distributorID];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"AppDistributorID"];

  v6 = *(a1 + 56);
  v7 = *(a1 + 40);

  return [PLApplicationAgent addAppVersion:v6 withVersion:v7];
}

- (void)buildAppVersionDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  context = objc_autoreleasePoolPush();
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  v5 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
  v18 = dictionaryCopy;
  v6 = [v5 entriesForKey:dictionaryCopy];

  v8 = PLLogApplication(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLApplicationAgent buildAppVersionDictionary:];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v14 objectForKeyedSubscript:@"AppBundleId"];
        v16 = [v14 objectForKeyedSubscript:@"AppBundleVersion"];
        [PLApplicationAgent addAppVersion:v15 withVersion:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(context);
}

- (void)logInstalledPlugin:(id)plugin
{
  pluginCopy = plugin;
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  v6 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
  storageLocked = [v6 storageLocked];

  if (pluginCopy && (storageLocked & 1) == 0)
  {
    v8 = [pluginCopy objectForKeyedSubscript:@"PluginId"];
    v9 = [v8 description];

    if (v9 && [v9 length])
    {
      v10 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__8;
      v26 = __Block_byref_object_dispose__8;
      v11 = objc_msgSend_storage(self);
      v27 = [v11 lastEntryForKey:v10 withSubEntryKey:v9];

      v12 = v23[5];
      if (v12)
      {
        v13 = [v12 objectForKeyedSubscript:@"PluginDeletedDate"];
        [v13 doubleValue];
        v15 = v14;

        v17 = PLLogApplication(v16);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
        if (v15 == 0.0)
        {
          if (v18)
          {
            [PLApplicationAgent logInstalledPlugin:];
          }
        }

        else
        {
          if (v18)
          {
            [PLApplicationAgent logInstalledPlugin:];
          }

          v19 = v23[5];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __41__PLApplicationAgent_logInstalledPlugin___block_invoke;
          v21[3] = &unk_279A5C0C8;
          v21[4] = &v22;
          [(PLOperator *)self updateEntry:v19 withBlock:v21];
        }
      }

      else
      {
        v20 = PLLogApplication(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLApplicationAgent logInstalledPlugin:];
        }

        [(PLOperator *)self logEntry:pluginCopy];
      }

      _Block_object_dispose(&v22, 8);
    }
  }
}

void __41__PLApplicationAgent_logInstalledPlugin___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(*(*(a1 + 32) + 8) + 40) setEntryDate:v2];
  [*(*(*(a1 + 32) + 8) + 40) setObject:&unk_287145BC8 forKeyedSubscript:@"PluginDeletedDate"];
}

- (void)logUninstalledApp:(id)app
{
  v42[1] = *MEMORY[0x277D85DE8];
  appCopy = app;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__8;
  v39[4] = __Block_byref_object_dispose__8;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v3 = *MEMORY[0x277D3F5E0];
  v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__8;
  v37 = __Block_byref_object_dispose__8;
  v5 = objc_msgSend_storage(self);
  [v5 lastEntryForKey:v4 withSubEntryKey:appCopy];
  v38 = v18 = v4;

  v6 = v34[5];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __40__PLApplicationAgent_logUninstalledApp___block_invoke;
  v32[3] = &unk_279A5CF08;
  v32[4] = &v33;
  v32[5] = v39;
  [(PLOperator *)self updateEntry:v6 withBlock:v32];
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v3 andName:@"AllPlugins"];
  v8 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginParentApp" withValue:appCopy withComparisonOperation:0];
  v9 = objc_msgSend_storage(self);
  v42[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v11 = [v9 entriesForKey:v7 withComparisons:v10];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v41 count:16];
  if (v13)
  {
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v22 = 0;
        v23 = &v22;
        v24 = 0x3032000000;
        v25 = __Block_byref_object_copy__8;
        v26 = __Block_byref_object_dispose__8;
        v27 = v16;
        v17 = v23[5];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __40__PLApplicationAgent_logUninstalledApp___block_invoke_2;
        v21[3] = &unk_279A5CF08;
        v21[4] = &v22;
        v21[5] = v39;
        [(PLOperator *)self updateEntry:v17 withBlock:v21];
        _Block_object_dispose(&v22, 8);
      }

      v13 = [v12 countByEnumeratingWithState:&v28 objects:v41 count:16];
    }

    while (v13);
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v39, 8);
}

void __40__PLApplicationAgent_logUninstalledApp___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCABB0];
  [*(*(*(a1 + 40) + 8) + 40) timeIntervalSince1970];
  v3 = [v2 numberWithDouble:?];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:@"AppDeletedDate"];
}

void __40__PLApplicationAgent_logUninstalledApp___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCABB0];
  [*(*(*(a1 + 40) + 8) + 40) timeIntervalSince1970];
  v3 = [v2 numberWithDouble:?];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:@"PluginDeletedDate"];
}

- (void)logUninstalledAppVersion:(id)version
{
  v22[1] = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__8;
  v20[4] = __Block_byref_object_dispose__8;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  versionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"AppBundleId", versionCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v7 = objc_msgSend_storage(self);
  v22[0] = versionCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v19 = [v7 lastEntryForKey:v5 withFilters:v8];

  v9 = v15[5];
  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__PLApplicationAgent_logUninstalledAppVersion___block_invoke;
    v10[3] = &unk_279A5CF30;
    v12 = v20;
    v13 = &v14;
    v11 = versionCopy;
    [(PLOperator *)self updateEntry:v9 withBlock:v10];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(v20, 8);
}

void __47__PLApplicationAgent_logUninstalledAppVersion___block_invoke(void *a1)
{
  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v2 = MEMORY[0x277CBEAA8];
    [*(*(a1[5] + 8) + 40) timeIntervalSince1970];
    v4 = [v2 dateWithTimeIntervalSince1970:round(v3 / 1800.0) * 1800.0];
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = MEMORY[0x277CCABB0];
  [*(*(a1[5] + 8) + 40) timeIntervalSince1970];
  v8 = [v7 numberWithDouble:?];
  [*(*(a1[6] + 8) + 40) setObject:v8 forKeyedSubscript:@"AppDeletedDate"];

  v9 = a1[4];
  v10 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"AppBundleVersion"];
  [PLApplicationAgent removeAppVersion:v9 forVersion:v10];
}

- (void)logUpdatedAppVersion:(id)version
{
  v22[1] = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__8;
  v20[4] = __Block_byref_object_dispose__8;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  versionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"AppBundleId", versionCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v7 = objc_msgSend_storage(self);
  v22[0] = versionCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v19 = [v7 lastEntryForKey:v5 withFilters:v8];

  v9 = v15[5];
  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__PLApplicationAgent_logUpdatedAppVersion___block_invoke;
    v10[3] = &unk_279A5CF30;
    v12 = v20;
    v13 = &v14;
    v11 = versionCopy;
    [(PLOperator *)self updateEntry:v9 withBlock:v10];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(v20, 8);
}

void __43__PLApplicationAgent_logUpdatedAppVersion___block_invoke(void *a1)
{
  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v2 = MEMORY[0x277CBEAA8];
    [*(*(a1[5] + 8) + 40) timeIntervalSince1970];
    v4 = [v2 dateWithTimeIntervalSince1970:round(v3 / 1800.0) * 1800.0];
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = MEMORY[0x277CCABB0];
  [*(*(a1[5] + 8) + 40) timeIntervalSince1970];
  v8 = [v7 numberWithDouble:?];
  [*(*(a1[6] + 8) + 40) setObject:v8 forKeyedSubscript:@"AppUpdatedDate"];

  v10 = PLLogApplication(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __43__PLApplicationAgent_logUpdatedAppVersion___block_invoke_cold_1();
  }

  v11 = a1[4];
  v12 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"AppBundleVersion"];
  [PLApplicationAgent removeAppVersion:v11 forVersion:v12];
}

- (void)logAllApps
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logAllPlugins
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = +[PLApplicationAgent installedPlugins];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(PLApplicationAgent *)self logInstalledPlugin:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
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

        v9 = [PLApplicationAgent pluginEntryFromRecord:*(*(&v11 + 1) + 8 * i)];
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

- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date
{
  keyCopy = key;
  [date timeIntervalSince1970];
  v7 = v6;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  v10 = v9 + -604800.0;

  if (v7 >= v10)
  {
    v7 = v10;
  }

  v11 = objc_opt_class();
  v12 = *MEMORY[0x277D3F5E0];
  v13 = [v11 entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v14 = [keyCopy isEqualToString:v13];

  if (v14)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(timestamp is NULL OR timestamp<%f) AND ((%@!=0 AND %@<%f) OR (%@!=0 AND %@<%f))", *&v7, @"AppDeletedDate", @"AppDeletedDate", *&v7, @"AppUpdatedDate", @"AppUpdatedDate", *&v7];
    v17 = LABEL_7:;
    goto LABEL_9;
  }

  v15 = [objc_opt_class() entryKeyForType:v12 andName:@"AllPlugins"];
  v16 = [keyCopy isEqualToString:v15];

  if (v16)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(timestamp is NULL OR timestamp<%f) AND %@!=0 AND %@<%f", *&v7, @"PluginDeletedDate", @"PluginDeletedDate", *&v7, v19, v20, v21];
    goto LABEL_7;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (void)appReferenceCleanup
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (BOOL)isVisible:(id)visible
{
  endowmentNamespaces = [visible endowmentNamespaces];
  v4 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

  return v4;
}

+ (id)getReasons:(id)reasons
{
  v21 = *MEMORY[0x277D85DE8];
  reasonsCopy = reasons;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = reasonsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "reason", v16)}];
        explanation = [v10 explanation];
        v13 = explanation;
        if (v11)
        {
          v14 = explanation == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (int)RBSStatetoPLState:(id)state state:(id)a4
{
  v4 = a4;
  v5 = [v4 taskState] - 1;
  if (v5 > 3u)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_25F023D80[v5];
  }

  v7 = [PLApplicationAgent isVisible:v4];

  if (v7)
  {
    return 8;
  }

  else
  {
    return v6;
  }
}

- (BOOL)stateDidChange:(id)change state:(id)state prevState:(id)prevState
{
  changeCopy = change;
  stateCopy = state;
  prevStateCopy = prevState;
  v11 = [(PLApplicationAgent *)self RBSStatetoPLState:changeCopy state:stateCopy];
  if (prevStateCopy && v11 == [(PLApplicationAgent *)self RBSStatetoPLState:changeCopy state:prevStateCopy])
  {
    process = [stateCopy process];
    v13 = [process pid];
    process2 = [prevStateCopy process];
    v15 = v13 != [process2 pid];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (id)getApplicationRecordSet:(id)set
{
  v29 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v4 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = setCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = objc_alloc(MEMORY[0x277CC1E70]);
        bundleURL = [v10 bundleURL];
        v19 = 0;
        v13 = [v11 initWithURL:bundleURL allowPlaceholder:1 error:&v19];
        v14 = v19;

        if (v13)
        {
          [v4 addObject:v13];
        }

        else
        {
          v16 = PLLogApplication(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v25 = v10;
            v26 = 2112;
            v27 = v14;
            _os_log_error_impl(&dword_25EE51000, v16, OS_LOG_TYPE_ERROR, "could not refresh application record for %@: %@", buf, 0x16u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);

  return v4;
}

- (void)applicationsDidInstall:(id)install
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [(PLApplicationAgent *)self getApplicationRecordSet:install];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 138412290;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        isPlaceholder = [v10 isPlaceholder];
        if (isPlaceholder)
        {
          bundleIdentifier = PLLogApplication(isPlaceholder);
          if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEBUG))
          {
            [(PLApplicationAgent *)&v18 applicationsDidInstall:v19, bundleIdentifier];
          }
        }

        else
        {
          bundleIdentifier = [v10 bundleIdentifier];
          isUpdate = [v10 isUpdate];
          v14 = isUpdate;
          v15 = PLLogApplication(isUpdate);
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
          if (v14)
          {
            if (v16)
            {
              *buf = v17;
              v25 = bundleIdentifier;
              _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "applicationsDidInstall: Update %@\n", buf, 0xCu);
            }

            [(PLApplicationAgent *)self logUpdatedAppVersion:bundleIdentifier];
          }

          else
          {
            if (v16)
            {
              *buf = v17;
              v25 = bundleIdentifier;
              _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "applicationsDidInstall: Install %@", buf, 0xCu);
            }
          }

          [(PLApplicationAgent *)self logInstalledAppWithRecord:v10 withBundleID:bundleIdentifier shouldMaskTimestamp:1];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v30 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 138412546;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        isPlaceholder = [v10 isPlaceholder];
        if (isPlaceholder)
        {
          bundleIdentifier = PLLogApplication(isPlaceholder);
          if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEBUG))
          {
            [(PLApplicationAgent *)&v19 applicationsDidUninstall:v20, bundleIdentifier];
          }
        }

        else
        {
          bundleIdentifier = [v10 bundleIdentifier];
          localizedName = [v10 localizedName];
          v14 = PLLogApplication([(PLApplicationAgent *)self logUninstalledAppVersion:bundleIdentifier]);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = v18;
            v26 = localizedName;
            v27 = 2112;
            v28 = bundleIdentifier;
            _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "AppDeletion : Application Name %@ and bundle ID %@", buf, 0x16u);
          }

          [(PLApplicationAgent *)self logEventForwardApplicationDidUninstall:bundleIdentifier withAppName:localizedName];
        }
      }

      v7 = [uninstallCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }

  if ([uninstallCopy count])
  {
    appReferenceCleanup = +[PLUtilities AppDeletionEnabled];
    if (appReferenceCleanup)
    {
      appReferenceCleanup = [(PLApplicationAgent *)self appReferenceCleanup];
    }

    v16 = PLLogApplication(appReferenceCleanup);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PLApplicationAgent applicationsDidUninstall:];
    }

    v17 = [PLUtilities generateAndUpdateSaltValue:@"PLSaltBundleID"];
  }
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_397_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_447_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_453_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_458_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_465_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_475_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_482_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_489_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_494_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_499_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_507_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_515_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_520_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_525_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_527_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_540_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_548_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)isApplication:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error to identify isApplication %@", v0, 0xCu);
}

- (void)createWidgetStatsAccountingEvents:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createWidgetStatsAccountingEvents:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v4 = 134218242;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "WidgetStats Accounting: totalScreenOnTime=%f, identifierToWeight=%@", &v4, 0x16u);
}

- (void)logEventForwardAmbientModeLifetimeCounter:(NSObject *)a3 .cold.1(void *a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 objectForKeyedSubscript:@"LifetimePresentationCounter"];
  v6[0] = 67109378;
  v6[1] = a2;
  v7 = 2112;
  v8 = v5;
  _os_log_debug_impl(&dword_25EE51000, a3, OS_LOG_TYPE_DEBUG, "AmbientModeLifetimePresentationCounter value from payload: %d, value after rounding: %@", v6, 0x12u);
}

- (void)logEventPointApplicationForDisplayID:withPid:withState:withReasons:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logEventForwardRBSApplicationForBundleID:withPid:withState:withReasons:withVisibility:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.6()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logInstalledAppWithRecord:(void *)a1 withBundleID:(uint64_t)a2 shouldMaskTimestamp:(NSObject *)a3 .cold.8(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 iTunesMetadata];
  v6 = [v5 distributorInfo];
  v7 = [v6 distributorID];
  OUTLINED_FUNCTION_1();
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_25EE51000, a3, OS_LOG_TYPE_DEBUG, "AllApps logging DistributorID: %@ for BundleID: %@", v8, 0x16u);
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.9()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)buildAppVersionDictionary:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logInstalledPlugin:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logInstalledPlugin:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logInstalledPlugin:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)applicationsDidInstall:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "app Record is placeHolder", buf, 2u);
}

- (void)applicationsDidUninstall:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "app Proxy is placeHolder", buf, 2u);
}

- (void)applicationsDidUninstall:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end