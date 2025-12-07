@interface PLCoalitionAgent
+ (id)entryAggregateDefinitionNANDStats;
+ (id)entryAggregateDefinitions;
+ (id)entryEventIntervalDefinitionCoalitionUsage;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionCoalitionDrop;
+ (id)entryEventPointDefinitionCoalitionMemory;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)shouldLogCoalitionObject:(id)object withEndObject:(id)endObject;
- (PLCoalitionAgent)init;
- (double)getANEEnergyFromEntry:(id)entry;
- (double)getCPUEnergyFromEntry:(id)entry;
- (double)getCPUVoucherTimeFromEntry:(id)entry;
- (double)getCPUWeightFromEntry:(id)entry;
- (double)getGPUEnergyFromEntry:(id)entry;
- (double)getGPUTimeFromEntry:(id)entry;
- (double)getGPUWeightFromEntry:(id)entry;
- (id)buildPLCoalitionDataObject:(coalition_resource_usage *)object withBundleId:(id)id withLaunchdName:(id)name withDate:(id)date withCoalitionId:(unint64_t)coalitionId isApp:(BOOL)app;
- (id)buildPLEntryDiffWithStartObject:(id)object withEndObject:(id)endObject withStartDate:(id)date withEndDate:(id)endDate;
- (id)processMemoryUsageWithPid:(int)pid withLaunchdName:(id)name withRusage:(void *)rusage withJetsamInfo:(void *)info withLimitInfo:(process_memory_limit_info *)limitInfo;
- (id)processPerAppLogicalWritesWithInfo:(id)info;
- (unint64_t)readPropertyFromRegistry:(__CFString *)registry;
- (void)addAccountingEventsFromCoalitions:(id)coalitions;
- (void)getCoalitionInfoWithHFLFlag:(BOOL)flag;
- (void)getStorageCapacity;
- (void)handleStateChangeForCoalitions;
- (void)init;
- (void)initOperatorDependancies;
- (void)log;
- (void)logAggregateNANDStatsWithInfo:(id)info;
- (void)logCoalitionObjectDifference:(id)difference;
- (void)logCoalitionObjectMemory:(id)memory;
- (void)logToAggd:(id)aggd;
- (void)logToCAProcessMemory:(id)memory andAccumulatedMemory:(id)accumulatedMemory dailyReport:(BOOL)report systemUptime:(unint64_t)uptime;
@end

@implementation PLCoalitionAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLCoalitionAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryAggregateDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"NANDStats";
  v2 = +[PLCoalitionAgent entryAggregateDefinitionNANDStats];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryAggregateDefinitionNANDStats
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F490];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_28714B0B8;
  v20[1] = MEMORY[0x277CBEC38];
  v19[2] = *MEMORY[0x277D3F4A0];
  v20[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v22[0] = v3;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"BundleId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v17[1] = @"LogicalWrites";
  v18[0] = commonTypeDict_StringFormat_withBundleID;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v18[1] = commonTypeDict_IntegerFormat_aggregateFunction_sum;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v22[1] = v8;
  v21[2] = *MEMORY[0x277D3F478];
  v15 = &unk_28714B0C8;
  v13 = *MEMORY[0x277D3F470];
  v14 = &unk_28714B0D8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v21[3] = *MEMORY[0x277D3F488];
  v22[2] = v10;
  v22[3] = &unk_28714BC18;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  return v11;
}

+ (id)entryEventPointDefinitions
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"CoalitionDrops";
  v2 = +[PLCoalitionAgent entryEventPointDefinitionCoalitionDrop];
  v6[1] = @"CoalitionMemory";
  v7[0] = v2;
  v3 = +[PLCoalitionAgent entryEventPointDefinitionCoalitionMemory];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)entryEventPointDefinitionCoalitionDrop
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_28714B0B8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"bufferSize";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"finalSize";
  v11[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventPointDefinitionCoalitionMemory
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v27[0] = *MEMORY[0x277D3F568];
  v27[1] = v2;
  v28[0] = &unk_28714B0E8;
  v28[1] = MEMORY[0x277CBEC38];
  v27[2] = *MEMORY[0x277D3F4A0];
  v28[2] = MEMORY[0x277CBEC38];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"LaunchdCoalitionId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v26[0] = commonTypeDict_IntegerFormat;
  v25[1] = @"LaunchdName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v26[1] = commonTypeDict_StringFormat_withBundleID;
  v25[2] = @"memory_wired_size";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v26[2] = commonTypeDict_IntegerFormat2;
  v25[3] = @"memory_purgeable_size";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v26[3] = commonTypeDict_IntegerFormat3;
  v25[4] = @"memory_anonmem_size";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v26[4] = commonTypeDict_IntegerFormat4;
  v25[5] = @"memory_compressed_size";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v26[5] = commonTypeDict_IntegerFormat5;
  v25[6] = @"process_count";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v26[6] = commonTypeDict_IntegerFormat6;
  v25[7] = @"CompressedLifetime";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v26[7] = commonTypeDict_IntegerFormat7;
  v25[8] = @"Swapins";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v26[8] = commonTypeDict_IntegerFormat8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:9];
  v30[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"CoalitionInterval";
  v2 = +[PLCoalitionAgent entryEventIntervalDefinitionCoalitionUsage];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventIntervalDefinitionCoalitionUsage
{
  v91[2] = *MEMORY[0x277D85DE8];
  v90[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v88[0] = *MEMORY[0x277D3F568];
  v88[1] = v2;
  v89[0] = &unk_28714B0F8;
  v89[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F548];
  v88[2] = *MEMORY[0x277D3F4A0];
  v88[3] = v3;
  v89[2] = MEMORY[0x277CBEC38];
  v89[3] = @"logEventIntervalCoalitionIntervalWithoutHighFreqLogging";
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:4];
  v91[0] = v85;
  v90[1] = *MEMORY[0x277D3F540];
  v86[0] = @"LaunchdCoalitionId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v87[0] = commonTypeDict_IntegerFormat;
  v86[1] = @"LaunchdName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v87[1] = commonTypeDict_StringFormat_withBundleID;
  v86[2] = @"BundleId";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v87[2] = commonTypeDict_StringFormat_withBundleID2;
  v86[3] = @"tasks_started";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
  v87[3] = commonTypeDict_RealFormat;
  v86[4] = @"tasks_exited";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v87[4] = commonTypeDict_RealFormat2;
  v86[5] = @"time_nonempty";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v87[5] = commonTypeDict_RealFormat3;
  v86[6] = @"cpu_time";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
  v87[6] = commonTypeDict_RealFormat4;
  v86[7] = @"cpu_instructions";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v87[7] = commonTypeDict_IntegerFormat2;
  v86[8] = @"interrupt_wakeups";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
  v87[8] = commonTypeDict_RealFormat5;
  v86[9] = @"platform_idle_wakeups";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]10 commonTypeDict_RealFormat];
  v87[9] = commonTypeDict_RealFormat6;
  v86[10] = @"bytesread";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]11 commonTypeDict_RealFormat];
  v87[10] = commonTypeDict_RealFormat7;
  v86[11] = @"byteswritten";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat8 = [mEMORY[0x277D3F198]12 commonTypeDict_RealFormat];
  v87[11] = commonTypeDict_RealFormat8;
  v86[12] = @"logical_immediate_writes";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat9 = [mEMORY[0x277D3F198]13 commonTypeDict_RealFormat];
  v87[12] = commonTypeDict_RealFormat9;
  v86[13] = @"logical_deferred_writes";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat10 = [mEMORY[0x277D3F198]14 commonTypeDict_RealFormat];
  v87[13] = commonTypeDict_RealFormat10;
  v86[14] = @"logical_invalidated_writes";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat11 = [mEMORY[0x277D3F198]15 commonTypeDict_RealFormat];
  v87[14] = commonTypeDict_RealFormat11;
  v86[15] = @"logical_metadata_writes";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat12 = [mEMORY[0x277D3F198]16 commonTypeDict_RealFormat];
  v87[15] = commonTypeDict_RealFormat12;
  v86[16] = @"gpu_time";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat13 = [mEMORY[0x277D3F198]17 commonTypeDict_RealFormat];
  v87[16] = commonTypeDict_RealFormat13;
  v86[17] = @"gpu_energy_nj";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v87[17] = commonTypeDict_IntegerFormat3;
  v86[18] = @"gpu_energy_nj_billed_to_me";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v87[18] = commonTypeDict_IntegerFormat4;
  v86[19] = @"gpu_energy_nj_billed_to_others";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v87[19] = commonTypeDict_IntegerFormat5;
  v86[20] = @"cpu_time_billed_to_me";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat14 = [mEMORY[0x277D3F198]21 commonTypeDict_RealFormat];
  v87[20] = commonTypeDict_RealFormat14;
  v86[21] = @"cpu_time_billed_to_others";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat15 = [mEMORY[0x277D3F198]22 commonTypeDict_RealFormat];
  v87[21] = commonTypeDict_RealFormat15;
  v86[22] = @"timestampEnd";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]23 commonTypeDict_DateFormat];
  v87[22] = commonTypeDict_DateFormat;
  v86[23] = @"energy";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
  v87[23] = commonTypeDict_IntegerFormat6;
  v86[24] = @"energy_billed_to_me";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat];
  v87[24] = commonTypeDict_IntegerFormat7;
  v86[25] = @"energy_billed_to_others";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v87[25] = commonTypeDict_IntegerFormat8;
  v86[26] = @"cpu_time_eqos_0";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat16 = [mEMORY[0x277D3F198]27 commonTypeDict_RealFormat];
  v87[26] = commonTypeDict_RealFormat16;
  v86[27] = @"cpu_time_eqos_1";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat17 = [mEMORY[0x277D3F198]28 commonTypeDict_RealFormat];
  v87[27] = commonTypeDict_RealFormat17;
  v86[28] = @"cpu_time_eqos_2";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat18 = [mEMORY[0x277D3F198]29 commonTypeDict_RealFormat];
  v87[28] = commonTypeDict_RealFormat18;
  v86[29] = @"cpu_time_eqos_3";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat19 = [mEMORY[0x277D3F198]30 commonTypeDict_RealFormat];
  v87[29] = commonTypeDict_RealFormat19;
  v86[30] = @"cpu_time_eqos_4";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat20 = [mEMORY[0x277D3F198]31 commonTypeDict_RealFormat];
  v87[30] = commonTypeDict_RealFormat20;
  v86[31] = @"cpu_time_eqos_5";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat21 = [mEMORY[0x277D3F198]32 commonTypeDict_RealFormat];
  v87[31] = commonTypeDict_RealFormat21;
  v86[32] = @"cpu_time_eqos_6";
  mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat22 = [mEMORY[0x277D3F198]33 commonTypeDict_RealFormat];
  v87[32] = commonTypeDict_RealFormat22;
  v86[33] = @"ane_time";
  mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat23 = [mEMORY[0x277D3F198]34 commonTypeDict_RealFormat];
  v87[33] = commonTypeDict_RealFormat23;
  v86[34] = @"ane_energy_nj";
  mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat];
  v87[34] = commonTypeDict_IntegerFormat9;
  v86[35] = @"cpu_ptime";
  mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat24 = [mEMORY[0x277D3F198]36 commonTypeDict_RealFormat];
  v87[35] = commonTypeDict_RealFormat24;
  v86[36] = @"cpu_pinstructions";
  mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]37 commonTypeDict_IntegerFormat];
  v87[36] = commonTypeDict_IntegerFormat10;
  v86[37] = @"cpu_pcycles";
  mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]38 commonTypeDict_IntegerFormat];
  v87[37] = commonTypeDict_IntegerFormat11;
  v86[38] = @"cpu_cycles";
  mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]39 commonTypeDict_IntegerFormat];
  v87[38] = commonTypeDict_IntegerFormat12;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:39];
  v91[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];

  return v13;
}

