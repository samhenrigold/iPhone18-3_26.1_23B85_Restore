@interface PLPowerAssertionAgent
+ (BOOL)shouldOptimizeSmallAssertions;
+ (id)entryEventForwardDefinitionAssertion;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointDefinitionAggregateReset;
+ (id)entryEventPointDefinitionBufferStatus;
+ (id)entryEventPointDefinitionSnapshotReason;
+ (id)entryEventPointDefinitionTimedOutProcesses;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)assertionSnapshotTimerActive;
- (PLPowerAssertionAgent)init;
- (id)assertTypeToEnumMapping;
- (id)bundleIDForAssertionProcessPID:(int)d;
- (id)sanitizeAssertionNameForEntry:(id)entry;
- (id)startEndActionsToEnumMapping;
- (void)checkAssertionBufferFullNotificationRate;
- (void)handleStateChange;
- (void)initOperatorDependancies;
- (void)logAggregatedAssertionActivity;
- (void)logAggregatedAssertionActivityPLDataStructure;
- (void)logEventForwardAssertion;
- (void)logEventForwardAssertionWithReason:(id)reason asSnapshot:(BOOL)snapshot;
- (void)logEventPointAggregateResetWithReason:(signed __int16)reason withPidCount:(int)count;
- (void)logInterval:(id)interval;
- (void)logSnapshot:(id)snapshot;
- (void)resetIOPMSetAssertionActivityAggregatePLDataStructureWithReason:(signed __int16)reason withPidCount:(int)count;
- (void)resetIOPMSetAssertionActivityAggregateWithReason:(signed __int16)reason withPidCount:(int)count;
- (void)setAssertionBufferFullNotificationActive:(BOOL)active withReason:(id)reason;
- (void)setAssertionSnapshotTimerActive:(BOOL)active;
- (void)updateDisplayState;
- (void)updateOptimizeSubSecondAssertions;
- (void)updatePluggedInState;
@end

@implementation PLPowerAssertionAgent

uint64_t __70__PLPowerAssertionAgent_logAggregatedAssertionActivityPLDataStructure__block_invoke(uint64_t a1, uint64_t a2)
{
  ChannelID = IOReportChannelGetChannelID();
  ValueAtIndex = IOReportArrayGetValueAtIndex();
  v5 = IOReportArrayGetValueAtIndex();
  v6 = IOReportArrayGetValueAtIndex();
  if (ValueAtIndex < 0 || v5 < 0 || v6 < 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else if (ValueAtIndex || v5 || v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:IOReportArrayGetValueAtIndex()];
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithInt:ChannelID];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  return 0;
}

- (void)logAggregatedAssertionActivityPLDataStructure
{
  v86 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v57 = IOPMCopyAssertionActivityAggregate();
    v58 = objc_opt_new();
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    if (v57)
    {
      v72 = MEMORY[0x277D85DD0];
      v73 = 3221225472;
      v74 = __70__PLPowerAssertionAgent_logAggregatedAssertionActivityPLDataStructure__block_invoke;
      v75 = &unk_27825B868;
      v77 = &v78;
      v76 = v58;
      IOReportIterate();
    }

    if (v58 && [v58 count])
    {
      assertionAggregatedLastSamplePLDataStructure = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
      v3 = [assertionAggregatedLastSamplePLDataStructure count] == 0;

      if (v3)
      {
        v59 = 0;
      }

      else
      {
        assertionAggregatedLastSamplePLDataStructure2 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
        v55 = [assertionAggregatedLastSamplePLDataStructure2 objectForKeyedSubscript:@"assertionAggregatedDate"];

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v5 = v58;
        v6 = [v5 countByEnumeratingWithState:&v68 objects:v85 count:16];
        if (v6)
        {
          v59 = 0;
          v7 = *v69;
          v8 = 0.0;
          do
          {
            v9 = 0;
            v59 += v6;
            do
            {
              if (*v69 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v68 + 1) + 8 * v9);
              v11 = [v5 objectForKeyedSubscript:v10];
              assertionAggregatedLastSamplePLDataStructure3 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
              v13 = [assertionAggregatedLastSamplePLDataStructure3 objectForKeyedSubscript:@"assertionAggregated"];
              v14 = [v13 objectForKeyedSubscript:v10];

              [v11 doubleValue];
              v16 = v15;
              [v14 doubleValue];
              v18 = v17;

              v8 = v8 + v16 - v18;
              ++v9;
            }

            while (v6 != v9);
            v6 = [v5 countByEnumeratingWithState:&v68 objects:v85 count:16];
          }

          while (v6);
        }

        else
        {
          v59 = 0;
          v8 = 0.0;
        }

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v21 = v5;
        v22 = [v21 countByEnumeratingWithState:&v64 objects:v84 count:16];
        if (v22)
        {
          v23 = *v65;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v65 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v64 + 1) + 8 * i);
              v26 = [v21 objectForKeyedSubscript:v25];
              assertionAggregatedLastSamplePLDataStructure4 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
              v28 = [assertionAggregatedLastSamplePLDataStructure4 objectForKeyedSubscript:@"assertionAggregated"];
              v29 = [v28 objectForKeyedSubscript:v25];

              if (v8 > 0.0)
              {
                [v26 doubleValue];
                v31 = v30;
                [v29 doubleValue];
                v33 = (v31 - v32) / v8;
                if (v33 > 0.05)
                {
                  v34 = -[PLPowerAssertionAgent bundleIDForAssertionProcessPID:](self, "bundleIDForAssertionProcessPID:", [v25 integerValue]);
                  v35 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
                  [dictionary setObject:v35 forKeyedSubscript:v34];
                }
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v64 objects:v84 count:16];
          }

          while (v22);
        }

        mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
        [mEMORY[0x277D3F0C0] createDistributionEventIntervalWithDistributionID:22 withChildNodeNameToWeight:dictionary withStartDate:v55 withEndDate:monotonicDate];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v37 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __70__PLPowerAssertionAgent_logAggregatedAssertionActivityPLDataStructure__block_invoke_2;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v37;
          if (qword_2811F42B0 != -1)
          {
            dispatch_once(&qword_2811F42B0, block);
          }

          if (byte_2811F417C == 1)
          {
            v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"+++++++++++++++++++++++++++++++++++++++++"];
            v39 = MEMORY[0x277D3F178];
            v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
            lastPathComponent = [v40 lastPathComponent];
            v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logAggregatedAssertionActivityPLDataStructure]"];
            [v39 logMessage:v38 fromFile:lastPathComponent fromFunction:v42 fromLineNumber:1234];

            v43 = PLLogCommon();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v83 = v38;
              _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v44 = objc_opt_class();
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __70__PLPowerAssertionAgent_logAggregatedAssertionActivityPLDataStructure__block_invoke_625;
          v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v62[4] = v44;
          if (qword_2811F42B8 != -1)
          {
            dispatch_once(&qword_2811F42B8, v62);
          }

          if (byte_2811F417D == 1)
          {
            v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Newlogging: start date: %@, end dat %@, accounting:%@", v55, monotonicDate, dictionary];
            v46 = MEMORY[0x277D3F178];
            v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
            lastPathComponent2 = [v47 lastPathComponent];
            v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logAggregatedAssertionActivityPLDataStructure]"];
            [v46 logMessage:v45 fromFile:lastPathComponent2 fromFunction:v49 fromLineNumber:1235];

            v50 = PLLogCommon();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v83 = v45;
              _os_log_debug_impl(&dword_21A4C6000, v50, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }
      }

      assertionAggregatedLastSamplePLDataStructure5 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
      [assertionAggregatedLastSamplePLDataStructure5 setObject:v58 forKeyedSubscript:@"assertionAggregated"];

      assertionAggregatedLastSamplePLDataStructure6 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
      [assertionAggregatedLastSamplePLDataStructure6 setObject:monotonicDate forKeyedSubscript:@"assertionAggregatedDate"];

      if ([(PLPowerAssertionAgent *)self aggregateMaxPIDCount]>= v59)
      {
        v53 = *(v79 + 6);
        aggregteZeroDeltaCount = [(PLPowerAssertionAgent *)self aggregteZeroDeltaCount];
        v19 = v59;
        if (aggregteZeroDeltaCount != (v59 == v53))
        {
          [(PLPowerAssertionAgent *)self logEventPointAggregateResetWithReason:0 withPidCount:?];
          goto LABEL_48;
        }

        v20 = 4;
      }

      else
      {
        v20 = 3;
        v19 = v59;
      }
    }

    else
    {
      v19 = 0;
      v20 = 1;
    }

    [(PLPowerAssertionAgent *)self resetIOPMSetAssertionActivityAggregatePLDataStructureWithReason:v20 withPidCount:v19];
LABEL_48:

    _Block_object_dispose(&v78, 8);
  }
}

