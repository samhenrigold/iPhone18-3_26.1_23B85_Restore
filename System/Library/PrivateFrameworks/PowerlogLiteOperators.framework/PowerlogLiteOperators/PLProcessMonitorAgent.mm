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

uint64_t __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "ProcessMonitor: Received SBC notification!", buf, 2u);
  }

  [*(a1 + 32) updateProcessMonitorCache];
  [*(a1 + 32) logEventIntervalProcessMonitorIntervalUsingCache];
  [*(a1 + 32) logEventPointMemoryTracking];
  [*(a1 + 32) logEventIntervalKernelTaskMonitor];
  [*(a1 + 32) logProcessExit];
  [*(a1 + 32) logEventPointFreezerStats];
  [*(a1 + 32) logEventPointFreezerDemotion];
  [*(a1 + 32) logEventPointSystemFreezerStats];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: BatteryLevelChanged -> should log to CoreAnalytics?", v5, 2u);
  }

  [*(a1 + 32) logProcDirtyStats];
  [*(a1 + 32) logThreadStats];
  return [*(a1 + 32) logEventPointAppNapEnabled];
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
  v7 = 0x277D3F000uLL;
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
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
      v7 = 0x277D3F000;
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

  if ([v6 count] && (objc_msgSend(*(v7 + 600), "isPowerlogHelperd") & 1) == 0 && (objc_msgSend(*(v7 + 600), "isPerfPowerMetricd") & 1) == 0)
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

- (void)log
{
  [(PLProcessMonitorAgent *)self updateProcessMonitorCache];
  [(PLProcessMonitorAgent *)self logEventIntervalProcessMonitorIntervalUsingCache];
  [(PLProcessMonitorAgent *)self logEventPointMemoryTracking];
  [(PLProcessMonitorAgent *)self logEventIntervalKernelTaskMonitor];

  [(PLProcessMonitorAgent *)self logProcessExit];
}

- (void)logEventIntervalProcessMonitorIntervalUsingCache
{
  v33 = *MEMORY[0x277D85DE8];
  previousCacheDate = [(PLProcessMonitorAgent *)self previousCacheDate];

  if (previousCacheDate)
  {
    v4 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ProcessMonitorInterval"];
    v5 = objc_alloc(MEMORY[0x277D3F1E8]);
    previousCacheDate2 = [(PLProcessMonitorAgent *)self previousCacheDate];
    v7 = [v5 initWithEntryKey:v4 withDate:previousCacheDate2];

    currentCachedDate = [(PLProcessMonitorAgent *)self currentCachedDate];
    [v7 setObject:currentCachedDate forKeyedSubscript:@"timestampEnd"];

    [(PLProcessMonitorAgent *)self currentCachedTotalCPUTime];
    if (v9 > 0.0)
    {
      v25 = v4;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      lastCPUTimeDict = [(PLProcessMonitorAgent *)self lastCPUTimeDict];
      allKeys = [lastCPUTimeDict allKeys];

      v12 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        do
        {
          v15 = 0;
          do
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(allKeys);
            }

            v16 = *(*(&v26 + 1) + 8 * v15);
            lastCPUTimeDict2 = [(PLProcessMonitorAgent *)self lastCPUTimeDict];
            v18 = [lastCPUTimeDict2 objectForKeyedSubscript:v16];

            cpu_time_diff = [v18 cpu_time_diff];
            [(PLProcessMonitorAgent *)self currentCachedTotalCPUTime];
            if (cpu_time_diff / v20 > 0.01)
            {
              v21 = -[PLProcessMonitorAgent processMonitorMultiKeyFromProcessID:](self, "processMonitorMultiKeyFromProcessID:", [v16 intValue]);
              if (v21)
              {
                v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v18, "cpu_time_diff")}];
                [v7 setObject:v22 forKeyedSubscript:v21];
              }
            }

            if ([v18 shared_cache_reslid])
            {
              v23 = PLLogProcessMonitor();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                intValue = [v16 intValue];
                *buf = 67109120;
                v31 = intValue;
                _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "Cache reslid for %d", buf, 8u);
              }

              -[PLProcessMonitorAgent logEventPointSharedCacheReslid:](self, "logEventPointSharedCacheReslid:", [v16 intValue]);
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v13);
      }

      v4 = v25;
    }

    [(PLOperator *)self logEntry:v7];
  }

  else
  {
    v4 = PLLogProcessMonitor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "ProcessMonitor cache not set yet", buf, 2u);
    }
  }
}

- (void)logEventPointMemoryTracking
{
  v30 = *MEMORY[0x277D85DE8];
  if ([(PLOperator *)self isDebugEnabled])
  {
    v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MemoryTracking"];
    v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
    v26 = 0;
    v25 = 0;
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
        if (qword_2811F4E10 != -1)
        {
          dispatch_once(&qword_2811F4E10, block);
        }

        if (byte_2811F4DA9 == 1)
        {
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"error with malloc_get_all_zones"];
          v7 = MEMORY[0x277D3F178];
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
          lastPathComponent = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointMemoryTracking]"];
          [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1107];

          v11 = PLLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v29.bytes_total) = 138412290;
            *(&v29.bytes_total + 4) = v6;
            _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", &v29, 0xCu);
          }
        }
      }
    }

    else
    {
      memset(&v29, 0, sizeof(v29));
      mstats(&v29);
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:v29.bytes_total * 0.0009765625];
      [v4 setObject:v12 forKeyedSubscript:@"HeapTotal"];

      v13 = [MEMORY[0x277CCABB0] numberWithDouble:v29.bytes_used * 0.0009765625];
      [v4 setObject:v13 forKeyedSubscript:@"HeapUsed"];

      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v29.bytes_free * 0.0009765625];
      [v4 setObject:v14 forKeyedSubscript:@"HeapFree"];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v15 = objc_opt_class();
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_541;
        v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v22[4] = v15;
        if (qword_2811F4E28 != -1)
        {
          dispatch_once(&qword_2811F4E28, v22);
        }

        if (byte_2811F4DAC == 1)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"heap: total=%f used=%f free=%f", v29.bytes_total * 0.0009765625, v29.bytes_used * 0.0009765625, v29.bytes_free * 0.0009765625];
          v17 = MEMORY[0x277D3F178];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
          lastPathComponent2 = [v18 lastPathComponent];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointMemoryTracking]"];
          [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:1130];

          v21 = PLLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v28 = v16;
            _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      [(PLOperator *)self logEntry:v4];
    }
  }
}