- (PLCoalitionAgent)init
{
  v28.receiver = self;
  v28.super_class = PLCoalitionAgent;
  v2 = [(PLAgent *)&v28 init];
  v3 = v2;
  if (v2)
  {
    driveCapacity = v2->_driveCapacity;
    v2->_driveCapacity = @"Unknown";

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v6 = [monotonicDate dateByAddingTimeInterval:arc4random_uniform(0x15180u)];
    reportMemoryStatsAfterTime = v3->_reportMemoryStatsAfterTime;
    v3->_reportMemoryStatsAfterTime = v6;

    v9 = PLLogCommon(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(PLCoalitionAgent *)&v3->_reportMemoryStatsAfterTime init:v9];
    }

    monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
    v17 = [monotonicDate2 dateByAddingTimeInterval:arc4random_uniform(0xE10u)];
    reportHighFrequencyMemoryStatsAfterTime = v3->_reportHighFrequencyMemoryStatsAfterTime;
    v3->_reportHighFrequencyMemoryStatsAfterTime = v17;

    v20 = PLLogCommon(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [(PLCoalitionAgent *)&v3->_reportHighFrequencyMemoryStatsAfterTime init:v20];
    }
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__PLCoalitionAgent_initOperatorDependancies__block_invoke;
  v18[3] = &unk_279A5BE78;
  v18[4] = self;
  v3 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v18];
  batteryLevelChanged = self->_batteryLevelChanged;
  self->_batteryLevelChanged = v3;

  objc_initWeak(&location, self);
  mEMORY[0x277D3F220] = [MEMORY[0x277D3F220] sharedInstance];
  [(PLCoalitionAgent *)self setStateTracker:mEMORY[0x277D3F220]];

  stateTracker = [(PLCoalitionAgent *)self stateTracker];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__PLCoalitionAgent_initOperatorDependancies__block_invoke_440;
  v15[3] = &unk_279A5BEA0;
  objc_copyWeak(&v16, &location);
  [stateTracker registerForStates:1 withOperator:self withBlock:v15];

  [(PLCoalitionAgent *)self getStorageCapacity];
  v7 = objc_alloc(MEMORY[0x277D3F1F0]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__PLCoalitionAgent_initOperatorDependancies__block_invoke_2;
  v14[3] = &unk_279A5BE78;
  v14[4] = self;
  v8 = [v7 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v14];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v8;

  v10 = objc_alloc(MEMORY[0x277D3F278]);
  workQueue = [(PLOperator *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__PLCoalitionAgent_initOperatorDependancies__block_invoke_467;
  v13[3] = &unk_279A5BEC8;
  v13[4] = self;
  v12 = [v10 initWithWorkQueue:workQueue withRegistration:&unk_287147C80 withBlock:v13];
  [(PLCoalitionAgent *)self setLogicalWritesResponder:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __44__PLCoalitionAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogCoalition(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_DEFAULT, "Coalitions: Received SBC notification!", v5, 2u);
  }

  [*(a1 + 32) logEventIntervalCoalitionIntervalWithHFLFlag:0];
  v3 = *(a1 + 32);
  v4 = [v3 lastCoalitionObjectDictionary];
  [v3 logCoalitionObjectMemory:v4];
}

void __44__PLCoalitionAgent_initOperatorDependancies__block_invoke_440(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleStateChangeForCoalitions];
}

void __44__PLCoalitionAgent_initOperatorDependancies__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogCoalition(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __41__PLCameraAgent_initOperatorDependancies__block_invoke_172_cold_1();
  }

  v5 = [v3 objectForKeyedSubscript:@"Source"];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"Source"];
    if ([v6 isEqual:&unk_2871454D8])
    {

LABEL_7:
      [*(a1 + 32) logEventIntervalCoalitionIntervalWithHFLFlag:0];
      goto LABEL_8;
    }

    v7 = [v3 objectForKeyedSubscript:@"Source"];
    v8 = [v7 isEqual:&unk_2871454F0];

    if (v8)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

id __44__PLCoalitionAgent_initOperatorDependancies__block_invoke_467(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "LogicalWritesPerApp query received with info: %@", &v13, 0xCu);
  }

  v8 = [*(a1 + 32) processPerAppLogicalWritesWithInfo:v6];
  v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
  v10 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D3F180] doubleForKey:@"LastUpgradeSystemTimestamp"];
  v11 = [v10 numberWithDouble:?];
  [v9 setObject:v11 forKeyedSubscript:@"lastUpgradeTimestamp"];

  return v9;
}

- (void)handleStateChangeForCoalitions
{
  lastDate = [(PLCoalitionAgent *)self lastDate];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [lastDate timeIntervalSinceDate:monotonicDate];
  v6 = fabs(v5);

  if (v6 <= 300.0)
  {
    v8 = PLLogCommon(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, "Frequent Plugged / Unplugged events, not logging to Coalitions", v9, 2u);
    }
  }

  else
  {

    [(PLCoalitionAgent *)self logEventIntervalCoalitionIntervalWithHFLFlag:0];
  }
}

- (void)getStorageCapacity
{
  v3 = [(PLCoalitionAgent *)self readPropertyFromRegistry:@"Device Characteristics"];
  if (v3 || (v3 = [(PLCoalitionAgent *)self readPropertyFromRegistry:@"Controller Characteristics"]) != 0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", (v3 / 1000000000.0)];
    [(PLCoalitionAgent *)self setDriveCapacity:v4];
  }

  else
  {

    [(PLCoalitionAgent *)self setDriveCapacity:@"Unknown"];
  }
}

- (unint64_t)readPropertyFromRegistry:(__CFString *)registry
{
  v29 = *MEMORY[0x277D85DE8];
  existing = 0;
  valuePtr = 0;
  v4 = *MEMORY[0x277CD28A0];
  v5 = IOServiceMatching("IOMedia");
  MatchingServices = IOServiceGetMatchingServices(v4, v5, &existing);
  if (MatchingServices)
  {
    v7 = MatchingServices;
    v8 = PLLogCommon(MatchingServices);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PLCoalitionAgent *)v7 readPropertyFromRegistry:v8];
    }

    return 0;
  }

  v10 = IOIteratorNext(existing);
  if (v10)
  {
    v11 = v10;
    v12 = *MEMORY[0x277CBECE8];
    do
    {
      v13 = IORegistryEntrySearchCFProperty(v11, "IOService", registry, v12, 3u);
      IOObjectRelease(v11);
      if (!v13)
      {
        break;
      }

      v14 = CFGetTypeID(v13);
      TypeID = CFDictionaryGetTypeID();
      ValueAtIndex = v13;
      if (v14 != TypeID)
      {
        v17 = CFGetTypeID(v13);
        v18 = CFArrayGetTypeID();
        if (v17 != v18)
        {
          v22 = PLLogCommon(v18);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            registryCopy = registry;
            v27 = 2112;
            v28 = v13;
            _os_log_error_impl(&dword_25EE51000, v22, OS_LOG_TYPE_ERROR, "Unknown datatype for property: %@ data : %@", buf, 0x16u);
          }

          goto LABEL_17;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
      }

      Value = CFDictionaryGetValue(ValueAtIndex, @"capacity");
      if (Value)
      {
        v20 = Value;
        v21 = CFGetTypeID(Value);
        if (v21 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v20, kCFNumberSInt64Type, &valuePtr);
          CFRelease(v13);
          break;
        }
      }

      CFRelease(v13);
LABEL_17:
      v11 = IOIteratorNext(existing);
    }

    while (v11);
  }

  if (existing)
  {
    IOObjectRelease(existing);
  }

  return valuePtr;
}

- (void)logToCAProcessMemory:(id)memory andAccumulatedMemory:(id)accumulatedMemory dailyReport:(BOOL)report systemUptime:(unint64_t)uptime
{
  reportCopy = report;
  v147 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  accumulatedMemoryCopy = accumulatedMemory;
  v64 = accumulatedMemoryCopy;
  if (!reportCopy)
  {
    goto LABEL_7;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v13 = (v12 / 86400.0);

  v14 = [MEMORY[0x277D3F180] objectExistsForKey:@"MemoryCoreAnalyticsLastReportedDayNumber"];
  if (v14)
  {
    v15 = [MEMORY[0x277D3F180] objectForKey:@"MemoryCoreAnalyticsLastReportedDayNumber" synchronize:1];
    unsignedLongLongValue = [v15 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  if (unsignedLongLongValue < v13)
  {
    v17 = MEMORY[0x277D3F180];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
    [v17 setObject:v18 forKey:@"MemoryCoreAnalyticsLastReportedDayNumber" saveToDisk:1];

    accumulatedMemoryCopy = AnalyticsSendEventLazy();
LABEL_7:
    uptimeCopy = uptime;
    v19 = PLLogCommon(accumulatedMemoryCopy);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PLCoalitionAgent logToCAProcessMemory:memoryCopy andAccumulatedMemory:v19 dailyReport:? systemUptime:?];
    }

    v20 = arc4random_uniform([memoryCopy count]);
    v63 = memoryCopy;
    if ([memoryCopy count])
    {
      v21 = 0;
      v22 = v20;
      do
      {
        v23 = [memoryCopy objectAtIndexedSubscript:{(v22 % objc_msgSend(memoryCopy, "count", uptimeCopy))}];
        phys_footprint_size = [v23 phys_footprint_size];
        v25 = phys_footprint_size > ([v23 memoryLimitMB] << 20);
        if (reportCopy)
        {
          v137 = MEMORY[0x277D85DD0];
          v138 = 3221225472;
          v139 = __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_503;
          v140 = &unk_279A5BF10;
          v141 = v23;
          v142 = v25;
          AnalyticsSendEventLazy();
          v132 = MEMORY[0x277D85DD0];
          v133 = 3221225472;
          v134 = __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_2;
          v135 = &unk_279A5BF38;
          v136 = v141;
          AnalyticsSendEventLazy();
          v127 = MEMORY[0x277D85DD0];
          v128 = 3221225472;
          v129 = __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_3;
          v130 = &unk_279A5BF38;
          v131 = v136;
          AnalyticsSendEventLazy();
        }

        v121 = MEMORY[0x277D85DD0];
        v122 = 3221225472;
        v123 = __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_4;
        v124 = &unk_279A5BF10;
        v26 = v23;
        v125 = v26;
        v126 = v25;
        AnalyticsSendEventLazy();
        if ([v26 isDaemonXPCService])
        {
          v27 = reportCopy;
          processName = [v26 processName];
          if ([processName isEqualToString:@"notifyd"])
          {
            v29 = 1;
          }

          else
          {
            processName2 = [v26 processName];
            if ([processName2 isEqualToString:@"configd"])
            {
              v29 = 1;
            }

            else
            {
              processName3 = [v26 processName];
              v29 = [processName3 isEqualToString:@"logd"];

              memoryCopy = v63;
            }
          }

          reportCopy = v27;
        }

        else
        {
          v29 = 0;
        }

        if ([v26 neural_footprint] > 0x400 || v29 != 0)
        {
          v116 = MEMORY[0x277D85DD0];
          v117 = 3221225472;
          v118 = __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_5;
          v119 = &unk_279A5BF38;
          v120 = v26;
          AnalyticsSendEventLazy();
        }

        ++v21;
        ++v22;
      }

      while ([memoryCopy count] > v21);
    }

    [PLUtilities roundToSigFigDouble:2 withSigFig:uptimeCopy / 3.6e12, uptimeCopy];
    v34 = v33;
    [v64 memoryUsageAtEachPriority];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    obj = v115 = 0u;
    v35 = [obj countByEnumeratingWithState:&v112 objects:v146 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v113;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v113 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v112 + 1) + 8 * i);
          v105 = MEMORY[0x277D85DD0];
          v106 = 3221225472;
          v107 = __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_6;
          v108 = &unk_279A5BF60;
          v109 = obj;
          v110 = v39;
          v111 = v34;
          AnalyticsSendEventLazy();
          v98 = MEMORY[0x277D85DD0];
          v99 = 3221225472;
          v100 = __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_7;
          v101 = &unk_279A5BF60;
          v40 = v109;
          v102 = v40;
          v103 = v39;
          v104 = v34;
          AnalyticsSendEventLazy();
        }

        v36 = [v40 countByEnumeratingWithState:&v112 objects:v146 count:16];
      }

      while (v36);
    }

    [v64 memoryUsedAtOrAboveEachPriority];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v41 = v97 = 0u;
    v42 = [v41 countByEnumeratingWithState:&v94 objects:v145 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v95;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v95 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v94 + 1) + 8 * j);
          v87 = MEMORY[0x277D85DD0];
          v88 = 3221225472;
          v89 = __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_8;
          v90 = &unk_279A5BF60;
          v47 = v41;
          v91 = v47;
          v92 = v46;
          v93 = v34;
          AnalyticsSendEventLazy();
        }

        v43 = [v47 countByEnumeratingWithState:&v94 objects:v145 count:16];
      }

      while (v43);
    }

    v65 = v41;

    [v64 memoryAvailableAtOrBelowEachPriority];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v48 = v86 = 0u;
    v49 = [v48 countByEnumeratingWithState:&v83 objects:v144 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v84;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v84 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v83 + 1) + 8 * k);
          v76 = MEMORY[0x277D85DD0];
          v77 = 3221225472;
          v78 = __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_9;
          v79 = &unk_279A5BF60;
          v54 = v48;
          v80 = v54;
          v81 = v53;
          v82 = v34;
          AnalyticsSendEventLazy();
        }

        v50 = [v54 countByEnumeratingWithState:&v83 objects:v144 count:16];
      }

      while (v50);
    }

    systemMemoryStatsDictionary = [v64 systemMemoryStatsDictionary];
    v71 = MEMORY[0x277D85DD0];
    v72 = 3221225472;
    v73 = __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_10;
    v74 = &unk_279A5BF38;
    v75 = systemMemoryStatsDictionary;
    AnalyticsSendEventLazy();
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v56 = v75;
    v57 = [v56 countByEnumeratingWithState:&v67 objects:v143 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v68;
      do
      {
        for (m = 0; m != v58; ++m)
        {
          if (*v68 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = v56;
          AnalyticsSendEventLazy();
        }

        v58 = [v61 countByEnumeratingWithState:&v67 objects:v143 count:16];
      }

      while (v58);
    }

    memoryCopy = v63;
    goto LABEL_59;
  }

  obj = PLLogCommon(v14);
  if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
  {
    [PLCoalitionAgent logToCAProcessMemory:andAccumulatedMemory:dailyReport:systemUptime:];
  }

