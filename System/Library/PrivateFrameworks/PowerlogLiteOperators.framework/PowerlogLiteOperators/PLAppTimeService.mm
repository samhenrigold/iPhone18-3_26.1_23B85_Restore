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

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_264(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) periodicUpdateAppRunTimeWithDate:v2];
  [*(a1 + 32) chunkScreenOnAggregationAtDate:v2];
  [*(a1 + 32) updateAggregationsAtDate:v2 withNewPluggedInState:{objc_msgSend(*(a1 + 32), "deviceIsPluggedIn")}];
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_258(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __44__PLAppTimeService_initOperatorDependancies__block_invoke_2_259;
    v15 = &unk_27825A310;
    v16 = @"AppTimeService";
    v17 = v4;
    if (qword_2811F3E18 != -1)
    {
      dispatch_once(&qword_2811F3E18, &v12);
    }

    v5 = byte_2811F3DF9;

    if (v5 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device Woke Up", v12, v13, v14, v15];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService initOperatorDependancies]_block_invoke"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:667];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) handleWakeCallBack:{v3, v12, v13, v14, v15}];
}

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
  v56[0] = &unk_282C1BB78;
  v56[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F590];
  v55[2] = *MEMORY[0x277D3F4A0];
  v55[3] = v3;
  v56[2] = MEMORY[0x277CBEC38];
  v56[3] = &unk_282C0CFF0;
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
  v52 = &unk_282C0D008;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v54[5] = v30;
  v53[6] = @"BackgroundLocationTime";
  v49 = v4;
  v50 = &unk_282C0D008;
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
  v47[0] = &unk_282C1BB88;
  v45 = *MEMORY[0x277D3F470];
  v10 = v45;
  v46 = &unk_282C1BB98;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v47[1] = &unk_282C1BBA8;
  v48[0] = v11;
  v43 = v10;
  v44 = &unk_282C1BBB8;
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
  v23[0] = &unk_282C1BBC8;
  v23[1] = MEMORY[0x277CBEC38];
  v23[2] = MEMORY[0x277CBEC38];
  v23[3] = &unk_282C0D020;
  v22[4] = *MEMORY[0x277D3F588];
  v23[4] = &unk_282C1BBD8;
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
  v18 = &unk_282C1BB88;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_282C1BB98;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v24[3] = *MEMORY[0x277D3F488];
  v25[2] = v12;
  v25[3] = &unk_282C13FC8;
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
  v25[0] = &unk_282C1BBE8;
  v25[1] = MEMORY[0x277CBEC38];
  v25[2] = MEMORY[0x277CBEC38];
  v25[3] = &unk_282C0D020;
  v24[4] = *MEMORY[0x277D3F588];
  v25[4] = &unk_282C1BBD8;
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
  v20 = &unk_282C1BB88;
  v18 = *MEMORY[0x277D3F470];
  v19 = &unk_282C1BB98;
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
    v24[0] = &unk_282C1BBF8;
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
    v19 = &unk_282C1BB88;
    v17 = *MEMORY[0x277D3F470];
    v18 = &unk_282C1BC08;
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
  v37[0] = &unk_282C1BBC8;
  v37[1] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277D3F588];
  v36[2] = *MEMORY[0x277D3F590];
  v36[3] = v4;
  v37[2] = &unk_282C0D020;
  v37[3] = &unk_282C1BC18;
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
  v33[0] = &unk_282C0D038;
  v33[1] = v3;
  v32 = *MEMORY[0x277D3F480];
  v8 = v32;
  v33[2] = &unk_282C0D038;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v31 count:3];
  v35[2] = v9;
  v34[3] = @"HasCarPlayUsage";
  v29[0] = v6;
  v29[1] = v7;
  v30[0] = &unk_282C0D038;
  v30[1] = v3;
  v29[2] = v8;
  v30[2] = &unk_282C0D038;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v35[3] = v10;
  v34[4] = @"HasAudioUsage";
  v27[0] = v6;
  v27[1] = v7;
  v28[0] = &unk_282C0D038;
  v28[1] = v3;
  v27[2] = v8;
  v28[2] = &unk_282C0D038;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v35[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:5];
  v39[1] = v12;
  v38[2] = *MEMORY[0x277D3F478];
  v25 = &unk_282C1BBA8;
  v23 = *MEMORY[0x277D3F470];
  v24 = &unk_282C1BC18;
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
  if ([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
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
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v4 = _os_feature_enabled_impl();
    v5 = MEMORY[0x277D3F5E8];
    if (v4)
    {
      v6 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
      v7 = objc_msgSend_storage(self);
      v8 = [v7 lastEntryForKey:v6 withFilters:&unk_282C13FE0];

      if (v8)
      {
        v9 = [v8 objectForKeyedSubscript:@"Active"];
        self->_displayState = [v9 intValue];
      }

      else
      {
        self->_displayState = 0;
      }
    }

    else
    {
      self->_displayState = 0;
    }

    self->_deviceIsPluggedIn = 0;
    monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
    lastScreenOnTime = self->_lastScreenOnTime;
    self->_lastScreenOnTime = monotonicDate2;

    objc_storeStrong(&self->_lastScreenEventAccountingTime, self->_lastScreenOnTime);
    v12 = *MEMORY[0x277D3F5B8];
    v13 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AppRunTime"];
    aggregatedEntryKeyForAppRunTime = self->_aggregatedEntryKeyForAppRunTime;
    self->_aggregatedEntryKeyForAppRunTime = v13;

    v15 = [(PLOperator *)PLAppTimeService entryKeyForType:v12 andName:@"AppUsageEvents"];
    aggregatedEntryKeyForAppUsageEvents = self->_aggregatedEntryKeyForAppUsageEvents;
    self->_aggregatedEntryKeyForAppUsageEvents = v15;

    v17 = objc_opt_new();
    widgetParentBundleIDs = self->_widgetParentBundleIDs;
    self->_widgetParentBundleIDs = v17;

    backgroundAppToBundleIDmapping = [(PLAppTimeService *)self backgroundAppToBundleIDmapping];
    backgroundAppToBundleID = self->_backgroundAppToBundleID;
    self->_backgroundAppToBundleID = backgroundAppToBundleIDmapping;

    v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.InCallService", 0}];
    excludedFGAppsSet = self->_excludedFGAppsSet;
    self->_excludedFGAppsSet = v21;

    v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.mobilemail", @"com.apple.InCallService", @"com.apple.MobileSMS", @"com.apple.mobileslideshow", @"com.apple.Music", 0}];
    excludedBGAppsSet = self->_excludedBGAppsSet;
    self->_excludedBGAppsSet = v23;

    v25 = objc_opt_new();
    inFlightBundleIDStartTime = self->_inFlightBundleIDStartTime;
    self->_inFlightBundleIDStartTime = v25;

    self->_inCallNow = 0;
    objc_storeStrong(&self->_lastCallTime, monotonicDate);
    lastCallBundleID = self->_lastCallBundleID;
    self->_lastCallBundleID = 0;

    v28 = objc_opt_new();
    coalitionsAppsOnScreen = self->_coalitionsAppsOnScreen;
    self->_coalitionsAppsOnScreen = v28;

    v30 = objc_opt_new();
    appsOnScreen = self->_appsOnScreen;
    self->_appsOnScreen = v30;

    v32 = objc_opt_new();
    PiPModeApps = self->_PiPModeApps;
    self->_PiPModeApps = v32;

    [(PLAppTimeService *)self loadWatchKitExtensionsSet];
    nowPlayingBundleID = self->_nowPlayingBundleID;
    self->_nowPlayingBundleID = 0;

    statusBarBundleID = self->_statusBarBundleID;
    self->_statusBarBundleID = 0;

    self->_musicPlayerForeground = 0;
    objc_storeStrong(&self->_lastNowPlayingTime, monotonicDate);
    objc_storeStrong(&self->_lastStatusBarTime, monotonicDate);
    self->_isAPOn = 1;
    lastCellularConditionTime = self->_lastCellularConditionTime;
    self->_lastCellularConditionTime = 0;

    self->_lastSignalBar = -1;
    self->_lastTelephonyRegistrationStatus = 1;
    self->_lastAirplaneModeStatus = 0;
    v37 = objc_opt_new();
    audioPlaybackBundleIDs = self->_audioPlaybackBundleIDs;
    self->_audioPlaybackBundleIDs = v37;

    if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
    {
      [(PLAppTimeService *)self setLastAPOnTimeSBC:monotonicDate];
      [(PLAppTimeService *)self setTotalBGTimeSBC:0.0];
      [(PLAppTimeService *)self setTotalFGTimeSBC:0.0];
      if (self->_displayState == 1)
      {
        v39 = monotonicDate;
      }

      else
      {
        v39 = 0;
      }

      [(PLAppTimeService *)self setLastScreenOnTimeSBC:v39];
      [(PLAppTimeService *)self setFirstBGAppTimeSBC:0];
      v40 = objc_opt_new();
      [(PLAppTimeService *)self setBundleIDsInBackground:v40];

      v41 = [(PLOperator *)PLAppTimeService entryKeyForType:v12 andName:@"UsageTime"];
      entryKeyUsageTime = self->_entryKeyUsageTime;
      self->_entryKeyUsageTime = v41;

      generateExcludedBGBundleIDs = [(PLAppTimeService *)self generateExcludedBGBundleIDs];
      [(PLAppTimeService *)self setExcludedBundleIDsInBackground:generateExcludedBGBundleIDs];

      if (self->_deviceIsPluggedIn)
      {
        v44 = monotonicDate;
      }

      else
      {
        v44 = 0;
      }

      [(PLAppTimeService *)self setLastPluggedInTime:v44];
    }

    v45 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CoalitionInterval"];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke;
    v108[3] = &unk_27825A2E8;
    v108[4] = self;
    v46 = [(PLAppTimeService *)self buildCallBack:v45 withGroup:1 withHandler:v108];
    [(PLAppTimeService *)self setCoalitionCallback:v46];

    entryKeyPLCoalitionAgentEventIntervalCoalition = self->_entryKeyPLCoalitionAgentEventIntervalCoalition;
    self->_entryKeyPLCoalitionAgentEventIntervalCoalition = v45;
    v48 = v45;

    v49 = *MEMORY[0x277D3F5D0];
    v50 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];

    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_2;
    v107[3] = &unk_27825A2E8;
    v107[4] = self;
    v51 = [(PLAppTimeService *)self buildCallBack:v50 withGroup:1 withHandler:v107];
    [(PLAppTimeService *)self setScreenstateCallback:v51];

    entryKeyPLScreenStateAgentScreenState = self->_entryKeyPLScreenStateAgentScreenState;
    self->_entryKeyPLScreenStateAgentScreenState = v50;
    v53 = v50;

    v54 = [(PLOperator *)PLApplicationAgent entryKeyForType:v49 andName:@"Application"];

    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_3;
    v106[3] = &unk_27825A2E8;
    v106[4] = self;
    v55 = [(PLAppTimeService *)self buildCallBack:v54 withGroup:0 withHandler:v106];
    [(PLAppTimeService *)self setApplicationCallback:v55];

    v56 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Battery"];

    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_4;
    v105[3] = &unk_27825A2E8;
    v105[4] = self;
    v57 = [(PLAppTimeService *)self buildCallBack:v56 withGroup:0 withHandler:v105];
    [(PLAppTimeService *)self setBatteryCallback:v57];

    if (+[PLDisplayAgent shouldLogDisplay])
    {
      v58 = [(PLOperator *)PLDisplayAgent entryKeyForType:*v5 andName:@"Display"];

      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_5;
      v104[3] = &unk_27825A2E8;
      v104[4] = self;
      v59 = [(PLAppTimeService *)self buildCallBack:v58 withGroup:0 withHandler:v104];
      [(PLAppTimeService *)self setDisplayCallback:v59];

      v56 = v58;
    }

    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_6;
    v103[3] = &unk_27825A2E8;
    v103[4] = self;
    v60 = [(PLAppTimeService *)self buildCallBack:@"PLXPCAgent_EventForward_InCallService" withGroup:0 withHandler:v103];
    [(PLAppTimeService *)self setInCallServiceCallback:v60];

    v61 = PLLogCommon();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v61, OS_LOG_TYPE_DEBUG, "Calling power out", buf, 2u);
    }

    v62 = objc_alloc(MEMORY[0x277D3F1F0]);
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_226;
    v101[3] = &unk_2782597E8;
    v101[4] = self;
    v63 = [v62 initWithOperator:self forNotification:@"com.apple.PerfPowerServices.powerOut" withBlock:v101];
    [(PLAppTimeService *)self setPowerOutCallback:v63];

    v64 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_228;
    v100[3] = &unk_27825A2E8;
    v100[4] = self;
    v65 = [(PLAppTimeService *)self buildCallBack:v64 withGroup:0 withHandler:v100];
    [(PLAppTimeService *)self setPluginCallback:v65];

    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_2_232;
    v99[3] = &unk_27825A2E8;
    v99[4] = self;
    v66 = [(PLAppTimeService *)self buildCallBack:@"PLAudioAgent_EventPoint_AudioApp" withGroup:0 withHandler:v99];
    [(PLAppTimeService *)self setAudioCallback:v66];

    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_3_236;
    v98[3] = &unk_27825A2E8;
    v98[4] = self;
    v67 = [(PLAppTimeService *)self buildCallBack:@"PLAudioAgent_EventForward_NowPlaying" withGroup:0 withHandler:v98];
    [(PLAppTimeService *)self setNowPlayingCallback:v67];

    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_4_240;
    v97[3] = &unk_27825A2E8;
    v97[4] = self;
    v68 = [(PLAppTimeService *)self buildCallBack:@"PLLocationAgent_EventForward_StatusBar" withGroup:0 withHandler:v97];
    [(PLAppTimeService *)self setStatusBarCallback:v68];

    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_5_244;
    v96[3] = &unk_27825A2E8;
    v96[4] = self;
    v69 = [(PLAppTimeService *)self buildCallBack:@"PLXPCAgent_EventPoint_BackgroundTransfer" withGroup:0 withHandler:v96];
    [(PLAppTimeService *)self setBackgroundTransferCallback:v69];

    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_6_246;
    v95[3] = &unk_2782597E8;
    v95[4] = self;
    v70 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v95];
    canSleepEntryNotifications = self->_canSleepEntryNotifications;
    self->_canSleepEntryNotifications = v70;

    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_258;
    v94[3] = &unk_2782597E8;
    v94[4] = self;
    v72 = [MEMORY[0x277D3F1A8] wakeEntryNotificationWithOperator:self withBlock:v94];
    wakeEntryNotifications = self->_wakeEntryNotifications;
    self->_wakeEntryNotifications = v72;

    [(PLOperator *)self defaultDoubleForKey:@"RunTimeAggregatorTimerCadence"];
    v75 = v74;
    v76 = objc_alloc(MEMORY[0x277D3F250]);
    v77 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v75];
    workQueue = [(PLOperator *)self workQueue];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_264;
    v93[3] = &unk_278259C40;
    v93[4] = self;
    v79 = [v76 initWithFireDate:v77 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v93 withQueue:v75 withBlock:0.0];
    runTimeAggregatorTimer = self->_runTimeAggregatorTimer;
    self->_runTimeAggregatorTimer = v79;

    displayCallback = [(PLAppTimeService *)self displayCallback];
    [displayCallback requestEntry];

    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_2_269;
    v92[3] = &unk_27825A2E8;
    v92[4] = self;
    v82 = [(PLAppTimeService *)self buildCallBack:@"PLBBAgent_EventPoint_TelephonyActivity" withGroup:0 withHandler:v92];
    [(PLAppTimeService *)self setCellularConditionCallback:v82];

    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_3_273;
    v91[3] = &unk_27825A2E8;
    v91[4] = self;
    v83 = [(PLAppTimeService *)self buildCallBack:@"PLBBAgent_EventForward_TelephonyRegistration" withGroup:0 withHandler:v91];
    [(PLAppTimeService *)self setTelephonyRegistrationCallback:v83];

    v84 = *v5;
    v85 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*v5 andName:@"SBNotifications"];
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_4_275;
    v90[3] = &unk_27825A2E8;
    v90[4] = self;
    v86 = [(PLAppTimeService *)self buildCallBack:v85 withGroup:0 withHandler:v90];
    [(PLAppTimeService *)self setNotificationCallback:v86];

    v87 = [(PLOperator *)PLApplicationAgent entryKeyForType:v84 andName:@"WidgetUpdates"];

    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_5_276;
    v89[3] = &unk_27825A2E8;
    v89[4] = self;
    v88 = [(PLAppTimeService *)self buildCallBack:v87 withGroup:0 withHandler:v89];
    [(PLAppTimeService *)self setWidgetCallback:v88];
  }
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_226(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Calling power out with %@ %@ %@", &v11, 0x20u);
  }

  [*(a1 + 32) handlePowerOutCallback:v7];
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_6_246(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __44__PLAppTimeService_initOperatorDependancies__block_invoke_7;
    v15 = &unk_27825A310;
    v16 = @"AppTimeService";
    v17 = v4;
    if (qword_2811F3E10 != -1)
    {
      dispatch_once(&qword_2811F3E10, &v12);
    }

    v5 = _MergedGlobals_1_3;

    if (v5 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device Going to Sleep", v12, v13, v14, v15];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService initOperatorDependancies]_block_invoke_6"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:663];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) handleSleepCallBack:{v3, v12, v13, v14, v15}];
}