- (void)logEventIntervalKernelTaskMonitor
{
  selfCopy = self;
  v95 = *MEMORY[0x277D85DE8];
  v82 = 0;
  v3 = [(PLProcessMonitorAgent *)self get_kthread_list:&v82];
  if (v3 != -1)
  {
    v4 = v3;
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v6 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"KernelTaskMonitor"];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    array = [MEMORY[0x277CBEB18] array];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    *buf = 0u;
    getHardwarePerfLevels = [MEMORY[0x277D3F258] getHardwarePerfLevels];
    if (getHardwarePerfLevels - 3 > 0xFFFFFFFD)
    {
      v16 = getHardwarePerfLevels;
      v74 = 40 * getHardwarePerfLevels + 8;
      v17 = malloc_type_malloc(v74, 0xB95FC73EuLL);
      if (v17)
      {
        v70 = v6;
        v71 = selfCopy;
        v75 = v17;
        v68 = monotonicDate;
        if (v4 < 1)
        {
          v20 = 0.0;
        }

        else
        {
          v69 = v16;
          v18 = 0;
          v19 = 8 * v4;
          v20 = 0.0;
          v67 = dictionary;
          v72 = v19;
          do
          {
            v21 = objc_autoreleasePoolPush();
            *buf = 0u;
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            v22 = proc_pidinfo(0, 15, *(v82 + v18), buf, 112);
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v23 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __58__PLProcessMonitorAgent_logEventIntervalKernelTaskMonitor__block_invoke_707;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v23;
              if (qword_2811F4E90 != -1)
              {
                dispatch_once(&qword_2811F4E90, block);
              }

              if (byte_2811F4DB3 == 1)
              {
                v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"retval = %d", v22];
                v25 = MEMORY[0x277D3F178];
                v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
                lastPathComponent = [v26 lastPathComponent];
                v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventIntervalKernelTaskMonitor]"];
                [v25 logMessage:v24 fromFile:lastPathComponent fromFunction:v28 fromLineNumber:2026];

                v29 = PLLogCommon();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  *v86 = 138412290;
                  *v87 = v24;
                  _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", v86, 0xCu);
                }
              }
            }

            if ((BYTE12(v89) & 2) == 0)
            {
              lastEntryDate = [(PLProcessMonitorAgent *)selfCopy lastEntryDate];

              if (lastEntryDate)
              {
                v31 = *(v82 + v18);
                v32 = objc_alloc_init(KernelTaskMonitorStats);
                [(KernelTaskMonitorStats *)v32 setThread_id:v31];
                [(KernelTaskMonitorStats *)v32 setCpu_time:(*&buf[8] + *buf) / 1000000000.0];
                v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v91];
                [(KernelTaskMonitorStats *)v32 setThread_name:v33];
                bzero(v75, v74);
                v34 = proc_pidinfo(0, 34, v31, v75, v74);
                if (v74 == v34)
                {
                  [(KernelTaskMonitorStats *)v32 setCpu_energy_p:v75[5] + [(KernelTaskMonitorStats *)v32 cpu_energy_p]];
                  if (v69 >= 2)
                  {
                    [(KernelTaskMonitorStats *)v32 setCpu_energy_e:v75[10] + [(KernelTaskMonitorStats *)v32 cpu_energy_e]];
                  }

                  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
                  [dictionary setObject:v32 forKeyedSubscript:v35];

                  lastThreadIdToKTMonitorEntryDict = [(PLProcessMonitorAgent *)selfCopy lastThreadIdToKTMonitorEntryDict];
                  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
                  v38 = [lastThreadIdToKTMonitorEntryDict objectForKeyedSubscript:v37];

                  if (v38)
                  {
                    thread_name = [v38 thread_name];
                    thread_name2 = [(KernelTaskMonitorStats *)v32 thread_name];
                    v41 = [thread_name isEqualToString:thread_name2];

                    if (v41)
                    {
                      v42 = objc_alloc(MEMORY[0x277D3F190]);
                      lastEntryDate2 = [(PLProcessMonitorAgent *)v71 lastEntryDate];
                      v44 = [v42 initWithEntryKey:v70 withDate:lastEntryDate2];

                      [v44 setObject:v68 forKeyedSubscript:@"timestampEnd"];
                      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
                      [v44 setObject:v45 forKeyedSubscript:@"ThreadID"];

                      thread_name3 = [v38 thread_name];
                      [v44 setObject:thread_name3 forKeyedSubscript:@"ThreadName"];

                      [(KernelTaskMonitorStats *)v32 cpu_time];
                      v48 = v47;
                      [v38 cpu_time];
                      v50 = v48 - v49;
                      v51 = [MEMORY[0x277CCABB0] numberWithDouble:v50];
                      [v44 setObject:v51 forKeyedSubscript:@"CPUTime"];

                      if (v50 > 0.0)
                      {
                        v52 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[KernelTaskMonitorStats cpu_energy_p](v32, "cpu_energy_p") - -[NSObject cpu_energy_p](v38, "cpu_energy_p")}];
                        [v44 setObject:v52 forKeyedSubscript:@"CPUEnergyP"];

                        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[KernelTaskMonitorStats cpu_energy_e](v32, "cpu_energy_e") - -[NSObject cpu_energy_e](v38, "cpu_energy_e")}];
                        [v44 setObject:v53 forKeyedSubscript:@"CPUEnergyE"];

                        [array addObject:v44];
                      }

                      v20 = v20 + v50;
                    }

                    dictionary = v67;
                  }

                  selfCopy = v71;
                }

                else
                {
                  v54 = v34;
                  v38 = PLLogProcessMonitor();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                  {
                    *v86 = 67109376;
                    *v87 = v54;
                    *&v87[4] = 2048;
                    *&v87[6] = v74;
                    _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "threadcounts syscall return size = %d, expected size = %zu", v86, 0x12u);
                  }
                }

                v19 = v72;
              }
            }

            objc_autoreleasePoolPop(v21);
            v18 += 8;
          }

          while (v19 != v18);
        }

        free(v75);
        free(v82);
        lastEntryDate3 = [(PLProcessMonitorAgent *)selfCopy lastEntryDate];

        monotonicDate = v68;
        v6 = v70;
        if (lastEntryDate3)
        {
          v56 = objc_opt_new();
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v57 = array;
          v58 = [v57 countByEnumeratingWithState:&v76 objects:v85 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v77;
            do
            {
              for (i = 0; i != v59; ++i)
              {
                if (*v77 != v60)
                {
                  objc_enumerationMutation(v57);
                }

                v62 = *(*(&v76 + 1) + 8 * i);
                v63 = [v62 objectForKeyedSubscript:@"CPUTime"];
                [v63 doubleValue];
                v65 = v64 / v20;

                if (v65 > 0.01)
                {
                  [v56 addObject:v62];
                }
              }

              v59 = [v57 countByEnumeratingWithState:&v76 objects:v85 count:16];
            }

            while (v59);
          }

          v6 = v70;
          selfCopy = v71;
          if ([v56 count])
          {
            v83 = v70;
            v84 = v56;
            v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
            [(PLOperator *)v71 logEntries:v66 withGroupID:v70];
          }
        }

        [(PLProcessMonitorAgent *)selfCopy setLastEntryDate:v68];
        [(PLProcessMonitorAgent *)selfCopy setLastThreadIdToKTMonitorEntryDict:dictionary];
        goto LABEL_55;
      }

      v9 = PLLogProcessMonitor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v86 = 0;
        v10 = "Error in allocating memory for proc_threadcounts";
        goto LABEL_59;
      }
    }

    else
    {
      v9 = PLLogProcessMonitor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v86 = 0;
        v10 = "Error in retrieving hardware performance levels";
LABEL_59:
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, v10, v86, 2u);
      }
    }

LABEL_55:
LABEL_56:

    return;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __58__PLProcessMonitorAgent_logEventIntervalKernelTaskMonitor__block_invoke;
    v81[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v81[4] = v11;
    if (qword_2811F4E88 != -1)
    {
      dispatch_once(&qword_2811F4E88, v81);
    }

    if (byte_2811F4DB2 == 1)
    {
      monotonicDate = [MEMORY[0x277CCACA8] stringWithFormat:@"Error in retrieving thread id list"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent2 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventIntervalKernelTaskMonitor]"];
      [v12 logMessage:monotonicDate fromFile:lastPathComponent2 fromFunction:v15 fromLineNumber:1992];

      v6 = PLLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = monotonicDate;
        _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_56;
    }
  }
}

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
  v23 = &unk_282C1C598;
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
  v19[0] = &unk_282C1C598;
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
  v24[0] = &unk_282C1C5A8;
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
  v24[0] = &unk_282C1C598;
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
  v20[0] = &unk_282C1C598;
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
  v14[0] = &unk_282C1C598;
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
  v14[0] = &unk_282C1C598;
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
  v16[0] = &unk_282C1C598;
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
  v16[0] = &unk_282C1C598;
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
  v12[0] = &unk_282C1C598;
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
  v21[0] = &unk_282C1C5B8;
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
    v11 = &unk_282C1C598;
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
    v20[0] = &unk_282C1C598;
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
  v16[0] = &unk_282C1C598;
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
  v27[0] = &unk_282C1C5C8;
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
  v22[0] = &unk_282C1C5A8;
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
  v28[0] = &unk_282C1C598;
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
  v32 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    [(PLProcessMonitorAgent *)self enableProcessExitLogging];
  }

  [(PLProcessMonitorAgent *)self initializeThreadStatsLogging];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke;
  v29[3] = &unk_2782597E8;
  v29[4] = self;
  v3 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v29];
  batteryLevelChanged = self->_batteryLevelChanged;
  self->_batteryLevelChanged = v3;

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_428;
  v28[3] = &unk_27825A1D8;
  v28[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_282C188C8 withBlock:v28];
  appResumePredictionsListener = self->_appResumePredictionsListener;
  self->_appResumePredictionsListener = v6;

  v8 = objc_alloc(MEMORY[0x277D3F270]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_437;
  v27[3] = &unk_27825A1D8;
  v27[4] = self;
  v9 = [v8 initWithOperator:self withRegistration:&unk_282C188F0 withBlock:v27];
  appNotFrozenListener = self->_appNotFrozenListener;
  self->_appNotFrozenListener = v9;

  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v11 = objc_alloc(MEMORY[0x277D3F270]);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_442;
    v26[3] = &unk_27825A1D8;
    v26[4] = self;
    v12 = [v11 initWithOperator:self withRegistration:&unk_282C18918 withBlock:v26];
    appResumeInferredCarryListener = self->_appResumeInferredCarryListener;
    self->_appResumeInferredCarryListener = v12;
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v15 = [monotonicDate dateByAddingTimeInterval:arc4random_uniform(0x15180u)];
  v16 = _reportProcDirtyStatsAfterTime;
  _reportProcDirtyStatsAfterTime = v15;

  v17 = PLLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = _reportProcDirtyStatsAfterTime;
    _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: Picked random time in next 24 hours for sending stats to CA: %@", buf, 0xCu);
  }

  v18 = objc_alloc(MEMORY[0x277D3F278]);
  workQueue = [(PLOperator *)self workQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_454;
  v25[3] = &unk_278259810;
  v25[4] = self;
  v20 = [v18 initWithWorkQueue:workQueue withRegistration:&unk_282C18940 withBlock:v25];
  [(PLProcessMonitorAgent *)self setMemoryKillsResponder:v20];

  v21 = objc_alloc(MEMORY[0x277D3F278]);
  workQueue2 = [(PLOperator *)self workQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_469;
  v24[3] = &unk_278259810;
  v24[4] = self;
  v23 = [v21 initWithWorkQueue:workQueue2 withRegistration:&unk_282C18968 withBlock:v24];
  [(PLProcessMonitorAgent *)self setHudKillsResponder:v23];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogProcessMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLProcessMonitorAgent_EventPoint_AppResumePredictions: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventPointAppResumePredictions:v6];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_437(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogProcessMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLProcessMonitorAgent_EventPoint_AppNotFrozen: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventPointAppNotFrozen:v6];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_442(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogProcessMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLProcessMonitorAgent_EventForward_AppResumeInferredCarry: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardAppResumeInferredCarry:v6];
}