uint64_t __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_185(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2_186;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (qword_2811F41A0 != -1)
    {
      dispatch_once(&qword_2811F41A0, block);
    }

    if (byte_2811F4162 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fired on Battery level"];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:399];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventForwardAssertionWithReason:&unk_282C106C8 asSnapshot:0];
  return [*(a1 + 32) logAggregatedAssertionActivityPLDataStructure];
}

uint64_t __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_190(uint64_t a1)
{
  [*(a1 + 32) setAssertionSnapshotTimerActive:1];
  v2 = *(a1 + 32);

  return [v2 setAssertionBufferFullNotificationActive:1 withReason:@"wake"];
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLPowerAssertionAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"SnapshotReason";
  entryEventPointDefinitionSnapshotReason = [self entryEventPointDefinitionSnapshotReason];
  v10[0] = entryEventPointDefinitionSnapshotReason;
  v9[1] = @"BufferStatus";
  entryEventPointDefinitionBufferStatus = [self entryEventPointDefinitionBufferStatus];
  v10[1] = entryEventPointDefinitionBufferStatus;
  v9[2] = @"AggregateReset";
  entryEventPointDefinitionAggregateReset = [self entryEventPointDefinitionAggregateReset];
  v10[2] = entryEventPointDefinitionAggregateReset;
  v9[3] = @"TimedOutProcesses";
  entryEventPointDefinitionTimedOutProcesses = [self entryEventPointDefinitionTimedOutProcesses];
  v10[3] = entryEventPointDefinitionTimedOutProcesses;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

+ (id)entryEventPointDefinitionAggregateReset
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_282C1BEA8;
  v14[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"PidCount";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"Reason";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventPointDefinitionTimedOutProcesses
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1BEA8;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"ProcessName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withProcessName];
  v10 = commonTypeDict_StringFormat_withProcessName;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"Assertion";
  entryEventForwardDefinitionAssertion = [self entryEventForwardDefinitionAssertion];
  v6[0] = entryEventForwardDefinitionAssertion;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventForwardDefinitionAssertion
{
  v37[2] = *MEMORY[0x277D85DE8];
  v36[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F498];
  v34[0] = *MEMORY[0x277D3F568];
  v34[1] = v2;
  v35[0] = &unk_282C1BEB8;
  v35[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4A0];
  v34[2] = *MEMORY[0x277D3F4D8];
  v34[3] = v3;
  v35[2] = MEMORY[0x277CBEC38];
  v35[3] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
  v37[0] = v29;
  v36[1] = *MEMORY[0x277D3F540];
  v32[0] = @"Action";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v33[0] = commonTypeDict_IntegerFormat;
  v32[1] = @"timestampActionOffset";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v33[1] = commonTypeDict_IntegerFormat2;
  v32[2] = @"GlobalUniqueID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v33[2] = commonTypeDict_IntegerFormat3;
  v32[3] = @"pid";
  v4 = *MEMORY[0x277D3F538];
  v30[0] = *MEMORY[0x277D3F5A8];
  v30[1] = v4;
  v31[0] = &unk_282C106B0;
  v31[1] = &unk_282C140B8;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v33[3] = v22;
  v32[4] = @"AssertName";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v33[4] = commonTypeDict_StringFormat;
  v32[5] = @"AssertType";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v33[5] = commonTypeDict_IntegerFormat4;
  v32[6] = @"AssertionOnBehalfOfPID";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v33[6] = commonTypeDict_IntegerFormat5;
  v32[7] = @"GlobalUniqueIDReference";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v33[7] = commonTypeDict_IntegerFormat6;
  v32[8] = @"FrameworkBundleID";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat_withBundleID];
  v33[8] = commonTypeDict_StringFormat_withBundleID;
  v32[9] = @"InstanceMetadata";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v33[9] = commonTypeDict_StringFormat2;
  v32[10] = @"Category";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v33[10] = commonTypeDict_IntegerFormat7;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:11];
  v37[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

  return v14;
}

+ (id)entryEventPointDefinitionSnapshotReason
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1BEB8;
  v12[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Reason";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventPointDefinitionBufferStatus
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_282C1BEB8;
  v14[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"Reason";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"TotalCount";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

- (PLPowerAssertionAgent)init
{
  v14.receiver = self;
  v14.super_class = PLPowerAssertionAgent;
  v2 = [(PLAgent *)&v14 init];
  v3 = v2;
  if (v2)
  {
    assertionBufferFullNotificationRearmTimer = v2->_assertionBufferFullNotificationRearmTimer;
    v2->_assertionBufferFullNotificationRearmTimer = 0;

    v3->_assertionBufferFullNotificationActive = 0;
    v5 = objc_opt_new();
    assertionBufferNotificationTracking = v3->_assertionBufferNotificationTracking;
    v3->_assertionBufferNotificationTracking = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionUUIDCache = v3->_assertionUUIDCache;
    v3->_assertionUUIDCache = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    UUIDStartEntryCache = v3->_UUIDStartEntryCache;
    v3->_UUIDStartEntryCache = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    subSecondUUIDStartEntryCache = v3->_subSecondUUIDStartEntryCache;
    v3->_subSecondUUIDStartEntryCache = v11;

    v3->_gameMode = 0;
    v3->_displayOn = 0;
    v3->_pluggedIn = 0;
    v3->_optimizesSubSecondAssertions = 0;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v62 = *MEMORY[0x277D85DE8];
  startEndActionsToEnumMapping = [(PLPowerAssertionAgent *)self startEndActionsToEnumMapping];
  startEndActionsToEnum = self->_startEndActionsToEnum;
  self->_startEndActionsToEnum = startEndActionsToEnumMapping;

  assertTypeToEnumMapping = [(PLPowerAssertionAgent *)self assertTypeToEnumMapping];
  assertTypeToEnum = self->_assertTypeToEnum;
  self->_assertTypeToEnum = assertTypeToEnumMapping;

  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_282C106C8, &unk_282C106E0, &unk_282C106F8, &unk_282C10710, 0}];
  logAssertNameForActions = self->_logAssertNameForActions;
  self->_logAssertNameForActions = v7;

  v9 = objc_opt_new();
  assertionAggregatedLastSamplePLDataStructure = self->_assertionAggregatedLastSamplePLDataStructure;
  self->_assertionAggregatedLastSamplePLDataStructure = v9;

  v11 = objc_opt_new();
  assertionAggregatedLastSample = self->_assertionAggregatedLastSample;
  self->_assertionAggregatedLastSample = v11;

  [(PLPowerAssertionAgent *)self resetIOPMSetAssertionActivityAggregateWithReason:1 withPidCount:0];
  self->_firstBufferDrain = 1;
  self->_lastActivityOverflow = 0;
  v13 = IOPMSetAssertionActivityLog();
  [(PLOperator *)self defaultDoubleForKey:@"AggregateAssertionResetTime"];
  v15 = v14;
  v16 = objc_alloc(MEMORY[0x277D3F250]);
  v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v15];
  workQueue = [(PLOperator *)self workQueue];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke;
  v59[3] = &unk_278259C40;
  v59[4] = self;
  v19 = [v16 initWithFireDate:v17 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v59 withQueue:v15 withBlock:0.0];
  [(PLPowerAssertionAgent *)self setRunQueryTimer:v19];

  if ([(PLOperator *)self isDebugEnabled])
  {
    if (v13)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"******  ERROR ********* 0x%x", v13];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      lastPathComponent = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]"];
      [v21 logMessage:v20 fromFile:lastPathComponent fromFunction:v24 fromLineNumber:363];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v61 = v20;
LABEL_15:
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"We have assertion Activity logging"];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      lastPathComponent2 = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]"];
      [v26 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:365];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v61 = v20;
        goto LABEL_15;
      }
    }
  }

  if ([(PLOperator *)self defaultBoolForKey:@"AnyChange"])
  {
    v30 = objc_opt_new();
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_154;
    v58[3] = &unk_2782597E8;
    v58[4] = self;
    v31 = [v30 initWithOperator:self forNotification:@"com.apple.system.powermanagement.assertions.anychange" requireState:0 withBlock:v58];
    [(PLPowerAssertionAgent *)self setAssertionNotification:v31];

    IOPMAssertionNotify();
  }

  v32 = objc_alloc(MEMORY[0x277D3F160]);
  v33 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_165;
  v57[3] = &unk_2782597E8;
  v57[4] = self;
  v34 = [v32 initWithWorkQueue:v33 forNotification:@"com.apple.powerlogd.flushAssertionBuffer" requireState:0 withBlock:v57];

  [(PLPowerAssertionAgent *)self setFlushAssertionBufferCFNotification:v34];
  v35 = objc_opt_new();
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_176;
  v56[3] = &unk_2782597E8;
  v56[4] = self;
  v36 = [v35 initWithOperator:self forNotification:@"com.apple.powermanagement.assertions.logHighWM" requireState:0 withBlock:v56];
  [(PLPowerAssertionAgent *)self setAssertionBufferFullNotification:v36];

  [(PLPowerAssertionAgent *)self setAssertionBufferFullNotificationActive:1 withReason:@"init"];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_185;
  v55[3] = &unk_2782597E8;
  v55[4] = self;
  v37 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v55];
  [(PLPowerAssertionAgent *)self setBatteryLevelNotificiations:v37];

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_190;
  v54[3] = &unk_2782597E8;
  v54[4] = self;
  v38 = [MEMORY[0x277D3F1A8] wakeEntryNotificationWithOperator:self withBlock:v54];
  [(PLPowerAssertionAgent *)self setWakeNotification:v38];

  [(PLPowerAssertionAgent *)self setAssertionSnapshotTimerActive:1];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2_194;
  v53[3] = &unk_2782597E8;
  v53[4] = self;
  v39 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v53];
  [(PLPowerAssertionAgent *)self setCanSleepNotification:v39];

  v40 = objc_alloc(MEMORY[0x277D3F1F0]);
  v41 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v42 = *MEMORY[0x277CBE580];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_3;
  v52[3] = &unk_2782597E8;
  v52[4] = self;
  v43 = [v40 initWithWorkQueue:v41 forNotification:v42 withBlock:v52];

  [(PLPowerAssertionAgent *)self setDailyTaskNotification:v43];
  self->_aggregateMaxPIDCount = [(PLOperator *)self defaultLongForKey:@"AggregateMaxPidCount"];
  self->_aggregteZeroDeltaCount = [(PLOperator *)self defaultLongForKey:@"AggregateZeroDeltaCount"];
  if (_os_feature_enabled_impl())
  {
    v44 = PLLogAssertion();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v44, OS_LOG_TYPE_INFO, "enableSubSecondAssertionOptimization is enabled", buf, 2u);
    }

    v45 = objc_alloc(MEMORY[0x277D3F1F0]);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_209;
    v51[3] = &unk_2782597E8;
    v51[4] = self;
    v46 = [v45 initWithOperator:self forNotification:@"PLGameModeNotification" withBlock:v51];
    consoleModeListener = self->_consoleModeListener;
    self->_consoleModeListener = v46;

    mEMORY[0x277D3F220] = [MEMORY[0x277D3F220] sharedInstance];
    [(PLPowerAssertionAgent *)self setStateTracker:mEMORY[0x277D3F220]];

    stateTracker = [(PLPowerAssertionAgent *)self stateTracker];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_214;
    v50[3] = &unk_2782591D0;
    v50[4] = self;
    [stateTracker registerForStates:5 withOperator:self withBlock:v50];
  }
}

uint64_t __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_154(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (qword_2811F4190 != -1)
    {
      dispatch_once(&qword_2811F4190, block);
    }

    if (_MergedGlobals_1_18 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"assertion notification handler"];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:371];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  return [*(a1 + 32) logEventForwardAssertionWithReason:&unk_282C106E0 asSnapshot:0];
}

void *__49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_18 = result;
  return result;
}

void __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_165(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) logInterval:&unk_282C10728];
  if (([*(a1 + 32) lastActivityOverflow] & 1) == 0)
  {
    [*(a1 + 32) logSnapshot:&unk_282C10740];
  }

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Flushing the assertion buffer"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]_block_invoke"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:385];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v8, 0xCu);
  }
}

uint64_t __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_176(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2_177;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (qword_2811F4198 != -1)
    {
      dispatch_once(&qword_2811F4198, block);
    }

    if (byte_2811F4161 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"assertion buffer notification handler"];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:391];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventForwardAssertionWithReason:&unk_282C10710 asSnapshot:0];
  v9 = [*(a1 + 32) assertionBufferNotificationTracking];
  v10 = [MEMORY[0x277CBEAA8] date];
  [v9 addObject:v10];

  return [*(a1 + 32) checkAssertionBufferFullNotificationRate];
}

void *__49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2_177(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4161 = result;
  return result;
}

void *__49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2_186(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4162 = result;
  return result;
}

