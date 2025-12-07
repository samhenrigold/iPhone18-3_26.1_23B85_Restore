@interface PLPerformanceAgent
+ (BOOL)shouldCreateJetsamPriorityTable;
+ (id)entryEventIntervalDefinitionExperiment;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionAPFSFragmentation;
+ (id)entryEventPointDefinitionCodePrewarming;
+ (id)entryEventPointDefinitionDiskFragmentation;
+ (id)entryEventPointDefinitionDiskUsage;
+ (id)entryEventPointDefinitionIdleReaper;
+ (id)entryEventPointDefinitionJetsamPriority;
+ (id)entryEventPointDefinitionRollout;
+ (id)entryEventPointDefinitionSystemMemory;
+ (id)entryEventPointDefinitionVMTunables;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLPerformanceAgent)init;
- (id)descriptionForMemoryPressure:(int)pressure;
- (int)convertCodePrewarmingSysctl:(id)sysctl;
- (int)countFD:(int)d;
- (int)countMachPort:(int)port;
- (void)initOperatorDependancies;
- (void)log;
- (void)logEventIntervalExperiment;
- (void)logEventPointAPFSFragmentation;
- (void)logEventPointAPFSFragmentationWithContainer:(const char *)container;
- (void)logEventPointCodePrewarming;
- (void)logEventPointDiskFragmentation;
- (void)logEventPointDiskUsage;
- (void)logEventPointIdleReaper;
- (void)logEventPointJetsamPrority;
- (void)logEventPointRollout;
- (void)logEventPointSystemMemory:(BOOL)memory;
- (void)logEventPointSystemMemoryPerProcess:(id)process;
- (void)logEventPointVMTunables;
- (void)logSharedCacheStatisticsToCA:(id)a;
- (void)logSystemMemoryToCA:(id)a;
@end

@implementation PLPerformanceAgent

uint64_t __46__PLPerformanceAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  [*(a1 + 32) logEventPointSystemMemory:1];
  [*(a1 + 32) logEventPointDiskUsage];
  [*(a1 + 32) logEventPointJetsamPrority];
  [*(a1 + 32) logEventPointIdleReaper];
  v2 = *(a1 + 32);

  return [v2 logEventPointCodePrewarming];
}

- (void)logEventPointCodePrewarming
{
  v21 = *MEMORY[0x277D85DE8];
  uTF8String = [@"kern.trial_experiment_id" UTF8String];
  size = 0;
  if (sysctlbyname(uTF8String, 0, &size, 0, 0))
  {
    v4 = PLLogPerformance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = *__error();
      *buf = 138412546;
      v18 = @"kern.trial_experiment_id";
      v19 = 1024;
      v20 = v13;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "Unable to retrieve size for %@ sysctl value, defaulting to empty string: %{errno}d", buf, 0x12u);
    }
  }

  else
  {
    v5 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (sysctlbyname(uTF8String, v5, &size, 0, 0))
    {
      v6 = PLLogPerformance();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v14 = *__error();
        *buf = 138412546;
        v18 = @"kern.trial_experiment_id";
        v19 = 1024;
        v20 = v14;
        _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "Unable to get %@ sysctl value: %{errno}d", buf, 0x12u);
      }

      free(v5);
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
      free(v5);
      v8 = objc_alloc(MEMORY[0x277D3F190]);
      v9 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CodePrewarming"];
      v10 = [v8 initWithEntryKey:v9];

      v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLPerformanceAgent convertCodePrewarmingSysctl:](self, "convertCodePrewarmingSysctl:", v7)}];
      [v10 setObject:v11 forKeyedSubscript:@"State"];

      v12 = PLLogPerformance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        dictionary = [v10 dictionary];
        *buf = 138412290;
        v18 = dictionary;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "CodePrewarming sysctls: %@", buf, 0xCu);
      }

      [(PLOperator *)self logEntry:v10];
    }
  }
}

void *__46__PLPerformanceAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F3071 = result;
  return result;
}

+ (BOOL)shouldCreateJetsamPriorityTable
{
  if (qword_2811F30A8 != -1)
  {
    dispatch_once(&qword_2811F30A8, &__block_literal_global_41);
  }

  return _MergedGlobals_3;
}

void *__53__PLPerformanceAgent_shouldCreateJetsamPriorityTable__block_invoke()
{
  result = [MEMORY[0x277D3F208] isiOS];
  _MergedGlobals_3 = result;
  return result;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLPerformanceAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v14[9] = *MEMORY[0x277D85DE8];
  v2 = +[PLPerformanceAgent entryEventPointDefinitionSystemMemory];
  v14[0] = v2;
  v13[1] = @"DiskUsage";
  v3 = +[PLPerformanceAgent entryEventPointDefinitionDiskUsage];
  v14[1] = v3;
  v13[2] = @"DiskFragmentation";
  v4 = +[PLPerformanceAgent entryEventPointDefinitionDiskFragmentation];
  v14[2] = v4;
  v13[3] = @"JetsamPriority";
  v5 = +[PLPerformanceAgent entryEventPointDefinitionJetsamPriority];
  v14[3] = v5;
  v13[4] = @"APFSFragmentation";
  v6 = +[PLPerformanceAgent entryEventPointDefinitionAPFSFragmentation];
  v14[4] = v6;
  v13[5] = @"Rollout";
  v7 = +[PLPerformanceAgent entryEventPointDefinitionRollout];
  v14[5] = v7;
  v13[6] = @"VMTunables";
  v8 = +[PLPerformanceAgent entryEventPointDefinitionVMTunables];
  v14[6] = v8;
  v13[7] = @"IdleReaper";
  v9 = +[PLPerformanceAgent entryEventPointDefinitionIdleReaper];
  v14[7] = v9;
  v13[8] = @"CodePrewarming";
  v10 = +[PLPerformanceAgent entryEventPointDefinitionCodePrewarming];
  v14[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:9];

  return v11;
}

+ (id)entryEventPointDefinitionSystemMemory
{
  v86[3] = *MEMORY[0x277D85DE8];
  v85[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v83[0] = *MEMORY[0x277D3F568];
  v83[1] = v2;
  v84[0] = &unk_282C1BCA8;
  v84[1] = MEMORY[0x277CBEC38];
  v83[2] = *MEMORY[0x277D3F4F8];
  v84[2] = MEMORY[0x277CBEC38];
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:3];
  v86[0] = v76;
  v85[1] = *MEMORY[0x277D3F540];
  v81[0] = @"FreeCount";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v82[0] = commonTypeDict_IntegerFormat;
  v81[1] = @"WiredCount";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v82[1] = commonTypeDict_IntegerFormat2;
  v81[2] = @"CompressorPageCount";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v82[2] = commonTypeDict_IntegerFormat3;
  v81[3] = @"PurgeableCount";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v82[3] = commonTypeDict_IntegerFormat4;
  v81[4] = @"Purges";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v82[4] = commonTypeDict_IntegerFormat5;
  v81[5] = @"Faults";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v82[5] = commonTypeDict_IntegerFormat6;
  v81[6] = @"ZeroFills";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v82[6] = commonTypeDict_IntegerFormat7;
  v81[7] = @"Reactivations";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v82[7] = commonTypeDict_IntegerFormat8;
  v81[8] = @"PageIns";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v82[8] = commonTypeDict_IntegerFormat9;
  v81[9] = @"PageOuts";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v82[9] = commonTypeDict_IntegerFormat10;
  v81[10] = @"Decompressions";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v82[10] = commonTypeDict_IntegerFormat11;
  v81[11] = @"Compressions";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v82[11] = commonTypeDict_IntegerFormat12;
  v81[12] = @"SwapIns";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v82[12] = commonTypeDict_IntegerFormat13;
  v81[13] = @"SwapOuts";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v82[13] = commonTypeDict_IntegerFormat14;
  v81[14] = @"CompressedPageCount";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v82[14] = commonTypeDict_IntegerFormat15;
  v81[15] = @"InternalPageCount";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v82[15] = commonTypeDict_IntegerFormat16;
  v81[16] = @"ExternalPageCount";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v82[16] = commonTypeDict_IntegerFormat17;
  v81[17] = @"SwapAvailSize";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v82[17] = commonTypeDict_IntegerFormat18;
  v81[18] = @"SwapUsedSize";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v82[18] = commonTypeDict_IntegerFormat19;
  v81[19] = @"MemoryPressureLevel";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]20 commonTypeDict_StringFormat];
  v82[19] = commonTypeDict_StringFormat;
  v81[20] = @"FreeVnodeCount";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v82[20] = commonTypeDict_IntegerFormat20;
  v81[21] = @"SharedCacheVirtualSize";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
  v82[21] = commonTypeDict_IntegerFormat21;
  v81[22] = @"SharedCacheResidentSize";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
  v82[22] = commonTypeDict_IntegerFormat22;
  v81[23] = @"SharedCacheResidencyPercent";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
  v82[23] = commonTypeDict_IntegerFormat23;
  v81[24] = @"PagesGrabbed";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat];
  v82[24] = commonTypeDict_IntegerFormat24;
  v81[25] = @"IdlePhysFootprint";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v82[25] = commonTypeDict_IntegerFormat25;
  v81[26] = @"IdleWired";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v82[26] = commonTypeDict_IntegerFormat26;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:27];
  v86[1] = v21;
  v85[2] = *MEMORY[0x277D3F500];
  v79[0] = @"key";
  v77[0] = @"ProcessName";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]28 commonTypeDict_StringFormat_withProcessName];
  v78[0] = commonTypeDict_StringFormat_withProcessName;
  v77[1] = @"PG_indiv";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v78[1] = commonTypeDict_IntegerFormat27;
  v77[2] = @"PG_upl";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat28 = [mEMORY[0x277D3F198]30 commonTypeDict_IntegerFormat];
  v78[2] = commonTypeDict_IntegerFormat28;
  v77[3] = @"PG_iopl";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat29 = [mEMORY[0x277D3F198]31 commonTypeDict_IntegerFormat];
  v78[3] = commonTypeDict_IntegerFormat29;
  v77[4] = @"PG_kern";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat30 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat];
  v78[4] = commonTypeDict_IntegerFormat30;
  v77[5] = @"PG_other";
  mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat31 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat];
  v78[5] = commonTypeDict_IntegerFormat31;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:6];
  v80[0] = v8;
  v79[1] = @"value";
  mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat32 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat];
  v80[1] = commonTypeDict_IntegerFormat32;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
  v86[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:3];

  return v12;
}