id __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogProcessMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "MemoryKills query received with info: %@", &v13, 0xCu);
  }

  v8 = [*(a1 + 32) getProcessExits:v6];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = objc_opt_new();
    [v10 setObject:v9 forKeyedSubscript:@"ProcessExits"];
  }

  else
  {
    v11 = PLLogProcessMonitor();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "MemoryKills query did not succeed", &v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

id __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_469(uint64_t a1)
{
  v2 = PLLogProcessMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_INFO, "HUD Terminations query received", buf, 2u);
  }

  v3 = [*(a1 + 32) getAllProcessExitsInLastHour];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = objc_opt_new();
    [v5 setObject:v4 forKeyedSubscript:@"ProcessExits"];
  }

  else
  {
    v6 = PLLogProcessMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "HUD Terminations query did not succeed", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)updateProcessExitSummary
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  v4 = objc_msgSend_storage(self);
  self->_processExitSummaryCount = [v4 countOfEntriesForKey:v3];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke;
    v15[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v15[4] = v5;
    if (qword_2811F4DC8 != -1)
    {
      dispatch_once(&qword_2811F4DC8, v15);
    }

    if (_MergedGlobals_1_38 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Init processExitSummaryCount = %d\n", self->_processExitSummaryCount];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent updateProcessExitSummary]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:799];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = dispatch_time(0, 86400000000000);
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_477;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_after(v12, workQueue, block);
}

void *__49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_38 = result;
  return result;
}

void __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_477(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setProcessExitSummaryCount:0];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_2;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v2;
    if (qword_2811F4DD0 != -1)
    {
      dispatch_once(&qword_2811F4DD0, &block);
    }

    if (byte_2811F4DA1 == 1)
    {
      v3 = MEMORY[0x277CCACA8];
      v4 = [*(a1 + 32) processExitSummaryCount];
      v5 = [v3 stringWithFormat:@"Reset processExitSummaryCount = %d\n", v4, block, v12, v13, v14, v15];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent updateProcessExitSummary]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:805];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA1 = result;
  return result;
}

- (void)enableProcessExitLogging
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  if (launch_service_stats_is_enabled_4ppse())
  {
    [(PLProcessMonitorAgent *)self setLaunchServiceStatsEnabled:1];
    v3 = PLLogProcessMonitor();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_INFO, "launch_service_stats is enabled", buf, 2u);
    }

LABEL_7:

    return;
  }

  [(PLProcessMonitorAgent *)self updateProcessExitSummary];
  v4 = launch_service_stats_enable_4ppse();
  if (v4)
  {
    v5 = v4;
    v3 = PLLogProcessMonitor();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v15[0] = v5;
      LOWORD(v15[1]) = 2080;
      *(&v15[1] + 2) = strerror(v5);
      _os_log_error_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_ERROR, "Failed to enable launch_service_stats(%d):%s", buf, 0x12u);
    }

    goto LABEL_7;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLProcessMonitorAgent_enableProcessExitLogging__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F4DD8 != -1)
    {
      dispatch_once(&qword_2811F4DD8, block);
    }

    if (byte_2811F4DA2 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"launch_service_stats enabled."];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent enableProcessExitLogging]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:821];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v15 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLProcessMonitorAgent *)self setLaunchServiceStatsEnabled:1];
}

void *__49__PLProcessMonitorAgent_enableProcessExitLogging__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA2 = result;
  return result;
}

- (void)disableProcessExitLogging
{
  v24 = *MEMORY[0x277D85DE8];
  [(PLProcessMonitorAgent *)self setLaunchServiceStatsEnabled:0];
  v2 = launch_service_stats_disable_4ppse();
  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (v2)
  {
    if (debugEnabled)
    {
      v4 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke_489;
      v19 = &__block_descriptor_40_e5_v8__0lu32l8;
      v20 = v4;
      if (qword_2811F4DE8 != -1)
      {
        dispatch_once(&qword_2811F4DE8, &block);
      }

      if (byte_2811F4DA4 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to disable launch_service_stats(%d):%s", v2, strerror(v2), block, v17, v18, v19, v20];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
        lastPathComponent = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent disableProcessExitLogging]"];
        [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:836];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v5;
LABEL_16:
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }
  }

  else if (debugEnabled)
  {
    v11 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke;
    v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v21[4] = v11;
    if (qword_2811F4DE0 != -1)
    {
      dispatch_once(&qword_2811F4DE0, v21);
    }

    if (byte_2811F4DA3 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"launch_service_stats successfully disabled."];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent2 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent disableProcessExitLogging]"];
      [v12 logMessage:v5 fromFile:lastPathComponent2 fromFunction:v15 fromLineNumber:833];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v5;
        goto LABEL_16;
      }

LABEL_13:
    }
  }
}

void *__50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA3 = result;
  return result;
}

void *__50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke_489(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA4 = result;
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
    [MEMORY[0x277D3F258] secondsFromMachTime:*(buffer + 2)];
    [(ProcessMonitorStats *)v17 setCpu_time:v18];
    [(ProcessMonitorStats *)v17 setShared_cache_reslid:*(buffer + 74) & 1];
    lastCPUTimeDict = [(PLProcessMonitorAgent *)self lastCPUTimeDict];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    v21 = [lastCPUTimeDict objectForKeyedSubscript:v20];

    if (v21)
    {
      -[ProcessMonitorStats setCpu_time_diff:](v17, "setCpu_time_diff:", -[ProcessMonitorStats cpu_time](v17, "cpu_time") - [v21 cpu_time]);
      v22 = PLLogProcessMonitor();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v24[0] = 67109632;
        v24[1] = v10;
        v25 = 2048;
        cpu_time = [(ProcessMonitorStats *)v17 cpu_time];
        v27 = 2048;
        cpu_time2 = [v21 cpu_time];
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "CPU Time Difference calculation for pid[%d] %llu %llu", v24, 0x1Cu);
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

- (id)getFrozenProcesses
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(v25, 0, sizeof(v25));
  if (memorystatus_control() < 1)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __43__PLProcessMonitorAgent_getFrozenProcesses__block_invoke;
      v23 = &__block_descriptor_40_e5_v8__0lu32l8;
      v24 = v9;
      if (qword_2811F4DF0 != -1)
      {
        dispatch_once(&qword_2811F4DF0, &block);
      }

      if (byte_2811F4DA5 == 1)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = __error();
        v12 = strerror(*v11);
        v13 = [v10 stringWithFormat:@"Error: Could not get frozen process list: %s\n", v12, block, v21, v22, v23, v24];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
        lastPathComponent = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent getFrozenProcesses]"];
        [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:976];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v13;
          _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v8 = 0;
  }

  else
  {
    v3 = LODWORD(v25[0]);
    if (LODWORD(v25[0]))
    {
      v4 = (v25 | 0xC);
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
  byte_2811F4DA5 = result;
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
  v4[3] = &unk_27825D6C0;
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
  v4[3] = &unk_27825D6C0;
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
  v39 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  if ((ledger() & 0x80000000) != 0)
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_26;
    }

    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F4DF8 != -1)
    {
      dispatch_once(&qword_2811F4DF8, block);
    }

    if (byte_2811F4DA6 != 1)
    {
      goto LABEL_26;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error in ledger info"];
    v12 = MEMORY[0x277D3F178];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent ledgerDataAtIndex:forPid:]"];
    [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1059];

    v16 = PLLogCommon();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }

    *buf = 138412290;
    v35 = v11;