void __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
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
    block[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_4;
    block[3] = &unk_27825A310;
    v25 = @"DailyTasks";
    v26 = v10;
    if (qword_2811F41A8 != -1)
    {
      dispatch_once(&qword_2811F41A8, block);
    }

    v11 = byte_2811F4163;

    if (v11)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"DailyTasks notification!"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]_block_invoke_3"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:420];

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
  v22[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_203;
  v22[3] = &unk_27825A810;
  objc_copyWeak(&v23, location);
  v21 = [v18 initWithFireDate:v19 withInterval:0 withTolerance:0 repeats:v20 withUserInfo:v22 withQueue:0.0 withBlock:0.0];

  [v21 arm];
  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
}

void *__49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_4(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F4163 = result;
  return result;
}

void __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_203(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logSnapshotAtMidnight:0];
}

void __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_209(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogAssertion();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification from Console Mode change: %@", &v12, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"gameMode"];
  v9 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = [v3 objectForKeyedSubscript:@"gameMode"];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      v9 = 1;
    }
  }

  [*(a1 + 32) setGameMode:v9];
  v10 = PLLogAssertion();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [*(a1 + 32) gameMode];
    v12 = 67109120;
    LODWORD(v13) = v11;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Game Mode set to: %d", &v12, 8u);
  }

  [*(a1 + 32) updateOptimizeSubSecondAssertions];
}

- (void)handleStateChange
{
  stateTracker = [(PLPowerAssertionAgent *)self stateTracker];
  v4 = [stateTracker stateChanged:4];

  if (v4)
  {
    [(PLPowerAssertionAgent *)self updateDisplayState];
  }

  stateTracker2 = [(PLPowerAssertionAgent *)self stateTracker];
  v6 = [stateTracker2 stateChanged:1];

  if (v6)
  {

    [(PLPowerAssertionAgent *)self updatePluggedInState];
  }
}

- (void)updateDisplayState
{
  v8 = *MEMORY[0x277D85DE8];
  stateTracker = [(PLPowerAssertionAgent *)self stateTracker];
  v4 = [stateTracker getCurrState:4];

  v5 = PLLogAssertion();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Display state has changed to: %@", &v6, 0xCu);
  }

  -[PLPowerAssertionAgent setDisplayOn:](self, "setDisplayOn:", [v4 intValue] == 1);
  [(PLPowerAssertionAgent *)self updateOptimizeSubSecondAssertions];
}

- (void)updatePluggedInState
{
  v8 = *MEMORY[0x277D85DE8];
  stateTracker = [(PLPowerAssertionAgent *)self stateTracker];
  v4 = [stateTracker getCurrState:1];
  bOOLValue = [v4 BOOLValue];

  v6 = PLLogAssertion();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109120;
    v7[1] = bOOLValue;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "PluggedIn state has changed to: %d", v7, 8u);
  }

  [(PLPowerAssertionAgent *)self setPluggedIn:bOOLValue];
  [(PLPowerAssertionAgent *)self updateOptimizeSubSecondAssertions];
}

- (void)updateOptimizeSubSecondAssertions
{
  v12 = *MEMORY[0x277D85DE8];
  pluggedIn = [(PLPowerAssertionAgent *)self gameMode]|| [(PLPowerAssertionAgent *)self displayOn]|| [(PLPowerAssertionAgent *)self pluggedIn];
  [(PLPowerAssertionAgent *)self setOptimizesSubSecondAssertions:pluggedIn];
  v4 = PLLogAssertion();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109888;
    v5[1] = [(PLPowerAssertionAgent *)self optimizesSubSecondAssertions];
    v6 = 1024;
    gameMode = [(PLPowerAssertionAgent *)self gameMode];
    v8 = 1024;
    displayOn = [(PLPowerAssertionAgent *)self displayOn];
    v10 = 1024;
    pluggedIn2 = [(PLPowerAssertionAgent *)self pluggedIn];
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "In updateOptimizeSubSecondAssertions: %d; self.gameMode: %d; self.displayOn: %d; self.pluggedIn: %d ", v5, 0x1Au);
  }
}

- (id)startEndActionsToEnumMapping
{
  startEndActionsToEnum = self->_startEndActionsToEnum;
  if (!startEndActionsToEnum)
  {
    self->_startEndActionsToEnum = &unk_282C174F0;
    startEndActionsToEnum = self->_startEndActionsToEnum;
  }

  return startEndActionsToEnum;
}

- (id)assertTypeToEnumMapping
{
  assertTypeToEnum = self->_assertTypeToEnum;
  if (!assertTypeToEnum)
  {
    self->_assertTypeToEnum = &unk_282C17518;
    assertTypeToEnum = self->_assertTypeToEnum;
  }

  return assertTypeToEnum;
}

- (void)resetIOPMSetAssertionActivityAggregateWithReason:(signed __int16)reason withPidCount:(int)count
{
  v4 = *&count;
  reasonCopy = reason;
  v23 = *MEMORY[0x277D85DE8];
  if (count == -1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2020000000;
    v22 = 0;
    assertionAggregatedLastSample = [(PLPowerAssertionAgent *)self assertionAggregatedLastSample];
    [assertionAggregatedLastSample objectForKey:@"assertionAggregated"];
    IOReportIterate();

    v4 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  [(PLPowerAssertionAgent *)self logEventPointAggregateResetWithReason:reasonCopy withPidCount:v4];
  v8 = objc_opt_new();
  [(PLPowerAssertionAgent *)self setAssertionAggregatedLastSample:v8];

  IOPMSetAssertionActivityAggregate();
  v9 = IOPMSetAssertionActivityAggregate();
  if ([(PLOperator *)self isDebugEnabled])
  {
    if (v9)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"******  ERROR ********* 0x%x", v9];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent resetIOPMSetAssertionActivityAggregateWithReason:withPidCount:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:607];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
LABEL_11:
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
      }
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"We have assertion Activity logging"];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      lastPathComponent2 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent resetIOPMSetAssertionActivityAggregateWithReason:withPidCount:]"];
      [v16 logMessage:v10 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:609];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        goto LABEL_11;
      }
    }
  }
}

- (void)resetIOPMSetAssertionActivityAggregatePLDataStructureWithReason:(signed __int16)reason withPidCount:(int)count
{
  v4 = *&count;
  reasonCopy = reason;
  v23 = *MEMORY[0x277D85DE8];
  if (count == -1)
  {
    assertionAggregatedLastSamplePLDataStructure = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
    v8 = [assertionAggregatedLastSamplePLDataStructure objectForKeyedSubscript:@"assertionAggregated"];
    v4 = [v8 count];
  }

  [(PLPowerAssertionAgent *)self logEventPointAggregateResetWithReason:reasonCopy withPidCount:v4];
  v9 = objc_opt_new();
  [(PLPowerAssertionAgent *)self setAssertionAggregatedLastSamplePLDataStructure:v9];

  IOPMSetAssertionActivityAggregate();
  v10 = IOPMSetAssertionActivityAggregate();
  if ([(PLOperator *)self isDebugEnabled])
  {
    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"******  ERROR ********* 0x%x", v10];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent resetIOPMSetAssertionActivityAggregatePLDataStructureWithReason:withPidCount:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:629];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v11;
LABEL_11:
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"We have assertion Activity logging"];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      lastPathComponent2 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent resetIOPMSetAssertionActivityAggregatePLDataStructureWithReason:withPidCount:]"];
      [v17 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:631];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v11;
        goto LABEL_11;
      }
    }
  }
}

- (void)checkAssertionBufferFullNotificationRate
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CBEAA8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F41B0 != -1)
  {
    dispatch_once(&qword_2811F41B0, block);
  }

  v5 = [v4 dateWithTimeIntervalSinceNow:0.0 - *&qword_2811F41B8];
  v6 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  assertionBufferNotificationTracking = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
  v8 = [assertionBufferNotificationTracking countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(assertionBufferNotificationTracking);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        if ([v12 compare:v5] == -1)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [assertionBufferNotificationTracking countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v9);
  }

  assertionBufferNotificationTracking2 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
  [assertionBufferNotificationTracking2 removeObjectsInArray:v6];

  v14 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = MEMORY[0x277D3F268];
    assertionBufferNotificationTracking3 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
    firstObject = [assertionBufferNotificationTracking3 firstObject];
    v18 = [v16 formattedStringForDate:firstObject];
    v19 = v3;
    v20 = MEMORY[0x277D3F268];
    assertionBufferNotificationTracking4 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
    lastObject = [assertionBufferNotificationTracking4 lastObject];
    v23 = [v20 formattedStringForDate:lastObject];
    v24 = [v15 stringWithFormat:@"start=%@ end=%@", v18, v23];

    v3 = v19;
    v25 = v24;

    v14 = 0x277D3F000;
  }

  else
  {
    v25 = 0;
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke_2;
  v48[3] = &unk_2782591D0;
  v48[4] = self;
  if (qword_2811F41C0 != -1)
  {
    dispatch_once(&qword_2811F41C0, v48);
  }

  v26 = qword_2811F41C8;
  assertionBufferNotificationTracking5 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
  v28 = [assertionBufferNotificationTracking5 count];

  if (v28 >= v26)
  {
    [(PLPowerAssertionAgent *)self setAssertionBufferFullNotificationActive:0 withReason:@"CheckRate"];
    if ([*(v14 + 384) debugEnabled])
    {
      v38 = objc_opt_class();
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke_3;
      v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v47[4] = v38;
      if (qword_2811F41D0 != -1)
      {
        dispatch_once(&qword_2811F41D0, v47);
      }

      if (byte_2811F4164 == 1)
      {
        v39 = MEMORY[0x277CCACA8];
        assertionBufferNotificationTracking6 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
        v32 = [v39 stringWithFormat:@"assertion storm! count=%lu %@", objc_msgSend(assertionBufferNotificationTracking6, "count"), v25];

        v41 = MEMORY[0x277D3F178];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
        lastPathComponent = [v42 lastPathComponent];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent checkAssertionBufferFullNotificationRate]"];
        [v41 logMessage:v32 fromFile:lastPathComponent fromFunction:v44 fromLineNumber:658];

        v37 = PLLogCommon();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v55 = v32;
          goto LABEL_32;
        }

LABEL_29:
      }
    }
  }

  else if ([*(v14 + 384) debugEnabled])
  {
    v29 = objc_opt_class();
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke_430;
    v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v46[4] = v29;
    if (qword_2811F41D8 != -1)
    {
      dispatch_once(&qword_2811F41D8, v46);
    }

    if (byte_2811F4165 == 1)
    {
      v30 = MEMORY[0x277CCACA8];
      assertionBufferNotificationTracking7 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
      v32 = [v30 stringWithFormat:@"no storm! count=%lu %@", objc_msgSend(assertionBufferNotificationTracking7, "count"), v25];

      v33 = MEMORY[0x277D3F178];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      lastPathComponent2 = [v34 lastPathComponent];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent checkAssertionBufferFullNotificationRate]"];
      [v33 logMessage:v32 fromFile:lastPathComponent2 fromFunction:v36 fromLineNumber:660];

      v37 = PLLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v55 = v32;
LABEL_32:
        _os_log_debug_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        goto LABEL_29;
      }

      goto LABEL_29;
    }
  }

  objc_autoreleasePoolPop(v3);
}

