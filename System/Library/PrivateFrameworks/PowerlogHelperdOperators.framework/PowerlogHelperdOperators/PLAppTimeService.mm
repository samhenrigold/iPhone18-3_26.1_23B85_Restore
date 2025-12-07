@interface PLAppTimeService
+ (id)entryAggregateDefinitionAppRunTime;
+ (id)entryAggregateDefinitionAppUsageEvents;
+ (id)entryAggregateDefinitionCellularCondition;
+ (id)entryAggregateDefinitionMetrics;
+ (id)entryAggregateDefinitionUsageTime;
+ (id)entryAggregateDefinitions;
+ (void)load;
- (PLAppTimeService)init;
- (double)convertCPUTimeToBackgroundTime:(double)time withDuration:(double)duration;
- (double)getCPUTime:(id)time;
- (id)backgroundAppToBundleIDmapping;
- (id)buildCallBack:(id)back withGroup:(BOOL)group withHandler:(id)handler;
- (id)generateExcludedBGBundleIDs;
- (id)getWidgetParentAppForBundleID:(id)d;
- (id)remapCloudDocsBundleID:(id)d;
- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date;
- (void)addAudioAndLocationTimeAtDate:(id)date;
- (void)addAudioTimeAtDate:(id)date;
- (void)addAudioTimeAtDate:(id)date forBundleID:(id)d;
- (void)addAudioUseFromforBundleID:(id)d AtDate:(id)date;
- (void)addCarPlayUseFromLayoutEntry:(id)entry AtDate:(id)date;
- (void)addCellularConditionTimeAtDate:(id)date;
- (void)addForegroundTimeAtDate:(id)date withNewLayoutElementsArray:(id)array;
- (void)addNotificationCountFromUserInfo:(id)info AtDate:(id)date;
- (void)addNowPlayingTimeAtDate:(id)date;
- (void)addStatusBarTimeAtDate:(id)date;
- (void)addWidgetUseFromUserInfo:(id)info AtDate:(id)date;
- (void)chunkAppsOnScreenAtDate:(id)date;
- (void)chunkScreenOnAggregationAtDate:(id)date;
- (void)debugAppTimeService;
- (void)handleApplicationCallback:(id)callback;
- (void)handleAudioCallback:(id)callback;
- (void)handleBackgroundTransferCallback:(id)callback;
- (void)handleBatteryCallback:(id)callback;
- (void)handleCellularConditionCallback:(id)callback;
- (void)handleCoalitionCallback:(id)callback;
- (void)handleCoalitionCallback:(id)callback withNewCoalitionArray:(id)array;
- (void)handleDisplayCallback:(id)callback;
- (void)handleInCallServiceCallback:(id)callback;
- (void)handleNotificationCallback:(id)callback;
- (void)handleNowPlayingCallback:(id)callback;
- (void)handlePluginCallback:(id)callback;
- (void)handlePowerOutCallback:(id)callback;
- (void)handleScreenStateCallback:(id)callback;
- (void)handleSleepCallBack:(id)back;
- (void)handleStatusBarCallback:(id)callback;
- (void)handleTelephonyRegistrationCallback:(id)callback;
- (void)handleWakeCallBack:(id)back;
- (void)handleWidgetCallback:(id)callback;
- (void)initOperatorDependancies;
- (void)loadWatchKitExtensionsSet;
- (void)logAppUsageEventForKey:(id)key withBundleID:(id)d withDate:(id)date;
- (void)periodicUpdateAppRunTimeWithDate:(id)date;
- (void)resetLayoutElementsPLEntryArray:(id)array withNowDate:(id)date;
- (void)updateAggregationsAtDate:(id)date withNewAPState:(BOOL)state;
- (void)updateAggregationsAtDate:(id)date withNewPluggedInState:(BOOL)state;
- (void)updateAggregationsAtDate:(id)date withNewScreenState:(int)state;
- (void)updateAggregationsAtSBCWithDate:(id)date withLongestCoalitionBGTime:(double)time withCoalitionLength:(double)length;
- (void)updateAppRunTimeForBundleId:(id)id withAppStateUpdateType:(int)type withNowDate:(id)date;
- (void)updateBackgroundAppsForBundleID:(id)d withState:(unsigned int)state withDate:(id)date;
- (void)updateBackgroundTimeForAppStateEntry:(id)entry;
- (void)updateBackgroundTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date;
- (void)updateCoalitionsAppsOnScreenSet:(id)set;
- (void)updateInCallServiceTimeAtDate:(id)date;
- (void)updateInCallServiceTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date;
- (void)updatePiPModeAppsSet:(id)set withAppRole:(id)role;
- (void)updatePluggedInTimeAtDate:(id)date withDiff:(double)diff;
- (void)updatePowerOutTimeInDBForBundleId:(id)id;
- (void)updateScreenOffTimeAtDate:(id)date withDiff:(double)diff;
- (void)updateScreenOnTimeAtDate:(id)date withDiff:(double)diff;
- (void)updateScreenOnTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date;
@end

@implementation PLAppTimeService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAppTimeService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryAggregateDefinitions
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"AppRunTime";
  entryAggregateDefinitionAppRunTime = [self entryAggregateDefinitionAppRunTime];
  v11[0] = entryAggregateDefinitionAppRunTime;
  v10[1] = @"UsageTime";
  entryAggregateDefinitionUsageTime = [self entryAggregateDefinitionUsageTime];
  v11[1] = entryAggregateDefinitionUsageTime;
  v10[2] = @"Metrics";
  entryAggregateDefinitionMetrics = [self entryAggregateDefinitionMetrics];
  v11[2] = entryAggregateDefinitionMetrics;
  v10[3] = @"CellularCondition";
  entryAggregateDefinitionCellularCondition = [self entryAggregateDefinitionCellularCondition];
  v11[3] = entryAggregateDefinitionCellularCondition;
  v10[4] = @"AppUsageEvents";
  entryAggregateDefinitionAppUsageEvents = [self entryAggregateDefinitionAppUsageEvents];
  v11[4] = entryAggregateDefinitionAppUsageEvents;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

+ (id)entryAggregateDefinitionAppRunTime
{
  v58[4] = *MEMORY[0x277D85DE8];
  v57[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F490];
  v55[0] = *MEMORY[0x277D3F568];
  v55[1] = v2;
  v56[0] = &unk_28714BB58;
  v56[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F590];
  v55[2] = *MEMORY[0x277D3F4A0];
  v55[3] = v3;
  v56[2] = MEMORY[0x277CBEC38];
  v56[3] = &unk_287147B60;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
  v58[0] = v41;
  v57[1] = *MEMORY[0x277D3F540];
  v53[0] = @"BundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v54[0] = commonTypeDict_StringFormat_withBundleID;
  v53[1] = @"ScreenOnTime";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v54[1] = commonTypeDict_RealFormat;
  v53[2] = @"BackgroundTime";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v54[2] = commonTypeDict_RealFormat2;
  v53[3] = @"ScreenOnPluggedInTime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
  v54[3] = commonTypeDict_RealFormat3;
  v53[4] = @"BackgroundPluggedInTime";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v54[4] = commonTypeDict_RealFormat4;
  v53[5] = @"BackgroundAudioNowPlayingTime";
  v51 = *MEMORY[0x277D3F5A8];
  v4 = v51;
  v52 = &unk_287147B78;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v54[5] = v30;
  v53[6] = @"BackgroundLocationTime";
  v49 = v4;
  v50 = &unk_287147B78;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v54[6] = v29;
  v53[7] = @"BackgroundAudioNowPlayingPluggedInTime";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v54[7] = commonTypeDict_RealFormat5;
  v53[8] = @"BackgroundLocationPluggedInTime";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
  v54[8] = commonTypeDict_RealFormat6;
  v53[9] = @"BackgroundLocationAudioTime";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
  v54[9] = commonTypeDict_RealFormat7;
  v53[10] = @"BackgroundLocationAudioPluggedInTime";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat8 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
  v54[10] = commonTypeDict_RealFormat8;
  v53[11] = @"BackgroundAudioPlayingTime";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat9 = [mEMORY[0x277D3F198]10 commonTypeDict_RealFormat];
  v54[11] = commonTypeDict_RealFormat9;
  v53[12] = @"BackgroundAudioPlayingTimePluggedIn";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat10 = [mEMORY[0x277D3F198]11 commonTypeDict_RealFormat];
  v54[12] = commonTypeDict_RealFormat10;
  v53[13] = @"InCallScreenOnTime";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v54[13] = commonTypeDict_IntegerFormat;
  v53[14] = @"InCallBackgroundTime";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v54[14] = commonTypeDict_IntegerFormat2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:15];
  v58[1] = v9;
  v57[2] = *MEMORY[0x277D3F478];
  v47[0] = &unk_28714BB68;
  v45 = *MEMORY[0x277D3F470];
  v10 = v45;
  v46 = &unk_28714BB78;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v47[1] = &unk_28714BB88;
  v48[0] = v11;
  v43 = v10;
  v44 = &unk_28714BB98;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v48[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v58[2] = v13;
  v57[3] = *MEMORY[0x277D3F488];
  v42[0] = @"ScreenOnTime";
  v42[1] = @"BackgroundTime";
  v42[2] = @"BackgroundAudioNowPlayingTime";
  v42[3] = @"BackgroundLocationTime";
  v42[4] = @"ScreenOnPluggedInTime";
  v42[5] = @"BackgroundPluggedInTime";
  v42[6] = @"BackgroundAudioNowPlayingPluggedInTime";
  v42[7] = @"BackgroundLocationPluggedInTime";
  v42[8] = @"BackgroundLocationAudioTime";
  v42[9] = @"BackgroundLocationAudioPluggedInTime";
  v42[10] = @"BackgroundAudioPlayingTime";
  v42[11] = @"BackgroundAudioPlayingTimePluggedIn";
  v42[12] = @"InCallScreenOnTime";
  v42[13] = @"InCallBackgroundTime";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:14];
  v58[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:4];

  return v15;
}

+ (id)entryAggregateDefinitionMetrics
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v3 = *MEMORY[0x277D3F590];
  v22[2] = *MEMORY[0x277D3F490];
  v22[3] = v3;
  v23[0] = &unk_28714BBA8;
  v23[1] = MEMORY[0x277CBEC38];
  v23[2] = MEMORY[0x277CBEC38];
  v23[3] = &unk_287147B90;
  v22[4] = *MEMORY[0x277D3F588];
  v23[4] = &unk_28714BBB8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
  v25[0] = v15;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"BundleId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v21[0] = commonTypeDict_StringFormat_withBundleID;
  v20[1] = @"byteswritten";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v21[1] = commonTypeDict_IntegerFormat;
  v20[2] = @"bytesread";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v21[2] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v25[1] = v10;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_28714BB68;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_28714BB78;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v24[3] = *MEMORY[0x277D3F488];
  v25[2] = v12;
  v25[3] = &unk_28714E768;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  return v13;
}

+ (id)entryAggregateDefinitionCellularCondition
{
  v27[4] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F490];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v3 = *MEMORY[0x277D3F590];
  v24[2] = *MEMORY[0x277D3F4A0];
  v24[3] = v3;
  v25[0] = &unk_28714BBC8;
  v25[1] = MEMORY[0x277CBEC38];
  v25[2] = MEMORY[0x277CBEC38];
  v25[3] = &unk_287147B90;
  v24[4] = *MEMORY[0x277D3F588];
  v25[4] = &unk_28714BBB8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];
  v27[0] = v16;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"BundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v23[0] = commonTypeDict_StringFormat_withBundleID;
  v22[1] = @"SignalBars";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat;
  v22[2] = @"CellUsageTime";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v23[2] = commonTypeDict_IntegerFormat2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v27[1] = v9;
  v26[2] = *MEMORY[0x277D3F478];
  v20 = &unk_28714BB68;
  v18 = *MEMORY[0x277D3F470];
  v19 = &unk_28714BB78;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v27[2] = v11;
  v26[3] = *MEMORY[0x277D3F488];
  v17 = @"CellUsageTime";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v27[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  return v13;
}

+ (id)entryAggregateDefinitionUsageTime
{
  v26[4] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v25[0] = *MEMORY[0x277D3F4E8];
    v3 = *MEMORY[0x277D3F490];
    v23[0] = *MEMORY[0x277D3F568];
    v23[1] = v3;
    v24[0] = &unk_28714BBD8;
    v24[1] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v26[0] = v15;
    v25[1] = *MEMORY[0x277D3F540];
    v21[0] = @"ScreenOn";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_s];
    v22[0] = commonTypeDict_IntegerFormat_withUnit_s;
    v21[1] = @"ScreenOff";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_s];
    v22[1] = commonTypeDict_IntegerFormat_withUnit_s2;
    v21[2] = @"PluggedIn";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_s];
    v22[2] = commonTypeDict_IntegerFormat_withUnit_s3;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v26[1] = v9;
    v25[2] = *MEMORY[0x277D3F478];
    v19 = &unk_28714BB68;
    v17 = *MEMORY[0x277D3F470];
    v18 = &unk_28714BBE8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v26[2] = v11;
    v25[3] = *MEMORY[0x277D3F488];
    v16[0] = @"ScreenOn";
    v16[1] = @"ScreenOff";
    v16[2] = @"PluggedIn";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
    v26[3] = v12;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
  }

  return v2;
}