void *__44__PLAppTimeService_initOperatorDependancies__block_invoke_7(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  _MergedGlobals_1_3 = result;
  return result;
}

void *__44__PLAppTimeService_initOperatorDependancies__block_invoke_2_259(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F3DF9 = result;
  return result;
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
  v16[3] = &unk_27825A338;
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
  v18 = *MEMORY[0x277D85DE8];
  v4 = [back objectForKey:@"entry"];
  entryDate = [v4 entryDate];
  [(PLAppTimeService *)self periodicUpdateAppRunTimeWithDate:entryDate];

  entryDate2 = [v4 entryDate];
  [(PLAppTimeService *)self updateAggregationsAtDate:entryDate2 withNewAPState:0];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
    v16 = 134217984;
    v17 = [audioPlaybackBundleIDs count];
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "audio: removing %lu objects", &v16, 0xCu);
  }

  audioPlaybackBundleIDs2 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  [audioPlaybackBundleIDs2 removeAllObjects];

  [(PLAppTimeService *)self setIsAPOn:0];
  if ([(PLAppTimeService *)self inCallNow])
  {
    entryDate3 = [v4 entryDate];
    lastCallTime = [(PLAppTimeService *)self lastCallTime];
    [entryDate3 timeIntervalSinceDate:lastCallTime];
    v12 = v11;

    lastCallBundleID = [(PLAppTimeService *)self lastCallBundleID];
    lastCallTime2 = [(PLAppTimeService *)self lastCallTime];
    [(PLAppTimeService *)self updateInCallServiceTimeInDBForBundleId:lastCallBundleID withTime:lastCallTime2 withDate:v12];

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

  v16 = [MEMORY[0x277D3F258] isPingPongChargingWith:bOOLValue andBatteryLevelPercent:v15];
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
  *&v37[5] = *MEMORY[0x277D85DE8];
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

  if ([(PLAppTimeService *)self inCallNow]&& intValue != [(PLAppTimeService *)self displayState]&& ([(PLAppTimeService *)self displayState]== 1 || intValue == 1))
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Updating in call service log due to display change", buf, 2u);
    }

    entryDate = [v5 entryDate];
    [(PLAppTimeService *)self updateInCallServiceTimeAtDate:entryDate];
  }

  v10 = [v5 objectForKeyedSubscript:@"Block"];
  v11 = [v10 isEqualToString:@"Backlight"];

  if (v11)
  {
    if (!intValue)
    {
      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v37[0] = 0;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "newDisplayState=%d, clearing layouts", buf, 8u);
      }

      entryDate2 = [v5 entryDate];
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:entryDate2];

      entryDate3 = [v5 entryDate];
      [(PLAppTimeService *)self addForegroundTimeAtDate:entryDate3 withNewLayoutElementsArray:0];
    }

    entryDate4 = [v5 entryDate];
    [(PLAppTimeService *)self updateAggregationsAtDate:entryDate4 withNewScreenState:intValue];

    if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
    {
      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        displayState = [(PLAppTimeService *)self displayState];
        *buf = 67109376;
        v37[0] = displayState;
        LOWORD(v37[1]) = 1024;
        *(&v37[1] + 2) = intValue;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "self.displayState=%d, newDisplayState=%d", buf, 0xEu);
      }

      if ([(PLAppTimeService *)self displayState]|| (intValue - 1) > 1)
      {
        goto LABEL_28;
      }

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        entryDate5 = [v5 entryDate];
        *buf = 138412290;
        *v37 = entryDate5;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "updating lastScreenOnTime to %@", buf, 0xCu);
      }
    }

    else if ((intValue - 1) > 1)
    {
      goto LABEL_28;
    }

    entryDate6 = [v5 entryDate];
    [(PLAppTimeService *)self setLastScreenOnTime:entryDate6];