LABEL_59:
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_503(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) isDaemonXPCService];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 processName];
    if (v5)
    {
      v6 = [*(a1 + 32) processName];
      [v2 setObject:v6 forKeyedSubscript:@"daemon_procname"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"daemon_procname"];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "jetsam_priority")}];
    [v2 setObject:v9 forKeyedSubscript:@"daemon_jetsam_priority"];

    v10 = MEMORY[0x277CCABB0];
    +[PLUtilities secondsFromMachTime:](PLUtilities, "secondsFromMachTime:", [*(a1 + 32) timeAtPriorityMATU]);
    v11 = [v10 numberWithDouble:?];
    [v2 setObject:v11 forKeyedSubscript:@"daemon_time_at_jetsam_priority"];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "process_active")}];
    [v2 setObject:v12 forKeyedSubscript:@"daemon_active"];
    v36 = @"daemon_memory_limit_increased";
    v37 = @"daemon_footprint_over_limit";
    v34 = @"daemon_memory_limit_hard";
    v35 = @"daemon_memory_limit_active";
    v13 = @"daemon_memory_limit_mb";
    v14 = @"daemon_interval_peak_neural_footprint_kb";
    v15 = @"daemon_neural_footprint_kb";
    v16 = @"daemon_interval_peak_footprint";
    v17 = @"daemon_peak_footprint";
    v18 = @"daemon_footprint";
  }

  else
  {
    v7 = [v4 bundleId];
    if (v7)
    {
      v8 = [*(a1 + 32) bundleId];
      [v2 setObject:v8 forKeyedSubscript:@"app_bundleid"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"app_bundleid"];
    }

    v19 = [*(a1 + 32) bundleVersion];
    if (v19)
    {
      v20 = [*(a1 + 32) bundleVersion];
      [v2 setObject:v20 forKeyedSubscript:@"app_bundleversion"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"app_bundleversion"];
    }

    v21 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "jetsam_priority")}];
    [v2 setObject:v21 forKeyedSubscript:@"app_jetsam_priority"];

    v22 = MEMORY[0x277CCABB0];
    +[PLUtilities secondsFromMachTime:](PLUtilities, "secondsFromMachTime:", [*(a1 + 32) timeAtPriorityMATU]);
    v12 = [v22 numberWithDouble:?];
    [v2 setObject:v12 forKeyedSubscript:@"app_time_at_jetsam_priority"];
    v36 = @"app_memory_limit_increased";
    v37 = @"app_footprint_over_limit";
    v34 = @"app_memory_limit_hard";
    v35 = @"app_memory_limit_active";
    v13 = @"app_memory_limit_mb";
    v14 = @"app_interval_peak_neural_footprint_kb";
    v15 = @"app_neural_footprint_kb";
    v16 = @"app_interval_peak_footprint";
    v17 = @"app_peak_footprint";
    v18 = @"app_footprint";
  }

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "phys_footprint_size") >> 10}];
  [v2 setObject:v23 forKeyedSubscript:v18];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "peak_phys_footprint") >> 10}];
  [v2 setObject:v24 forKeyedSubscript:v17];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "interval_peak_phys_footprint") >> 10}];
  [v2 setObject:v25 forKeyedSubscript:v16];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "neural_footprint") >> 10}];
  [v2 setObject:v26 forKeyedSubscript:v15];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "interval_peak_neural_footprint") >> 10}];
  [v2 setObject:v27 forKeyedSubscript:v14];

  v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "memoryLimitMB")}];
  [v2 setObject:v28 forKeyedSubscript:v13];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isLimitHard")}];
  [v2 setObject:v29 forKeyedSubscript:v34];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isActiveLimit")}];
  [v2 setObject:v30 forKeyedSubscript:v35];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isLimitIncreased")}];
  [v2 setObject:v31 forKeyedSubscript:v36];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  [v2 setObject:v32 forKeyedSubscript:v37];

  return v2;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) processLaunchdName];
  v3 = +[PLUtilities intervalPeakCADictionaryForLaunchdName:intervalMaxKB:](PLUtilities, "intervalPeakCADictionaryForLaunchdName:intervalMaxKB:", v2, [*(a1 + 32) interval_peak_phys_footprint] >> 10);

  return v3;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_3(uint64_t a1)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"launchd_name";
  v2 = [*(a1 + 32) processLaunchdName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v15[0] = v4;
  v14[1] = @"procname";
  v5 = [*(a1 + 32) processName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"UNKNOWN";
  }

  v15[1] = v7;
  v14[2] = @"bundleid";
  v8 = [*(a1 + 32) bundleId];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"UNKNOWN";
  }

  v15[2] = v10;
  v14[3] = @"is_daemon_or_xpc_service";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isDaemonXPCService")}];
  v15[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  return v12;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) isDaemonXPCService];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 processName];
    if (v5)
    {
      v6 = [*(a1 + 32) processName];
      [v2 setObject:v6 forKeyedSubscript:@"daemon_procname"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"daemon_procname"];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "jetsam_priority")}];
    [v2 setObject:v9 forKeyedSubscript:@"daemon_jetsam_priority"];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "process_active")}];
    [v2 setObject:v10 forKeyedSubscript:@"daemon_active"];
    v11 = @"daemon_footprint_over_limit";
    v12 = @"daemon_footprint_kb";
  }

  else
  {
    v7 = [v4 bundleId];
    if (v7)
    {
      v8 = [*(a1 + 32) bundleId];
      [v2 setObject:v8 forKeyedSubscript:@"app_bundleid"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"app_bundleid"];
    }

    v13 = [*(a1 + 32) bundleVersion];
    if (v13)
    {
      v14 = [*(a1 + 32) bundleVersion];
      [v2 setObject:v14 forKeyedSubscript:@"app_bundleversion"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"app_bundleversion"];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "jetsam_priority")}];
    [v2 setObject:v10 forKeyedSubscript:@"app_jetsam_priority"];
    v11 = @"app_footprint_over_limit";
    v12 = @"app_footprint_kb";
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "phys_footprint_size") >> 10}];
  [v2 setObject:v15 forKeyedSubscript:v12];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  [v2 setObject:v16 forKeyedSubscript:v11];

  return v2;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_5(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) isDaemonXPCService];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 processName];
    if (v5)
    {
      v6 = [*(a1 + 32) processName];
      [v2 setObject:v6 forKeyedSubscript:@"daemon_procname"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"daemon_procname"];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "jetsam_priority")}];
    [v2 setObject:v9 forKeyedSubscript:@"daemon_jetsam_priority"];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "process_active")}];
    [v2 setObject:v10 forKeyedSubscript:@"daemon_active"];
    v11 = @"daemon_neural_footprint_kb";
  }

  else
  {
    v7 = [v4 bundleId];
    if (v7)
    {
      v8 = [*(a1 + 32) bundleId];
      [v2 setObject:v8 forKeyedSubscript:@"app_bundleid"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"app_bundleid"];
    }

    v12 = [*(a1 + 32) bundleVersion];
    if (v12)
    {
      v13 = [*(a1 + 32) bundleVersion];
      [v2 setObject:v13 forKeyedSubscript:@"app_bundleversion"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"app_bundleversion"];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "jetsam_priority")}];
    [v2 setObject:v10 forKeyedSubscript:@"app_jetsam_priority"];
    v11 = @"app_neural_footprint_kb";
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "neural_footprint") >> 10}];
  [v2 setObject:v14 forKeyedSubscript:v11];

  return v2;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_6(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 unsignedLongValue];

  v9[0] = *(a1 + 40);
  v8[0] = @"at_priority";
  v8[1] = @"footprint_sum_kb";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3 >> 10];
  v9[1] = v4;
  v8[2] = @"system_uptime_hours";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_7(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 unsignedLongValue];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"priority%@", *(a1 + 40), @"memory_type"];
  v10[0] = v4;
  v9[1] = @"memory_kb";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3 >> 10];
  v10[1] = v5;
  v9[2] = @"system_uptime_hours";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_8(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 unsignedLongValue];

  v9[0] = *(a1 + 40);
  v8[0] = @"at_or_above_priority";
  v8[1] = @"footprint_sum_kb";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3 >> 10];
  v9[1] = v4;
  v8[2] = @"system_uptime_hours";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_9(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 unsignedLongValue];

  v9[0] = *(a1 + 40);
  v8[0] = @"at_or_below_priority";
  v8[1] = @"footprint_sum_kb";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3 >> 10];
  v9[1] = v4;
  v8[2] = @"system_uptime_hours";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_10(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 32)];
  [v1 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"footprints_report"];

  return v1;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_11(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v9[0] = v3;
  v8[0] = @"memory_type";
  v8[1] = @"memory_kb";
  v4 = [v2 objectForKeyedSubscript:?];
  v9[1] = v4;
  v8[2] = @"system_uptime_hours";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)processMemoryUsageWithPid:(int)pid withLaunchdName:(id)name withRusage:(void *)rusage withJetsamInfo:(void *)info withLimitInfo:(process_memory_limit_info *)limitInfo
{
  v10 = *&pid;
  nameCopy = name;
  v12 = objc_alloc_init(ProcessMemoryUsage);
  [(ProcessMemoryUsage *)v12 setPhys_footprint_size:*(rusage + 9)];
  [(ProcessMemoryUsage *)v12 setPeak_phys_footprint:*(rusage + 30)];
  [(ProcessMemoryUsage *)v12 setInterval_peak_phys_footprint:*(rusage + 35)];
  [(ProcessMemoryUsage *)v12 setNeural_footprint:*(rusage + 46)];
  [(ProcessMemoryUsage *)v12 setInterval_peak_neural_footprint:*(rusage + 48)];
  [(ProcessMemoryUsage *)v12 setJetsam_priority:*info];
  [(ProcessMemoryUsage *)v12 setTimeAtPriorityMATU:*(info + 1)];
  [(ProcessMemoryUsage *)v12 setProcess_active:*(info + 4)];
  [(ProcessMemoryUsage *)v12 setMemoryLimitMB:limitInfo->var0];
  [(ProcessMemoryUsage *)v12 setIsLimitHard:limitInfo->var1];
  [(ProcessMemoryUsage *)v12 setIsActiveLimit:limitInfo->var2];
  [(ProcessMemoryUsage *)v12 setIsLimitIncreased:limitInfo->var3];
  [(ProcessMemoryUsage *)v12 setIsDaemonXPCService:[PLUtilities isDaemonOrAppleXPCService:v10]];
  if ([(ProcessMemoryUsage *)v12 isDaemonXPCService])
  {
    v13 = [PLUtilities binaryPathForPid:v10];
    lastPathComponent = [v13 lastPathComponent];
    [(ProcessMemoryUsage *)v12 setProcessName:lastPathComponent];
  }

  else
  {
    v15 = [PLUtilities bundleIDFromPid:v10];
    [(ProcessMemoryUsage *)v12 setBundleId:v15];

    bundleId = [(ProcessMemoryUsage *)v12 bundleId];

    if (bundleId)
    {
      [(ProcessMemoryUsage *)v12 setBundleVersion:0];
      bundleId2 = [(ProcessMemoryUsage *)v12 bundleId];
      v18 = [PLApplicationAgent appVersionForBundle:bundleId2];
      [(ProcessMemoryUsage *)v12 setBundleVersion:v18];

      bundleVersion = [(ProcessMemoryUsage *)v12 bundleVersion];

      if (bundleVersion)
      {
        goto LABEL_8;
      }

      v13 = [PLUtilities binaryPathForPid:v10];
      lastPathComponent = [PLUtilities bundleVersionFromURL:v13];
      [(ProcessMemoryUsage *)v12 setBundleVersion:lastPathComponent];
    }

    else
    {
      v13 = [PLUtilities binaryPathForPid:v10];
      lastPathComponent = [v13 lastPathComponent];
      [(ProcessMemoryUsage *)v12 setBundleId:lastPathComponent];
    }
  }

LABEL_8:
  [(ProcessMemoryUsage *)v12 setProcessLaunchdName:nameCopy];

  return v12;
}