LABEL_31:
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
LABEL_25:

    goto LABEL_26;
  }

  v32 = *(&v38 + 1);
  v6 = malloc_type_malloc(48 * *(&v38 + 1), 0x1000040EED21634uLL);
  if (!v6)
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_26;
    }

    v24 = objc_opt_class();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke_513;
    v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v31[4] = v24;
    if (qword_2811F4E00 != -1)
    {
      dispatch_once(&qword_2811F4E00, v31);
    }

    if (byte_2811F4DA7 != 1)
    {
      goto LABEL_26;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to allocate ledger entry info"];
    v25 = MEMORY[0x277D3F178];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
    lastPathComponent2 = [v26 lastPathComponent];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent ledgerDataAtIndex:forPid:]"];
    [v25 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:1068];

    v16 = PLLogCommon();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }

    *buf = 138412290;
    v35 = v11;
    goto LABEL_31;
  }

  v7 = v6;
  if ((ledger() & 0x80000000) == 0 && v32 > v5)
  {
    v8 = objc_alloc_init(PLLedgerEntryData);
    v9 = &v7[48 * v5];
    [(PLLedgerEntryData *)v8 setCredit:*(v9 + 1)];
    [(PLLedgerEntryData *)v8 setDebit:*(v9 + 2)];
    [(PLLedgerEntryData *)v8 setBalance:*v9];
    free(v7);
    goto LABEL_27;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke_519;
    v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v30[4] = v17;
    if (qword_2811F4E08 != -1)
    {
      dispatch_once(&qword_2811F4E08, v30);
    }

    if (byte_2811F4DA8 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not get ledger entry info for pid %ld and frozen to swap index %d and ledger count %lld", pid, v5, v32];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent3 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent ledgerDataAtIndex:forPid:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent3 fromFunction:v22 fromLineNumber:1072];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  free(v7);
LABEL_26:
  v8 = 0;
LABEL_27:

  return v8;
}

void *__50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA6 = result;
  return result;
}

void *__50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke_513(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA7 = result;
  return result;
}

void *__50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke_519(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA8 = result;
  return result;
}

void *__52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA9 = result;
  return result;
}

void *__52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_529(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DAA = result;
  return result;
}

void *__52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_535(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DAB = result;
  return result;
}

void *__52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_541(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DAC = result;
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
                  v19 = [MEMORY[0x277D3F258] bundleIDFromPid:v14];
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
  v23 = *MEMORY[0x277D85DE8];
  if ([(PLProcessMonitorAgent *)self launchServiceStatsEnabled])
  {
    processExitSummaryCount = self->_processExitSummaryCount;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __39__PLProcessMonitorAgent_logProcessExit__block_invoke;
    v18[3] = &unk_2782591D0;
    v18[4] = self;
    if (qword_2811F4E30 != -1)
    {
      dispatch_once(&qword_2811F4E30, v18);
    }

    if (processExitSummaryCount <= qword_2811F4E38)
    {
      xarray = 0;
      v16 = 0;
      v17 = 0;
      v5 = _launch_service_stats_copy_4ppse_impl();
      v6 = PLLogProcessMonitor();
      v7 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v8 = strerror(v5);
          *buf = 67109378;
          v20 = v5;
          v21 = 2080;
          v22 = v8;
          _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch launch_service_stats(%d):%s", buf, 0x12u);
        }
      }

      else
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v20 = v17;
          _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got %d process exit records", buf, 8u);
        }

        context = objc_autoreleasePoolPush();
        monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
        v11 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        v9 = objc_opt_new();
        v14 = objc_opt_new();
        v13 = objc_opt_new();
        [(PLProcessMonitorAgent *)self logEventPointProcessExit:v9 excludeProcesses:v13 withStats:&xarray withDate:monotonicDate withNowInSec:v11 / 0xF4240];
        [(PLProcessMonitorAgent *)self logEventBackwardProcessExitHistogram:v14 withStats:&xarray withDate:monotonicDate];

        objc_autoreleasePoolPop(context);
        if (v16)
        {
          free(v16);
        }

        v7 = xarray;
        xarray = 0;
      }
    }

    else
    {
      v4 = PLLogProcessMonitor();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(xarray) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "ProcessExitSummaryCount exceeds threshold and logging skipped.", &xarray, 2u);
      }
    }
  }
}

void *__39__PLProcessMonitorAgent_logProcessExit__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ProcessExitSummaryRowThreshold"];
  qword_2811F4E38 = result;
  return result;
}

void *__39__PLProcessMonitorAgent_logProcessExit__block_invoke_553(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ThresholdToSkipAppExitDetail"];
  qword_2811F4E48 = result;
  return result;
}

void *__39__PLProcessMonitorAgent_logProcessExit__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ThresholdToSkipProcessExitDetail"];
  qword_2811F4E58 = result;
  return result;
}

- (void)logEventPointProcessExit:(id)exit excludeProcesses:(id)processes withStats:(id *)stats withDate:(id)date withNowInSec:(unint64_t)sec
{
  v68 = *MEMORY[0x277D85DE8];
  exitCopy = exit;
  processesCopy = processes;
  dateCopy = date;
  v41 = exitCopy;
  allKeys = [exitCopy allKeys];
  v12 = [allKeys sortedArrayUsingComparator:&__block_literal_global_558];

  v47 = objc_opt_new();
  v46 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ProcessExit"];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v12;
  v42 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v42)
  {
    v40 = *v61;
    v13 = *MEMORY[0x277D3F670];
    v44 = *MEMORY[0x277D3F660];
    v14 = 0x277CCA000uLL;
    do
    {
      v15 = 0;
      do
      {
        if (*v61 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v15;
        v16 = [v41 objectForKeyedSubscript:*(*(&v60 + 1) + 8 * v15)];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v49 = v16;
        v52 = [v49 countByEnumeratingWithState:&v56 objects:v66 count:16];
        if (v52)
        {
          v51 = *v57;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v57 != v51)
              {
                objc_enumerationMutation(v49);
              }

              v18 = *(*(&v56 + 1) + 8 * i);
              v19 = objc_autoreleasePoolPush();
              v20 = (stats->var1 + 59 * [v18 intValue]);
              v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_array_get_string(stats->var0, *v20)}];
              if (([processesCopy containsObject:v21] & 1) == 0)
              {
                v22 = [dateCopy dateByAddingTimeInterval:(sec - *(v20 + 3)) / -1000.0];
                v23 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v46 withDate:v22];
                v24 = [*(v14 + 2992) numberWithInt:v20[5]];
                [v23 setObject:v24 forKeyedSubscript:@"PID"];

                v25 = *v20;
                if (xpc_array_get_count(stats->var0) > v25)
                {
                  [v23 setObject:v21 forKeyedSubscript:@"ProcessName"];
                }

                v26 = *(v20 + 3);
                v27 = *(v20 + 1);
                if (v26 > v27 && v27 != 0)
                {
                  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v26 - v27];
                  [v23 setObject:v29 forKeyedSubscript:@"timeSinceSpawn"];
                }

                if (v20[6] != -1)
                {
                  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
                  [v23 setObject:v30 forKeyedSubscript:@"lastTimeToRelaunch"];
                }

                v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v20 + 28)];
                [v23 setObject:v31 forKeyedSubscript:@"ReasonNamespace"];

                v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v20 + 29)];
                [v23 setObject:v32 forKeyedSubscript:@"ReasonCode"];

                v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v20 + 49)];
                [v23 setObject:v33 forKeyedSubscript:@"JetsamPriority"];

                [v47 addObject:v23];
              }

              if ([v21 hasPrefix:v13])
              {
                v34 = [v21 stringByReplacingOccurrencesOfString:v13 withString:&stru_282B650A0];

                v35 = [v34 rangeOfString:@"["];
                if (v35 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v36 = [v34 substringToIndex:v35];
                  goto LABEL_28;
                }
              }

              else
              {
                if ([v21 hasPrefix:v44])
                {
                  v36 = [MEMORY[0x277D3F258] cleanLaunchdApplicationMacOS:v21];
                  v34 = v21;
LABEL_28:

                  v34 = v36;
                  goto LABEL_30;
                }

                v34 = v21;
              }