+ (id)entryEventPointDefinitionDiskUsage
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_282C1BCB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"FreeSize";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"SystemSize";
  v11[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventPointDefinitionDiskFragmentation
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_282C1BCB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"INDPoolFull";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
  v9 = commonTypeDict_RealFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)entryEventPointDefinitionAPFSFragmentation
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v14 = *MEMORY[0x277D3F568];
  v15 = &unk_282C1BCB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v2;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"container";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v13[0] = commonTypeDict_StringFormat;
  v12[1] = @"fragmentedExtent";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat;
  v12[2] = @"fileCount";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v13[2] = commonTypeDict_IntegerFormat2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventPointDefinitionJetsamPriority
{
  v37[2] = *MEMORY[0x277D85DE8];
  if (+[PLPerformanceAgent shouldCreateJetsamPriorityTable])
  {
    v36[0] = *MEMORY[0x277D3F4E8];
    v34 = *MEMORY[0x277D3F568];
    v35 = &unk_282C1BCC8;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v37[0] = v31;
    v36[1] = *MEMORY[0x277D3F540];
    v32[0] = @"pid";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v33[0] = commonTypeDict_IntegerFormat;
    v32[1] = @"name";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
    v33[1] = commonTypeDict_StringFormat;
    v32[2] = @"priority";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v33[2] = commonTypeDict_IntegerFormat2;
    v32[3] = @"footprint";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v33[3] = commonTypeDict_IntegerFormat3;
    v32[4] = @"peakFootprint";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v33[4] = commonTypeDict_IntegerFormat4;
    v32[5] = @"activeLimit";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v33[5] = commonTypeDict_IntegerFormat5;
    v32[6] = @"activeLimitIsHard";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]7 commonTypeDict_BoolFormat];
    v33[6] = commonTypeDict_BoolFormat;
    v32[7] = @"inactiveLimit";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v33[7] = commonTypeDict_IntegerFormat6;
    v32[8] = @"inactiveLimitIsHard";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]9 commonTypeDict_BoolFormat];
    v33[8] = commonTypeDict_BoolFormat2;
    v32[9] = @"frozen";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]10 commonTypeDict_BoolFormat];
    v33[9] = commonTypeDict_BoolFormat3;
    v32[10] = @"pressuredExit";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]11 commonTypeDict_BoolFormat];
    v33[10] = commonTypeDict_BoolFormat4;
    v32[11] = @"fds";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
    v33[11] = commonTypeDict_IntegerFormat7;
    v32[12] = @"machPorts";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
    v33[12] = commonTypeDict_IntegerFormat8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:13];
    v37[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryEventPointDefinitionRollout
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_282C1BCB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"rolloutID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v10[1] = @"deploymentID";
  v11[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventPointDefinitionVMTunables
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_282C1BCB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"BallastOffset";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v9 = commonTypeDict_IntegerFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)entryEventPointDefinitionIdleReaper
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v23[0] = *MEMORY[0x277D3F568];
  v23[1] = v2;
  v24[0] = &unk_282C1BCD8;
  v24[1] = MEMORY[0x277CBEC38];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v26[0] = v20;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"Enabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v22[0] = commonTypeDict_IntegerFormat;
  v21[1] = @"MinAgeSecs";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v22[1] = commonTypeDict_IntegerFormat2;
  v21[2] = @"ThresholdMB";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v22[2] = commonTypeDict_IntegerFormat3;
  v21[3] = @"RescanSecs";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v22[3] = commonTypeDict_IntegerFormat4;
  v21[4] = @"SweepCount";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v22[4] = commonTypeDict_IntegerFormat5;
  v21[5] = @"TotalKills";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v22[5] = commonTypeDict_IntegerFormat6;
  v21[6] = @"TotalFreedMB";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v22[6] = commonTypeDict_IntegerFormat7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
  v26[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v12;
}

+ (id)entryEventPointDefinitionCodePrewarming
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1BCB8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"State";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventIntervalDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"Experiment";
  v2 = +[PLPerformanceAgent entryEventIntervalDefinitionExperiment];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventIntervalDefinitionExperiment
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v20 = *MEMORY[0x277D3F568];
  v21 = &unk_282C1BCE8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"namespace";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v19[0] = commonTypeDict_StringFormat;
  v18[1] = @"experimentID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v19[1] = commonTypeDict_StringFormat2;
  v18[2] = @"treatmentID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v19[2] = commonTypeDict_StringFormat3;
  v18[3] = @"deploymentID";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v19[3] = commonTypeDict_IntegerFormat;
  v18[4] = @"startDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v19[4] = commonTypeDict_DateFormat;
  v18[5] = @"EndDate";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_DateFormat];
  v19[5] = commonTypeDict_DateFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:6];
  v23[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  return v11;
}

- (PLPerformanceAgent)init
{
  v3.receiver = self;
  v3.super_class = PLPerformanceAgent;
  return [(PLAgent *)&v3 init];
}

- (void)initOperatorDependancies
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] internalBuild] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
  {
    if ([MEMORY[0x277D3F208] isiOS] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isARMMac"))
    {
      isWatch = 1;
    }

    else
    {
      isWatch = [MEMORY[0x277D3F208] isWatch];
    }
  }

  else
  {
    isWatch = 0;
  }

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"TGOnDeviceInferenceProviderService", @"VisualGenerationInference", @"aned", 0}];
  systemMemoryProcessNames = self->_systemMemoryProcessNames;
  self->_systemMemoryProcessNames = v4;

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke;
  v32[3] = &unk_2782597E8;
  v32[4] = self;
  v6 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v32];
  batteryLevelChanged = self->_batteryLevelChanged;
  self->_batteryLevelChanged = v6;

  if (isWatch)
  {
    v8 = objc_alloc(MEMORY[0x277D3F1A8]);
    workQueue = [(PLOperator *)self workQueue];
    v35[0] = &unk_282C10050;
    v35[1] = &unk_282C10068;
    v36[0] = &unk_282C1BCB8;
    v36[1] = &unk_282C10080;
    v35[2] = &unk_282C10098;
    v36[2] = &unk_282C100B0;
    v37 = @"ID";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
    v38[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_295;
    v31[3] = &unk_2782597E8;
    v31[4] = self;
    v12 = [v8 initWithWorkQueue:workQueue forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v11 withBlock:v31];
    batteryEntryLogged = self->_batteryEntryLogged;
    self->_batteryEntryLogged = v12;
  }

  v14 = objc_alloc(MEMORY[0x277D3F1F0]);
  v15 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v16 = *MEMORY[0x277CBE580];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_298;
  v30[3] = &unk_2782597E8;
  v30[4] = self;
  v17 = [v14 initWithWorkQueue:v15 forNotification:v16 withBlock:v30];

  [(PLPerformanceAgent *)self setDailyTaskNotification:v17];
  v18 = objc_alloc(MEMORY[0x277D3F160]);
  workQueue2 = [(PLOperator *)self workQueue];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_2_316;
  v29[3] = &unk_2782597E8;
  v29[4] = self;
  v20 = [v18 initWithWorkQueue:workQueue2 forNotification:@"com.apple.trial.NamespaceUpdate.MEMORY_ANALYSIS_LLM_OVERHEAD" requireState:1 withBlock:v29];
  llmOverheadNotification = self->_llmOverheadNotification;
  self->_llmOverheadNotification = v20;

  v22 = objc_alloc(MEMORY[0x277D3F160]);
  workQueue3 = [(PLOperator *)self workQueue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_320;
  v28[3] = &unk_2782597E8;
  v28[4] = self;
  v24 = [v22 initWithWorkQueue:workQueue3 forNotification:@"com.apple.trial.NamespaceUpdate.COREOS_GMPOWER_VM_TUNING_PAGE_SHORTAGE_THRESHOLDS" requireState:1 withBlock:v28];
  vmTuningNotification = self->_vmTuningNotification;
  self->_vmTuningNotification = v24;

  [(PLPerformanceAgent *)self logEventIntervalExperiment];
  [(PLPerformanceAgent *)self logEventPointRollout];
  self->_randomSample = arc4random_uniform(0x30u);
  self->_sampleCounter = 0;
  v26 = PLLogPerformance();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    randomSample = self->_randomSample;
    *buf = 67109120;
    v34 = randomSample;
    _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "Picked random sample value as %d for sending stats to CA", buf, 8u);
  }
}