void *__65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"HWTimeWindow"];
  qword_2811F41B8 = v2;
  return result;
}

void *__65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"HWCountLimit"];
  qword_2811F41C8 = result;
  return result;
}

void *__65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4164 = result;
  return result;
}

void *__65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke_430(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4165 = result;
  return result;
}

- (void)setAssertionBufferFullNotificationActive:(BOOL)active withReason:(id)reason
{
  activeCopy = active;
  v102 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F41E0 != -1)
    {
      dispatch_once(&qword_2811F41E0, block);
    }

    if (byte_2811F4166 == 1)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = NSStringFromBOOL();
      v10 = NSStringFromBOOL();
      v11 = [v8 stringWithFormat:@"assertionBufferFullNotificationActive: current=%@ new=%@", v9, v10];

      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent setAssertionBufferFullNotificationActive:withReason:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:666];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v101 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([(PLPowerAssertionAgent *)self assertionBufferFullNotificationActive]!= activeCopy)
  {
    [(PLPowerAssertionAgent *)self setAssertionBufferFullNotificationActive:activeCopy];
    v17 = [(PLOperator *)PLPowerAssertionAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Assertion"];
    debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
    v93 = v17;
    v94 = reasonCopy;
    if (activeCopy)
    {
      if (debugEnabled)
      {
        v19 = objc_opt_class();
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = __77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke_440;
        v98[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v98[4] = v19;
        if (qword_2811F41E8 != -1)
        {
          dispatch_once(&qword_2811F41E8, v98);
        }

        if (byte_2811F4167 == 1)
        {
          v20 = v17;
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"assertionBufferFullNotificationActive YES"];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
          lastPathComponent2 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent setAssertionBufferFullNotificationActive:withReason:]"];
          [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:673];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v101 = v21;
            _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v17 = v20;
        }
      }

      assertionBufferFullNotificationRearmTimer = [(PLPowerAssertionAgent *)self assertionBufferFullNotificationRearmTimer];

      if (assertionBufferFullNotificationRearmTimer)
      {
        assertionBufferFullNotificationRearmTimer2 = [(PLPowerAssertionAgent *)self assertionBufferFullNotificationRearmTimer];
        [assertionBufferFullNotificationRearmTimer2 invalidate];
      }

      [(PLPowerAssertionAgent *)self setAssertionBufferFullNotificationRearmTimer:0];
      assertionBufferFullNotification = [(PLPowerAssertionAgent *)self assertionBufferFullNotification];
      [assertionBufferFullNotification listenForNotifications:1];

      IOPMAssertionNotify();
      v92 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v17];
      v30 = MEMORY[0x277CCACA8];
      assertionBufferNotificationTracking = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
      v32 = [assertionBufferNotificationTracking count];
      v33 = MEMORY[0x277D3F268];
      assertionBufferNotificationTracking2 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
      firstObject = [assertionBufferNotificationTracking2 firstObject];
      v36 = [v33 formattedStringForDate:firstObject];
      v37 = MEMORY[0x277D3F268];
      assertionBufferNotificationTracking3 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
      lastObject = [assertionBufferNotificationTracking3 lastObject];
      v40 = [v37 formattedStringForDate:lastObject];
      v41 = [v30 stringWithFormat:@"AssertionStorm, count=%lu start=%@ end=%@", v32, v36, v40];
      v42 = v92;
      [v92 setObject:v41 forKeyedSubscript:@"AssertName"];

      [v92 setObject:&unk_282C10728 forKeyedSubscript:@"AssertType"];
      startEndActionsToEnum = [(PLPowerAssertionAgent *)self startEndActionsToEnum];
      reasonCopy = v94;
      v44 = [startEndActionsToEnum objectForKeyedSubscript:v94];
      [v92 setObject:v44 forKeyedSubscript:@"Action"];

      v45 = [v92 objectForKeyedSubscript:@"Action"];

      if (!v45)
      {
        [v92 setObject:&unk_282C10878 forKeyedSubscript:@"Action"];
      }

      [v92 setObject:&unk_282C10890 forKeyedSubscript:@"GlobalUniqueID"];
      v46 = MEMORY[0x277CCABB0];
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      v48 = [v46 numberWithInt:{objc_msgSend(processInfo, "processIdentifier")}];
      [v92 setObject:v48 forKeyedSubscript:@"pid"];

      v49 = MEMORY[0x277CCABB0];
      mEMORY[0x277D3F248] = [MEMORY[0x277D3F248] sharedInstance];
      [mEMORY[0x277D3F248] timeOffsetForTimeReference:1];
      v52 = [v49 numberWithInt:(v51 * 1000.0)];
      [v92 setObject:v52 forKeyedSubscript:@"timestampActionOffset"];

      [(PLOperator *)self logEntry:v92];
    }

    else
    {
      if (debugEnabled)
      {
        v53 = objc_opt_class();
        v97[0] = MEMORY[0x277D85DD0];
        v97[1] = 3221225472;
        v97[2] = __77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke_456;
        v97[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v97[4] = v53;
        if (qword_2811F41F0 != -1)
        {
          dispatch_once(&qword_2811F41F0, v97);
        }

        if (byte_2811F4168 == 1)
        {
          v54 = v17;
          v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"assertionBufferFullNotificationActive NO"];
          v56 = MEMORY[0x277D3F178];
          v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
          lastPathComponent3 = [v57 lastPathComponent];
          v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent setAssertionBufferFullNotificationActive:withReason:]"];
          [v56 logMessage:v55 fromFile:lastPathComponent3 fromFunction:v59 fromLineNumber:691];

          v60 = PLLogCommon();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v101 = v55;
            _os_log_debug_impl(&dword_21A4C6000, v60, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v17 = v54;
        }
      }

      v61 = MEMORY[0x277CBEAA8];
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke_461;
      v96[3] = &unk_2782591D0;
      v96[4] = self;
      if (qword_2811F41F8 != -1)
      {
        dispatch_once(&qword_2811F41F8, v96);
      }

      v62 = [v61 dateWithTimeIntervalSinceNow:*&qword_2811F4200];
      v63 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v17];
      v89 = MEMORY[0x277CCACA8];
      assertionBufferNotificationTracking4 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
      v64 = [assertionBufferNotificationTracking4 count];
      v65 = MEMORY[0x277D3F268];
      assertionBufferNotificationTracking5 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
      firstObject2 = [assertionBufferNotificationTracking5 firstObject];
      v67 = [v65 formattedStringForDate:firstObject2];
      v68 = MEMORY[0x277D3F268];
      assertionBufferNotificationTracking6 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
      lastObject2 = [assertionBufferNotificationTracking6 lastObject];
      v71 = [v68 formattedStringForDate:lastObject2];
      v72 = [MEMORY[0x277D3F268] formattedStringForDate:v62];
      v73 = [v89 stringWithFormat:@"AssertionStorm, count=%lu start=%@ end=%@ rearm=%@", v64, v67, v71, v72];
      [v63 setObject:v73 forKeyedSubscript:@"AssertName"];

      [v63 setObject:&unk_282C10728 forKeyedSubscript:@"AssertType"];
      startEndActionsToEnum2 = [(PLPowerAssertionAgent *)self startEndActionsToEnum];
      reasonCopy = v94;
      v75 = [startEndActionsToEnum2 objectForKeyedSubscript:v94];
      [v63 setObject:v75 forKeyedSubscript:@"Action"];

      v76 = [v63 objectForKeyedSubscript:@"Action"];

      if (!v76)
      {
        [v63 setObject:&unk_282C10878 forKeyedSubscript:@"Action"];
      }

      [v63 setObject:&unk_282C10890 forKeyedSubscript:@"GlobalUniqueID"];
      v77 = MEMORY[0x277CCABB0];
      processInfo2 = [MEMORY[0x277CCAC38] processInfo];
      v79 = [v77 numberWithInt:{objc_msgSend(processInfo2, "processIdentifier")}];
      [v63 setObject:v79 forKeyedSubscript:@"pid"];

      v80 = MEMORY[0x277CCABB0];
      mEMORY[0x277D3F248]2 = [MEMORY[0x277D3F248] sharedInstance];
      [mEMORY[0x277D3F248]2 timeOffsetForTimeReference:1];
      v83 = [v80 numberWithInt:(v82 * 1000.0)];
      [v63 setObject:v83 forKeyedSubscript:@"timestampActionOffset"];

      IOPMAssertionNotify();
      assertionBufferFullNotification2 = [(PLPowerAssertionAgent *)self assertionBufferFullNotification];
      [assertionBufferFullNotification2 listenForNotifications:0];

      assertionBufferNotificationTracking7 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
      [assertionBufferNotificationTracking7 removeAllObjects];

      [(PLOperator *)self logEntry:v63];
      v86 = objc_alloc(MEMORY[0x277D3F250]);
      workQueue = [(PLOperator *)self workQueue];
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke_2;
      v95[3] = &unk_278259C40;
      v95[4] = self;
      v42 = v62;
      v88 = [v86 initWithFireDate:v62 withInterval:0 withTolerance:0 repeats:workQueue withUserInfo:v95 withQueue:0.0 withBlock:0.0];
      [(PLPowerAssertionAgent *)self setAssertionBufferFullNotificationRearmTimer:v88];
    }
  }
}

void *__77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4166 = result;
  return result;
}

void *__77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke_440(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4167 = result;
  return result;
}

void *__77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke_456(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4168 = result;
  return result;
}

void *__77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke_461(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"HWRearmTimeInterval"];
  qword_2811F4200 = v2;
  return result;
}

- (void)setAssertionSnapshotTimerActive:(BOOL)active
{
  activeCopy = active;
  assertionSnapShotTimer = [(PLPowerAssertionAgent *)self assertionSnapShotTimer];

  if (assertionSnapShotTimer)
  {
    assertionSnapShotTimer2 = [(PLPowerAssertionAgent *)self assertionSnapShotTimer];
    [assertionSnapShotTimer2 invalidate];
  }

  if (activeCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PLPowerAssertionAgent_setAssertionSnapshotTimerActive___block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    if (qword_2811F4208 != -1)
    {
      dispatch_once(&qword_2811F4208, block);
    }

    v7 = *&qword_2811F4210;
    if (![MEMORY[0x277D3F180] fullMode])
    {
      v7 = v7 * 6.0;
    }

    v8 = objc_alloc(MEMORY[0x277D3F250]);
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v7];
    workQueue = [(PLOperator *)self workQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__PLPowerAssertionAgent_setAssertionSnapshotTimerActive___block_invoke_2;
    v12[3] = &unk_278259C40;
    v12[4] = self;
    v11 = [v8 initWithFireDate:v9 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v12 withQueue:v7 withBlock:0.0];
    [(PLPowerAssertionAgent *)self setAssertionSnapShotTimer:v11];
  }

  else
  {

    [(PLPowerAssertionAgent *)self setAssertionSnapShotTimer:0];
  }
}