- (void)logCoalitionObjectMemory:(id)memory
{
  v154 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [(NSDate *)self->_reportMemoryStatsAfterTime compare:monotonicDate];
  selfCopy = self;
  v6 = [(NSDate *)self->_reportHighFrequencyMemoryStatsAfterTime compare:monotonicDate];
  v7 = PLLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v82 = @"Not";
    reportMemoryStatsAfterTime = selfCopy->_reportMemoryStatsAfterTime;
    *buf = 138412802;
    if (v5 == NSOrderedAscending)
    {
      v82 = &stru_287103958;
    }

    *&buf[4] = v82;
    *&buf[12] = 2112;
    *&buf[14] = monotonicDate;
    *&buf[22] = 2112;
    *&buf[24] = reportMemoryStatsAfterTime;
    _os_log_debug_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEBUG, "Should %@ Log to CoreAnalytics (current_time=%@ is greater than report_stats_time=%@)", buf, 0x20u);
  }

  v9 = PLLogCommon(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v84 = @"Not";
    reportHighFrequencyMemoryStatsAfterTime = selfCopy->_reportHighFrequencyMemoryStatsAfterTime;
    *buf = 138412802;
    if (v6 == NSOrderedAscending)
    {
      v84 = &stru_287103958;
    }

    *&buf[4] = v84;
    *&buf[12] = 2112;
    *&buf[14] = monotonicDate;
    *&buf[22] = 2112;
    *&buf[24] = reportHighFrequencyMemoryStatsAfterTime;
    _os_log_debug_impl(&dword_25EE51000, v9, OS_LOG_TYPE_DEBUG, "Should %@ Log to High Frequency CoreAnalytics (current_time=%@ is greater than high_freq_report_stats_time=%@)", buf, 0x20u);
  }

  if (([MEMORY[0x277D3F180] isTaskFullEPLMode] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "hasGenerativeModelSystems") & 1) != 0 || (v5 != NSOrderedAscending ? (v10 = v6 == NSOrderedAscending) : (v10 = 1), v10))
  {
    v11 = proc_listpids(1u, 0, 0, 0);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v11;
      v13 = v11;
      v14 = malloc_type_malloc(v11, 0x100004052888210uLL);
      if (v14)
      {
        v15 = v14;
        v90 = v6;
        v88 = monotonicDate;
        memset(v14, 255, v13);
        v98 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v92 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v86 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        v91 = objc_alloc_init(OverallMemoryUsage);
        v89 = v15;
        v16 = proc_listpids(1u, 0, v15, v12);
        if (v16 >= 4)
        {
          v50 = v15;
          v52 = v5 == NSOrderedAscending || v6 == NSOrderedAscending;
          if (v16 >> 2 <= 1)
          {
            v53 = 1;
          }

          else
          {
            v53 = v16 >> 2;
          }

          do
          {
            v55 = *v50++;
            v54 = v55;
            if (v55 >= 1)
            {
              memset(buffer, 0, sizeof(buffer));
              if (proc_pidinfo(v54, 18, 0, buffer, 192) == 192 && DWORD1(buffer[0]) != 5)
              {
                v106 = 0;
                memset(v105, 0, sizeof(v105));
                if (proc_pidinfo(v54, 20, 1uLL, v105, 40) == 40)
                {
                  v56 = *&v105[0];
                  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v105[0]];
                  v58 = [v98 objectForKeyedSubscript:v57];

                  if (!v58)
                  {
                    v58 = objc_alloc_init(CoalitionMemoryUsage);
                    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v56];
                    [v98 setObject:v58 forKeyedSubscript:v59];
                  }

                  v104 = 0;
                  if (v52)
                  {
                    v104 = [PLUtilities getProcessMemoryLimit:v54];
                  }

                  v152 = 0;
                  v151 = 0u;
                  v150 = 0u;
                  v149 = 0u;
                  v148 = 0u;
                  v146 = 0u;
                  v147 = 0u;
                  v144 = 0u;
                  v145 = 0u;
                  v142 = 0u;
                  v143 = 0u;
                  v140 = 0u;
                  v141 = 0u;
                  v138 = 0u;
                  v139 = 0u;
                  v136 = 0u;
                  v137 = 0u;
                  *v134 = 0u;
                  v135 = 0u;
                  v60 = proc_pid_rusage(v54, 4, v134);
                  if (v60)
                  {
                    v61 = v60;
                    v62 = PLLogCommon(v60);
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 67109376;
                      *&buf[4] = v61;
                      *&buf[8] = 1024;
                      *&buf[10] = v54;
                      _os_log_error_impl(&dword_25EE51000, v62, OS_LOG_TYPE_ERROR, "rusage failed with %d for pid %d", buf, 0xEu);
                    }
                  }

                  else
                  {
                    if (v5 == NSOrderedAscending)
                    {
                      service_name_from_pid = xpc_get_service_name_from_pid();
                      if (service_name_from_pid)
                      {
                        v64 = service_name_from_pid;
                        v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:service_name_from_pid];
                        free(v64);
                      }

                      else
                      {
                        v62 = 0;
                      }

                      v65 = proc_reset_footprint_interval();
                      if (v65)
                      {
                        v66 = v65;
                        v67 = PLLogCommon(v65);
                        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 67109376;
                          *&buf[4] = v66;
                          *&buf[8] = 1024;
                          *&buf[10] = v54;
                          _os_log_debug_impl(&dword_25EE51000, v67, OS_LOG_TYPE_DEBUG, "proc_reset_footprint_interval failed with %d for pid %d", buf, 0xEu);
                        }
                      }
                    }

                    else
                    {
                      v62 = 0;
                    }

                    wired_size = [(CoalitionMemoryUsage *)v58 wired_size];
                    [(CoalitionMemoryUsage *)v58 setWired_size:*(&v137 + 1) + wired_size];
                    phys_footprint_size = [(CoalitionMemoryUsage *)v58 phys_footprint_size];
                    [(CoalitionMemoryUsage *)v58 setPhys_footprint_size:*(&v138 + 1) + phys_footprint_size];
                    [(CoalitionMemoryUsage *)v58 setProcess_phys_footprint_size:*(&v138 + 1)];
                    [(CoalitionMemoryUsage *)v58 setProcess_peak_phys_footprint:v149];
                    [(CoalitionMemoryUsage *)v58 setProcess_count:[(CoalitionMemoryUsage *)v58 process_count]+ 1];
                    *tn = 0;
                    v133 = 0;
                    memset(v132, 0, sizeof(v132));
                    v130 = 0u;
                    v131 = 0u;
                    v128 = 0u;
                    v129 = 0u;
                    v126 = 0u;
                    v127 = 0u;
                    v124 = 0u;
                    v125 = 0u;
                    v122 = 0u;
                    v123 = 0u;
                    v120 = 0u;
                    v121 = 0u;
                    v118 = 0u;
                    v119 = 0u;
                    v116 = 0u;
                    v117 = 0u;
                    v114 = 0u;
                    v115 = 0u;
                    v113 = 0u;
                    memset(buf, 0, sizeof(buf));
                    v70 = task_name_for_pid(*MEMORY[0x277D85F48], v54, &tn[1]);
                    if (v70)
                    {
                      v71 = v70;
                      v72 = PLLogCommon(v70);
                      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                      {
                        *v110 = 67109376;
                        *&v110[4] = v71;
                        LOWORD(v111) = 1024;
                        *(&v111 + 2) = v54;
                        _os_log_error_impl(&dword_25EE51000, v72, OS_LOG_TYPE_ERROR, "task_name_for_pid failed with %d for pid %d", v110, 0xEu);
                      }
                    }

                    else
                    {
                      tn[0] = 93;
                      v73 = task_info(tn[1], 0x17u, buf, tn);
                      if (v73)
                      {
                        v74 = v73;
                        v75 = PLLogCommon(v73);
                        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                        {
                          *v110 = 67109376;
                          *&v110[4] = v74;
                          LOWORD(v111) = 1024;
                          *(&v111 + 2) = v54;
                          _os_log_error_impl(&dword_25EE51000, v75, OS_LOG_TYPE_ERROR, "task_info failed with %d for pid %d", v110, 0xEu);
                        }
                      }

                      else
                      {
                        purgeable_size = [(CoalitionMemoryUsage *)v58 purgeable_size];
                        [(CoalitionMemoryUsage *)v58 setPurgeable_size:*(&v117 + 1) + purgeable_size];
                        compressed_size = [(CoalitionMemoryUsage *)v58 compressed_size];
                        [(CoalitionMemoryUsage *)v58 setCompressed_size:*(&v118 + 1) + compressed_size];
                        compressed_lifetime = [(CoalitionMemoryUsage *)v58 compressed_lifetime];
                        [(CoalitionMemoryUsage *)v58 setCompressed_lifetime:*(&v119 + 1) + compressed_lifetime];
                        [(CoalitionMemoryUsage *)v58 setLedger_swapins:*(v132 + 12) + [(CoalitionMemoryUsage *)v58 ledger_swapins]];
                      }

                      mach_port_deallocate(*MEMORY[0x277D85F48], tn[1]);
                    }

                    *v110 = 0;
                    v111 = 0;
                    *v110 = [PLUtilities getJetsamPriority:v54];
                    v111 = v79;
                    [(CoalitionMemoryUsage *)v58 setProcess_jetsam_priority:*v110];
                    if (v5 == NSOrderedAscending || v90 == NSOrderedAscending || !*v110)
                    {
                      v80 = [PLUtilities cleanLaunchdName:v62];
                      v81 = [(PLCoalitionAgent *)selfCopy processMemoryUsageWithPid:v54 withLaunchdName:v80 withRusage:v134 withJetsamInfo:v110 withLimitInfo:&v104];

                      [v92 addObject:v81];
                      -[OverallMemoryUsage addProcessFootprint:withPriority:](v91, "addProcessFootprint:withPriority:", [v81 phys_footprint_size], objc_msgSend(v81, "jetsam_priority"));
                    }
                  }
                }
              }
            }

            --v53;
          }

          while (v53);
        }

        v87 = v5;
        v17 = objc_opt_new();
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        obj = [v98 allKeys];
        v18 = [obj countByEnumeratingWithState:&v99 objects:v109 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v100;
          v93 = *MEMORY[0x277D3F5E8];
          do
          {
            v21 = 0;
            v96 = v19;
            do
            {
              if (*v100 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v99 + 1) + 8 * v21);
              v23 = [v98 objectForKeyedSubscript:v22];
              if ([v23 phys_footprint_size] >= 0xE4E1C0)
              {
                v24 = v17;
                v25 = [memoryCopy objectForKeyedSubscript:v22];
                v26 = objc_alloc(MEMORY[0x277D3F190]);
                v27 = [(PLOperator *)PLCoalitionAgent entryKeyForType:v93 andName:@"CoalitionMemory"];
                currentDate = [(PLCoalitionAgent *)selfCopy currentDate];
                v29 = [v26 initWithEntryKey:v27 withDate:currentDate];

                bundleID = [v25 bundleID];
                LODWORD(v27) = [bundleID isEqualToString:&stru_287103958];

                if (v27)
                {
                  launchdName = [v25 launchdName];
                  if (launchdName)
                  {
                    launchdName2 = [v25 launchdName];
                    [v29 setObject:launchdName2 forKeyedSubscript:@"LaunchdName"];

LABEL_25:
                    [v29 setObject:v22 forKeyedSubscript:@"LaunchdCoalitionId"];
                    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "wired_size")}];
                    [v29 setObject:v35 forKeyedSubscript:@"memory_wired_size"];

                    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "purgeable_size")}];
                    [v29 setObject:v36 forKeyedSubscript:@"memory_purgeable_size"];

                    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "phys_footprint_size")}];
                    [v29 setObject:v37 forKeyedSubscript:@"memory_anonmem_size"];

                    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "compressed_size")}];
                    [v29 setObject:v38 forKeyedSubscript:@"memory_compressed_size"];

                    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "process_count")}];
                    [v29 setObject:v39 forKeyedSubscript:@"process_count"];

                    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "process_phys_footprint_size")}];
                    [v29 setObject:v40 forKeyedSubscript:@"process_phys_footprint"];

                    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "process_peak_phys_footprint")}];
                    [v29 setObject:v41 forKeyedSubscript:@"peak_phys_footprint"];

                    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "compressed_lifetime")}];
                    [v29 setObject:v42 forKeyedSubscript:@"CompressedLifetime"];

                    v43 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v23, "ledger_swapins")}];
                    [v29 setObject:v43 forKeyedSubscript:@"Swapins"];

                    v17 = v24;
                    [v24 addObject:v29];

                    v19 = v96;
                    goto LABEL_26;
                  }

                  v33 = v29;
                  v34 = @"Unnamed_launchdName";
                }

                else
                {
                  launchdName = [v25 bundleID];
                  v33 = v29;
                  v34 = launchdName;
                }

                [v33 setObject:v34 forKeyedSubscript:@"LaunchdName"];
                goto LABEL_25;
              }