uint64_t __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_295(uint64_t a1)
{
  v2 = PLLogPerformance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Logging SystemMemory stats for new EventBackward_Battery entry logged", v4, 2u);
  }

  return [*(a1 + 32) logEventPointSystemMemory:0];
}

void __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_298(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_2;
    block[3] = &unk_27825A310;
    v25 = @"DailyTasks";
    v26 = v10;
    if (qword_2811F30B0 != -1)
    {
      dispatch_once(&qword_2811F30B0, block);
    }

    v11 = byte_2811F3071;

    if (v11)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"DailyTasks notification!"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent initOperatorDependancies]_block_invoke"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:528];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", location, 0xCu);
      }
    }
  }

  objc_initWeak(location, *(a1 + 32));
  v18 = objc_alloc(MEMORY[0x277D3F250]);
  v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:30.0];
  v20 = [*(a1 + 32) workQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_310;
  v22[3] = &unk_27825A810;
  objc_copyWeak(&v23, location);
  v21 = [v18 initWithFireDate:v19 withInterval:0 withTolerance:0 repeats:v20 withUserInfo:v22 withQueue:0.0 withBlock:0.0];

  [v21 arm];
  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
}

void __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_310(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logEventPointDiskFragmentation];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 logEventPointAPFSFragmentation];
}

uint64_t __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_2_316(uint64_t a1)
{
  v2 = PLLogPerformance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_INFO, "MEMORY_ANALYSIS_LLM_OVERHEAD was fired, logging Trial data", v4, 2u);
  }

  [*(a1 + 32) logEventIntervalExperiment];
  return [*(a1 + 32) logEventPointRollout];
}

uint64_t __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_320(uint64_t a1)
{
  v2 = PLLogPerformance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_INFO, "COREOS_GMPOWER_VM_TUNING_PAGE_SHORTAGE_THRESHOLDS was fired, logging Trial data", v4, 2u);
  }

  [*(a1 + 32) logEventIntervalExperiment];
  [*(a1 + 32) logEventPointRollout];
  [*(a1 + 32) logEventPointVMTunables];
  return [*(a1 + 32) logEventPointIdleReaper];
}

- (void)logEventIntervalExperiment
{
  v26[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F180], "liteMode"))
  {
    return;
  }

  v3 = objc_opt_new();
  v4 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"Experiment"];
  defaultProvider = [MEMORY[0x277D73648] defaultProvider];
  if (([MEMORY[0x277D3F208] seedBuild] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild"))
  {
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Logging all Active Trials deployed on-device", buf, 2u);
    }

    v23 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __48__PLPerformanceAgent_logEventIntervalExperiment__block_invoke;
    v20[3] = &unk_27825A838;
    v7 = &v21;
    v21 = v4;
    v8 = &v22;
    v22 = v3;
    v9 = &v23;
    [defaultProvider enumerateActiveExperimentsForEnvironment:0 error:&v23 block:v20];
  }

  else
  {
    if ([MEMORY[0x277D3F208] internalBuild] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "seedBuild"))
    {
      v10 = 0;
      goto LABEL_9;
    }

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "Logging Sampled set of Active Trials deployed on-device", buf, 2u);
    }

    v19 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __48__PLPerformanceAgent_logEventIntervalExperiment__block_invoke_334;
    v16 = &unk_27825A838;
    v7 = &v17;
    v17 = v4;
    v8 = &v18;
    v18 = v3;
    v9 = &v19;
    [defaultProvider enumerateSampledActiveExperimentsForEnvironment:0 correlationID:@"com.apple.powerlog" error:&v19 block:&v13];
  }

  v10 = *v9;

LABEL_9:
  if ([v3 count])
  {
    v25 = v4;
    v26[0] = v3;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [(PLOperator *)self logEntries:v11 withGroupID:v4];
  }
}

void __48__PLPerformanceAgent_logEventIntervalExperiment__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v4 namespaces];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v20 + 1) + 8 * v10) name];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v12 = objc_opt_new();
    v13 = [v5 componentsJoinedByString:{@", "}];
    [v12 setObject:v13 forKeyedSubscript:@"namespace"];

    v14 = [v4 experimentId];
    [v12 setObject:v14 forKeyedSubscript:@"experimentID"];

    v15 = [v4 treatmentId];
    [v12 setObject:v15 forKeyedSubscript:@"treatmentID"];

    v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "deploymentId")}];
    [v12 setObject:v16 forKeyedSubscript:@"deploymentID"];

    v17 = [v4 date];
    [v12 setObject:v17 forKeyedSubscript:@"startDate"];

    v18 = [MEMORY[0x277CBEAA8] date];
    [v12 setObject:v18 forKeyedSubscript:@"EndDate"];

    v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withRawData:v12];
    [*(a1 + 40) addObject:v19];
  }
}

void __48__PLPerformanceAgent_logEventIntervalExperiment__block_invoke_334(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v4 namespaces];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v20 + 1) + 8 * v10) name];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v12 = objc_opt_new();
    v13 = [v5 componentsJoinedByString:{@", "}];
    [v12 setObject:v13 forKeyedSubscript:@"namespace"];

    v14 = [v4 experimentId];
    [v12 setObject:v14 forKeyedSubscript:@"experimentID"];

    v15 = [v4 treatmentId];
    [v12 setObject:v15 forKeyedSubscript:@"treatmentID"];

    v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "deploymentId")}];
    [v12 setObject:v16 forKeyedSubscript:@"deploymentID"];

    v17 = [v4 date];
    [v12 setObject:v17 forKeyedSubscript:@"startDate"];

    v18 = [MEMORY[0x277CBEAA8] date];
    [v12 setObject:v18 forKeyedSubscript:@"EndDate"];

    v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withRawData:v12];
    [*(a1 + 40) addObject:v19];
  }
}

- (id)descriptionForMemoryPressure:(int)pressure
{
  if ((pressure - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_27825A880[pressure - 1];
  }
}

- (void)logSystemMemoryToCA:(id)a
{
  v39 = *MEMORY[0x277D85DE8];
  aCopy = a;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v36 = 0;
  v35 = 4;
  if (!sysctlbyname("vm.pagesize", &v36, &v35, 0, 0))
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [aCopy objectForKeyedSubscript:@"WiredCount"];
    unsignedLongLongValue = [v6 unsignedLongLongValue];
    v8 = [v5 numberWithUnsignedLongLong:(unsignedLongLongValue * v36) >> 10];
    [dictionary setObject:v8 forKeyedSubscript:@"wired_down"];

    v9 = MEMORY[0x277CCABB0];
    v10 = [aCopy objectForKeyedSubscript:@"ExternalPageCount"];
    unsignedLongLongValue2 = [v10 unsignedLongLongValue];
    v12 = [v9 numberWithUnsignedLongLong:(unsignedLongLongValue2 * v36) >> 10];
    [dictionary setObject:v12 forKeyedSubscript:@"file_backed"];

    v13 = MEMORY[0x277CCABB0];
    v14 = [aCopy objectForKeyedSubscript:@"CompressorPageCount"];
    unsignedLongLongValue3 = [v14 unsignedLongLongValue];
    v16 = [v13 numberWithUnsignedLongLong:(unsignedLongLongValue3 * v36) >> 10];
    [dictionary setObject:v16 forKeyedSubscript:@"occupied_by_compressor"];

    v17 = MEMORY[0x277CCABB0];
    v18 = [aCopy objectForKeyedSubscript:@"CompressedPageCount"];
    unsignedLongLongValue4 = [v18 unsignedLongLongValue];
    v20 = [v17 numberWithUnsignedLongLong:(unsignedLongLongValue4 * v36) >> 10];
    [dictionary setObject:v20 forKeyedSubscript:@"stored_in_compressor"];

    v21 = MEMORY[0x277CCABB0];
    v22 = [aCopy objectForKeyedSubscript:@"FreeCount"];
    unsignedLongLongValue5 = [v22 unsignedLongLongValue];
    v24 = [v21 numberWithUnsignedLongLong:(unsignedLongLongValue5 * v36) >> 10];
    [dictionary setObject:v24 forKeyedSubscript:@"free"];

    v25 = MEMORY[0x277CCABB0];
    v26 = [aCopy objectForKeyedSubscript:@"IdlePhysFootprint"];
    unsignedLongLongValue6 = [v26 unsignedLongLongValue];
    v28 = [v25 numberWithUnsignedLongLong:(unsignedLongLongValue6 * v36) >> 10];
    [dictionary setObject:v28 forKeyedSubscript:@"idle_phys_footprint"];

    v29 = MEMORY[0x277CCABB0];
    v30 = [aCopy objectForKeyedSubscript:@"IdleWired"];
    unsignedLongLongValue7 = [v30 unsignedLongLongValue];
    v32 = [v29 numberWithUnsignedLongLong:(unsignedLongLongValue7 * v36) >> 10];
    [dictionary setObject:v32 forKeyedSubscript:@"idle_wired"];

    v33 = PLLogPerformance();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v38 = dictionary;
      _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "Log System Memory Stats to CA %@", buf, 0xCu);
    }

    v34 = dictionary;
    AnalyticsSendEventLazy();
  }
}