LABEL_30:
              if (([v34 containsString:@"/"] & 1) == 0)
              {
                if (v20[6] != -1)
                {
                  v55 = v34;
                  AnalyticsSendEventLazy();
                }

                v54 = v34;
                AnalyticsSendEventLazy();
                v53 = v54;
                AnalyticsSendEventLazy();
              }

              objc_autoreleasePoolPop(v19);
              v14 = 0x277CCA000;
            }

            v52 = [v49 countByEnumeratingWithState:&v56 objects:v66 count:16];
          }

          while (v52);
        }

        v15 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v42);
  }

  if ([v47 count])
  {
    v64 = v46;
    v65 = v47;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    [(PLOperator *)self logEntries:v37 withGroupID:v46];
  }
}

id __99__PLProcessMonitorAgent_logEventPointProcessExit_excludeProcesses_withStats_withDate_withNowInSec___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 40) + 55) == -1)
  {
    v3 = @"N/A";
  }

  else
  {
    v2 = [MEMORY[0x277D3F258] processNameForPid:?];
    v3 = v2;
    if (!v2 || [(__CFString *)v2 isEqualToString:&stru_282B650A0])
    {

      v3 = @"UNKNOWN";
    }
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v4 setObject:*(a1 + 32) forKeyedSubscript:@"procname"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 40) + 24)];
  [v4 setObject:v5 forKeyedSubscript:@"time_to_relaunch_ms"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 40) + 51)];
  [v4 setObject:v6 forKeyedSubscript:@"launch_reason"];

  [v4 setObject:v3 forKeyedSubscript:@"launch_instigating_process"];
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ProcessRelaunchTime: processName %@'s statistics: %@", &v10, 0x16u);
  }

  return v4;
}

id __99__PLProcessMonitorAgent_logEventPointProcessExit_excludeProcesses_withStats_withDate_withNowInSec___block_invoke_593(uint64_t a1)
{
  v2 = [MEMORY[0x277D3F258] intervalPeakCADictionaryForLaunchdName:*(a1 + 32) intervalMaxKB:*(*(a1 + 40) + 41)];
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
  v22 = *MEMORY[0x277D85DE8];
  [(PLProcessMonitorAgent *)self logProcessExit];
  v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [monotonicDate dateByAddingTimeInterval:-3600.0];
  v6 = MEMORY[0x277CCACA8];
  [v5 timeIntervalSince1970];
  v8 = v7;
  [monotonicDate timeIntervalSince1970];
  v10 = [v6 stringWithFormat:@"SELECT ID, %@, %@, %@, timestamp from %@ WHERE timestamp > %f AND timestamp <= %f", @"ProcessName", @"ReasonNamespace", @"ReasonCode", v3, v8, v9];
  v11 = PLLogProcessMonitor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v10;
    _os_log_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_INFO, "LastHourKills Query is %@", buf, 0xCu);
  }

  v12 = objc_msgSend_storage(self);
  connection = [v12 connection];
  v14 = [connection performQuery:v10];

  v15 = PLLogProcessMonitor();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v14 count];
    *buf = 134218242;
    v19 = v16;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_INFO, "LastHourKills Result Count is %lu and result %@", buf, 0x16u);
  }

  return v14;
}

- (id)getProcessExits:(id)exits
{
  v38 = *MEMORY[0x277D85DE8];
  exitsCopy = exits;
  v5 = exitsCopy;
  if (!exitsCopy)
  {
    v26 = PLLogProcessMonitor();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v27 = 0;
      goto LABEL_14;
    }

    *buf = 0;
    v28 = "Nil payload sent to query";
    v29 = v26;
    v30 = 2;
LABEL_18:
    _os_log_error_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
    goto LABEL_13;
  }

  v6 = [exitsCopy objectForKeyedSubscript:@"lastNHours"];
  longLongValue = [v6 longLongValue];

  v8 = [v5 objectForKeyedSubscript:@"ReasonCode"];
  longLongValue2 = [v8 longLongValue];

  v10 = [v5 objectForKeyedSubscript:@"ReasonNamespace"];
  longLongValue3 = [v10 longLongValue];

  if (longLongValue > 0x18 || longLongValue2 < 0 || longLongValue3 < 0)
  {
    v26 = PLLogProcessMonitor();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 134218496;
    v33 = longLongValue;
    v34 = 2048;
    v35 = longLongValue2;
    v36 = 2048;
    v37 = longLongValue3;
    v28 = "Invalid payload sent to query lastNHours %lld reasonCode %lld reasonNamespace %lld";
    v29 = v26;
    v30 = 32;
    goto LABEL_18;
  }

  v12 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v14 = [monotonicDate dateByAddingTimeInterval:longLongValue * -3600.0];
  v15 = MEMORY[0x277CCACA8];
  [v14 timeIntervalSince1970];
  v17 = v16;
  [monotonicDate timeIntervalSince1970];
  v19 = [v15 stringWithFormat:@"SELECT %@ as LaunchdName, SUM(0s-5s + 10s-60s + 5s-10s + 60s+ + UnknownDuration) as count from %@ WHERE %@ = %lld AND %@ = %lld AND timestamp > %f AND timestamp <= %f GROUP BY %@", @"ProcessName", v12, @"ReasonNamespace", longLongValue3, @"ReasonCode", longLongValue2, v17, v18, @"ProcessName"];;
  v20 = PLLogProcessMonitor();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = v19;
    _os_log_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_INFO, "MemoryKills Query is %@", buf, 0xCu);
  }

  v21 = objc_msgSend_storage(self);
  connection = [v21 connection];
  v23 = [connection performQuery:v19];

  v24 = PLLogProcessMonitor();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v23 count];
    *buf = 134218242;
    v33 = v25;
    v34 = 2112;
    v35 = v23;
    _os_log_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_INFO, "MemoryKills Result Count is %lu and result %@", buf, 0x16u);
  }

  v26 = v23;
  v27 = v26;
LABEL_14:

  return v27;
}

