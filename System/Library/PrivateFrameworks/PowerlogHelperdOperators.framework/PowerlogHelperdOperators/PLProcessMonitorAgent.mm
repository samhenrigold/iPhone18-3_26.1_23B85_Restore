@interface PLProcessMonitorAgent
+ (BOOL)enableThreadStatsLogging;
+ (id)entryEventBackwardAppLaunchTimeSeries;
+ (id)entryEventBackwardDefinitionThreadStats;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventBackwardProcessExitHistogram;
+ (id)entryEventForwardAppResumeInferredCarry;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventForwardProcessID;
+ (id)entryEventIntervalDefinitionKernelTaskMonitor;
+ (id)entryEventIntervalDefinitionProcessMonitorDiff;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointAppNapEnabled;
+ (id)entryEventPointAppNotFrozen;
+ (id)entryEventPointAppResumePredictions;
+ (id)entryEventPointDefinitions;
+ (id)entryEventPointFreezerDemotion;
+ (id)entryEventPointFreezerStats;
+ (id)entryEventPointMemoryTracking;
+ (id)entryEventPointProcessExit;
+ (id)entryEventPointProcessSnapshot;
+ (id)entryEventPointSharedCacheReslid;
+ (id)entryEventPointSystemFreezerStats;
+ (unint64_t)PIDToCoalitionID:(int)d;
+ (void)load;
- (PLProcessMonitorAgent)init;
- (id)eventForwardProcessIDForPID:(int)d;
- (id)fetchSnapshotWithFlags:(unsigned int)flags;
- (id)getAllProcessExitsInLastHour;
- (id)getFrozenProcesses;
- (id)getJSEIdleTime;
- (id)getJetsamSnapshotEntries:(jetsam_snapshot *)entries;
- (id)getProcessExits:(id)exits;
- (id)getProcessName:(char *)name;
- (id)getProcessesNotInFreezer:(id)freezer withCurrentProcesses:(id)processes;
- (id)ledgerDataAtIndex:(int)index forPid:(int64_t)pid;
- (id)processMonitorMultiKeyFromProcessID:(int)d;
- (int)getFrozenToSwapLedgerIndex:(int64_t)index;
- (int)getLedgerIndex:(int64_t)index forKey:(id)key;
- (int)getProcDirtyTimeLedgerIndex:(int64_t)index;
- (int)get_kthread_list:(unint64_t *)get_kthread_list;
- (void)disableProcessExitLogging;
- (void)enableProcessExitLogging;
- (void)getCpuUsageAndMemoryForPid:(int)pid withBuffer:(void *)buffer withNewProcessArray:(id)array withTotalCpu:(unint64_t *)cpu withActiveProcesses:(id)processes;
- (void)initOperatorDependancies;
- (void)initializeThreadStatsLogging;
- (void)log;
- (void)logEventBackwardAppLaunchTimeSeries:(id)series;
- (void)logEventBackwardProcessExitHistogram:(id)histogram withStats:(id *)stats withDate:(id)date;
- (void)logEventForwardAppResumeInferredCarry:(id)carry;
- (void)logEventIntervalKernelTaskMonitor;
- (void)logEventIntervalProcessMonitorIntervalUsingCache;
- (void)logEventPointAppNapEnabled;
- (void)logEventPointAppNotFrozen:(id)frozen;
- (void)logEventPointAppResumePredictions:(id)predictions;
- (void)logEventPointFreezerDemotion;
- (void)logEventPointFreezerStats;
- (void)logEventPointMemoryTracking;
- (void)logEventPointProcessExit:(id)exit excludeProcesses:(id)processes withStats:(id *)stats withDate:(id)date withNowInSec:(unint64_t)sec;
- (void)logEventPointProcessSnapshot;
- (void)logEventPointSharedCacheReslid:(int)reslid;
- (void)logEventPointSystemFreezerStats;
- (void)logProcDirtyStats;
- (void)logProcessExit;
- (void)logThreadStats;
- (void)processesOfInterest:(id)interest;
- (void)updateProcessExitSummary;
- (void)updateProcessMonitorCache;
@end

@implementation PLProcessMonitorAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLProcessMonitorAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v16[10] = *MEMORY[0x277D85DE8];
  v15[0] = @"MemoryTracking";
  entryEventPointMemoryTracking = [self entryEventPointMemoryTracking];
  v16[0] = entryEventPointMemoryTracking;
  v15[1] = @"ProcessSnapshot";
  entryEventPointProcessSnapshot = [self entryEventPointProcessSnapshot];
  v16[1] = entryEventPointProcessSnapshot;
  v15[2] = @"ProcessExit";
  entryEventPointProcessExit = [self entryEventPointProcessExit];
  v16[2] = entryEventPointProcessExit;
  v15[3] = @"FreezerStats";
  entryEventPointFreezerStats = [self entryEventPointFreezerStats];
  v16[3] = entryEventPointFreezerStats;
  v15[4] = @"FreezerDemotion";
  entryEventPointFreezerDemotion = [self entryEventPointFreezerDemotion];
  v16[4] = entryEventPointFreezerDemotion;
  v15[5] = @"SharedCacheReslid";
  entryEventPointSharedCacheReslid = [self entryEventPointSharedCacheReslid];
  v16[5] = entryEventPointSharedCacheReslid;
  v15[6] = @"AppResumePredictions";
  entryEventPointAppResumePredictions = [self entryEventPointAppResumePredictions];
  v16[6] = entryEventPointAppResumePredictions;
  v15[7] = @"AppNotFrozen";
  entryEventPointAppNotFrozen = [self entryEventPointAppNotFrozen];
  v16[7] = entryEventPointAppNotFrozen;
  v15[8] = @"SystemFreezerStats";
  entryEventPointSystemFreezerStats = [self entryEventPointSystemFreezerStats];
  v16[8] = entryEventPointSystemFreezerStats;
  v15[9] = @"AppNapEnabled";
  entryEventPointAppNapEnabled = [self entryEventPointAppNapEnabled];
  v16[9] = entryEventPointAppNapEnabled;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:10];

  return v12;
}

+ (id)entryEventPointMemoryTracking
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v22 = *MEMORY[0x277D3F568];
  v23 = &unk_28714B5C8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"HeapTotal";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
  v21[0] = commonTypeDict_RealFormat;
  v20[1] = @"HeapUsed";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v21[1] = commonTypeDict_RealFormat2;
  v20[2] = @"HeapFree";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v21[2] = commonTypeDict_RealFormat3;
  v20[3] = @"MallocBlocks";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v21[3] = commonTypeDict_IntegerFormat;
  v20[4] = @"MallocSize";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v21[4] = commonTypeDict_RealFormat4;
  v20[5] = @"MallocMaxSize";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v21[5] = commonTypeDict_RealFormat5;
  v20[6] = @"MallocAllocated";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
  v21[6] = commonTypeDict_RealFormat6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];
  v25[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  return v11;
}

+ (id)entryEventPointProcessSnapshot
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_28714B5C8;
  v19[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F580];
  v18[2] = *MEMORY[0x277D3F550];
  v18[3] = v3;
  v19[2] = MEMORY[0x277CBEC28];
  v19[3] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"PID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v17[0] = commonTypeDict_IntegerFormat;
  v16[1] = @"BundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v17[1] = commonTypeDict_StringFormat_withBundleID;
  v16[2] = @"PhyFootprint";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v17[2] = commonTypeDict_IntegerFormat2;
  v16[3] = @"StartOrder";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v17[3] = commonTypeDict_IntegerFormat3;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  return v13;
}

+ (id)entryEventPointProcessExit
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v23[0] = *MEMORY[0x277D3F568];
  v23[1] = v2;
  v24[0] = &unk_28714B5D8;
  v24[1] = MEMORY[0x277CBEC38];
  v23[2] = *MEMORY[0x277D3F4A0];
  v24[2] = MEMORY[0x277CBEC38];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v26[0] = v20;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"PID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v22[0] = commonTypeDict_IntegerFormat;
  v21[1] = @"ProcessName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withProcessName];
  v22[1] = commonTypeDict_StringFormat_withProcessName;
  v21[2] = @"timeSinceSpawn";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v22[2] = commonTypeDict_IntegerFormat2;
  v21[3] = @"lastTimeToRelaunch";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v22[3] = commonTypeDict_IntegerFormat3;
  v21[4] = @"ReasonNamespace";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v22[4] = commonTypeDict_IntegerFormat4;
  v21[5] = @"ReasonCode";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v22[5] = commonTypeDict_IntegerFormat5;
  v21[6] = @"JetsamPriority";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v22[6] = commonTypeDict_IntegerFormat6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
  v26[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v12;
}

+ (id)entryEventPointSystemFreezerStats
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v23[0] = *MEMORY[0x277D3F568];
  v23[1] = v2;
  v24[0] = &unk_28714B5C8;
  v24[1] = MEMORY[0x277CBEC38];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v26[0] = v20;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"RemainingPages";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v22[0] = commonTypeDict_IntegerFormat;
  v21[1] = @"ThawCount";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v22[1] = commonTypeDict_IntegerFormat2;
  v21[2] = @"ThawPercentage";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v22[2] = commonTypeDict_IntegerFormat3;
  v21[3] = @"RefreezeAvgBytes";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v22[3] = commonTypeDict_IntegerFormat4;
  v21[4] = @"ThawsPerGB";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v22[4] = commonTypeDict_IntegerFormat5;
  v21[5] = @"SwapTotal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v22[5] = commonTypeDict_IntegerFormat6;
  v21[6] = @"SwapUsed";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v22[6] = commonTypeDict_IntegerFormat7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
  v26[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v12;
}

+ (id)entryEventPointFreezerStats
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_28714B5C8;
  v20[1] = MEMORY[0x277CBEC38];
  v19[2] = *MEMORY[0x277D3F4A0];
  v20[2] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"PID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v18[0] = commonTypeDict_IntegerFormat;
  v17[1] = @"ProcessName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withProcessName];
  v18[1] = commonTypeDict_StringFormat_withProcessName;
  v17[2] = @"Credits";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v18[2] = commonTypeDict_IntegerFormat2;
  v17[3] = @"Debits";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v18[3] = commonTypeDict_IntegerFormat3;
  v17[4] = @"Balance";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v18[4] = commonTypeDict_IntegerFormat4;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  return v12;
}