- (void)logSharedCacheStatisticsToCA:(id)a
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  aCopy = a;
  dictionary = [v3 dictionary];
  v6 = [aCopy objectForKeyedSubscript:@"SharedCacheVirtualSize"];
  [dictionary setObject:v6 forKeyedSubscript:@"virtual_shared_cache"];

  v7 = [aCopy objectForKeyedSubscript:@"SharedCacheResidentSize"];
  [dictionary setObject:v7 forKeyedSubscript:@"resident_shared_cache"];

  v8 = [aCopy objectForKeyedSubscript:@"SharedCacheResidencyPercent"];

  [dictionary setObject:v8 forKeyedSubscript:@"shared_cache_resident_percent"];
  v9 = PLLogPerformance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v13 = dictionary;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Log Shared Cache Stats to CA %@", buf, 0xCu);
  }

  v11 = dictionary;
  v10 = dictionary;
  AnalyticsSendEventLazy();
}

- (void)logEventPointSystemMemoryPerProcess:(id)process
{
  v54 = *MEMORY[0x277D85DE8];
  processCopy = process;
  if (qword_2811F30C0 != -1)
  {
    dispatch_once(&qword_2811F30C0, &__block_literal_global_386);
  }

  v5 = proc_listpids(1u, 0, 0, 0);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    v7 = v5;
    v8 = malloc_type_malloc(v5, 0x100004052888210uLL);
    if (v8)
    {
      v9 = v8;
      memset(v8, 255, v7);
      v10 = proc_listpids(1u, 0, v9, v6);
      v11 = malloc_type_malloc(48 * qword_2811F30B8, 0x1000040EED21634uLL);
      if (v11)
      {
        v13 = v11;
        v41 = v9;
        if (v10 >= 4)
        {
          v44 = 0;
          if (v10 >> 2 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v10 >> 2;
          }

          v16 = 0x277D3F000uLL;
          v17 = 0x2811ED000uLL;
          *&v12 = 134218242;
          v40 = v12;
          v18 = v9;
          v42 = processCopy;
          selfCopy = self;
          do
          {
            v20 = *v18++;
            v19 = v20;
            v21 = [*(v16 + 600) fullProcessNameForPid:{v20, v40}];
            if ([*(&self->super.super.super.isa + *(v17 + 2160)) containsObject:v21])
            {
              v22 = PLLogPerformance();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buffer[0]) = 138412290;
                *(buffer + 4) = v21;
                _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "SystemMemory found processName:%@ pid", buffer, 0xCu);
              }

              if (v19 == -1)
              {
                v45 = -1;
              }

              else
              {
                v52 = 0u;
                v53 = 0u;
                memset(buffer, 0, sizeof(buffer));
                v23 = proc_pid_rusage(v19, 0, buffer);
                if (v23)
                {
                  v24 = v23;
                  v25 = PLLogPerformance();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109376;
                    *v49 = v24;
                    *&v49[4] = 1024;
                    *&v49[6] = v19;
                    _os_log_error_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_ERROR, "SystemMemory retVal failed with %d for pid %d", buf, 0xEu);
                  }

                  v26 = -1;
                }

                else
                {
                  v26 = buffer[6];
                  v25 = PLLogPerformance();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = v40;
                    *v49 = v26;
                    *&v49[8] = 2112;
                    v50 = v21;
                    _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "SystemMemory pageins : %llu for processName: %@", buf, 0x16u);
                  }
                }

                v45 = v26;
              }

              bzero(v13, 48 * qword_2811F30B8);
              if ((ledger() & 0x80000000) != 0)
              {
                v39 = PLLogPerformance();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buffer[0]) = 0;
                  _os_log_error_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_ERROR, "SystemMemory pages_grabbed failure", buffer, 2u);
                }
              }

              else
              {
                v27 = *(v13 + 6 * dword_2811F3084);
                v28 = *(v13 + 6 * dword_2811F3090);
                v29 = *(v13 + 6 * dword_2811F308C);
                v30 = *(v13 + 6 * dword_2811F3088);
                v31 = v27 - v30 - (v29 + v28);
                v32 = PLLogPerformance();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buffer[0]) = 138413570;
                  *(buffer + 4) = v21;
                  WORD2(buffer[1]) = 2048;
                  *(&buffer[1] + 6) = v27;
                  HIWORD(buffer[2]) = 2048;
                  buffer[3] = v28;
                  LOWORD(buffer[4]) = 2048;
                  *(&buffer[4] + 2) = v29;
                  WORD1(buffer[5]) = 2048;
                  *(&buffer[5] + 4) = v30;
                  WORD2(buffer[6]) = 2048;
                  *(&buffer[6] + 6) = (v27 - v30 - (v29 + v28));
                  _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "SystemMemory processName: %@ \n pages_grabbed: %lld, upl: %lld, iopl: %lld, kern: %lld, other:%lld", buffer, 0x3Eu);
                }

                v47[0] = v21;
                v46[0] = @"ProcessName";
                v46[1] = @"PG_indiv";
                v33 = [MEMORY[0x277CCABB0] numberWithLongLong:v27];
                v47[1] = v33;
                v46[2] = @"PG_upl";
                v34 = [MEMORY[0x277CCABB0] numberWithLongLong:v28];
                v47[2] = v34;
                v46[3] = @"PG_iopl";
                v35 = [MEMORY[0x277CCABB0] numberWithLongLong:v29];
                v47[3] = v35;
                v46[4] = @"PG_kern";
                v36 = [MEMORY[0x277CCABB0] numberWithLongLong:v30];
                v47[4] = v36;
                v46[5] = @"PG_other";
                v37 = [MEMORY[0x277CCABB0] numberWithLongLong:v31];
                v47[5] = v37;
                v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:6];

                v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v45];
                processCopy = v42;
                [v42 setObject:v39 forKeyedSubscript:v38];
                v44 = v38;
                self = selfCopy;
              }

              v16 = 0x277D3F000;

              v17 = 0x2811ED000;
            }

            --v15;
          }

          while (v15);
        }

        else
        {
          v44 = 0;
        }

        free(v41);
        free(v13);
      }

      else
      {
        v14 = PLLogPerformance();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buffer[0]) = 0;
          _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "SystemMemory Error Failed to allocate memory for ledger values", buffer, 2u);
        }

        free(v9);
      }
    }
  }

  [(PLOperator *)self logEntry:processCopy];
}

void __58__PLPerformanceAgent_logEventPointSystemMemoryPerProcess___block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processIdentifier];

  if ((ledger() & 0x80000000) == 0)
  {
    qword_2811F30B8 = *(&v13 + 1);
    v2 = malloc_type_malloc(96 * *(&v13 + 1), 0x1000040565EDBD2uLL);
    if (v2)
    {
      if ((ledger() & 0x80000000) == 0)
      {
        v3 = qword_2811F30B8;
        if (qword_2811F30B8 >= 1)
        {
          v4 = 0;
          v5 = v2;
          while (strcmp(v5, "pages_grabbed"))
          {
            if (!strcmp(v5, "pages_grabbed_kern"))
            {
              v6 = &dword_2811F3088;
              goto LABEL_14;
            }

            if (!strcmp(v5, "pages_grabbed_iopl"))
            {
              v6 = &dword_2811F308C;
              goto LABEL_14;
            }

            if (!strcmp(v5, "pages_grabbed_upl"))
            {
              v6 = &dword_2811F3090;
LABEL_14:
              *v6 = v4;
            }

            ++v4;
            v5 += 96;
            if (v3 == v4)
            {
              goto LABEL_24;
            }
          }

          v6 = &dword_2811F3084;
          goto LABEL_14;
        }

        goto LABEL_24;
      }

      v8 = PLLogPerformance();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

LABEL_24:
        free(v2);
        return;
      }

      LOWORD(v10[0]) = 0;
      v9 = "SystemMemory Error Failed to get ledger_template_info";
    }

    else
    {
      v8 = PLLogPerformance();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      LOWORD(v10[0]) = 0;
      v9 = "SystemMemory Error Failed to allocate memory for ledger_template_info";
    }

    _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    goto LABEL_23;
  }

  v7 = PLLogPerformance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10[0] = 67109120;
    v10[1] = v1;
    _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "SystemMemory ERROR GETTING LEDGER INFO FOR MYSELF %d", v10, 8u);
  }
}