LABEL_28:
    [(PLAppTimeService *)self setDisplayState:intValue];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __42__PLAppTimeService_handleDisplayCallback___block_invoke;
      v34 = &__block_descriptor_40_e5_v8__0lu32l8;
      v35 = v19;
      if (qword_2811F3E20 != -1)
      {
        dispatch_once(&qword_2811F3E20, &block);
      }

      if (byte_2811F3DFA == 1)
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = [v5 objectForKeyedSubscript:@"Active"];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLAppTimeService displayState](self, "displayState")}];
        v23 = [v20 stringWithFormat:@"Got display %@ %@ %@", callbackCopy, v21, v22, block, v32, v33, v34, v35];

        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleDisplayCallback:]"];
        [v24 logMessage:v23 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:960];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v37 = v23;
          _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__42__PLAppTimeService_handleDisplayCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3DFA = result;
  return result;
}

- (void)handlePowerOutCallback:(id)callback
{
  v9 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = callbackCopy;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Handle power out callback with payload %@", &v7, 0xCu);
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
  [v9 setObject:&unk_282C0D050 forKeyedSubscript:@"ScreenOnTime"];
  [v9 setObject:idCopy forKeyedSubscript:@"BackgroundTime"];

  [v9 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundPluggedInTime"];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:monotonicDate sinceDate:v6];
  [(PLOperator *)self logProportionateAggregateEntry:v9 withStartDate:monotonicDate withEndDate:v10];
}

- (void)handleInCallServiceCallback:(id)callback
{
  v32 = *MEMORY[0x277D85DE8];
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
      v10 = &stru_282B650A0;
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
    if (qword_2811F3E28 != -1)
    {
      dispatch_once(&qword_2811F3E28, block);
    }

    if (byte_2811F3DFB == 1)
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

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__48__PLAppTimeService_handleInCallServiceCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3DFB = result;
  return result;
}

- (void)handlePluginCallback:(id)callback
{
  v25 = *MEMORY[0x277D85DE8];
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
    v19 = 3221225472;
    v20 = __41__PLAppTimeService_handlePluginCallback___block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v11;
    if (qword_2811F3E30 != -1)
    {
      dispatch_once(&qword_2811F3E30, &block);
    }

    if (byte_2811F3DFC == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got Plugin %@", callbackCopy, block, v19, v20, v21, v22];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handlePluginCallback:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:1015];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__41__PLAppTimeService_handlePluginCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3DFC = result;
  return result;
}

- (void)handleAudioCallback:(id)callback
{
  v33 = *MEMORY[0x277D85DE8];
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
    if ([v7 isEqualToString:@"AudioPlayback_Start"])
    {
      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "audio: %@ started playing", buf, 0xCu);
      }

      audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
      entryDate = [v5 entryDate];
      [audioPlaybackBundleIDs setObject:entryDate forKey:v6];

      entryDate2 = [v5 entryDate];
      [(PLAppTimeService *)self addAudioTimeAtDate:entryDate2];
    }

    else
    {
      v14 = [v8 isEqualToString:@"AudioPlayback_Stop"];
      v15 = PLLogCommon();
      entryDate2 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v6;
          _os_log_debug_impl(&dword_21A4C6000, entryDate2, OS_LOG_TYPE_DEBUG, "audio: %@ stopped playing", buf, 0xCu);
        }

        entryDate3 = [v5 entryDate];
        [(PLAppTimeService *)self addAudioTimeAtDate:entryDate3];

        entryDate2 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
        [entryDate2 removeObjectForKey:v6];
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v30 = v6;
        v31 = 2112;
        v32 = v8;
        _os_log_error_impl(&dword_21A4C6000, entryDate2, OS_LOG_TYPE_ERROR, "audio: unknown operation for %@: %@", buf, 0x16u);
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __40__PLAppTimeService_handleAudioCallback___block_invoke;
      v27 = &__block_descriptor_40_e5_v8__0lu32l8;
      v28 = v17;
      if (qword_2811F3E38 != -1)
      {
        dispatch_once(&qword_2811F3E38, &block);
      }

      if (byte_2811F3DFD == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got Audio callback %@", callbackCopy, block, v25, v26, v27, v28];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleAudioCallback:]"];
        [v19 logMessage:v18 fromFile:lastPathComponent fromFunction:v22 fromLineNumber:1045];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__40__PLAppTimeService_handleAudioCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3DFD = result;
  return result;
}