+ (id)entryAggregateDefinitionAppUsageEvents
{
  v39[4] = *MEMORY[0x277D85DE8];
  v38[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v36[0] = *MEMORY[0x277D3F568];
  v36[1] = v2;
  v3 = MEMORY[0x277CBEC38];
  v37[0] = &unk_28714BBA8;
  v37[1] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277D3F588];
  v36[2] = *MEMORY[0x277D3F590];
  v36[3] = v4;
  v37[2] = &unk_287147B90;
  v37[3] = &unk_28714BBF8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
  v39[0] = v21;
  v38[1] = *MEMORY[0x277D3F540];
  v34[0] = @"BundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v35[0] = commonTypeDict_StringFormat_withBundleID;
  v34[1] = @"NotificationCount";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v35[1] = commonTypeDict_IntegerFormat;
  v34[2] = @"HasWidgetActive";
  v7 = *MEMORY[0x277D3F530];
  v31[0] = *MEMORY[0x277D3F5A8];
  v6 = v31[0];
  v31[1] = v7;
  v33[0] = &unk_287147BA8;
  v33[1] = v3;
  v32 = *MEMORY[0x277D3F480];
  v8 = v32;
  v33[2] = &unk_287147BA8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v31 count:3];
  v35[2] = v9;
  v34[3] = @"HasCarPlayUsage";
  v29[0] = v6;
  v29[1] = v7;
  v30[0] = &unk_287147BA8;
  v30[1] = v3;
  v29[2] = v8;
  v30[2] = &unk_287147BA8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v35[3] = v10;
  v34[4] = @"HasAudioUsage";
  v27[0] = v6;
  v27[1] = v7;
  v28[0] = &unk_287147BA8;
  v28[1] = v3;
  v27[2] = v8;
  v28[2] = &unk_287147BA8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v35[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:5];
  v39[1] = v12;
  v38[2] = *MEMORY[0x277D3F478];
  v25 = &unk_28714BB88;
  v23 = *MEMORY[0x277D3F470];
  v24 = &unk_28714BBF8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v39[2] = v14;
  v38[3] = *MEMORY[0x277D3F488];
  v22[0] = @"NotificationCount";
  v22[1] = @"HasWidgetActive";
  v22[2] = @"HasCarPlayUsage";
  v22[3] = @"HasAudioUsage";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  v39[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];

  return v16;
}

- (void)loadWatchKitExtensionsSet
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  watchkitExtensions = self->_watchkitExtensions;
  self->_watchkitExtensions = v3;

  v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
  v6 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginType" withValue:@"com.apple.watchkit" withComparisonOperation:0];
  v21[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  v8 = objc_msgSend_storage(self);
  v9 = [v8 entriesForKey:v5 withComparisons:v7];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v16 + 1) + 8 * v14) objectForKeyedSubscript:{@"PluginId", v16}];
        if (v15)
        {
          [(NSMutableSet *)self->_watchkitExtensions addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (PLAppTimeService)init
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || +[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLAppTimeService;
    self = [(PLOperator *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_226(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PLLogCommon(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_debug_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEBUG, "Calling power out with %@ %@ %@", &v11, 0x20u);
  }

  [*(a1 + 32) handlePowerOutCallback:v7];
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_6_246(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __44__PLAppTimeService_initOperatorDependancies__block_invoke_7;
    v16 = &unk_279A5E8C8;
    v17 = @"AppTimeService";
    v18 = v4;
    if (kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_defaultOnce, &v13);
    }

    v5 = kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_classDebugEnabled;

    if (v5 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device Going to Sleep", v13, v14, v15, v16];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService initOperatorDependancies]_block_invoke_6"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:663];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) handleSleepCallBack:{v3, v13, v14, v15, v16}];
}

void *__44__PLAppTimeService_initOperatorDependancies__block_invoke_7(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_classDebugEnabled = result;
  return result;
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_258(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __44__PLAppTimeService_initOperatorDependancies__block_invoke_2_259;
    v16 = &unk_279A5E8C8;
    v17 = @"AppTimeService";
    v18 = v4;
    if (kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_2_defaultOnce, &v13);
    }

    v5 = kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_2_classDebugEnabled;

    if (v5 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device Woke Up", v13, v14, v15, v16];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService initOperatorDependancies]_block_invoke"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:667];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) handleWakeCallBack:{v3, v13, v14, v15, v16}];
}

void *__44__PLAppTimeService_initOperatorDependancies__block_invoke_2_259(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_2_classDebugEnabled = result;
  return result;
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_264(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) periodicUpdateAppRunTimeWithDate:v2];
  [*(a1 + 32) chunkScreenOnAggregationAtDate:v2];
  [*(a1 + 32) updateAggregationsAtDate:v2 withNewPluggedInState:{objc_msgSend(*(a1 + 32), "deviceIsPluggedIn")}];
}

- (id)buildCallBack:(id)back withGroup:(BOOL)group withHandler:(id)handler
{
  groupCopy = group;
  backCopy = back;
  handlerCopy = handler;
  if (groupCopy)
  {
    backCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"GroupID_%@", backCopy];
  }

  else
  {
    backCopy = backCopy;
  }

  v11 = backCopy;
  v12 = objc_alloc(MEMORY[0x277D3F1A8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__PLAppTimeService_buildCallBack_withGroup_withHandler___block_invoke;
  v16[3] = &unk_279A5FE78;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = [v12 initWithOperator:self forEntryKey:v11 withBlock:v16];

  return v14;
}

uint64_t __56__PLAppTimeService_buildCallBack_withGroup_withHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)debugAppTimeService
{
  v3 = objc_alloc(MEMORY[0x277CBEBB8]);
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [v3 initWithFireDate:date interval:self target:sel_testService selector:0 userInfo:1 repeats:20.0];

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:v6 forMode:*MEMORY[0x277CBE640]];
}

- (void)handleWakeCallBack:(id)back
{
  v6 = [back objectForKey:@"entry"];
  entryDate = [v6 entryDate];
  [(PLAppTimeService *)self periodicUpdateAppRunTimeWithDate:entryDate];

  entryDate2 = [v6 entryDate];
  [(PLAppTimeService *)self updateAggregationsAtDate:entryDate2 withNewAPState:1];

  [(PLAppTimeService *)self setIsAPOn:1];
}

- (void)handleSleepCallBack:(id)back
{
  v4 = [back objectForKey:@"entry"];
  entryDate = [v4 entryDate];
  [(PLAppTimeService *)self periodicUpdateAppRunTimeWithDate:entryDate];

  entryDate2 = [v4 entryDate];
  [(PLAppTimeService *)self updateAggregationsAtDate:entryDate2 withNewAPState:0];

  v8 = PLLogCommon(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService handleSleepCallBack:?];
  }

  audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  [audioPlaybackBundleIDs removeAllObjects];

  [(PLAppTimeService *)self setIsAPOn:0];
  if ([(PLAppTimeService *)self inCallNow])
  {
    entryDate3 = [v4 entryDate];
    lastCallTime = [(PLAppTimeService *)self lastCallTime];
    [entryDate3 timeIntervalSinceDate:lastCallTime];
    v13 = v12;

    lastCallBundleID = [(PLAppTimeService *)self lastCallBundleID];
    lastCallTime2 = [(PLAppTimeService *)self lastCallTime];
    [(PLAppTimeService *)self updateInCallServiceTimeInDBForBundleId:lastCallBundleID withTime:lastCallTime2 withDate:v13];

    [(PLAppTimeService *)self setInCallNow:0];
  }
}

- (void)handleCoalitionCallback:(id)callback
{
  v4 = MEMORY[0x277CBEAA8];
  callbackCopy = callback;
  monotonicDate = [v4 monotonicDate];
  v6 = [callbackCopy objectForKey:@"group"];

  entryKeyPLCoalitionAgentEventIntervalCoalition = [(PLAppTimeService *)self entryKeyPLCoalitionAgentEventIntervalCoalition];
  v8 = [v6 objectForKeyedSubscript:entryKeyPLCoalitionAgentEventIntervalCoalition];

  [(PLAppTimeService *)self handleCoalitionCallback:monotonicDate withNewCoalitionArray:v8];
}

- (void)handleScreenStateCallback:(id)callback
{
  v4 = MEMORY[0x277CBEAA8];
  callbackCopy = callback;
  monotonicDate = [v4 monotonicDate];
  [(PLAppTimeService *)self addNowPlayingTimeAtDate:monotonicDate];
  [(PLAppTimeService *)self addStatusBarTimeAtDate:monotonicDate];
  [(PLAppTimeService *)self addCellularConditionTimeAtDate:monotonicDate];
  [(PLAppTimeService *)self addAudioTimeAtDate:monotonicDate];
  v6 = [callbackCopy objectForKey:@"group"];

  entryKeyPLScreenStateAgentScreenState = [(PLAppTimeService *)self entryKeyPLScreenStateAgentScreenState];
  v8 = [v6 objectForKeyedSubscript:entryKeyPLScreenStateAgentScreenState];

  [(PLAppTimeService *)self addForegroundTimeAtDate:monotonicDate withNewLayoutElementsArray:v8];
  [(PLAppTimeService *)self addCarPlayUseFromLayoutEntry:v8 AtDate:monotonicDate];
}

- (void)handleApplicationCallback:(id)callback
{
  v4 = [callback objectForKey:@"entry"];
  [(PLAppTimeService *)self updateBackgroundTimeForAppStateEntry:v4];
}

- (void)handleBatteryCallback:(id)callback
{
  callbackCopy = callback;
  v4 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v5 = [v4 objectForKeyedSubscript:@"ExternalConnected"];
  bOOLValue = [v5 BOOLValue];

  v7 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v8 = [v7 objectForKeyedSubscript:@"CurrentCapacity"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v12 = [v11 objectForKeyedSubscript:@"MaxCapacity"];
  [v12 doubleValue];
  v14 = v13;

  v15 = 0.0;
  if (v14 > 0.0)
  {
    v15 = v10 * 100.0 / v14;
  }

  v16 = [PLUtilities isPingPongChargingWith:bOOLValue andBatteryLevelPercent:v15];
  v17 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v18 = [v17 objectForKeyedSubscript:@"IsCharging"];
  v19 = ([v18 BOOLValue] | v16) & 1;

  if (v19 != [(PLAppTimeService *)self deviceIsPluggedIn])
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLAppTimeService *)self addForegroundTimeAtDate:monotonicDate withNewLayoutElementsArray:0];
    [(PLAppTimeService *)self updateInCallServiceTimeAtDate:monotonicDate];
    [(PLAppTimeService *)self addAudioTimeAtDate:monotonicDate];
    [(PLAppTimeService *)self addNowPlayingTimeAtDate:monotonicDate];
    [(PLAppTimeService *)self addStatusBarTimeAtDate:monotonicDate];
    [(PLAppTimeService *)self updateAggregationsAtDate:monotonicDate withNewPluggedInState:v19];
  }

  [(PLAppTimeService *)self setDeviceIsPluggedIn:v19];
}

- (void)handleNotificationCallback:(id)callback
{
  v4 = MEMORY[0x277CBEAA8];
  callbackCopy = callback;
  monotonicDate = [v4 monotonicDate];
  [(PLAppTimeService *)self addNotificationCountFromUserInfo:callbackCopy AtDate:monotonicDate];
}

- (void)handleWidgetCallback:(id)callback
{
  v4 = MEMORY[0x277CBEAA8];
  callbackCopy = callback;
  monotonicDate = [v4 monotonicDate];
  [(PLAppTimeService *)self addWidgetUseFromUserInfo:callbackCopy AtDate:monotonicDate];
}

- (void)handleDisplayCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKey:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"Active"];
  intValue = [v6 intValue];

  if (intValue == 2)
  {
    if (_os_feature_enabled_impl())
    {
      intValue = 2;
    }

    else
    {
      intValue = 1;
    }
  }

  if ([(PLAppTimeService *)self inCallNow])
  {
    if (intValue != [(PLAppTimeService *)self displayState])
    {
      displayState = [(PLAppTimeService *)self displayState];
      if (displayState == 1 || intValue == 1)
      {
        v9 = PLLogCommon(displayState);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [PLAppTimeService handleDisplayCallback:];
        }

        entryDate = [v5 entryDate];
        [(PLAppTimeService *)self updateInCallServiceTimeAtDate:entryDate];
      }
    }
  }

  v11 = [v5 objectForKeyedSubscript:@"Block"];
  v12 = [v11 isEqualToString:@"Backlight"];

  if (v12)
  {
    if (!intValue)
    {
      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService handleDisplayCallback:];
      }

      entryDate2 = [v5 entryDate];
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:entryDate2];

      entryDate3 = [v5 entryDate];
      [(PLAppTimeService *)self addForegroundTimeAtDate:entryDate3 withNewLayoutElementsArray:0];
    }

    entryDate4 = [v5 entryDate];
    [(PLAppTimeService *)self updateAggregationsAtDate:entryDate4 withNewScreenState:intValue];

    if (_os_feature_enabled_impl() && (v18 = [MEMORY[0x277D3F208] hasAOD], v18))
    {
      v19 = PLLogCommon(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService handleDisplayCallback:?];
      }

      displayState2 = [(PLAppTimeService *)self displayState];
      if (displayState2 || (intValue - 1) > 1)
      {
        goto LABEL_28;
      }

      v21 = PLLogCommon(displayState2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService handleDisplayCallback:v5];
      }
    }

    else if ((intValue - 1) > 1)
    {
      goto LABEL_28;
    }

    entryDate5 = [v5 entryDate];
    [(PLAppTimeService *)self setLastScreenOnTime:entryDate5];

LABEL_28:
    [(PLAppTimeService *)self setDisplayState:intValue];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v23 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __42__PLAppTimeService_handleDisplayCallback___block_invoke;
      v37 = &__block_descriptor_40_e5_v8__0lu32l8;
      v38 = v23;
      if (handleDisplayCallback__defaultOnce != -1)
      {
        dispatch_once(&handleDisplayCallback__defaultOnce, &block);
      }

      if (handleDisplayCallback__classDebugEnabled == 1)
      {
        v24 = MEMORY[0x277CCACA8];
        v25 = [v5 objectForKeyedSubscript:@"Active"];
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLAppTimeService displayState](self, "displayState")}];
        v27 = [v24 stringWithFormat:@"Got display %@ %@ %@", callbackCopy, v25, v26, block, v35, v36, v37, v38];

        v28 = MEMORY[0x277D3F178];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v29 lastPathComponent];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleDisplayCallback:]"];
        [v28 logMessage:v27 fromFile:lastPathComponent fromFunction:v31 fromLineNumber:960];

        v33 = PLLogCommon(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

void *__42__PLAppTimeService_handleDisplayCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleDisplayCallback__classDebugEnabled = result;
  return result;
}

- (void)handlePowerOutCallback:(id)callback
{
  callbackCopy = callback;
  v5 = PLLogCommon(callbackCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService handlePowerOutCallback:];
  }

  v6 = [callbackCopy objectForKey:@"time"];
  [(PLAppTimeService *)self updatePowerOutTimeInDBForBundleId:v6];
}