- (void)logEventPointSystemMemory:(BOOL)memory
{
  v99 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] fullMode] && objc_msgSend(MEMORY[0x277D3F208], "internalBuild"))
  {
    isiOS = [MEMORY[0x277D3F208] isiOS];
  }

  else
  {
    isiOS = 0;
  }

  if (memory)
  {
    v6 = 1;
  }

  else if ([MEMORY[0x277D3F180] taskMode])
  {
    v6 = [MEMORY[0x277D3F208] isWatch] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x21CEDD9B0]();
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v79 = 0u;
  v77 = 0u;
  v78 = 0u;
  *host_info64_out = 0u;
  host_info64_outCnt = 40;
  v8 = host_statistics64(v7, 4, host_info64_out, &host_info64_outCnt);
  v9 = MEMORY[0x277D85F48];
  if (!v8)
  {
    v10 = objc_alloc(MEMORY[0x277D3F190]);
    v11 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SystemMemory"];
    v12 = [v10 initWithEntryKey:v11];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(host_info64_out[0] - HIDWORD(v81))];
    [v12 setObject:v13 forKeyedSubscript:@"FreeCount"];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:host_info64_out[3]];
    [v12 setObject:v14 forKeyedSubscript:@"WiredCount"];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v77];
    [v12 setObject:v15 forKeyedSubscript:@"ZeroFills"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v77 + 1)];
    [v12 setObject:v16 forKeyedSubscript:@"Reactivations"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v78];
    [v12 setObject:v17 forKeyedSubscript:@"PageIns"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v78 + 1)];
    [v12 setObject:v18 forKeyedSubscript:@"PageOuts"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v79];
    [v12 setObject:v19 forKeyedSubscript:@"Faults"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v81];
    [v12 setObject:v20 forKeyedSubscript:@"Purges"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v81)];
    [v12 setObject:v21 forKeyedSubscript:@"PurgeableCount"];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v82];
    [v12 setObject:v22 forKeyedSubscript:@"Decompressions"];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v82 + 1)];
    [v12 setObject:v23 forKeyedSubscript:@"Compressions"];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v83];
    [v12 setObject:v24 forKeyedSubscript:@"SwapIns"];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v83 + 1)];
    [v12 setObject:v25 forKeyedSubscript:@"SwapOuts"];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v84];
    [v12 setObject:v26 forKeyedSubscript:@"CompressorPageCount"];

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v84)];
    [v12 setObject:v27 forKeyedSubscript:@"ExternalPageCount"];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v84)];
    [v12 setObject:v28 forKeyedSubscript:@"InternalPageCount"];

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v85];
    [v12 setObject:v29 forKeyedSubscript:@"CompressedPageCount"];

    v74 = 0uLL;
    if (!PLProcessMetricsForIdleBand(&v74))
    {
      1024 = [MEMORY[0x277CCABB0] numberWithLongLong:v74.i64[1] / 1024];
      [v12 setObject:1024 forKeyedSubscript:@"IdlePhysFootprint"];

      10242 = [MEMORY[0x277CCABB0] numberWithLongLong:v74.i64[0] / 1024];
      [v12 setObject:10242 forKeyedSubscript:@"IdleWired"];
    }

    v91 = 0x500000002;
    v72 = 0u;
    v73 = 0u;
    v71 = 32;
    if (!sysctl(&v91, 2u, &v72, &v71, 0, 0))
    {
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v72 + 1)];
      [v12 setObject:v32 forKeyedSubscript:@"SwapAvailSize"];

      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v73];
      [v12 setObject:v33 forKeyedSubscript:@"SwapUsedSize"];
    }

    v70 = 1;
    v69 = 4;
    if (!sysctlbyname("kern.memorystatus_vm_pressure_level", &v70, &v69, 0, 0))
    {
      v34 = [(PLPerformanceAgent *)self descriptionForMemoryPressure:v70];
      [v12 setObject:v34 forKeyedSubscript:@"MemoryPressureLevel"];
    }

    v68 = 0;
    v69 = 4;
    if (sysctlbyname("kern.free_vnodes", &v68, &v69, 0, 0))
    {
      v35 = PLLogPerformance();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_ERROR, "Error getting free vnode count from sysctl", &buf, 2u);
      }
    }

    else
    {
      v36 = [MEMORY[0x277CCABB0] numberWithInt:v68];
      [v12 setObject:v36 forKeyedSubscript:@"FreeVnodeCount"];

      v35 = PLLogPerformance();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v68;
        _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "Freevnode count %d", &buf, 8u);
      }
    }

    if (v6)
    {
      v37 = *v9;
      v90 = 0;
      if (!dyld_process_create_for_task())
      {
        v44 = PLLogPerformance();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v62 = mach_error_string(v90);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v62;
          _os_log_error_impl(&dword_21A4C6000, v44, OS_LOG_TYPE_ERROR, "failed to create dyld process:%s", &buf, 0xCu);
        }

        v45 = 0;
        mapped_size = 0;
        v46 = v90;
        goto LABEL_54;
      }

      if (dyld_process_snapshot_create_for_process())
      {
        v66 = v6;
        if (dyld_process_snapshot_get_shared_cache())
        {
          mapped_size = dyld_shared_cache_get_mapped_size();
          base_address = dyld_shared_cache_get_base_address();
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = mapped_size;
            _os_log_debug_impl(&dword_21A4C6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "sharedRegionSize = %llu", &buf, 0xCu);
          }

          v40 = 0;
          size = 0;
          v97 = 0u;
          memset(v98, 0, sizeof(v98));
          buf = 0u;
          v96 = 0u;
          infoCnt = 19;
          address = base_address;
          v65 = mapped_size;
          v41 = __CFADD__(base_address, mapped_size);
          v42 = base_address + mapped_size;
          if (!v41)
          {
            v40 = 0;
            while (1)
            {
              nesting_depth = 1;
              v90 = mach_vm_region_recurse(v37, &address, &size, &nesting_depth, &buf, &infoCnt);
              if (v90 == 1)
              {
                break;
              }

              if (HIBYTE(v97) <= 5u && ((1 << SHIBYTE(v97)) & 0x32) != 0)
              {
                v40 += DWORD2(v96);
              }

              address += size;
              if (address > v42)
              {
                goto LABEL_51;
              }
            }

            v50 = PLLogPerformance();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v64 = mach_error_string(v90);
              *v92 = 136315138;
              *&v92[4] = v64;
              _os_log_error_impl(&dword_21A4C6000, v50, OS_LOG_TYPE_ERROR, "reached last region:%s", v92, 0xCu);
            }
          }

LABEL_51:
          v45 = *MEMORY[0x277D85F80] * v40;
          v51 = PLLogPerformance();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *v92 = 134218240;
            *&v92[4] = v45;
            v93 = 2048;
            v94 = mapped_size;
            _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "sharedCacheResidentSize = %llu sharedCacheVirtualSize = %llu", v92, 0x16u);
          }

          dyld_process_dispose();
          dyld_process_snapshot_dispose();
          v46 = v90;
          v6 = v66;
LABEL_54:
          v9 = MEMORY[0x277D85F48];
          if (v46)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        v49 = PLLogPerformance();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_ERROR, "failed to get shared cache", &buf, 2u);
        }

        dyld_process_dispose();
        dyld_process_snapshot_dispose();
        v9 = MEMORY[0x277D85F48];
      }

      else
      {
        v47 = PLLogPerformance();
        v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
        v9 = MEMORY[0x277D85F48];
        if (v48)
        {
          v63 = mach_error_string(v90);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v63;
          _os_log_error_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_ERROR, "failed to create snapshot of the process:%s", &buf, 0xCu);
        }

        dyld_process_dispose();
        v45 = 0;
        mapped_size = 0;
        if (!v90)
        {
LABEL_55:
          [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{mapped_size >> 10, v65}];
          v67 = v6;
          v52 = isiOS;
          v54 = v53 = mapped_size;
          [v12 setObject:v54 forKeyedSubscript:@"SharedCacheVirtualSize"];

          v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v45 >> 10];
          [v12 setObject:v55 forKeyedSubscript:@"SharedCacheResidentSize"];

          v56 = v53;
          isiOS = v52;
          v6 = v67;
          v57 = v45 * 100.0 / v56;
          *&v57 = v57;
          *&v57 = roundf(*&v57);
          v58 = [MEMORY[0x277CCABB0] numberWithFloat:v57];
          [v12 setObject:v58 forKeyedSubscript:@"SharedCacheResidencyPercent"];
        }
      }
    }