void *__57__PLPowerAssertionAgent_setAssertionSnapshotTimerActive___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"SnapShotInterval"];
  qword_2811F4210 = v2;
  return result;
}

- (BOOL)assertionSnapshotTimerActive
{
  assertionSnapShotTimer = [(PLPowerAssertionAgent *)self assertionSnapShotTimer];
  v3 = assertionSnapShotTimer == 0;

  return v3;
}

- (id)sanitizeAssertionNameForEntry:(id)entry
{
  entryCopy = entry;
  if (entryCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([entryCopy length] >= 0x3E9)
    {
      v4 = [entryCopy substringToIndex:1000];

      entryCopy = v4;
    }

    if ([entryCopy rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      entryCopy = entryCopy;
      v5 = entryCopy;
    }

    else
    {
      v7 = [entryCopy stringByReplacingOccurrencesOfString:@"" withString:&stru_282B650A0];;
      v8 = [v7 stringByReplacingOccurrencesOfString:@"." withString:&stru_282B650A0];

      v9 = [v8 stringByReplacingOccurrencesOfString:@"*" withString:&stru_282B650A0];

      v10 = [v9 stringByReplacingOccurrencesOfString:@"?" withString:&stru_282B650A0];

      v11 = [v10 stringByReplacingOccurrencesOfString:@"@" withString:&stru_282B650A0];

      v12 = [v11 stringByReplacingOccurrencesOfString:@"\" withString:&stru_282B650A0];

      v5 = [v12 stringByReplacingOccurrencesOfString:@"-" withString:&stru_282B650A0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldOptimizeSmallAssertions
{
  if (qword_2811F4218 != -1)
  {
    dispatch_once(&qword_2811F4218, &__block_literal_global_490);
  }

  return byte_2811F4169;
}

uint64_t __54__PLPowerAssertionAgent_shouldOptimizeSmallAssertions__block_invoke()
{
  if ([MEMORY[0x277D3F180] liteMode])
  {
    result = 1;
  }

  else
  {
    result = [MEMORY[0x277D3F180] taskMode];
  }

  byte_2811F4169 = result;
  return result;
}

- (void)logEventForwardAssertion
{
  [(PLPowerAssertionAgent *)self logEventForwardAssertionWithReason:&unk_282C10650 asSnapshot:0];

  [(PLPowerAssertionAgent *)self logEventForwardAssertionWithReason:&unk_282C106C8 asSnapshot:1];
}

- (void)logSnapshot:(id)snapshot
{
  v100 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  AssertionsByPID = 0;
  v5 = IOPMCopyAssertionsByProcess(&AssertionsByPID);
  if (v5)
  {
    v6 = v5;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __37__PLPowerAssertionAgent_logSnapshot___block_invoke;
      v92[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v92[4] = v7;
      if (qword_2811F4220 != -1)
      {
        dispatch_once(&qword_2811F4220, v92);
      }

      if (byte_2811F416A == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Call to IOPMCopyAssertionsByProcess failed with error 0x%x", v6];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logSnapshot:]"];
        v71 = v8;
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:790];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v99 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        goto LABEL_53;
      }
    }

    goto LABEL_54;
  }

  v68 = snapshotCopy;
  v76 = objc_opt_new();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v14 = AssertionsByPID;
  v74 = [(PLOperator *)PLPowerAssertionAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Assertion"];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v71 = v14;
  obj = [(__CFDictionary *)v14 allKeys];
  v72 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
  if (!v72)
  {
    goto LABEL_49;
  }

  v70 = *v89;
  v15 = 0x277CCA000;
  v16 = @"Category";
  do
  {
    v17 = 0;
    do
    {
      if (*v89 != v70)
      {
        objc_enumerationMutation(obj);
      }

      v73 = v17;
      v18 = *(*(&v88 + 1) + 8 * v17);
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v78 = v18;
      v79 = [v71 objectForKey:?];
      v81 = [v79 countByEnumeratingWithState:&v84 objects:v96 count:16];
      if (v81)
      {
        v19 = *v85;
        v77 = *v85;
        do
        {
          v20 = 0;
          do
          {
            if (*v85 != v19)
            {
              objc_enumerationMutation(v79);
            }

            v21 = *(*(&v84 + 1) + 8 * v20);
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v22 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __37__PLPowerAssertionAgent_logSnapshot___block_invoke_496;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v22;
              if (qword_2811F4228 != -1)
              {
                dispatch_once(&qword_2811F4228, block);
              }

              if (byte_2811F416B == 1)
              {
                v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"rawAssertion=%@", v21];
                v24 = MEMORY[0x277D3F178];
                v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
                lastPathComponent2 = [v25 lastPathComponent];
                v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logSnapshot:]"];
                [v24 logMessage:v23 fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:801];

                v28 = PLLogCommon();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v99 = v23;
                  _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v15 = 0x277CCA000uLL;
              }
            }

            v29 = [v21 objectForKeyedSubscript:@"GlobalUniqueID"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v31 = v16;
              v32 = v15;
              v33 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v74];
              [v33 setEntryDate:monotonicDate];
              v34 = [v21 objectForKeyedSubscript:@"AssertStartWhen"];
              entryDate = [v33 entryDate];
              v80 = v34;
              [v34 timeIntervalSinceDate:entryDate];
              v37 = v36 * 1000.0;

              v38 = [*(v32 + 2992) numberWithDouble:v37];
              [v33 setObject:v38 forKeyedSubscript:@"timestampActionOffset"];

              [v33 setObject:v78 forKeyedSubscript:@"pid"];
              [v33 setObject:&unk_282C10650 forKeyedSubscript:@"Action"];
              v39 = [v21 objectForKeyedSubscript:@"GlobalUniqueID"];
              [v33 setObject:v39 forKeyedSubscript:@"GlobalUniqueID"];

              v40 = [v21 objectForKeyedSubscript:@"AssertName"];
              v41 = [(PLPowerAssertionAgent *)self sanitizeAssertionNameForEntry:v40];
              [v33 setObject:v41 forKeyedSubscript:@"AssertName"];

              assertTypeToEnum = [(PLPowerAssertionAgent *)self assertTypeToEnum];
              v43 = [v21 objectForKeyedSubscript:@"AssertType"];
              v44 = [assertTypeToEnum objectForKeyedSubscript:v43];
              [v33 setObject:v44 forKeyedSubscript:@"AssertType"];

              v45 = [v33 objectForKeyedSubscript:@"AssertType"];

              if (!v45)
              {
                [v33 setObject:&unk_282C10758 forKeyedSubscript:@"AssertType"];
              }

              v46 = [v21 objectForKeyedSubscript:@"AssertionOnBehalfOfPID"];
              [v33 setObject:v46 forKeyedSubscript:@"AssertionOnBehalfOfPID"];

              v16 = v31;
              v47 = [v21 objectForKeyedSubscript:v31];

              if (v47)
              {
                v48 = [v21 objectForKeyedSubscript:v31];
                [v33 setObject:v48 forKeyedSubscript:v31];
              }

              v49 = [v21 objectForKeyedSubscript:@"InstanceMetadata"];

              if (v49)
              {
                v50 = [v21 objectForKeyedSubscript:@"InstanceMetadata"];
                if ([v50 length] >= 0x21)
                {
                  v51 = [v50 substringToIndex:32];

                  v50 = v51;
                }

                [v33 setObject:v50 forKeyedSubscript:@"InstanceMetadata"];
              }

              v52 = [v21 objectForKeyedSubscript:@"FrameworkBundleID"];

              if (v52)
              {
                v53 = [v21 objectForKeyedSubscript:@"FrameworkBundleID"];
                [v33 setObject:v53 forKeyedSubscript:@"FrameworkBundleID"];
              }

              [v76 addObject:v33];
              v19 = v77;
              v54 = v80;
LABEL_37:

              v15 = 0x277CCA000;
              goto LABEL_45;
            }

            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v55 = objc_opt_class();
              v82[0] = MEMORY[0x277D85DD0];
              v82[1] = 3221225472;
              v82[2] = __37__PLPowerAssertionAgent_logSnapshot___block_invoke_505;
              v82[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v82[4] = v55;
              if (qword_2811F4230 != -1)
              {
                dispatch_once(&qword_2811F4230, v82);
              }

              if (byte_2811F416C == 1)
              {
                v56 = MEMORY[0x277CCACA8];
                v57 = [v21 objectForKeyedSubscript:@"GlobalUniqueID"];
                v33 = [v56 stringWithFormat:@"ERROR: GlobalUniqueID for assertion is not a number: %@", v57];

                v58 = MEMORY[0x277D3F178];
                v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
                lastPathComponent3 = [v59 lastPathComponent];
                v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logSnapshot:]"];
                [v58 logMessage:v33 fromFile:lastPathComponent3 fromFunction:v61 fromLineNumber:831];

                v54 = PLLogCommon();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v99 = v33;
                  _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                goto LABEL_37;
              }
            }

LABEL_45:
            ++v20;
          }

          while (v81 != v20);
          v81 = [v79 countByEnumeratingWithState:&v84 objects:v96 count:16];
        }

        while (v81);
      }

      v17 = v73 + 1;
    }

    while (v73 + 1 != v72);
    v72 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
  }

  while (v72);
LABEL_49:

  v13 = v76;
  if ([v76 count])
  {
    v62 = v74;
    v94 = v74;
    v95 = v76;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
    [(PLOperator *)self logEntries:v63 withGroupID:v74];
    snapshotCopy = v68;
    v64 = 0x278257000;
    v65 = 0x277D3F000;
  }

  else
  {
    v65 = 0x277D3F000uLL;
    v62 = v74;
    v63 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v74];
    [v63 setIsErrorEntry:1];
    [v63 setObject:@"No assertions open" forKeyedSubscript:@"__PLEntryErrorString__"];
    [(PLOperator *)self logEntry:v63];
    snapshotCopy = v68;
    v64 = 0x278257000uLL;
  }

  v66 = [*(v64 + 3640) entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SnapshotReason"];
  v67 = [objc_alloc(*(v65 + 400)) initWithEntryKey:v66];
  [v67 setObject:snapshotCopy forKeyedSubscript:@"Reason"];
  [(PLOperator *)self logEntry:v67];

LABEL_53:
LABEL_54:
}

void *__37__PLPowerAssertionAgent_logSnapshot___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F416A = result;
  return result;
}

void *__37__PLPowerAssertionAgent_logSnapshot___block_invoke_496(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F416B = result;
  return result;
}

void *__37__PLPowerAssertionAgent_logSnapshot___block_invoke_505(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F416C = result;
  return result;
}