LABEL_26:

              ++v21;
            }

            while (v19 != v21);
            v19 = [obj countByEnumeratingWithState:&v99 objects:v109 count:16];
          }

          while (v19);
        }

        monotonicDate = v88;
        if (v87 == NSOrderedAscending || v90 == NSOrderedAscending)
        {
          if (v87 == NSOrderedAscending)
          {
            distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
            v45 = selfCopy->_reportMemoryStatsAfterTime;
            selfCopy->_reportMemoryStatsAfterTime = distantFuture;
          }

          v46 = [v88 dateByAddingTimeInterval:arc4random_uniform(0xE10u) + 1800.0];
          v47 = selfCopy->_reportHighFrequencyMemoryStatsAfterTime;
          selfCopy->_reportHighFrequencyMemoryStatsAfterTime = v46;

          [(PLCoalitionAgent *)selfCopy logToCAProcessMemory:v92 andAccumulatedMemory:v91 dailyReport:v87 == NSOrderedAscending systemUptime:v86];
        }

        v48 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CoalitionMemory"];
        if ([v17 count])
        {
          v107 = v48;
          v108 = v17;
          v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
          [(PLOperator *)selfCopy logEntries:v49 withGroupID:v48];
        }

        free(v89);
      }
    }
  }
}

- (id)buildPLCoalitionDataObject:(coalition_resource_usage *)object withBundleId:(id)id withLaunchdName:(id)name withDate:(id)date withCoalitionId:(unint64_t)coalitionId isApp:(BOOL)app
{
  appCopy = app;
  nameCopy = name;
  idCopy = id;
  v14 = objc_opt_new();
  v15 = [MEMORY[0x277CCAE60] valueWithPointer:object];
  [v14 setCoalStruct:v15];

  [v14 setBundleID:idCopy];
  [v14 setLaunchdName:nameCopy];

  [v14 setCoalitionID:coalitionId];
  [v14 setIsUIKitApp:appCopy];

  return v14;
}

- (BOOL)shouldLogCoalitionObject:(id)object withEndObject:(id)endObject
{
  objectCopy = object;
  endObjectCopy = endObject;
  v7 = endObjectCopy;
  if (objectCopy && ([endObjectCopy coalStruct], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "pointerValue"), v8, objc_msgSend(objectCopy, "coalStruct"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "pointerValue"), v10, +[PLUtilities secondsFromMachTime:](PLUtilities, "secondsFromMachTime:", v9[3] - v11[3]), v12 <= 1.0) && (+[PLUtilities secondsFromMachTime:](PLUtilities, "secondsFromMachTime:", v9[9] - v11[9]), v13 <= 1.0) && (+[PLUtilities secondsFromMachTime:](PLUtilities, "secondsFromMachTime:", v9[10] - v11[10]), v14 <= 1.0) && (+[PLUtilities secondsFromMachTime:](PLUtilities, "secondsFromMachTime:", v9[8] - v11[8]), v15 <= 1.0))
  {
    [PLUtilities secondsFromMachTime:v9[38] - v11[38]];
    v16 = v18 > 1.0;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)logToAggd:(id)aggd
{
  aggdCopy = aggd;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [aggdCopy objectForKeyedSubscript:@"BundleId"];
  v7 = v6;
  if (v6 && ![v6 isEqualToString:&stru_287103958])
  {
    v8 = [PLApplicationAgent appVersionForBundle:v7];
    if ([v8 length])
    {
      [v5 setObject:v7 forKeyedSubscript:@"process_name"];
      [v5 setObject:v8 forKeyedSubscript:@"version"];
      v9 = [v7 stringByAppendingFormat:@".ver.%@", v8];

      v7 = v9;
    }
  }

  else
  {
    [aggdCopy objectForKeyedSubscript:@"LaunchdName"];
    v7 = v8 = v7;
  }

  if (![v5 count])
  {
    [v5 setObject:v7 forKeyedSubscript:@"process_name"];
    [v5 setObject:@"unknown" forKeyedSubscript:@"version"];
  }

  driveCapacity = [(PLCoalitionAgent *)self driveCapacity];
  v38 = v5;
  [v5 setObject:driveCapacity forKeyedSubscript:@"capacity"];

  v11 = [aggdCopy objectForKeyedSubscript:@"bytesread"];
  unsignedLongLongValue = [v11 unsignedLongLongValue];

  v12 = [aggdCopy objectForKeyedSubscript:@"byteswritten"];
  unsignedLongLongValue2 = [v12 unsignedLongLongValue];

  v14 = [aggdCopy objectForKeyedSubscript:@"fs_metadata_writes"];
  unsignedLongLongValue3 = [v14 unsignedLongLongValue];

  v16 = [aggdCopy objectForKeyedSubscript:@"pm_writes"];
  unsignedLongLongValue4 = [v16 unsignedLongLongValue];

  v18 = [aggdCopy objectForKeyedSubscript:@"logical_deferred_writes"];
  unsignedLongLongValue5 = [v18 unsignedLongLongValue];
  v20 = [aggdCopy objectForKeyedSubscript:@"logical_immediate_writes"];
  v21 = [v20 unsignedLongLongValue] + unsignedLongLongValue5;
  v22 = [aggdCopy objectForKeyedSubscript:@"logical_metadata_writes"];
  v23 = v21 + [v22 unsignedLongLongValue];
  v24 = [aggdCopy objectForKeyedSubscript:@"logical_invalidated_writes"];
  v25 = v23 - [v24 unsignedLongLongValue];

  MEMORY[0x25F8D18D0]([@"com.apple.power.coalition.logical_bytes_written" stringByAppendingFormat:@".%@", v7], v25);
  MEMORY[0x25F8D18D0]([@"com.apple.power.coalition.bytesread" stringByAppendingFormat:@".%@", v7], unsignedLongLongValue);
  MEMORY[0x25F8D18D0]([@"com.apple.power.coalition.byteswritten" stringByAppendingFormat:@".%@", v7], unsignedLongLongValue2);
  if (v25 > 0x4C4B40 || unsignedLongLongValue2 > 0x4C4B40 || unsignedLongLongValue3 > 0x4C4B40 || unsignedLongLongValue4 > 0x4C4B40 || unsignedLongLongValue >= 0x1312D01)
  {
    v40 = v38;
    AnalyticsSendEventLazy();
  }

  v26 = [aggdCopy objectForKeyedSubscript:@"cpu_time"];
  unsignedLongLongValue6 = [v26 unsignedLongLongValue];

  v28 = [aggdCopy objectForKeyedSubscript:@"platform_idle_wakeups"];
  [v28 unsignedLongLongValue];

  v29 = [aggdCopy objectForKeyedSubscript:@"interrupt_wakeups"];
  [v29 unsignedLongLongValue];

  v30 = [aggdCopy objectForKeyedSubscript:@"bytesread"];
  [v30 unsignedLongLongValue];

  v31 = [aggdCopy objectForKeyedSubscript:@"logical_immediate_writes"];
  [v31 unsignedLongLongValue];

  v32 = [aggdCopy objectForKeyedSubscript:@"logical_deferred_writes"];
  [v32 unsignedLongLongValue];

  v33 = [aggdCopy objectForKeyedSubscript:@"logical_metadata_writes"];
  [v33 unsignedLongLongValue];

  v34 = [aggdCopy objectForKeyedSubscript:@"logical_invalidated_writes"];
  [v34 unsignedLongLongValue];

  v35 = [aggdCopy objectForKeyedSubscript:@"gpu_time"];
  unsignedLongLongValue7 = [v35 unsignedLongLongValue];

  if (v25 > 0x4C4B40 || unsignedLongLongValue6 > 5 || unsignedLongLongValue7)
  {
    v39 = v7;
    AnalyticsSendEventLazy();
  }
}

id __30__PLCoalitionAgent_logToAggd___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a1[4]];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[5]];
  [v2 setObject:v3 forKeyedSubscript:@"bytes_read"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  [v2 setObject:v4 forKeyedSubscript:@"bytes_written"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[7]];
  [v2 setObject:v5 forKeyedSubscript:@"logical_writes"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[8]];
  [v2 setObject:v6 forKeyedSubscript:@"fs_metadata_writes"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[9]];
  [v2 setObject:v7 forKeyedSubscript:@"pm_writes"];

  return v2;
}

id __30__PLCoalitionAgent_logToAggd___block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:a1[4] forKeyedSubscript:@"label"];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[5]];
  [v2 setObject:v3 forKeyedSubscript:@"cpu_time"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  [v2 setObject:v4 forKeyedSubscript:@"wakeups"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[7]];
  [v2 setObject:v5 forKeyedSubscript:@"interrupts"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[8]];
  [v2 setObject:v6 forKeyedSubscript:@"disk_bytes_read"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[9]];
  [v2 setObject:v7 forKeyedSubscript:@"bytes_written_immediate"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[10]];
  [v2 setObject:v8 forKeyedSubscript:@"bytes_written_deferred"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[11]];
  [v2 setObject:v9 forKeyedSubscript:@"bytes_written_meta"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[12]];
  [v2 setObject:v10 forKeyedSubscript:@"bytes_written_inv"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[13]];
  [v2 setObject:v11 forKeyedSubscript:@"gpu_time"];

  return v2;
}