LABEL_56:
    *v92 = 0;
    v69 = 8;
    if (sysctlbyname("vm.pages_grabbed", v92, &v69, 0, 0))
    {
      v59 = PLLogPerformance();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_21A4C6000, v59, OS_LOG_TYPE_ERROR, "Error getting pages grabbed from sysctl", &buf, 2u);
      }
    }

    else
    {
      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v92];
      [v12 setObject:v60 forKeyedSubscript:@"PagesGrabbed"];

      v59 = PLLogPerformance();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = *v92;
        _os_log_debug_impl(&dword_21A4C6000, v59, OS_LOG_TYPE_DEBUG, "Pages Grabbed count %llu", &buf, 0xCu);
      }
    }

    if (isiOS)
    {
      [(PLPerformanceAgent *)self logEventPointSystemMemoryPerProcess:v12];
      if (!v6)
      {
        goto LABEL_66;
      }
    }

    else
    {
      [(PLOperator *)self logEntry:v12];
      if (!v6)
      {
LABEL_66:
        sampleCounter = self->_sampleCounter;
        if (sampleCounter == self->_randomSample)
        {
          [(PLPerformanceAgent *)self logSystemMemoryToCA:v12];
          sampleCounter = self->_sampleCounter;
        }

        self->_sampleCounter = sampleCounter + 1;

        goto LABEL_69;
      }
    }

    [(PLPerformanceAgent *)self logSharedCacheStatisticsToCA:v12, v65];
    goto LABEL_66;
  }

LABEL_69:
  mach_port_deallocate(*v9, v7);
}

- (void)logEventPointVMTunables
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D3F190]);
  v4 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"VMTunables"];
  v5 = [v3 initWithEntryKey:v4];

  v6 = [MEMORY[0x277D73660] clientWithIdentifier:227];
  v7 = [v6 levelForFactor:@"BallastOffset" withNamespaceName:@"COREOS_GMPOWER_VM_TUNING_PAGE_SHORTAGE_THRESHOLDS"];
  longValue = [v7 longValue];
  v9 = PLLogPerformance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    v13 = longValue;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "logEventPointVMTunables VM_TUNING_PAGE_SHORTAGE_THRESHOLDS ballast offset: %lu", &v12, 0xCu);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:longValue];
  if (v10)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:longValue];
    [v5 setObject:v11 forKeyedSubscript:@"BallastOffset"];
  }

  else
  {
    [v5 setObject:&unk_282C100C8 forKeyedSubscript:@"BallastOffset"];
  }

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventPointIdleReaper
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D3F190]);
  v4 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"IdleReaper"];
  v5 = [v3 initWithEntryKey:v4];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_enabled"}];
  [v5 setObject:v6 forKeyedSubscript:@"Enabled"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_min_age_secs"}];
  [v5 setObject:v7 forKeyedSubscript:@"MinAgeSecs"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_threshold_mb"}];
  [v5 setObject:v8 forKeyedSubscript:@"ThresholdMB"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_rescan_secs"}];
  [v5 setObject:v9 forKeyedSubscript:@"RescanSecs"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_stats_sweep_count"}];
  [v5 setObject:v10 forKeyedSubscript:@"SweepCount"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_stats_total_kills"}];
  [v5 setObject:v11 forKeyedSubscript:@"TotalKills"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_stats_total_freed_mb"}];
  [v5 setObject:v12 forKeyedSubscript:@"TotalFreedMB"];

  v13 = PLLogPerformance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    dictionary = [v5 dictionary];
    v15 = 138412290;
    v16 = dictionary;
    _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "IdleReaper sysctls: %@", &v15, 0xCu);
  }

  [(PLOperator *)self logEntry:v5];
}

- (int)convertCodePrewarmingSysctl:(id)sysctl
{
  v9 = *MEMORY[0x277D85DE8];
  sysctlCopy = sysctl;
  if ([sysctlCopy isEqualToString:@"on"])
  {
    v4 = 1;
  }

  else if ([sysctlCopy isEqualToString:@"off"])
  {
    v4 = 0;
  }

  else
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = sysctlCopy;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, " Unknown code prewarming sysctl %@", &v7, 0xCu);
    }

    v4 = -1;
  }

  return v4;
}

- (void)logEventPointDiskUsage
{
  v25 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] isTaskFullEPLMode])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v22 = 0;
    v4 = [defaultManager attributesOfFileSystemForPath:@"/" error:&v22];
    v5 = v22;
    if (v4)
    {
      v6 = objc_alloc(MEMORY[0x277D3F190]);
      v7 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"DiskUsage"];
      v8 = [v6 initWithEntryKey:v7];

      v9 = MEMORY[0x277CCABB0];
      v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]];
      v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue") & 0xFFFFFFFFFFFFFC00}];
      [v8 setObject:v11 forKeyedSubscript:@"FreeSize"];

      v12 = MEMORY[0x277CCABB0];
      v13 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA1D8]];
      v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "unsignedIntegerValue") & 0xFFFFFFFFFFFFFC00}];
      [v8 setObject:v14 forKeyedSubscript:@"SystemSize"];

      [(PLOperator *)self logEntry:v8];
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_12;
      }

      v15 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__PLPerformanceAgent_logEventPointDiskUsage__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v15;
      if (qword_2811F30C8 != -1)
      {
        dispatch_once(&qword_2811F30C8, block);
      }

      if (byte_2811F3072 != 1)
      {
        goto LABEL_12;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not get root dir attributes. Error: %@", v5];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
      lastPathComponent = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointDiskUsage]"];
      [v16 logMessage:v8 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:1022];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

LABEL_12:
  }
}

void *__44__PLPerformanceAgent_logEventPointDiskUsage__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3072 = result;
  return result;
}

- (void)logEventPointDiskFragmentation
{
  if ([MEMORY[0x277D3F180] isTaskFullEPLMode])
  {
    IndirectionTableStatistics = ASP_GetIndirectionTableStatistics(v3, v4, v5);
    if (IndirectionTableStatistics)
    {
      v15 = IndirectionTableStatistics;
      v7 = [(__CFDictionary *)IndirectionTableStatistics objectForKeyedSubscript:@"INDPool"];
      IndirectionTableStatistics = v15;
      if (v7)
      {
        v8 = [(__CFDictionary *)v15 objectForKeyedSubscript:@"INDPool"];
        v9 = [v8 objectForKeyedSubscript:@"INDPoolFull"];

        IndirectionTableStatistics = v15;
        if (v9)
        {
          v10 = objc_alloc(MEMORY[0x277D3F190]);
          v11 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"DiskFragmentation"];
          v12 = [v10 initWithEntryKey:v11];

          v13 = [(__CFDictionary *)v15 objectForKeyedSubscript:@"INDPool"];
          v14 = [v13 objectForKeyedSubscript:@"INDPoolFull"];
          [v12 setObject:v14 forKeyedSubscript:@"INDPoolFull"];

          [(PLOperator *)self logEntry:v12];
          IndirectionTableStatistics = v15;
        }
      }
    }
  }
}