- (void)handleNowPlayingCallback:(id)callback
{
  v24 = *MEMORY[0x277D85DE8];
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
    v18 = 3221225472;
    v19 = __45__PLAppTimeService_handleNowPlayingCallback___block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v10;
    if (qword_2811F3E40 != -1)
    {
      dispatch_once(&qword_2811F3E40, &block);
    }

    if (byte_2811F3DFE == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got NowPlaying callback %@", callbackCopy, block, v18, v19, v20, v21];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleNowPlayingCallback:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1059];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__45__PLAppTimeService_handleNowPlayingCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3DFE = result;
  return result;
}

- (void)handleStatusBarCallback:(id)callback
{
  v24 = *MEMORY[0x277D85DE8];
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
    v18 = 3221225472;
    v19 = __44__PLAppTimeService_handleStatusBarCallback___block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v10;
    if (qword_2811F3E48 != -1)
    {
      dispatch_once(&qword_2811F3E48, &block);
    }

    if (byte_2811F3DFF == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got NowPlaying callback %@", callbackCopy, block, v18, v19, v20, v21];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleStatusBarCallback:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1073];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__44__PLAppTimeService_handleStatusBarCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3DFF = result;
  return result;
}

- (void)handleCellularConditionCallback:(id)callback
{
  v28 = *MEMORY[0x277D85DE8];
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
      v22 = 3221225472;
      v23 = __52__PLAppTimeService_handleCellularConditionCallback___block_invoke;
      v24 = &__block_descriptor_40_e5_v8__0lu32l8;
      v25 = v14;
      if (qword_2811F3E50 != -1)
      {
        dispatch_once(&qword_2811F3E50, &block);
      }

      if (byte_2811F3E00 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got CellularCondition callback %@", callbackCopy, block, v22, v23, v24, v25];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleCellularConditionCallback:]"];
        [v16 logMessage:v15 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:1104];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v15;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__52__PLAppTimeService_handleCellularConditionCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E00 = result;
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
  v75 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  if (qword_2811F3E60 != -1)
  {
    dispatch_once(&qword_2811F3E60, &__block_literal_global_5);
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
    if (qword_2811F3E68 != -1)
    {
      dispatch_once(&qword_2811F3E68, block);
    }

    if (byte_2811F3E01 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"entry=%@", v5];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1159];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v74 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v14 = [v5 objectForKeyedSubscript:@"originatingClientID"];
  if (v14)
  {
    v15 = @"originatingClientID";
  }

  else
  {
    v15 = @"bundleID";
  }

  v16 = [v5 objectForKeyedSubscript:v15];

  v17 = [(PLAppTimeService *)self remapCloudDocsBundleID:v16];

  if (v17)
  {
    v18 = [v5 objectForKeyedSubscript:@"taskUUID"];
    if (!v18 || ([v5 objectForKeyedSubscript:@"state"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "intValue"), v19, !v20))
    {
LABEL_47:

      goto LABEL_48;
    }

    if (v20 == 1)
    {
      coalitionsAppsOnScreen = [(PLAppTimeService *)self coalitionsAppsOnScreen];
      v22 = [coalitionsAppsOnScreen containsObject:v17];

      if (v22)
      {
        goto LABEL_40;
      }

      v23 = [qword_2811F3E58 objectForKeyedSubscript:v17];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v24 = objc_opt_class();
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_415;
        v71[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v71[4] = v24;
        if (qword_2811F3E70 != -1)
        {
          dispatch_once(&qword_2811F3E70, v71);
        }

        if (byte_2811F3E02 == 1)
        {
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Running: backgroundTransferEvent=%@", v23];
          v65 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          lastPathComponent2 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v65 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:1176];

          v29 = v25;
          v30 = PLLogCommon();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v74 = v29;
            _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v6 = 0x277D3F000;
        }
      }

      if (!v23)
      {
        v23 = objc_alloc_init(PLBackgroundTransferEvent);
        entryDate = [v5 entryDate];
        [(PLBackgroundTransferEvent *)v23 setStartDate:entryDate];

        [(PLBackgroundTransferEvent *)v23 setBundleID:v17];
        v32 = [MEMORY[0x277CBEB58] set];
        [(PLBackgroundTransferEvent *)v23 setTaskUUIDs:v32];

        [qword_2811F3E58 setObject:v23 forKeyedSubscript:v17];
      }

      taskUUIDs = [(PLBackgroundTransferEvent *)v23 taskUUIDs];
      [taskUUIDs addObject:v18];
    }

    else
    {
      v23 = [qword_2811F3E58 objectForKeyedSubscript:v17];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v34 = objc_opt_class();
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_422;
        v70[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v70[4] = v34;
        if (qword_2811F3E78 != -1)
        {
          dispatch_once(&qword_2811F3E78, v70);
        }

        if (byte_2811F3E03 == 1)
        {
          v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cancelled, Completed, Failed: backgroundTransferEvent=%@", v23];
          v66 = MEMORY[0x277D3F178];
          v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          lastPathComponent3 = [v36 lastPathComponent];
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v66 logMessage:v35 fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:1193];

          v39 = v35;
          v40 = PLLogCommon();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v74 = v39;
            _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v6 = 0x277D3F000uLL;
        }
      }

      if (!v23)
      {
        goto LABEL_39;
      }

      taskUUIDs2 = [(PLBackgroundTransferEvent *)v23 taskUUIDs];
      [taskUUIDs2 removeObject:v18];

      taskUUIDs3 = [(PLBackgroundTransferEvent *)v23 taskUUIDs];
      v43 = [taskUUIDs3 count];

      if (v43)
      {
        goto LABEL_39;
      }

      [qword_2811F3E58 removeObjectForKey:v17];
      coalitionsAppsOnScreen2 = [(PLAppTimeService *)self coalitionsAppsOnScreen];
      v45 = [coalitionsAppsOnScreen2 containsObject:v17];

      if (v45)
      {
        goto LABEL_39;
      }

      entryDate2 = [v5 entryDate];
      startDate = [(PLBackgroundTransferEvent *)v23 startDate];
      [entryDate2 timeIntervalSinceDate:startDate];
      v56 = v55;

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v57 = objc_opt_class();
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_428;
        v69[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v69[4] = v57;
        if (qword_2811F3E80 != -1)
        {
          dispatch_once(&qword_2811F3E80, v69);
        }

        if (byte_2811F3E04 == 1)
        {
          v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration=%f", *&v56];
          v67 = MEMORY[0x277D3F178];
          v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          lastPathComponent4 = [v59 lastPathComponent];
          v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v67 logMessage:v58 fromFile:lastPathComponent4 fromFunction:v61 fromLineNumber:1205];

          v62 = v58;
          v63 = PLLogCommon();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v74 = v62;
            _os_log_debug_impl(&dword_21A4C6000, v63, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v6 = 0x277D3F000;
        }
      }

      taskUUIDs = [(PLBackgroundTransferEvent *)v23 bundleID];
      startDate2 = [(PLBackgroundTransferEvent *)v23 startDate];
      [(PLAppTimeService *)self updateBackgroundTimeInDBForBundleId:taskUUIDs withTime:startDate2 withDate:fmin(v56, 3600.0)];
    }

LABEL_39:
LABEL_40:
    if ([*(v6 + 384) debugEnabled])
    {
      v46 = objc_opt_class();
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_434;
      v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v68[4] = v46;
      if (qword_2811F3E88 != -1)
      {
        dispatch_once(&qword_2811F3E88, v68);
      }

      if (byte_2811F3E05 == 1)
      {
        qword_2811F3E58 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleIDToBackgroundTransferEvent=%@", qword_2811F3E58];
        v48 = MEMORY[0x277D3F178];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent5 = [v49 lastPathComponent];
        v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
        [v48 logMessage:qword_2811F3E58 fromFile:lastPathComponent5 fromFunction:v51 fromLineNumber:1213];

        v52 = PLLogCommon();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v74 = qword_2811F3E58;
          _os_log_debug_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
  qword_2811F3E58 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void *__53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E01 = result;
  return result;
}

void *__53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_415(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E02 = result;
  return result;
}

void *__53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_422(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E03 = result;
  return result;
}

void *__53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_428(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E04 = result;
  return result;
}

void *__53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_434(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E05 = result;
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
  v39 = *MEMORY[0x277D85DE8];
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

    [dateCopy setObject:&unk_282C0D050 forKeyedSubscript:@"ScreenOnTime"];
    [dateCopy setObject:&unk_282C0D050 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:time];
      [dateCopy setObject:v15 forKeyedSubscript:@"BackgroundPluggedInTime"];
    }

    else
    {
      [dateCopy setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundPluggedInTime"];
    }

    v24 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:time];
    [(PLOperator *)self logProportionateAggregateEntry:dateCopy withStartDate:dateCopy withEndDate:v24];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_20;
    }

    v25 = objc_opt_class();
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke_446;
    v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v35[4] = v25;
    if (qword_2811F3E98 != -1)
    {
      dispatch_once(&qword_2811F3E98, v35);
    }

    if (byte_2811F3E07 != 1)
    {
      goto LABEL_20;
    }

    v26 = MEMORY[0x277CCACA8];
    v27 = [dateCopy objectForKeyedSubscript:@"BundleID"];
    v28 = [dateCopy objectForKeyedSubscript:@"ScreenOnTime"];
    v29 = [dateCopy objectForKeyedSubscript:@"BackgroundTime"];
    v23 = [v26 stringWithFormat:@"Added Background %@ %@ %@", v27, v28, v29];

    v30 = MEMORY[0x277D3F178];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
    lastPathComponent = [v31 lastPathComponent];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateBackgroundTimeInDBForBundleId:withTime:withDate:]"];
    [v30 logMessage:v23 fromFile:lastPathComponent fromFunction:v33 fromLineNumber:1286];

    v34 = PLLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v38 = v23;
      _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
    if (qword_2811F3E90 != -1)
    {
      dispatch_once(&qword_2811F3E90, block);
    }

    if (byte_2811F3E06 == 1)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:time];
      dateCopy = [v17 stringWithFormat:@"Not adding time for %@, %@ %@", idCopy, v18, dateCopy];

      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateBackgroundTimeInDBForBundleId:withTime:withDate:]"];
      [v19 logMessage:dateCopy fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:1272];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = dateCopy;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

LABEL_21:
}

void *__74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E06 = result;
  return result;
}