+ (id)entryEventPointFreezerDemotion
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_28714B5C8;
  v14[1] = MEMORY[0x277CBEC38];
  v13[2] = *MEMORY[0x277D3F4A0];
  v14[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"PID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"ProcessName";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withProcessName];
  v12[1] = commonTypeDict_StringFormat_withProcessName;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventPointSharedCacheReslid
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_28714B5C8;
  v14[1] = MEMORY[0x277CBEC38];
  v13[2] = *MEMORY[0x277D3F4A0];
  v14[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"PID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"ProcessName";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withProcessName];
  v12[1] = commonTypeDict_StringFormat_withProcessName;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventPointAppResumePredictions
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_28714B5C8;
  v16[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"BundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v14[0] = commonTypeDict_StringFormat_withBundleID;
  v13[1] = @"PredictionScore";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v14[1] = commonTypeDict_RealFormat;
  v13[2] = @"PredictionType";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v14[2] = commonTypeDict_IntegerFormat;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v11;
}

+ (id)entryEventPointAppNotFrozen
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_28714B5C8;
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
  v13[2] = @"Reason";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v14[2] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v11;
}

+ (id)entryEventPointAppNapEnabled
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_28714B5C8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"PID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"ProcessID";
  entryEventForwardProcessID = [self entryEventForwardProcessID];
  v7[1] = @"AppResumeInferredCarry";
  v8[0] = entryEventForwardProcessID;
  entryEventForwardAppResumeInferredCarry = [self entryEventForwardAppResumeInferredCarry];
  v8[1] = entryEventForwardAppResumeInferredCarry;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryEventForwardProcessID
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_28714B5E8;
  v21[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4A0];
  v20[2] = *MEMORY[0x277D3F4D8];
  v20[3] = v3;
  v21[2] = MEMORY[0x277CBEC38];
  v21[3] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"PID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v19[0] = commonTypeDict_IntegerFormat;
  v18[1] = @"BundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v19[1] = commonTypeDict_StringFormat_withBundleID;
  v18[2] = @"ProcessName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withProcessName];
  v19[2] = commonTypeDict_StringFormat_withProcessName;
  v18[3] = @"CoalitionID";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v19[3] = commonTypeDict_IntegerFormat2;
  v18[4] = @"PUUID";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v19[4] = commonTypeDict_StringFormat;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  return v13;
}

+ (id)entryEventForwardAppResumeInferredCarry
{
  v13[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v12[0] = *MEMORY[0x277D3F4E8];
    v10 = *MEMORY[0x277D3F568];
    v11 = &unk_28714B5C8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v13[0] = v2;
    v12[1] = *MEMORY[0x277D3F540];
    v8 = @"CarryType";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v9 = commonTypeDict_IntegerFormat;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v13[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  return v6;
}

+ (id)entryEventBackwardDefinitions
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"ProcessExitHistogram";
  entryEventBackwardProcessExitHistogram = [self entryEventBackwardProcessExitHistogram];
  v9[0] = entryEventBackwardProcessExitHistogram;
  v8[1] = @"ThreadStats";
  entryEventBackwardDefinitionThreadStats = [self entryEventBackwardDefinitionThreadStats];
  v9[1] = entryEventBackwardDefinitionThreadStats;
  v8[2] = @"AppLaunchTimeSeries";
  entryEventBackwardAppLaunchTimeSeries = [self entryEventBackwardAppLaunchTimeSeries];
  v9[2] = entryEventBackwardAppLaunchTimeSeries;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (id)entryEventBackwardDefinitionThreadStats
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (+[PLProcessMonitorAgent enableThreadStatsLogging])
  {
    v21[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4D8];
    v19[0] = *MEMORY[0x277D3F568];
    v19[1] = v2;
    v20[0] = &unk_28714B5C8;
    v20[1] = MEMORY[0x277CBEC38];
    v19[2] = *MEMORY[0x277D3F4A0];
    v20[2] = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v22[0] = v16;
    v21[1] = *MEMORY[0x277D3F540];
    v17[0] = @"PID";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v18[0] = commonTypeDict_IntegerFormat;
    v17[1] = @"ProcessName";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withProcessName];
    v18[1] = commonTypeDict_StringFormat_withProcessName;
    v17[2] = @"ThreadName";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v18[2] = commonTypeDict_StringFormat;
    v17[3] = @"SysTime";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v18[3] = commonTypeDict_IntegerFormat2;
    v17[4] = @"UsrTime";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v18[4] = commonTypeDict_IntegerFormat3;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
    v22[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

+ (id)entryEventBackwardAppLaunchTimeSeries
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_28714B5C8;
  v16[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"BundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v14[0] = commonTypeDict_StringFormat_withBundleID;
  v13[1] = @"Duration";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v14[1] = commonTypeDict_IntegerFormat;
  v13[2] = @"IsForeground";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v14[2] = commonTypeDict_BoolFormat;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v11;
}

+ (id)entryEventIntervalDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"ProcessMonitorInterval";
  entryEventIntervalDefinitionProcessMonitorDiff = [self entryEventIntervalDefinitionProcessMonitorDiff];
  v7[1] = @"KernelTaskMonitor";
  v8[0] = entryEventIntervalDefinitionProcessMonitorDiff;
  entryEventIntervalDefinitionKernelTaskMonitor = [self entryEventIntervalDefinitionKernelTaskMonitor];
  v8[1] = entryEventIntervalDefinitionKernelTaskMonitor;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryEventIntervalDefinitionProcessMonitorDiff
{
  v29[3] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_28714B5F8;
  v27[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4A0];
  v26[2] = *MEMORY[0x277D3F4D8];
  v26[3] = v3;
  v27[2] = MEMORY[0x277CBEC38];
  v27[3] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v29[0] = v19;
  v28[1] = *MEMORY[0x277D3F540];
  v24 = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v25 = commonTypeDict_DateFormat;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v29[1] = v16;
  v28[2] = *MEMORY[0x277D3F500];
  v22[0] = @"key";
  v20[0] = @"PID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v21[0] = commonTypeDict_IntegerFormat;
  v20[1] = @"ProcessName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withProcessName];
  v21[1] = commonTypeDict_StringFormat_withProcessName;
  v20[2] = @"BundleID";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat_withBundleID];
  v21[2] = commonTypeDict_StringFormat_withBundleID;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v22[1] = @"value";
  v23[0] = v9;
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v29[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];

  return v13;
}

+ (id)entryEventIntervalDefinitionKernelTaskMonitor
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_28714B5D8;
  v22[1] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v20[0] = commonTypeDict_DateFormat;
  v19[1] = @"ThreadID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v20[1] = commonTypeDict_IntegerFormat;
  v19[2] = @"ThreadName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v20[2] = commonTypeDict_StringFormat;
  v19[3] = @"CPUTime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
  v20[3] = commonTypeDict_RealFormat;
  v19[4] = @"CPUEnergyP";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v20[4] = commonTypeDict_IntegerFormat2;
  v19[5] = @"CPUEnergyE";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v20[5] = commonTypeDict_IntegerFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v12;
}

+ (id)entryEventBackwardProcessExitHistogram
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v27[0] = *MEMORY[0x277D3F568];
  v27[1] = v2;
  v28[0] = &unk_28714B5C8;
  v28[1] = MEMORY[0x277CBEC38];
  v27[2] = *MEMORY[0x277D3F4A0];
  v28[2] = MEMORY[0x277CBEC38];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"ProcessName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withProcessName];
  v26[0] = commonTypeDict_StringFormat_withProcessName;
  v25[1] = @"lastTimeToRelaunch";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v26[1] = commonTypeDict_IntegerFormat;
  v25[2] = @"ReasonNamespace";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v26[2] = commonTypeDict_IntegerFormat2;
  v25[3] = @"ReasonCode";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v26[3] = commonTypeDict_IntegerFormat3;
  v25[4] = @"0s-5s";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v26[4] = commonTypeDict_IntegerFormat4;
  v25[5] = @"5s-10s";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v26[5] = commonTypeDict_IntegerFormat5;
  v25[6] = @"10s-60s";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v26[6] = commonTypeDict_IntegerFormat6;
  v25[7] = @"60s+";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v26[7] = commonTypeDict_IntegerFormat7;
  v25[8] = @"UnknownDuration";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v26[8] = commonTypeDict_IntegerFormat8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:9];
  v30[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  return v12;
}

- (PLProcessMonitorAgent)init
{
  v10.receiver = self;
  v10.super_class = PLProcessMonitorAgent;
  v2 = [(PLAgent *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    processes = v2->_processes;
    v2->_processes = v3;

    v2->_launchServiceStatsEnabled = 0;
    v2->_processExitSummaryCount = 0;
    diffFreezerProcs = v2->_diffFreezerProcs;
    v2->_diffFreezerProcs = 0;

    lastFreezerProcs = v2->_lastFreezerProcs;
    v2->_lastFreezerProcs = 0;

    lastCPUTimeDict = v2->_lastCPUTimeDict;
    v2->_lastCPUTimeDict = 0;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_processesOfInterest_ name:@"PLProcessMonitorAgent.addProcessesOfInterest" object:0];
  }

  return v2;
}

- (void)processesOfInterest:(id)interest
{
  userInfo = [interest userInfo];
  if (userInfo)
  {
    v8 = userInfo;
    v5 = [userInfo objectForKeyedSubscript:@"entry"];
    if (v5)
    {
      processes = [(PLProcessMonitorAgent *)self processes];
      v7 = [v8 objectForKeyedSubscript:@"entry"];
      [processes unionSet:v7];
    }

    userInfo = v8;
  }
}

- (void)initOperatorDependancies
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = _reportProcDirtyStatsAfterTime;
  OUTLINED_FUNCTION_0(&dword_25EE51000, self, a3, "ProcDirtyStats: Picked random time in next 24 hours for sending stats to CA: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

uint64_t __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_DEFAULT, "ProcessMonitor: Received SBC notification!", v5, 2u);
  }

  [*(a1 + 32) updateProcessMonitorCache];
  [*(a1 + 32) logEventIntervalProcessMonitorIntervalUsingCache];
  [*(a1 + 32) logEventPointMemoryTracking];
  [*(a1 + 32) logEventIntervalKernelTaskMonitor];
  [*(a1 + 32) logProcessExit];
  [*(a1 + 32) logEventPointFreezerStats];
  [*(a1 + 32) logEventPointFreezerDemotion];
  v3 = PLLogCommon([*(a1 + 32) logEventPointSystemFreezerStats]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  [*(a1 + 32) logProcDirtyStats];
  [*(a1 + 32) logThreadStats];
  return [*(a1 + 32) logEventPointAppNapEnabled];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogProcessMonitor(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_428_cold_1();
  }

  [*(a1 + 32) logEventPointAppResumePredictions:v6];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_437(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogProcessMonitor(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_437_cold_1();
  }

  [*(a1 + 32) logEventPointAppNotFrozen:v6];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_442(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogProcessMonitor(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_442_cold_1();
  }

  [*(a1 + 32) logEventForwardAppResumeInferredCarry:v6];
}

id __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogProcessMonitor(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "MemoryKills query received with info: %@", &v13, 0xCu);
  }

  v8 = [*(a1 + 32) getProcessExits:v6];
  v9 = v8;
  if (v8 && (v8 = [v8 count]) != 0)
  {
    v10 = objc_opt_new();
    [v10 setObject:v9 forKeyedSubscript:@"ProcessExits"];
  }

  else
  {
    v11 = PLLogProcessMonitor(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_454_cold_1();
    }

    v10 = 0;
  }

  return v10;
}