- (void)logEventPointJetsamPrority
{
  v2 = MEMORY[0x28223BE20](self);
  v97 = *MEMORY[0x277D85DE8];
  if (+[PLPerformanceAgent shouldCreateJetsamPriorityTable])
  {
    v3 = 0x277D3F000uLL;
    if ([MEMORY[0x277D3F180] eplEnabled])
    {
      v4 = memorystatus_control();
      if (v4 < 1)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v11 = objc_opt_class();
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke_460;
          v65[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v65[4] = v11;
          if (qword_2811F30E8 != -1)
          {
            dispatch_once(&qword_2811F30E8, v65);
          }

          if (byte_2811F3076 == 1)
          {
            v12 = MEMORY[0x277CCACA8];
            v13 = __error();
            v14 = [v12 stringWithFormat:@"Could not get jetsam priority list size: %s\n", strerror(*v13)];
            v15 = MEMORY[0x277D3F178];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
            lastPathComponent = [v16 lastPathComponent];
            v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointJetsamPrority]"];
            [v15 logMessage:v14 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:1114];

            v19 = PLLogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              buffer = 138412290;
              v95 = v14;
              _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", &buffer, 0xCu);
            }
          }
        }
      }

      else
      {
        v5 = malloc_type_malloc(v4, 0x1000040504FFAC1uLL);
        v6 = memorystatus_control();
        if (v6 > 0)
        {
          v7 = v6;
          v60 = v5;
          v8 = objc_opt_new();
          v9 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"JetsamPriority"];
          monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
          if (v7 < 0x18)
          {
LABEL_6:
            v71 = v9;
            v72 = v8;
            v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
            [v2 logEntries:v10 withGroupID:v9];

            free(v60);
            return;
          }

          v29 = v7 / 0x18uLL;
          v30 = v60;
          v61 = v9;
          v62 = v8;
          while (1)
          {
            context = objc_autoreleasePoolPush();
            v31 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withDate:monotonicDate];
            v32 = [MEMORY[0x277CCABB0] numberWithInt:*v30];
            [v31 setObject:v32 forKeyedSubscript:@"pid"];

            bzero(&buffer, 0x1000uLL);
            proc_pidpath(*v30, &buffer, 0x1000u);
            v96 = 0;
            v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:basename(&buffer)];
            [v31 setObject:v33 forKeyedSubscript:@"name"];

            v68 = 0;
            v69 = 0;
            if (memorystatus_control() && [*(v3 + 384) debugEnabled])
            {
              v34 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke_448;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v34;
              if (qword_2811F30D8 != -1)
              {
                dispatch_once(&qword_2811F30D8, block);
              }

              if (byte_2811F3074 == 1)
              {
                v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Warning: Failed to get memory limit info for pid %d.  Limits will appear as 0MB and not fatal.\n", *v30];
                v36 = MEMORY[0x277D3F178];
                v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
                lastPathComponent2 = [v37 lastPathComponent];
                v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointJetsamPrority]"];
                [v36 logMessage:v35 fromFile:lastPathComponent2 fromFunction:v39 fromLineNumber:1080];

                v40 = PLLogCommon();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(v75[0]) = 138412290;
                  *(v75 + 4) = v35;
                  _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", v75, 0xCu);
                }

                v3 = 0x277D3F000uLL;
                v9 = v61;
                v8 = v62;
              }
            }

            v41 = [MEMORY[0x277CCABB0] numberWithInt:v68];
            [v31 setObject:v41 forKeyedSubscript:@"activeLimit"];

            v42 = [MEMORY[0x277CCABB0] numberWithInt:v69];
            [v31 setObject:v42 forKeyedSubscript:@"inactiveLimit"];

            v43 = [MEMORY[0x277CCABB0] numberWithInt:BYTE4(v68) & 1];
            [v31 setObject:v43 forKeyedSubscript:@"activeLimitIsHard"];

            v44 = [MEMORY[0x277CCABB0] numberWithInt:BYTE4(v69) & 1];
            [v31 setObject:v44 forKeyedSubscript:@"inactiveLimitIsHard"];

            v93 = 0;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            *v75 = 0u;
            v76 = 0u;
            if (proc_pid_rusage(*v30, 4, v75))
            {
              if (![*(v3 + 384) debugEnabled])
              {
                goto LABEL_42;
              }

              v45 = objc_opt_class();
              v66[0] = MEMORY[0x277D85DD0];
              v66[1] = 3221225472;
              v66[2] = __48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke_454;
              v66[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v66[4] = v45;
              if (qword_2811F30E0 != -1)
              {
                dispatch_once(&qword_2811F30E0, v66);
              }

              if (byte_2811F3075 != 1)
              {
                goto LABEL_42;
              }

              v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Warning: Could not get rusage for pid %d.\n", *v30];
              v47 = MEMORY[0x277D3F178];
              v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
              lastPathComponent3 = [v48 lastPathComponent];
              v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointJetsamPrority]"];
              [v47 logMessage:v46 fromFile:lastPathComponent3 fromFunction:v50 fromLineNumber:1090];

              v51 = PLLogCommon();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v74 = v46;
                _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v3 = 0x277D3F000;
              v9 = v61;
              v8 = v62;
            }

            else
            {
              v52 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v90];
              [v31 setObject:v52 forKeyedSubscript:@"peakFootprint"];

              v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v79 + 1)];
              [v31 setObject:v46 forKeyedSubscript:@"footprint"];
            }

LABEL_42:
            v53 = [MEMORY[0x277CCABB0] numberWithInt:v30[1]];
            [v31 setObject:v53 forKeyedSubscript:@"priority"];

            0x10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30[5] & 0x10];
            [v31 setObject:0x10 forKeyedSubscript:@"pressuredExit"];

            v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30[5] & 2];
            [v31 setObject:v55 forKeyedSubscript:@"frozen"];

            v56 = [v2 countFD:*v30];
            if (v56 != -1)
            {
              v57 = [MEMORY[0x277CCABB0] numberWithInt:v56];
              [v31 setObject:v57 forKeyedSubscript:@"fds"];
            }

            v58 = [v2 countMachPort:*v30];
            if (v58 != -1)
            {
              v59 = [MEMORY[0x277CCABB0] numberWithInt:v58];
              [v31 setObject:v59 forKeyedSubscript:@"machPorts"];
            }

            [v8 addObject:v31];

            objc_autoreleasePoolPop(context);
            v30 += 6;
            if (!--v29)
            {
              goto LABEL_6;
            }
          }
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v20 = objc_opt_class();
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke;
          v70[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v70[4] = v20;
          if (qword_2811F30D0 != -1)
          {
            dispatch_once(&qword_2811F30D0, v70);
          }

          if (byte_2811F3073 == 1)
          {
            v21 = MEMORY[0x277CCACA8];
            v22 = __error();
            v23 = [v21 stringWithFormat:@"Error: Could not get jetsam priority list: %s\n", strerror(*v22)];
            v24 = MEMORY[0x277D3F178];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
            lastPathComponent4 = [v25 lastPathComponent];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointJetsamPrority]"];
            [v24 logMessage:v23 fromFile:lastPathComponent4 fromFunction:v27 fromLineNumber:1057];

            v28 = PLLogCommon();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              buffer = 138412290;
              v95 = v23;
              _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", &buffer, 0xCu);
            }
          }
        }

        free(v5);
      }
    }
  }
}

void *__48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3073 = result;
  return result;
}

void *__48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke_448(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3074 = result;
  return result;
}

void *__48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke_454(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3075 = result;
  return result;
}

void *__48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke_460(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3076 = result;
  return result;
}

- (int)countFD:(int)d
{
  v4 = proc_pidinfo(d, 1, 0, 0, 0);
  if (v4 < 1)
  {
    return -1;
  }

  v5 = v4;
  v6 = malloc_type_malloc(v4, 0x100004000313F17uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = (proc_pidinfo(d, 1, 0, v6, v5) >> 3);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v7 + 1;
    while (1)
    {
      if (*v10 == 1)
      {
        memset(v13, 0, sizeof(v13));
        v11 = proc_pidfdinfo(d, *(v10 - 1), 1, v13, 176);
        if (v11 <= 0)
        {
          if (*__error() != 2)
          {
LABEL_15:
            free(v7);
            return -1;
          }
        }

        else
        {
          if (v11 < 0xB0)
          {
            goto LABEL_15;
          }

          ++v9;
        }
      }

      v10 += 2;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }
  }

  v9 = 0;
LABEL_14:
  free(v7);
  return v9;
}

- (int)countMachPort:(int)port
{
  v3 = *&port;
  v25 = *MEMORY[0x277D85DE8];
  buffer = 0;
  v4 = proc_pidinfo(port, 32, 0, &buffer, 8);
  if (v4 != 8)
  {
    v13 = v4;
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      return -1;
    }

    v14 = objc_opt_class();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __36__PLPerformanceAgent_countMachPort___block_invoke_469;
    v20[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v20[4] = v14;
    if (qword_2811F30F8 != -1)
    {
      dispatch_once(&qword_2811F30F8, v20);
    }

    if (byte_2811F3078 != 1)
    {
      return -1;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get mach port count for pid(%d) with error=%d\n", v3, v13];
    v15 = MEMORY[0x277D3F178];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
    lastPathComponent = [v16 lastPathComponent];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent countMachPort:]"];
    [v15 logMessage:v7 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:1175];

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v24 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v5 = -1;
    goto LABEL_15;
  }

  v5 = buffer - HIDWORD(buffer);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PLPerformanceAgent_countMachPort___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F30F0 != -1)
    {
      dispatch_once(&qword_2811F30F0, block);
    }

    if (byte_2811F3077 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"mach port for pid(%d): table_size = %u, table_free = %u\n", v3, buffer, HIDWORD(buffer)];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
      lastPathComponent2 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent countMachPort:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent2 fromFunction:v11 fromLineNumber:1172];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_15:
    }
  }

  return v5;
}

void *__36__PLPerformanceAgent_countMachPort___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3077 = result;
  return result;
}

void *__36__PLPerformanceAgent_countMachPort___block_invoke_469(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3078 = result;
  return result;
}