- (void)logEventPointSystemFreezerStats
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v32 = 0;
  v33 = 4;
  v31 = 8;
  v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SystemFreezerStats"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  v5 = MEMORY[0x277CCABB0];
  if (sysctlbyname("kern.memorystatus_freeze_budget_pages_remaining", &v32, &v31, 0, 0))
  {
    v6 = -1;
  }

  else
  {
    v6 = v32;
  }

  v7 = [v5 numberWithUnsignedLongLong:v6];
  [v4 setObject:v7 forKeyedSubscript:@"RemainingPages"];

  v8 = MEMORY[0x277CCABB0];
  if (sysctlbyname("kern.memorystatus_thaw_count", &v34, &v33, 0, 0))
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v34;
  }

  v10 = [v8 numberWithUnsignedInt:v9];
  [v4 setObject:v10 forKeyedSubscript:@"ThawCount"];

  v11 = MEMORY[0x277CCABB0];
  if (sysctlbyname("kern.memorystatus_freezer_thaw_percentage", &v32, &v31, 0, 0))
  {
    v12 = -1;
  }

  else
  {
    v12 = v32;
  }

  v13 = [v11 numberWithUnsignedLongLong:v12];
  [v4 setObject:v13 forKeyedSubscript:@"ThawPercentage"];

  v14 = sysctlbyname("kern.memorystatus_freeze_pageouts", &v32, &v31, 0, 0);
  v15 = v32;
  if (v14)
  {
    v15 = -1;
  }

  if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [v4 setObject:&unk_282C11B80 forKeyedSubscript:@"ThawsPerGB"];
  }

  else
  {
    v16 = vcvtd_n_f64_u64(*MEMORY[0x277D85F80] * v15, 0x1EuLL);
    v17 = MEMORY[0x277CCABB0];
    v18 = sysctlbyname("kern.memorystatus_thaw_count_since_boot", &v32, &v31, 0, 0);
    v19 = v32;
    if (v18)
    {
      v19 = 1.84467441e19;
    }

    v20 = [v17 numberWithDouble:v19 / v16];
    [v4 setObject:v20 forKeyedSubscript:@"ThawsPerGB"];
  }

  if (sysctlbyname("kern.memorystatus_freezer_refreeze_count", &v32, &v31, 0, 0))
  {
    v21 = -1;
  }

  else
  {
    v21 = v32;
  }

  if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    [v4 setObject:&unk_282C11B80 forKeyedSubscript:@"RefreezeAvgBytes"];
  }

  else
  {
    v22 = sysctlbyname("kern.memorystatus_freezer_bytes_refrozen", &v32, &v31, 0, 0);
    v23 = v32;
    if (v22)
    {
      v23 = -1;
    }

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23 / v21];
    [v4 setObject:v24 forKeyedSubscript:@"RefreezeAvgBytes"];
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 32;
  if (!sysctlbyname("vm.swapusage", &v29, &v28, 0, 0))
  {
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
    [v4 setObject:v25 forKeyedSubscript:@"SwapUsed"];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29];
    [v4 setObject:v26 forKeyedSubscript:@"SwapTotal"];
  }

  v27 = PLLogProcessMonitor();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "Entry for System Freezer Stats : %@", buf, 0xCu);
  }

  [(PLOperator *)self logEntry:v4];
}

- (void)logEventPointFreezerStats
{
  v42 = *MEMORY[0x277D85DE8];
  getFrozenProcesses = [(PLProcessMonitorAgent *)self getFrozenProcesses];
  v4 = getFrozenProcesses;
  if (getFrozenProcesses && [getFrozenProcesses count])
  {
    allKeys = [v4 allKeys];
    v6 = [allKeys objectAtIndexedSubscript:0];
    v7 = -[PLProcessMonitorAgent getFrozenToSwapLedgerIndex:](self, "getFrozenToSwapLedgerIndex:", [v6 intValue]);

    if (v7 == -1)
    {
      v10 = PLLogProcessMonitor();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = @"frozen_to_swap";
        _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "Ledger does not have key %@", buf, 0xCu);
      }
    }

    else
    {
      v8 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"FreezerStats"];
      v9 = objc_opt_new();
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __50__PLProcessMonitorAgent_logEventPointFreezerStats__block_invoke;
      v33 = &unk_27825EA40;
      selfCopy = self;
      v37 = v7;
      v10 = v8;
      v35 = v10;
      v11 = v9;
      v36 = v11;
      [v4 enumerateKeysAndObjectsUsingBlock:&v30];
      if ([v11 count])
      {
        v38 = v10;
        v39 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        [(PLOperator *)self logEntries:v12 withGroupID:v10];
      }

      lastFreezerProcs = [(PLProcessMonitorAgent *)self lastFreezerProcs];

      if (lastFreezerProcs)
      {
        lastFreezerProcs2 = [(PLProcessMonitorAgent *)self lastFreezerProcs];
        v15 = [(PLProcessMonitorAgent *)self getProcessesNotInFreezer:lastFreezerProcs2 withCurrentProcesses:v4];
        [(PLProcessMonitorAgent *)self setDiffFreezerProcs:v15];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v16 = objc_opt_class();
          block = MEMORY[0x277D85DD0];
          v26 = 3221225472;
          v27 = __50__PLProcessMonitorAgent_logEventPointFreezerStats__block_invoke_2;
          v28 = &__block_descriptor_40_e5_v8__0lu32l8;
          v29 = v16;
          if (qword_2811F4E60 != -1)
          {
            dispatch_once(&qword_2811F4E60, &block);
          }

          if (byte_2811F4DAD == 1)
          {
            v17 = MEMORY[0x277CCACA8];
            diffFreezerProcs = [(PLProcessMonitorAgent *)self diffFreezerProcs];
            v19 = [v17 stringWithFormat:@"Processes that moved out of freezer %@", diffFreezerProcs, block, v26, v27, v28, v29, v30, v31, v32, v33, selfCopy, v35];

            v20 = MEMORY[0x277D3F178];
            v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
            lastPathComponent = [v21 lastPathComponent];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointFreezerStats]"];
            [v20 logMessage:v19 fromFile:lastPathComponent fromFunction:v23 fromLineNumber:1499];

            v24 = PLLogCommon();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v41 = v19;
              _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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

    v12 = [MEMORY[0x277D3F258] bundleIDFromPid:v5];
    [v7 setObject:v12 forKeyedSubscript:@"BundleID"];

    v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 40) withRawData:v7];
    [*(a1 + 48) addObject:v13];
  }
}

void *__50__PLProcessMonitorAgent_logEventPointFreezerStats__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DAD = result;
  return result;
}

- (void)logEventPointFreezerDemotion
{
  v23 = *MEMORY[0x277D85DE8];
  diffFreezerProcs = [(PLProcessMonitorAgent *)self diffFreezerProcs];

  if (diffFreezerProcs)
  {
    v4 = objc_opt_new();
    v5 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"FreezerDemotion"];
    diffFreezerProcs2 = [(PLProcessMonitorAgent *)self diffFreezerProcs];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke_642;
    v15[3] = &unk_27825EA68;
    v7 = v5;
    v16 = v7;
    v8 = v4;
    v17 = v8;
    [diffFreezerProcs2 enumerateKeysAndObjectsUsingBlock:v15];

    if ([v8 count])
    {
      v19 = v7;
      v20 = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
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
    if (qword_2811F4E68 != -1)
    {
      dispatch_once(&qword_2811F4E68, block);
    }

    if (byte_2811F4DAE == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"No processes were evicted out of freezer"];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointFreezerDemotion]"];
      [v11 logMessage:v8 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:1508];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_5;
    }
  }
}

void *__53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DAE = result;
  return result;
}

void __53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke_642(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 intValue];
  if (![MEMORY[0x277D3F258] getJetsamPriority:v5])
  {
    v6 = objc_opt_new();
    [v6 setObject:v10 forKeyedSubscript:@"ProcessName"];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [v6 setObject:v7 forKeyedSubscript:@"PID"];

    v8 = [MEMORY[0x277D3F258] bundleIDFromPid:v5];
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
  v6 = [MEMORY[0x277D3F258] processNameForPid:v3];
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
    v18 = &unk_27825EA90;
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
    v18 = &unk_27825EA90;
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
  v23 = *MEMORY[0x277D85DE8];
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
      v8 = proc_listpids(1u, 0, v7, v4);
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      v10 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppNapEnabled"];
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

        v13 = v7;
        do
        {
          v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withDate:monotonicDate];
          v16 = *v13++;
          v15 = v16;
          if (v16 >= 1)
          {
            memset(buffer, 0, sizeof(buffer));
            if (proc_pidinfo(v15, 18, 0, buffer, 192) == 192 && DWORD1(buffer[0]) != 5 && (BYTE2(buffer[0]) & 0x80) != 0)
            {
              v17 = [MEMORY[0x277CCABB0] numberWithInt:v15];
              [v14 setObject:v17 forKeyedSubscript:@"PID"];

              [v11 addObject:v14];
            }
          }

          --v12;
        }

        while (v12);
      }

      if ([v11 count])
      {
        v20 = v10;
        v21 = v11;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        [(PLOperator *)selfCopy logEntries:v18 withGroupID:v10];
      }

      free(v7);
    }

    else
    {
      monotonicDate = PLLogProcessMonitor();
      if (os_log_type_enabled(monotonicDate, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buffer[0]) = 0;
        _os_log_error_impl(&dword_21A4C6000, monotonicDate, OS_LOG_TYPE_ERROR, "Not enough memory to log AppNap Enabled, returning.", buffer, 2u);
      }
    }
  }
}