void *__74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke_446(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E07 = result;
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

          [(PLAppTimeService *)self setLastScreenEventAccountingTime:dateCopy];
          v20 = PLLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = v21;
            v27 = v15;
            v28 = 2048;
            v29 = v18;
            _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "Screen On: Periodic Update - Updating On Screen time for %@ with %f added seconds", buf, 0x16u);
          }
        }

        v12 = [appsOnScreen2 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v12);
    }
  }

  else
  {
    appsOnScreen2 = PLLogCommon();
    if (os_log_type_enabled(appsOnScreen2, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_21A4C6000, appsOnScreen2, OS_LOG_TYPE_FAULT, "Screen On: Tried updating On Screen time, but couldn't retrieve apps on screen", buf, 2u);
    }
  }
}

- (void)addForegroundTimeAtDate:(id)date withNewLayoutElementsArray:(id)array
{
  v74 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  arrayCopy = array;
  lastScreenOnTime = [(PLAppTimeService *)self lastScreenOnTime];
  lastScreenEventAccountingTime = [(PLAppTimeService *)self lastScreenEventAccountingTime];
  [lastScreenOnTime timeIntervalSinceDate:lastScreenEventAccountingTime];
  v11 = v10;

  if (v11 > 0.0)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__PLAppTimeService_addForegroundTimeAtDate_withNewLayoutElementsArray___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v12;
      if (qword_2811F3EA0 != -1)
      {
        dispatch_once(&qword_2811F3EA0, block);
      }

      if (byte_2811F3E08 == 1)
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

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v69 = v16;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      lastScreenOnTime3 = [(PLAppTimeService *)self lastScreenOnTime];
      *buf = 138412290;
      v69 = lastScreenOnTime3;
      _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "setting lastScreenEventAccountingTime to self.lastScreenOnTime=%@", buf, 0xCu);
    }

    lastScreenOnTime4 = [(PLAppTimeService *)self lastScreenOnTime];
    [(PLAppTimeService *)self setLastScreenEventAccountingTime:lastScreenOnTime4];
  }

  lastScreenEventAccountingTime3 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
  [dateCopy timeIntervalSinceDate:lastScreenEventAccountingTime3];
  v26 = v25;

  v27 = PLLogCommon();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    lastScreenEventAccountingTime4 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
    *buf = 138412290;
    v69 = lastScreenEventAccountingTime4;
    _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "lastScreenEventAccountingTime=%@", buf, 0xCu);
  }

  v58 = dateCopy;

  self->_musicPlayerForeground = 0;
  if ([arrayCopy count])
  {
    piPModeApps = [(PLAppTimeService *)self PiPModeApps];
    [piPModeApps removeAllObjects];

    appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
    [appsOnScreen removeAllObjects];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v30 = arrayCopy;
    v31 = [v30 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v64;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v64 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v63 + 1) + 8 * i);
          v36 = [v35 objectForKeyedSubscript:@"bundleID"];

          if (v36)
          {
            v37 = [v35 objectForKeyedSubscript:@"bundleID"];
            v38 = [v35 objectForKeyedSubscript:@"AppRole"];
            [(PLAppTimeService *)self updatePiPModeAppsSet:v37 withAppRole:v38];

            appsOnScreen2 = [(PLAppTimeService *)self appsOnScreen];
            v40 = [v35 objectForKeyedSubscript:@"bundleID"];
            [appsOnScreen2 addObject:v40];
          }

          else
          {
            appsOnScreen2 = PLLogCommon();
            if (os_log_type_enabled(appsOnScreen2, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v69 = v35;
              _os_log_fault_impl(&dword_21A4C6000, appsOnScreen2, OS_LOG_TYPE_FAULT, "Failed to retrieve bundle id for app on screen, bundle id is nil for entry %@", buf, 0xCu);
            }
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v32);
    }
  }

  lastLayoutEntries = [(PLAppTimeService *)self lastLayoutEntries];
  v42 = [lastLayoutEntries count];

  if (v42)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    lastLayoutEntries2 = [(PLAppTimeService *)self lastLayoutEntries];
    v44 = [lastLayoutEntries2 countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v60;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v60 != v46)
          {
            objc_enumerationMutation(lastLayoutEntries2);
          }

          v48 = *(*(&v59 + 1) + 8 * j);
          v49 = [v48 objectForKeyedSubscript:@"bundleID"];
          lastScreenEventAccountingTime5 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
          [(PLAppTimeService *)self updateScreenOnTimeInDBForBundleId:v49 withTime:lastScreenEventAccountingTime5 withDate:v26];

          v51 = [v48 objectForKeyedSubscript:@"bundleID"];
          [(PLAppTimeService *)self updateCoalitionsAppsOnScreenSet:v51];

          v52 = PLLogCommon();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            v55 = [v48 objectForKeyedSubscript:@"bundleID"];
            *buf = 138412546;
            v69 = v55;
            v70 = 2048;
            v71 = v26;
            _os_log_debug_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_DEBUG, "Screen On: Updating On Screen time for %@ with %f added seconds", buf, 0x16u);
          }

          v53 = [v48 objectForKeyedSubscript:@"bundleID"];
          v54 = [v53 isEqualToString:@"com.apple.Music"];

          if (v54)
          {
            self->_musicPlayerForeground = 1;
          }
        }

        v45 = [lastLayoutEntries2 countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v45);
    }
  }

  [(PLAppTimeService *)self resetLayoutElementsPLEntryArray:arrayCopy withNowDate:v58];
}

void *__71__PLAppTimeService_addForegroundTimeAtDate_withNewLayoutElementsArray___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E08 = result;
  return result;
}

- (void)updateScreenOnTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date
{
  v42 = *MEMORY[0x277D85DE8];
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
    if ([idCopy isEqualToString:*MEMORY[0x277D0AB98]])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v12 = objc_opt_class();
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke;
        v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v37[4] = v12;
        if (qword_2811F3EA8 != -1)
        {
          dispatch_once(&qword_2811F3EA8, v37);
        }

        if (byte_2811F3E09 == 1)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Lock screen diff was %f", *&time];
          v14 = MEMORY[0x277D3F178];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          lastPathComponent = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateScreenOnTimeInDBForBundleId:withTime:withDate:]"];
          [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:1365];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            timeCopy = *&v13;
            _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      time = fmin(time, 60.0);
    }

    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      timeCopy = time;
      v40 = 2112;
      v41 = idCopy;
      _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "adding timeDifference=%f for bundleID=%@", buf, 0x16u);
    }

    v20 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    excludedFGAppsSet = [v20 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    [excludedFGAppsSet setObject:idCopy forKeyedSubscript:@"BundleID"];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    [excludedFGAppsSet setObject:v22 forKeyedSubscript:@"ScreenOnTime"];

    [excludedFGAppsSet setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundTime"];
    [excludedFGAppsSet setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundPluggedInTime"];
    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:time];
      [excludedFGAppsSet setObject:v23 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    }

    else
    {
      [excludedFGAppsSet setObject:&unk_282C0D050 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    }

    v24 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:time];
    [(PLOperator *)self logProportionateAggregateEntry:excludedFGAppsSet withStartDate:dateCopy withEndDate:v24];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v25 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke_461;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v25;
      if (qword_2811F3EB0 != -1)
      {
        dispatch_once(&qword_2811F3EB0, block);
      }

      if (byte_2811F3E0A == 1)
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = [excludedFGAppsSet objectForKeyedSubscript:@"BundleID"];
        v28 = [excludedFGAppsSet objectForKeyedSubscript:@"ScreenOnTime"];
        v29 = [excludedFGAppsSet objectForKeyedSubscript:@"BackgroundTime"];
        v30 = [v26 stringWithFormat:@"Added Foreground %@ %@ %@", v27, v28, v29];

        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent2 = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateScreenOnTimeInDBForBundleId:withTime:withDate:]"];
        [v31 logMessage:v30 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:1382];

        v35 = PLLogCommon();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          timeCopy = *&v30;
          _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
  byte_2811F3E09 = result;
  return result;
}

void *__72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke_461(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E0A = result;
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
  if ([role isEqualToValue:&unk_282C0D068] && (-[NSMutableSet containsObject:](self->_PiPModeApps, "containsObject:", setCopy) & 1) == 0)
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
          v14 = [MEMORY[0x277D3F258] getIdentifierFromEntry:{v13, v50}];
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
  v39 = *MEMORY[0x277D85DE8];
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
      [v15 setObject:&unk_282C0D050 forKeyedSubscript:v20];
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
      if (qword_2811F3EB8 != -1)
      {
        dispatch_once(&qword_2811F3EB8, block);
      }

      if (byte_2811F3E0B == 1)
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

        v35 = PLLogCommon();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v38 = v30;
          _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__77__PLAppTimeService_updateInCallServiceTimeInDBForBundleId_withTime_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E0B = result;
  return result;
}