- (void)logEventPointAPFSFragmentation
{
  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    if ([MEMORY[0x277D3F180] isTaskFullEPLMode])
    {
      workQueue = [(PLOperator *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke;
      block[3] = &unk_2782591D0;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }
}

void __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  existing = 0;
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("AppleAPFSContainer");
  if (IOServiceGetMatchingServices(v2, v3, &existing))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_2;
      v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v39[4] = v4;
      if (qword_2811F3100 != -1)
      {
        dispatch_once(&qword_2811F3100, v39);
      }

      if (byte_2811F3079 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to scan IORegistry for APFS container object."];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointAPFSFragmentation]_block_invoke"];
        [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1188];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buffer[0]) = 138412290;
          *(buffer + 4) = v5;
LABEL_39:
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buffer, 0xCu);
          goto LABEL_36;
        }

        goto LABEL_36;
      }
    }

    return;
  }

  v11 = IOIteratorNext(existing);
  if (v11)
  {
    v12 = *MEMORY[0x277CBECE8];
    v13 = v11;
    while (1)
    {
      parent = 0;
      properties = 0;
      if (IORegistryEntryGetParentEntry(v13, "IOService", &parent))
      {
        break;
      }

      if (!IORegistryEntryCreateCFProperties(parent, &properties, v12, 0))
      {
        Value = CFDictionaryGetValue(properties, @"BSD Name");
        memset(buffer, 0, sizeof(buffer));
        if (Value && CFStringGetCString(Value, buffer, 64, 0x8000100u))
        {
          [*(a1 + 32) logEventPointAPFSFragmentationWithContainer:buffer];
        }

        CFRelease(properties);
        IOObjectRelease(parent);
        IOObjectRelease(v13);
        goto LABEL_28;
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v21 = objc_opt_class();
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_484;
        v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v35[4] = v21;
        if (qword_2811F3110 != -1)
        {
          dispatch_once(&qword_2811F3110, v35);
        }

        if (byte_2811F307B == 1)
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to fetch IORegistry properties for APFS container object."];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
          v24 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointAPFSFragmentation]_block_invoke_2"];
          [v22 logMessage:v15 fromFile:v24 fromFunction:v25 fromLineNumber:1203];

          v20 = PLLogCommon();
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
LABEL_23:

            goto LABEL_28;
          }

LABEL_30:
          LODWORD(buffer[0]) = 138412290;
          *(buffer + 4) = v15;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buffer, 0xCu);
          goto LABEL_23;
        }
      }

LABEL_28:
      v13 = IOIteratorNext(existing);
      if (!v13)
      {
        IOObjectRelease(existing);
        return;
      }
    }

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_28;
    }

    v14 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_480;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v14;
    if (qword_2811F3108 != -1)
    {
      dispatch_once(&qword_2811F3108, block);
    }

    if (byte_2811F307A != 1)
    {
      goto LABEL_28;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to scan IORegistry for APFS container object."];
    v16 = MEMORY[0x277D3F178];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
    v18 = [v17 lastPathComponent];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointAPFSFragmentation]_block_invoke_2"];
    [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:1199];

    v20 = PLLogCommon();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  IOObjectRelease(existing);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v27 = objc_opt_class();
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_493;
    v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v34[4] = v27;
    if (qword_2811F3118 != -1)
    {
      dispatch_once(&qword_2811F3118, v34);
    }

    if (byte_2811F307C == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"no APFS containers found."];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
      v30 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointAPFSFragmentation]_block_invoke_2"];
      [v28 logMessage:v5 fromFile:v30 fromFunction:v31 fromLineNumber:1218];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buffer[0]) = 138412290;
        *(buffer + 4) = v5;
        goto LABEL_39;
      }

LABEL_36:
    }
  }
}

void *__52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3079 = result;
  return result;
}

void *__52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_480(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F307A = result;
  return result;
}

void *__52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_484(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F307B = result;
  return result;
}

void *__52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_493(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F307C = result;
  return result;
}

- (void)logEventPointAPFSFragmentationWithContainer:(const char *)container
{
  v26 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__PLPerformanceAgent_logEventPointAPFSFragmentationWithContainer___block_invoke;
    v23[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v23[4] = v4;
    if (qword_2811F3120 != -1)
    {
      dispatch_once(&qword_2811F3120, v23);
    }

    if (byte_2811F307D == 1)
    {
      container = [MEMORY[0x277CCACA8] stringWithFormat:@"logEventPointAPFSFragmentationWithContainer:%s\n", container];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointAPFSFragmentationWithContainer:]"];
      [v6 logMessage:container fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1227];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = container;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v22 = 0;
  valuePtr = 0;
  APFSGetFragmentationHistogram();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __66__PLPerformanceAgent_logEventPointAPFSFragmentationWithContainer___block_invoke_502;
    v20[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v20[4] = v11;
    if (qword_2811F3128 != -1)
    {
      dispatch_once(&qword_2811F3128, v20);
    }

    if (byte_2811F307E == 1)
    {
      container2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to get fragmentation histogram for %s", container];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
      lastPathComponent2 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointAPFSFragmentationWithContainer:]"];
      v17 = v13;
      v18 = container2;
      [v17 logMessage:container2 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:1233];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__66__PLPerformanceAgent_logEventPointAPFSFragmentationWithContainer___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F307D = result;
  return result;
}

void *__66__PLPerformanceAgent_logEventPointAPFSFragmentationWithContainer___block_invoke_502(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F307E = result;
  return result;
}

void *__66__PLPerformanceAgent_logEventPointAPFSFragmentationWithContainer___block_invoke_508(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F307F = result;
  return result;
}

void *__66__PLPerformanceAgent_logEventPointAPFSFragmentationWithContainer___block_invoke_514(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3080 = result;
  return result;
}

- (void)logEventPointRollout
{
  v30[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F180], "liteMode"))
  {
    return;
  }

  v3 = objc_opt_new();
  v4 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Rollout"];
  defaultProvider = [MEMORY[0x277D73648] defaultProvider];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  if (([MEMORY[0x277D3F208] seedBuild] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild"))
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Logging All Active Rollouts deployed on-device", buf, 2u);
    }

    v27 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__PLPerformanceAgent_logEventPointRollout__block_invoke;
    v23[3] = &unk_27825A860;
    v8 = &v24;
    v24 = v4;
    v9 = &v25;
    v25 = monotonicDate;
    v10 = &v26;
    v26 = v3;
    v11 = &v27;
    [defaultProvider enumerateActiveRolloutsWithError:&v27 block:v23];
  }

  else
  {
    if ([MEMORY[0x277D3F208] internalBuild] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "seedBuild"))
    {
      v12 = 0;
      goto LABEL_9;
    }

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Logging Sampled Set of Active Rollouts deployed on-device", buf, 2u);
    }

    v22 = 0;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __42__PLPerformanceAgent_logEventPointRollout__block_invoke_519;
    v18 = &unk_27825A860;
    v8 = &v19;
    v19 = v4;
    v9 = &v20;
    v20 = monotonicDate;
    v10 = &v21;
    v21 = v3;
    v11 = &v22;
    [defaultProvider enumerateSampledActiveRolloutsForCorrelationID:@"com.apple.powerlog" error:&v22 block:&v15];
  }

  v12 = *v11;

LABEL_9:
  if ([v3 count])
  {
    v29 = v4;
    v30[0] = v3;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [(PLOperator *)self logEntries:v13 withGroupID:v4];
  }
}

void __42__PLPerformanceAgent_logEventPointRollout__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v9 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
  v5 = [v4 rolloutId];
  [v9 setObject:v5 forKeyedSubscript:@"rolloutID"];

  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 deploymentId];

  v8 = [v6 numberWithInt:v7];
  [v9 setObject:v8 forKeyedSubscript:@"deploymentID"];

  [*(a1 + 48) addObject:v9];
}

void __42__PLPerformanceAgent_logEventPointRollout__block_invoke_519(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v9 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
  v5 = [v4 rolloutId];
  [v9 setObject:v5 forKeyedSubscript:@"rolloutID"];

  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 deploymentId];

  v8 = [v6 numberWithInt:v7];
  [v9 setObject:v8 forKeyedSubscript:@"deploymentID"];

  [*(a1 + 48) addObject:v9];
}

- (void)log
{
  [(PLPerformanceAgent *)self logEventPointSystemMemory:1];
  [(PLPerformanceAgent *)self logEventPointDiskUsage];
  [(PLPerformanceAgent *)self logEventPointJetsamPrority];
  [(PLPerformanceAgent *)self logEventPointDiskFragmentation];
  [(PLPerformanceAgent *)self logEventPointAPFSFragmentation];
  [(PLPerformanceAgent *)self logEventPointVMTunables];
  [(PLPerformanceAgent *)self logEventPointIdleReaper];

  [(PLPerformanceAgent *)self logEventPointCodePrewarming];
}

@end