- (id)buildPLEntryDiffWithStartObject:(id)object withEndObject:(id)endObject withStartDate:(id)date withEndDate:(id)endDate
{
  objectCopy = object;
  endObjectCopy = endObject;
  dateCopy = date;
  endDateCopy = endDate;
  v13 = objc_alloc(MEMORY[0x277D3F190]);
  v14 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CoalitionInterval"];
  v15 = [v13 initWithEntryKey:v14 withDate:dateCopy];

  v126 = endDateCopy;
  [v15 setObject:endDateCopy forKeyedSubscript:@"timestampEnd"];
  launchdName = [endObjectCopy launchdName];
  [v15 setObject:launchdName forKeyedSubscript:@"LaunchdName"];

  bundleID = [endObjectCopy bundleID];
  [v15 setObject:bundleID forKeyedSubscript:@"BundleId"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(endObjectCopy, "coalitionID")}];
  [v15 setObject:v18 forKeyedSubscript:@"LaunchdCoalitionId"];

  v128 = endObjectCopy;
  coalStruct = [endObjectCopy coalStruct];
  pointerValue = [coalStruct pointerValue];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*pointerValue];
  [v15 setObject:v21 forKeyedSubscript:@"tasks_started"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[1]];
  [v15 setObject:v22 forKeyedSubscript:@"tasks_exited"];

  if (objectCopy)
  {
    v125 = objectCopy;
    coalStruct2 = [objectCopy coalStruct];
    pointerValue2 = [coalStruct2 pointerValue];

    v25 = MEMORY[0x277CCABB0];
    v26 = pointerValue[2];
    v27 = pointerValue2[2];
    if (v26 < v27)
    {
      v27 = 0;
    }

    [PLUtilities secondsFromMachTime:v26 - v27];
    v28 = [v25 numberWithDouble:?];
    [v15 setObject:v28 forKeyedSubscript:@"time_nonempty"];

    v29 = MEMORY[0x277CCABB0];
    v30 = pointerValue[3];
    v31 = pointerValue2[3];
    if (v30 < v31)
    {
      v31 = 0;
    }

    [PLUtilities secondsFromMachTime:v30 - v31];
    v32 = [v29 numberWithDouble:?];
    [v15 setObject:v32 forKeyedSubscript:@"cpu_time"];

    v33 = pointerValue[31];
    v34 = pointerValue2[31];
    if (v33 < v34)
    {
      v34 = 0;
    }

    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v33 - v34];
    [v15 setObject:v35 forKeyedSubscript:@"cpu_instructions"];

    v36 = pointerValue[32];
    v37 = pointerValue2[32];
    if (v36 < v37)
    {
      v37 = 0;
    }

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36 - v37];
    [v15 setObject:v38 forKeyedSubscript:@"cpu_cycles"];

    v39 = MEMORY[0x277CCABB0];
    v40 = pointerValue[8];
    v41 = pointerValue2[8];
    if (v40 < v41)
    {
      v41 = 0;
    }

    [PLUtilities secondsFromMachTime:v40 - v41];
    v42 = [v39 numberWithDouble:?];
    [v15 setObject:v42 forKeyedSubscript:@"gpu_time"];

    v43 = pointerValue[41];
    v44 = pointerValue2[41];
    if (v43 < v44)
    {
      v44 = 0;
    }

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v43 - v44];
    [v15 setObject:v45 forKeyedSubscript:@"gpu_energy_nj"];

    v46 = pointerValue[42];
    v47 = pointerValue2[42];
    if (v46 < v47)
    {
      v47 = 0;
    }

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v46 - v47];
    [v15 setObject:v48 forKeyedSubscript:@"gpu_energy_nj_billed_to_me"];

    v49 = pointerValue[43];
    v50 = pointerValue2[43];
    if (v49 < v50)
    {
      v50 = 0;
    }

    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v49 - v50];
    [v15 setObject:v51 forKeyedSubscript:@"gpu_energy_nj_billed_to_others"];

    v52 = MEMORY[0x277CCABB0];
    v53 = pointerValue[9];
    v54 = pointerValue2[9];
    if (v53 < v54)
    {
      v54 = 0;
    }

    [PLUtilities secondsFromMachTime:v53 - v54];
    v55 = [v52 numberWithDouble:?];
    [v15 setObject:v55 forKeyedSubscript:@"cpu_time_billed_to_me"];

    v56 = MEMORY[0x277CCABB0];
    v57 = pointerValue[10];
    v58 = pointerValue2[10];
    if (v57 < v58)
    {
      v58 = 0;
    }

    [PLUtilities secondsFromMachTime:v57 - v58];
    v59 = [v56 numberWithDouble:?];
    [v15 setObject:v59 forKeyedSubscript:@"cpu_time_billed_to_others"];

    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[39] - pointerValue2[39]];
    [v15 setObject:v60 forKeyedSubscript:@"ane_energy_nj"];

    v61 = MEMORY[0x277CCABB0];
    v62 = pointerValue[38];
    v63 = pointerValue2[38];
    if (v62 < v63)
    {
      v63 = 0;
    }

    [PLUtilities secondsFromMachTime:v62 - v63];
    v64 = [v61 numberWithDouble:?];
    [v15 setObject:v64 forKeyedSubscript:@"ane_time"];

    v65 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[4] - pointerValue2[4]];
    [v15 setObject:v65 forKeyedSubscript:@"interrupt_wakeups"];

    v66 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[5] - pointerValue2[5]];
    [v15 setObject:v66 forKeyedSubscript:@"platform_idle_wakeups"];

    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[6] - pointerValue2[6]];
    [v15 setObject:v67 forKeyedSubscript:@"bytesread"];

    v68 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[7] - pointerValue2[7]];
    [v15 setObject:v68 forKeyedSubscript:@"byteswritten"];

    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[12] - pointerValue2[12]];
    [v15 setObject:v69 forKeyedSubscript:@"logical_immediate_writes"];

    v70 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[13] - pointerValue2[13]];
    [v15 setObject:v70 forKeyedSubscript:@"logical_deferred_writes"];

    v71 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[14] - pointerValue2[14]];
    [v15 setObject:v71 forKeyedSubscript:@"logical_invalidated_writes"];

    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[15] - pointerValue2[15]];
    [v15 setObject:v72 forKeyedSubscript:@"logical_metadata_writes"];

    v73 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[33] - pointerValue2[33]];
    [v15 setObject:v73 forKeyedSubscript:@"fs_metadata_writes"];

    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[34] - pointerValue2[34]];
    [v15 setObject:v74 forKeyedSubscript:@"pm_writes"];

    v75 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[11] - pointerValue2[11]];
    [v15 setObject:v75 forKeyedSubscript:@"energy"];

    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[20] - pointerValue2[20]];
    [v15 setObject:v76 forKeyedSubscript:@"energy_billed_to_me"];

    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[21] - pointerValue2[21]];
    [v15 setObject:v77 forKeyedSubscript:@"energy_billed_to_others"];

    for (i = 0; i != 7; ++i)
    {
      v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"cpu_time_eqos_%d", i];
      v80 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:pointerValue[i + 24] - pointerValue2[i + 24]];
      v81 = [v80 numberWithDouble:?];
      [v15 setObject:v81 forKeyedSubscript:v79];
    }

    v82 = MEMORY[0x277CCABB0];
    [PLUtilities secondsFromMachTime:pointerValue[22] - pointerValue2[22]];
    v83 = [v82 numberWithDouble:?];
    [v15 setObject:v83 forKeyedSubscript:@"cpu_ptime"];

    v84 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[36] - pointerValue2[36]];
    [v15 setObject:v84 forKeyedSubscript:@"cpu_pcycles"];

    v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[35] - pointerValue2[35]];
    objectCopy = v125;
  }

  else
  {
    v86 = MEMORY[0x277CCABB0];
    [PLUtilities secondsFromMachTime:pointerValue[2]];
    v87 = [v86 numberWithDouble:?];
    [v15 setObject:v87 forKeyedSubscript:@"time_nonempty"];

    v88 = MEMORY[0x277CCABB0];
    [PLUtilities secondsFromMachTime:pointerValue[3]];
    v89 = [v88 numberWithDouble:?];
    [v15 setObject:v89 forKeyedSubscript:@"cpu_time"];

    v90 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[31]];
    [v15 setObject:v90 forKeyedSubscript:@"cpu_instructions"];

    v91 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[32]];
    [v15 setObject:v91 forKeyedSubscript:@"cpu_cycles"];

    v92 = MEMORY[0x277CCABB0];
    [PLUtilities secondsFromMachTime:pointerValue[8]];
    v93 = [v92 numberWithDouble:?];
    [v15 setObject:v93 forKeyedSubscript:@"gpu_time"];

    v94 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[41]];
    [v15 setObject:v94 forKeyedSubscript:@"gpu_energy_nj"];

    v95 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[42]];
    [v15 setObject:v95 forKeyedSubscript:@"gpu_energy_nj_billed_to_me"];

    v96 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[43]];
    [v15 setObject:v96 forKeyedSubscript:@"gpu_energy_nj_billed_to_others"];

    v97 = MEMORY[0x277CCABB0];
    [PLUtilities secondsFromMachTime:pointerValue[9]];
    v98 = [v97 numberWithDouble:?];
    [v15 setObject:v98 forKeyedSubscript:@"cpu_time_billed_to_me"];

    v99 = MEMORY[0x277CCABB0];
    [PLUtilities secondsFromMachTime:pointerValue[10]];
    v100 = [v99 numberWithDouble:?];
    [v15 setObject:v100 forKeyedSubscript:@"cpu_time_billed_to_others"];

    v101 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[39]];
    [v15 setObject:v101 forKeyedSubscript:@"ane_energy_nj"];

    v102 = MEMORY[0x277CCABB0];
    [PLUtilities secondsFromMachTime:pointerValue[38]];
    v103 = [v102 numberWithDouble:?];
    [v15 setObject:v103 forKeyedSubscript:@"ane_time"];

    v104 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[4]];
    [v15 setObject:v104 forKeyedSubscript:@"interrupt_wakeups"];

    v105 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[5]];
    [v15 setObject:v105 forKeyedSubscript:@"platform_idle_wakeups"];

    v106 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[6]];
    [v15 setObject:v106 forKeyedSubscript:@"bytesread"];

    v107 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[7]];
    [v15 setObject:v107 forKeyedSubscript:@"byteswritten"];

    v108 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[12]];
    [v15 setObject:v108 forKeyedSubscript:@"logical_immediate_writes"];

    v109 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[13]];
    [v15 setObject:v109 forKeyedSubscript:@"logical_deferred_writes"];

    v110 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[14]];
    [v15 setObject:v110 forKeyedSubscript:@"logical_invalidated_writes"];

    v111 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[15]];
    [v15 setObject:v111 forKeyedSubscript:@"logical_metadata_writes"];

    v112 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[33]];
    [v15 setObject:v112 forKeyedSubscript:@"fs_metadata_writes"];

    v113 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[34]];
    [v15 setObject:v113 forKeyedSubscript:@"pm_writes"];

    v114 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[11]];
    [v15 setObject:v114 forKeyedSubscript:@"energy"];

    v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[20]];
    [v15 setObject:v115 forKeyedSubscript:@"energy_billed_to_me"];

    v116 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[21]];
    [v15 setObject:v116 forKeyedSubscript:@"energy_billed_to_others"];

    for (j = 0; j != 7; ++j)
    {
      v118 = [MEMORY[0x277CCACA8] stringWithFormat:@"cpu_time_eqos_%d", j];
      v119 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:pointerValue[j + 24]];
      v120 = [v119 numberWithDouble:?];
      [v15 setObject:v120 forKeyedSubscript:v118];
    }

    v121 = MEMORY[0x277CCABB0];
    [PLUtilities secondsFromMachTime:pointerValue[22]];
    v122 = [v121 numberWithDouble:?];
    [v15 setObject:v122 forKeyedSubscript:@"cpu_ptime"];

    v123 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[36]];
    [v15 setObject:v123 forKeyedSubscript:@"cpu_pcycles"];

    v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:pointerValue[35]];
  }

  [v15 setObject:v85 forKeyedSubscript:@"cpu_pinstructions"];

  [(PLCoalitionAgent *)self logToAggd:v15];
  if ([v128 isUIKitApp])
  {
    [(PLCoalitionAgent *)self logAggregateNANDStatsWithInfo:v15];
  }

  return v15;
}