- (void)logInterval:(id)interval
{
  v22 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke;
  block[3] = &unk_27825B7C8;
  v18 = @"logAssertNameChange";
  v19 = 0;
  if (qword_2811F4238 != -1)
  {
    dispatch_once(&qword_2811F4238, block);
  }

  if (logInterval__prevRefCnt == -1)
  {
    logInterval__prevRefCnt = [MEMORY[0x277D3F180] longForKey:@"assertionCookie" ifNotSet:0xFFFFFFFFLL];
  }

  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"0[xX][0-9a-fA-F]+" options:0 error:0];
  v6 = PLLogAssertion();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    optimizesSubSecondAssertions = [(PLPowerAssertionAgent *)self optimizesSubSecondAssertions];
    *buf = 67109120;
    LODWORD(v21) = optimizesSubSecondAssertions;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "self.optimizesSubSecondAssertions %d", buf, 8u);
  }

  [(PLOperator *)self defaultDoubleForKey:@"subSecondAssertionDuration"];
  v8 = v7;
  v9 = PLLogAssertion();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v21 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "subSecondAssertionDuration %f", buf, 0xCu);
  }

  workQueue = [(PLOperator *)self workQueue];
  v11 = v5;
  v12 = intervalCopy;
  v13 = IOPMCopyAssertionActivityUpdateWithCallback();

  if (v13)
  {
    v14 = [(PLOperator *)PLPowerAssertionAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BufferStatus"];
    v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14];
    [v15 setObject:&unk_282C108A8 forKeyedSubscript:@"TotalCount"];
    [(PLOperator *)self logEntry:v15];
  }
}

void *__37__PLPowerAssertionAgent_logInterval___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  byte_2811F416D = result;
  return result;
}