id __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_469(uint64_t a1)
{
  v2 = PLLogProcessMonitor(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_INFO, "HUD Terminations query received", v8, 2u);
  }

  v3 = [*(a1 + 32) getAllProcessExitsInLastHour];
  v4 = v3;
  if (v3 && (v3 = [v3 count]) != 0)
  {
    v5 = objc_opt_new();
    [v5 setObject:v4 forKeyedSubscript:@"ProcessExits"];
  }

  else
  {
    v6 = PLLogProcessMonitor(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_469_cold_1();
    }

    v5 = 0;
  }

  return v5;
}

- (void)updateProcessExitSummary
{
  v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  v4 = objc_msgSend_storage(self);
  self->_processExitSummaryCount = [v4 countOfEntriesForKey:v3];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke;
    v16[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v16[4] = v5;
    if (updateProcessExitSummary_defaultOnce != -1)
    {
      dispatch_once(&updateProcessExitSummary_defaultOnce, v16);
    }

    if (updateProcessExitSummary_classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Init processExitSummaryCount = %d\n", self->_processExitSummaryCount];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent updateProcessExitSummary]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:799];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v13 = dispatch_time(0, 86400000000000);
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_477;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_after(v13, workQueue, block);
}

void *__49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateProcessExitSummary_classDebugEnabled = result;
  return result;
}

void __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_477(uint64_t a1)
{
  [*(a1 + 32) setProcessExitSummaryCount:0];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_2;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v2;
    if (kPLProcessMonitorAgentAddProcessesOfInterestNotificationName_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLProcessMonitorAgentAddProcessesOfInterestNotificationName_block_invoke_defaultOnce, &block);
    }

    if (kPLProcessMonitorAgentAddProcessesOfInterestNotificationName_block_invoke_classDebugEnabled == 1)
    {
      v3 = MEMORY[0x277CCACA8];
      v4 = [*(a1 + 32) processExitSummaryCount];
      v5 = [v3 stringWithFormat:@"Reset processExitSummaryCount = %d\n", v4, block, v13, v14, v15, v16];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent updateProcessExitSummary]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:805];

      v11 = PLLogCommon(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLProcessMonitorAgentAddProcessesOfInterestNotificationName_block_invoke_classDebugEnabled = result;
  return result;
}

- (void)enableProcessExitLogging
{
  strerror(self);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void *__49__PLProcessMonitorAgent_enableProcessExitLogging__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  enableProcessExitLogging_classDebugEnabled = result;
  return result;
}

- (void)disableProcessExitLogging
{
  [(PLProcessMonitorAgent *)self setLaunchServiceStatsEnabled:0];
  v2 = launch_service_stats_disable_4ppse();
  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (v2)
  {
    if (debugEnabled)
    {
      v4 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke_489;
      v21 = &__block_descriptor_40_e5_v8__0lu32l8;
      v22 = v4;
      if (disableProcessExitLogging_defaultOnce_487 != -1)
      {
        dispatch_once(&disableProcessExitLogging_defaultOnce_487, &block);
      }

      if (disableProcessExitLogging_classDebugEnabled_488 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to disable launch_service_stats(%d):%s", v2, strerror(v2), block, v19, v20, v21, v22];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
        lastPathComponent = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent disableProcessExitLogging]"];
        [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:836];

        v11 = PLLogCommon(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

LABEL_14:
      }
    }
  }

  else if (debugEnabled)
  {
    v12 = objc_opt_class();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke;
    v23[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v23[4] = v12;
    if (disableProcessExitLogging_defaultOnce != -1)
    {
      dispatch_once(&disableProcessExitLogging_defaultOnce, v23);
    }

    if (disableProcessExitLogging_classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"launch_service_stats successfully disabled."];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent2 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent disableProcessExitLogging]"];
      [v13 logMessage:v5 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:833];

      v11 = PLLogCommon(v17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_14;
    }
  }
}

void *__50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  disableProcessExitLogging_classDebugEnabled = result;
  return result;
}

void *__50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke_489(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  disableProcessExitLogging_classDebugEnabled_488 = result;
  return result;
}

- (id)eventForwardProcessIDForPID:(int)d
{
  v3 = *&d;
  v5 = [PLProcessMonitorAgent PIDToCoalitionID:?];
  v6 = [(PLProcessMonitorAgent *)self processMonitorMultiKeyFromProcessID:v3];
  v7 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ProcessID"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v6];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
  [v8 setObject:v9 forKeyedSubscript:@"CoalitionID"];

  return v8;
}

- (void)getCpuUsageAndMemoryForPid:(int)pid withBuffer:(void *)buffer withNewProcessArray:(id)array withTotalCpu:(unint64_t *)cpu withActiveProcesses:(id)processes
{
  v10 = *&pid;
  v29 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  processesCopy = processes;
  if (!proc_pid_rusage(v10, 5, buffer))
  {
    v14 = objc_msgSend_storage(self);
    v15 = [v14 processIDEntryForPid:v10];

    if (!v15)
    {
      v16 = [(PLProcessMonitorAgent *)self eventForwardProcessIDForPID:v10];
      [arrayCopy addObject:v16];
    }

    v17 = objc_alloc_init(ProcessMonitorStats);
    [PLUtilities secondsFromMachTime:*(buffer + 2)];
    [(ProcessMonitorStats *)v17 setCpu_time:v18];
    [(ProcessMonitorStats *)v17 setShared_cache_reslid:*(buffer + 74) & 1];
    lastCPUTimeDict = [(PLProcessMonitorAgent *)self lastCPUTimeDict];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    v21 = [lastCPUTimeDict objectForKeyedSubscript:v20];

    if (v21)
    {
      v22 = PLLogProcessMonitor(-[ProcessMonitorStats setCpu_time_diff:](v17, "setCpu_time_diff:", -[ProcessMonitorStats cpu_time](v17, "cpu_time") - [v21 cpu_time]));
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v24[0] = 67109632;
        v24[1] = v10;
        v25 = 2048;
        cpu_time = [(ProcessMonitorStats *)v17 cpu_time];
        v27 = 2048;
        cpu_time2 = [v21 cpu_time];
        _os_log_debug_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEBUG, "CPU Time Difference calculation for pid[%d] %llu %llu", v24, 0x1Cu);
      }
    }

    else
    {
      [(ProcessMonitorStats *)v17 setCpu_time_diff:0];
    }

    if ([(ProcessMonitorStats *)v17 cpu_time_diff])
    {
      *cpu += [(ProcessMonitorStats *)v17 cpu_time_diff];
    }

    v23 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    [processesCopy setObject:v17 forKeyedSubscript:v23];
  }
}

- (void)updateProcessMonitorCache
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = objc_opt_new();
  v33 = 0;
  v6 = objc_opt_new();
  memset(__b, 255, sizeof(__b));
  v7 = 0x279A5A000uLL;
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    processes = [(PLProcessMonitorAgent *)self processes];
    v9 = [processes count];

    if (v9)
    {
      v28 = v3;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      processes2 = [(PLProcessMonitorAgent *)self processes];
      v11 = [processes2 countByEnumeratingWithState:&v29 objects:v55 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v30;
        do
        {
          v14 = 0;
          do
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(processes2);
            }

            v15 = *(*(&v29 + 1) + 8 * v14);
            v16 = objc_autoreleasePoolPush();
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v36 = 0u;
            -[PLProcessMonitorAgent getCpuUsageAndMemoryForPid:withBuffer:withNewProcessArray:withTotalCpu:withActiveProcesses:](self, "getCpuUsageAndMemoryForPid:withBuffer:withNewProcessArray:withTotalCpu:withActiveProcesses:", [v15 intValue], &v36, v6, &v33, v5);
            objc_autoreleasePoolPop(v16);
            ++v14;
          }

          while (v12 != v14);
          v12 = [processes2 countByEnumeratingWithState:&v29 objects:v55 count:16];
        }

        while (v12);
      }

      v3 = v28;
      v7 = 0x279A5A000;
    }
  }

  else
  {
    v17 = proc_listpids(1u, 0, 0, 0);
    proc_listpids(1u, 0, __b, 4096);
    if (v17 >= 4)
    {
      v18 = 0;
      v19 = v17 >> 2;
      do
      {
        v20 = objc_autoreleasePoolPush();
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        [(PLProcessMonitorAgent *)self getCpuUsageAndMemoryForPid:__b[v18] withBuffer:&v36 withNewProcessArray:v6 withTotalCpu:&v33 withActiveProcesses:v5];
        objc_autoreleasePoolPop(v20);
        if (v18 > 0x3FE)
        {
          break;
        }

        ++v18;
      }

      while (v19 > v18);
    }
  }

  if ([v6 count] && (objc_msgSend(*(v7 + 3824), "isPowerlogHelperd") & 1) == 0 && (objc_msgSend(*(v7 + 3824), "isPerfPowerMetricd") & 1) == 0)
  {
    v21 = [v6 objectAtIndexedSubscript:0];
    entryKey = [v21 entryKey];
    v34 = entryKey;
    v35 = v6;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    [v6 objectAtIndexedSubscript:0];
    v25 = v24 = v3;
    entryKey2 = [v25 entryKey];
    [(PLOperator *)self logEntries:v23 withGroupID:entryKey2];

    v3 = v24;
  }

  [(PLProcessMonitorAgent *)self setLastCPUTimeDict:v5];
  currentCachedDate = [(PLProcessMonitorAgent *)self currentCachedDate];
  [(PLProcessMonitorAgent *)self setPreviousCacheDate:currentCachedDate];

  [(PLProcessMonitorAgent *)self setCurrentCachedDate:monotonicDate];
  [(PLProcessMonitorAgent *)self setCurrentCachedTotalCPUTime:v33];

  objc_autoreleasePoolPop(v3);
}