- (void)addAudioTimeAtDate:(id)date
{
  v53 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = MEMORY[0x277CBEB58];
  audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  allKeys = [audioPlaybackBundleIDs allKeys];
  v8 = [v5 setWithArray:allKeys];

  if ([v8 count])
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v49 = [v8 count];
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "audio: found %lu playing", buf, 0xCu);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
    v11 = [appsOnScreen countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v44;
      do
      {
        v14 = 0;
        do
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(appsOnScreen);
          }

          v15 = *(*(&v43 + 1) + 8 * v14);
          audioPlaybackBundleIDs2 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
          v17 = [audioPlaybackBundleIDs2 objectForKeyedSubscript:v15];

          if (v17)
          {
            audioPlaybackBundleIDs3 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
            [audioPlaybackBundleIDs3 setObject:dateCopy forKeyedSubscript:v15];

            v19 = PLLogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v49 = v15;
              _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "audio: reset time for %@ due to being in the fg", buf, 0xCu);
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [appsOnScreen countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v12);
    }

    appsOnScreen2 = [(PLAppTimeService *)self appsOnScreen];
    [v8 minusSet:appsOnScreen2];

    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      appsOnScreen3 = [(PLAppTimeService *)self appsOnScreen];
      v36 = [appsOnScreen3 count];
      v37 = [v8 count];
      *buf = 134218240;
      v49 = v36;
      v50 = 2048;
      v51 = v37;
      _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "audio: removing from %lu fg, %lu playing in bg", buf, 0x16u);
    }

    statusBarBundleID = [(PLAppTimeService *)self statusBarBundleID];
    if (statusBarBundleID)
    {
      v23 = statusBarBundleID;
      statusBarBundleID2 = [(PLAppTimeService *)self statusBarBundleID];
      v25 = [v8 containsObject:statusBarBundleID2];

      if (v25)
      {
        [(PLAppTimeService *)self addAudioAndLocationTimeAtDate:dateCopy];
        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          statusBarBundleID3 = [(PLAppTimeService *)self statusBarBundleID];
          *buf = 138412290;
          v49 = statusBarBundleID3;
          _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "audio: %@ is using audio+location", buf, 0xCu);
        }

        audioPlaybackBundleIDs4 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
        statusBarBundleID4 = [(PLAppTimeService *)self statusBarBundleID];
        [audioPlaybackBundleIDs4 setObject:dateCopy forKeyedSubscript:statusBarBundleID4];

        statusBarBundleID5 = [(PLAppTimeService *)self statusBarBundleID];
        [v8 removeObject:statusBarBundleID5];
      }
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = v8;
    v31 = [v30 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v40;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v40 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [(PLAppTimeService *)self addAudioTimeAtDate:dateCopy forBundleID:*(*(&v39 + 1) + 8 * i)];
        }

        v32 = [v30 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v32);
    }
  }
}

- (void)addAudioTimeAtDate:(id)date forBundleID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  v9 = [audioPlaybackBundleIDs objectForKeyedSubscript:dCopy];

  if (!v9)
  {
    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412290;
      v24 = *&dCopy;
      _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, "audio: missing last info for %@", &v23, 0xCu);
    }

    goto LABEL_18;
  }

  [dateCopy timeIntervalSinceDate:v9];
  v11 = v10;
  audioPlaybackBundleIDs2 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  [audioPlaybackBundleIDs2 setObject:dateCopy forKeyedSubscript:dCopy];

  if (v11 > 0.0)
  {
    v13 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v15 = [v13 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    [v15 setObject:dCopy forKeyedSubscript:@"BundleID"];
    if ([dCopy isEqualToString:@"com.apple.Music"])
    {
      if ([(PLAppTimeService *)self musicPlayerForeground])
      {
LABEL_18:

        goto LABEL_19;
      }

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v23 = 134217984;
        v24 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "audio: incrementing Music's BG time by %.2f", &v23, 0xCu);
      }

      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [v15 setObject:v17 forKeyedSubscript:@"BackgroundTime"];

      if ([(PLAppTimeService *)self deviceIsPluggedIn])
      {
        v18 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        [v15 setObject:v18 forKeyedSubscript:@"BackgroundPluggedInTime"];
      }

      else
      {
        [v15 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundPluggedInTime"];
      }
    }

    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v15 setObject:v19 forKeyedSubscript:@"BackgroundAudioPlayingTime"];

    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [v15 setObject:v20 forKeyedSubscript:@"BackgroundAudioPlayingTimePluggedIn"];
    }

    else
    {
      [v15 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundAudioPlayingTimePluggedIn"];
    }

    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      deviceIsPluggedIn = [(PLAppTimeService *)self deviceIsPluggedIn];
      v23 = 138412802;
      v24 = *&dCopy;
      v25 = 2048;
      v26 = v11;
      v27 = 1024;
      v28 = deviceIsPluggedIn;
      _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "audio: adding to %@ playback time: %.2f pluggedIn:%d", &v23, 0x1Cu);
    }

    [(PLOperator *)self logProportionateAggregateEntry:v15 withStartDate:v9 withEndDate:dateCopy];
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
      [v14 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundAudioNowPlayingPluggedInTime"];
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
      [v21 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundLocationPluggedInTime"];
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
            [v18 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundLocationAudioPluggedInTime"];
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
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Added app usage event: Notification", v9, 2u);
  }

  entryDate = [v5 entryDate];
  [(PLAppTimeService *)self logAppUsageEventForKey:@"NotificationCount" withBundleID:v6 withDate:entryDate];
}

- (void)addWidgetUseFromUserInfo:(id)info AtDate:(id)date
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [info objectForKey:{@"entry", date}];
  v6 = [v5 objectForKeyedSubscript:@"bundleID"];
  v7 = [(PLAppTimeService *)self getWidgetParentAppForBundleID:v6];

  if (v7)
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Added app usage event: Widget for bundleid  %@", &v10, 0xCu);
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
          v15 = PLLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = v17;
            v23 = v11;
            _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Added app usage event: Carplay %@", buf, 0xCu);
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
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  widgetParentBundleIDs = [(PLAppTimeService *)self widgetParentBundleIDs];
  v6 = [widgetParentBundleIDs objectForKeyedSubscript:dCopy];

  if (!v6)
  {
    widgetParentBundleIDs2 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginId" withValue:dCopy withComparisonOperation:0];
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    v11 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
    v18 = widgetParentBundleIDs2;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v13 = [v11 entriesForKey:@"PLApplicationAgent_EventNone_AllPlugins" withComparisons:v12];

    if ([v13 count])
    {
      firstObject = [v13 firstObject];
      v9 = [firstObject objectForKeyedSubscript:@"PluginParentApp"];
      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = firstObject;
        _os_log_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEFAULT, "Added app usage event queryResult= %@", buf, 0xCu);
      }

      if (v9)
      {
        [(NSMutableDictionary *)self->_widgetParentBundleIDs setObject:v9 forKeyedSubscript:dCopy];
LABEL_14:

        goto LABEL_15;
      }
    }

    firstObject = PLLogCommon();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = dCopy;
      _os_log_error_impl(&dword_21A4C6000, firstObject, OS_LOG_TYPE_ERROR, "App usage event: unable to find widget's parent id for %@", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_14;
  }

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = [(NSMutableDictionary *)self->_widgetParentBundleIDs objectForKeyedSubscript:dCopy];
    *buf = 138412290;
    v20 = v17;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Added app usage event cached widget =%@", buf, 0xCu);
  }

  widgetParentBundleIDs2 = [(PLAppTimeService *)self widgetParentBundleIDs];
  v9 = [widgetParentBundleIDs2 objectForKeyedSubscript:dCopy];
LABEL_15:

  return v9;
}

- (void)addAudioUseFromforBundleID:(id)d AtDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Added app usage event: Audio", v9, 2u);
  }

  [(PLAppTimeService *)self logAppUsageEventForKey:@"HasAudioUsage" withBundleID:dCopy withDate:dateCopy];
}

- (void)logAppUsageEventForKey:(id)key withBundleID:(id)d withDate:(id)date
{
  v15 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dCopy = d;
  dateCopy = date;
  if (dCopy)
  {
    v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:self->_aggregatedEntryKeyForAppUsageEvents withDate:dateCopy];
    [v11 setObject:dCopy forKeyedSubscript:@"BundleID"];
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:keyCopy];
    [(PLOperator *)self logEntry:v11];
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v11;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "App usage event: adding %@", &v13, 0xCu);
    }
  }

  else
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "App usage event: unable to log nil bundle id", &v13, 2u);
    }
  }
}

- (id)backgroundAppToBundleIDmapping
{
  backgroundAppToBundleID = self->_backgroundAppToBundleID;
  if (!backgroundAppToBundleID)
  {
    self->_backgroundAppToBundleID = &unk_282C16EB0;
    backgroundAppToBundleID = self->_backgroundAppToBundleID;
  }

  return backgroundAppToBundleID;
}