- (void)updatePowerOutTimeInDBForBundleId:(id)id
{
  idCopy = id;
  [idCopy doubleValue];
  v6 = v5;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v7 = objc_alloc(MEMORY[0x277D3F190]);
  aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
  v9 = [v7 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:monotonicDate];

  [v9 setObject:@"PowerOutAccessories" forKeyedSubscript:@"BundleID"];
  [v9 setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOnTime"];
  [v9 setObject:idCopy forKeyedSubscript:@"BackgroundTime"];

  [v9 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundPluggedInTime"];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:monotonicDate sinceDate:v6];
  [(PLOperator *)self logProportionateAggregateEntry:v9 withStartDate:monotonicDate withEndDate:v10];
}

- (void)handleInCallServiceCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKey:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"status"];
  if ([v6 isEqualToString:@"callStart"])
  {
    [(PLAppTimeService *)self setInCallNow:1];
    entryDate = [v5 entryDate];
    [(PLAppTimeService *)self setLastCallTime:entryDate];

    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 objectForKeyedSubscript:@"bundleID"];
    if (v9)
    {
      v10 = [v5 objectForKeyedSubscript:@"bundleID"];
    }

    else
    {
      v10 = &stru_287103958;
    }

    v17 = [v8 stringWithFormat:@"%@", v10];
    [(PLAppTimeService *)self setLastCallBundleID:v17];

    if (v9)
    {
    }
  }

  else if ([v6 isEqualToString:@"callStop"])
  {
    entryDate2 = [v5 entryDate];
    lastCallTime = [(PLAppTimeService *)self lastCallTime];
    [entryDate2 timeIntervalSinceDate:lastCallTime];
    v14 = v13;

    v15 = [v5 objectForKeyedSubscript:@"bundleID"];
    lastCallTime2 = [(PLAppTimeService *)self lastCallTime];
    [(PLAppTimeService *)self updateInCallServiceTimeInDBForBundleId:v15 withTime:lastCallTime2 withDate:v14];

    [(PLAppTimeService *)self setInCallNow:0];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLAppTimeService_handleInCallServiceCallback___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v18;
    if (handleInCallServiceCallback__defaultOnce != -1)
    {
      dispatch_once(&handleInCallServiceCallback__defaultOnce, block);
    }

    if (handleInCallServiceCallback__classDebugEnabled == 1)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [v5 objectForKeyedSubscript:@"bundleID"];
      v21 = [v5 objectForKeyedSubscript:@"status"];
      v22 = [v5 objectForKeyedSubscript:@"callType"];
      v23 = [v19 stringWithFormat:@"Got InCallService %@ %@ %@ %@", callbackCopy, v20, v21, v22];

      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleInCallServiceCallback:]"];
      [v24 logMessage:v23 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:1001];

      v29 = PLLogCommon(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__48__PLAppTimeService_handleInCallServiceCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleInCallServiceCallback__classDebugEnabled = result;
  return result;
}

- (void)handlePluginCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKey:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"PluginType"];
  v7 = [v6 isEqualToString:@"com.apple.watchkit"];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"PluginId"];

    if (v8)
    {
      watchkitExtensions = self->_watchkitExtensions;
      v10 = [v5 objectForKeyedSubscript:@"PluginId"];
      [(NSMutableSet *)watchkitExtensions addObject:v10];
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __41__PLAppTimeService_handlePluginCallback___block_invoke;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v11;
    if (handlePluginCallback__defaultOnce != -1)
    {
      dispatch_once(&handlePluginCallback__defaultOnce, &block);
    }

    if (handlePluginCallback__classDebugEnabled == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got Plugin %@", callbackCopy, block, v20, v21, v22, v23];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handlePluginCallback:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:1015];

      v18 = PLLogCommon(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__41__PLAppTimeService_handlePluginCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePluginCallback__classDebugEnabled = result;
  return result;
}

- (void)handleAudioCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKey:@"entry"];
  v6 = [v5 objectForKey:@"ApplicationName"];
  v7 = [v5 objectForKey:@"Operation"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [v7 isEqualToString:@"AudioPlayback_Start"];
    if (v10)
    {
      v11 = PLLogCommon(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService handleAudioCallback:];
      }

      audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
      entryDate = [v5 entryDate];
      [audioPlaybackBundleIDs setObject:entryDate forKey:v6];

      entryDate2 = [v5 entryDate];
      [(PLAppTimeService *)self addAudioTimeAtDate:entryDate2];
    }

    else
    {
      v15 = [v8 isEqualToString:@"AudioPlayback_Stop"];
      v16 = v15;
      v17 = PLLogCommon(v15);
      entryDate2 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [PLAppTimeService handleAudioCallback:];
        }

        entryDate3 = [v5 entryDate];
        [(PLAppTimeService *)self addAudioTimeAtDate:entryDate3];

        entryDate2 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
        [entryDate2 removeObjectForKey:v6];
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PLAppTimeService handleAudioCallback:];
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __40__PLAppTimeService_handleAudioCallback___block_invoke;
      v30 = &__block_descriptor_40_e5_v8__0lu32l8;
      v31 = v19;
      if (handleAudioCallback__defaultOnce != -1)
      {
        dispatch_once(&handleAudioCallback__defaultOnce, &block);
      }

      if (handleAudioCallback__classDebugEnabled == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got Audio callback %@", callbackCopy, block, v28, v29, v30, v31];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleAudioCallback:]"];
        [v21 logMessage:v20 fromFile:lastPathComponent fromFunction:v24 fromLineNumber:1045];

        v26 = PLLogCommon(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

void *__40__PLAppTimeService_handleAudioCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleAudioCallback__classDebugEnabled = result;
  return result;
}

- (void)handleNowPlayingCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"State"];
  intValue = [v6 intValue];

  entryDate = [v5 entryDate];
  [(PLAppTimeService *)self addNowPlayingTimeAtDate:entryDate];

  if (intValue == 1)
  {
    v9 = [v5 objectForKeyedSubscript:@"BundleID"];
    [(PLAppTimeService *)self setNowPlayingBundleID:v9];
  }

  else
  {
    [(PLAppTimeService *)self setNowPlayingBundleID:0];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __45__PLAppTimeService_handleNowPlayingCallback___block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v10;
    if (handleNowPlayingCallback__defaultOnce != -1)
    {
      dispatch_once(&handleNowPlayingCallback__defaultOnce, &block);
    }

    if (handleNowPlayingCallback__classDebugEnabled == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got NowPlaying callback %@", callbackCopy, block, v19, v20, v21, v22];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleNowPlayingCallback:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1059];

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__45__PLAppTimeService_handleNowPlayingCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleNowPlayingCallback__classDebugEnabled = result;
  return result;
}

- (void)handleStatusBarCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"Status"];
  intValue = [v6 intValue];

  entryDate = [v5 entryDate];
  [(PLAppTimeService *)self addStatusBarTimeAtDate:entryDate];

  if (intValue == 1)
  {
    v9 = [v5 objectForKeyedSubscript:@"BundleID"];
    [(PLAppTimeService *)self setStatusBarBundleID:v9];
  }

  else
  {
    [(PLAppTimeService *)self setStatusBarBundleID:0];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __44__PLAppTimeService_handleStatusBarCallback___block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v10;
    if (handleStatusBarCallback__defaultOnce != -1)
    {
      dispatch_once(&handleStatusBarCallback__defaultOnce, &block);
    }

    if (handleStatusBarCallback__classDebugEnabled == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got NowPlaying callback %@", callbackCopy, block, v19, v20, v21, v22];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleStatusBarCallback:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1073];

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__44__PLAppTimeService_handleStatusBarCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleStatusBarCallback__classDebugEnabled = result;
  return result;
}

- (void)handleCellularConditionCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"subsId"];

  if (!v6 || ([v5 objectForKeyedSubscript:@"subsId"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "integerValue"), v7, (v8 & 0xFFFFFFFFFFFFFFFDLL) == 0))
  {
    v9 = [v5 objectForKeyedSubscript:@"signalBars"];
    integerValue = [v9 integerValue];

    v11 = [v5 objectForKeyedSubscript:@"airplaneMode"];
    v12 = [v11 isEqualToString:@"on"];

    if (integerValue >= 4)
    {
      integerValue = 4;
    }

    if (integerValue != [(PLAppTimeService *)self lastSignalBar]|| v12 != [(PLAppTimeService *)self lastAirplaneModeStatus])
    {
      entryDate = [v5 entryDate];
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:entryDate];
    }

    [(PLAppTimeService *)self setLastSignalBar:integerValue];
    [(PLAppTimeService *)self setLastAirplaneModeStatus:v12];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __52__PLAppTimeService_handleCellularConditionCallback___block_invoke;
      v25 = &__block_descriptor_40_e5_v8__0lu32l8;
      v26 = v14;
      if (handleCellularConditionCallback__defaultOnce != -1)
      {
        dispatch_once(&handleCellularConditionCallback__defaultOnce, &block);
      }

      if (handleCellularConditionCallback__classDebugEnabled == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got CellularCondition callback %@", callbackCopy, block, v23, v24, v25, v26];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleCellularConditionCallback:]"];
        [v16 logMessage:v15 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:1104];

        v21 = PLLogCommon(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

void *__52__PLAppTimeService_handleCellularConditionCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleCellularConditionCallback__classDebugEnabled = result;
  return result;
}

- (void)handleTelephonyRegistrationCallback:(id)callback
{
  v4 = [callback objectForKeyedSubscript:@"entry"];
  if (v4)
  {
    v13 = v4;
    v5 = [v4 objectForKeyedSubscript:@"status"];

    v4 = v13;
    if (v5)
    {
      v6 = [v13 objectForKeyedSubscript:@"subsId"];

      v4 = v13;
      if (!v6 || ([v13 objectForKeyedSubscript:@"subsId"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "integerValue"), v7, v4 = v13, (v8 & 0xFFFFFFFFFFFFFFFDLL) == 0))
      {
        v9 = [v4 objectForKeyedSubscript:@"status"];
        if ([v9 isEqualToString:@"RegisteredHome"])
        {
          v10 = 1;
        }

        else
        {
          v11 = [v13 objectForKeyedSubscript:@"status"];
          v10 = [v11 isEqualToString:@"RegisteredRoaming"];
        }

        if (v10 != [(PLAppTimeService *)self lastTelephonyRegistrationStatus])
        {
          entryDate = [v13 entryDate];
          [(PLAppTimeService *)self addCellularConditionTimeAtDate:entryDate];
        }

        [(PLAppTimeService *)self setLastTelephonyRegistrationStatus:v10];
        v4 = v13;
      }
    }
  }
}

- (id)remapCloudDocsBundleID:(id)d
{
  dCopy = d;
  if ([dCopy hasPrefix:@"com.apple.clouddocs."])
  {
    v4 = [dCopy substringFromIndex:{objc_msgSend(@"com.apple.clouddocs.", "length")}];
    v5 = [v4 rangeOfString:@"."];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v4 substringFromIndex:v5 + v6];
      if (v7)
      {
        v8 = v7;

        goto LABEL_7;
      }
    }
  }

  v8 = dCopy;
LABEL_7:

  return v8;
}

- (void)handleBackgroundTransferCallback:(id)callback
{
  callbackCopy = callback;
  if (handleBackgroundTransferCallback__onceToken != -1)
  {
    [PLAppTimeService handleBackgroundTransferCallback:];
  }

  v5 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v6 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (handleBackgroundTransferCallback__defaultOnce != -1)
    {
      dispatch_once(&handleBackgroundTransferCallback__defaultOnce, block);
    }

    if (handleBackgroundTransferCallback__classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"entry=%@", v5];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1159];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v15 = [v5 objectForKeyedSubscript:@"originatingClientID"];
  if (v15)
  {
    v16 = @"originatingClientID";
  }

  else
  {
    v16 = @"bundleID";
  }

  v17 = [v5 objectForKeyedSubscript:v16];

  v18 = [(PLAppTimeService *)self remapCloudDocsBundleID:v17];

  if (v18)
  {
    v19 = [v5 objectForKeyedSubscript:@"taskUUID"];
    if (!v19 || ([v5 objectForKeyedSubscript:@"state"], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "intValue"), v20, !v21))
    {
LABEL_47:

      goto LABEL_48;
    }

    if (v21 == 1)
    {
      coalitionsAppsOnScreen = [(PLAppTimeService *)self coalitionsAppsOnScreen];
      v23 = [coalitionsAppsOnScreen containsObject:v18];

      if (v23)
      {
        goto LABEL_40;
      }

      v24 = [handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent objectForKeyedSubscript:v18];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v25 = objc_opt_class();
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_415;
        v76[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v76[4] = v25;
        if (handleBackgroundTransferCallback__defaultOnce_413 != -1)
        {
          dispatch_once(&handleBackgroundTransferCallback__defaultOnce_413, v76);
        }

        if (handleBackgroundTransferCallback__classDebugEnabled_414 == 1)
        {
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Running: backgroundTransferEvent=%@", v24];
          v70 = MEMORY[0x277D3F178];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          lastPathComponent2 = [v27 lastPathComponent];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v70 logMessage:v26 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:1176];

          v30 = v26;
          v32 = PLLogCommon(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v6 = 0x277D3F000;
        }
      }

      if (!v24)
      {
        v24 = objc_alloc_init(PLBackgroundTransferEvent);
        entryDate = [v5 entryDate];
        [(PLBackgroundTransferEvent *)v24 setStartDate:entryDate];

        [(PLBackgroundTransferEvent *)v24 setBundleID:v18];
        v34 = [MEMORY[0x277CBEB58] set];
        [(PLBackgroundTransferEvent *)v24 setTaskUUIDs:v34];

        [handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent setObject:v24 forKeyedSubscript:v18];
      }

      taskUUIDs = [(PLBackgroundTransferEvent *)v24 taskUUIDs];
      [taskUUIDs addObject:v19];
    }

    else
    {
      v24 = [handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent objectForKeyedSubscript:v18];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v36 = objc_opt_class();
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_422;
        v75[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v75[4] = v36;
        if (handleBackgroundTransferCallback__defaultOnce_420 != -1)
        {
          dispatch_once(&handleBackgroundTransferCallback__defaultOnce_420, v75);
        }

        if (handleBackgroundTransferCallback__classDebugEnabled_421 == 1)
        {
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cancelled, Completed, Failed: backgroundTransferEvent=%@", v24];
          v71 = MEMORY[0x277D3F178];
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          lastPathComponent3 = [v38 lastPathComponent];
          v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v71 logMessage:v37 fromFile:lastPathComponent3 fromFunction:v40 fromLineNumber:1193];

          v41 = v37;
          v43 = PLLogCommon(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v6 = 0x277D3F000uLL;
        }
      }

      if (!v24)
      {
        goto LABEL_39;
      }

      taskUUIDs2 = [(PLBackgroundTransferEvent *)v24 taskUUIDs];
      [taskUUIDs2 removeObject:v19];

      taskUUIDs3 = [(PLBackgroundTransferEvent *)v24 taskUUIDs];
      v46 = [taskUUIDs3 count];

      if (v46)
      {
        goto LABEL_39;
      }

      [handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent removeObjectForKey:v18];
      coalitionsAppsOnScreen2 = [(PLAppTimeService *)self coalitionsAppsOnScreen];
      v48 = [coalitionsAppsOnScreen2 containsObject:v18];

      if (v48)
      {
        goto LABEL_39;
      }

      entryDate2 = [v5 entryDate];
      startDate = [(PLBackgroundTransferEvent *)v24 startDate];
      [entryDate2 timeIntervalSinceDate:startDate];
      v60 = v59;

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v61 = objc_opt_class();
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_428;
        v74[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v74[4] = v61;
        if (handleBackgroundTransferCallback__defaultOnce_426 != -1)
        {
          dispatch_once(&handleBackgroundTransferCallback__defaultOnce_426, v74);
        }

        if (handleBackgroundTransferCallback__classDebugEnabled_427 == 1)
        {
          v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration=%f", *&v60];
          v72 = MEMORY[0x277D3F178];
          v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          lastPathComponent4 = [v63 lastPathComponent];
          v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v72 logMessage:v62 fromFile:lastPathComponent4 fromFunction:v65 fromLineNumber:1205];

          v66 = v62;
          v68 = PLLogCommon(v67);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v6 = 0x277D3F000;
        }
      }

      taskUUIDs = [(PLBackgroundTransferEvent *)v24 bundleID];
      startDate2 = [(PLBackgroundTransferEvent *)v24 startDate];
      [(PLAppTimeService *)self updateBackgroundTimeInDBForBundleId:taskUUIDs withTime:startDate2 withDate:fmin(v60, 3600.0)];
    }