- (void)logCoalitionObjectDifference:(id)difference
{
  v61 = *MEMORY[0x277D85DE8];
  differenceCopy = difference;
  lastCoalitionObjectDictionary = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
  if (lastCoalitionObjectDictionary)
  {
    v6 = lastCoalitionObjectDictionary;
    lastCoalitionObjectDictionary2 = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
    v8 = [lastCoalitionObjectDictionary2 count];

    if (v8)
    {
      array = [MEMORY[0x277CBEB18] array];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v10 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__PLCoalitionAgent_logCoalitionObjectDifference___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v10;
        if (logCoalitionObjectDifference__defaultOnce != -1)
        {
          dispatch_once(&logCoalitionObjectDifference__defaultOnce, block);
        }

        if (logCoalitionObjectDifference__classDebugEnabled == 1)
        {
          v11 = MEMORY[0x277CCACA8];
          lastCoalitionObjectDictionary3 = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
          v13 = [v11 stringWithFormat:@"newCoalitionObjectDictionary=%@\nself.lastCoalitionObjectDictionary=%@", differenceCopy, lastCoalitionObjectDictionary3];

          v14 = MEMORY[0x277D3F178];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLCoalitionAgent.m"];
          lastPathComponent = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCoalitionAgent logCoalitionObjectDifference:]"];
          [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:1358];

          v19 = PLLogCommon(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v51 = array;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v49 = differenceCopy;
      v20 = differenceCopy;
      v21 = [v20 countByEnumeratingWithState:&v53 objects:v60 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v54;
        v50 = v20;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v54 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v53 + 1) + 8 * i);
            lastCoalitionObjectDictionary4 = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
            v27 = [lastCoalitionObjectDictionary4 objectForKeyedSubscript:v25];
            v28 = [v20 objectForKeyedSubscript:v25];
            v29 = [(PLCoalitionAgent *)self shouldLogCoalitionObject:v27 withEndObject:v28];

            if (v29)
            {
              lastCoalitionObjectDictionary5 = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
              v31 = [lastCoalitionObjectDictionary5 objectForKeyedSubscript:v25];
              v32 = [v20 objectForKeyedSubscript:v25];
              lastDate = [(PLCoalitionAgent *)self lastDate];
              currentDate = [(PLCoalitionAgent *)self currentDate];
              [(PLCoalitionAgent *)self buildPLEntryDiffWithStartObject:v31 withEndObject:v32 withStartDate:lastDate withEndDate:currentDate];
              selfCopy = self;
              v36 = v22;
              v38 = v37 = v23;

              [v51 addObject:v38];
              v23 = v37;
              v22 = v36;
              self = selfCopy;
              v20 = v50;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v53 objects:v60 count:16];
        }

        while (v22);
      }

      if ([v51 count])
      {
        v39 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CoalitionInterval"];
        v58 = v39;
        v59 = v51;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        [(PLOperator *)self logEntries:v40 withGroupID:v39];
      }

      [(PLCoalitionAgent *)self addAccountingEventsFromCoalitions:v51];
      differenceCopy = v49;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v41 = objc_opt_class();
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __49__PLCoalitionAgent_logCoalitionObjectDifference___block_invoke_776;
        v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v52[4] = v41;
        if (logCoalitionObjectDifference__defaultOnce_774 != -1)
        {
          dispatch_once(&logCoalitionObjectDifference__defaultOnce_774, v52);
        }

        if (logCoalitionObjectDifference__classDebugEnabled_775 == 1)
        {
          v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"New way %@", v51];
          v43 = MEMORY[0x277D3F178];
          v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLCoalitionAgent.m"];
          lastPathComponent2 = [v44 lastPathComponent];
          v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCoalitionAgent logCoalitionObjectDifference:]"];
          [v43 logMessage:v42 fromFile:lastPathComponent2 fromFunction:v46 fromLineNumber:1375];

          v48 = PLLogCommon(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }
    }
  }
}

void *__49__PLCoalitionAgent_logCoalitionObjectDifference___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logCoalitionObjectDifference__classDebugEnabled = result;
  return result;
}

void *__49__PLCoalitionAgent_logCoalitionObjectDifference___block_invoke_776(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logCoalitionObjectDifference__classDebugEnabled_775 = result;
  return result;
}

- (void)addAccountingEventsFromCoalitions:(id)coalitions
{
  v70 = *MEMORY[0x277D85DE8];
  coalitionsCopy = coalitions;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v58 = objc_opt_new();
    v57 = objc_opt_new();
    v5 = objc_opt_new();
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v56 = coalitionsCopy;
    v6 = coalitionsCopy;
    v7 = [v6 countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v65;
      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v65 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v64 + 1) + 8 * i);
          [(PLCoalitionAgent *)self getCPUWeightFromEntry:v14, v56];
          v12 = v12 + v15;
          [(PLCoalitionAgent *)self getGPUWeightFromEntry:v14];
          v11 = v11 + v16;
          [(PLCoalitionAgent *)self getANEEnergyFromEntry:v14];
          v10 = v10 + v17;
        }

        v8 = [v6 countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v60 objects:v68 count:16];
    v20 = v57;
    if (v19)
    {
      v21 = v19;
      v22 = *v61;
      v59 = v5;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v61 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v60 + 1) + 8 * j);
          v25 = [PLUtilities getIdentifierFromEntry:v24, v56];
          if (v12 > 0.0)
          {
            [(PLCoalitionAgent *)self getCPUWeightFromEntry:v24];
            if (v26 > 0.0)
            {
              v27 = v26 / v12;
              v28 = [v58 objectForKey:v25];

              v29 = MEMORY[0x277CCABB0];
              if (v28)
              {
                v30 = [v58 objectForKeyedSubscript:v25];
                [v30 doubleValue];
                v32 = [v29 numberWithDouble:v27 + v31];
                [v58 setObject:v32 forKeyedSubscript:v25];
              }

              else
              {
                v30 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
                [v58 setObject:v30 forKeyedSubscript:v25];
              }

              v20 = v57;
              v5 = v59;
            }
          }

          if (v11 > 0.0)
          {
            [(PLCoalitionAgent *)self getGPUWeightFromEntry:v24];
            if (v33 > 0.0)
            {
              v34 = v33 / v11;
              v35 = [v20 objectForKey:v25];

              v36 = MEMORY[0x277CCABB0];
              if (v35)
              {
                v37 = [v20 objectForKeyedSubscript:v25];
                [v37 doubleValue];
                v39 = [v36 numberWithDouble:v34 + v38];
                [v20 setObject:v39 forKeyedSubscript:v25];
              }

              else
              {
                v37 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
                [v20 setObject:v37 forKeyedSubscript:v25];
              }

              v5 = v59;
            }
          }

          if (v10 > 0.0)
          {
            [(PLCoalitionAgent *)self getANEEnergyFromEntry:v24];
            if (v40 > 0.0)
            {
              v41 = v40 / v10;
              v42 = [v5 objectForKey:v25];

              v43 = MEMORY[0x277CCABB0];
              if (v42)
              {
                v44 = [v5 objectForKeyedSubscript:v25];
                [v44 doubleValue];
                v46 = [v43 numberWithDouble:v41 + v45];
                [v5 setObject:v46 forKeyedSubscript:v25];
              }

              else
              {
                v44 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
                [v5 setObject:v44 forKeyedSubscript:v25];
              }
            }
          }
        }

        v21 = [v18 countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v21);
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    currentDate = [(PLCoalitionAgent *)self currentDate];
    [mEMORY[0x277D3F0C0] createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:v58 withEndDate:currentDate];

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    currentDate2 = [(PLCoalitionAgent *)self currentDate];
    [mEMORY[0x277D3F0C0]2 createDistributionEventBackwardWithDistributionID:34 withChildNodeNameToWeight:v20 withEndDate:currentDate2];

    currentDate3 = [(PLCoalitionAgent *)self currentDate];
    v52 = [currentDate3 dateByAddingTimeInterval:-5.0];

    mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]3 createDistributionEventBackwardWithDistributionID:52 withChildNodeNameToWeight:v5 withEndDate:v52];

    mEMORY[0x277D3F0C0]4 = [MEMORY[0x277D3F0C0] sharedInstance];
    currentDate4 = [(PLCoalitionAgent *)self currentDate];
    [mEMORY[0x277D3F0C0]4 createDistributionEventBackwardWithDistributionID:52 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withEndDate:currentDate4];

    coalitionsCopy = v56;
  }
}