- (id)getJetsamSnapshotEntries:(jetsam_snapshot *)entries
{
  v14 = *MEMORY[0x277D85DE8];
  if (entries)
  {
    v5 = objc_opt_new();
    if (entries->var4)
    {
      v6 = 0;
      var1 = entries->var5[0].var1;
      do
      {
        v8 = [(PLProcessMonitorAgent *)self getProcessName:var1];
        if (v8)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(var1 + 204)];
          [v5 setObject:v9 forKeyedSubscript:v8];
        }

        ++v6;
        var1 += 288;
      }

      while (entries->var4 > v6);
    }

    v10 = PLLogProcessMonitor();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "getJSEIdleTime: memoryJetsamEntries %@", &v12, 0xCu);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchSnapshotWithFlags:(unsigned int)flags
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = memorystatus_control();
  if ((v4 & 0x80000000) != 0)
  {
    v7 = PLLogProcessMonitor();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v11 = __error();
    v12 = strerror(*v11);
    v27 = 136315138;
    *v28 = v12;
    v8 = "memorystatus_control(MEMORYSTATUS_CMD_GET_JETSAM_SNAPSHOT) failed: %s";
LABEL_18:
    v9 = v7;
    v10 = 12;
    goto LABEL_19;
  }

  v5 = v4;
  if (!v4)
  {
    v7 = PLLogProcessMonitor();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v20 = __error();
    v21 = strerror(*v20);
    v27 = 136315138;
    *v28 = v21;
    v8 = "kernel returned (0) from memorystatus_control(MEMORYSTATUS_CMD_GET_JETSAM_SNAPSHOT) -- no jetsam data available %s";
    goto LABEL_18;
  }

  v6 = v4;
  if (v4 >= 0xC9 && __ROR8__(0x8E38E38E38E38E39 * (v4 - 200), 5) >= 0xE38E38E38E38E4uLL)
  {
    v7 = PLLogProcessMonitor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v27 = 134218240;
      *v28 = v5 - 200;
      *&v28[8] = 2048;
      *&v28[10] = 288;
      v8 = "memorystatus_control gave snapshot size (%lu) not multiple of jetsam entry type (%lu)";
      v9 = v7;
      v10 = 22;
LABEL_19:
      _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, v8, &v27, v10);
    }

LABEL_21:

LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v13 = malloc_type_malloc(v4, 0xBEEDDA51uLL);
  if (!v13)
  {
    v7 = PLLogProcessMonitor();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v27 = 67109120;
    *v28 = v5;
    v8 = "unable to allocate %d bytes for jetsam snapshot";
    v9 = v7;
    v10 = 8;
    goto LABEL_19;
  }

  v14 = v13;
  v15 = memorystatus_control();
  if (v15 != v5)
  {
    v23 = v15;
    v24 = PLLogProcessMonitor();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = __error();
      v26 = strerror(*v25);
      v27 = 67109378;
      *v28 = v23;
      *&v28[4] = 2080;
      *&v28[6] = v26;
      _os_log_error_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_ERROR, "memorystatus_control returned unexpected value - %d: %s", &v27, 0x12u);
    }

    free(v14);
    goto LABEL_22;
  }

  v16 = (v5 - 200) / 0x120;
  if (v16 < v14[24])
  {
    v17 = PLLogProcessMonitor();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v14[24];
      v27 = 134218240;
      *v28 = (v6 - 200) / 0x120uLL;
      *&v28[8] = 2048;
      *&v28[10] = v18;
      _os_log_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_INFO, "Got fewer jetsam entries from the kernel; received %zu, expected %zu", &v27, 0x16u);
    }

    v14[24] = v16;
  }

  v19 = [(PLProcessMonitorAgent *)self getJetsamSnapshotEntries:v14];
  free(v14);
LABEL_23:

  return v19;
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
  v7 = *MEMORY[0x277D85DE8];
  v2 = [(PLProcessMonitorAgent *)self fetchSnapshotWithFlags:0];
  v3 = PLLogProcessMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "getJSEIdleTime: memoryJetsamEntries %@", &v5, 0xCu);
  }

  return v2;
}

- (void)logProcDirtyStats
{
  v39 = *MEMORY[0x277D85DE8];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v4 = [_reportProcDirtyStatsAfterTime compare:monotonicDate];
  getJSEIdleTime = PLLogCommon();
  v6 = os_log_type_enabled(getJSEIdleTime, OS_LOG_TYPE_DEBUG);
  if (v4 != -1)
  {
    if (v6)
    {
      LODWORD(buffer[0]) = 138412546;
      *(buffer + 4) = monotonicDate;
      WORD6(buffer[0]) = 2112;
      *(buffer + 14) = _reportProcDirtyStatsAfterTime;
      _os_log_debug_impl(&dword_21A4C6000, getJSEIdleTime, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: Should Not Log to CoreAnalytics (current_time=%@ is not greater than report_stats_time=%@)", buffer, 0x16u);
    }

    goto LABEL_4;
  }

  if (v6)
  {
    LODWORD(buffer[0]) = 138412546;
    *(buffer + 4) = monotonicDate;
    WORD6(buffer[0]) = 2112;
    *(buffer + 14) = _reportProcDirtyStatsAfterTime;
    _os_log_debug_impl(&dword_21A4C6000, getJSEIdleTime, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: Should Log to CoreAnalytics (current_time=%@ is greater than report_stats_time=%@)", buffer, 0x16u);
  }

  monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
  v8 = [monotonicDate2 dateByAddingTimeInterval:arc4random_uniform(0x15180u)];
  v9 = _reportProcDirtyStatsAfterTime;
  _reportProcDirtyStatsAfterTime = v8;

  getJSEIdleTime = [(PLProcessMonitorAgent *)self getJSEIdleTime];
  v10 = proc_listpids(1u, 0, 0, 0);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = v10;
    v12 = v10;
    v13 = malloc_type_malloc(v10, 0x100004052888210uLL);
    if (v13)
    {
      v14 = v13;
      memset(v13, 255, v12);
      v15 = proc_listpids(1u, 0, v14, v11);
      if (v15 < 4)
      {
        goto LABEL_10;
      }

      if (v15 >> 2 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15 >> 2;
      }

      v17 = 0x277D3F000uLL;
      v18 = v14;
      v29 = v14;
      while (1)
      {
        v20 = *v18++;
        v19 = v20;
        if (v20 < 1)
        {
          goto LABEL_36;
        }

        memset(buffer, 0, sizeof(buffer));
        if (proc_pidinfo(v19, 18, 0, buffer, 192) != 192 || DWORD1(buffer[0]) == 5)
        {
          goto LABEL_36;
        }

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v32[0]) = 67109120;
          HIDWORD(v32[0]) = v19;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: pid %d is not corpse, check if it is daemon", v32, 8u);
        }

        if (![*(v17 + 600) isDaemonOrAppleXPCService:v19])
        {
          goto LABEL_36;
        }

        v22 = [(PLProcessMonitorAgent *)self getProcDirtyTimeLedgerIndex:v19];
        if (v22 == -1)
        {
          v28 = PLLogProcessMonitor();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v32[0]) = 138412290;
            *(v32 + 4) = @"memorystatus_dirty_time";
            _os_log_error_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_ERROR, "Ledger does not have key %@", v32, 0xCu);
          }

LABEL_10:
          free(v14);
          goto LABEL_4;
        }

        v23 = [(PLProcessMonitorAgent *)self ledgerDataAtIndex:v22 forPid:v19];
        v24 = v23;
        if (!v23)
        {
          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v32[0]) = 0;
            _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: Error getting process dirty via ledger", v32, 2u);
          }

          goto LABEL_35;
        }

        [v23 balance];
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        *v32 = 0u;
        v33 = 0u;
        if (proc_pid_rusage(v19, 0, v32))
        {
          break;
        }

        [*(v17 + 600) secondsFromMachTime:mach_absolute_time() - v37];
        if (v27 <= 0.0)
        {
          v25 = PLLogCommon();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: Error encouncetered due to process lifetime <= 0", buf, 2u);
          }

          goto LABEL_33;
        }

LABEL_34:
        v14 = v29;
LABEL_35:
        v30 = getJSEIdleTime;
        AnalyticsSendEventLazy();

        v17 = 0x277D3F000;