LABEL_39:
LABEL_40:
    if ([*(v6 + 384) debugEnabled])
    {
      v49 = objc_opt_class();
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_434;
      v73[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v73[4] = v49;
      if (handleBackgroundTransferCallback__defaultOnce_432 != -1)
      {
        dispatch_once(&handleBackgroundTransferCallback__defaultOnce_432, v73);
      }

      if (handleBackgroundTransferCallback__classDebugEnabled_433 == 1)
      {
        handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleIDToBackgroundTransferEvent=%@", handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent];
        v51 = MEMORY[0x277D3F178];
        v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent5 = [v52 lastPathComponent];
        v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
        [v51 logMessage:handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent fromFile:lastPathComponent5 fromFunction:v54 fromLineNumber:1213];

        v56 = PLLogCommon(v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    goto LABEL_47;
  }

LABEL_48:
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent = v0;

  return MEMORY[0x2821F96F8](v0);
}

void *__53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBackgroundTransferCallback__classDebugEnabled = result;
  return result;
}

void *__53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_415(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBackgroundTransferCallback__classDebugEnabled_414 = result;
  return result;
}

void *__53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_422(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBackgroundTransferCallback__classDebugEnabled_421 = result;
  return result;
}

void *__53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_428(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBackgroundTransferCallback__classDebugEnabled_427 = result;
  return result;
}

void *__53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_434(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBackgroundTransferCallback__classDebugEnabled_433 = result;
  return result;
}

- (void)updateBackgroundTimeForAppStateEntry:(id)entry
{
  entryCopy = entry;
  if (entryCopy)
  {
    v17 = entryCopy;
    v5 = [entryCopy objectForKeyedSubscript:@"Identifier"];
    v6 = [v17 objectForKeyedSubscript:@"State"];
    intValue = [v6 intValue];

    if (!v5)
    {
      goto LABEL_17;
    }

    excludedBGAppsSet = [(PLAppTimeService *)self excludedBGAppsSet];
    if ([excludedBGAppsSet containsObject:v5])
    {
LABEL_16:

      goto LABEL_17;
    }

    backgroundAppToBundleID = [(PLAppTimeService *)self backgroundAppToBundleID];
    v10 = [backgroundAppToBundleID objectForKey:v5];
    if (v10)
    {

      goto LABEL_16;
    }

    piPModeApps = [(PLAppTimeService *)self PiPModeApps];
    v12 = [piPModeApps containsObject:v5];

    if (v12)
    {
LABEL_17:

      entryCopy = v17;
      goto LABEL_18;
    }

    entryDate = [v17 entryDate];
    [(PLAppTimeService *)self updateBackgroundAppsForBundleID:v5 withState:intValue withDate:entryDate];

    if (([(NSMutableSet *)self->_watchkitExtensions containsObject:v5]& 1) != 0)
    {
      if (intValue == 4 || intValue == 8)
      {
        excludedBGAppsSet = [v17 entryDate];
LABEL_12:
        selfCopy2 = self;
        v15 = v5;
        v16 = 0;
LABEL_15:
        [(PLAppTimeService *)selfCopy2 updateAppRunTimeForBundleId:v15 withAppStateUpdateType:v16 withNowDate:excludedBGAppsSet];
        goto LABEL_16;
      }

      excludedBGAppsSet = [v17 entryDate];
    }

    else
    {
      excludedBGAppsSet = [v17 entryDate];
      if (intValue == 4)
      {
        goto LABEL_12;
      }
    }

    selfCopy2 = self;
    v15 = v5;
    v16 = 1;
    goto LABEL_15;
  }

LABEL_18:
}

- (void)updateAppRunTimeForBundleId:(id)id withAppStateUpdateType:(int)type withNowDate:(id)date
{
  idCopy = id;
  dateCopy = date;
  inFlightBundleIDStartTime = [(PLAppTimeService *)self inFlightBundleIDStartTime];
  v10 = [inFlightBundleIDStartTime objectForKey:idCopy];

  if (type)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    [dateCopy timeIntervalSinceDate:v10];
    [(PLAppTimeService *)self updateBackgroundTimeInDBForBundleId:idCopy withTime:v10 withDate:?];
    if (type != 2)
    {
      if (type != 1)
      {
        goto LABEL_9;
      }

      inFlightBundleIDStartTime2 = [(PLAppTimeService *)self inFlightBundleIDStartTime];
      [inFlightBundleIDStartTime2 removeObjectForKey:idCopy];
      goto LABEL_8;
    }
  }

  else if (v10)
  {
    goto LABEL_9;
  }

  inFlightBundleIDStartTime2 = [(PLAppTimeService *)self inFlightBundleIDStartTime];
  [inFlightBundleIDStartTime2 setObject:dateCopy forKeyedSubscript:idCopy];
LABEL_8:

LABEL_9:
}

- (void)updateBackgroundTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date
{
  idCopy = id;
  dateCopy = date;
  isAPOn = [(PLAppTimeService *)self isAPOn];
  if (time > 0.0 && isAPOn)
  {
    v11 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    dateCopy = [v11 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    [dateCopy setObject:idCopy forKeyedSubscript:@"BundleID"];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    [dateCopy setObject:v14 forKeyedSubscript:@"BackgroundTime"];

    [dateCopy setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOnTime"];
    [dateCopy setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:time];
      [dateCopy setObject:v15 forKeyedSubscript:@"BackgroundPluggedInTime"];
    }

    else
    {
      [dateCopy setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundPluggedInTime"];
    }

    v25 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:time];
    [(PLOperator *)self logProportionateAggregateEntry:dateCopy withStartDate:dateCopy withEndDate:v25];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_20;
    }

    v26 = objc_opt_class();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke_446;
    v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v37[4] = v26;
    if (updateBackgroundTimeInDBForBundleId_withTime_withDate__defaultOnce_444 != -1)
    {
      dispatch_once(&updateBackgroundTimeInDBForBundleId_withTime_withDate__defaultOnce_444, v37);
    }

    if (updateBackgroundTimeInDBForBundleId_withTime_withDate__classDebugEnabled_445 != 1)
    {
      goto LABEL_20;
    }

    v27 = MEMORY[0x277CCACA8];
    v28 = [dateCopy objectForKeyedSubscript:@"BundleID"];
    v29 = [dateCopy objectForKeyedSubscript:@"ScreenOnTime"];
    v30 = [dateCopy objectForKeyedSubscript:@"BackgroundTime"];
    v24 = [v27 stringWithFormat:@"Added Background %@ %@ %@", v28, v29, v30];

    v31 = MEMORY[0x277D3F178];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
    lastPathComponent = [v32 lastPathComponent];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateBackgroundTimeInDBForBundleId:withTime:withDate:]"];
    [v31 logMessage:v24 fromFile:lastPathComponent fromFunction:v34 fromLineNumber:1286];

    v36 = PLLogCommon(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

LABEL_19:
LABEL_20:

    goto LABEL_21;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v16;
    if (updateBackgroundTimeInDBForBundleId_withTime_withDate__defaultOnce != -1)
    {
      dispatch_once(&updateBackgroundTimeInDBForBundleId_withTime_withDate__defaultOnce, block);
    }

    if (updateBackgroundTimeInDBForBundleId_withTime_withDate__classDebugEnabled == 1)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:time];
      dateCopy = [v17 stringWithFormat:@"Not adding time for %@, %@ %@", idCopy, v18, dateCopy];

      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateBackgroundTimeInDBForBundleId:withTime:withDate:]"];
      [v19 logMessage:dateCopy fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:1272];

      v24 = PLLogCommon(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_19;
    }
  }

LABEL_21:
}

void *__74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateBackgroundTimeInDBForBundleId_withTime_withDate__classDebugEnabled = result;
  return result;
}

void *__74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke_446(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateBackgroundTimeInDBForBundleId_withTime_withDate__classDebugEnabled_445 = result;
  return result;
}

- (void)periodicUpdateAppRunTimeWithDate:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  inFlightBundleIDStartTime = [(PLAppTimeService *)self inFlightBundleIDStartTime];
  allKeys = [inFlightBundleIDStartTime allKeys];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = allKeys;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PLAppTimeService *)self updateAppRunTimeForBundleId:*(*(&v12 + 1) + 8 * v11++) withAppStateUpdateType:2 withNowDate:dateCopy, v12];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(PLAppTimeService *)self chunkAppsOnScreenAtDate:dateCopy];
  [(PLAppTimeService *)self updateInCallServiceTimeAtDate:dateCopy];
  [(PLAppTimeService *)self addAudioTimeAtDate:dateCopy];
  [(PLAppTimeService *)self addNowPlayingTimeAtDate:dateCopy];
  [(PLAppTimeService *)self addStatusBarTimeAtDate:dateCopy];
}

- (void)chunkAppsOnScreenAtDate:(id)date
{
  v31 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
  if (appsOnScreen && (v6 = appsOnScreen, -[PLAppTimeService appsOnScreen](self, "appsOnScreen"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6, v8))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    appsOnScreen2 = [(PLAppTimeService *)self appsOnScreen];
    v10 = [appsOnScreen2 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v23;
      *&v11 = 138412546;
      v21 = v11;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(appsOnScreen2);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          lastScreenEventAccountingTime = [(PLAppTimeService *)self lastScreenEventAccountingTime];
          [dateCopy timeIntervalSinceDate:lastScreenEventAccountingTime];
          v18 = v17;

          lastScreenEventAccountingTime2 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
          [(PLAppTimeService *)self updateScreenOnTimeInDBForBundleId:v15 withTime:lastScreenEventAccountingTime2 withDate:v18];

          v20 = PLLogCommon([(PLAppTimeService *)self setLastScreenEventAccountingTime:dateCopy]);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = v21;
            v27 = v15;
            v28 = 2048;
            v29 = v18;
            _os_log_debug_impl(&dword_25EE51000, v20, OS_LOG_TYPE_DEBUG, "Screen On: Periodic Update - Updating On Screen time for %@ with %f added seconds", buf, 0x16u);
          }
        }

        v12 = [appsOnScreen2 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v12);
    }
  }

  else
  {
    appsOnScreen2 = PLLogCommon(appsOnScreen);
    if (os_log_type_enabled(appsOnScreen2, OS_LOG_TYPE_FAULT))
    {
      [PLAppTimeService chunkAppsOnScreenAtDate:];
    }
  }
}