- (id)getFrozenProcesses
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(v26, 0, sizeof(v26));
  if (memorystatus_control() < 1)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __43__PLProcessMonitorAgent_getFrozenProcesses__block_invoke;
      v24 = &__block_descriptor_40_e5_v8__0lu32l8;
      v25 = v9;
      if (getFrozenProcesses_defaultOnce != -1)
      {
        dispatch_once(&getFrozenProcesses_defaultOnce, &block);
      }

      if (getFrozenProcesses_classDebugEnabled == 1)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = __error();
        v12 = strerror(*v11);
        v13 = [v10 stringWithFormat:@"Error: Could not get frozen process list: %s\n", v12, block, v22, v23, v24, v25];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
        lastPathComponent = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent getFrozenProcesses]"];
        [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:976];

        v19 = PLLogCommon(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v8 = 0;
  }

  else
  {
    v3 = LODWORD(v26[0]);
    if (LODWORD(v26[0]))
    {
      v4 = (v26 | 0xC);
      do
      {
        if (*v4)
        {
          v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
          v6 = [MEMORY[0x277CCABB0] numberWithInt:*(v4 - 1)];
          if (v5)
          {
            v7 = v5;
          }

          else
          {
            v7 = @"Unknown Name";
          }

          [v2 setObject:v7 forKey:v6];
        }

        v4 += 40;
        --v3;
      }

      while (v3);
    }

    v8 = v2;
  }

  return v8;
}

void *__43__PLProcessMonitorAgent_getFrozenProcesses__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getFrozenProcesses_classDebugEnabled = result;
  return result;
}

- (id)getProcessesNotInFreezer:(id)freezer withCurrentProcesses:(id)processes
{
  v22 = *MEMORY[0x277D85DE8];
  freezerCopy = freezer;
  processesCopy = processes;
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = freezerCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [processesCopy objectForKeyedSubscript:{v13, v17}];

        if (!v14)
        {
          v15 = [v8 objectForKeyedSubscript:v13];
          [v7 setObject:v15 forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (int)getLedgerIndex:(int64_t)index forKey:(id)key
{
  keyCopy = key;
  if ((ledger() & 0x80000000) == 0)
  {
    v5 = malloc_type_malloc(0, 0x1000040565EDBD2uLL);
    if (v5)
    {
      v6 = v5;
      ledger();
      free(v6);
    }
  }

  return -1;
}

- (int)getFrozenToSwapLedgerIndex:(int64_t)index
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__PLProcessMonitorAgent_getFrozenToSwapLedgerIndex___block_invoke;
  v4[3] = &unk_279A5C600;
  v4[4] = self;
  v4[5] = index;
  if (getFrozenToSwapLedgerIndex__onceToken != -1)
  {
    dispatch_once(&getFrozenToSwapLedgerIndex__onceToken, v4);
  }

  return getFrozenToSwapLedgerIndex__frozenToSwapOffset;
}

void *__52__PLProcessMonitorAgent_getFrozenToSwapLedgerIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getLedgerIndex:*(a1 + 40) forKey:@"frozen_to_swap"];
  getFrozenToSwapLedgerIndex__frozenToSwapOffset = result;
  return result;
}

- (int)getProcDirtyTimeLedgerIndex:(int64_t)index
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__PLProcessMonitorAgent_getProcDirtyTimeLedgerIndex___block_invoke;
  v4[3] = &unk_279A5C600;
  v4[4] = self;
  v4[5] = index;
  if (getProcDirtyTimeLedgerIndex__onceToken != -1)
  {
    dispatch_once(&getProcDirtyTimeLedgerIndex__onceToken, v4);
  }

  return getProcDirtyTimeLedgerIndex__procDirtyTimeOffset;
}

void *__53__PLProcessMonitorAgent_getProcDirtyTimeLedgerIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getLedgerIndex:*(a1 + 40) forKey:@"memorystatus_dirty_time"];
  getProcDirtyTimeLedgerIndex__procDirtyTimeOffset = result;
  return result;
}

- (id)ledgerDataAtIndex:(int)index forPid:(int64_t)pid
{
  v5 = *&index;
  v40 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  if ((ledger() & 0x80000000) != 0)
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_27;
    }

    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (ledgerDataAtIndex_forPid__defaultOnce != -1)
    {
      dispatch_once(&ledgerDataAtIndex_forPid__defaultOnce, block);
    }

    if (ledgerDataAtIndex_forPid__classDebugEnabled != 1)
    {
      goto LABEL_27;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error in ledger info"];
    v12 = MEMORY[0x277D3F178];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent ledgerDataAtIndex:forPid:]"];
    [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1059];

    v17 = PLLogCommon(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

LABEL_26:

    goto LABEL_27;
  }

  v35 = *(&v39 + 1);
  v6 = malloc_type_malloc(48 * *(&v39 + 1), 0x1000040EED21634uLL);
  if (!v6)
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_27;
    }

    v26 = objc_opt_class();
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke_513;
    v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v34[4] = v26;
    if (ledgerDataAtIndex_forPid__defaultOnce_511 != -1)
    {
      dispatch_once(&ledgerDataAtIndex_forPid__defaultOnce_511, v34);
    }

    if (ledgerDataAtIndex_forPid__classDebugEnabled_512 != 1)
    {
      goto LABEL_27;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to allocate ledger entry info"];
    v27 = MEMORY[0x277D3F178];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
    lastPathComponent2 = [v28 lastPathComponent];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent ledgerDataAtIndex:forPid:]"];
    [v27 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:1068];

    v17 = PLLogCommon(v31);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

    goto LABEL_26;
  }

  v7 = v6;
  if ((ledger() & 0x80000000) == 0 && v35 > v5)
  {
    v8 = objc_alloc_init(PLLedgerEntryData);
    v9 = &v7[48 * v5];
    [(PLLedgerEntryData *)v8 setCredit:*(v9 + 1)];
    [(PLLedgerEntryData *)v8 setDebit:*(v9 + 2)];
    [(PLLedgerEntryData *)v8 setBalance:*v9];
    free(v7);
    goto LABEL_28;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke_519;
    v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v33[4] = v18;
    if (ledgerDataAtIndex_forPid__defaultOnce_517 != -1)
    {
      dispatch_once(&ledgerDataAtIndex_forPid__defaultOnce_517, v33);
    }

    if (ledgerDataAtIndex_forPid__classDebugEnabled_518 == 1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not get ledger entry info for pid %ld and frozen to swap index %d and ledger count %lld", pid, v5, v35];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent3 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent ledgerDataAtIndex:forPid:]"];
      [v20 logMessage:v19 fromFile:lastPathComponent3 fromFunction:v23 fromLineNumber:1072];

      v25 = PLLogCommon(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  free(v7);
LABEL_27:
  v8 = 0;
LABEL_28:

  return v8;
}

void *__50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ledgerDataAtIndex_forPid__classDebugEnabled = result;
  return result;
}

void *__50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke_513(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ledgerDataAtIndex_forPid__classDebugEnabled_512 = result;
  return result;
}

void *__50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke_519(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ledgerDataAtIndex_forPid__classDebugEnabled_518 = result;
  return result;
}

- (void)log
{
  [(PLProcessMonitorAgent *)self updateProcessMonitorCache];
  [(PLProcessMonitorAgent *)self logEventIntervalProcessMonitorIntervalUsingCache];
  [(PLProcessMonitorAgent *)self logEventPointMemoryTracking];
  [(PLProcessMonitorAgent *)self logEventIntervalKernelTaskMonitor];

  [(PLProcessMonitorAgent *)self logProcessExit];
}

- (void)logEventPointMemoryTracking
{
  if ([(PLOperator *)self isDebugEnabled])
  {
    v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MemoryTracking"];
    v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
    v29 = 0;
    v28 = 0;
    memset(&stats, 0, sizeof(stats));
    if (malloc_get_all_zones())
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v5 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v5;
        if (logEventPointMemoryTracking_defaultOnce != -1)
        {
          dispatch_once(&logEventPointMemoryTracking_defaultOnce, block);
        }

        if (logEventPointMemoryTracking_classDebugEnabled == 1)
        {
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"error with malloc_get_all_zones"];
          v7 = MEMORY[0x277D3F178];
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
          lastPathComponent = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointMemoryTracking]"];
          [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1107];

          v12 = PLLogCommon(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
      mstats(&v25);
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:v25.bytes_total * 0.0009765625];
      [v4 setObject:v13 forKeyedSubscript:@"HeapTotal"];

      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v25.bytes_used * 0.0009765625];
      [v4 setObject:v14 forKeyedSubscript:@"HeapUsed"];

      v15 = [MEMORY[0x277CCABB0] numberWithDouble:v25.bytes_free * 0.0009765625];
      [v4 setObject:v15 forKeyedSubscript:@"HeapFree"];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v16 = objc_opt_class();
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_541;
        v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v24[4] = v16;
        if (logEventPointMemoryTracking_defaultOnce_539 != -1)
        {
          dispatch_once(&logEventPointMemoryTracking_defaultOnce_539, v24);
        }

        if (logEventPointMemoryTracking_classDebugEnabled_540 == 1)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"heap: total=%f used=%f free=%f", v25.bytes_total * 0.0009765625, v25.bytes_used * 0.0009765625, v25.bytes_free * 0.0009765625];
          v18 = MEMORY[0x277D3F178];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
          lastPathComponent2 = [v19 lastPathComponent];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointMemoryTracking]"];
          [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:1130];

          v23 = PLLogCommon(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      [(PLOperator *)self logEntry:v4];
    }
  }
}

void *__52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointMemoryTracking_classDebugEnabled = result;
  return result;
}

void *__52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_529(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointMemoryTracking_classDebugEnabled_528 = result;
  return result;
}

void *__52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_535(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointMemoryTracking_classDebugEnabled_534 = result;
  return result;
}

void *__52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_541(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointMemoryTracking_classDebugEnabled_540 = result;
  return result;
}