LABEL_36:
        if (!--v16)
        {
          goto LABEL_10;
        }
      }

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: Error getting lifetime via rusage", buf, 2u);
      }

LABEL_33:

      goto LABEL_34;
    }
  }

LABEL_4:
}

id __42__PLProcessMonitorAgent_logProcDirtyStats__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277D3F258] binaryPathForPid:*(a1 + 56)];
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

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 56);
    v17[0] = 67109378;
    v17[1] = v16;
    v18 = 2112;
    v19 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: pid %d's statistics: %@", v17, 0x12u);
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
  v58 = *MEMORY[0x277D85DE8];
  histogramCopy = histogram;
  dateCopy = date;
  context = objc_autoreleasePoolPush();
  v42 = objc_opt_new();
  v45 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = histogramCopy;
  v40 = dateCopy;
  v43 = v9;
  v46 = [v9 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v46)
  {
    v44 = *v50;
    do
    {
      v10 = 0;
      do
      {
        if (*v50 != v44)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v49 + 1) + 8 * v10);
        v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v45 withDate:dateCopy];
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

          [v42 addObject:v12];
LABEL_10:
          v9 = v43;
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
          if (qword_2811F4E70 != -1)
          {
            dispatch_once(&qword_2811F4E70, block);
          }

          if (byte_2811F4DAF == 1)
          {
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: process exit buffer label index out of range."];
            v26 = MEMORY[0x277D3F178];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
            lastPathComponent = [v27 lastPathComponent];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventBackwardProcessExitHistogram:withStats:withDate:]"];
            [v26 logMessage:v25 fromFile:lastPathComponent fromFunction:v29 fromLineNumber:1824];

            v30 = PLLogCommon();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v56 = v25;
              _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            dateCopy = v40;
            goto LABEL_10;
          }
        }

LABEL_18:

        ++v10;
      }

      while (v46 != v10);
      v46 = [v9 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v46);
  }

  if ([v42 count])
  {
    v53 = v45;
    v54 = v42;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    [(PLOperator *)self logEntries:v31 withGroupID:v45];
  }

  self->_processExitSummaryCount += [v42 count];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __81__PLProcessMonitorAgent_logEventBackwardProcessExitHistogram_withStats_withDate___block_invoke_682;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v32;
    if (qword_2811F4E78 != -1)
    {
      dispatch_once(&qword_2811F4E78, v47);
    }

    if (byte_2811F4DB0 == 1)
    {
      context = [MEMORY[0x277CCACA8] stringWithFormat:@"processExitSummaryCount = %d\n", self->_processExitSummaryCount, context];
      v34 = MEMORY[0x277D3F178];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent2 = [v35 lastPathComponent];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventBackwardProcessExitHistogram:withStats:withDate:]"];
      [v34 logMessage:context fromFile:lastPathComponent2 fromFunction:v37 fromLineNumber:1849];

      v38 = PLLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v56 = context;
        _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      dateCopy = v40;
      v9 = v43;
    }
  }

  objc_autoreleasePoolPop(context);
}

void *__81__PLProcessMonitorAgent_logEventBackwardProcessExitHistogram_withStats_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DAF = result;
  return result;
}

void *__81__PLProcessMonitorAgent_logEventBackwardProcessExitHistogram_withStats_withDate___block_invoke_682(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DB0 = result;
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

  v6 = [MEMORY[0x277D3F258] bundleIDFromPid:v3];
  v7 = [MEMORY[0x277D3F258] pUUIDForPid:v3];
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

- (int)get_kthread_list:(unint64_t *)get_kthread_list
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  memset(buffer, 0, sizeof(buffer));
  proc_pidinfo(0, 4, 0, buffer, 96);
  v4 = DWORD1(v23);
  v5 = 8 * SDWORD1(v23);
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

        v17 = v8;
        v18 = v7;
        v19 = 4293379919;
      }

      else
      {
        v17 = v8;
        v18 = v7;
        v19 = 2272517343;
      }

      *get_kthread_list = malloc_type_realloc(v18, v17, v19);
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
      if (qword_2811F4E80 != -1)
      {
        dispatch_once(&qword_2811F4E80, block);
      }

      if (byte_2811F4DB1 == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"proc_pidinfo(PROC_PIDLISTTHREADIDS) failed"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent get_kthread_list:]"];
        [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1953];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
  byte_2811F4DB1 = result;
  return result;
}

void *__58__PLProcessMonitorAgent_logEventIntervalKernelTaskMonitor__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DB2 = result;
  return result;
}

void *__58__PLProcessMonitorAgent_logEventIntervalKernelTaskMonitor__block_invoke_707(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DB3 = result;
  return result;
}

+ (unint64_t)PIDToCoalitionID:(int)d
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
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
    if (qword_2811F4E98 != -1)
    {
      dispatch_once(&qword_2811F4E98, block);
    }

    if (byte_2811F4DB4 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"proc_pidinfo(PROC_PIDCOALITIONINFO) failed\n"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLProcessMonitorAgent PIDToCoalitionID:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:2117];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  return -v5;
}

void *__42__PLProcessMonitorAgent_PIDToCoalitionID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DB4 = result;
  return result;
}

+ (BOOL)enableThreadStatsLogging
{
  if (qword_2811F4EA0 != -1)
  {
    dispatch_once(&qword_2811F4EA0, &__block_literal_global_716);
  }

  return byte_2811F4DB5;
}

void __49__PLProcessMonitorAgent_enableThreadStatsLogging__block_invoke()
{
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v0 = [MEMORY[0x277D3F180] BOOLForKey:@"PLThreadStats_Enabled" ifNotSet:0];
    byte_2811F4DB5 = v0;
    if (!v0)
    {
      return;
    }
  }

  else if ((byte_2811F4DB5 & 1) == 0)
  {
    return;
  }

  v1 = PLLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_21A4C6000, v1, OS_LOG_TYPE_INFO, "thread stats: enabled", v2, 2u);
  }
}

- (void)initializeThreadStatsLogging
{
  v13 = *MEMORY[0x277D85DE8];
  if (+[PLProcessMonitorAgent enableThreadStatsLogging])
  {
    v3 = objc_alloc(MEMORY[0x277D3F240]);
    v4 = *MEMORY[0x277D3F658];
    v5 = *MEMORY[0x277D3F650];
    v10 = 0;
    v6 = [v3 initWithTimeFilter:v5 withPercentFilter:0 withProcessThreadMapping:&v10 withError:v4];
    v7 = v10;
    [(PLProcessMonitorAgent *)self setThreadStats:v6];

    if (v7)
    {
      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "thread stats: error initializing: %@", buf, 0xCu);
      }

      [(PLProcessMonitorAgent *)self setThreadStats:0];
    }

    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_INFO, "thread stats: initialized", buf, 2u);
    }
  }
}

- (void)logThreadStats
{
  v23 = *MEMORY[0x277D85DE8];
  threadStats = [(PLProcessMonitorAgent *)self threadStats];

  if (threadStats)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v5 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ThreadStats"];
    threadStats2 = [(PLProcessMonitorAgent *)self threadStats];
    diffSinceLastSnapshot = [threadStats2 diffSinceLastSnapshot];

    array = [MEMORY[0x277CBEB18] array];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__PLProcessMonitorAgent_logThreadStats__block_invoke;
    v15[3] = &unk_27825EB08;
    v9 = v5;
    v16 = v9;
    v10 = monotonicDate;
    v17 = v10;
    v11 = array;
    v18 = v11;
    [diffSinceLastSnapshot enumerateKeysAndObjectsUsingBlock:v15];
    if ([v11 count])
    {
      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v11 count];
        *buf = 134217984;
        v22 = v13;
        _os_log_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_INFO, "thread stats: logging %lu entries", buf, 0xCu);
      }

      v19 = v9;
      v20 = v11;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [(PLOperator *)self logEntries:v14 withGroupID:v9];
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
    v10[3] = &unk_27825EAE0;
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
  v34 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  v5 = seriesCopy;
  if (seriesCopy && [seriesCopy count])
  {
    selfCopy = self;
    v6 = PLLogProcessMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Got payload for App Launch Signposts : %@", buf, 0xCu);
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
    v7 = PLLogProcessMonitor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Empty App Launch Payload", buf, 2u);
    }
  }
}

@end