- (void)addForegroundTimeAtDate:(id)date withNewLayoutElementsArray:(id)array
{
  v76 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  arrayCopy = array;
  lastScreenOnTime = [(PLAppTimeService *)self lastScreenOnTime];
  lastScreenEventAccountingTime = [(PLAppTimeService *)self lastScreenEventAccountingTime];
  [lastScreenOnTime timeIntervalSinceDate:lastScreenEventAccountingTime];
  v11 = v10;

  if (v11 > 0.0)
  {
    debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
    if (debugEnabled)
    {
      debugEnabled = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__PLAppTimeService_addForegroundTimeAtDate_withNewLayoutElementsArray___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = debugEnabled;
      if (addForegroundTimeAtDate_withNewLayoutElementsArray__defaultOnce != -1)
      {
        dispatch_once(&addForegroundTimeAtDate_withNewLayoutElementsArray__defaultOnce, block);
      }

      if (addForegroundTimeAtDate_withNewLayoutElementsArray__classDebugEnabled == 1)
      {
        v13 = MEMORY[0x277CCACA8];
        lastScreenEventAccountingTime2 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
        lastScreenOnTime2 = [(PLAppTimeService *)self lastScreenOnTime];
        v16 = [v13 stringWithFormat:@"Pulling up last screen on time %@ %@", lastScreenEventAccountingTime2, lastScreenOnTime2];

        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService addForegroundTimeAtDate:withNewLayoutElementsArray:]"];
        [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:1324];

        v22 = PLLogCommon(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v23 = PLLogCommon(debugEnabled);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService addForegroundTimeAtDate:? withNewLayoutElementsArray:?];
    }

    lastScreenOnTime3 = [(PLAppTimeService *)self lastScreenOnTime];
    [(PLAppTimeService *)self setLastScreenEventAccountingTime:lastScreenOnTime3];
  }

  lastScreenEventAccountingTime3 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
  [dateCopy timeIntervalSinceDate:lastScreenEventAccountingTime3];
  v27 = v26;

  v29 = PLLogCommon(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService addForegroundTimeAtDate:? withNewLayoutElementsArray:?];
  }

  v60 = dateCopy;

  self->_musicPlayerForeground = 0;
  if ([arrayCopy count])
  {
    piPModeApps = [(PLAppTimeService *)self PiPModeApps];
    [piPModeApps removeAllObjects];

    appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
    [appsOnScreen removeAllObjects];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v32 = arrayCopy;
    v33 = [v32 countByEnumeratingWithState:&v65 objects:v75 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v66;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v66 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v65 + 1) + 8 * i);
          v38 = [v37 objectForKeyedSubscript:@"bundleID"];

          if (v38)
          {
            v40 = [v37 objectForKeyedSubscript:@"bundleID"];
            v41 = [v37 objectForKeyedSubscript:@"AppRole"];
            [(PLAppTimeService *)self updatePiPModeAppsSet:v40 withAppRole:v41];

            appsOnScreen2 = [(PLAppTimeService *)self appsOnScreen];
            v43 = [v37 objectForKeyedSubscript:@"bundleID"];
            [appsOnScreen2 addObject:v43];
          }

          else
          {
            appsOnScreen2 = PLLogCommon(v39);
            if (os_log_type_enabled(appsOnScreen2, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v71 = v37;
              _os_log_fault_impl(&dword_25EE51000, appsOnScreen2, OS_LOG_TYPE_FAULT, "Failed to retrieve bundle id for app on screen, bundle id is nil for entry %@", buf, 0xCu);
            }
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v65 objects:v75 count:16];
      }

      while (v34);
    }
  }

  lastLayoutEntries = [(PLAppTimeService *)self lastLayoutEntries];
  v45 = [lastLayoutEntries count];

  if (v45)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    lastLayoutEntries2 = [(PLAppTimeService *)self lastLayoutEntries];
    v47 = [lastLayoutEntries2 countByEnumeratingWithState:&v61 objects:v74 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v62;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v62 != v49)
          {
            objc_enumerationMutation(lastLayoutEntries2);
          }

          v51 = *(*(&v61 + 1) + 8 * j);
          v52 = [v51 objectForKeyedSubscript:@"bundleID"];
          lastScreenEventAccountingTime4 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
          [(PLAppTimeService *)self updateScreenOnTimeInDBForBundleId:v52 withTime:lastScreenEventAccountingTime4 withDate:v27];

          v54 = [v51 objectForKeyedSubscript:@"bundleID"];
          [(PLAppTimeService *)self updateCoalitionsAppsOnScreenSet:v54];

          v56 = PLLogCommon(v55);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            v59 = [v51 objectForKeyedSubscript:@"bundleID"];
            *buf = 138412546;
            v71 = v59;
            v72 = 2048;
            v73 = v27;
            _os_log_debug_impl(&dword_25EE51000, v56, OS_LOG_TYPE_DEBUG, "Screen On: Updating On Screen time for %@ with %f added seconds", buf, 0x16u);
          }

          v57 = [v51 objectForKeyedSubscript:@"bundleID"];
          v58 = [v57 isEqualToString:@"com.apple.Music"];

          if (v58)
          {
            self->_musicPlayerForeground = 1;
          }
        }

        v48 = [lastLayoutEntries2 countByEnumeratingWithState:&v61 objects:v74 count:16];
      }

      while (v48);
    }
  }

  [(PLAppTimeService *)self resetLayoutElementsPLEntryArray:arrayCopy withNowDate:v60];
}

void *__71__PLAppTimeService_addForegroundTimeAtDate_withNewLayoutElementsArray___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addForegroundTimeAtDate_withNewLayoutElementsArray__classDebugEnabled = result;
  return result;
}

- (void)updateScreenOnTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date
{
  idCopy = id;
  dateCopy = date;
  excludedFGAppsSet = [(PLAppTimeService *)self excludedFGAppsSet];
  v11 = [excludedFGAppsSet containsObject:idCopy];
  if (!idCopy || (v11 & 1) != 0 || ![(PLAppTimeService *)self displayState])
  {
LABEL_26:

    goto LABEL_27;
  }

  if (time > 0.0)
  {
    debugEnabled = [idCopy isEqualToString:*MEMORY[0x277D0AB98]];
    if (debugEnabled)
    {
      debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
      if (debugEnabled)
      {
        debugEnabled = objc_opt_class();
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke;
        v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v39[4] = debugEnabled;
        if (updateScreenOnTimeInDBForBundleId_withTime_withDate__defaultOnce != -1)
        {
          dispatch_once(&updateScreenOnTimeInDBForBundleId_withTime_withDate__defaultOnce, v39);
        }

        if (updateScreenOnTimeInDBForBundleId_withTime_withDate__classDebugEnabled == 1)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Lock screen diff was %f", *&time];
          v14 = MEMORY[0x277D3F178];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          lastPathComponent = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateScreenOnTimeInDBForBundleId:withTime:withDate:]"];
          [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:1365];

          v19 = PLLogCommon(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      time = fmin(time, 60.0);
    }

    v20 = PLLogCommon(debugEnabled);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateScreenOnTimeInDBForBundleId:withTime:withDate:];
    }

    v21 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    excludedFGAppsSet = [v21 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    [excludedFGAppsSet setObject:idCopy forKeyedSubscript:@"BundleID"];
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    [excludedFGAppsSet setObject:v23 forKeyedSubscript:@"ScreenOnTime"];

    [excludedFGAppsSet setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundTime"];
    [excludedFGAppsSet setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundPluggedInTime"];
    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:time];
      [excludedFGAppsSet setObject:v24 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    }

    else
    {
      [excludedFGAppsSet setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    }

    v25 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:time];
    [(PLOperator *)self logProportionateAggregateEntry:excludedFGAppsSet withStartDate:dateCopy withEndDate:v25];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v26 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke_461;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v26;
      if (updateScreenOnTimeInDBForBundleId_withTime_withDate__defaultOnce_459 != -1)
      {
        dispatch_once(&updateScreenOnTimeInDBForBundleId_withTime_withDate__defaultOnce_459, block);
      }

      if (updateScreenOnTimeInDBForBundleId_withTime_withDate__classDebugEnabled_460 == 1)
      {
        v27 = MEMORY[0x277CCACA8];
        v28 = [excludedFGAppsSet objectForKeyedSubscript:@"BundleID"];
        v29 = [excludedFGAppsSet objectForKeyedSubscript:@"ScreenOnTime"];
        v30 = [excludedFGAppsSet objectForKeyedSubscript:@"BackgroundTime"];
        v31 = [v27 stringWithFormat:@"Added Foreground %@ %@ %@", v28, v29, v30];

        v32 = MEMORY[0x277D3F178];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent2 = [v33 lastPathComponent];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateScreenOnTimeInDBForBundleId:withTime:withDate:]"];
        [v32 logMessage:v31 fromFile:lastPathComponent2 fromFunction:v35 fromLineNumber:1382];

        v37 = PLLogCommon(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    goto LABEL_26;
  }

LABEL_27:
}

void *__72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateScreenOnTimeInDBForBundleId_withTime_withDate__classDebugEnabled = result;
  return result;
}

void *__72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke_461(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateScreenOnTimeInDBForBundleId_withTime_withDate__classDebugEnabled_460 = result;
  return result;
}

- (void)resetLayoutElementsPLEntryArray:(id)array withNowDate:(id)date
{
  dateCopy = date;
  if (array)
  {
    [(PLAppTimeService *)self setLastLayoutEntries:array];
  }

  [(PLAppTimeService *)self setLastScreenEventAccountingTime:dateCopy];
}

- (void)updatePiPModeAppsSet:(id)set withAppRole:(id)role
{
  setCopy = set;
  if ([role isEqualToValue:&unk_287147BD8] && (-[NSMutableSet containsObject:](self->_PiPModeApps, "containsObject:", setCopy) & 1) == 0)
  {
    [(NSMutableSet *)self->_PiPModeApps addObject:setCopy];
  }
}

- (void)updateCoalitionsAppsOnScreenSet:(id)set
{
  setCopy = set;
  v4 = [(NSDictionary *)self->_backgroundAppToBundleID objectForKey:?];

  if (v4 && ([(NSMutableSet *)self->_coalitionsAppsOnScreen containsObject:setCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_coalitionsAppsOnScreen addObject:setCopy];
  }
}

- (double)getCPUTime:(id)time
{
  timeCopy = time;
  v4 = [timeCopy objectForKeyedSubscript:@"cpu_time"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [timeCopy objectForKeyedSubscript:@"cpu_time_billed_to_me"];
  [v7 doubleValue];
  v9 = v6 + v8;
  v10 = [timeCopy objectForKeyedSubscript:@"cpu_time_billed_to_others"];

  [v10 doubleValue];
  v12 = v9 - v11;

  return v12;
}

- (double)convertCPUTimeToBackgroundTime:(double)time withDuration:(double)duration
{
  result = time + time;
  if (result > duration)
  {
    result = duration;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)handleCoalitionCallback:(id)callback withNewCoalitionArray:(id)array
{
  v69 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v52 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"Metrics"];
    array = [MEMORY[0x277CBEB18] array];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v50 = arrayCopy;
    obj = arrayCopy;
    v9 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v9)
    {
      v10 = v9;
      v53 = 0;
      entryDate = 0;
      v55 = *v62;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v62 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v61 + 1) + 8 * i);
          v14 = [PLUtilities getIdentifierFromEntry:v13, v50];
          if (v14)
          {
            v15 = v14;
            v56 = entryDate;
            v16 = dictionary;
            v17 = [v13 objectForKeyedSubscript:@"byteswritten"];
            intValue = [v17 intValue];

            v19 = [v13 objectForKeyedSubscript:@"bytesread"];
            intValue2 = [v19 intValue];

            if (intValue2 > 0 || intValue >= 1)
            {
              v22 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v52 withDate:callbackCopy];
              [v22 setObject:v15 forKeyedSubscript:@"BundleId"];
              v23 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
              [v22 setObject:v23 forKeyedSubscript:@"byteswritten"];

              v24 = [MEMORY[0x277CCABB0] numberWithInt:intValue2];
              [v22 setObject:v24 forKeyedSubscript:@"bytesread"];

              [array addObject:v22];
            }

            v25 = [(NSDictionary *)self->_backgroundAppToBundleID objectForKey:v15];

            if (v25)
            {
              v26 = [(NSDictionary *)self->_backgroundAppToBundleID objectForKeyedSubscript:v15];

              dictionary = v16;
              if (([(NSMutableSet *)self->_coalitionsAppsOnScreen containsObject:v26]& 1) != 0)
              {
                entryDate = v56;
              }

              else
              {
                [(PLAppTimeService *)self getCPUTime:v13];
                v28 = v27;
                v29 = [v16 objectForKey:v26];

                if (v29)
                {
                  v30 = [v16 objectForKeyedSubscript:v26];
                  [v30 doubleValue];
                  v32 = v31;

                  v33 = MEMORY[0x277CCABB0];
                  v34 = v28 + v32;
                }

                else
                {
                  v33 = MEMORY[0x277CCABB0];
                  v34 = v28;
                }

                v35 = [v33 numberWithDouble:v34];
                [v16 setObject:v35 forKeyedSubscript:v26];

                entryDate = [v13 entryDate];

                v36 = [v13 objectForKeyedSubscript:@"timestampEnd"];

                v53 = v36;
              }
            }

            else
            {
              v26 = v15;
              dictionary = v16;
              entryDate = v56;
            }
          }

          else
          {
            v26 = 0;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v10);
    }

    else
    {
      v53 = 0;
      entryDate = 0;
    }

    if ([array count])
    {
      v66 = v52;
      v67 = array;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      [(PLOperator *)self logEntries:v37 withGroupID:v52];
    }

    v38 = 0.0;
    v39 = 0.0;
    if (entryDate && v53)
    {
      [v53 timeIntervalSinceDate:entryDate];
      v39 = v40;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v41 = dictionary;
    v42 = [v41 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v58;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v58 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v57 + 1) + 8 * j);
          v47 = [v41 objectForKeyedSubscript:{v46, v50}];
          [v47 doubleValue];
          [PLAppTimeService convertCPUTimeToBackgroundTime:"convertCPUTimeToBackgroundTime:withDuration:" withDuration:?];
          v49 = v48;

          [(PLAppTimeService *)self updateBackgroundTimeInDBForBundleId:v46 withTime:entryDate withDate:v49];
          if (v49 > v38)
          {
            v38 = v49;
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v43);
    }

    [(NSMutableSet *)self->_coalitionsAppsOnScreen removeAllObjects];
    [(PLAppTimeService *)self updateAggregationsAtSBCWithDate:callbackCopy withLongestCoalitionBGTime:v38 withCoalitionLength:v39];

    arrayCopy = v50;
  }
}

- (void)updateInCallServiceTimeAtDate:(id)date
{
  dateCopy = date;
  if ([(PLAppTimeService *)self inCallNow])
  {
    lastCallTime = [(PLAppTimeService *)self lastCallTime];
    [dateCopy timeIntervalSinceDate:lastCallTime];
    v6 = v5;

    lastCallBundleID = [(PLAppTimeService *)self lastCallBundleID];
    lastCallTime2 = [(PLAppTimeService *)self lastCallTime];
    [(PLAppTimeService *)self updateInCallServiceTimeInDBForBundleId:lastCallBundleID withTime:lastCallTime2 withDate:v6];

    [(PLAppTimeService *)self setLastCallTime:dateCopy];
  }
}