- (void)logEventPointProcessSnapshot
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = proc_listpids(1u, 0, 0, 0);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    v5 = v3;
    v6 = malloc_type_malloc(v3, 0x100004052888210uLL);
    if (v6)
    {
      v7 = v6;
      selfCopy = self;
      memset(v6, 255, v5);
      v45 = v7;
      v8 = proc_listpids(1u, 0, v7, v4);
      v9 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ProcessSnapshot"];
      v10 = objc_opt_new();
      v11 = objc_opt_new();
      if (v8 >= 4)
      {
        if (v8 >> 2 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v8 >> 2;
        }

        v13 = 0x277D3F000uLL;
        do
        {
          v15 = *v7++;
          v14 = v15;
          if (v15 >= 1)
          {
            memset(buffer, 0, sizeof(buffer));
            if (proc_pidinfo(v14, 18, 0, buffer, 192) == 192 && DWORD1(buffer[0]) != 5)
            {
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              *v58 = 0u;
              v59 = 0u;
              if (!proc_pid_rusage(v14, 0, v58))
              {
                v16 = [objc_alloc(*(v13 + 400)) initWithEntryKey:v9];
                if (v16)
                {
                  [MEMORY[0x277CCABB0] numberWithInt:v14];
                  v18 = v17 = v13;
                  [v16 setObject:v18 forKeyedSubscript:@"PID"];

                  v13 = v17;
                  v19 = [PLUtilities bundleIDFromPid:v14];
                  [v16 setObject:v19 forKeyedSubscript:@"BundleID"];

                  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v62 + 1)];
                  [v16 setObject:v20 forKeyedSubscript:@"PhyFootprint"];

                  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
                  [v16 setObject:v21 forKeyedSubscript:@"StartOrder"];

                  [v10 addObject:v16];
                  v22 = [v16 objectForKeyedSubscript:@"StartOrder"];
                  [v11 addObject:v22];
                }
              }
            }
          }

          --v12;
        }

        while (v12);
      }

      v43 = v9;
      v23 = [v11 count];
      v24 = objc_opt_new();
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v25 = v11;
      v26 = [v25 countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v51;
        do
        {
          v29 = 0;
          v30 = v23;
          do
          {
            if (*v51 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v50 + 1) + 8 * v29);
            v23 = (v30 - 1);
            v32 = [MEMORY[0x277CCABB0] numberWithInt:v30];
            [v24 setObject:v32 forKeyedSubscript:v31];

            ++v29;
            v30 = v23;
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v50 objects:v57 count:16];
        }

        while (v27);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v33 = v42;
      v34 = [v33 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v47;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v47 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v46 + 1) + 8 * i);
            v39 = [v38 objectForKeyedSubscript:@"StartOrder"];
            v40 = [v24 objectForKeyedSubscript:v39];
            [v38 setObject:v40 forKeyedSubscript:@"StartOrder"];
          }

          v35 = [v33 countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v35);
      }

      v54 = v43;
      v55 = v33;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      [(PLOperator *)selfCopy logEntries:v41 withGroupID:v43];

      free(v45);
    }
  }
}

- (void)logProcessExit
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void *__39__PLProcessMonitorAgent_logProcessExit__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ProcessExitSummaryRowThreshold"];
  logProcessExit_objectForKey = result;
  return result;
}

void *__39__PLProcessMonitorAgent_logProcessExit__block_invoke_553(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ThresholdToSkipAppExitDetail"];
  logProcessExit_objectForKey_552 = result;
  return result;
}

void *__39__PLProcessMonitorAgent_logProcessExit__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ThresholdToSkipProcessExitDetail"];
  logProcessExit_objectForKey_555 = result;
  return result;
}

- (void)logEventPointProcessExit:(id)exit excludeProcesses:(id)processes withStats:(id *)stats withDate:(id)date withNowInSec:(unint64_t)sec
{
  v66 = *MEMORY[0x277D85DE8];
  exitCopy = exit;
  processesCopy = processes;
  dateCopy = date;
  v40 = exitCopy;
  allKeys = [exitCopy allKeys];
  v12 = [allKeys sortedArrayUsingComparator:&__block_literal_global_558];

  v45 = objc_opt_new();
  v44 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ProcessExit"];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v12;
  v41 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v41)
  {
    v39 = *v59;
    v13 = 0x277CCA000uLL;
    do
    {
      v14 = 0;
      do
      {
        if (*v59 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v14;
        v15 = [v40 objectForKeyedSubscript:*(*(&v58 + 1) + 8 * v14)];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v47 = v15;
        v50 = [v47 countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v50)
        {
          v49 = *v55;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v55 != v49)
              {
                objc_enumerationMutation(v47);
              }

              v17 = *(*(&v54 + 1) + 8 * i);
              v18 = objc_autoreleasePoolPush();
              v19 = (stats->var1 + 59 * [v17 intValue]);
              v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_array_get_string(stats->var0, *v19)}];
              if (([processesCopy containsObject:v20] & 1) == 0)
              {
                v21 = [dateCopy dateByAddingTimeInterval:(sec - *(v19 + 3)) / -1000.0];
                v22 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v44 withDate:v21];
                v23 = [*(v13 + 2992) numberWithInt:v19[5]];
                [v22 setObject:v23 forKeyedSubscript:@"PID"];

                v24 = *v19;
                if (xpc_array_get_count(stats->var0) > v24)
                {
                  [v22 setObject:v20 forKeyedSubscript:@"ProcessName"];
                }

                v25 = *(v19 + 3);
                v26 = *(v19 + 1);
                if (v25 > v26 && v26 != 0)
                {
                  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v25 - v26];
                  [v22 setObject:v28 forKeyedSubscript:@"timeSinceSpawn"];
                }

                if (v19[6] != -1)
                {
                  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
                  [v22 setObject:v29 forKeyedSubscript:@"lastTimeToRelaunch"];
                }

                v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v19 + 28)];
                [v22 setObject:v30 forKeyedSubscript:@"ReasonNamespace"];

                v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v19 + 29)];
                [v22 setObject:v31 forKeyedSubscript:@"ReasonCode"];

                v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v19 + 49)];
                [v22 setObject:v32 forKeyedSubscript:@"JetsamPriority"];

                [v45 addObject:v22];
              }

              if ([v20 hasPrefix:@"UIKitApplication:"])
              {
                v33 = [v20 stringByReplacingOccurrencesOfString:@"UIKitApplication:" withString:&stru_287103958];

                v34 = [v33 rangeOfString:@"["];
                if (v34 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v35 = [v33 substringToIndex:v34];
                  goto LABEL_28;
                }
              }

              else
              {
                if ([v20 hasPrefix:@"application."])
                {
                  v35 = [PLUtilities cleanLaunchdApplicationMacOS:v20];
                  v33 = v20;
LABEL_28:

                  v33 = v35;
                  goto LABEL_30;
                }

                v33 = v20;
              }

LABEL_30:
              if (([v33 containsString:@"/"] & 1) == 0)
              {
                if (v19[6] != -1)
                {
                  v53 = v33;
                  AnalyticsSendEventLazy();
                }

                v52 = v33;
                AnalyticsSendEventLazy();
                v51 = v52;
                AnalyticsSendEventLazy();
              }

              objc_autoreleasePoolPop(v18);
              v13 = 0x277CCA000;
            }

            v50 = [v47 countByEnumeratingWithState:&v54 objects:v64 count:16];
          }

          while (v50);
        }

        v14 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v41);
  }

  if ([v45 count])
  {
    v62 = v44;
    v63 = v45;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    [(PLOperator *)self logEntries:v36 withGroupID:v44];
  }
}

id __99__PLProcessMonitorAgent_logEventPointProcessExit_excludeProcesses_withStats_withDate_withNowInSec___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 40) + 55) == -1)
  {
    v3 = @"N/A";
  }

  else
  {
    v2 = [PLUtilities processNameForPid:?];
    v3 = v2;
    if (!v2 || [(__CFString *)v2 isEqualToString:&stru_287103958])
    {

      v3 = @"UNKNOWN";
    }
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  [v4 setObject:v6 forKeyedSubscript:@"procname"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(v5 + 8) + 24)];
  [v4 setObject:v7 forKeyedSubscript:@"time_to_relaunch_ms"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(v5 + 8) + 51)];
  [v4 setObject:v8 forKeyedSubscript:@"launch_reason"];

  v9 = PLLogCommon([v4 setObject:v3 forKeyedSubscript:@"launch_instigating_process"]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __99__PLProcessMonitorAgent_logEventPointProcessExit_excludeProcesses_withStats_withDate_withNowInSec___block_invoke_2_cold_1();
  }

  return v4;
}

id __99__PLProcessMonitorAgent_logEventPointProcessExit_excludeProcesses_withStats_withDate_withNowInSec___block_invoke_593(uint64_t a1)
{
  v2 = [PLUtilities intervalPeakCADictionaryForLaunchdName:*(a1 + 32) intervalMaxKB:*(*(a1 + 40) + 41)];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  [v2 setObject:v3 forKeyedSubscript:@"is_uikit_app"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  [v2 setObject:v4 forKeyedSubscript:@"is_mac_app"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(*(a1 + 40) + 28)];
  [v2 setObject:v5 forKeyedSubscript:@"exit_reason_namespace"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(a1 + 40) + 29)];
  [v2 setObject:v6 forKeyedSubscript:@"exit_reason_code"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 40) + 37)];
  [v2 setObject:v7 forKeyedSubscript:@"lifetime_peak_footprint_kb"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(*(a1 + 40) + 49)];
  [v2 setObject:v8 forKeyedSubscript:@"jetsam_priority"];

  return v2;
}

- (id)getAllProcessExitsInLastHour
{
  v23 = *MEMORY[0x277D85DE8];
  [(PLProcessMonitorAgent *)self logProcessExit];
  v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [monotonicDate dateByAddingTimeInterval:-3600.0];
  v6 = MEMORY[0x277CCACA8];
  [v5 timeIntervalSince1970];
  v8 = v7;
  [monotonicDate timeIntervalSince1970];
  v10 = [v6 stringWithFormat:@"SELECT ID, %@, %@, %@, timestamp from %@ WHERE timestamp > %f AND timestamp <= %f", @"ProcessName", @"ReasonNamespace", @"ReasonCode", v3, v8, v9];
  v11 = PLLogProcessMonitor(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_INFO, "LastHourKills Query is %@", buf, 0xCu);
  }

  v12 = objc_msgSend_storage(self);
  connection = [v12 connection];
  v14 = [connection performQuery:v10];

  v16 = PLLogProcessMonitor(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v14 count];
    *buf = 134218242;
    v20 = v17;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_25EE51000, v16, OS_LOG_TYPE_INFO, "LastHourKills Result Count is %lu and result %@", buf, 0x16u);
  }

  return v14;
}

- (id)getProcessExits:(id)exits
{
  v37 = *MEMORY[0x277D85DE8];
  exitsCopy = exits;
  v5 = exitsCopy;
  if (!exitsCopy)
  {
    v28 = PLLogProcessMonitor(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [PLProcessMonitorAgent getProcessExits:];
    }

    goto LABEL_14;
  }

  v6 = [exitsCopy objectForKeyedSubscript:@"lastNHours"];
  longLongValue = [v6 longLongValue];

  v8 = [v5 objectForKeyedSubscript:@"ReasonCode"];
  longLongValue2 = [v8 longLongValue];

  v10 = [v5 objectForKeyedSubscript:@"ReasonNamespace"];
  longLongValue3 = [v10 longLongValue];

  if (longLongValue > 0x18 || longLongValue2 < 0 || longLongValue3 < 0)
  {
    v28 = PLLogProcessMonitor(v12);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v32 = longLongValue;
      v33 = 2048;
      v34 = longLongValue2;
      v35 = 2048;
      v36 = longLongValue3;
      _os_log_error_impl(&dword_25EE51000, v28, OS_LOG_TYPE_ERROR, "Invalid payload sent to query lastNHours %lld reasonCode %lld reasonNamespace %lld", buf, 0x20u);
    }

LABEL_14:
    v29 = 0;
    goto LABEL_15;
  }

  v13 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v15 = [monotonicDate dateByAddingTimeInterval:longLongValue * -3600.0];
  v16 = MEMORY[0x277CCACA8];
  [v15 timeIntervalSince1970];
  v18 = v17;
  [monotonicDate timeIntervalSince1970];
  v20 = [v16 stringWithFormat:@"SELECT %@ as LaunchdName, SUM(0s-5s + 10s-60s + 5s-10s + 60s+ + UnknownDuration) as count from %@ WHERE %@ = %lld AND %@ = %lld AND timestamp > %f AND timestamp <= %f GROUP BY %@", @"ProcessName", v13, @"ReasonNamespace", longLongValue3, @"ReasonCode", longLongValue2, v18, v19, @"ProcessName"];;
  v21 = PLLogProcessMonitor(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v32 = v20;
    _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_INFO, "MemoryKills Query is %@", buf, 0xCu);
  }

  v22 = objc_msgSend_storage(self);
  connection = [v22 connection];
  v24 = [connection performQuery:v20];

  v26 = PLLogProcessMonitor(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [v24 count];
    *buf = 134218242;
    v32 = v27;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&dword_25EE51000, v26, OS_LOG_TYPE_INFO, "MemoryKills Result Count is %lu and result %@", buf, 0x16u);
  }

  v28 = v24;
  v29 = v28;