void __37__PLPowerAssertionAgent_logInterval___block_invoke_525(uint64_t a1, void *a2, unsigned int a3, void *a4)
{
  v233 = *MEMORY[0x277D85DE8];
  v6 = 0x277D3F000uLL;
  v7 = MEMORY[0x277D3F180];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:logInterval__prevRefCnt];
  [v7 setObject:v8 forKey:@"assertionCookie" saveToDisk:1];

  v200 = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = a4;
  v197 = objc_opt_new();
  v199 = *MEMORY[0x277D3F5E8];
  v196 = [PLOperator entryKeyForType:"entryKeyForType:andName:" andName:?];
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v219 objects:v232 count:16];
  v11 = 0x277D3F000;
  v190 = a1;
  if (v10)
  {
    v12 = v10;
    v13 = *v220;
    do
    {
      v14 = 0;
      do
      {
        if (*v220 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v219 + 1) + 8 * v14);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v16 = objc_opt_class();
          v218[0] = MEMORY[0x277D85DD0];
          v218[1] = 3221225472;
          v218[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_2;
          v218[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v218[4] = v16;
          v17 = v218;
          if (qword_2811F4240 != -1)
          {
            dispatch_once(&qword_2811F4240, v17);
          }

          if (byte_2811F416E == 1)
          {
            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"timedOutProcessLog=%@", v15];
            v19 = MEMORY[0x277D3F178];
            v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
            v21 = [v20 lastPathComponent];
            v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke"];
            [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:878];

            v23 = PLLogCommon();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v231 = v18;
              _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            a1 = v190;
            v6 = 0x277D3F000uLL;
            v11 = 0x277D3F000uLL;
          }
        }

        v24 = [objc_alloc(*(v11 + 400)) initWithEntryKey:v196 withDate:v200];
        [v24 setObject:v15 forKeyedSubscript:@"ProcessName"];
        [v197 addObject:v24];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v219 objects:v232 count:16];
    }

    while (v12);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v25 = objc_opt_class();
    v217[0] = MEMORY[0x277D85DD0];
    v217[1] = 3221225472;
    v217[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_531;
    v217[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v217[4] = v25;
    v26 = v217;
    if (qword_2811F4248 != -1)
    {
      dispatch_once(&qword_2811F4248, v26);
    }

    if (byte_2811F416F == 1)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"processCreates=%@\n", v197];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v30 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
      [v28 logMessage:v27 fromFile:v30 fromFunction:v31 fromLineNumber:883];

      v32 = PLLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v231 = v27;
        _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v11 = 0x277D3F000;
    }
  }

  if ([v197 count])
  {
    v33 = *(a1 + 32);
    v228 = v196;
    v229 = v197;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v229 forKeys:&v228 count:1];
    [v33 logEntries:v34 withGroupID:v196];
  }

  v181 = [(PLOperator *)PLPowerAssertionAgent entryKeyForType:v199 andName:@"BufferStatus"];
  v35 = a2;
  v194 = objc_opt_new();
  v193 = [(PLOperator *)PLPowerAssertionAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Assertion"];
  v188 = objc_opt_new();
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v192 = v35;
  v198 = [v192 countByEnumeratingWithState:&v213 objects:v227 count:16];
  if (v198)
  {
    v195 = *v214;
    do
    {
      v36 = 0;
      do
      {
        if (*v214 != v195)
        {
          objc_enumerationMutation(v192);
        }

        v37 = *(*(&v213 + 1) + 8 * v36);
        if ([*(v6 + 384) debugEnabled])
        {
          v38 = objc_opt_class();
          v212[0] = MEMORY[0x277D85DD0];
          v212[1] = 3221225472;
          v212[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_538;
          v212[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v212[4] = v38;
          v39 = v212;
          if (qword_2811F4250 != -1)
          {
            dispatch_once(&qword_2811F4250, v39);
          }

          if (byte_2811F4170 == 1)
          {
            v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"activityLog=%@", v37];
            v41 = MEMORY[0x277D3F178];
            v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
            v43 = [v42 lastPathComponent];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
            [v41 logMessage:v40 fromFile:v43 fromFunction:v44 fromLineNumber:900];

            v45 = PLLogCommon();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v231 = v40;
              _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v11 = 0x277D3F000uLL;
          }
        }

        contexta = objc_autoreleasePoolPush();
        v46 = [v37 objectForKeyedSubscript:@"GlobalUniqueID"];
        v204 = [v37 objectForKeyedSubscript:@"AssertPID"];
        v47 = [v37 objectForKeyedSubscript:@"Action"];
        v48 = [*(a1 + 32) startEndActionsToEnum];
        v203 = v47;
        v49 = [v48 objectForKeyedSubscript:v47];

        if (v49)
        {
          v50 = v49;
        }

        else
        {
          v50 = &unk_282C10878;
        }

        if ((*(a1 + 64) & 1) != 0 || ([v50 isEqualToNumber:&unk_282C106C8] & 1) == 0)
        {
          v51 = [objc_alloc(*(v11 + 400)) initWithEntryKey:v193 withDate:v200];
          v52 = [v37 objectForKeyedSubscript:@"ActivityTime"];

          if (v52)
          {
            v53 = [v37 objectForKeyedSubscript:@"ActivityTime"];
            v54 = [v51 entryDate];
            [v53 timeIntervalSinceDate:v54];
            v56 = v55 * 1000.0;

            v57 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
            [v51 setObject:v57 forKeyedSubscript:@"timestampActionOffset"];
          }

          else
          {
            if ([*(v6 + 384) debugEnabled])
            {
              v58 = objc_opt_class();
              v211[0] = MEMORY[0x277D85DD0];
              v211[1] = 3221225472;
              v211[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_547;
              v211[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v211[4] = v58;
              v59 = v211;
              if (qword_2811F4258 != -1)
              {
                dispatch_once(&qword_2811F4258, v59);
              }

              if (byte_2811F4171 == 1)
              {
                v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing key: ActivityTime, in the payload"];
                v61 = MEMORY[0x277D3F178];
                v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
                v63 = [v62 lastPathComponent];
                v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
                [v61 logMessage:v60 fromFile:v63 fromFunction:v64 fromLineNumber:917];

                v65 = PLLogCommon();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v231 = v60;
                  _os_log_debug_impl(&dword_21A4C6000, v65, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                a1 = v190;
              }
            }

            [v51 setObject:0 forKeyedSubscript:@"timestampActionOffset"];
          }

          [v51 setObject:v46 forKeyedSubscript:@"GlobalUniqueID"];
          [v51 setObject:v204 forKeyedSubscript:@"pid"];
          v66 = [*(a1 + 32) logAssertNameForActions];
          v67 = [v66 containsObject:v50];

          if (v67)
          {
            v68 = [v37 objectForKeyedSubscript:@"Category"];

            if (v68)
            {
              v69 = [v37 objectForKeyedSubscript:@"Category"];
              [v51 setObject:v69 forKeyedSubscript:@"Category"];
            }

            v70 = [v37 objectForKeyedSubscript:@"InstanceMetadata"];

            if (v70)
            {
              v71 = [v37 objectForKeyedSubscript:@"InstanceMetadata"];
              if ([v71 length] >= 0x21)
              {
                v72 = [v71 substringToIndex:32];

                v71 = v72;
              }

              [v51 setObject:v71 forKeyedSubscript:@"InstanceMetadata"];
            }

            v73 = [v37 objectForKeyedSubscript:@"FrameworkBundleID"];

            if (v73)
            {
              v74 = [v37 objectForKeyedSubscript:@"FrameworkBundleID"];
              [v51 setObject:v74 forKeyedSubscript:@"FrameworkBundleID"];
            }
          }

          v75 = [*(a1 + 32) logAssertNameForActions];
          v76 = [v75 containsObject:v50];

          if (v76)
          {
            v77 = *(a1 + 32);
            v78 = [v37 objectForKeyedSubscript:@"AssertName"];
            v79 = [v77 sanitizeAssertionNameForEntry:v78];
            [v51 setObject:v79 forKeyedSubscript:@"AssertName"];
          }

          else
          {
            [v51 setObject:0 forKeyedSubscript:@"AssertName"];
          }

          [v51 setObject:v50 forKeyedSubscript:@"Action"];
          v80 = [*(a1 + 32) assertTypeToEnum];
          v81 = [v37 objectForKeyedSubscript:@"AssertType"];
          [v80 objectForKeyedSubscript:v81];
          v83 = v82 = a1;
          [v51 setObject:v83 forKeyedSubscript:@"AssertType"];

          v84 = [v51 objectForKeyedSubscript:@"AssertType"];

          if (!v84)
          {
            [v51 setObject:&unk_282C10758 forKeyedSubscript:@"AssertType"];
          }

          v85 = [v37 objectForKeyedSubscript:@"AssertionOnBehalfOfPID"];
          [v51 setObject:v85 forKeyedSubscript:@"AssertionOnBehalfOfPID"];

          [v194 addObject:v51];
          a1 = v82;
          if ([*(v82 + 32) optimizesSubSecondAssertions])
          {
            v6 = 0x277D3F000;
            if ([v50 intValue] == 4)
            {
              v86 = [*(a1 + 32) subSecondUUIDStartEntryCache];
              v87 = [v86 objectForKeyedSubscript:v46];

              if (v87)
              {
                v88 = [v51 objectForKeyedSubscript:@"timestampActionOffset"];
                [v88 doubleValue];
                v90 = v89;
                v91 = [v87 objectForKeyedSubscript:@"timestampActionOffset"];
                [v91 doubleValue];
                v93 = v90 - v92;

                if (v93 < *(a1 + 56))
                {
                  [v188 addObject:v51];
                  [v188 addObject:v87];
                }

LABEL_91:
                v11 = 0x277D3F000;
              }

              else
              {
                v11 = 0x277D3F000;
              }

LABEL_100:

LABEL_101:
              goto LABEL_102;
            }

            v11 = 0x277D3F000;
            if ([v50 intValue])
            {
              goto LABEL_101;
            }

            v127 = [*(a1 + 32) subSecondUUIDStartEntryCache];
LABEL_94:
            v87 = v127;
            [v127 setObject:v51 forKey:v46];
            goto LABEL_100;
          }

          v6 = 0x277D3F000;
          v11 = 0x277D3F000;
          if (!+[PLPowerAssertionAgent shouldOptimizeSmallAssertions])
          {
            goto LABEL_101;
          }

          if ([v50 intValue] != 4)
          {
            if ([v50 intValue])
            {
              goto LABEL_101;
            }

            v127 = [*(a1 + 32) UUIDStartEntryCache];
            goto LABEL_94;
          }

          v94 = [*(a1 + 32) UUIDStartEntryCache];
          v87 = [v94 objectForKeyedSubscript:v46];

          if (v87)
          {
            v95 = [v51 objectForKeyedSubscript:@"timestampActionOffset"];
            [v95 doubleValue];
            v97 = v96;
            v98 = [v87 objectForKeyedSubscript:@"timestampActionOffset"];
            [v98 doubleValue];
            v100 = v97 - v99;

            if (v100 >= 1000.0)
            {
              goto LABEL_91;
            }

            v186 = [v87 objectForKeyedSubscript:@"AssertName"];
            v101 = [*(a1 + 40) stringByReplacingMatchesInString:v186 options:0 range:0 withTemplate:{objc_msgSend(v186, "length"), @"HEX"}];
            v102 = MEMORY[0x277CCACA8];
            v103 = [v87 objectForKeyedSubscript:@"pid"];
            v104 = [v87 objectForKeyedSubscript:@"AssertionOnBehalfOfPID"];
            v105 = [v87 objectForKeyedSubscript:@"AssertType"];
            v187 = v101;
            v106 = [v102 stringWithFormat:@"%@, %@, %@, %@", v103, v104, v105, v101];

            a1 = v190;
            v107 = [*(v190 + 32) assertionUUIDCache];
            v108 = [v107 valueForKey:v106];

            v189 = v108;
            if (!v108)
            {
              v126 = [*(v190 + 32) assertionUUIDCache];
              [v126 setObject:v46 forKey:v106];
              v6 = 0x277D3F000uLL;
              goto LABEL_97;
            }

            v6 = 0x277D3F000uLL;
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v109 = objc_opt_class();
              v210[0] = MEMORY[0x277D85DD0];
              v210[1] = 3221225472;
              v210[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_559;
              v210[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v210[4] = v109;
              v110 = v210;
              if (qword_2811F4260 != -1)
              {
                dispatch_once(&qword_2811F4260, v110);
              }

              if (byte_2811F4172 == 1)
              {
                v111 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion before optimization=%@\n", v87];
                v183 = MEMORY[0x277D3F178];
                v112 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
                v113 = [v112 lastPathComponent];
                v114 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
                [v183 logMessage:v111 fromFile:v113 fromFunction:v114 fromLineNumber:985];

                v115 = v111;
                v116 = PLLogCommon();
                if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v231 = v115;
                  _os_log_debug_impl(&dword_21A4C6000, v116, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                a1 = v190;
                v6 = 0x277D3F000uLL;
              }
            }

            [v87 setObject:&stru_282B650A0 forKeyedSubscript:@"AssertName"];
            v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v189, "unsignedLongLongValue")}];
            [v87 setObject:v117 forKeyedSubscript:@"GlobalUniqueIDReference"];

            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v118 = objc_opt_class();
              v209[0] = MEMORY[0x277D85DD0];
              v209[1] = 3221225472;
              v209[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_565;
              v209[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v209[4] = v118;
              v119 = v209;
              if (qword_2811F4268 != -1)
              {
                dispatch_once(&qword_2811F4268, v119);
              }

              if (byte_2811F4173 == 1)
              {
                v120 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion after optimization=%@\n", v87];
                v184 = MEMORY[0x277D3F178];
                v121 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
                v122 = [v121 lastPathComponent];
                v123 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
                v124 = v184;
                v185 = v120;
                [v124 logMessage:v120 fromFile:v122 fromFunction:v123 fromLineNumber:988];

                v125 = PLLogCommon();
                if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v231 = v185;
                  _os_log_debug_impl(&dword_21A4C6000, v125, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                a1 = v190;
                v6 = 0x277D3F000;
                v126 = v185;
LABEL_97:
              }
            }
          }

          v11 = 0x277D3F000;
          goto LABEL_100;
        }

LABEL_102:

        objc_autoreleasePoolPop(contexta);
        ++v36;
      }

      while (v198 != v36);
      v198 = [v192 countByEnumeratingWithState:&v213 objects:v227 count:16];
    }

    while (v198);
  }

  if ([*(v6 + 384) debugEnabled])
  {
    v128 = objc_opt_class();
    v208[0] = MEMORY[0x277D85DD0];
    v208[1] = 3221225472;
    v208[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_571;
    v208[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v208[4] = v128;
    v129 = v208;
    if (qword_2811F4270 != -1)
    {
      dispatch_once(&qword_2811F4270, v129);
    }

    if (byte_2811F4174 == 1)
    {
      v130 = [MEMORY[0x277CCACA8] stringWithFormat:@"creates=%@\n", v194];
      v131 = MEMORY[0x277D3F178];
      v132 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v133 = [v132 lastPathComponent];
      v134 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
      [v131 logMessage:v130 fromFile:v133 fromFunction:v134 fromLineNumber:1000];

      v135 = PLLogCommon();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v231 = v130;
        _os_log_debug_impl(&dword_21A4C6000, v135, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v11 = 0x277D3F000uLL;
    }
  }

  v136 = [*(a1 + 32) optimizesSubSecondAssertions];
  v137 = [v194 count];
  if (v136)
  {
    if (v137)
    {
      v138 = PLLogAssertion();
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
      {
        v178 = [v194 count];
        *buf = 134217984;
        v231 = v178;
        _os_log_debug_impl(&dword_21A4C6000, v138, OS_LOG_TYPE_DEBUG, "creates count %lu", buf, 0xCu);
      }

      v139 = PLLogAssertion();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
      {
        v179 = [v188 count];
        *buf = 134217984;
        v231 = v179;
        _os_log_debug_impl(&dword_21A4C6000, v139, OS_LOG_TYPE_DEBUG, "subSecondAssertions count %lu", buf, 0xCu);
      }

      if ([v188 count])
      {
        [v194 removeObjectsInArray:v188];
      }

      v140 = PLLogAssertion();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
      {
        v180 = [v194 count];
        *buf = 134217984;
        v231 = v180;
        _os_log_debug_impl(&dword_21A4C6000, v140, OS_LOG_TYPE_DEBUG, "final creates count %lu", buf, 0xCu);
      }

      v141 = *(a1 + 32);
      v142 = v193;
      v225 = v193;
      v226 = v194;
      v143 = MEMORY[0x277CBEAC0];
      v144 = &v226;
      v145 = &v225;
      goto LABEL_124;
    }
  }

  else if (v137)
  {
    v141 = *(a1 + 32);
    v142 = v193;
    v223 = v193;
    v224 = v194;
    v143 = MEMORY[0x277CBEAC0];
    v144 = &v224;
    v145 = &v223;
LABEL_124:
    v146 = [v143 dictionaryWithObjects:v144 forKeys:v145 count:1];
    [v141 logEntries:v146 withGroupID:v142];
    goto LABEL_126;
  }

  v146 = [objc_alloc(*(v11 + 400)) initWithEntryKey:v193];
  [v146 setIsErrorEntry:1];
  [v146 setObject:@"No assertions created" forKeyedSubscript:@"__PLEntryErrorString__"];
  [*(a1 + 32) logEntry:v146];
LABEL_126:

  v147 = [*(a1 + 32) assertionUUIDCache];
  [v147 removeAllObjects];

  v148 = [*(a1 + 32) UUIDStartEntryCache];
  [v148 removeAllObjects];

  v149 = [*(a1 + 32) subSecondUUIDStartEntryCache];
  [v149 removeAllObjects];

  v150 = [objc_alloc(*(v11 + 400)) initWithEntryKey:v181];
  if ([*(a1 + 32) firstBufferDrain])
  {
    v151 = &unk_282C10740;
  }

  else
  {
    v151 = *(a1 + 48);
  }

  [v150 setObject:v151 forKeyedSubscript:@"Reason"];
  v152 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v192, "count")}];
  [v150 setObject:v152 forKeyedSubscript:@"TotalCount"];

  [*(a1 + 32) logEntry:v150];
  if ([*(v6 + 384) debugEnabled])
  {
    v153 = objc_opt_class();
    v207[0] = MEMORY[0x277D85DD0];
    v207[1] = 3221225472;
    v207[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_580;
    v207[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v207[4] = v153;
    v154 = v207;
    if (qword_2811F4278 != -1)
    {
      dispatch_once(&qword_2811F4278, v154);
    }

    if (byte_2811F4175 == 1)
    {
      v155 = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer usage: %@", v150];
      v156 = MEMORY[0x277D3F178];
      v157 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v158 = [v157 lastPathComponent];
      v159 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
      [v156 logMessage:v155 fromFile:v158 fromFunction:v159 fromLineNumber:1041];

      v160 = PLLogCommon();
      if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v231 = v155;
        _os_log_debug_impl(&dword_21A4C6000, v160, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v161 = [*(v6 + 384) debugEnabled];
  if (a3)
  {
    if (v161)
    {
      v162 = objc_opt_class();
      v206[0] = MEMORY[0x277D85DD0];
      v206[1] = 3221225472;
      v206[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_586;
      v206[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v206[4] = v162;
      v163 = v206;
      if (qword_2811F4280 != -1)
      {
        dispatch_once(&qword_2811F4280, v163);
      }

      if (byte_2811F4176 == 1)
      {
        v164 = [MEMORY[0x277CCACA8] stringWithFormat:@"buffer overflowed (%lu), taking snapshot", objc_msgSend(v192, "count")];
        v165 = MEMORY[0x277D3F178];
        v166 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
        v167 = [v166 lastPathComponent];
        v168 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
        [v165 logMessage:v164 fromFile:v167 fromFunction:v168 fromLineNumber:1045];

        v169 = PLLogCommon();
        if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v231 = v164;
          _os_log_debug_impl(&dword_21A4C6000, v169, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [*(a1 + 32) logEventForwardAssertionWithReason:&unk_282C10710 asSnapshot:1];
  }

  else if (v161)
  {
    v170 = objc_opt_class();
    v205[0] = MEMORY[0x277D85DD0];
    v205[1] = 3221225472;
    v205[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_592;
    v205[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v205[4] = v170;
    v171 = v205;
    if (qword_2811F4288 != -1)
    {
      dispatch_once(&qword_2811F4288, v171);
    }

    if (byte_2811F4177 == 1)
    {
      v172 = [MEMORY[0x277CCACA8] stringWithFormat:@"No buffer overflow (%lu)", objc_msgSend(v192, "count")];
      v173 = MEMORY[0x277D3F178];
      v174 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v175 = [v174 lastPathComponent];
      v176 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
      [v173 logMessage:v172 fromFile:v175 fromFunction:v176 fromLineNumber:1048];

      v177 = PLLogCommon();
      if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v231 = v172;
        _os_log_debug_impl(&dword_21A4C6000, v177, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) setFirstBufferDrain:0];
  [*(a1 + 32) setLastActivityOverflow:a3];
}

void *__37__PLPowerAssertionAgent_logInterval___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F416E = result;
  return result;
}

void *__37__PLPowerAssertionAgent_logInterval___block_invoke_531(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F416F = result;
  return result;
}

void *__37__PLPowerAssertionAgent_logInterval___block_invoke_538(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4170 = result;
  return result;
}

void *__37__PLPowerAssertionAgent_logInterval___block_invoke_547(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4171 = result;
  return result;
}

void *__37__PLPowerAssertionAgent_logInterval___block_invoke_559(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4172 = result;
  return result;
}

void *__37__PLPowerAssertionAgent_logInterval___block_invoke_565(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4173 = result;
  return result;
}

void *__37__PLPowerAssertionAgent_logInterval___block_invoke_571(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4174 = result;
  return result;
}

void *__37__PLPowerAssertionAgent_logInterval___block_invoke_580(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4175 = result;
  return result;
}

void *__37__PLPowerAssertionAgent_logInterval___block_invoke_586(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4176 = result;
  return result;
}

void *__37__PLPowerAssertionAgent_logInterval___block_invoke_592(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4177 = result;
  return result;
}

- (void)logEventForwardAssertionWithReason:(id)reason asSnapshot:(BOOL)snapshot
{
  if (snapshot)
  {
    [(PLPowerAssertionAgent *)self logSnapshot:reason];
  }

  else
  {
    [(PLPowerAssertionAgent *)self logInterval:reason];
  }
}

- (void)logEventPointAggregateResetWithReason:(signed __int16)reason withPidCount:(int)count
{
  v4 = *&count;
  reasonCopy = reason;
  v10 = [(PLOperator *)PLPowerAssertionAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AggregateReset"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v8 = [MEMORY[0x277CCABB0] numberWithShort:reasonCopy];
  [v7 setObject:v8 forKeyedSubscript:@"Reason"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [v7 setObject:v9 forKeyedSubscript:@"PidCount"];

  [(PLOperator *)self logEntry:v7];
}

- (void)logAggregatedAssertionActivity
{
  v54 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v3 = IOPMCopyAssertionActivityAggregate();
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    if (v3)
    {
      assertionAggregatedLastSample = [(PLPowerAssertionAgent *)self assertionAggregatedLastSample];
      v6 = [assertionAggregatedLastSample objectForKey:@"assertionAggregated"];

      if (v6)
      {
        assertionAggregatedLastSample2 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSample];
        v34 = [assertionAggregatedLastSample2 objectForKeyedSubscript:@"assertionAggregatedDate"];

        assertionAggregatedLastSample3 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSample];
        [assertionAggregatedLastSample3 objectForKey:@"assertionAggregated"];
        SamplesDelta = IOReportCreateSamplesDelta();

        v43[0] = 0;
        v43[1] = v43;
        v43[2] = 0x2020000000;
        v43[3] = 0;
        v37 = 0;
        v38 = &v37;
        v39 = 0x3032000000;
        v40 = __Block_byref_object_copy__4;
        v41 = __Block_byref_object_dispose__4;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        block[13] = MEMORY[0x277D85DD0];
        block[14] = 3221225472;
        block[15] = __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke;
        block[16] = &unk_27825B818;
        block[17] = v43;
        block[18] = &v48;
        IOReportIterate();
        block[5] = MEMORY[0x277D85DD0];
        block[6] = 3221225472;
        block[7] = __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_2;
        block[8] = &unk_27825B840;
        block[9] = self;
        block[10] = &v44;
        block[11] = v43;
        block[12] = &v37;
        IOReportIterate();
        mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
        [mEMORY[0x277D3F0C0] createDistributionEventIntervalWithDistributionID:22 withChildNodeNameToWeight:v38[5] withStartDate:v34 withEndDate:monotonicDate];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v11 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_613;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v11;
          if (qword_2811F42A0 != -1)
          {
            dispatch_once(&qword_2811F42A0, block);
          }

          if (byte_2811F417A == 1)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"+++++++++++++++++++++++++++++++++++++++++"];
            v13 = MEMORY[0x277D3F178];
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
            lastPathComponent = [v14 lastPathComponent];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logAggregatedAssertionActivity]"];
            [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:1149];

            v17 = PLLogCommon();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v53 = v12;
              _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v18 = objc_opt_class();
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_619;
          v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v35[4] = v18;
          if (qword_2811F42A8 != -1)
          {
            dispatch_once(&qword_2811F42A8, v35);
          }

          if (byte_2811F417B == 1)
          {
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"OLDlogging: start date: %@, end dat %@, accounting:%@", v34, monotonicDate, v38[5]];
            v20 = MEMORY[0x277D3F178];
            v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
            lastPathComponent2 = [v21 lastPathComponent];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logAggregatedAssertionActivity]"];
            [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:1150];

            v24 = PLLogCommon();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v53 = v19;
              _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        _Block_object_dispose(&v37, 8);

        _Block_object_dispose(v43, 8);
      }

      assertionAggregatedLastSample4 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSample];
      [assertionAggregatedLastSample4 setObject:v3 forKey:@"assertionAggregated"];

      assertionAggregatedLastSample5 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSample];
      [assertionAggregatedLastSample5 setObject:monotonicDate forKey:@"assertionAggregatedDate"];

      v27 = *(v49 + 6);
      aggregateMaxPIDCount = [(PLPowerAssertionAgent *)self aggregateMaxPIDCount];
      v29 = *(v49 + 6);
      if (aggregateMaxPIDCount >= v27)
      {
        v31 = *(v45 + 6);
        aggregteZeroDeltaCount = [(PLPowerAssertionAgent *)self aggregteZeroDeltaCount];
        v33 = v29 == v31;
        v29 = *(v49 + 6);
        if (aggregteZeroDeltaCount != v33)
        {
          [(PLPowerAssertionAgent *)self logEventPointAggregateResetWithReason:0 withPidCount:*(v49 + 6)];
          goto LABEL_25;
        }

        v30 = 4;
      }

      else
      {
        v30 = 3;
      }
    }

    else
    {
      v29 = 0;
      v30 = 1;
    }

    [(PLPowerAssertionAgent *)self resetIOPMSetAssertionActivityAggregateWithReason:v30 withPidCount:v29];
LABEL_25:
    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);
  }
}

uint64_t __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) += IOReportArrayGetValueAtIndex();
  ++*(*(*(a1 + 40) + 8) + 24);
  return 0;
}

uint64_t __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  ChannelID = IOReportChannelGetChannelID();
  ValueAtIndex = IOReportArrayGetValueAtIndex();
  v5 = IOReportArrayGetValueAtIndex();
  v6 = IOReportArrayGetValueAtIndex();
  if (ValueAtIndex < 0 || v5 < 0 || (v7 = v6, v6 < 0))
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    if (ValueAtIndex || v5 || v6)
    {
      if (*(*(*(a1 + 48) + 8) + 24) >= 1)
      {
        v8 = IOReportArrayGetValueAtIndex() / *(*(*(a1 + 48) + 8) + 24);
        if (v8 > 0.05)
        {
          v9 = [*(a1 + 32) bundleIDForAssertionProcessPID:ChannelID];
          v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
          [*(*(*(a1 + 56) + 8) + 40) setObject:v10 forKeyedSubscript:v9];

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v11 = objc_opt_class();
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_3;
            v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v29[4] = v11;
            if (qword_2811F4290 != -1)
            {
              dispatch_once(&qword_2811F4290, v29);
            }

            if (byte_2811F4178 == 1)
            {
              v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Total %llu, name %@, contribution %d, weight %f", *(*(*(a1 + 48) + 8) + 24), v9, ChannelID, *&v8];
              v26 = MEMORY[0x277D3F178];
              v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
              v13 = [v27 lastPathComponent];
              v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logAggregatedAssertionActivity]_block_invoke_2"];
              [v26 logMessage:v12 fromFile:v13 fromFunction:v14 fromLineNumber:1134];

              v15 = PLLogCommon();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v31 = v12;
                _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }
        }
      }
    }

    else
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_608;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v16;
      if (qword_2811F4298 != -1)
      {
        dispatch_once(&qword_2811F4298, block);
      }

      if (byte_2811F4179 == 1)
      {
        v17 = MEMORY[0x277CCACA8];
        v18 = [*(a1 + 32) bundleIDForAssertionProcessPID:ChannelID];
        v19 = [v17 stringWithFormat:@"pid=%d name=%@ eff1=%lld eff2=%lld eff3=%lld", ChannelID, v18, ValueAtIndex, v5, v7];

        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
        v22 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logAggregatedAssertionActivity]_block_invoke_2"];
        [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:1140];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v19;
          _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  return 0;
}

void *__55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4178 = result;
  return result;
}

void *__55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_608(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4179 = result;
  return result;
}

void *__55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_613(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F417A = result;
  return result;
}

void *__55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_619(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F417B = result;
  return result;
}

void *__70__PLPowerAssertionAgent_logAggregatedAssertionActivityPLDataStructure__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F417C = result;
  return result;
}

void *__70__PLPowerAssertionAgent_logAggregatedAssertionActivityPLDataStructure__block_invoke_625(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F417D = result;
  return result;
}

- (id)bundleIDForAssertionProcessPID:(int)d
{
  v3 = *&d;
  v4 = objc_msgSend_storage(self, a2);
  v5 = [v4 processIDEntryForPid:v3];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v5 objectForKeyedSubscript:@"BundleID"];
  if (v6 && (v7 = v6, [v5 objectForKeyedSubscript:@"BundleID"], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "description"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", &stru_282B650A0), v9, v8, v7, (v10 & 1) == 0))
  {
    v17 = @"BundleID";
  }

  else
  {
    v11 = [v5 objectForKeyedSubscript:@"ProcessName"];
    if (!v11 || (v12 = v11, [v5 objectForKeyedSubscript:@"ProcessName"], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "description"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", &stru_282B650A0), v14, v13, v12, (v15 & 1) != 0))
    {
LABEL_6:
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"AssertionPID-%d", v3];
      goto LABEL_10;
    }

    v17 = @"ProcessName";
  }

  v18 = [v5 objectForKeyedSubscript:v17];
  v16 = [v18 description];

LABEL_10:

  return v16;
}

@end