- (void)updateInCallServiceTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date
{
  idCopy = id;
  dateCopy = date;
  inCallNow = [(PLAppTimeService *)self inCallNow];
  if (time > 0.0 && idCopy != 0 && inCallNow)
  {
    v13 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v15 = [v13 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    [v15 setObject:idCopy forKeyedSubscript:@"BundleID"];
    displayState = [(PLAppTimeService *)self displayState];
    v17 = @"InCallBackgroundTime";
    if (displayState == 1)
    {
      v17 = @"InCallScreenOnTime";
      v18 = @"ScreenOnPluggedInTime";
    }

    else
    {
      v18 = @"BackgroundPluggedInTime";
    }

    v19 = v17;
    v20 = v18;
    v21 = [MEMORY[0x277CCABB0] numberWithInt:time];
    [v15 setObject:v21 forKeyedSubscript:v19];

    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInt:time];
      [v15 setObject:v22 forKeyedSubscript:v20];
    }

    else
    {
      [v15 setObject:&unk_287147BC0 forKeyedSubscript:v20];
    }

    v23 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:time];
    [(PLOperator *)self logProportionateAggregateEntry:v15 withStartDate:dateCopy withEndDate:v23];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v24 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__PLAppTimeService_updateInCallServiceTimeInDBForBundleId_withTime_withDate___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v24;
      if (updateInCallServiceTimeInDBForBundleId_withTime_withDate__defaultOnce != -1)
      {
        dispatch_once(&updateInCallServiceTimeInDBForBundleId_withTime_withDate__defaultOnce, block);
      }

      if (updateInCallServiceTimeInDBForBundleId_withTime_withDate__classDebugEnabled == 1)
      {
        v25 = MEMORY[0x277CCACA8];
        displayState2 = [(PLAppTimeService *)self displayState];
        v27 = [v15 objectForKeyedSubscript:@"BundleID"];
        v28 = [v15 objectForKeyedSubscript:v19];
        v29 = [v15 objectForKeyedSubscript:@"BackgroundTime"];
        v30 = [v25 stringWithFormat:@"Added InCallService screen state: %d %@ %@ %@", displayState2, v27, v28, v29];

        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateInCallServiceTimeInDBForBundleId:withTime:withDate:]"];
        [v31 logMessage:v30 fromFile:lastPathComponent fromFunction:v34 fromLineNumber:1537];

        v36 = PLLogCommon(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

void *__77__PLAppTimeService_updateInCallServiceTimeInDBForBundleId_withTime_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateInCallServiceTimeInDBForBundleId_withTime_withDate__classDebugEnabled = result;
  return result;
}

- (void)addAudioTimeAtDate:(id)date
{
  v50 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = MEMORY[0x277CBEB58];
  audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  allKeys = [audioPlaybackBundleIDs allKeys];
  v8 = [v5 setWithArray:allKeys];

  v9 = [v8 count];
  if (v9)
  {
    v10 = PLLogCommon(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService addAudioTimeAtDate:v8];
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
    v12 = [appsOnScreen countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v43;
      do
      {
        v15 = 0;
        do
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(appsOnScreen);
          }

          v16 = *(*(&v42 + 1) + 8 * v15);
          audioPlaybackBundleIDs2 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
          v18 = [audioPlaybackBundleIDs2 objectForKeyedSubscript:v16];

          if (v18)
          {
            audioPlaybackBundleIDs3 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
            [audioPlaybackBundleIDs3 setObject:dateCopy forKeyedSubscript:v16];

            v21 = PLLogCommon(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v48 = v16;
              _os_log_debug_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEBUG, "audio: reset time for %@ due to being in the fg", buf, 0xCu);
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [appsOnScreen countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v13);
    }

    appsOnScreen2 = [(PLAppTimeService *)self appsOnScreen];
    [v8 minusSet:appsOnScreen2];

    v24 = PLLogCommon(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)self addAudioTimeAtDate:v8];
    }

    statusBarBundleID = [(PLAppTimeService *)self statusBarBundleID];
    if (statusBarBundleID)
    {
      v26 = statusBarBundleID;
      statusBarBundleID2 = [(PLAppTimeService *)self statusBarBundleID];
      v28 = [v8 containsObject:statusBarBundleID2];

      if (v28)
      {
        v29 = PLLogCommon([(PLAppTimeService *)self addAudioAndLocationTimeAtDate:dateCopy]);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [PLAppTimeService addAudioTimeAtDate:?];
        }

        audioPlaybackBundleIDs4 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
        statusBarBundleID3 = [(PLAppTimeService *)self statusBarBundleID];
        [audioPlaybackBundleIDs4 setObject:dateCopy forKeyedSubscript:statusBarBundleID3];

        statusBarBundleID4 = [(PLAppTimeService *)self statusBarBundleID];
        [v8 removeObject:statusBarBundleID4];
      }
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v33 = v8;
    v34 = [v33 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v39;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v39 != v36)
          {
            objc_enumerationMutation(v33);
          }

          [(PLAppTimeService *)self addAudioTimeAtDate:dateCopy forBundleID:*(*(&v38 + 1) + 8 * i)];
        }

        v35 = [v33 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v35);
    }
  }
}

- (void)addAudioTimeAtDate:(id)date forBundleID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  v9 = [audioPlaybackBundleIDs objectForKeyedSubscript:dCopy];

  if (!v9)
  {
    v16 = PLLogCommon(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService addAudioTimeAtDate:forBundleID:];
    }

    goto LABEL_18;
  }

  [dateCopy timeIntervalSinceDate:v9];
  v12 = v11;
  audioPlaybackBundleIDs2 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  [audioPlaybackBundleIDs2 setObject:dateCopy forKeyedSubscript:dCopy];

  if (v12 > 0.0)
  {
    v14 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v16 = [v14 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    [v16 setObject:dCopy forKeyedSubscript:@"BundleID"];
    if ([dCopy isEqualToString:@"com.apple.Music"])
    {
      musicPlayerForeground = [(PLAppTimeService *)self musicPlayerForeground];
      if (musicPlayerForeground)
      {
LABEL_18:

        goto LABEL_19;
      }

      v18 = PLLogCommon(musicPlayerForeground);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService addAudioTimeAtDate:forBundleID:];
      }

      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
      [v16 setObject:v19 forKeyedSubscript:@"BackgroundTime"];

      if ([(PLAppTimeService *)self deviceIsPluggedIn])
      {
        v20 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
        [v16 setObject:v20 forKeyedSubscript:@"BackgroundPluggedInTime"];
      }

      else
      {
        [v16 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundPluggedInTime"];
      }
    }

    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    [v16 setObject:v21 forKeyedSubscript:@"BackgroundAudioPlayingTime"];

    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
      [v16 setObject:v22 forKeyedSubscript:@"BackgroundAudioPlayingTimePluggedIn"];
    }

    else
    {
      v23 = [v16 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundAudioPlayingTimePluggedIn"];
    }

    v24 = PLLogCommon(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = 138412802;
      v26 = dCopy;
      v27 = 2048;
      v28 = v12;
      v29 = 1024;
      deviceIsPluggedIn = [(PLAppTimeService *)self deviceIsPluggedIn];
      _os_log_debug_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEBUG, "audio: adding to %@ playback time: %.2f pluggedIn:%d", &v25, 0x1Cu);
    }

    [(PLOperator *)self logProportionateAggregateEntry:v16 withStartDate:v9 withEndDate:dateCopy];
    [(PLAppTimeService *)self addAudioUseFromforBundleID:dCopy AtDate:dateCopy];
    goto LABEL_18;
  }

LABEL_19:
}

- (void)addNowPlayingTimeAtDate:(id)date
{
  dateCopy = date;
  nowPlayingBundleID = [(PLAppTimeService *)self nowPlayingBundleID];
  if (!nowPlayingBundleID || (v5 = nowPlayingBundleID, -[PLAppTimeService appsOnScreen](self, "appsOnScreen"), v6 = objc_claimAutoreleasedReturnValue(), -[PLAppTimeService nowPlayingBundleID](self, "nowPlayingBundleID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 containsObject:v7], v7, v6, v5, v8) || (-[PLAppTimeService lastNowPlayingTime](self, "lastNowPlayingTime"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dateCopy, "timeIntervalSinceDate:", v9), v11 = v10, v9, v11 <= 0.0))
  {
    [(PLAppTimeService *)self setLastNowPlayingTime:dateCopy];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v14 = [v12 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    nowPlayingBundleID2 = [(PLAppTimeService *)self nowPlayingBundleID];
    [v14 setObject:nowPlayingBundleID2 forKeyedSubscript:@"BundleID"];

    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v14 setObject:v16 forKeyedSubscript:@"BackgroundAudioNowPlayingTime"];

    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [v14 setObject:v17 forKeyedSubscript:@"BackgroundAudioNowPlayingPluggedInTime"];
    }

    else
    {
      [v14 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundAudioNowPlayingPluggedInTime"];
    }

    lastNowPlayingTime = [(PLAppTimeService *)self lastNowPlayingTime];
    [(PLOperator *)self logProportionateAggregateEntry:v14 withStartDate:lastNowPlayingTime withEndDate:dateCopy];

    [(PLAppTimeService *)self setLastNowPlayingTime:dateCopy];
  }
}

- (void)addStatusBarTimeAtDate:(id)date
{
  dateCopy = date;
  statusBarBundleID = [(PLAppTimeService *)self statusBarBundleID];
  if (!statusBarBundleID)
  {
    goto LABEL_11;
  }

  v5 = statusBarBundleID;
  appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
  statusBarBundleID2 = [(PLAppTimeService *)self statusBarBundleID];
  v8 = [appsOnScreen containsObject:statusBarBundleID2];

  if (v8)
  {
    goto LABEL_11;
  }

  statusBarBundleID3 = [(PLAppTimeService *)self statusBarBundleID];
  if (statusBarBundleID3)
  {
    v10 = statusBarBundleID3;
    audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
    if (audioPlaybackBundleIDs)
    {
      v12 = audioPlaybackBundleIDs;
      audioPlaybackBundleIDs2 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
      statusBarBundleID4 = [(PLAppTimeService *)self statusBarBundleID];
      v15 = [audioPlaybackBundleIDs2 objectForKey:statusBarBundleID4];

      if (v15)
      {
        [(PLAppTimeService *)self addAudioAndLocationTimeAtDate:dateCopy];
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  lastStatusBarTime = [(PLAppTimeService *)self lastStatusBarTime];
  [dateCopy timeIntervalSinceDate:lastStatusBarTime];
  v18 = v17;

  if (v18 > 0.0)
  {
    v19 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v21 = [v19 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    statusBarBundleID5 = [(PLAppTimeService *)self statusBarBundleID];
    [v21 setObject:statusBarBundleID5 forKeyedSubscript:@"BundleID"];

    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
    [v21 setObject:v23 forKeyedSubscript:@"BackgroundLocationTime"];

    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
      [v21 setObject:v24 forKeyedSubscript:@"BackgroundLocationPluggedInTime"];
    }

    else
    {
      [v21 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundLocationPluggedInTime"];
    }

    lastStatusBarTime2 = [(PLAppTimeService *)self lastStatusBarTime];
    [(PLOperator *)self logProportionateAggregateEntry:v21 withStartDate:lastStatusBarTime2 withEndDate:dateCopy];

    [(PLAppTimeService *)self setLastStatusBarTime:dateCopy];
    goto LABEL_12;
  }

LABEL_11:
  [(PLAppTimeService *)self setLastStatusBarTime:dateCopy];
LABEL_12:
}

- (void)addAudioAndLocationTimeAtDate:(id)date
{
  dateCopy = date;
  statusBarBundleID = [(PLAppTimeService *)self statusBarBundleID];
  if (statusBarBundleID)
  {
    v5 = statusBarBundleID;
    appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
    statusBarBundleID2 = [(PLAppTimeService *)self statusBarBundleID];
    v8 = [appsOnScreen containsObject:statusBarBundleID2];

    if ((v8 & 1) == 0)
    {
      audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
      statusBarBundleID3 = [(PLAppTimeService *)self statusBarBundleID];
      v11 = [audioPlaybackBundleIDs objectForKey:statusBarBundleID3];

      if (v11)
      {
        lastStatusBarTime = [(PLAppTimeService *)self lastStatusBarTime];
        v13 = [lastStatusBarTime laterDate:v11];

        [dateCopy timeIntervalSinceDate:v13];
        if (v14 > 0.0)
        {
          v15 = v14;
          v16 = objc_alloc(MEMORY[0x277D3F190]);
          aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
          v18 = [v16 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

          statusBarBundleID4 = [(PLAppTimeService *)self statusBarBundleID];
          [v18 setObject:statusBarBundleID4 forKeyedSubscript:@"BundleID"];

          v20 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
          [v18 setObject:v20 forKeyedSubscript:@"BackgroundLocationAudioTime"];

          if ([(PLAppTimeService *)self deviceIsPluggedIn])
          {
            v21 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
            [v18 setObject:v21 forKeyedSubscript:@"BackgroundLocationAudioPluggedInTime"];
          }

          else
          {
            [v18 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundLocationAudioPluggedInTime"];
          }

          [(PLOperator *)self logProportionateAggregateEntry:v18 withStartDate:v13 withEndDate:dateCopy];
        }
      }
    }
  }
}

- (void)addCellularConditionTimeAtDate:(id)date
{
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  lastCellularConditionTime = [(PLAppTimeService *)self lastCellularConditionTime];

  if (lastCellularConditionTime && ![(PLAppTimeService *)self lastAirplaneModeStatus])
  {
    if ([(PLAppTimeService *)self lastTelephonyRegistrationStatus])
    {
      lastSignalBar = [(PLAppTimeService *)self lastSignalBar];
      if (lastSignalBar == -1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      lastSignalBar = 0;
    }

    v7 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"CellularCondition"];
    lastCellularConditionTime2 = [(PLAppTimeService *)self lastCellularConditionTime];
    [dateCopy timeIntervalSinceDate:lastCellularConditionTime2];
    v10 = v9;

    if (v10 <= 0.0)
    {

      goto LABEL_20;
    }

    bundleIDsInBackground = [(PLAppTimeService *)self bundleIDsInBackground];
    v12 = [bundleIDsInBackground mutableCopy];

    if ([(PLAppTimeService *)self displayState]== 1 || [(PLAppTimeService *)self displayState]== 2)
    {
      appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
      [v12 unionSet:appsOnScreen];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withDate:dateCopy];
          [v19 setObject:v18 forKeyedSubscript:@"BundleID"];
          v20 = [MEMORY[0x277CCABB0] numberWithInteger:lastSignalBar];
          [v19 setObject:v20 forKeyedSubscript:@"SignalBars"];

          v21 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
          [v19 setObject:v21 forKeyedSubscript:@"CellUsageTime"];

          lastCellularConditionTime3 = [(PLAppTimeService *)self lastCellularConditionTime];
          [(PLOperator *)self logProportionateAggregateEntry:v19 withStartDate:lastCellularConditionTime3 withEndDate:dateCopy];
        }

        v15 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }
  }

  [(PLAppTimeService *)self setLastCellularConditionTime:dateCopy];
LABEL_20:
}

- (void)addNotificationCountFromUserInfo:(id)info AtDate:(id)date
{
  v5 = [info objectForKey:{@"entry", date}];
  v6 = [v5 objectForKeyedSubscript:@"NotificationBundleID"];
  v7 = PLLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService addNotificationCountFromUserInfo:AtDate:];
  }

  entryDate = [v5 entryDate];
  [(PLAppTimeService *)self logAppUsageEventForKey:@"NotificationCount" withBundleID:v6 withDate:entryDate];
}

- (void)addWidgetUseFromUserInfo:(id)info AtDate:(id)date
{
  v5 = [info objectForKey:{@"entry", date}];
  v6 = [v5 objectForKeyedSubscript:@"bundleID"];
  v7 = [(PLAppTimeService *)self getWidgetParentAppForBundleID:v6];

  if (v7)
  {
    v9 = PLLogCommon(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService addWidgetUseFromUserInfo:AtDate:];
    }

    entryDate = [v5 entryDate];
    [(PLAppTimeService *)self logAppUsageEventForKey:@"HasWidgetActive" withBundleID:v7 withDate:entryDate];
  }
}

- (void)addCarPlayUseFromLayoutEntry:(id)entry AtDate:(id)date
{
  v25 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [entryCopy countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 138412290;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(entryCopy);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:{@"Display", v17}];
        intValue = [v12 intValue];

        if (intValue == 3)
        {
          v14 = [v11 objectForKeyedSubscript:@"bundleID"];
          v15 = PLLogCommon(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = v17;
            v23 = v11;
            _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "Added app usage event: Carplay %@", buf, 0xCu);
          }

          entryDate = [v11 entryDate];
          [(PLAppTimeService *)self logAppUsageEventForKey:@"HasCarPlayUsage" withBundleID:v14 withDate:entryDate];
        }
      }

      v8 = [entryCopy countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }
}

- (id)getWidgetParentAppForBundleID:(id)d
{
  v21[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  widgetParentBundleIDs = [(PLAppTimeService *)self widgetParentBundleIDs];
  v6 = [widgetParentBundleIDs objectForKeyedSubscript:dCopy];

  if (!v6)
  {
    widgetParentBundleIDs2 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginId" withValue:dCopy withComparisonOperation:0];
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    v12 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
    v21[0] = widgetParentBundleIDs2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v14 = [v12 entriesForKey:@"PLApplicationAgent_EventNone_AllPlugins" withComparisons:v13];

    v15 = [v14 count];
    if (v15)
    {
      firstObject = [v14 firstObject];
      v10 = [firstObject objectForKeyedSubscript:@"PluginParentApp"];
      v17 = PLLogCommon(v10);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = firstObject;
        _os_log_impl(&dword_25EE51000, v17, OS_LOG_TYPE_DEFAULT, "Added app usage event queryResult= %@", &v19, 0xCu);
      }

      if (v10)
      {
        [(NSMutableDictionary *)self->_widgetParentBundleIDs setObject:v10 forKeyedSubscript:dCopy];
LABEL_14:

        goto LABEL_15;
      }
    }

    firstObject = PLLogCommon(v15);
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService getWidgetParentAppForBundleID:];
    }

    v10 = 0;
    goto LABEL_14;
  }

  v8 = PLLogCommon(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(PLAppTimeService *)self getWidgetParentAppForBundleID:dCopy];
  }

  widgetParentBundleIDs2 = [(PLAppTimeService *)self widgetParentBundleIDs];
  v10 = [widgetParentBundleIDs2 objectForKeyedSubscript:dCopy];