LABEL_15:

  return v29;
}

- (void)logEventPointSystemFreezerStats
{
  v35 = 0;
  v33 = 0;
  v34 = 4;
  v32 = 8;
  v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SystemFreezerStats"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  v5 = MEMORY[0x277CCABB0];
  if (sysctlbyname("kern.memorystatus_freeze_budget_pages_remaining", &v33, &v32, 0, 0))
  {
    v6 = -1;
  }

  else
  {
    v6 = v33;
  }

  v7 = [v5 numberWithUnsignedLongLong:v6];
  [v4 setObject:v7 forKeyedSubscript:@"RemainingPages"];

  v8 = MEMORY[0x277CCABB0];
  if (sysctlbyname("kern.memorystatus_thaw_count", &v35, &v34, 0, 0))
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v35;
  }

  v10 = [v8 numberWithUnsignedInt:v9];
  [v4 setObject:v10 forKeyedSubscript:@"ThawCount"];

  v11 = MEMORY[0x277CCABB0];
  if (sysctlbyname("kern.memorystatus_freezer_thaw_percentage", &v33, &v32, 0, 0))
  {
    v12 = -1;
  }

  else
  {
    v12 = v33;
  }

  v13 = [v11 numberWithUnsignedLongLong:v12];
  [v4 setObject:v13 forKeyedSubscript:@"ThawPercentage"];

  v14 = sysctlbyname("kern.memorystatus_freeze_pageouts", &v33, &v32, 0, 0);
  v15 = v33;
  if (v14)
  {
    v15 = -1;
  }

  if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [v4 setObject:&unk_287146348 forKeyedSubscript:@"ThawsPerGB"];
  }

  else
  {
    v16 = vcvtd_n_f64_u64(*MEMORY[0x277D85F80] * v15, 0x1EuLL);
    v17 = MEMORY[0x277CCABB0];
    v18 = sysctlbyname("kern.memorystatus_thaw_count_since_boot", &v33, &v32, 0, 0);
    v19 = v33;
    if (v18)
    {
      v19 = 1.84467441e19;
    }

    v20 = [v17 numberWithDouble:v19 / v16];
    [v4 setObject:v20 forKeyedSubscript:@"ThawsPerGB"];
  }

  if (sysctlbyname("kern.memorystatus_freezer_refreeze_count", &v33, &v32, 0, 0))
  {
    v21 = -1;
  }

  else
  {
    v21 = v33;
  }

  if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    [v4 setObject:&unk_287146348 forKeyedSubscript:@"RefreezeAvgBytes"];
  }

  else
  {
    v22 = sysctlbyname("kern.memorystatus_freezer_bytes_refrozen", &v33, &v32, 0, 0);
    v23 = v33;
    if (v22)
    {
      v23 = -1;
    }

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23 / v21];
    [v4 setObject:v24 forKeyedSubscript:@"RefreezeAvgBytes"];
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 32;
  v25 = sysctlbyname("vm.swapusage", &v30, &v29, 0, 0);
  if (!v25)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
    [v4 setObject:v26 forKeyedSubscript:@"SwapUsed"];

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
    [v4 setObject:v27 forKeyedSubscript:@"SwapTotal"];
  }

  v28 = PLLogProcessMonitor(v25);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [PLProcessMonitorAgent logEventPointSystemFreezerStats];
  }

  [(PLOperator *)self logEntry:v4];
}

- (void)logEventPointFreezerStats
{
  v33[1] = *MEMORY[0x277D85DE8];
  getFrozenProcesses = [(PLProcessMonitorAgent *)self getFrozenProcesses];
  v4 = getFrozenProcesses;
  if (getFrozenProcesses && [getFrozenProcesses count])
  {
    allKeys = [v4 allKeys];
    v6 = [allKeys objectAtIndexedSubscript:0];
    v7 = -[PLProcessMonitorAgent getFrozenToSwapLedgerIndex:](self, "getFrozenToSwapLedgerIndex:", [v6 intValue]);

    if (v7 == -1)
    {
      v11 = PLLogProcessMonitor(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PLProcessMonitorAgent logEventPointFreezerStats];
      }
    }

    else
    {
      v9 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"FreezerStats"];
      v10 = objc_opt_new();
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __50__PLProcessMonitorAgent_logEventPointFreezerStats__block_invoke;
      v28[3] = &unk_279A5D808;
      v28[4] = self;
      v31 = v7;
      v11 = v9;
      v29 = v11;
      v12 = v10;
      v30 = v12;
      [v4 enumerateKeysAndObjectsUsingBlock:v28];
      if ([v12 count])
      {
        v32 = v11;
        v33[0] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
        [(PLOperator *)self logEntries:v13 withGroupID:v11];
      }

      lastFreezerProcs = [(PLProcessMonitorAgent *)self lastFreezerProcs];

      if (lastFreezerProcs)
      {
        lastFreezerProcs2 = [(PLProcessMonitorAgent *)self lastFreezerProcs];
        v16 = [(PLProcessMonitorAgent *)self getProcessesNotInFreezer:lastFreezerProcs2 withCurrentProcesses:v4];
        [(PLProcessMonitorAgent *)self setDiffFreezerProcs:v16];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v17 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __50__PLProcessMonitorAgent_logEventPointFreezerStats__block_invoke_2;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v17;
          if (logEventPointFreezerStats_defaultOnce != -1)
          {
            dispatch_once(&logEventPointFreezerStats_defaultOnce, block);
          }

          if (logEventPointFreezerStats_classDebugEnabled == 1)
          {
            v18 = MEMORY[0x277CCACA8];
            diffFreezerProcs = [(PLProcessMonitorAgent *)self diffFreezerProcs];
            v20 = [v18 stringWithFormat:@"Processes that moved out of freezer %@", diffFreezerProcs];

            v21 = MEMORY[0x277D3F178];
            v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
            lastPathComponent = [v22 lastPathComponent];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointFreezerStats]"];
            [v21 logMessage:v20 fromFile:lastPathComponent fromFunction:v24 fromLineNumber:1499];

            v26 = PLLogCommon(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }
      }

      [(PLProcessMonitorAgent *)self setLastFreezerProcs:v4];
    }
  }
}

void __50__PLProcessMonitorAgent_logEventPointFreezerStats__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = [a2 intValue];
  v6 = [*(a1 + 32) ledgerDataAtIndex:*(a1 + 56) forPid:v5];
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "credit") / 1024}];
    [v7 setObject:v8 forKeyedSubscript:@"Credits"];

    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "debit") / 1024}];
    [v7 setObject:v9 forKeyedSubscript:@"Debits"];

    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "balance") / 1024}];
    [v7 setObject:v10 forKeyedSubscript:@"Balance"];

    [v7 setObject:v14 forKeyedSubscript:@"ProcessName"];
    v11 = [MEMORY[0x277CCABB0] numberWithLong:v5];
    [v7 setObject:v11 forKeyedSubscript:@"PID"];

    v12 = [PLUtilities bundleIDFromPid:v5];
    [v7 setObject:v12 forKeyedSubscript:@"BundleID"];

    v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 40) withRawData:v7];
    [*(a1 + 48) addObject:v13];
  }
}

void *__50__PLProcessMonitorAgent_logEventPointFreezerStats__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointFreezerStats_classDebugEnabled = result;
  return result;
}

- (void)logEventPointFreezerDemotion
{
  v24[1] = *MEMORY[0x277D85DE8];
  diffFreezerProcs = [(PLProcessMonitorAgent *)self diffFreezerProcs];

  if (diffFreezerProcs)
  {
    v4 = objc_opt_new();
    v5 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"FreezerDemotion"];
    diffFreezerProcs2 = [(PLProcessMonitorAgent *)self diffFreezerProcs];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke_642;
    v19 = &unk_279A5C140;
    v7 = v5;
    v20 = v7;
    v8 = v4;
    v21 = v8;
    [diffFreezerProcs2 enumerateKeysAndObjectsUsingBlock:&v16];

    if ([v8 count])
    {
      v23 = v7;
      v24[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      [(PLOperator *)self logEntries:v9 withGroupID:v7];
    }

LABEL_5:
    return;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (logEventPointFreezerDemotion_defaultOnce != -1)
    {
      dispatch_once(&logEventPointFreezerDemotion_defaultOnce, block);
    }

    if (logEventPointFreezerDemotion_classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"No processes were evicted out of freezer"];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointFreezerDemotion]"];
      [v11 logMessage:v8 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:1508];

      v7 = PLLogCommon(v15);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_5;
    }
  }
}

void *__53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointFreezerDemotion_classDebugEnabled = result;
  return result;
}

void __53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke_642(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 intValue];
  if (![PLUtilities getJetsamPriority:v5])
  {
    v6 = objc_opt_new();
    [v6 setObject:v10 forKeyedSubscript:@"ProcessName"];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [v6 setObject:v7 forKeyedSubscript:@"PID"];

    v8 = [PLUtilities bundleIDFromPid:v5];
    [v6 setObject:v8 forKeyedSubscript:@"BundleID"];

    v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withRawData:v6];
    [*(a1 + 40) addObject:v9];
  }
}

