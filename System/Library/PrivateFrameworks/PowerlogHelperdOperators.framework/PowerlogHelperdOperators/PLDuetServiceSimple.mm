@interface PLDuetServiceSimple
- (PLDuetServiceSimple)init;
- (double)capUtilizationInSeconds:(double)seconds withUpperBoundInError:(double)error withCapInError:(double)inError withCappedUpperBound:(double)bound;
- (double)numCPUSecondsForBundleID:(id)d;
- (double)numCPUSecondsForPid:(int)pid;
- (id)didReceiveStopEventWithPayload:(id)payload;
- (void)didReceiveReset;
- (void)didReceiveStartEventWithPayload:(id)payload;
- (void)initOperatorDependancies:(id)dependancies;
@end

@implementation PLDuetServiceSimple

- (PLDuetServiceSimple)init
{
  v4.receiver = self;
  v4.super_class = PLDuetServiceSimple;
  v2 = [(PLDuetServiceSimple *)&v4 init];
  [(PLDuetServiceImpl *)v2 setDuetService:0];
  return v2;
}

- (void)initOperatorDependancies:(id)dependancies
{
  v47[1] = *MEMORY[0x277D85DE8];
  dependanciesCopy = dependancies;
  if (dependanciesCopy)
  {
    [(PLDuetServiceImpl *)self setDuetService:dependanciesCopy];
    v5 = objc_alloc(MEMORY[0x277D3F270]);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke;
    v45[3] = &unk_279A5BCB8;
    v45[4] = self;
    v6 = [v5 initWithOperator:dependanciesCopy withRegistration:&unk_287148AE0 withBlock:v45];
    [(PLDuetServiceImpl *)self setEventListener:v6];

    v7 = objc_alloc(MEMORY[0x277D3F278]);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke_2;
    v44[3] = &unk_279A5BEC8;
    v44[4] = self;
    v8 = [v7 initWithOperator:dependanciesCopy withRegistration:&unk_287148B08 withBlock:v44];
    [(PLDuetServiceImpl *)self setEnergyResponder:v8];

    v9 = objc_alloc(MEMORY[0x277D3F270]);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke_3;
    v43[3] = &unk_279A5BCB8;
    v43[4] = self;
    v10 = [v9 initWithOperator:dependanciesCopy withRegistration:&unk_287148B30 withBlock:v43];
    [(PLDuetServiceSimple *)self setResetListener:v10];

    [(PLDuetServiceSimple *)self setIsCharging:0];
    v11 = objc_alloc(MEMORY[0x277D3F1A8]);
    v12 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Battery"];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke_4;
    v42[3] = &unk_279A5BE78;
    v42[4] = self;
    v13 = [v11 initWithOperator:dependanciesCopy forEntryKey:v12 withBlock:v42];
    [(PLDuetServiceSimple *)self setChargingListener:v13];

    duetService = [(PLDuetServiceImpl *)self duetService];
    LODWORD(v12) = [duetService isDebugEnabled];

    if (v12)
    {
      selfCopy = self;
      v15 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ComplicationEvents"];
      v16 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_287145F88 withComparisonOperation:6];
      v17 = objc_msgSend_storage(dependanciesCopy);
      v47[0] = v16;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
      v35 = v15;
      v19 = [v17 entriesForKey:v15 withComparisons:v18];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v39;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v39 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v38 + 1) + 8 * i);
            v26 = objc_msgSend_storage(dependanciesCopy);
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke_348;
            v37[3] = &unk_279A5BDC0;
            v37[4] = v25;
            [v26 updateEntry:v25 withBlock:v37];
          }

          v22 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v22);
      }

      self = selfCopy;
    }

    duetService2 = [(PLDuetServiceImpl *)self duetService];
    isDebugEnabled = [duetService2 isDebugEnabled];

    if (isDebugEnabled)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, testStartEvent, @"com.apple.powerlogd.PLDuetService.testStartEvent", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v30 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v30, self, testStartEvent2, @"com.apple.powerlogd.PLDuetService.testStartEvent2", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v31 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v31, self, testStopEvent, @"com.apple.powerlogd.PLDuetService.testStopEvent", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v32 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v32, self, testStopEvent2, @"com.apple.powerlogd.PLDuetService.testStopEvent2", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v33 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v33, self, testReset, @"com.apple.powerlogd.PLDuetService.testReset", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v34 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v34, self, testCapping, @"com.apple.powerlogd.PLDuetService.testCapping", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }
}