LABEL_15:

  return v10;
}

- (void)addAudioUseFromforBundleID:(id)d AtDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  v8 = PLLogCommon(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService addAudioUseFromforBundleID:AtDate:];
  }

  [(PLAppTimeService *)self logAppUsageEventForKey:@"HasAudioUsage" withBundleID:dCopy withDate:dateCopy];
}

- (void)logAppUsageEventForKey:(id)key withBundleID:(id)d withDate:(id)date
{
  keyCopy = key;
  dCopy = d;
  dateCopy = date;
  v11 = dateCopy;
  if (dCopy)
  {
    v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:self->_aggregatedEntryKeyForAppUsageEvents withDate:dateCopy];
    [v12 setObject:dCopy forKeyedSubscript:@"BundleID"];
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:keyCopy];
    v13 = PLLogCommon([(PLOperator *)self logEntry:v12]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService logAppUsageEventForKey:withBundleID:withDate:];
    }
  }

  else
  {
    v12 = PLLogCommon(dateCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService logAppUsageEventForKey:withBundleID:withDate:];
    }
  }
}

- (id)backgroundAppToBundleIDmapping
{
  backgroundAppToBundleID = self->_backgroundAppToBundleID;
  if (!backgroundAppToBundleID)
  {
    self->_backgroundAppToBundleID = &unk_28714AFE8;

    backgroundAppToBundleID = self->_backgroundAppToBundleID;
  }

  return backgroundAppToBundleID;
}

- (void)updateAggregationsAtSBCWithDate:(id)date withLongestCoalitionBGTime:(double)time withCoalitionLength:(double)length
{
  dateCopy = date;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v8 = PLLogCommon([(PLAppTimeService *)self chunkScreenOnAggregationAtDate:dateCopy]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:? withLongestCoalitionBGTime:? withCoalitionLength:?];
    }

    lastAPOnTimeSBC = [(PLAppTimeService *)self lastAPOnTimeSBC];

    if (lastAPOnTimeSBC)
    {
      lastAPOnTimeSBC2 = [(PLAppTimeService *)self lastAPOnTimeSBC];
      [dateCopy timeIntervalSinceDate:lastAPOnTimeSBC2];
      v13 = v12;

      if (v13 > 0.0)
      {
        [(PLAppTimeService *)self setLastAPOnTimeSBC:dateCopy];
        [(PLAppTimeService *)self totalAPOnTimeSBC];
        v10 = [(PLAppTimeService *)self setTotalAPOnTimeSBC:v13 + v14];
      }
    }

    v15 = PLLogCommon(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:? withLongestCoalitionBGTime:? withCoalitionLength:?];
    }

    firstBGAppTimeSBC = [(PLAppTimeService *)self firstBGAppTimeSBC];

    if (firstBGAppTimeSBC)
    {
      v17 = [dateCopy timeIntervalSinceDate:self->_firstBGAppTimeSBC];
      if (v18 > 0.0)
      {
        v19 = v18;
        [(PLAppTimeService *)self setFirstBGAppTimeSBC:dateCopy];
        [(PLAppTimeService *)self totalBGTimeSBC];
        v17 = [(PLAppTimeService *)self setTotalBGTimeSBC:v19 + v20];
      }
    }

    v21 = PLLogCommon(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:? withLongestCoalitionBGTime:? withCoalitionLength:?];
    }

    totalFGTimeSBC = self->_totalFGTimeSBC;
    v24 = time - totalFGTimeSBC;
    if (time - totalFGTimeSBC < self->_totalBGTimeSBC - totalFGTimeSBC)
    {
      v24 = self->_totalBGTimeSBC - totalFGTimeSBC;
    }

    v25 = self->_totalAPOnTimeSBC - totalFGTimeSBC;
    if (v24 < v25)
    {
      v25 = v24;
    }

    if (v25 >= 0.0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0.0;
    }

    v27 = PLLogCommon(v22);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:];
    }

    v29 = PLLogCommon(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:];
    }

    v31 = PLLogCommon(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:];
    }

    v33 = PLLogCommon(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)&self->_totalFGTimeSBC updateAggregationsAtSBCWithDate:v33 withLongestCoalitionBGTime:v34 withCoalitionLength:v35, v36, v37, v38, v39];
    }

    v41 = PLLogCommon(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)&self->_totalBGTimeSBC updateAggregationsAtSBCWithDate:v41 withLongestCoalitionBGTime:v42 withCoalitionLength:v43, v44, v45, v46, v47];
    }

    v49 = PLLogCommon(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)&self->_totalAPOnTimeSBC updateAggregationsAtSBCWithDate:v49 withLongestCoalitionBGTime:v50 withCoalitionLength:v51, v52, v53, v54, v55];
    }

    v57 = PLLogCommon(v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:];
    }

    v58 = PLLogCommon([(PLAppTimeService *)self updateScreenOffTimeAtDate:dateCopy withDiff:v26]);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:];
    }

    self->_totalAPOnTimeSBC = 0.0;
    self->_totalFGTimeSBC = 0.0;
    self->_totalBGTimeSBC = 0.0;
  }
}

- (void)chunkScreenOnAggregationAtDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if ((isHomePod & 1) == 0)
  {
    v6 = PLLogCommon(isHomePod);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService chunkScreenOnAggregationAtDate:];
    }

    lastScreenOnTimeSBC = [(PLAppTimeService *)self lastScreenOnTimeSBC];

    if (lastScreenOnTimeSBC)
    {
      lastScreenOnTimeSBC2 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
      [dateCopy timeIntervalSinceDate:lastScreenOnTimeSBC2];
      v10 = v9;

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        lastScreenOnTimeSBC3 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
        v15 = 138412802;
        v16 = lastScreenOnTimeSBC3;
        v17 = 2112;
        v18 = dateCopy;
        v19 = 2048;
        v20 = v10;
        _os_log_impl(&dword_25EE51000, v12, OS_LOG_TYPE_INFO, "[%@, %@] : %f", &v15, 0x20u);
      }

      if (v10 >= 0.0)
      {
        [(PLAppTimeService *)self setLastScreenOnTimeSBC:dateCopy];
        [(PLAppTimeService *)self totalFGTimeSBC];
        [(PLAppTimeService *)self setTotalFGTimeSBC:v10 + v14];
        [(PLAppTimeService *)self updateScreenOnTimeAtDate:dateCopy withDiff:v10];
      }
    }
  }
}

- (void)updateAggregationsAtDate:(id)date withNewScreenState:(int)state
{
  v27 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if (dateCopy && (isHomePod & 1) == 0)
  {
    displayState = [(PLAppTimeService *)self displayState];
    if (displayState == state)
    {
      v9 = PLLogCommon(displayState);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        goto LABEL_11;
      }

      LOWORD(v21) = 0;
      v10 = "No screen state change!";
LABEL_6:
      _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_INFO, v10, &v21, 2u);
      goto LABEL_10;
    }

    if (state == 1)
    {
      v9 = PLLogCommon([(PLAppTimeService *)self setLastScreenOnTimeSBC:dateCopy]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:withNewScreenState:];
      }

      goto LABEL_10;
    }

    lastScreenOnTimeSBC = [(PLAppTimeService *)self lastScreenOnTimeSBC];

    if (!lastScreenOnTimeSBC)
    {
      v9 = PLLogCommon(v12);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      LOWORD(v21) = 0;
      v10 = "Screen turning off, but no open screen interval";
      goto LABEL_6;
    }

    lastScreenOnTimeSBC2 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
    [dateCopy timeIntervalSinceDate:lastScreenOnTimeSBC2];
    v15 = v14;

    v17 = PLLogCommon(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      lastScreenOnTimeSBC3 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
      v21 = 138412802;
      v22 = lastScreenOnTimeSBC3;
      v23 = 2112;
      v24 = dateCopy;
      v25 = 2048;
      v26 = v15;
      _os_log_debug_impl(&dword_25EE51000, v17, OS_LOG_TYPE_DEBUG, "Stopping FG interval [%@, %@] : %f", &v21, 0x20u);
    }

    [(PLAppTimeService *)self setLastScreenOnTimeSBC:0];
    if (v15 >= 0.0)
    {
      [(PLAppTimeService *)self totalFGTimeSBC];
      v19 = PLLogCommon([(PLAppTimeService *)self setTotalFGTimeSBC:v15 + v18]);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:? withNewScreenState:?];
      }

      [(PLAppTimeService *)self updateScreenOnTimeAtDate:dateCopy withDiff:v15];
    }
  }

LABEL_11:
}

- (void)updateAggregationsAtDate:(id)date withNewAPState:(BOOL)state
{
  stateCopy = state;
  v42 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if (!dateCopy || (isHomePod & 1) != 0)
  {
    goto LABEL_32;
  }

  if (self->_isAPOn == stateCopy)
  {
    v8 = PLLogCommon(isHomePod);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewAPState:];
    }

LABEL_31:

    goto LABEL_32;
  }

  if (stateCopy)
  {
    v8 = PLLogCommon([(PLAppTimeService *)self setLastAPOnTimeSBC:dateCopy]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewAPState:];
    }

    goto LABEL_31;
  }

  lastScreenOnTimeSBC = [(PLAppTimeService *)self lastScreenOnTimeSBC];

  if (lastScreenOnTimeSBC)
  {
    v11 = PLLogCommon(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewAPState:];
    }

    lastScreenOnTimeSBC2 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
    [dateCopy timeIntervalSinceDate:lastScreenOnTimeSBC2];
    v14 = v13;

    [(PLAppTimeService *)self setLastScreenOnTimeSBC:0];
    if (v14 >= 0.0)
    {
      [(PLAppTimeService *)self totalFGTimeSBC];
      v16 = PLLogCommon([(PLAppTimeService *)self setTotalFGTimeSBC:v14 + v15]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:? withNewScreenState:?];
      }

      [(PLAppTimeService *)self updateScreenOnTimeAtDate:dateCopy withDiff:v14];
    }
  }

  lastAPOnTimeSBC = [(PLAppTimeService *)self lastAPOnTimeSBC];

  if (!lastAPOnTimeSBC)
  {
    v24 = PLLogCommon(v18);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewAPState:];
    }

    goto LABEL_24;
  }

  v19 = [dateCopy timeIntervalSinceDate:self->_lastAPOnTimeSBC];
  v21 = v20;
  v22 = PLLogCommon(v19);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    lastAPOnTimeSBC2 = [(PLAppTimeService *)self lastAPOnTimeSBC];
    v36 = 138412802;
    v37 = lastAPOnTimeSBC2;
    v38 = 2112;
    v39 = dateCopy;
    v40 = 2048;
    v41 = v21;
    _os_log_debug_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEBUG, "Stopping AP interval [%@, %@] : %f", &v36, 0x20u);
  }

  [(PLAppTimeService *)self setLastAPOnTimeSBC:0];
  if (v21 > 0.0)
  {
    [(PLAppTimeService *)self totalAPOnTimeSBC];
    v24 = PLLogCommon([(PLAppTimeService *)self setTotalAPOnTimeSBC:v21 + v23]);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtDate:? withNewAPState:?];
    }