- (double)getCPUEnergyFromEntry:(id)entry
{
  entryCopy = entry;
  v4 = [entryCopy objectForKeyedSubscript:@"energy"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [entryCopy objectForKeyedSubscript:@"energy_billed_to_me"];
  [v7 doubleValue];
  v9 = v6 + v8;
  v10 = [entryCopy objectForKeyedSubscript:@"energy_billed_to_others"];

  [v10 doubleValue];
  v12 = v9 - v11;

  result = 0.0;
  if (v12 >= 0.0)
  {
    return v12;
  }

  return result;
}

- (double)getCPUVoucherTimeFromEntry:(id)entry
{
  entryCopy = entry;
  v4 = [entryCopy objectForKeyedSubscript:@"cpu_time"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [entryCopy objectForKeyedSubscript:@"cpu_time_billed_to_me"];
  [v7 doubleValue];
  v9 = v6 + v8;
  v10 = [entryCopy objectForKeyedSubscript:@"cpu_time_billed_to_others"];

  [v10 doubleValue];
  v12 = v9 - v11;

  result = 0.0;
  if (v12 >= 0.0)
  {
    return v12;
  }

  return result;
}

- (double)getGPUEnergyFromEntry:(id)entry
{
  entryCopy = entry;
  v4 = [entryCopy objectForKeyedSubscript:@"gpu_energy_nj"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [entryCopy objectForKeyedSubscript:@"gpu_energy_nj_billed_to_me"];
  [v7 doubleValue];
  v9 = v6 + v8;
  v10 = [entryCopy objectForKeyedSubscript:@"gpu_energy_nj_billed_to_others"];

  [v10 doubleValue];
  v12 = v9 - v11;

  result = 0.0;
  if (v12 >= 0.0)
  {
    return v12;
  }

  return result;
}

- (double)getGPUTimeFromEntry:(id)entry
{
  v3 = [entry objectForKeyedSubscript:@"gpu_time"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)getCPUWeightFromEntry:(id)entry
{
  entryCopy = entry;
  if (getCPUWeightFromEntry__onceToken != -1)
  {
    [PLCoalitionAgent getCPUWeightFromEntry:];
  }

  if (getCPUWeightFromEntry____useCPUEnergy)
  {
    [(PLCoalitionAgent *)self getCPUVoucherTimeFromEntry:entryCopy];
  }

  else
  {
    [(PLCoalitionAgent *)self getCPUEnergyFromEntry:entryCopy];
  }

  v6 = v5;

  return v6;
}

void *__42__PLCoalitionAgent_getCPUWeightFromEntry___block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLSoCClassIsOneOf:{1001003, 1001004, 1001005, 1001006, 1001007, 1001008, 1001009, 0}];
  if (result)
  {
    getCPUWeightFromEntry____useCPUEnergy = 1;
  }

  return result;
}

- (double)getGPUWeightFromEntry:(id)entry
{
  entryCopy = entry;
  if (getGPUWeightFromEntry__onceToken != -1)
  {
    [PLCoalitionAgent getGPUWeightFromEntry:];
  }

  if (getGPUWeightFromEntry____useGPUEnergy == 1)
  {
    [(PLCoalitionAgent *)self getGPUEnergyFromEntry:entryCopy];
  }

  else
  {
    [(PLCoalitionAgent *)self getGPUTimeFromEntry:entryCopy];
  }

  v6 = v5;

  return v6;
}

void *__42__PLCoalitionAgent_getGPUWeightFromEntry___block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  if (result > 1001018)
  {
    result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    if (result != 1001020)
    {
      result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
      if (result != 1001028)
      {
        getGPUWeightFromEntry____useGPUEnergy = 1;
      }
    }
  }

  return result;
}

- (void)getCoalitionInfoWithHFLFlag:(BOOL)flag
{
  v56 = *MEMORY[0x277D85DE8];
  v52 = objc_opt_new();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLCoalitionAgent *)self setCurrentDate:monotonicDate];

  v5 = proc_listcoalitions();
  v6 = (2 * v5);
  v7 = malloc_type_malloc(v6, 0x1000040451B5BE8uLL);
  v8 = proc_listcoalitions();
  v9 = v8;
  if (v8 > 2 * v5)
  {
    v10 = objc_alloc(MEMORY[0x277D3F190]);
    v11 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CoalitionDrops"];
    [(PLCoalitionAgent *)self currentDate];
    v13 = v12 = v7;
    v14 = [v10 initWithEntryKey:v11 withDate:v13];

    v15 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    [v14 setObject:v15 forKeyedSubscript:@"finalSize"];

    v16 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    [v14 setObject:v16 forKeyedSubscript:@"bufferSize"];

    [(PLOperator *)self logEntry:v14];
    [(PLCoalitionAgent *)self logToAggd:v14];
    if (v12)
    {
      free(v12);
    }

    v17 = v52;
    goto LABEL_41;
  }

  v18 = (v8 >> 4);
  v51 = v7;
  if (v18 >= 1)
  {
    v49 = *MEMORY[0x277D863D8];
    key = *MEMORY[0x277D863D0];
    v19 = v7;
    while (1)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = malloc_type_malloc(0x168uLL, 0x1000040DAE56E47uLL);
      v22 = coalition_info_resource_usage();
      if (!v22)
      {
        break;
      }

      v23 = v22;
      if (v21)
      {
        free(v21);
      }

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_26;
      }

      v24 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__PLCoalitionAgent_getCoalitionInfoWithHFLFlag___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v24;
      if (getCoalitionInfoWithHFLFlag__defaultOnce != -1)
      {
        dispatch_once(&getCoalitionInfoWithHFLFlag__defaultOnce, block);
      }

      if (getCoalitionInfoWithHFLFlag__classDebugEnabled != 1)
      {
        goto LABEL_26;
      }

      launchdName = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot retrieve coalition information returnVal=%d", v23];;
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLCoalitionAgent.m"];
      lastPathComponent = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCoalitionAgent getCoalitionInfoWithHFLFlag:]"];
      [v26 logMessage:launchdName fromFile:lastPathComponent fromFunction:v29 fromLineNumber:1579];

      bundleID = PLLogCommon(v30);
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v55 = launchdName;
        _os_log_debug_impl(&dword_25EE51000, bundleID, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_25:

LABEL_26:
      objc_autoreleasePoolPop(v20);
      v19 += 2;
      if (!--v18)
      {
        goto LABEL_39;
      }
    }

    lastCoalitionObjectDictionary = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v19];
    v34 = [lastCoalitionObjectDictionary objectForKeyedSubscript:v33];

    if (v34)
    {
      bundleID = [v34 bundleID];
      launchdName = [v34 launchdName];
      isUIKitApp = [v34 isUIKitApp];
LABEL_24:
      currentDate = [(PLCoalitionAgent *)self currentDate];
      v39 = [(PLCoalitionAgent *)self buildPLCoalitionDataObject:v21 withBundleId:bundleID withLaunchdName:launchdName withDate:currentDate withCoalitionId:*v19 isApp:isUIKitApp];
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v19];
      [v52 setObject:v39 forKeyedSubscript:v40];

      goto LABEL_25;
    }

    v36 = xpc_coalition_copy_info();
    v37 = v36;
    if (!v36 || MEMORY[0x25F8D2C50](v36) != MEMORY[0x277D86468])
    {
      isUIKitApp = 0;
      bundleID = &stru_287103958;
      if (*v19 == 1)
      {
        launchdName = @"com.apple.kernel_task";
      }

      else
      {
        launchdName = &stru_287103958;
      }

      goto LABEL_23;
    }

    string = xpc_dictionary_get_string(v37, key);
    v42 = string;
    if (*v19 == 1)
    {
      isUIKitApp = 0;
      launchdName = @"com.apple.kernel_task";
      if (string)
      {
LABEL_30:
        bundleID = [MEMORY[0x277CCACA8] stringWithUTF8String:v42];
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v48 = string;
      v43 = xpc_dictionary_get_string(v37, v49);
      if (v43)
      {
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:v43];
      }

      else
      {
        v44 = @"Unnamed_launchdName";
      }

      isUIKitApp = [(__CFString *)v44 hasPrefix:@"UIKitApplication:"];
      launchdName = [(__CFString *)v44 stringByReplacingOccurrencesOfString:@"UIKitApplication:" withString:&stru_287103958];

      v45 = [(__CFString *)launchdName rangeOfString:@"["];
      if (v45 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v46 = [(__CFString *)launchdName substringToIndex:v45];

        launchdName = v46;
      }

      v42 = v48;
      if (v48)
      {
        goto LABEL_30;
      }
    }

    bundleID = &stru_287103958;
    goto LABEL_23;
  }

  if (v7)
  {
LABEL_39:
    free(v51);
  }

  v17 = v52;
  [(PLCoalitionAgent *)self logCoalitionObjectDifference:v52];
  [(PLCoalitionAgent *)self setLastCoalitionObjectDictionary:v52];
  currentDate2 = [(PLCoalitionAgent *)self currentDate];
  [(PLCoalitionAgent *)self setLastDate:currentDate2];

LABEL_41:
}

void *__48__PLCoalitionAgent_getCoalitionInfoWithHFLFlag___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getCoalitionInfoWithHFLFlag__classDebugEnabled = result;
  return result;
}

- (double)getANEEnergyFromEntry:(id)entry
{
  v3 = [entry objectForKeyedSubscript:@"ane_energy_nj"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (id)processPerAppLogicalWritesWithInfo:(id)info
{
  v47[2] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [MEMORY[0x277CBEAA8] nearestMidnightAfterDate:date];
  v6 = [v5 dateByAddingTimeInterval:-1209600.0];
  v7 = v5;
  [v6 timeIntervalSince1970];
  v9 = v8;
  [v7 timeIntervalSince1970];
  v11 = v10;

  v12 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"NANDStats"];
  v13 = objc_msgSend_storage(self);
  v14 = [v13 aggregateEntriesForKey:v12 withBucketLength:86400.0 inTimeIntervalRange:{v9, v11 - v9}];

  v15 = [infoCopy objectForKeyedSubscript:@"LogicalWriteThresholdPerDay"];
  unsignedIntegerValue = [v15 unsignedIntegerValue];
  if (unsignedIntegerValue)
  {
    v17 = unsignedIntegerValue;
  }

  else
  {
    v17 = 104857600;
  }

  v19 = PLLogCommon(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [PLCoalitionAgent processPerAppLogicalWritesWithInfo:];
  }

  v20 = [MEMORY[0x277CBEB58] set];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __55__PLCoalitionAgent_processPerAppLogicalWritesWithInfo___block_invoke;
  v43[3] = &unk_279A5BFD8;
  v45 = v17;
  v21 = v20;
  v44 = v21;
  [v14 enumerateObjectsUsingBlock:v43];
  array = [MEMORY[0x277CBEB18] array];
  v23 = 14;
  do
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [array addObject:dictionary];

    --v23;
  }

  while (v23);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__0;
  v39[4] = __Block_byref_object_dispose__0;
  v40 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __55__PLCoalitionAgent_processPerAppLogicalWritesWithInfo___block_invoke_805;
  v33[3] = &unk_279A5C000;
  v25 = v21;
  v34 = v25;
  v37 = v39;
  v38 = v41;
  v26 = v6;
  v35 = v26;
  v27 = array;
  v36 = v27;
  [v14 enumerateObjectsUsingBlock:v33];
  v46[0] = @"responseStartTimestamp";
  v28 = MEMORY[0x277CCABB0];
  [v26 timeIntervalSince1970];
  v29 = [v28 numberWithDouble:?];
  v46[1] = @"queryResultsPerDay";
  v47[0] = v29;
  v47[1] = v27;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);

  return v30;
}

void __55__PLCoalitionAgent_processPerAppLogicalWritesWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:@"BundleId"];
  v4 = [v3 hasPrefix:@"Unspecified"];

  if ((v4 & 1) == 0)
  {
    v5 = [v10 objectForKeyedSubscript:@"LogicalWrites"];
    v6 = [v5 unsignedIntegerValue];
    v7 = *(a1 + 40);

    if (v6 > v7)
    {
      v8 = *(a1 + 32);
      v9 = [v10 objectForKeyedSubscript:@"BundleId"];
      [v8 addObject:v9];
    }
  }
}

void __55__PLCoalitionAgent_processPerAppLogicalWritesWithInfo___block_invoke_805(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v16 = v3;
  v5 = [v3 objectForKeyedSubscript:@"BundleId"];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v16 entryDate];
    v7 = [v6 isEqualToDate:*(*(*(a1 + 56) + 8) + 40)];

    if ((v7 & 1) == 0)
    {
      v8 = [v16 entryDate];
      v9 = [v8 convertFromMonotonicToSystem];

      [v9 timeIntervalSinceDate:*(a1 + 40)];
      *(*(*(a1 + 64) + 8) + 24) = (v10 / 86400.0);
      if ((*(*(*(a1 + 64) + 8) + 24) & 0x80000000) != 0)
      {
LABEL_6:

        goto LABEL_7;
      }

      v11 = [v16 entryDate];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v9 = [v16 objectForKeyedSubscript:@"LogicalWrites"];
    v14 = [*(a1 + 48) objectAtIndexedSubscript:*(*(*(a1 + 64) + 8) + 24)];
    v15 = [v16 objectForKeyedSubscript:@"BundleId"];
    [v14 setObject:v9 forKeyedSubscript:v15];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)log
{
  [(PLCoalitionAgent *)self logEventIntervalCoalitionIntervalWithHFLFlag:0];
  lastCoalitionObjectDictionary = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
  [(PLCoalitionAgent *)self logCoalitionObjectMemory:lastCoalitionObjectDictionary];
}

- (void)logAggregateNANDStatsWithInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKeyedSubscript:@"logical_deferred_writes"];
  intValue = [v4 intValue];
  v6 = [infoCopy objectForKeyedSubscript:@"logical_immediate_writes"];
  v7 = [v6 intValue] + intValue;
  v8 = [infoCopy objectForKeyedSubscript:@"logical_metadata_writes"];
  v9 = v7 + [v8 intValue];
  v10 = [infoCopy objectForKeyedSubscript:@"logical_invalidated_writes"];
  v11 = v9 - [v10 intValue];

  if (v11 >= 102400)
  {
    v12 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"NANDStats"];
    v13 = objc_alloc(MEMORY[0x277D3F190]);
    entryDate = [infoCopy entryDate];
    v15 = [v13 initWithEntryKey:v12 withDate:entryDate];

    v16 = [infoCopy objectForKeyedSubscript:@"LaunchdName"];
    [v15 setObject:v16 forKeyedSubscript:@"BundleId"];

    v17 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    [v15 setObject:v17 forKeyedSubscript:@"LogicalWrites"];

    [(PLOperator *)self logEntry:v15];
  }
}

- (void)init
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *self;
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "Picked random time in next hour for sending high frequency stats to CA: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)readPropertyFromRegistry:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "IOServiceGetMatchingServices kernResult %x\n", v2, 8u);
}

- (void)logToCAProcessMemory:andAccumulatedMemory:dailyReport:systemUptime:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&dword_25EE51000, v1, OS_LOG_TYPE_DEBUG, "Don't Log Coalition Memory Stats to CA, since same day as most recent logging (current_day=%llu is less then or equal to most_recent_day=%llu)", v2, 0x16u);
}

- (void)logToCAProcessMemory:(void *)a1 andAccumulatedMemory:(NSObject *)a2 dailyReport:systemUptime:.cold.2(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "Log Process Memory Stats to CA  count %lu", v3, 0xCu);
}

@end