void __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [v4 objectForKeyedSubscript:@"IsCharging"];
  [*(a1 + 32) setIsCharging:{objc_msgSend(v3, "BOOLValue")}];
}

void __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke_348(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"timestampEnd"];
}

- (void)didReceiveStartEventWithPayload:(id)payload
{
  v91 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v77 = payloadCopy;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke;
    v87[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v87[4] = v5;
    if (didReceiveStartEventWithPayload__defaultOnce != -1)
    {
      dispatch_once(&didReceiveStartEventWithPayload__defaultOnce, v87);
    }

    if (didReceiveStartEventWithPayload__classDebugEnabled == 1)
    {
      payloadCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", payloadCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStartEventWithPayload:]"];
      [v7 logMessage:payloadCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:813];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      payloadCopy = v77;
    }
  }

  v13 = [payloadCopy objectForKeyedSubscript:@"bundleID"];
  v14 = [payloadCopy objectForKeyedSubscript:@"info"];
  v15 = [v14 objectForKeyedSubscript:@"pid"];
  intValue = [v15 intValue];

  bundleIDToState = [(PLDuetServiceSimple *)self bundleIDToState];
  v18 = [bundleIDToState objectForKeyedSubscript:v13];

  v76 = v13;
  if (v18)
  {
    v19 = [(PLDuetServiceSimple *)self didReceiveStopEventWithPayload:payloadCopy];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v20 = objc_opt_class();
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke_375;
      v86[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v86[4] = v20;
      if (didReceiveStartEventWithPayload__defaultOnce_373 != -1)
      {
        dispatch_once(&didReceiveStartEventWithPayload__defaultOnce_373, v86);
      }

      if (didReceiveStartEventWithPayload__classDebugEnabled_374 == 1)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Second start arrived. Dropping energy on floor %@", v19];
        v22 = MEMORY[0x277D3F178];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent2 = [v23 lastPathComponent];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStartEventWithPayload:]"];
        [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:822];

        v27 = PLLogCommon(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v13 = v76;
        payloadCopy = v77;
      }
    }
  }

  v28 = objc_opt_new();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [v28 setStartDate:monotonicDate];

  if (intValue < 1)
  {
    [(PLDuetServiceSimple *)self numCPUSecondsForBundleID:v13];
  }

  else
  {
    [(PLDuetServiceSimple *)self numCPUSecondsForPid:intValue];
  }

  [v28 setCpuSeconds:?];
  v30 = [payloadCopy objectForKeyedSubscript:@"info"];
  [v28 setInfo:v30];

  duetService = [(PLDuetServiceImpl *)self duetService];
  if (duetService)
  {
    v32 = duetService;
    duetService2 = [(PLDuetServiceImpl *)self duetService];
    isDebugEnabled = [duetService2 isDebugEnabled];

    if (isDebugEnabled)
    {
      v35 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ComplicationEvents"];
      v36 = objc_alloc(MEMORY[0x277D3F190]);
      monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
      v38 = [v36 initWithEntryKey:v35 withDate:monotonicDate2];

      [v38 setObject:v13 forKeyedSubscript:@"BundleID"];
      info = [v28 info];
      v40 = [info description];
      [v38 setObject:v40 forKeyedSubscript:@"Info"];

      v41 = MEMORY[0x277CCABB0];
      [v28 cpuSeconds];
      v42 = [v41 numberWithDouble:?];
      [v38 setObject:v42 forKeyedSubscript:@"CPUSecondsStart"];

      duetService3 = [(PLDuetServiceImpl *)self duetService];

      if (duetService3)
      {
        duetService4 = [(PLDuetServiceImpl *)self duetService];
        [duetService4 logEntry:v38];
      }
    }
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  bundleIDToState2 = [(PLDuetServiceSimple *)self bundleIDToState];
  allValues = [bundleIDToState2 allValues];

  v47 = [allValues countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v83;
    v78 = v28;
    selfCopy = self;
    do
    {
      v50 = 0;
      do
      {
        if (*v83 != v49)
        {
          objc_enumerationMutation(allValues);
        }

        v51 = *(*(&v82 + 1) + 8 * v50);
        endDate = [v51 endDate];

        if (!endDate)
        {
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v53 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke_388;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v53;
            if (didReceiveStartEventWithPayload__defaultOnce_386 != -1)
            {
              dispatch_once(&didReceiveStartEventWithPayload__defaultOnce_386, block);
            }

            if (didReceiveStartEventWithPayload__classDebugEnabled_387 == 1)
            {
              v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"state=%@", v51];
              v55 = MEMORY[0x277D3F178];
              v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
              lastPathComponent3 = [v56 lastPathComponent];
              v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStartEventWithPayload:]"];
              [v55 logMessage:v54 fromFile:lastPathComponent3 fromFunction:v58 fromLineNumber:846];

              v60 = PLLogCommon(v59);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v89 = v54;
                _os_log_debug_impl(&dword_25EE51000, v60, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v28 = v78;
              self = selfCopy;
            }
          }

          overlappingStates = [v51 overlappingStates];
          [overlappingStates addObject:v28];

          overlappingStates2 = [v28 overlappingStates];
          [overlappingStates2 addObject:v51];
        }

        ++v50;
      }

      while (v48 != v50);
      v48 = [allValues countByEnumeratingWithState:&v82 objects:v90 count:16];
    }

    while (v48);
  }

  bundleIDToState3 = [(PLDuetServiceSimple *)self bundleIDToState];
  v64 = v76;
  [bundleIDToState3 setObject:v28 forKeyedSubscript:v76];

  v65 = v77;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v66 = objc_opt_class();
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke_394;
    v80[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v80[4] = v66;
    if (didReceiveStartEventWithPayload__defaultOnce_392 != -1)
    {
      dispatch_once(&didReceiveStartEventWithPayload__defaultOnce_392, v80);
    }

    if (didReceiveStartEventWithPayload__classDebugEnabled_393 == 1)
    {
      v67 = MEMORY[0x277CCACA8];
      bundleIDToState4 = [(PLDuetServiceSimple *)self bundleIDToState];
      v69 = [v67 stringWithFormat:@"bundleIDToState=%@", bundleIDToState4];

      v70 = MEMORY[0x277D3F178];
      v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent4 = [v71 lastPathComponent];
      v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStartEventWithPayload:]"];
      [v70 logMessage:v69 fromFile:lastPathComponent4 fromFunction:v73 fromLineNumber:854];

      v75 = PLLogCommon(v74);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v64 = v76;
      v65 = v77;
    }
  }
}