- (void)logEventPointSharedCacheReslid:(int)reslid
{
  v3 = *&reslid;
  v8 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SharedCacheReslid"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v6 = [PLUtilities processNameForPid:v3];
  [v5 setObject:v6 forKeyedSubscript:@"ProcessName"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  [v5 setObject:v7 forKeyedSubscript:@"PID"];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventPointAppResumePredictions:(id)predictions
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (predictions)
  {
    v4 = MEMORY[0x277CBEAA8];
    predictionsCopy = predictions;
    v6 = [v4 now];
    convertFromSystemToMonotonic = [v6 convertFromSystemToMonotonic];

    v8 = [predictionsCopy objectForKeyedSubscript:@"appResumePredictions"];

    v9 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppResumePredictions"];
    array = [MEMORY[0x277CBEB18] array];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __59__PLProcessMonitorAgent_logEventPointAppResumePredictions___block_invoke;
    v18 = &unk_279A5D830;
    v11 = v9;
    v19 = v11;
    v12 = convertFromSystemToMonotonic;
    v20 = v12;
    v13 = array;
    v21 = v13;
    [v8 enumerateObjectsUsingBlock:&v15];
    if ([v13 count])
    {
      v22 = v11;
      v23[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      [(PLOperator *)self logEntries:v14 withGroupID:v11];
    }
  }
}

void __59__PLProcessMonitorAgent_logEventPointAppResumePredictions___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];

  [v5 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v5];
}

- (void)logEventPointAppNotFrozen:(id)frozen
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (frozen)
  {
    v4 = MEMORY[0x277CBEAA8];
    frozenCopy = frozen;
    v6 = [v4 now];
    convertFromSystemToMonotonic = [v6 convertFromSystemToMonotonic];

    v8 = [frozenCopy objectForKeyedSubscript:@"Applications"];

    v9 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppNotFrozen"];
    array = [MEMORY[0x277CBEB18] array];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __51__PLProcessMonitorAgent_logEventPointAppNotFrozen___block_invoke;
    v18 = &unk_279A5D830;
    v11 = v9;
    v19 = v11;
    v12 = convertFromSystemToMonotonic;
    v20 = v12;
    v13 = array;
    v21 = v13;
    [v8 enumerateObjectsUsingBlock:&v15];
    if ([v13 count])
    {
      v22 = v11;
      v23[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      [(PLOperator *)self logEntries:v14 withGroupID:v11];
    }
  }
}

void __51__PLProcessMonitorAgent_logEventPointAppNotFrozen___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];

  [v5 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v5];
}

- (void)logEventPointAppNapEnabled
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)getJetsamSnapshotEntries:(jetsam_snapshot *)entries
{
  if (entries)
  {
    v5 = objc_opt_new();
    v6 = v5;
    if (entries->var4)
    {
      v7 = 0;
      var1 = entries->var5[0].var1;
      do
      {
        v9 = [(PLProcessMonitorAgent *)self getProcessName:var1];
        if (v9)
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(var1 + 204)];
          [v6 setObject:v10 forKeyedSubscript:v9];
        }

        ++v7;
        var1 += 288;
      }

      while (entries->var4 > v7);
    }

    v11 = PLLogProcessMonitor(v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLProcessMonitorAgent getJetsamSnapshotEntries:];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fetchSnapshotWithFlags:(unsigned int)flags
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = memorystatus_control();
  if ((v4 & 0x80000000) != 0)
  {
    v7 = PLLogProcessMonitor(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLProcessMonitorAgent fetchSnapshotWithFlags:];
    }

    goto LABEL_20;
  }

  v5 = v4;
  if (!v4)
  {
    v7 = PLLogProcessMonitor(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLProcessMonitorAgent fetchSnapshotWithFlags:];
    }

    goto LABEL_20;
  }

  v6 = v4;
  if (v4 >= 0xC9 && __ROR8__(0x8E38E38E38E38E39 * (v4 - 200), 5) >= 0xE38E38E38E38E4uLL)
  {
    v7 = PLLogProcessMonitor(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLProcessMonitorAgent fetchSnapshotWithFlags:];
    }

LABEL_20:

LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  v8 = malloc_type_malloc(v4, 0xBEEDDA51uLL);
  if (!v8)
  {
    v7 = PLLogProcessMonitor(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLProcessMonitorAgent fetchSnapshotWithFlags:];
    }

    goto LABEL_20;
  }

  v9 = v8;
  v10 = memorystatus_control();
  if (v10 != v5)
  {
    v16 = PLLogProcessMonitor(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PLProcessMonitorAgent fetchSnapshotWithFlags:];
    }

    free(v9);
    goto LABEL_21;
  }

  v11 = (v5 - 200) / 0x120;
  if (v11 < v9[24])
  {
    v12 = PLLogProcessMonitor(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v9[24];
      v17 = 134218240;
      v18 = (v6 - 200) / 0x120uLL;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&dword_25EE51000, v12, OS_LOG_TYPE_INFO, "Got fewer jetsam entries from the kernel; received %zu, expected %zu", &v17, 0x16u);
    }

    v9[24] = v11;
  }

  v14 = [(PLProcessMonitorAgent *)self getJetsamSnapshotEntries:v9];
  free(v9);
LABEL_22:

  return v14;
}

- (id)getProcessName:(char *)name
{
  *&v9[4071] = *MEMORY[0x277D85DE8];
  bzero(v9, 0xFDFuLL);
  v4 = *(name + 1);
  v7[0] = *name;
  v7[1] = v4;
  v8 = name[32];
  if (LOBYTE(v7[0]))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
  }

  else
  {
    v5 = @"Unknown";
  }

  return v5;
}

- (id)getJSEIdleTime
{
  v2 = [(PLProcessMonitorAgent *)self fetchSnapshotWithFlags:0];
  v3 = PLLogProcessMonitor(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLProcessMonitorAgent getJetsamSnapshotEntries:];
  }

  return v2;
}

- (void)logProcDirtyStats
{
  OUTLINED_FUNCTION_3_2(self, a2);
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

id __42__PLProcessMonitorAgent_logProcDirtyStats__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [PLUtilities binaryPathForPid:*(a1 + 56)];
  v4 = [v3 lastPathComponent];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Unknown";
  }

  [v2 setObject:v5 forKeyedSubscript:@"daemon_procname"];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v2 setObject:v6 forKeyedSubscript:@"time_dirty_seconds"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  [v2 setObject:v7 forKeyedSubscript:@"lifetime_seconds"];

  if (v4)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v4];

    if (v8)
    {
      v9 = [*(a1 + 32) objectForKeyedSubscript:v4];
      [v2 setObject:v9 forKeyedSubscript:@"jse_idle_time"];
    }
  }

  v10 = *(a1 + 60);
  if (!v10)
  {
    v11 = *(a1 + 48);
    if (v11 <= 0.0)
    {
      v10 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40) / v11 * 100.0];
      [v2 setObject:v12 forKeyedSubscript:@"percent_dirty"];

      v10 = *(a1 + 60);
    }
  }

  v13 = [MEMORY[0x277CCABB0] numberWithShort:v10];
  [v2 setObject:v13 forKeyedSubscript:@"collection_status"];

  v15 = PLLogCommon(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __42__PLProcessMonitorAgent_logProcDirtyStats__block_invoke_cold_1();
  }

  return v2;
}

- (void)logEventForwardAppResumeInferredCarry:(id)carry
{
  if (carry)
  {
    v4 = *MEMORY[0x277D3F5D0];
    carryCopy = carry;
    v9 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:v4 andName:@"AppResumeInferredCarry"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:carryCopy];

    [(PLOperator *)self logEntry:v6];
    dictionary = [v6 dictionary];
    entryDate = [v6 entryDate];
    [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"AppResumeInferredCarry" data:dictionary date:entryDate];
  }
}

- (void)logEventBackwardProcessExitHistogram:(id)histogram withStats:(id *)stats withDate:(id)date
{
  v60 = *MEMORY[0x277D85DE8];
  histogramCopy = histogram;
  dateCopy = date;
  context = objc_autoreleasePoolPush();
  v44 = objc_opt_new();
  v47 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v9 = histogramCopy;
  v42 = dateCopy;
  v45 = v9;
  v48 = [v9 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v48)
  {
    v46 = *v52;
    do
    {
      v10 = 0;
      do
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v51 + 1) + 8 * v10);
        v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v47 withDate:dateCopy];
        v13 = [v9 objectForKey:v11];
        labelIdx = [v11 labelIdx];
        if (xpc_array_get_count(stats->var0) > labelIdx)
        {
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_array_get_string(stats->var0, objc_msgSend(v11, "labelIdx"))}];
          [v12 setObject:v15 forKeyedSubscript:@"ProcessName"];

          if ([v11 lastTTR] != -1)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v11, "lastTTR")}];
            [v12 setObject:v16 forKeyedSubscript:@"lastTimeToRelaunch"];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v11, "exitReasonNamespace")}];
          [v12 setObject:v17 forKeyedSubscript:@"ReasonNamespace"];

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "exitReasonCode")}];
          [v12 setObject:v18 forKeyedSubscript:@"ReasonCode"];

          v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "duration_0")}];
          [v12 setObject:v19 forKeyedSubscript:@"0s-5s"];

          v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "duration_5")}];
          [v12 setObject:v20 forKeyedSubscript:@"5s-10s"];

          v21 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "duration_10")}];
          [v12 setObject:v21 forKeyedSubscript:@"10s-60s"];

          v22 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "duration_60_above")}];
          [v12 setObject:v22 forKeyedSubscript:@"60s+"];

          v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "duration_unknown")}];
          [v12 setObject:v23 forKeyedSubscript:@"UnknownDuration"];

          [v44 addObject:v12];
LABEL_10:
          v9 = v45;
          goto LABEL_18;
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v24 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __81__PLProcessMonitorAgent_logEventBackwardProcessExitHistogram_withStats_withDate___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v24;
          if (logEventBackwardProcessExitHistogram_withStats_withDate__defaultOnce != -1)
          {
            dispatch_once(&logEventBackwardProcessExitHistogram_withStats_withDate__defaultOnce, block);
          }

          if (logEventBackwardProcessExitHistogram_withStats_withDate__classDebugEnabled == 1)
          {
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: process exit buffer label index out of range."];
            v26 = MEMORY[0x277D3F178];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
            lastPathComponent = [v27 lastPathComponent];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventBackwardProcessExitHistogram:withStats:withDate:]"];
            [v26 logMessage:v25 fromFile:lastPathComponent fromFunction:v29 fromLineNumber:1824];

            v31 = PLLogCommon(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v58 = v25;
              _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            dateCopy = v42;
            goto LABEL_10;
          }
        }