LABEL_24:
  }

  firstBGAppTimeSBC = [(PLAppTimeService *)self firstBGAppTimeSBC];

  if (firstBGAppTimeSBC)
  {
    firstBGAppTimeSBC2 = [(PLAppTimeService *)self firstBGAppTimeSBC];
    [dateCopy timeIntervalSinceDate:firstBGAppTimeSBC2];
    v28 = v27;

    v30 = PLLogCommon(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      firstBGAppTimeSBC3 = [(PLAppTimeService *)self firstBGAppTimeSBC];
      v36 = 138412802;
      v37 = firstBGAppTimeSBC3;
      v38 = 2112;
      v39 = dateCopy;
      v40 = 2048;
      v41 = v28;
      _os_log_debug_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEBUG, "Stopping BG interval [%@, %@] : %f", &v36, 0x20u);
    }

    [(PLAppTimeService *)self setFirstBGAppTimeSBC:0];
    if (v28 > 0.0)
    {
      [(PLAppTimeService *)self totalBGTimeSBC];
      [(PLAppTimeService *)self setTotalBGTimeSBC:v28 + v31];
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:dateCopy];
      bundleIDsInBackground = [(PLAppTimeService *)self bundleIDsInBackground];
      [bundleIDsInBackground removeAllObjects];

      v8 = PLLogCommon(v33);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:? withNewAPState:?];
      }

      goto LABEL_31;
    }
  }

LABEL_32:
}

- (void)updateAggregationsAtDate:(id)date withNewPluggedInState:(BOOL)state
{
  stateCopy = state;
  dateCopy = date;
  v7 = dateCopy;
  if (self->_deviceIsPluggedIn != stateCopy)
  {
    if (stateCopy)
    {
      v16 = PLLogCommon(dateCopy);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
      }

      goto LABEL_13;
    }

    lastPluggedInTime = [(PLAppTimeService *)self lastPluggedInTime];

    if (lastPluggedInTime)
    {
      lastPluggedInTime2 = [(PLAppTimeService *)self lastPluggedInTime];
      [v7 timeIntervalSinceDate:lastPluggedInTime2];
      v24 = v23;

      v25 = PLLogCommon([(PLAppTimeService *)self updatePluggedInTimeAtDate:v7 withDiff:v24]);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
      }

      selfCopy2 = self;
      v18 = 0;
      goto LABEL_20;
    }

    v19 = PLLogCommon(v21);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
    }

LABEL_23:

    goto LABEL_24;
  }

  v8 = PLLogCommon(dateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
  }

  if (!stateCopy)
  {
    v19 = PLLogCommon(v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
    }

    goto LABEL_23;
  }

  lastPluggedInTime3 = [(PLAppTimeService *)self lastPluggedInTime];

  if (lastPluggedInTime3)
  {
    lastPluggedInTime4 = [(PLAppTimeService *)self lastPluggedInTime];
    [v7 timeIntervalSinceDate:lastPluggedInTime4];
    v13 = v12;

    v15 = PLLogCommon(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
    }

    [(PLAppTimeService *)self updatePluggedInTimeAtDate:v7 withDiff:v13];
  }

LABEL_13:
  selfCopy2 = self;
  v18 = v7;
LABEL_20:
  [(PLAppTimeService *)selfCopy2 setLastPluggedInTime:v18];
LABEL_24:
}

- (void)updatePluggedInTimeAtDate:(id)date withDiff:(double)diff
{
  if (date && diff >= 0.0)
  {
    v6 = MEMORY[0x277D3F190];
    dateCopy = date;
    v8 = [v6 alloc];
    entryKeyUsageTime = [(PLAppTimeService *)self entryKeyUsageTime];
    v12 = [v8 initWithEntryKey:entryKeyUsageTime withDate:dateCopy];

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:diff];
    [v12 setObject:v10 forKeyedSubscript:@"PluggedIn"];

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-diff];
    [(PLOperator *)self logProportionateAggregateEntry:v12 withStartDate:v11 withEndDate:dateCopy];
  }
}

- (void)updateScreenOffTimeAtDate:(id)date withDiff:(double)diff
{
  dateCopy = date;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if ((isHomePod & 1) == 0 && dateCopy && diff >= 0.0)
  {
    v7 = objc_alloc(MEMORY[0x277D3F190]);
    entryKeyUsageTime = [(PLAppTimeService *)self entryKeyUsageTime];
    v9 = [v7 initWithEntryKey:entryKeyUsageTime withDate:dateCopy];

    [v9 setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOn"];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:diff];
    [v9 setObject:v10 forKeyedSubscript:@"ScreenOff"];

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-diff];
    [(PLOperator *)self logProportionateAggregateEntry:v9 withStartDate:v11 withEndDate:dateCopy];
  }

  MEMORY[0x2821F96F8](isHomePod);
}

- (void)updateScreenOnTimeAtDate:(id)date withDiff:(double)diff
{
  dateCopy = date;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if ((isHomePod & 1) == 0 && dateCopy && diff >= 0.0)
  {
    v7 = objc_alloc(MEMORY[0x277D3F190]);
    entryKeyUsageTime = [(PLAppTimeService *)self entryKeyUsageTime];
    v9 = [v7 initWithEntryKey:entryKeyUsageTime withDate:dateCopy];

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:diff];
    [v9 setObject:v10 forKeyedSubscript:@"ScreenOn"];

    [v9 setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOff"];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-diff];
    [(PLOperator *)self logProportionateAggregateEntry:v9 withStartDate:v11 withEndDate:dateCopy];
  }

  MEMORY[0x2821F96F8](isHomePod);
}

- (void)updateBackgroundAppsForBundleID:(id)d withState:(unsigned int)state withDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && dCopy && dateCopy)
  {
    if (state == 4)
    {
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:dateCopy];
      bundleIDsInBackground = [(PLAppTimeService *)self bundleIDsInBackground];
      v11 = [bundleIDsInBackground count];

      if (!v11)
      {
        excludedBundleIDsInBackground = [(PLAppTimeService *)self excludedBundleIDsInBackground];
        v13 = [excludedBundleIDsInBackground containsObject:dCopy];

        if (v13)
        {
          v15 = PLLogCommon(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
          }
        }

        else
        {
          v15 = PLLogCommon([(PLAppTimeService *)self setFirstBGAppTimeSBC:dateCopy]);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
          }
        }
      }

      bundleIDsInBackground2 = [(PLAppTimeService *)self bundleIDsInBackground];
      [bundleIDsInBackground2 addObject:dCopy];
LABEL_30:

      goto LABEL_31;
    }

    bundleIDsInBackground3 = [(PLAppTimeService *)self bundleIDsInBackground];
    v17 = [bundleIDsInBackground3 containsObject:dCopy];

    if (v17)
    {
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:dateCopy];
    }

    bundleIDsInBackground4 = [(PLAppTimeService *)self bundleIDsInBackground];
    v19 = [bundleIDsInBackground4 containsObject:dCopy];

    if (v19)
    {
      bundleIDsInBackground5 = [(PLAppTimeService *)self bundleIDsInBackground];
      [bundleIDsInBackground5 removeObject:dCopy];

      bundleIDsInBackground6 = [(PLAppTimeService *)self bundleIDsInBackground];
      v22 = [bundleIDsInBackground6 count];

      if (v22 == 1)
      {
        bundleIDsInBackground7 = [(PLAppTimeService *)self bundleIDsInBackground];
        anyObject = [bundleIDsInBackground7 anyObject];

        if (anyObject)
        {
          excludedBundleIDsInBackground2 = [(PLAppTimeService *)self excludedBundleIDsInBackground];
          v26 = [excludedBundleIDsInBackground2 containsObject:anyObject];

          if (v26)
          {
            v28 = PLLogCommon(v27);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
            }

            bundleIDsInBackground8 = [(PLAppTimeService *)self bundleIDsInBackground];
            [bundleIDsInBackground8 removeObject:anyObject];
          }
        }
      }

      bundleIDsInBackground9 = [(PLAppTimeService *)self bundleIDsInBackground];
      v31 = [bundleIDsInBackground9 count];

      if (!v31)
      {
        v33 = PLLogCommon(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
        }

        firstBGAppTimeSBC = [(PLAppTimeService *)self firstBGAppTimeSBC];

        if (firstBGAppTimeSBC)
        {
          firstBGAppTimeSBC2 = [(PLAppTimeService *)self firstBGAppTimeSBC];
          [dateCopy timeIntervalSinceDate:firstBGAppTimeSBC2];
          v38 = v37;

          v39 = [(PLAppTimeService *)self setFirstBGAppTimeSBC:0];
          if (v38 <= 0.0)
          {
            bundleIDsInBackground2 = PLLogCommon(v39);
            if (os_log_type_enabled(bundleIDsInBackground2, OS_LOG_TYPE_ERROR))
            {
              [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
            }
          }

          else
          {
            [(PLAppTimeService *)self totalBGTimeSBC];
            bundleIDsInBackground2 = PLLogCommon([(PLAppTimeService *)self setTotalBGTimeSBC:v38 + v40]);
            if (os_log_type_enabled(bundleIDsInBackground2, OS_LOG_TYPE_DEBUG))
            {
              [PLAppTimeService updateBackgroundAppsForBundleID:? withState:? withDate:?];
            }
          }
        }

        else
        {
          bundleIDsInBackground2 = PLLogCommon(v35);
          if (os_log_type_enabled(bundleIDsInBackground2, OS_LOG_TYPE_ERROR))
          {
            [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
          }
        }

        goto LABEL_30;
      }
    }
  }

LABEL_31:
}

- (id)generateExcludedBGBundleIDs
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.Bridge", @"com.apple.CloudKit.ShareBear", @"com.apple.PassbookUIService", 0}];
  }

  return v2;
}

- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date
{
  v4 = *MEMORY[0x277D3F5B8];
  keyCopy = key;
  v6 = [(PLOperator *)PLAppTimeService entryKeyForType:v4 andName:@"AppRunTime"];
  LODWORD(v4) = [keyCopy isEqualToString:v6];

  if (v4)
  {
    v7 = MEMORY[0x277CCACA8];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v9 = [monotonicDate dateByAddingTimeInterval:-1209600.0];
    [v9 timeIntervalSince1970];
    v11 = v10;
    monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
    v13 = [monotonicDate2 dateByAddingTimeInterval:-1209600.0];
    [v13 timeIntervalSince1970];
    v15 = v14;
    monotonicDate3 = [MEMORY[0x277CBEAA8] monotonicDate];
    v17 = [monotonicDate3 dateByAddingTimeInterval:-2592000.0];
    [v17 timeIntervalSince1970];
    v19 = [v7 stringWithFormat:@"(timeInterval = %f AND timestamp < %f) OR (timeInterval = %f AND timestamp < %f AND (BundleID NOT IN (SELECT N.Name FROM PLAccountingOperator_Aggregate_RootNodeEnergy RNE JOIN PLAccountingOperator_EventNone_Nodes N WHERE N.ID = RNE.NodeID AND RNE.timeInterval = 86400.0 AND RNE.Energy > %f GROUP BY RNE.NodeID))) OR (timeInterval = %f AND timestamp < %f)", 0x40AC200000000000, v11, 0x40F5180000000000, v15, 0x40F86A0000000000, 0x40F5180000000000, v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)handleSleepCallBack:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 audioPlaybackBundleIDs];
  [v1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleDisplayCallback:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleDisplayCallback:(void *)a1 .cold.3(void *a1)
{
  [a1 displayState];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

- (void)handleDisplayCallback:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 entryDate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleAudioCallback:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_25EE51000, v1, OS_LOG_TYPE_ERROR, "audio: unknown operation for %@: %@", v2, 0x16u);
}

- (void)addForegroundTimeAtDate:(void *)a1 withNewLayoutElementsArray:.cold.2(void *a1)
{
  v1 = [a1 lastScreenOnTime];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addForegroundTimeAtDate:(void *)a1 withNewLayoutElementsArray:.cold.3(void *a1)
{
  v1 = [a1 lastScreenEventAccountingTime];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateScreenOnTimeInDBForBundleId:withTime:withDate:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)addAudioTimeAtDate:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)addAudioTimeAtDate:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = [a1 appsOnScreen];
  [v3 count];
  [a2 count];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)addAudioTimeAtDate:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 statusBarBundleID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addAudioTimeAtDate:forBundleID:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addNotificationCountFromUserInfo:AtDate:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getWidgetParentAppForBundleID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 312) objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)getWidgetParentAppForBundleID:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addAudioUseFromforBundleID:AtDate:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logAppUsageEventForKey:withBundleID:withDate:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtSBCWithDate:(void *)a1 withLongestCoalitionBGTime:withCoalitionLength:.cold.1(void *a1)
{
  [a1 totalFGTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)updateAggregationsAtSBCWithDate:(void *)a1 withLongestCoalitionBGTime:withCoalitionLength:.cold.2(void *a1)
{
  [a1 totalAPOnTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)updateAggregationsAtSBCWithDate:(void *)a1 withLongestCoalitionBGTime:withCoalitionLength:.cold.3(void *a1)
{
  [a1 totalBGTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtSBCWithDate:(uint64_t)a3 withLongestCoalitionBGTime:(uint64_t)a4 withCoalitionLength:(uint64_t)a5 .cold.7(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "   FG since last SBC:              %f", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updateAggregationsAtSBCWithDate:(uint64_t)a3 withLongestCoalitionBGTime:(uint64_t)a4 withCoalitionLength:(uint64_t)a5 .cold.8(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "   BG since last SBC:              %f", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updateAggregationsAtSBCWithDate:(uint64_t)a3 withLongestCoalitionBGTime:(uint64_t)a4 withCoalitionLength:(uint64_t)a5 .cold.9(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "   AP On since last SBC:           %f", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:.cold.11()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)chunkScreenOnAggregationAtDate:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:(void *)a1 withNewScreenState:.cold.1(void *a1)
{
  [a1 totalFGTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)updateAggregationsAtDate:withNewAPState:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:(void *)a1 withNewAPState:.cold.3(void *a1)
{
  [a1 totalAPOnTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)updateAggregationsAtDate:withNewAPState:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:(void *)a1 withNewAPState:.cold.5(void *a1)
{
  [a1 totalBGTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)updateAggregationsAtDate:withNewAPState:.cold.7()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:withNewPluggedInState:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:withNewPluggedInState:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:withNewPluggedInState:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:withNewPluggedInState:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateBackgroundAppsForBundleID:withState:withDate:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateBackgroundAppsForBundleID:(void *)a1 withState:withDate:.cold.4(void *a1)
{
  [a1 totalBGTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)updateBackgroundAppsForBundleID:withState:withDate:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end