void *__55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStartEventWithPayload__classDebugEnabled = result;
  return result;
}

void *__55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke_375(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStartEventWithPayload__classDebugEnabled_374 = result;
  return result;
}

void *__55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke_388(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStartEventWithPayload__classDebugEnabled_387 = result;
  return result;
}

void *__55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke_394(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStartEventWithPayload__classDebugEnabled_393 = result;
  return result;
}

- (id)didReceiveStopEventWithPayload:(id)payload
{
  v234 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v227[0] = MEMORY[0x277D85DD0];
    v227[1] = 3221225472;
    v227[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke;
    v227[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v227[4] = v5;
    v6 = v227;
    if (didReceiveStopEventWithPayload__defaultOnce != -1)
    {
      dispatch_once(&didReceiveStopEventWithPayload__defaultOnce, v6);
    }

    if (didReceiveStopEventWithPayload__classDebugEnabled == 1)
    {
      payloadCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", payloadCopy];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
      [v8 logMessage:payloadCopy fromFile:lastPathComponent fromFunction:v11 fromLineNumber:876];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v14 = [payloadCopy objectForKeyedSubscript:@"bundleID"];
  v197 = [payloadCopy objectForKeyedSubscript:@"info"];
  bundleIDToState = [(PLDuetServiceSimple *)self bundleIDToState];
  v198 = v14;
  v16 = [bundleIDToState objectForKeyedSubscript:v14];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v226[0] = MEMORY[0x277D85DD0];
    v226[1] = 3221225472;
    v226[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_400;
    v226[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v226[4] = v17;
    v18 = v226;
    if (didReceiveStopEventWithPayload__defaultOnce_398 != -1)
    {
      dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_398, v18);
    }

    if (didReceiveStopEventWithPayload__classDebugEnabled_399 == 1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"state=%@", v16];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
      [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:881];

      v25 = PLLogCommon(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if (v16)
  {
    info = [v16 info];
    v27 = [info objectForKeyedSubscript:@"pid"];
    intValue = [v27 intValue];

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [v16 setEndDate:monotonicDate];

    if (intValue < 1)
    {
      [(PLDuetServiceSimple *)self numCPUSecondsForBundleID:v198];
    }

    else
    {
      [(PLDuetServiceSimple *)self numCPUSecondsForPid:intValue];
    }

    v32 = v30;
    [v16 cpuSeconds];
    v34 = v32 - v33;
    if (v34 >= 0.0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0.0;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v36 = objc_opt_class();
      v225[0] = MEMORY[0x277D85DD0];
      v225[1] = 3221225472;
      v225[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_403;
      v225[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v225[4] = v36;
      v37 = v225;
      if (didReceiveStopEventWithPayload__defaultOnce_401 != -1)
      {
        dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_401, v37);
      }

      if (didReceiveStopEventWithPayload__classDebugEnabled_402 == 1)
      {
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"CPU duration=%f", *&v35];
        v39 = MEMORY[0x277D3F178];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent3 = [v40 lastPathComponent];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v39 logMessage:v38 fromFile:lastPathComponent3 fromFunction:v42 fromLineNumber:892];

        v44 = PLLogCommon(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    [(PLDuetServiceSimple *)self capUtilizationInSeconds:v35 withUpperBoundInError:90.0 withCapInError:1.0 withCappedUpperBound:30.0];
    v46 = v45;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v47 = objc_opt_class();
      v224[0] = MEMORY[0x277D85DD0];
      v224[1] = 3221225472;
      v224[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_409;
      v224[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v224[4] = v47;
      v48 = v224;
      if (didReceiveStopEventWithPayload__defaultOnce_407 != -1)
      {
        dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_407, v48);
      }

      if (didReceiveStopEventWithPayload__classDebugEnabled_408 == 1)
      {
        v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Capped CPU duration=%f", *&v46];
        v50 = MEMORY[0x277D3F178];
        v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent4 = [v51 lastPathComponent];
        v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v50 logMessage:v49 fromFile:lastPathComponent4 fromFunction:v53 fromLineNumber:897];

        v55 = PLLogCommon(v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v56 = v46 * 0.0277777778;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v57 = objc_opt_class();
      v223[0] = MEMORY[0x277D85DD0];
      v223[1] = 3221225472;
      v223[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_415;
      v223[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v223[4] = v57;
      v58 = v223;
      if (didReceiveStopEventWithPayload__defaultOnce_413 != -1)
      {
        dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_413, v58);
      }

      if (didReceiveStopEventWithPayload__classDebugEnabled_414 == 1)
      {
        v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"cpuSecondsEnd=%f, cpuEnergy=%f", *&v32, v46 * 0.0277777778];
        v60 = MEMORY[0x277D3F178];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent5 = [v61 lastPathComponent];
        v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v60 logMessage:v59 fromFile:lastPathComponent5 fromFunction:v63 fromLineNumber:900];

        v65 = PLLogCommon(v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v196 = payloadCopy;
    v221 = 0u;
    v222 = 0u;
    v219 = 0u;
    v220 = 0u;
    obj = [v16 overlappingStates];
    v201 = [obj countByEnumeratingWithState:&v219 objects:v233 count:16];
    if (v201)
    {
      v200 = *v220;
      v66 = 0.0;
      v67 = v16;
      do
      {
        v68 = 0;
        do
        {
          if (*v220 != v200)
          {
            objc_enumerationMutation(obj);
          }

          v69 = *(*(&v219 + 1) + 8 * v68);
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v70 = objc_opt_class();
            v218[0] = MEMORY[0x277D85DD0];
            v218[1] = 3221225472;
            v218[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_421;
            v218[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v218[4] = v70;
            v71 = v218;
            if (didReceiveStopEventWithPayload__defaultOnce_419 != -1)
            {
              dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_419, v71);
            }

            if (didReceiveStopEventWithPayload__classDebugEnabled_420 == 1)
            {
              v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"overlappingState=%@", v69];
              v73 = MEMORY[0x277D3F178];
              v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
              lastPathComponent6 = [v74 lastPathComponent];
              v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
              [v73 logMessage:v72 fromFile:lastPathComponent6 fromFunction:v76 fromLineNumber:906];

              v78 = PLLogCommon(v77);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v232 = v72;
                _os_log_debug_impl(&dword_25EE51000, v78, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v16 = v67;
            }
          }

          startDate = [v69 startDate];
          startDate2 = [v16 startDate];
          v81 = [startDate laterDate:startDate2];

          endDate = [v69 endDate];
          if (endDate)
          {
            endDate2 = [v69 endDate];
            endDate3 = [v16 endDate];
            v85 = [endDate2 earlierDate:endDate3];

            v16 = v67;
          }

          else
          {
            endDate2 = [v16 endDate];
            v85 = endDate2;
          }

          [v85 timeIntervalSinceDate:v81];
          v87 = v86;
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v88 = objc_opt_class();
            v217[0] = MEMORY[0x277D85DD0];
            v217[1] = 3221225472;
            v217[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_427;
            v217[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v217[4] = v88;
            v89 = v217;
            if (didReceiveStopEventWithPayload__defaultOnce_425 != -1)
            {
              dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_425, v89);
            }

            if (didReceiveStopEventWithPayload__classDebugEnabled_426 == 1)
            {
              selfCopy = self;
              v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"overlappingState=%@", v69];
              v92 = MEMORY[0x277D3F178];
              v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
              lastPathComponent7 = [v93 lastPathComponent];
              v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
              [v92 logMessage:v91 fromFile:lastPathComponent7 fromFunction:v95 fromLineNumber:911];

              v97 = PLLogCommon(v96);
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v232 = v91;
                _os_log_debug_impl(&dword_25EE51000, v97, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              self = selfCopy;
              v16 = v67;
            }
          }

          v66 = v66 + v87;

          ++v68;
        }

        while (v201 != v68);
        v201 = [obj countByEnumeratingWithState:&v219 objects:v233 count:16];
      }

      while (v201);
    }

    else
    {
      v66 = 0.0;
    }

    [v16 duration];
    v99 = v98;
    payloadCopy = v196;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v100 = objc_opt_class();
      v216[0] = MEMORY[0x277D85DD0];
      v216[1] = 3221225472;
      v216[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_430;
      v216[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v216[4] = v100;
      v101 = v216;
      if (didReceiveStopEventWithPayload__defaultOnce_428 != -1)
      {
        dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_428, v101);
      }

      if (didReceiveStopEventWithPayload__classDebugEnabled_429 == 1)
      {
        v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"SOC duration=%f", *&v99];
        v103 = MEMORY[0x277D3F178];
        v104 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent8 = [v104 lastPathComponent];
        v106 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v103 logMessage:v102 fromFile:lastPathComponent8 fromFunction:v106 fromLineNumber:918];

        v108 = PLLogCommon(v107);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    [(PLDuetServiceSimple *)self capUtilizationInSeconds:v99 withUpperBoundInError:90.0 withCapInError:10.0 withCappedUpperBound:30.0];
    v110 = v109;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v111 = objc_opt_class();
      v215[0] = MEMORY[0x277D85DD0];
      v215[1] = 3221225472;
      v215[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_436;
      v215[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v215[4] = v111;
      v112 = v215;
      if (didReceiveStopEventWithPayload__defaultOnce_434 != -1)
      {
        dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_434, v112);
      }

      if (didReceiveStopEventWithPayload__classDebugEnabled_435 == 1)
      {
        v113 = [MEMORY[0x277CCACA8] stringWithFormat:@"Capped SOC duration=%f", *&v110];
        v114 = MEMORY[0x277D3F178];
        v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent9 = [v115 lastPathComponent];
        v117 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v114 logMessage:v113 fromFile:lastPathComponent9 fromFunction:v117 fromLineNumber:923];

        v119 = PLLogCommon(v118);
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v120 = v110 * (v110 * 0.00833333333) / (v66 + v110);
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v121 = objc_opt_class();
      v214[0] = MEMORY[0x277D85DD0];
      v214[1] = 3221225472;
      v214[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_442;
      v214[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v214[4] = v121;
      v122 = v214;
      if (didReceiveStopEventWithPayload__defaultOnce_440 != -1)
      {
        dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_440, v122);
      }

      if (didReceiveStopEventWithPayload__classDebugEnabled_441 == 1)
      {
        v123 = [MEMORY[0x277CCACA8] stringWithFormat:@"socEnergy=%f", *&v120];
        v124 = MEMORY[0x277D3F178];
        v125 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent10 = [v125 lastPathComponent];
        v127 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v124 logMessage:v123 fromFile:lastPathComponent10 fromFunction:v127 fromLineNumber:927];

        v129 = PLLogCommon(v128);
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    info2 = [v16 info];
    v131 = [info2 objectForKeyedSubscript:@"pushType"];
    if ([v131 isEqualToString:@"waking"])
    {
      v132 = 0.125;
    }

    else
    {
      v132 = 0.0277777778;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v133 = objc_opt_class();
      v213[0] = MEMORY[0x277D85DD0];
      v213[1] = 3221225472;
      v213[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_454;
      v213[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v213[4] = v133;
      v134 = v213;
      if (didReceiveStopEventWithPayload__defaultOnce_452 != -1)
      {
        dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_452, v134);
      }

      if (didReceiveStopEventWithPayload__classDebugEnabled_453 == 1)
      {
        v135 = [MEMORY[0x277CCACA8] stringWithFormat:@"wakingNonWakingEnergy=%f", *&v132];
        v136 = MEMORY[0x277D3F178];
        v137 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent11 = [v137 lastPathComponent];
        v139 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v136 logMessage:v135 fromFile:lastPathComponent11 fromFunction:v139 fromLineNumber:931];

        v141 = PLLogCommon(v140);
        if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v142 = [v197 objectForKeyedSubscript:@"cellDuration"];
    v143 = [v142 integerValue] / 1000.0;
    v144 = [v197 objectForKeyedSubscript:@"wifiDuration"];
    v145 = [v144 integerValue] / 1000.0 * 0.0611111111 + v143 * 0.222222222;
    v146 = [v197 objectForKeyedSubscript:@"btDuration"];
    v147 = v145 + [v146 integerValue] / 1000.0 * 0.0277777778;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v148 = objc_opt_class();
      v212[0] = MEMORY[0x277D85DD0];
      v212[1] = 3221225472;
      v212[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_469;
      v212[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v212[4] = v148;
      v149 = v212;
      if (didReceiveStopEventWithPayload__defaultOnce_467 != -1)
      {
        dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_467, v149);
      }

      if (didReceiveStopEventWithPayload__classDebugEnabled_468 == 1)
      {
        v150 = [MEMORY[0x277CCACA8] stringWithFormat:@"networkEnergy=%f", *&v147];
        v151 = MEMORY[0x277D3F178];
        v152 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent12 = [v152 lastPathComponent];
        v154 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v151 logMessage:v150 fromFile:lastPathComponent12 fromFunction:v154 fromLineNumber:938];

        v156 = PLLogCommon(v155);
        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    bundleIDToState2 = [(PLDuetServiceSimple *)self bundleIDToState];
    [bundleIDToState2 removeObjectForKey:v198];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v158 = objc_opt_class();
      v211[0] = MEMORY[0x277D85DD0];
      v211[1] = 3221225472;
      v211[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_475;
      v211[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v211[4] = v158;
      v159 = v211;
      if (didReceiveStopEventWithPayload__defaultOnce_473 != -1)
      {
        dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_473, v159);
      }

      if (didReceiveStopEventWithPayload__classDebugEnabled_474 == 1)
      {
        v160 = MEMORY[0x277CCACA8];
        bundleIDToState3 = [(PLDuetServiceSimple *)self bundleIDToState];
        v161 = [v160 stringWithFormat:@"bundleIDToState=%@", bundleIDToState3];

        v163 = MEMORY[0x277D3F178];
        v164 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent13 = [v164 lastPathComponent];
        v166 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v163 logMessage:v161 fromFile:lastPathComponent13 fromFunction:v166 fromLineNumber:942];

        v168 = PLLogCommon(v167);
        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v169 = 0.0;
    if (![(PLDuetServiceSimple *)self isCharging])
    {
      v170 = v56 + v120 + v132 + v147;
      if (v170 < 0.0)
      {
        v170 = 0.0;
      }

      if (v170 <= 1.4)
      {
        v169 = v170;
      }

      else
      {
        v169 = 1.4;
      }
    }

    duetService = [(PLDuetServiceImpl *)self duetService];
    if (duetService)
    {
      v172 = duetService;
      duetService2 = [(PLDuetServiceImpl *)self duetService];
      isDebugEnabled = [duetService2 isDebugEnabled];

      if (isDebugEnabled)
      {
        v175 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ComplicationEvents"];
        v176 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"BundleID" withValue:v198 withComparisonOperation:0];
        v177 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_287145F88 withComparisonOperation:6];
        duetService3 = [(PLDuetServiceImpl *)self duetService];
        v179 = objc_msgSend_storage(duetService3);
        v230[0] = v176;
        v230[1] = v177;
        v180 = [MEMORY[0x277CBEA60] arrayWithObjects:v230 count:2];
        v181 = [v179 lastEntryForKey:v175 withComparisons:v180 isSingleton:0];

        duetService4 = [(PLDuetServiceImpl *)self duetService];
        v183 = objc_msgSend_storage(duetService4);
        v203[0] = MEMORY[0x277D85DD0];
        v203[1] = 3221225472;
        v203[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_476;
        v203[3] = &unk_279A5D490;
        v184 = v181;
        v204 = v184;
        v205 = v32;
        v206 = v56;
        v207 = v120;
        v208 = v132;
        v209 = v147;
        v210 = v169;
        [v183 updateEntry:v184 withBlock:v203];

        payloadCopy = v196;
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v185 = objc_opt_class();
      v202[0] = MEMORY[0x277D85DD0];
      v202[1] = 3221225472;
      v202[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_2;
      v202[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v202[4] = v185;
      v186 = v202;
      if (didReceiveStopEventWithPayload__defaultOnce_495 != -1)
      {
        dispatch_once(&didReceiveStopEventWithPayload__defaultOnce_495, v186);
      }

      if (didReceiveStopEventWithPayload__classDebugEnabled_496 == 1)
      {
        v187 = [MEMORY[0x277CCACA8] stringWithFormat:@"Returning Sum: %f", *&v169];
        v188 = MEMORY[0x277D3F178];
        v189 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent14 = [v189 lastPathComponent];
        v191 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v188 logMessage:v187 fromFile:lastPathComponent14 fromFunction:v191 fromLineNumber:970];

        v193 = PLLogCommon(v192);
        if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v228 = @"energy";
    v194 = [MEMORY[0x277CCABB0] numberWithDouble:v169];
    v229 = v194;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v229 forKeys:&v228 count:1];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled = result;
  return result;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_400(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_399 = result;
  return result;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_403(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_402 = result;
  return result;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_409(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_408 = result;
  return result;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_415(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_414 = result;
  return result;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_421(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_420 = result;
  return result;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_427(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_426 = result;
  return result;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_430(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_429 = result;
  return result;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_436(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_435 = result;
  return result;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_442(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_441 = result;
  return result;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_454(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_453 = result;
  return result;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_469(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_468 = result;
  return result;
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_475(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_474 = result;
  return result;
}

void __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_476(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"timestampEnd"];

  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"CPUSecondsEnd"];

  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"CPUEnergy"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"SOCEnergy"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"WakingNonWakingEnergy"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"NetworkEnergy"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"EnergyReturned"];
}

void *__54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveStopEventWithPayload__classDebugEnabled_496 = result;
  return result;
}

- (double)capUtilizationInSeconds:(double)seconds withUpperBoundInError:(double)error withCapInError:(double)inError withCappedUpperBound:(double)bound
{
  if (seconds < bound)
  {
    bound = seconds;
  }

  if (seconds <= error)
  {
    inError = bound;
  }

  return fmax(inError, 0.0);
}

- (double)numCPUSecondsForPid:(int)pid
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = proc_pid_rusage(pid, 0, &v5);
  result = 0.0;
  if (!v3)
  {
    [PLUtilities secondsFromMachTime:v6, 0.0];
  }

  return result;
}

- (double)numCPUSecondsForBundleID:(id)d
{
  v3 = MEMORY[0x28223BE20](self, a2, d);
  v59 = *MEMORY[0x277D85DE8];
  v5 = v4;
  v51 = v5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke;
    v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v55[4] = v6;
    if (numCPUSecondsForBundleID__defaultOnce != -1)
    {
      dispatch_once(&numCPUSecondsForBundleID__defaultOnce, v55);
    }

    if (numCPUSecondsForBundleID__classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v5];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple numCPUSecondsForBundleID:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:985];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v5 = v51;
    }
  }

  duetService = [v3 duetService];

  if (duetService)
  {
    memset(__b, 255, sizeof(__b));
    v15 = proc_listpids(1u, 0, __b, 4096);
    if (v15 >= 1)
    {
      v16 = v15;
      v17 = __b;
      do
      {
        v19 = *v17++;
        v18 = v19;
        if (v19 < 1)
        {
          goto LABEL_33;
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v20 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke_502;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v20;
          if (numCPUSecondsForBundleID__defaultOnce_500 != -1)
          {
            dispatch_once(&numCPUSecondsForBundleID__defaultOnce_500, block);
          }

          if (numCPUSecondsForBundleID__classDebugEnabled_501 == 1)
          {
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"pid=%i", v18];
            v22 = MEMORY[0x277D3F178];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            lastPathComponent2 = [v23 lastPathComponent];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple numCPUSecondsForBundleID:]"];
            [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:998];

            v27 = PLLogCommon(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              buffer = 138412290;
              v57 = v21;
              _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "%@", &buffer, 0xCu);
            }
          }
        }

        duetService2 = [v3 duetService];
        v29 = objc_msgSend_storage(duetService2);
        v30 = [v29 processIDEntryForPid:v18];
        v31 = [v30 objectForKeyedSubscript:@"BundleID"];

        if (!v31)
        {
          v32 = [PLUtilities bundleIDFromPid:v18];
          if (!v32)
          {
            if (proc_name(v18, &buffer, 0x40u) < 1)
            {
              v31 = 0;
              goto LABEL_24;
            }

            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:&buffer];
          }

          v31 = v32;
        }

LABEL_24:
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v33 = objc_opt_class();
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke_508;
          v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v53[4] = v33;
          if (numCPUSecondsForBundleID__defaultOnce_506 != -1)
          {
            dispatch_once(&numCPUSecondsForBundleID__defaultOnce_506, v53);
          }

          if (numCPUSecondsForBundleID__classDebugEnabled_507 == 1)
          {
            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"pidBundleID=%@", v31];
            v35 = MEMORY[0x277D3F178];
            v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            lastPathComponent3 = [v36 lastPathComponent];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple numCPUSecondsForBundleID:]"];
            [v35 logMessage:v34 fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:1013];

            v40 = PLLogCommon(v39);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              buffer = 138412290;
              v57 = v34;
              _os_log_debug_impl(&dword_25EE51000, v40, OS_LOG_TYPE_DEBUG, "%@", &buffer, 0xCu);
            }

            v5 = v51;
          }
        }

        if ([v31 isEqualToString:v5])
        {
          [v3 numCPUSecondsForPid:v18];
          v41 = v49;
          goto LABEL_45;
        }

LABEL_33:
        --v16;
      }

      while (v16);
    }

    v41 = 0.0;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v42 = objc_opt_class();
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke_514;
      v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v52[4] = v42;
      if (numCPUSecondsForBundleID__defaultOnce_512 != -1)
      {
        dispatch_once(&numCPUSecondsForBundleID__defaultOnce_512, v52);
      }

      if (numCPUSecondsForBundleID__classDebugEnabled_513 == 1)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not find matching pid"];
        v43 = MEMORY[0x277D3F178];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent4 = [v44 lastPathComponent];
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple numCPUSecondsForBundleID:]"];
        [v43 logMessage:v31 fromFile:lastPathComponent4 fromFunction:v46 fromLineNumber:1020];

        v48 = PLLogCommon(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v5 = v51;
LABEL_45:
      }
    }
  }

  else
  {
    v41 = 0.0;
  }

  return v41;
}

void *__48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  numCPUSecondsForBundleID__classDebugEnabled = result;
  return result;
}

void *__48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke_502(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  numCPUSecondsForBundleID__classDebugEnabled_501 = result;
  return result;
}

void *__48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke_508(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  numCPUSecondsForBundleID__classDebugEnabled_507 = result;
  return result;
}

void *__48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke_514(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  numCPUSecondsForBundleID__classDebugEnabled_513 = result;
  return result;
}

- (void)didReceiveReset
{
  bundleIDToState = [(PLDuetServiceSimple *)self bundleIDToState];
  [bundleIDToState removeAllObjects];
}

@end