- (void)updateAggregationsAtSBCWithDate:(id)date withLongestCoalitionBGTime:(double)time withCoalitionLength:(double)length
{
  v41 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    [(PLAppTimeService *)self chunkScreenOnAggregationAtDate:dateCopy];
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)self totalFGTimeSBC];
      v39 = 134217984;
      timeCopy = v33;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "SBC: FG %f", &v39, 0xCu);
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
        [(PLAppTimeService *)self setTotalAPOnTimeSBC:v13 + v14];
      }
    }

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)self totalAPOnTimeSBC];
      v39 = 134217984;
      timeCopy = v34;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "SBC: AP %f", &v39, 0xCu);
    }

    firstBGAppTimeSBC = [(PLAppTimeService *)self firstBGAppTimeSBC];

    if (firstBGAppTimeSBC)
    {
      [dateCopy timeIntervalSinceDate:self->_firstBGAppTimeSBC];
      if (v17 > 0.0)
      {
        v18 = v17;
        [(PLAppTimeService *)self setFirstBGAppTimeSBC:dateCopy];
        [(PLAppTimeService *)self totalBGTimeSBC];
        [(PLAppTimeService *)self setTotalBGTimeSBC:v18 + v19];
      }
    }

    v20 = PLLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)self totalBGTimeSBC];
      v39 = 134217984;
      timeCopy = v35;
      _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "SBC: BG %f", &v39, 0xCu);
    }

    totalFGTimeSBC = self->_totalFGTimeSBC;
    v22 = time - totalFGTimeSBC;
    if (time - totalFGTimeSBC < self->_totalBGTimeSBC - totalFGTimeSBC)
    {
      v22 = self->_totalBGTimeSBC - totalFGTimeSBC;
    }

    v23 = self->_totalAPOnTimeSBC - totalFGTimeSBC;
    if (v22 < v23)
    {
      v23 = v22;
    }

    if (v23 >= 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = PLLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v39) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "Calculating screen off time from coalitions", &v39, 2u);
    }

    v26 = PLLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v39 = 134217984;
      timeCopy = length;
      _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "   Coalition interval length       %f", &v39, 0xCu);
    }

    v27 = PLLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v39 = 134217984;
      timeCopy = time;
      _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "   Longest coalition CPU time:     %f", &v39, 0xCu);
    }

    v28 = PLLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v36 = self->_totalFGTimeSBC;
      v39 = 134217984;
      timeCopy = v36;
      _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "   FG since last SBC:              %f", &v39, 0xCu);
    }

    v29 = PLLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      totalBGTimeSBC = self->_totalBGTimeSBC;
      v39 = 134217984;
      timeCopy = totalBGTimeSBC;
      _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "   BG since last SBC:              %f", &v39, 0xCu);
    }

    v30 = PLLogCommon();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      totalAPOnTimeSBC = self->_totalAPOnTimeSBC;
      v39 = 134217984;
      timeCopy = totalAPOnTimeSBC;
      _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "   AP On since last SBC:           %f", &v39, 0xCu);
    }

    v31 = PLLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v39 = 134217984;
      timeCopy = v24;
      _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "   Calculated Screen Off Usage:    %f", &v39, 0xCu);
    }

    [(PLAppTimeService *)self updateScreenOffTimeAtDate:dateCopy withDiff:v24];
    v32 = PLLogCommon();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v39) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "Resetting SBC AP/FG/BG counters", &v39, 2u);
    }

    self->_totalAPOnTimeSBC = 0.0;
    self->_totalFGTimeSBC = 0.0;
    self->_totalBGTimeSBC = 0.0;
  }
}

- (void)chunkScreenOnAggregationAtDate:(id)date
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Chunking screen on aggregation", &v13, 2u);
    }

    lastScreenOnTimeSBC = [(PLAppTimeService *)self lastScreenOnTimeSBC];

    if (lastScreenOnTimeSBC)
    {
      lastScreenOnTimeSBC2 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
      [dateCopy timeIntervalSinceDate:lastScreenOnTimeSBC2];
      v9 = v8;

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        lastScreenOnTimeSBC3 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
        v13 = 138412802;
        v14 = lastScreenOnTimeSBC3;
        v15 = 2112;
        v16 = dateCopy;
        v17 = 2048;
        v18 = v9;
        _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_INFO, "[%@, %@] : %f", &v13, 0x20u);
      }

      if (v9 >= 0.0)
      {
        [(PLAppTimeService *)self setLastScreenOnTimeSBC:dateCopy];
        [(PLAppTimeService *)self totalFGTimeSBC];
        [(PLAppTimeService *)self setTotalFGTimeSBC:v9 + v12];
        [(PLAppTimeService *)self updateScreenOnTimeAtDate:dateCopy withDiff:v9];
      }
    }
  }
}

- (void)updateAggregationsAtDate:(id)date withNewScreenState:(int)state
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if (dateCopy && (isHomePod & 1) == 0)
  {
    if ([(PLAppTimeService *)self displayState]== state)
    {
      v8 = PLLogCommon();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        goto LABEL_11;
      }

      LOWORD(v19) = 0;
      v9 = "No screen state change!";
LABEL_6:
      _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_INFO, v9, &v19, 2u);
      goto LABEL_10;
    }

    if (state == 1)
    {
      [(PLAppTimeService *)self setLastScreenOnTimeSBC:dateCopy];
      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v19 = 138412290;
        v20 = dateCopy;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Starting FG interval at %@", &v19, 0xCu);
      }

      goto LABEL_10;
    }

    lastScreenOnTimeSBC = [(PLAppTimeService *)self lastScreenOnTimeSBC];

    if (!lastScreenOnTimeSBC)
    {
      v8 = PLLogCommon();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      LOWORD(v19) = 0;
      v9 = "Screen turning off, but no open screen interval";
      goto LABEL_6;
    }

    lastScreenOnTimeSBC2 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
    [dateCopy timeIntervalSinceDate:lastScreenOnTimeSBC2];
    v13 = v12;

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      lastScreenOnTimeSBC3 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
      v19 = 138412802;
      v20 = lastScreenOnTimeSBC3;
      v21 = 2112;
      v22 = dateCopy;
      v23 = 2048;
      v24 = v13;
      _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Stopping FG interval [%@, %@] : %f", &v19, 0x20u);
    }

    [(PLAppTimeService *)self setLastScreenOnTimeSBC:0];
    if (v13 >= 0.0)
    {
      [(PLAppTimeService *)self totalFGTimeSBC];
      [(PLAppTimeService *)self setTotalFGTimeSBC:v13 + v15];
      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(PLAppTimeService *)self totalFGTimeSBC];
        v19 = 134217984;
        v20 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "New FG time since SBC: %f", &v19, 0xCu);
      }

      [(PLAppTimeService *)self updateScreenOnTimeAtDate:dateCopy withDiff:v13];
    }
  }

LABEL_11:
}

- (void)updateAggregationsAtDate:(id)date withNewAPState:(BOOL)state
{
  stateCopy = state;
  v41 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if (!dateCopy || (isHomePod & 1) != 0)
  {
    goto LABEL_33;
  }

  if (self->_isAPOn == stateCopy)
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v35) = 0;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "No AP state change!", &v35, 2u);
    }

    goto LABEL_32;
  }

  if (stateCopy)
  {
    [(PLAppTimeService *)self setLastAPOnTimeSBC:dateCopy];
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v35 = 138412290;
      v36 = dateCopy;
      v9 = "Starting APOn interval at %@";
LABEL_31:
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, v9, &v35, 0xCu);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  lastScreenOnTimeSBC = [(PLAppTimeService *)self lastScreenOnTimeSBC];

  if (lastScreenOnTimeSBC)
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v35) = 0;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "Screen on interval is open, but AP is going down!", &v35, 2u);
    }

    lastScreenOnTimeSBC2 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
    [dateCopy timeIntervalSinceDate:lastScreenOnTimeSBC2];
    v14 = v13;

    [(PLAppTimeService *)self setLastScreenOnTimeSBC:0];
    if (v14 >= 0.0)
    {
      [(PLAppTimeService *)self totalFGTimeSBC];
      [(PLAppTimeService *)self setTotalFGTimeSBC:v14 + v15];
      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(PLAppTimeService *)self totalFGTimeSBC];
        v35 = 134217984;
        v36 = v34;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "New FG time since SBC: %f", &v35, 0xCu);
      }

      [(PLAppTimeService *)self updateScreenOnTimeAtDate:dateCopy withDiff:v14];
    }
  }

  lastAPOnTimeSBC = [(PLAppTimeService *)self lastAPOnTimeSBC];

  if (!lastAPOnTimeSBC)
  {
    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v35) = 0;
      _os_log_error_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_ERROR, "AP is going down, but AP interval isn't open", &v35, 2u);
    }

    goto LABEL_24;
  }

  [dateCopy timeIntervalSinceDate:self->_lastAPOnTimeSBC];
  v19 = v18;
  v20 = PLLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    lastAPOnTimeSBC2 = [(PLAppTimeService *)self lastAPOnTimeSBC];
    v35 = 138412802;
    v36 = lastAPOnTimeSBC2;
    v37 = 2112;
    v38 = dateCopy;
    v39 = 2048;
    v40 = v19;
    _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "Stopping AP interval [%@, %@] : %f", &v35, 0x20u);
  }

  [(PLAppTimeService *)self setLastAPOnTimeSBC:0];
  if (v19 > 0.0)
  {
    [(PLAppTimeService *)self totalAPOnTimeSBC];
    [(PLAppTimeService *)self setTotalAPOnTimeSBC:v19 + v21];
    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)self totalAPOnTimeSBC];
      v35 = 134217984;
      v36 = v23;
      _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "New AP time since SBC: %f", &v35, 0xCu);
    }