LABEL_18:

        ++v10;
      }

      while (v48 != v10);
      v48 = [v9 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v48);
  }

  if ([v44 count])
  {
    v55 = v47;
    v56 = v44;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    [(PLOperator *)self logEntries:v32 withGroupID:v47];
  }

  self->_processExitSummaryCount += [v44 count];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v33 = objc_opt_class();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __81__PLProcessMonitorAgent_logEventBackwardProcessExitHistogram_withStats_withDate___block_invoke_682;
    v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v49[4] = v33;
    if (logEventBackwardProcessExitHistogram_withStats_withDate__defaultOnce_680 != -1)
    {
      dispatch_once(&logEventBackwardProcessExitHistogram_withStats_withDate__defaultOnce_680, v49);
    }

    if (logEventBackwardProcessExitHistogram_withStats_withDate__classDebugEnabled_681 == 1)
    {
      context = [MEMORY[0x277CCACA8] stringWithFormat:@"processExitSummaryCount = %d\n", self->_processExitSummaryCount, context];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent2 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventBackwardProcessExitHistogram:withStats:withDate:]"];
      [v35 logMessage:context fromFile:lastPathComponent2 fromFunction:v38 fromLineNumber:1849];

      v40 = PLLogCommon(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      dateCopy = v42;
      v9 = v45;
    }
  }

  objc_autoreleasePoolPop(context);
}

void *__81__PLProcessMonitorAgent_logEventBackwardProcessExitHistogram_withStats_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardProcessExitHistogram_withStats_withDate__classDebugEnabled = result;
  return result;
}

void *__81__PLProcessMonitorAgent_logEventBackwardProcessExitHistogram_withStats_withDate___block_invoke_682(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardProcessExitHistogram_withStats_withDate__classDebugEnabled_681 = result;
  return result;
}

- (id)processMonitorMultiKeyFromProcessID:(int)d
{
  v3 = *&d;
  v22 = *MEMORY[0x277D85DE8];
  if (proc_name(d, buffer, 0x40u) < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
  }

  v6 = [PLUtilities bundleIDFromPid:v3];
  v7 = [PLUtilities pUUIDForPid:v3];
  if (!v6)
  {
    v8 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginExecutableName" withValue:v5 withComparisonOperation:0];
    v9 = objc_msgSend_storage(self);
    v20 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v11 = [v9 lastEntryForKey:@"PLApplicationAgent_EventNone_AllPlugins" withComparisons:v10 isSingleton:1];

    if (v11)
    {
      v6 = [v11 objectForKeyedSubscript:@"PluginId"];
    }

    else
    {
      v6 = 0;
    }
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{v3, @"PID"}];
  v19[0] = v12;
  v18[1] = @"ProcessName";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v19[1] = null;
  v18[2] = @"BundleID";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v19[2] = null2;
  v18[3] = @"PUUID";
  if (v7)
  {
    [v7 UUIDString];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v15 = ;
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  if (v6)
  {
    if (v5)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v5)
    {
      goto LABEL_18;
    }
  }

LABEL_18:

  return v16;
}

- (void)logEventIntervalProcessMonitorIntervalUsingCache
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (int)get_kthread_list:(unint64_t *)get_kthread_list
{
  v24 = 0u;
  memset(buffer, 0, sizeof(buffer));
  proc_pidinfo(0, 4, 0, buffer, 96);
  v4 = DWORD1(v24);
  v5 = 8 * SDWORD1(v24);
  v6 = v5 + 120;
  v7 = malloc_type_malloc(v5 + 120, 0xE68BAF4DuLL);
  v8 = proc_pidinfo(0, 28, 0, v7, v5 + 120);
  if (v8)
  {
    v9 = v8;
    if (v8 == v5)
    {
      *get_kthread_list = v7;
    }

    else
    {
      if (v8 >= v5)
      {
        if (v8 <= v5)
        {
          return 0;
        }

        if (v8 >= v6)
        {
          *get_kthread_list = v7;
          return v6 >> 3;
        }

        v18 = v8;
        v19 = v7;
        v20 = 4293379919;
      }

      else
      {
        v18 = v8;
        v19 = v7;
        v20 = 2272517343;
      }

      *get_kthread_list = malloc_type_realloc(v19, v18, v20);
      return v9 / 8;
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLProcessMonitorAgent_get_kthread_list___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (get_kthread_list__defaultOnce != -1)
      {
        dispatch_once(&get_kthread_list__defaultOnce, block);
      }

      if (get_kthread_list__classDebugEnabled == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"proc_pidinfo(PROC_PIDLISTTHREADIDS) failed"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent get_kthread_list:]"];
        [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1953];

        v17 = PLLogCommon(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    return -1;
  }

  return v4;
}

void *__42__PLProcessMonitorAgent_get_kthread_list___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  get_kthread_list__classDebugEnabled = result;
  return result;
}

- (void)logEventIntervalKernelTaskMonitor
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void *__58__PLProcessMonitorAgent_logEventIntervalKernelTaskMonitor__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventIntervalKernelTaskMonitor_classDebugEnabled = result;
  return result;
}

void *__58__PLProcessMonitorAgent_logEventIntervalKernelTaskMonitor__block_invoke_707(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventIntervalKernelTaskMonitor_classDebugEnabled_706 = result;
  return result;
}

+ (unint64_t)PIDToCoalitionID:(int)d
{
  v16 = 0;
  memset(buffer, 0, sizeof(buffer));
  v3 = proc_pidinfo(d, 20, 1uLL, buffer, 40);
  if (v3 == 40)
  {
    return *&buffer[0];
  }

  v5 = v3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLProcessMonitorAgent_PIDToCoalitionID___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (PIDToCoalitionID__defaultOnce != -1)
    {
      dispatch_once(&PIDToCoalitionID__defaultOnce, block);
    }

    if (PIDToCoalitionID__classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"proc_pidinfo(PROC_PIDCOALITIONINFO) failed\n"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLProcessMonitorAgent PIDToCoalitionID:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:2117];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  return -v5;
}

void *__42__PLProcessMonitorAgent_PIDToCoalitionID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PIDToCoalitionID__classDebugEnabled = result;
  return result;
}

+ (BOOL)enableThreadStatsLogging
{
  if (enableThreadStatsLogging_onceToken != -1)
  {
    +[PLProcessMonitorAgent enableThreadStatsLogging];
  }

  return enableThreadStatsLogging_threadStatsEnabled;
}

void __49__PLProcessMonitorAgent_enableThreadStatsLogging__block_invoke()
{
  v0 = [MEMORY[0x277D3F208] internalBuild];
  if (v0)
  {
    v0 = [MEMORY[0x277D3F180] BOOLForKey:@"PLThreadStats_Enabled" ifNotSet:0];
    enableThreadStatsLogging_threadStatsEnabled = v0;
    if (!v0)
    {
      return;
    }
  }

  else if ((enableThreadStatsLogging_threadStatsEnabled & 1) == 0)
  {
    return;
  }

  v1 = PLLogCommon(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_25EE51000, v1, OS_LOG_TYPE_INFO, "thread stats: enabled", v2, 2u);
  }
}

- (void)initializeThreadStatsLogging
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logThreadStats
{
  v24 = *MEMORY[0x277D85DE8];
  threadStats = [(PLProcessMonitorAgent *)self threadStats];

  if (threadStats)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v5 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ThreadStats"];
    threadStats2 = [(PLProcessMonitorAgent *)self threadStats];
    diffSinceLastSnapshot = [threadStats2 diffSinceLastSnapshot];

    array = [MEMORY[0x277CBEB18] array];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__PLProcessMonitorAgent_logThreadStats__block_invoke;
    v16[3] = &unk_279A5D8A8;
    v9 = v5;
    v17 = v9;
    v10 = monotonicDate;
    v18 = v10;
    v11 = array;
    v19 = v11;
    [diffSinceLastSnapshot enumerateKeysAndObjectsUsingBlock:v16];
    v12 = [v11 count];
    if (v12)
    {
      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v11 count];
        *buf = 134217984;
        v23 = v14;
        _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_INFO, "thread stats: logging %lu entries", buf, 0xCu);
      }

      v20 = v9;
      v21 = v11;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [(PLOperator *)self logEntries:v15 withGroupID:v9];
    }
  }
}

void __39__PLProcessMonitorAgent_logThreadStats__block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 threadNameToInfo];
  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "pid")}];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__PLProcessMonitorAgent_logThreadStats__block_invoke_2;
    v10[3] = &unk_279A5D880;
    v11 = a1[4];
    v12 = a1[5];
    v13 = v8;
    v14 = v5;
    v15 = a1[6];
    v9 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __39__PLProcessMonitorAgent_logThreadStats__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D3F190];
  v6 = a3;
  v7 = a2;
  v14 = [[v5 alloc] initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
  [v14 setObject:*(a1 + 48) forKeyedSubscript:@"PID"];
  [v14 setObject:*(a1 + 56) forKeyedSubscript:@"ProcessName"];
  [v14 setObject:v7 forKeyedSubscript:@"ThreadName"];

  [v6 systemTime];
  v9 = (v8 * 1000.0);
  [v6 userTime];
  v11 = v10;

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
  [v14 setObject:v12 forKeyedSubscript:@"SysTime"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v11 * 1000.0)];
  [v14 setObject:v13 forKeyedSubscript:@"UsrTime"];

  [*(a1 + 64) addObject:v14];
}

- (void)logEventBackwardAppLaunchTimeSeries:(id)series
{
  v32 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  v5 = seriesCopy;
  if (seriesCopy && (seriesCopy = [seriesCopy count]) != 0)
  {
    selfCopy = self;
    v6 = PLLogProcessMonitor(seriesCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLProcessMonitorAgent logEventBackwardAppLaunchTimeSeries:];
    }

    v7 = objc_opt_new();
    v8 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AppLaunchTimeSeries"];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * v12);
          v14 = objc_opt_new();
          v15 = [v13 objectForKeyedSubscript:@"bundleID"];
          [v14 setObject:v15 forKeyedSubscript:@"BundleID"];

          v16 = [v13 objectForKeyedSubscript:@"IsForeground"];
          [v14 setObject:v16 forKeyedSubscript:@"IsForeground"];

          v17 = [v13 objectForKeyedSubscript:@"duration"];
          [v14 setObject:v17 forKeyedSubscript:@"Duration"];

          v18 = [v13 objectForKeyedSubscript:@"beginDate"];
          convertFromSystemToMonotonic = [v18 convertFromSystemToMonotonic];

          v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v14];
          [v20 setEntryDate:convertFromSystemToMonotonic];
          [v7 addObject:v20];

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v29 = v8;
      v30 = v7;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      [(PLOperator *)selfCopy logEntries:v21 withGroupID:v8];
    }

    v5 = v23;
  }

  else
  {
    v7 = PLLogProcessMonitor(seriesCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLProcessMonitorAgent logEventBackwardAppLaunchTimeSeries:];
    }
  }
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_454_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_469_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getProcessExits:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchSnapshotWithFlags:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)fetchSnapshotWithFlags:.cold.2()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)fetchSnapshotWithFlags:.cold.4()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)fetchSnapshotWithFlags:.cold.5()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)logEventBackwardAppLaunchTimeSeries:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end