LABEL_24:
  }

  firstBGAppTimeSBC = [(PLAppTimeService *)self firstBGAppTimeSBC];

  if (firstBGAppTimeSBC)
  {
    firstBGAppTimeSBC2 = [(PLAppTimeService *)self firstBGAppTimeSBC];
    [dateCopy timeIntervalSinceDate:firstBGAppTimeSBC2];
    v27 = v26;

    v28 = PLLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      firstBGAppTimeSBC3 = [(PLAppTimeService *)self firstBGAppTimeSBC];
      v35 = 138412802;
      v36 = firstBGAppTimeSBC3;
      v37 = 2112;
      v38 = dateCopy;
      v39 = 2048;
      v40 = v27;
      _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "Stopping BG interval [%@, %@] : %f", &v35, 0x20u);
    }

    [(PLAppTimeService *)self setFirstBGAppTimeSBC:0];
    if (v27 > 0.0)
    {
      [(PLAppTimeService *)self totalBGTimeSBC];
      [(PLAppTimeService *)self setTotalBGTimeSBC:v27 + v29];
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:dateCopy];
      bundleIDsInBackground = [(PLAppTimeService *)self bundleIDsInBackground];
      [bundleIDsInBackground removeAllObjects];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(PLAppTimeService *)self totalBGTimeSBC];
        v35 = 134217984;
        v36 = v31;
        v9 = "New BG time since SBC: %f";
        goto LABEL_31;
      }

LABEL_32:
    }
  }

LABEL_33:
}

- (void)updateAggregationsAtDate:(id)date withNewPluggedInState:(BOOL)state
{
  stateCopy = state;
  v24 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (self->_deviceIsPluggedIn != stateCopy)
  {
    if (stateCopy)
    {
      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v22) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "starting plugged in interval", &v22, 2u);
      }

      goto LABEL_13;
    }

    lastPluggedInTime = [(PLAppTimeService *)self lastPluggedInTime];

    if (lastPluggedInTime)
    {
      lastPluggedInTime2 = [(PLAppTimeService *)self lastPluggedInTime];
      [dateCopy timeIntervalSinceDate:lastPluggedInTime2];
      v20 = v19;

      [(PLAppTimeService *)self updatePluggedInTimeAtDate:dateCopy withDiff:v20];
      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = 134217984;
        v23 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "stopping plugged in interval %.2fs since last update", &v22, 0xCu);
      }

      selfCopy2 = self;
      v15 = 0;
      goto LABEL_20;
    }

    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_error_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_ERROR, "unplugged without plugged in start", &v22, 2u);
    }

LABEL_23:

    goto LABEL_24;
  }

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v22) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "periodic plugged in update", &v22, 2u);
  }

  if (!stateCopy)
  {
    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "device is not plugged in", &v22, 2u);
    }

    goto LABEL_23;
  }

  lastPluggedInTime3 = [(PLAppTimeService *)self lastPluggedInTime];

  if (lastPluggedInTime3)
  {
    lastPluggedInTime4 = [(PLAppTimeService *)self lastPluggedInTime];
    [dateCopy timeIntervalSinceDate:lastPluggedInTime4];
    v11 = v10;

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v22 = 134217984;
      v23 = v11;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "device has been plugged in for %.2fs since last update", &v22, 0xCu);
    }

    [(PLAppTimeService *)self updatePluggedInTimeAtDate:dateCopy withDiff:v11];
  }

LABEL_13:
  selfCopy2 = self;
  v15 = dateCopy;
LABEL_20:
  [(PLAppTimeService *)selfCopy2 setLastPluggedInTime:v15];
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

    [v9 setObject:&unk_282C0D050 forKeyedSubscript:@"ScreenOn"];
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

    [v9 setObject:&unk_282C0D050 forKeyedSubscript:@"ScreenOff"];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-diff];
    [(PLOperator *)self logProportionateAggregateEntry:v9 withStartDate:v11 withEndDate:dateCopy];
  }

  MEMORY[0x2821F96F8](isHomePod);
}

- (void)updateBackgroundAppsForBundleID:(id)d withState:(unsigned int)state withDate:(id)date
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && dCopy && dateCopy)
  {
    if (state == 4)
    {
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:dateCopy];
      bundleIDsInBackground = [(PLAppTimeService *)self bundleIDsInBackground];
      v11 = [bundleIDsInBackground count];

      if (v11)
      {
LABEL_28:
        v37 = [(PLAppTimeService *)self bundleIDsInBackground:*v42];
        [v37 addObject:dCopy];
        goto LABEL_29;
      }

      excludedBundleIDsInBackground = [(PLAppTimeService *)self excludedBundleIDsInBackground];
      v13 = [excludedBundleIDsInBackground containsObject:dCopy];

      if (v13)
      {
        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *v42 = 138412290;
          *&v42[4] = dCopy;
          v15 = "Ignoring BG bundleID %@";
LABEL_37:
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, v15, v42, 0xCu);
        }
      }

      else
      {
        [(PLAppTimeService *)self setFirstBGAppTimeSBC:dateCopy];
        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *v42 = 138412290;
          *&v42[4] = dCopy;
          v15 = "%@ is first BG'd app, starting BG Timer";
          goto LABEL_37;
        }
      }

      goto LABEL_28;
    }

    bundleIDsInBackground2 = [(PLAppTimeService *)self bundleIDsInBackground];
    v17 = [bundleIDsInBackground2 containsObject:dCopy];

    if (v17)
    {
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:dateCopy];
    }

    bundleIDsInBackground3 = [(PLAppTimeService *)self bundleIDsInBackground];
    v19 = [bundleIDsInBackground3 containsObject:dCopy];

    if (v19)
    {
      bundleIDsInBackground4 = [(PLAppTimeService *)self bundleIDsInBackground];
      [bundleIDsInBackground4 removeObject:dCopy];

      bundleIDsInBackground5 = [(PLAppTimeService *)self bundleIDsInBackground];
      v22 = [bundleIDsInBackground5 count];

      if (v22 == 1)
      {
        bundleIDsInBackground6 = [(PLAppTimeService *)self bundleIDsInBackground];
        anyObject = [bundleIDsInBackground6 anyObject];

        if (anyObject)
        {
          excludedBundleIDsInBackground2 = [(PLAppTimeService *)self excludedBundleIDsInBackground];
          v26 = [excludedBundleIDsInBackground2 containsObject:anyObject];

          if (v26)
          {
            v27 = PLLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *v42 = 138412290;
              *&v42[4] = anyObject;
              _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "Removing %@ from BG set", v42, 0xCu);
            }

            bundleIDsInBackground7 = [(PLAppTimeService *)self bundleIDsInBackground];
            [bundleIDsInBackground7 removeObject:anyObject];
          }
        }
      }

      bundleIDsInBackground8 = [(PLAppTimeService *)self bundleIDsInBackground];
      v30 = [bundleIDsInBackground8 count];

      if (!v30)
      {
        v31 = PLLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *v42 = 138412290;
          *&v42[4] = dCopy;
          _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@ is last BG'd app, stopping BG Timer", v42, 0xCu);
        }

        firstBGAppTimeSBC = [(PLAppTimeService *)self firstBGAppTimeSBC];

        if (firstBGAppTimeSBC)
        {
          firstBGAppTimeSBC2 = [(PLAppTimeService *)self firstBGAppTimeSBC];
          [dateCopy timeIntervalSinceDate:firstBGAppTimeSBC2];
          v35 = v34;

          [(PLAppTimeService *)self setFirstBGAppTimeSBC:0];
          if (v35 > 0.0)
          {
            [(PLAppTimeService *)self totalBGTimeSBC];
            [(PLAppTimeService *)self setTotalBGTimeSBC:v35 + v36];
            v37 = PLLogCommon();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [(PLAppTimeService *)self totalBGTimeSBC];
              *v42 = 134217984;
              *&v42[4] = v38;
              _os_log_debug_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEBUG, "total BG time since SBC: %f", v42, 0xCu);
            }

            goto LABEL_29;
          }

          v37 = PLLogCommon();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
LABEL_29:

            goto LABEL_30;
          }

          *v42 = 134217984;
          *&v42[4] = v35;
          v39 = "Got a negative BG time: %f";
          v40 = v37;
          v41 = 12;
        }

        else
        {
          v37 = PLLogCommon();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          *v42 = 0;
          v39 = "Tried to stop BG time, but no first BG app time SBC!";
          v40 = v37;
          v41 = 2;
        }

        _os_log_error_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_ERROR, v39, v42, v41);
        goto LABEL_29;
      }
    }
  }

LABEL_30:
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

@end